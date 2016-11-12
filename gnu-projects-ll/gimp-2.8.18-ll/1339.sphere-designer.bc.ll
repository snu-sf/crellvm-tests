; ModuleID = './plug-ins/common/sphere-designer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.sphere = type { %struct.common, %struct._GimpVector4, double }
%struct.common = type { i16, i64, i16, [20 x %struct.texture], i16, [20 x %struct.texture] }
%struct.texture = type { i32, i32, i64, %struct._GimpVector4, %struct._GimpVector4, %struct.gradient, %struct._GimpVector4, %struct._GimpVector4, double, %struct._GimpVector4, %struct._GimpVector4, %struct._GimpVector4, %struct.image, %struct._GimpVector4, %struct._GimpVector4, %struct._GimpVector4, double, %struct._GimpVector4, double, double, double, %struct._GimpVector4 }
%struct.gradient = type { i16, [5 x double], [5 x %struct._GimpVector4] }
%struct.image = type { i16, i16, i8* }
%struct._GimpVector4 = type { double, double, double, double }
%struct._cairo_surface = type opaque
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
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTreeViewPrivate = type opaque
%struct.textures_t = type { i32, i8*, i64 }
%struct.world_t = type { i32, [5 x %union.object], i32, [5 x %struct.light], i32, [20 x %struct.texture], i64, i16, double, i16, [1 x %struct.atmos] }
%union.object = type { %struct.triangle }
%struct.triangle = type { %struct.common, %struct._GimpVector4, %struct._GimpVector4, %struct._GimpVector4 }
%struct.light = type { %struct.common, %struct._GimpVector4, %struct._GimpVector4 }
%struct.atmos = type { i16, double, %struct._GimpVector4, double }
%struct._GRand = type opaque
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ray = type { %struct._GimpVector4, %struct._GimpVector4, i16, double }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreePath = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._cairo = type opaque
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkFileChooser = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.disc = type { %struct.common, %struct._GimpVector4, double, double }
%struct.plane = type { %struct.common, %struct._GimpVector4, double }
%struct.cylinder = type { %struct.common, %struct._GimpVector4, %struct._GimpVector4, %struct._GimpVector4 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"plug-in-spheredesigner\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Create an image of a textured sphere\00", align 1
@.str.8 = private unnamed_addr constant [147 x i8] c"This plugin can be used to create textured and/or bumpmapped spheres, and uses a small lightweight raytracer to perform the task with good quality\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Vidar Madsen\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1999\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Sphere _Designer...\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"<Image>/Filters/Render\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Region selected for plug-in is empty\00", align 1
@s = internal global %struct.sphere zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"sphere-designer\00", align 1
@img_stride = internal global i32 0, align 4
@img = internal global i8* null, align 8
@buffer = internal global %struct._cairo_surface* null, align 8
@do_run = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"Sphere Designer\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"gimp-sphere-designer\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@drawarea = internal global %struct._GtkWidget* null, align 8
@.str.24 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@texturelist = internal global %struct._GtkTreeView* null, align 8
@.str.28 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Layers\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"gimp-duplicate\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Bump\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Light\00", align 1
@typemenu = internal global %struct._GtkWidget* null, align 8
@.str.38 = private unnamed_addr constant [6 x i8] c"Type:\00", align 1
@texturemenu = internal global %struct._GtkWidget* null, align 8
@textures = internal global [10 x %struct.textures_t] [%struct.textures_t { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i64 0 }, %struct.textures_t { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i64 1 }, %struct.textures_t { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i64 2 }, %struct.textures_t { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i64 3 }, %struct.textures_t { i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i64 5 }, %struct.textures_t { i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i64 8 }, %struct.textures_t { i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i64 9 }, %struct.textures_t { i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i64 11 }, %struct.textures_t { i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i64 12 }, %struct.textures_t zeroinitializer], align 16
@.str.39 = private unnamed_addr constant [9 x i8] c"Texture:\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Colors:\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"Color Selection Dialog\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"Scale:\00", align 1
@scalescale = internal global %struct._GtkObject* null, align 8
@.str.44 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"Turbulence:\00", align 1
@turbulencescale = internal global %struct._GtkObject* null, align 8
@.str.46 = private unnamed_addr constant [8 x i8] c"Amount:\00", align 1
@amountscale = internal global %struct._GtkObject* null, align 8
@.str.47 = private unnamed_addr constant [6 x i8] c"Exp.:\00", align 1
@expscale = internal global %struct._GtkObject* null, align 8
@.str.48 = private unnamed_addr constant [16 x i8] c"Transformations\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"Scale X:\00", align 1
@scalexscale = internal global %struct._GtkObject* null, align 8
@.str.50 = private unnamed_addr constant [9 x i8] c"Scale Y:\00", align 1
@scaleyscale = internal global %struct._GtkObject* null, align 8
@.str.51 = private unnamed_addr constant [9 x i8] c"Scale Z:\00", align 1
@scalezscale = internal global %struct._GtkObject* null, align 8
@.str.52 = private unnamed_addr constant [10 x i8] c"Rotate X:\00", align 1
@rotxscale = internal global %struct._GtkObject* null, align 8
@.str.53 = private unnamed_addr constant [10 x i8] c"Rotate Y:\00", align 1
@rotyscale = internal global %struct._GtkObject* null, align 8
@.str.54 = private unnamed_addr constant [10 x i8] c"Rotate Z:\00", align 1
@rotzscale = internal global %struct._GtkObject* null, align 8
@.str.55 = private unnamed_addr constant [12 x i8] c"Position X:\00", align 1
@posxscale = internal global %struct._GtkObject* null, align 8
@.str.56 = private unnamed_addr constant [12 x i8] c"Position Y:\00", align 1
@posyscale = internal global %struct._GtkObject* null, align 8
@.str.57 = private unnamed_addr constant [12 x i8] c"Position Z:\00", align 1
@poszscale = internal global %struct._GtkObject* null, align 8
@fileselect.windows = internal global [2 x %struct._GtkWidget*] zeroinitializer, align 16
@.str.58 = private unnamed_addr constant [10 x i8] c"Open File\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"Save File\00", align 1
@fileselect.titles = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0)], align 16
@fileselect.handlers = private unnamed_addr constant [2 x i8*] [i8* bitcast (void (%struct._GtkWidget*, i32, i8*)* @loadpreset_response to i8*), i8* bitcast (void (%struct._GtkWidget*, i32, i8*)* @savepreset_response to i8*)], align 16
@.str.60 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"File '%s' is not a valid save file.\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"%%d %%d %%%lus\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.67 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@noupdate = internal global i32 0, align 4
@mklabel.tmps = internal global [100 x i8] zeroinitializer, align 16
@.str.70 = private unnamed_addr constant [8 x i8] c"Bumpmap\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c" / \00", align 1
@idle_id = internal global i32 0, align 4
@world = internal global %struct.world_t zeroinitializer, align 8
@.str.73 = private unnamed_addr constant [18 x i8] c"Illegal object!!\0A\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"Warning: unknown texture %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [36 x i8] c"Warning: object %p has no textures\0A\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"Error in gradient!\0A\00", align 1
@.str.77 = private unnamed_addr constant [40 x i8] c"objnormal(): Unsupported object type!?\0A\00", align 1
@start = internal global i32 1, align 4
@p = internal global [514 x i32] zeroinitializer, align 16
@g = internal global [514 x [3 x double]] zeroinitializer, align 16
@gr = internal global %struct._GRand* null, align 8
@.str.78 = private unnamed_addr constant [6 x i8] c"Solid\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"Checker\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"Marble\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"Lizard\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"Phong\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"Wood\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"Spiral\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"Spots\00", align 1
@drawcolor1.lastw = internal global %struct._GtkWidget* null, align 8
@drawcolor2.lastw = internal global %struct._GtkWidget* null, align 8
@.str.87 = private unnamed_addr constant [17 x i8] c"Rendering sphere\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0))
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
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
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
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #4
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
  %call7 = call i32 @gimp_drawable_mask_intersect(i32 %8, i32* %x, i32* %y, i32* %w, i32* %h)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call8)
  br label %return

if.end:                                           ; preds = %do.end
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.14
    i32 1, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %if.end
  store i16 0, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %call9 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.sphere* @s to i8*))
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call10 = call i32 @sphere_main(%struct._GimpDrawable* %10)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %sw.bb
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %11)
  br label %return

if.end.13:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  store i16 0, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %call15 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.sphere* @s to i8*))
  %12 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %conv = sext i16 %12 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.bb.14
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %13)
  br label %return

if.end.18:                                        ; preds = %sw.bb.14
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.end
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb.19
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %14)
  br label %return

sw.epilog:                                        ; preds = %if.end.18, %if.end.13
  %call20 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.sphere* @s to i8*), i32 26632)
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @realrender(%struct._GimpDrawable* %15)
  %call21 = call i32 @gimp_displays_flush()
  %16 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %16, align 4
  %17 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %17, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %18 = load i32, i32* %status, align 4
  store i32 %18, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %19)
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.17, %if.then.12, %if.then
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

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

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
declare i8* @gettext(i8*) #2

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sphere_main(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i32 1)
  %call = call i32 @cairo_format_stride_for_width(i32 1, i32 150)
  store i32 %call, i32* @img_stride, align 4
  %0 = load i32, i32* @img_stride, align 4
  %mul = mul nsw i32 %0, 150
  %conv = sext i32 %mul to i64
  %call1 = call noalias i8* @g_malloc0(i64 %conv)
  store i8* %call1, i8** @img, align 8
  %1 = load i8*, i8** @img, align 8
  %2 = load i32, i32* @img_stride, align 4
  %call2 = call %struct._cairo_surface* @cairo_image_surface_create_for_data(i8* %1, i32 1, i32 150, i32 150, i32 %2)
  store %struct._cairo_surface* %call2, %struct._cairo_surface** @buffer, align 8
  %call3 = call %struct._GtkWidget* @makewindow()
  %3 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %conv4 = sext i16 %3 to i32
  %cmp = icmp eq i32 %conv4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @sphere_response(%struct._GtkWidget* null, i32 1, i8* null)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @rebuildlist()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @gtk_main()
  %4 = load %struct._cairo_surface*, %struct._cairo_surface** @buffer, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %4)
  %5 = load i8*, i8** @img, align 8
  call void @g_free(i8* %5)
  %6 = load i32, i32* @do_run, align 4
  ret i32 %6
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @realrender(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %r = alloca %struct.ray, align 8
  %rcol = alloca %struct._GimpVector4, align 8
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %dest = alloca i8*, align 8
  %bpp = alloca i32, align 4
  %pr = alloca %struct._GimpPixelRgn, align 8
  %dpr = alloca %struct._GimpPixelRgn, align 8
  %buffer = alloca i8*, align 8
  %ibuffer = alloca i8*, align 8
  %k = alloca i32, align 4
  %dx = alloca i32, align 4
  %sx = alloca i32, align 4
  %a = alloca float, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @initworld()
  %v1 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v1, i32 0, i32 2
  store double -1.000000e+01, double* %z, align 8
  %v2 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 1
  %z1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v2, i32 0, i32 2
  store double 0.000000e+00, double* %z1, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_width(i32 %2)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id2, align 4
  %call3 = call i32 @gimp_drawable_height(i32 %4)
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pr, %struct._GimpDrawable* %0, i32 0, i32 0, i32 %call, i32 %call3, i32 0, i32 0)
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id4, align 4
  %call5 = call i32 @gimp_drawable_width(i32 %7)
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id6, align 4
  %call7 = call i32 @gimp_drawable_height(i32 %9)
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dpr, %struct._GimpDrawable* %5, i32 0, i32 0, i32 %call5, i32 %call7, i32 1, i32 1)
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_mask_bounds(i32 %11, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id10, align 4
  %call11 = call i32 @gimp_drawable_bpp(i32 %13)
  store i32 %call11, i32* %bpp, align 4
  %14 = load i32, i32* %x2, align 4
  %15 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %14, %15
  %mul = mul nsw i32 %sub, 4
  %conv = sext i32 %mul to i64
  %call12 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call12, i8** %buffer, align 8
  %16 = load i32, i32* %x2, align 4
  %17 = load i32, i32* %x1, align 4
  %sub13 = sub nsw i32 %16, %17
  %mul14 = mul nsw i32 %sub13, 4
  %conv15 = sext i32 %mul14 to i64
  %call16 = call noalias i8* @g_malloc(i64 %conv15)
  store i8* %call16, i8** %ibuffer, align 8
  %18 = load i32, i32* %x2, align 4
  %19 = load i32, i32* %x1, align 4
  %sub17 = sub nsw i32 %18, %19
  store i32 %sub17, i32* %tx, align 4
  %20 = load i32, i32* %y2, align 4
  %21 = load i32, i32* %y1, align 4
  %sub18 = sub nsw i32 %20, %21
  store i32 %sub18, i32* %ty, align 4
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.87, i32 0, i32 0)) #4
  %call20 = call i32 @gimp_progress_init(i8* %call19)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.112, %entry
  %22 = load i32, i32* %y, align 4
  %23 = load i32, i32* %ty, align 4
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end.114

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %buffer, align 8
  store i8* %24, i8** %dest, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %for.body
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %tx, align 4
  %cmp23 = icmp slt i32 %25, %26
  br i1 %cmp23, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.22
  %27 = load i32, i32* %x, align 4
  %conv26 = sitofp i32 %27 to float
  %28 = load i32, i32* %tx, align 4
  %sub27 = sub nsw i32 %28, 1
  %conv28 = sitofp i32 %sub27 to float
  %div = fdiv float %conv26, %conv28
  %conv29 = fpext float %div to double
  %sub30 = fsub double %conv29, 5.000000e-01
  %mul31 = fmul double 8.100000e+00, %sub30
  %v232 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 1
  %x33 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v232, i32 0, i32 0
  store double %mul31, double* %x33, align 8
  %v134 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %x35 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v134, i32 0, i32 0
  store double %mul31, double* %x35, align 8
  %29 = load i32, i32* %y, align 4
  %conv36 = sitofp i32 %29 to float
  %30 = load i32, i32* %ty, align 4
  %sub37 = sub nsw i32 %30, 1
  %conv38 = sitofp i32 %sub37 to float
  %div39 = fdiv float %conv36, %conv38
  %conv40 = fpext float %div39 to double
  %sub41 = fsub double %conv40, 5.000000e-01
  %mul42 = fmul double 8.100000e+00, %sub41
  %v243 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 1
  %y44 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v243, i32 0, i32 1
  store double %mul42, double* %y44, align 8
  %v145 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %y46 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v145, i32 0, i32 1
  store double %mul42, double* %y46, align 8
  %call47 = call i32 @traceray(%struct.ray* %r, %struct._GimpVector4* %rcol, i32 10, double 1.000000e+00)
  %x48 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rcol, i32 0, i32 0
  %31 = load double, double* %x48, align 8
  %mul49 = fmul double 2.550000e+02, %31
  %call50 = call zeroext i8 @pixelval(double %mul49)
  %32 = load i8*, i8** %dest, align 8
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 0
  store i8 %call50, i8* %arrayidx, align 1
  %y51 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rcol, i32 0, i32 1
  %33 = load double, double* %y51, align 8
  %mul52 = fmul double 2.550000e+02, %33
  %call53 = call zeroext i8 @pixelval(double %mul52)
  %34 = load i8*, i8** %dest, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 %call53, i8* %arrayidx54, align 1
  %z55 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rcol, i32 0, i32 2
  %35 = load double, double* %z55, align 8
  %mul56 = fmul double 2.550000e+02, %35
  %call57 = call zeroext i8 @pixelval(double %mul56)
  %36 = load i8*, i8** %dest, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %36, i64 2
  store i8 %call57, i8* %arrayidx58, align 1
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rcol, i32 0, i32 3
  %37 = load double, double* %w, align 8
  %mul59 = fmul double 2.550000e+02, %37
  %call60 = call zeroext i8 @pixelval(double %mul59)
  %38 = load i8*, i8** %dest, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %38, i64 3
  store i8 %call60, i8* %arrayidx61, align 1
  %39 = load i8*, i8** %dest, align 8
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 4
  store i8* %add.ptr, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.25
  %40 = load i32, i32* %x, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  %41 = load i8*, i8** %ibuffer, align 8
  %42 = load i32, i32* %x1, align 4
  %43 = load i32, i32* %y1, align 4
  %44 = load i32, i32* %y, align 4
  %add = add nsw i32 %43, %44
  %45 = load i32, i32* %x2, align 4
  %46 = load i32, i32* %x1, align 4
  %sub62 = sub nsw i32 %45, %46
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %pr, i8* %41, i32 %42, i32 %add, i32 %sub62)
  store i32 0, i32* %x, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.103, %for.end
  %47 = load i32, i32* %x, align 4
  %48 = load i32, i32* %x2, align 4
  %49 = load i32, i32* %x1, align 4
  %sub64 = sub nsw i32 %48, %49
  %cmp65 = icmp slt i32 %47, %sub64
  br i1 %cmp65, label %for.body.67, label %for.end.105

for.body.67:                                      ; preds = %for.cond.63
  %50 = load i32, i32* %x, align 4
  %mul68 = mul nsw i32 %50, 4
  store i32 %mul68, i32* %dx, align 4
  %51 = load i32, i32* %x, align 4
  %52 = load i32, i32* %bpp, align 4
  %mul69 = mul nsw i32 %51, %52
  store i32 %mul69, i32* %sx, align 4
  %53 = load i32, i32* %dx, align 4
  %add70 = add nsw i32 %53, 3
  %idxprom = sext i32 %add70 to i64
  %54 = load i8*, i8** %buffer, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %54, i64 %idxprom
  %55 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %55 to i32
  %conv73 = sitofp i32 %conv72 to double
  %div74 = fdiv double %conv73, 2.550000e+02
  %conv75 = fptrunc double %div74 to float
  store float %conv75, float* %a, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.100, %for.body.67
  %56 = load i32, i32* %k, align 4
  %57 = load i32, i32* %bpp, align 4
  %cmp77 = icmp slt i32 %56, %57
  br i1 %cmp77, label %for.body.79, label %for.end.102

for.body.79:                                      ; preds = %for.cond.76
  %58 = load i32, i32* %dx, align 4
  %59 = load i32, i32* %k, align 4
  %add80 = add nsw i32 %58, %59
  %idxprom81 = sext i32 %add80 to i64
  %60 = load i8*, i8** %buffer, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %60, i64 %idxprom81
  %61 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %61 to i32
  %conv84 = sitofp i32 %conv83 to float
  %62 = load float, float* %a, align 4
  %mul85 = fmul float %conv84, %62
  %conv86 = fpext float %mul85 to double
  %63 = load i32, i32* %sx, align 4
  %64 = load i32, i32* %k, align 4
  %add87 = add nsw i32 %63, %64
  %idxprom88 = sext i32 %add87 to i64
  %65 = load i8*, i8** %ibuffer, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %65, i64 %idxprom88
  %66 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %66 to i32
  %conv91 = sitofp i32 %conv90 to double
  %67 = load float, float* %a, align 4
  %conv92 = fpext float %67 to double
  %sub93 = fsub double 1.000000e+00, %conv92
  %mul94 = fmul double %conv91, %sub93
  %add95 = fadd double %conv86, %mul94
  %conv96 = fptoui double %add95 to i8
  %68 = load i32, i32* %sx, align 4
  %69 = load i32, i32* %k, align 4
  %add97 = add nsw i32 %68, %69
  %idxprom98 = sext i32 %add97 to i64
  %70 = load i8*, i8** %ibuffer, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %70, i64 %idxprom98
  store i8 %conv96, i8* %arrayidx99, align 1
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.79
  %71 = load i32, i32* %k, align 4
  %inc101 = add nsw i32 %71, 1
  store i32 %inc101, i32* %k, align 4
  br label %for.cond.76

for.end.102:                                      ; preds = %for.cond.76
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.end.102
  %72 = load i32, i32* %x, align 4
  %inc104 = add nsw i32 %72, 1
  store i32 %inc104, i32* %x, align 4
  br label %for.cond.63

for.end.105:                                      ; preds = %for.cond.63
  %73 = load i8*, i8** %ibuffer, align 8
  %74 = load i32, i32* %x1, align 4
  %75 = load i32, i32* %y1, align 4
  %76 = load i32, i32* %y, align 4
  %add106 = add nsw i32 %75, %76
  %77 = load i32, i32* %x2, align 4
  %78 = load i32, i32* %x1, align 4
  %sub107 = sub nsw i32 %77, %78
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dpr, i8* %73, i32 %74, i32 %add106, i32 %sub107)
  %79 = load i32, i32* %y, align 4
  %conv108 = sitofp i32 %79 to double
  %80 = load i32, i32* %ty, align 4
  %conv109 = sitofp i32 %80 to double
  %div110 = fdiv double %conv108, %conv109
  %call111 = call i32 @gimp_progress_update(double %div110)
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.end.105
  %81 = load i32, i32* %y, align 4
  %inc113 = add nsw i32 %81, 1
  store i32 %inc113, i32* %y, align 4
  br label %for.cond

for.end.114:                                      ; preds = %for.cond
  %call115 = call i32 @gimp_progress_update(double 1.000000e+00)
  %82 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %82)
  %83 = load i8*, i8** %ibuffer, align 8
  call void @g_free(i8* %83)
  %84 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %84)
  %85 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id116 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %85, i32 0, i32 0
  %86 = load i32, i32* %drawable_id116, align 4
  %call117 = call i32 @gimp_drawable_merge_shadow(i32 %86, i32 1)
  %87 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id118 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %87, i32 0, i32 0
  %88 = load i32, i32* %drawable_id118, align 4
  %89 = load i32, i32* %x1, align 4
  %90 = load i32, i32* %y1, align 4
  %91 = load i32, i32* %x2, align 4
  %92 = load i32, i32* %x1, align 4
  %sub119 = sub nsw i32 %91, %92
  %93 = load i32, i32* %y2, align 4
  %94 = load i32, i32* %y1, align 4
  %sub120 = sub nsw i32 %93, %94
  %call121 = call i32 @gimp_drawable_update(i32 %88, i32 %89, i32 %90, i32 %sub119, i32 %sub120)
  ret void
}

declare i32 @gimp_displays_flush() #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @cairo_format_stride_for_width(i32, i32) #1

declare noalias i8* @g_malloc0(i64) #1

declare %struct._cairo_surface* @cairo_image_surface_create_for_data(i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @makewindow() #0 {
entry:
  %store = alloca %struct._GtkListStore*, align 8
  %col = alloca %struct._GtkTreeViewColumn*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %window = alloca %struct._GtkWidget*, align 8
  %main_hbox = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %scrolled = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %list = alloca %struct._GtkWidget*, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  %t = alloca %struct.textures_t*, align 8
  %0 = bitcast %struct._GimpRGB* %rgb to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 8, i1 false)
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %window, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %3, i32 1, i32 -5, i32 -6, i32 -1)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @sphere_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %main_vbox, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %11, i32 12)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  %call12 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %14)
  %15 = bitcast %struct._GtkWidget* %call12 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %17, i32 1, i32 1, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %call15 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %main_hbox, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 1, i32 1, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %vbox, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 0, i32 0, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %call21 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %frame, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_frame_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call22)
  %31 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %31, i32 1)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call24)
  %34 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %call26 = call %struct._GtkWidget* @gtk_drawing_area_new()
  store %struct._GtkWidget* %call26, %struct._GtkWidget** @drawarea, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_container_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call27)
  %39 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkContainer*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** @drawarea, align 8
  call void @gtk_container_add(%struct._GtkContainer* %39, %struct._GtkWidget* %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** @drawarea, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %41, i32 150, i32 150)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** @drawarea, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** @drawarea, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @expose_event to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call30 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %hbox, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call31)
  %47 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %47, i32 1)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call33)
  %50 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %50, %struct._GtkWidget* %51, i32 0, i32 0, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %call35 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %button, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call36)
  %55 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %55, %struct._GtkWidget* %56, i32 1, i32 1, i32 0)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @loadpreset to void ()*), i8* %61, void (i8*, %struct._GClosure*)* null, i32 0)
  %call39 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0))
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %button, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call40)
  %64 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %64, %struct._GtkWidget* %65, i32 1, i32 1, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %70 = bitcast %struct._GtkWidget* %69 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @savepreset to void ()*), i8* %70, void (i8*, %struct._GClosure*)* null, i32 0)
  %call43 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %vbox, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_box_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call44)
  %73 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBox*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %73, %struct._GtkWidget* %74, i32 1, i32 1, i32 0)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %call46 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %scrolled, align 8
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_scrolled_window_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call47)
  %78 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %78, i32 1)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_scrolled_window_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call49)
  %81 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %81, i32 2, i32 1)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_box_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call51)
  %84 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkBox*
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %84, %struct._GtkWidget* %85, i32 1, i32 1, i32 0)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %86)
  %call53 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 2, i64 64, i64 68)
  store %struct._GtkListStore* %call53, %struct._GtkListStore** %store, align 8
  %87 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %88 = bitcast %struct._GtkListStore* %87 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_tree_model_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call54)
  %89 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTreeModel*
  %call56 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %89)
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %list, align 8
  %90 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %91 = bitcast %struct._GtkListStore* %90 to i8*
  call void @g_object_unref(i8* %91)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_tree_view_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call57)
  %94 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkTreeView*
  store %struct._GtkTreeView* %94, %struct._GtkTreeView** @texturelist, align 8
  %95 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call59 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %95)
  store %struct._GtkTreeSelection* %call59, %struct._GtkTreeSelection** %selection, align 8
  %96 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %96, i32 2)
  %97 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %98 = bitcast %struct._GtkTreeSelection* %97 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, i8*)* @selectitem to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %99, i32 -1, i32 150)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_container_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call61)
  %102 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkContainer*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  call void @gtk_container_add(%struct._GtkContainer* %102, %struct._GtkWidget* %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0)) #4
  %call64 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call65 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* %call63, %struct._GtkCellRenderer* %call64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 0, i8* null)
  store %struct._GtkTreeViewColumn* %call65, %struct._GtkTreeViewColumn** %col, align 8
  %105 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %106 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %call66 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %105, %struct._GtkTreeViewColumn* %106)
  %call67 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %hbox, align 8
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_box_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call68)
  %109 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %109, i32 1)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_box_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call70)
  %112 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkBox*
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %112, %struct._GtkWidget* %113, i32 0, i32 0, i32 0)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %114)
  %call72 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0))
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %button, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_box_get_type() #6
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call73)
  %117 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkBox*
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %117, %struct._GtkWidget* %118, i32 1, i32 1, i32 0)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %120 = bitcast %struct._GtkWidget* %119 to i8*
  %call75 = call i64 @g_signal_connect_data(i8* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* @addtexture, i8* null, void (i8*, %struct._GClosure*)* null, i32 2)
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %121)
  %call76 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0))
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %button, align 8
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_box_get_type() #6
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call77)
  %124 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkBox*
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %124, %struct._GtkWidget* %125, i32 1, i32 1, i32 0)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %127 = bitcast %struct._GtkWidget* %126 to i8*
  %call79 = call i64 @g_signal_connect_data(i8* %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* @duptexture, i8* null, void (i8*, %struct._GClosure*)* null, i32 2)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %128)
  %call80 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0))
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %button, align 8
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_box_get_type() #6
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call81)
  %131 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkBox*
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %131, %struct._GtkWidget* %132, i32 1, i32 1, i32 0)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %134 = bitcast %struct._GtkWidget* %133 to i8*
  %call83 = call i64 @g_signal_connect_data(i8* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* @deltexture, i8* null, void (i8*, %struct._GClosure*)* null, i32 2)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %135)
  %call84 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %main_hbox, align 8
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_box_get_type() #6
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call85)
  %138 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkBox*
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %138, %struct._GtkWidget* %139, i32 0, i32 0, i32 0)
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %140)
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #4
  %call88 = call %struct._GtkWidget* @gimp_frame_new(i8* %call87)
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %frame, align 8
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_box_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call89)
  %143 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkBox*
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %143, %struct._GtkWidget* %144, i32 1, i32 1, i32 0)
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %145)
  %call91 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %vbox, align 8
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_container_get_type() #6
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call92)
  %148 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkContainer*
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %148, %struct._GtkWidget* %149)
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %150)
  %call94 = call %struct._GtkWidget* @gtk_table_new(i32 7, i32 3, i32 0)
  store %struct._GtkWidget* %call94, %struct._GtkWidget** %table, align 8
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %152 = bitcast %struct._GtkWidget* %151 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_table_get_type() #6
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %152, i64 %call95)
  %153 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %153, i32 2)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %155 = bitcast %struct._GtkWidget* %154 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_table_get_type() #6
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call97)
  %156 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %156, i32 6)
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %158 = bitcast %struct._GtkWidget* %157 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_table_get_type() #6
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call99)
  %159 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %159, i32 2, i32 12)
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %161 = bitcast %struct._GtkWidget* %160 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_box_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %161, i64 %call101)
  %162 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkBox*
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %162, %struct._GtkWidget* %163, i32 0, i32 0, i32 0)
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %164)
  %call103 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)) #4
  %call104 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)) #4
  %call105 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #4
  %call106 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call103, i32 0, i8* %call104, i32 1, i8* %call105, i32 2, i8* null)
  store %struct._GtkWidget* %call106, %struct._GtkWidget** @typemenu, align 8
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** @typemenu, align 8
  %166 = bitcast %struct._GtkWidget* %165 to %struct._GTypeInstance*
  %call107 = call i64 @gimp_int_combo_box_get_type() #6
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call107)
  %167 = bitcast %struct._GTypeInstance* %call108 to %struct._GimpIntComboBox*
  %call109 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %167, i32 0, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @selecttype to void ()*), i8* null)
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %169 = bitcast %struct._GtkWidget* %168 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_table_get_type() #6
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %169, i64 %call110)
  %170 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkTable*
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0)) #4
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** @typemenu, align 8
  %call113 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %170, i32 0, i32 0, i8* %call112, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %171, i32 2, i32 0)
  %call114 = call i64 @gimp_int_combo_box_get_type() #6
  %call115 = call i8* (i64, i8*, ...) @g_object_new(i64 %call114, i8* null)
  %172 = bitcast i8* %call115 to %struct._GtkWidget*
  store %struct._GtkWidget* %172, %struct._GtkWidget** @texturemenu, align 8
  store %struct.textures_t* getelementptr inbounds ([10 x %struct.textures_t], [10 x %struct.textures_t]* @textures, i32 0, i32 0), %struct.textures_t** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %173 = load %struct.textures_t*, %struct.textures_t** %t, align 8
  %s = getelementptr inbounds %struct.textures_t, %struct.textures_t* %173, i32 0, i32 1
  %174 = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %174, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** @texturemenu, align 8
  %176 = bitcast %struct._GtkWidget* %175 to %struct._GTypeInstance*
  %call116 = call i64 @gimp_int_combo_box_get_type() #6
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call116)
  %177 = bitcast %struct._GTypeInstance* %call117 to %struct._GimpIntComboBox*
  %178 = load %struct.textures_t*, %struct.textures_t** %t, align 8
  %n = getelementptr inbounds %struct.textures_t, %struct.textures_t* %178, i32 0, i32 2
  %179 = load i64, i64* %n, align 8
  %180 = load %struct.textures_t*, %struct.textures_t** %t, align 8
  %s118 = getelementptr inbounds %struct.textures_t, %struct.textures_t* %180, i32 0, i32 1
  %181 = load i8*, i8** %s118, align 8
  %call119 = call i8* @gettext(i8* %181) #4
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_append(%struct._GimpIntComboBox* %177, i32 0, i64 %179, i32 1, i8* %call119, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %182 = load %struct.textures_t*, %struct.textures_t** %t, align 8
  %incdec.ptr = getelementptr inbounds %struct.textures_t, %struct.textures_t* %182, i32 1
  store %struct.textures_t* %incdec.ptr, %struct.textures_t** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** @texturemenu, align 8
  %184 = bitcast %struct._GtkWidget* %183 to %struct._GTypeInstance*
  %call120 = call i64 @gimp_int_combo_box_get_type() #6
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %184, i64 %call120)
  %185 = bitcast %struct._GTypeInstance* %call121 to %struct._GimpIntComboBox*
  %call122 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %185, i32 0, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @selecttexture to void ()*), i8* null)
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %187 = bitcast %struct._GtkWidget* %186 to %struct._GTypeInstance*
  %call123 = call i64 @gtk_table_get_type() #6
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call123)
  %188 = bitcast %struct._GTypeInstance* %call124 to %struct._GtkTable*
  %call125 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0)) #4
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** @texturemenu, align 8
  %call126 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %188, i32 0, i32 1, i8* %call125, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %189, i32 2, i32 0)
  %call127 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call127, %struct._GtkWidget** %hbox, align 8
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %191 = bitcast %struct._GtkWidget* %190 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_table_get_type() #6
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %191, i64 %call128)
  %192 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkTable*
  %call130 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0)) #4
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call131 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %192, i32 0, i32 2, i8* %call130, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %193, i32 2, i32 0)
  %call132 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0)) #4
  %call133 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call132, i32 30, i32 20, %struct._GimpRGB* %rgb, i32 0)
  store %struct._GtkWidget* %call133, %struct._GtkWidget** %button, align 8
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %195 = bitcast %struct._GtkWidget* %194 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_box_get_type() #6
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %195, i64 %call134)
  %196 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkBox*
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %196, %struct._GtkWidget* %197, i32 1, i32 1, i32 0)
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %198)
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @drawcolor1(%struct._GtkWidget* %199)
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %201 = bitcast %struct._GtkWidget* %200 to i8*
  %call136 = call i64 @g_signal_connect_data(i8* %201, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*)* @color1_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call137 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0)) #4
  %call138 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call137, i32 30, i32 20, %struct._GimpRGB* %rgb, i32 0)
  store %struct._GtkWidget* %call138, %struct._GtkWidget** %button, align 8
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %203 = bitcast %struct._GtkWidget* %202 to %struct._GTypeInstance*
  %call139 = call i64 @gtk_box_get_type() #6
  %call140 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %203, i64 %call139)
  %204 = bitcast %struct._GTypeInstance* %call140 to %struct._GtkBox*
  %205 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %204, %struct._GtkWidget* %205, i32 1, i32 1, i32 0)
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %206)
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @drawcolor2(%struct._GtkWidget* %207)
  %208 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %209 = bitcast %struct._GtkWidget* %208 to i8*
  %call141 = call i64 @g_signal_connect_data(i8* %209, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*)* @color2_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %210 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %211 = bitcast %struct._GtkWidget* %210 to %struct._GTypeInstance*
  %call142 = call i64 @gtk_table_get_type() #6
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %211, i64 %call142)
  %212 = bitcast %struct._GTypeInstance* %call143 to %struct._GtkTable*
  %call144 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0)) #4
  %call145 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %212, i32 0, i32 3, i8* %call144, i32 100, i32 -1, double 1.000000e+00, double 0.000000e+00, double 1.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call145, %struct._GtkObject** @scalescale, align 8
  %213 = load %struct._GtkObject*, %struct._GtkObject** @scalescale, align 8
  %214 = bitcast %struct._GtkObject* %213 to i8*
  %call146 = call i64 @g_signal_connect_data(i8* %214, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @getscales to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %215 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %216 = bitcast %struct._GtkWidget* %215 to %struct._GTypeInstance*
  %call147 = call i64 @gtk_table_get_type() #6
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %216, i64 %call147)
  %217 = bitcast %struct._GTypeInstance* %call148 to %struct._GtkTable*
  %call149 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0)) #4
  %call150 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %217, i32 0, i32 4, i8* %call149, i32 100, i32 -1, double 1.000000e+00, double 0.000000e+00, double 1.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call150, %struct._GtkObject** @turbulencescale, align 8
  %218 = load %struct._GtkObject*, %struct._GtkObject** @turbulencescale, align 8
  %219 = bitcast %struct._GtkObject* %218 to i8*
  %call151 = call i64 @g_signal_connect_data(i8* %219, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @getscales to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %221 = bitcast %struct._GtkWidget* %220 to %struct._GTypeInstance*
  %call152 = call i64 @gtk_table_get_type() #6
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %221, i64 %call152)
  %222 = bitcast %struct._GTypeInstance* %call153 to %struct._GtkTable*
  %call154 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0)) #4
  %call155 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %222, i32 0, i32 5, i8* %call154, i32 100, i32 -1, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call155, %struct._GtkObject** @amountscale, align 8
  %223 = load %struct._GtkObject*, %struct._GtkObject** @amountscale, align 8
  %224 = bitcast %struct._GtkObject* %223 to i8*
  %call156 = call i64 @g_signal_connect_data(i8* %224, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @getscales to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %225 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %226 = bitcast %struct._GtkWidget* %225 to %struct._GTypeInstance*
  %call157 = call i64 @gtk_table_get_type() #6
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %226, i64 %call157)
  %227 = bitcast %struct._GTypeInstance* %call158 to %struct._GtkTable*
  %call159 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0)) #4
  %call160 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %227, i32 0, i32 6, i8* %call159, i32 100, i32 -1, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call160, %struct._GtkObject** @expscale, align 8
  %228 = load %struct._GtkObject*, %struct._GtkObject** @expscale, align 8
  %229 = bitcast %struct._GtkObject* %228 to i8*
  %call161 = call i64 @g_signal_connect_data(i8* %229, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @getscales to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call162 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0)) #4
  %call163 = call %struct._GtkWidget* @gimp_frame_new(i8* %call162)
  store %struct._GtkWidget* %call163, %struct._GtkWidget** %frame, align 8
  %230 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %231 = bitcast %struct._GtkWidget* %230 to %struct._GTypeInstance*
  %call164 = call i64 @gtk_box_get_type() #6
  %call165 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %231, i64 %call164)
  %232 = bitcast %struct._GTypeInstance* %call165 to %struct._GtkBox*
  %233 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %232, %struct._GtkWidget* %233, i32 1, i32 1, i32 0)
  %234 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %234)
  %call166 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call166, %struct._GtkWidget** %vbox, align 8
  %235 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %236 = bitcast %struct._GtkWidget* %235 to %struct._GTypeInstance*
  %call167 = call i64 @gtk_container_get_type() #6
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %236, i64 %call167)
  %237 = bitcast %struct._GTypeInstance* %call168 to %struct._GtkContainer*
  %238 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %237, %struct._GtkWidget* %238)
  %239 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %239)
  %call169 = call %struct._GtkWidget* @gtk_table_new(i32 9, i32 3, i32 0)
  store %struct._GtkWidget* %call169, %struct._GtkWidget** %table, align 8
  %240 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %241 = bitcast %struct._GtkWidget* %240 to %struct._GTypeInstance*
  %call170 = call i64 @gtk_table_get_type() #6
  %call171 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %241, i64 %call170)
  %242 = bitcast %struct._GTypeInstance* %call171 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %242, i32 2)
  %243 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %244 = bitcast %struct._GtkWidget* %243 to %struct._GTypeInstance*
  %call172 = call i64 @gtk_table_get_type() #6
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %244, i64 %call172)
  %245 = bitcast %struct._GTypeInstance* %call173 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %245, i32 6)
  %246 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %247 = bitcast %struct._GtkWidget* %246 to %struct._GTypeInstance*
  %call174 = call i64 @gtk_table_get_type() #6
  %call175 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %247, i64 %call174)
  %248 = bitcast %struct._GTypeInstance* %call175 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %248, i32 2, i32 12)
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %250 = bitcast %struct._GtkWidget* %249 to %struct._GTypeInstance*
  %call176 = call i64 @gtk_table_get_type() #6
  %call177 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %250, i64 %call176)
  %251 = bitcast %struct._GTypeInstance* %call177 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %251, i32 5, i32 12)
  %252 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %253 = bitcast %struct._GtkWidget* %252 to %struct._GTypeInstance*
  %call178 = call i64 @gtk_box_get_type() #6
  %call179 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %253, i64 %call178)
  %254 = bitcast %struct._GTypeInstance* %call179 to %struct._GtkBox*
  %255 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %254, %struct._GtkWidget* %255, i32 0, i32 0, i32 0)
  %256 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %256)
  %257 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %258 = bitcast %struct._GtkWidget* %257 to %struct._GTypeInstance*
  %call180 = call i64 @gtk_table_get_type() #6
  %call181 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %258, i64 %call180)
  %259 = bitcast %struct._GTypeInstance* %call181 to %struct._GtkTable*
  %call182 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0)) #4
  %call183 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %259, i32 0, i32 0, i8* %call182, i32 100, i32 -1, double 1.000000e+00, double 0.000000e+00, double 1.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call183, %struct._GtkObject** @scalexscale, align 8
  %260 = load %struct._GtkObject*, %struct._GtkObject** @scalexscale, align 8
  %261 = bitcast %struct._GtkObject* %260 to i8*
  %call184 = call i64 @g_signal_connect_data(i8* %261, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @getscales to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %262 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %263 = bitcast %struct._GtkWidget* %262 to %struct._GTypeInstance*
  %call185 = call i64 @gtk_table_get_type() #6
  %call186 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %263, i64 %call185)
  %264 = bitcast %struct._GTypeInstance* %call186 to %struct._GtkTable*
  %call187 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0)) #4
  %call188 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %264, i32 0, i32 1, i8* %call187, i32 100, i32 -1, double 1.000000e+00, double 0.000000e+00, double 1.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call188, %struct._GtkObject** @scaleyscale, align 8
  %265 = load %struct._GtkObject*, %struct._GtkObject** @scaleyscale, align 8
  %266 = bitcast %struct._GtkObject* %265 to i8*
  %call189 = call i64 @g_signal_connect_data(i8* %266, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @getscales to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %267 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %268 = bitcast %struct._GtkWidget* %267 to %struct._GTypeInstance*
  %call190 = call i64 @gtk_table_get_type() #6
  %call191 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %268, i64 %call190)
  %269 = bitcast %struct._GTypeInstance* %call191 to %struct._GtkTable*
  %call192 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0)) #4
  %call193 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %269, i32 0, i32 2, i8* %call192, i32 100, i32 -1, double 1.000000e+00, double 0.000000e+00, double 1.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call193, %struct._GtkObject** @scalezscale, align 8
  %270 = load %struct._GtkObject*, %struct._GtkObject** @scalezscale, align 8
  %271 = bitcast %struct._GtkObject* %270 to i8*
  %call194 = call i64 @g_signal_connect_data(i8* %271, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @getscales to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %272 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %273 = bitcast %struct._GtkWidget* %272 to %struct._GTypeInstance*
  %call195 = call i64 @gtk_table_get_type() #6
  %call196 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %273, i64 %call195)
  %274 = bitcast %struct._GTypeInstance* %call196 to %struct._GtkTable*
  %call197 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0)) #4
  %call198 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %274, i32 0, i32 3, i8* %call197, i32 100, i32 -1, double 0.000000e+00, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call198, %struct._GtkObject** @rotxscale, align 8
  %275 = load %struct._GtkObject*, %struct._GtkObject** @rotxscale, align 8
  %276 = bitcast %struct._GtkObject* %275 to i8*
  %call199 = call i64 @g_signal_connect_data(i8* %276, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @getscales to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %277 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %278 = bitcast %struct._GtkWidget* %277 to %struct._GTypeInstance*
  %call200 = call i64 @gtk_table_get_type() #6
  %call201 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %278, i64 %call200)
  %279 = bitcast %struct._GTypeInstance* %call201 to %struct._GtkTable*
  %call202 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0)) #4
  %call203 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %279, i32 0, i32 4, i8* %call202, i32 100, i32 -1, double 0.000000e+00, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call203, %struct._GtkObject** @rotyscale, align 8
  %280 = load %struct._GtkObject*, %struct._GtkObject** @rotyscale, align 8
  %281 = bitcast %struct._GtkObject* %280 to i8*
  %call204 = call i64 @g_signal_connect_data(i8* %281, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @getscales to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %282 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %283 = bitcast %struct._GtkWidget* %282 to %struct._GTypeInstance*
  %call205 = call i64 @gtk_table_get_type() #6
  %call206 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %283, i64 %call205)
  %284 = bitcast %struct._GTypeInstance* %call206 to %struct._GtkTable*
  %call207 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0)) #4
  %call208 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %284, i32 0, i32 5, i8* %call207, i32 100, i32 -1, double 0.000000e+00, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call208, %struct._GtkObject** @rotzscale, align 8
  %285 = load %struct._GtkObject*, %struct._GtkObject** @rotzscale, align 8
  %286 = bitcast %struct._GtkObject* %285 to i8*
  %call209 = call i64 @g_signal_connect_data(i8* %286, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @getscales to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %287 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %288 = bitcast %struct._GtkWidget* %287 to %struct._GTypeInstance*
  %call210 = call i64 @gtk_table_get_type() #6
  %call211 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %288, i64 %call210)
  %289 = bitcast %struct._GTypeInstance* %call211 to %struct._GtkTable*
  %call212 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0)) #4
  %call213 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %289, i32 0, i32 6, i8* %call212, i32 100, i32 -1, double 0.000000e+00, double -2.000000e+01, double 2.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call213, %struct._GtkObject** @posxscale, align 8
  %290 = load %struct._GtkObject*, %struct._GtkObject** @posxscale, align 8
  %291 = bitcast %struct._GtkObject* %290 to i8*
  %call214 = call i64 @g_signal_connect_data(i8* %291, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @getscales to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %292 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %293 = bitcast %struct._GtkWidget* %292 to %struct._GTypeInstance*
  %call215 = call i64 @gtk_table_get_type() #6
  %call216 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %293, i64 %call215)
  %294 = bitcast %struct._GTypeInstance* %call216 to %struct._GtkTable*
  %call217 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0)) #4
  %call218 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %294, i32 0, i32 7, i8* %call217, i32 100, i32 -1, double 0.000000e+00, double -2.000000e+01, double 2.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call218, %struct._GtkObject** @posyscale, align 8
  %295 = load %struct._GtkObject*, %struct._GtkObject** @posyscale, align 8
  %296 = bitcast %struct._GtkObject* %295 to i8*
  %call219 = call i64 @g_signal_connect_data(i8* %296, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @getscales to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %297 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %298 = bitcast %struct._GtkWidget* %297 to %struct._GTypeInstance*
  %call220 = call i64 @gtk_table_get_type() #6
  %call221 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %298, i64 %call220)
  %299 = bitcast %struct._GTypeInstance* %call221 to %struct._GtkTable*
  %call222 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0)) #4
  %call223 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %299, i32 0, i32 8, i8* %call222, i32 100, i32 -1, double 0.000000e+00, double -2.000000e+01, double 2.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call223, %struct._GtkObject** @poszscale, align 8
  %300 = load %struct._GtkObject*, %struct._GtkObject** @poszscale, align 8
  %301 = bitcast %struct._GtkObject* %300 to i8*
  %call224 = call i64 @g_signal_connect_data(i8* %301, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @getscales to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %302 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %302)
  %303 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  ret %struct._GtkWidget* %303
}

; Function Attrs: nounwind uwtable
define internal void @sphere_response(%struct._GtkWidget* %widget, i32 %response_id, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i16 3, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  call void @setdefaults(%struct.texture* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3, i64 0))
  call void @setdefaults(%struct.texture* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3, i64 1))
  call void @setdefaults(%struct.texture* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3, i64 2))
  store i32 2, i32* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3, i64 1, i32 0), align 4
  call void @vset(%struct._GimpVector4* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3, i64 1, i32 3), double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  call void @vset(%struct._GimpVector4* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3, i64 1, i32 10), double -1.500000e+01, double -1.500000e+01, double -1.500000e+01)
  store i32 2, i32* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3, i64 2, i32 0), align 4
  call void @vset(%struct._GimpVector4* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3, i64 2, i32 3), double 0.000000e+00, double 4.000000e-01, double 4.000000e-01)
  call void @vset(%struct._GimpVector4* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3, i64 2, i32 10), double 1.500000e+01, double 1.500000e+01, double -1.500000e+01)
  %1 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %1)
  %2 = bitcast %struct._GtkTreeModel* %call to %struct._GTypeInstance*
  %call1 = call i64 @gtk_list_store_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkListStore*
  call void @gtk_list_store_clear(%struct._GtkListStore* %3)
  call void @rebuildlist()
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %4 = load i32, i32* @idle_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.3
  %5 = load i32, i32* @idle_id, align 4
  %call4 = call i32 @g_source_remove(i32 %5)
  store i32 0, i32* @idle_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.3
  store i32 1, i32* @do_run, align 4
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %6)
  call void @gtk_main_quit()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rebuildlist() #0 {
entry:
  %list_store = alloca %struct._GtkListStore*, align 8
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %0)
  store %struct._GtkTreeSelection* %call, %struct._GtkTreeSelection** %sel, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %1 = load i32, i32* %n, align 4
  %2 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %conv = sext i16 %2 to i32
  %cmp = icmp slt i32 %1, %conv
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %3 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %conv2 = sext i16 %3 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* %n, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3), i32 0, i64 %idxprom
  %majtype = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %majtype, align 4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %n, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4
  %8 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %conv6 = sext i16 %8 to i32
  %sub = sub nsw i32 %conv6, 1
  %cmp7 = icmp slt i32 %7, %sub
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.5
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3), i32 0, i64 %idxprom10
  %10 = load i32, i32* %i, align 4
  %add = add nsw i32 %10, 1
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3), i32 0, i64 %idxprom12
  %11 = bitcast %struct.texture* %arrayidx11 to i8*
  %12 = bitcast %struct.texture* %arrayidx13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 664, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %14 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %dec = add i16 %14, -1
  store i16 %dec, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %15 = load i32, i32* %n, align 4
  %dec14 = add nsw i32 %15, -1
  store i32 %dec14, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end
  %16 = load i32, i32* %n, align 4
  %inc16 = add nsw i32 %16, 1
  store i32 %inc16, i32* %n, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %17 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call18 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %17)
  %18 = bitcast %struct._GtkTreeModel* %call18 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_list_store_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call19)
  %19 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkListStore*
  store %struct._GtkListStore* %19, %struct._GtkListStore** %list_store, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.31, %for.end.17
  %20 = load i32, i32* %n, align 4
  %21 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %conv22 = sext i16 %21 to i32
  %cmp23 = icmp slt i32 %20, %conv22
  br i1 %cmp23, label %for.body.25, label %for.end.33

for.body.25:                                      ; preds = %for.cond.21
  %22 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %22, %struct._GtkTreeIter* %iter)
  %23 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %24 = load i32, i32* %n, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3), i32 0, i64 %idxprom26
  %call28 = call i8* @mklabel(%struct.texture* %arrayidx27)
  %25 = load i32, i32* %n, align 4
  %idxprom29 = sext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3), i32 0, i64 %idxprom29
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %23, %struct._GtkTreeIter* %iter, i32 0, i8* %call28, i32 1, %struct.texture* %arrayidx30, i32 -1)
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.25
  %26 = load i32, i32* %n, align 4
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, i32* %n, align 4
  br label %for.cond.21

for.end.33:                                       ; preds = %for.cond.21
  %27 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %28 = bitcast %struct._GtkListStore* %27 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_tree_model_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call34)
  %29 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTreeModel*
  %call36 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %29, %struct._GtkTreeIter* %iter)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.end.33
  %30 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %30, %struct._GtkTreeIter* %iter)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %for.end.33
  call void @restartrender()
  ret void
}

declare void @gtk_main() #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare %struct._GtkWidget* @gtk_drawing_area_new() #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @expose_event(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %0)
  %call1 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call)
  store %struct._cairo* %call1, %struct._cairo** %cr, align 8
  %1 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %2 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %2, i32 0, i32 4
  %3 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %1, %struct._GdkRegion* %3)
  %4 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %4)
  %5 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %6 = load %struct._cairo_surface*, %struct._cairo_surface** @buffer, align 8
  call void @cairo_set_source_surface(%struct._cairo* %5, %struct._cairo_surface* %6, double 0.000000e+00, double 0.000000e+00)
  %7 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %7)
  %8 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %8)
  ret i32 1
}

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @loadpreset(%struct._GtkWidget* %widget, %struct._GtkWidget* %parent) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  call void @fileselect(i32 0, %struct._GtkWidget* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @savepreset(%struct._GtkWidget* %widget, %struct._GtkWidget* %parent) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  call void @fileselect(i32 1, %struct._GtkWidget* %0)
  ret void
}

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #3

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #3

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #3

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @selectitem(%struct._GtkTreeSelection* %treeselection, i8* %data) #0 {
entry:
  %treeselection.addr = alloca %struct._GtkTreeSelection*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkTreeSelection* %treeselection, %struct._GtkTreeSelection** %treeselection.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call %struct.texture* @currenttexture()
  call void @setvals(%struct.texture* %call)
  ret void
}

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new_with_attributes(i8*, %struct._GtkCellRenderer*, ...) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

; Function Attrs: nounwind uwtable
define internal void @addtexture() #0 {
entry:
  %list_store = alloca %struct._GtkListStore*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %n = alloca i32, align 4
  %0 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %conv = sext i16 %0 to i32
  store i32 %conv, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %n, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3), i32 0, i64 %idxprom
  call void @setdefaults(%struct.texture* %arrayidx)
  %3 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %3)
  %4 = bitcast %struct._GtkTreeModel* %call to %struct._GTypeInstance*
  %call2 = call i64 @gtk_list_store_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkListStore*
  store %struct._GtkListStore* %5, %struct._GtkListStore** %list_store, align 8
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %6, %struct._GtkTreeIter* %iter)
  %7 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %8 = load i32, i32* %n, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3), i32 0, i64 %idxprom4
  %call6 = call i8* @mklabel(%struct.texture* %arrayidx5)
  %9 = load i32, i32* %n, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3), i32 0, i64 %idxprom7
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %7, %struct._GtkTreeIter* %iter, i32 0, i8* %call6, i32 1, %struct.texture* %arrayidx8, i32 -1)
  %10 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call9 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %10)
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %call9, %struct._GtkTreeIter* %iter)
  %11 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %inc = add i16 %11, 1
  store i16 %inc, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  call void @restartrender()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @duptexture() #0 {
entry:
  %list_store = alloca %struct._GtkListStore*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %t = alloca %struct.texture*, align 8
  %n = alloca i32, align 4
  %call = call %struct.texture* @currenttexture()
  store %struct.texture* %call, %struct.texture** %t, align 8
  %0 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %conv = sext i16 %0 to i32
  store i32 %conv, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.texture*, %struct.texture** %t, align 8
  %tobool = icmp ne %struct.texture* %2, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %n, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3), i32 0, i64 %idxprom
  %4 = load %struct.texture*, %struct.texture** %t, align 8
  %5 = bitcast %struct.texture* %arrayidx to i8*
  %6 = bitcast %struct.texture* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 664, i32 8, i1 false)
  %7 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call4 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %7)
  %8 = bitcast %struct._GtkTreeModel* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_list_store_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkListStore*
  store %struct._GtkListStore* %9, %struct._GtkListStore** %list_store, align 8
  %10 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %10, %struct._GtkTreeIter* %iter)
  %11 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %12 = load i32, i32* %n, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3), i32 0, i64 %idxprom7
  %call9 = call i8* @mklabel(%struct.texture* %arrayidx8)
  %13 = load i32, i32* %n, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3), i32 0, i64 %idxprom10
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %11, %struct._GtkTreeIter* %iter, i32 0, i8* %call9, i32 1, %struct.texture* %arrayidx11, i32 -1)
  %14 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call12 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %14)
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %call12, %struct._GtkTreeIter* %iter)
  %15 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %inc = add i16 %15, 1
  store i16 %inc, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  call void @restartrender()
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deltexture() #0 {
entry:
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %t = alloca %struct.texture*, align 8
  store %struct.texture* null, %struct.texture** %t, align 8
  %0 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %0)
  store %struct._GtkTreeSelection* %call, %struct._GtkTreeSelection** %sel, align 8
  %1 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %call1 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %1, %struct._GtkTreeModel** null, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call2 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %2)
  store %struct._GtkTreeModel* %call2, %struct._GtkTreeModel** %model, align 8
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter, i32 1, %struct.texture** %t, i32 -1)
  %4 = load %struct.texture*, %struct.texture** %t, align 8
  %majtype = getelementptr inbounds %struct.texture, %struct.texture* %4, i32 0, i32 0
  store i32 -1, i32* %majtype, align 4
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %6 = bitcast %struct._GtkTreeModel* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_list_store_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkListStore*
  %call5 = call i32 @gtk_list_store_remove(%struct._GtkListStore* %7, %struct._GtkTreeIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @restartrender()
  ret void
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @selecttype(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %t = alloca %struct.texture*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @noupdate, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.texture* @currenttexture()
  store %struct.texture* %call, %struct.texture** %t, align 8
  %1 = load %struct.texture*, %struct.texture** %t, align 8
  %tobool1 = icmp ne %struct.texture* %1, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_int_combo_box_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call4)
  %4 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpIntComboBox*
  %5 = load %struct.texture*, %struct.texture** %t, align 8
  %majtype = getelementptr inbounds %struct.texture, %struct.texture* %5, i32 0, i32 0
  %call6 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %4, i32* %majtype)
  call void @relabel()
  call void @restartrender()
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gimp_int_combo_box_append(%struct._GimpIntComboBox*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @selecttexture(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %t = alloca %struct.texture*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @noupdate, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.texture* @currenttexture()
  store %struct.texture* %call, %struct.texture** %t, align 8
  %1 = load %struct.texture*, %struct.texture** %t, align 8
  %tobool1 = icmp ne %struct.texture* %1, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_int_combo_box_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call4)
  %4 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpIntComboBox*
  %5 = load %struct.texture*, %struct.texture** %t, align 8
  %type = getelementptr inbounds %struct.texture, %struct.texture* %5, i32 0, i32 1
  %call6 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %4, i32* %type)
  call void @relabel()
  call void @restartrender()
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @drawcolor1(%struct._GtkWidget* %w) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %t = alloca %struct.texture*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  %call = call %struct.texture* @currenttexture()
  store %struct.texture* %call, %struct.texture** %t, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  store %struct._GtkWidget* %1, %struct._GtkWidget** @drawcolor1.lastw, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @drawcolor1.lastw, align 8
  store %struct._GtkWidget* %2, %struct._GtkWidget** %w.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  %tobool1 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.texture*, %struct.texture** %t, align 8
  %tobool4 = icmp ne %struct.texture* %4, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %5 = load %struct.texture*, %struct.texture** %t, align 8
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %5, i32 0, i32 3
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color1, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %7 = load %struct.texture*, %struct.texture** %t, align 8
  %color17 = getelementptr inbounds %struct.texture, %struct.texture* %7, i32 0, i32 3
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color17, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %9 = load %struct.texture*, %struct.texture** %t, align 8
  %color18 = getelementptr inbounds %struct.texture, %struct.texture* %9, i32 0, i32 3
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color18, i32 0, i32 2
  %10 = load double, double* %z, align 8
  %11 = load %struct.texture*, %struct.texture** %t, align 8
  %color19 = getelementptr inbounds %struct.texture, %struct.texture* %11, i32 0, i32 3
  %w10 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color19, i32 0, i32 3
  %12 = load double, double* %w10, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double %6, double %8, double %10, double %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_color_button_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpColorButton*
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %15, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color1_changed(%struct._GimpColorButton* %button) #0 {
entry:
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %t = alloca %struct.texture*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  %call = call %struct.texture* @currenttexture()
  store %struct.texture* %call, %struct.texture** %t, align 8
  %0 = load %struct.texture*, %struct.texture** %t, align 8
  %tobool = icmp ne %struct.texture* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %1, %struct._GimpRGB* %color)
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %2 = load double, double* %r, align 8
  %3 = load %struct.texture*, %struct.texture** %t, align 8
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %3, i32 0, i32 3
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color1, i32 0, i32 0
  store double %2, double* %x, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %4 = load double, double* %g, align 8
  %5 = load %struct.texture*, %struct.texture** %t, align 8
  %color11 = getelementptr inbounds %struct.texture, %struct.texture* %5, i32 0, i32 3
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color11, i32 0, i32 1
  store double %4, double* %y, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %6 = load double, double* %b, align 8
  %7 = load %struct.texture*, %struct.texture** %t, align 8
  %color12 = getelementptr inbounds %struct.texture, %struct.texture* %7, i32 0, i32 3
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color12, i32 0, i32 2
  store double %6, double* %z, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %8 = load double, double* %a, align 8
  %9 = load %struct.texture*, %struct.texture** %t, align 8
  %color13 = getelementptr inbounds %struct.texture, %struct.texture* %9, i32 0, i32 3
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color13, i32 0, i32 3
  store double %8, double* %w, align 8
  call void @restartrender()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @drawcolor2(%struct._GtkWidget* %w) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %t = alloca %struct.texture*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  %call = call %struct.texture* @currenttexture()
  store %struct.texture* %call, %struct.texture** %t, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  store %struct._GtkWidget* %1, %struct._GtkWidget** @drawcolor2.lastw, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @drawcolor2.lastw, align 8
  store %struct._GtkWidget* %2, %struct._GtkWidget** %w.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  %tobool1 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.texture*, %struct.texture** %t, align 8
  %tobool4 = icmp ne %struct.texture* %4, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %5 = load %struct.texture*, %struct.texture** %t, align 8
  %color2 = getelementptr inbounds %struct.texture, %struct.texture* %5, i32 0, i32 4
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color2, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %7 = load %struct.texture*, %struct.texture** %t, align 8
  %color27 = getelementptr inbounds %struct.texture, %struct.texture* %7, i32 0, i32 4
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color27, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %9 = load %struct.texture*, %struct.texture** %t, align 8
  %color28 = getelementptr inbounds %struct.texture, %struct.texture* %9, i32 0, i32 4
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color28, i32 0, i32 2
  %10 = load double, double* %z, align 8
  %11 = load %struct.texture*, %struct.texture** %t, align 8
  %color29 = getelementptr inbounds %struct.texture, %struct.texture* %11, i32 0, i32 4
  %w10 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color29, i32 0, i32 3
  %12 = load double, double* %w10, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double %6, double %8, double %10, double %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_color_button_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpColorButton*
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %15, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color2_changed(%struct._GimpColorButton* %button) #0 {
entry:
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %t = alloca %struct.texture*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  %call = call %struct.texture* @currenttexture()
  store %struct.texture* %call, %struct.texture** %t, align 8
  %0 = load %struct.texture*, %struct.texture** %t, align 8
  %tobool = icmp ne %struct.texture* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %1, %struct._GimpRGB* %color)
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %2 = load double, double* %r, align 8
  %3 = load %struct.texture*, %struct.texture** %t, align 8
  %color2 = getelementptr inbounds %struct.texture, %struct.texture* %3, i32 0, i32 4
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color2, i32 0, i32 0
  store double %2, double* %x, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %4 = load double, double* %g, align 8
  %5 = load %struct.texture*, %struct.texture** %t, align 8
  %color21 = getelementptr inbounds %struct.texture, %struct.texture* %5, i32 0, i32 4
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color21, i32 0, i32 1
  store double %4, double* %y, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %6 = load double, double* %b, align 8
  %7 = load %struct.texture*, %struct.texture** %t, align 8
  %color22 = getelementptr inbounds %struct.texture, %struct.texture* %7, i32 0, i32 4
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color22, i32 0, i32 2
  store double %6, double* %z, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %8 = load double, double* %a, align 8
  %9 = load %struct.texture*, %struct.texture** %t, align 8
  %color23 = getelementptr inbounds %struct.texture, %struct.texture* %9, i32 0, i32 4
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color23, i32 0, i32 3
  store double %8, double* %w, align 8
  call void @restartrender()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @getscales(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %f = alloca double, align 8
  %t = alloca %struct.texture*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @noupdate, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.texture* @currenttexture()
  store %struct.texture* %call, %struct.texture** %t, align 8
  %1 = load %struct.texture*, %struct.texture** %t, align 8
  %tobool1 = icmp ne %struct.texture* %1, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._GtkObject*, %struct._GtkObject** @amountscale, align 8
  %3 = bitcast %struct._GtkObject* %2 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_adjustment_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call4)
  %4 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkAdjustment*
  %call6 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %4)
  %5 = load %struct.texture*, %struct.texture** %t, align 8
  %amount = getelementptr inbounds %struct.texture, %struct.texture* %5, i32 0, i32 19
  store double %call6, double* %amount, align 8
  %6 = load %struct._GtkObject*, %struct._GtkObject** @expscale, align 8
  %7 = bitcast %struct._GtkObject* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_adjustment_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkAdjustment*
  %call9 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %8)
  %9 = load %struct.texture*, %struct.texture** %t, align 8
  %exp = getelementptr inbounds %struct.texture, %struct.texture* %9, i32 0, i32 20
  store double %call9, double* %exp, align 8
  %10 = load %struct._GtkObject*, %struct._GtkObject** @turbulencescale, align 8
  %11 = bitcast %struct._GtkObject* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_adjustment_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkAdjustment*
  %call12 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %12)
  store double %call12, double* %f, align 8
  %13 = load %struct.texture*, %struct.texture** %t, align 8
  %turbulence = getelementptr inbounds %struct.texture, %struct.texture* %13, i32 0, i32 21
  %14 = load double, double* %f, align 8
  %15 = load double, double* %f, align 8
  %16 = load double, double* %f, align 8
  call void @vset(%struct._GimpVector4* %turbulence, double %14, double %15, double %16)
  %17 = load %struct._GtkObject*, %struct._GtkObject** @scalescale, align 8
  %18 = bitcast %struct._GtkObject* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_adjustment_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkAdjustment*
  %call15 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %19)
  %20 = load %struct.texture*, %struct.texture** %t, align 8
  %oscale = getelementptr inbounds %struct.texture, %struct.texture* %20, i32 0, i32 8
  store double %call15, double* %oscale, align 8
  %21 = load %struct._GtkObject*, %struct._GtkObject** @scalexscale, align 8
  %22 = bitcast %struct._GtkObject* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_adjustment_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkAdjustment*
  %call18 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %23)
  %24 = load %struct.texture*, %struct.texture** %t, align 8
  %scale = getelementptr inbounds %struct.texture, %struct.texture* %24, i32 0, i32 9
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %scale, i32 0, i32 0
  store double %call18, double* %x, align 8
  %25 = load %struct._GtkObject*, %struct._GtkObject** @scaleyscale, align 8
  %26 = bitcast %struct._GtkObject* %25 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_adjustment_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call19)
  %27 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkAdjustment*
  %call21 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %27)
  %28 = load %struct.texture*, %struct.texture** %t, align 8
  %scale22 = getelementptr inbounds %struct.texture, %struct.texture* %28, i32 0, i32 9
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %scale22, i32 0, i32 1
  store double %call21, double* %y, align 8
  %29 = load %struct._GtkObject*, %struct._GtkObject** @scalezscale, align 8
  %30 = bitcast %struct._GtkObject* %29 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_adjustment_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call23)
  %31 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkAdjustment*
  %call25 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %31)
  %32 = load %struct.texture*, %struct.texture** %t, align 8
  %scale26 = getelementptr inbounds %struct.texture, %struct.texture* %32, i32 0, i32 9
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %scale26, i32 0, i32 2
  store double %call25, double* %z, align 8
  %33 = load %struct._GtkObject*, %struct._GtkObject** @rotxscale, align 8
  %34 = bitcast %struct._GtkObject* %33 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_adjustment_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call27)
  %35 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkAdjustment*
  %call29 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %35)
  %36 = load %struct.texture*, %struct.texture** %t, align 8
  %rotate = getelementptr inbounds %struct.texture, %struct.texture* %36, i32 0, i32 11
  %x30 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate, i32 0, i32 0
  store double %call29, double* %x30, align 8
  %37 = load %struct._GtkObject*, %struct._GtkObject** @rotyscale, align 8
  %38 = bitcast %struct._GtkObject* %37 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_adjustment_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call31)
  %39 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkAdjustment*
  %call33 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %39)
  %40 = load %struct.texture*, %struct.texture** %t, align 8
  %rotate34 = getelementptr inbounds %struct.texture, %struct.texture* %40, i32 0, i32 11
  %y35 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate34, i32 0, i32 1
  store double %call33, double* %y35, align 8
  %41 = load %struct._GtkObject*, %struct._GtkObject** @rotzscale, align 8
  %42 = bitcast %struct._GtkObject* %41 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_adjustment_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call36)
  %43 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkAdjustment*
  %call38 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %43)
  %44 = load %struct.texture*, %struct.texture** %t, align 8
  %rotate39 = getelementptr inbounds %struct.texture, %struct.texture* %44, i32 0, i32 11
  %z40 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate39, i32 0, i32 2
  store double %call38, double* %z40, align 8
  %45 = load %struct._GtkObject*, %struct._GtkObject** @posxscale, align 8
  %46 = bitcast %struct._GtkObject* %45 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_adjustment_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call41)
  %47 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkAdjustment*
  %call43 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %47)
  %48 = load %struct.texture*, %struct.texture** %t, align 8
  %translate = getelementptr inbounds %struct.texture, %struct.texture* %48, i32 0, i32 10
  %x44 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %translate, i32 0, i32 0
  store double %call43, double* %x44, align 8
  %49 = load %struct._GtkObject*, %struct._GtkObject** @posyscale, align 8
  %50 = bitcast %struct._GtkObject* %49 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_adjustment_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call45)
  %51 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkAdjustment*
  %call47 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %51)
  %52 = load %struct.texture*, %struct.texture** %t, align 8
  %translate48 = getelementptr inbounds %struct.texture, %struct.texture* %52, i32 0, i32 10
  %y49 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %translate48, i32 0, i32 1
  store double %call47, double* %y49, align 8
  %53 = load %struct._GtkObject*, %struct._GtkObject** @poszscale, align 8
  %54 = bitcast %struct._GtkObject* %53 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_adjustment_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call50)
  %55 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkAdjustment*
  %call52 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %55)
  %56 = load %struct.texture*, %struct.texture** %t, align 8
  %translate53 = getelementptr inbounds %struct.texture, %struct.texture* %56, i32 0, i32 10
  %z54 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %translate53, i32 0, i32 2
  store double %call52, double* %z54, align 8
  call void @restartrender()
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  ret void
}

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @fileselect(i32 %action, %struct._GtkWidget* %parent) #0 {
entry:
  %action.addr = alloca i32, align 4
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %titles = alloca [2 x i8*], align 16
  %handlers = alloca [2 x i8*], align 16
  %dialog = alloca %struct._GtkWidget*, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %0 = bitcast [2 x i8*]* %titles to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([2 x i8*]* @fileselect.titles to i8*), i64 16, i32 16, i1 false)
  %1 = bitcast [2 x i8*]* %handlers to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([2 x i8*]* @fileselect.handlers to i8*), i64 16, i32 16, i1 false)
  %2 = load i32, i32* %action.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* @fileselect.windows, i32 0, i64 %idxprom
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %tobool = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool, label %if.end.22, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %action.addr, align 4
  %idxprom1 = zext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [2 x i8*], [2 x i8*]* %titles, i32 0, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx2, align 8
  %call = call i8* @gettext(i8* %5) #4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_window_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWindow*
  %9 = load i32, i32* %action.addr, align 4
  %10 = load i32, i32* %action.addr, align 4
  %cmp = icmp eq i32 %10, 0
  %cond = select i1 %cmp, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)
  %call5 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call, %struct._GtkWindow* %8, i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 -6, i8* %cond, i32 -5, i8* null)
  %11 = load i32, i32* %action.addr, align 4
  %idxprom6 = zext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* @fileselect.windows, i32 0, i64 %idxprom6
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %arrayidx7, align 8
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %dialog, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_dialog_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %14, i32 -5, i32 -6, i32 -1)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %17, i32 -5)
  %18 = load i32, i32* %action.addr, align 4
  %cmp12 = icmp eq i32 %18, 1
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_file_chooser_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %21, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load i32, i32* %action.addr, align 4
  %idxprom16 = zext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* @fileselect.windows, i32 0, i64 %idxprom16
  %25 = bitcast %struct._GtkWidget** %arrayidx17 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %28 = load i32, i32* %action.addr, align 4
  %idxprom19 = zext i32 %28 to i64
  %arrayidx20 = getelementptr inbounds [2 x i8*], [2 x i8*]* %handlers, i32 0, i64 %idxprom19
  %29 = load i8*, i8** %arrayidx20, align 8
  %30 = bitcast i8* %29 to void ()*
  %call21 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), void ()* %30, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %entry
  %31 = load i32, i32* %action.addr, align 4
  %idxprom23 = zext i32 %31 to i64
  %arrayidx24 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* @fileselect.windows, i32 0, i64 %idxprom23
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx24, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_window_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call25)
  %34 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @loadpreset_response(%struct._GtkWidget* %dialog, i32 %response_id, i8* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %1)
  store %struct._GtkTreeModel* %call, %struct._GtkTreeModel** %model, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_file_chooser_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFileChooser*
  %call3 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %4)
  store i8* %call3, i8** %name, align 8
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %6 = bitcast %struct._GtkTreeModel* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_list_store_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkListStore*
  call void @gtk_list_store_clear(%struct._GtkListStore* %7)
  %8 = load i8*, i8** %name, align 8
  call void @loadit(i8* %8)
  %9 = load i8*, i8** %name, align 8
  call void @g_free(i8* %9)
  call void @rebuildlist()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @savepreset_response(%struct._GtkWidget* %dialog, i32 %response_id, i8* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %3)
  store i8* %call2, i8** %name, align 8
  %4 = load i8*, i8** %name, align 8
  call void @saveit(i8* %4)
  %5 = load i8*, i8** %name, align 8
  call void @g_free(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %6)
  ret void
}

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare void @gtk_list_store_clear(%struct._GtkListStore*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @loadit(i8* %fn) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %endbuf = alloca [840 x i8], align 16
  %end = alloca i8*, align 8
  %line = alloca [1024 x i8], align 16
  %fmt_str = alloca [16 x i8], align 16
  %i = alloca i32, align 4
  %t = alloca %struct.texture*, align 8
  %majtype = alloca i32, align 4
  %type = alloca i32, align 4
  store i8* %fn, i8** %fn.addr, align 8
  %arraydecay = getelementptr inbounds [840 x i8], [840 x i8]* %endbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %end, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.62, i32 0, i32 0)) #4
  %2 = load i8*, i8** %fn.addr, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %2)
  %call3 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call3, align 4
  %call4 = call i8* @g_strerror(i32 %3) #6
  call void (i8*, ...) @g_message(i8* %call1, i8* %call2, i8* %call4)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32* %majtype, i32* %type)
  %cmp = icmp ne i32 2, %call5
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %majtype, align 4
  %cmp6 = icmp slt i32 %5, 0
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %majtype, align 4
  %cmp8 = icmp sgt i32 %6, 2
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %lor.lhs.false.7, %lor.lhs.false, %if.end
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i32 0, i32 0)) #4
  %7 = load i8*, i8** %fn.addr, align 8
  %call11 = call i8* @gimp_filename_to_utf8(i8* %7)
  call void (i8*, ...) @g_message(i8* %call10, i8* %call11)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %8)
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false.7
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @rewind(%struct._IO_FILE* %9)
  store i16 0, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %arraydecay14 = getelementptr inbounds [16 x i8], [16 x i8]* %fmt_str, i32 0, i32 0
  %call15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay14, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0), i64 839) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end.217, %if.end.13
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call16 = call i32 @feof(%struct._IO_FILE* %10) #4
  %tobool17 = icmp ne i32 %call16, 0
  %lnot = xor i1 %tobool17, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call19 = call i8* @fgets(i8* %arraydecay18, i32 1023, %struct._IO_FILE* %11)
  %tobool20 = icmp ne i8* %call19, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %while.body
  br label %while.end

if.end.22:                                        ; preds = %while.body
  %12 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %conv = sext i16 %12 to i32
  store i32 %conv, i32* %i, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3), i32 0, i64 %idxprom
  store %struct.texture* %arrayidx, %struct.texture** %t, align 8
  %14 = load %struct.texture*, %struct.texture** %t, align 8
  call void @setdefaults(%struct.texture* %14)
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [16 x i8], [16 x i8]* %fmt_str, i32 0, i32 0
  %15 = load %struct.texture*, %struct.texture** %t, align 8
  %majtype25 = getelementptr inbounds %struct.texture, %struct.texture* %15, i32 0, i32 0
  %16 = load %struct.texture*, %struct.texture** %t, align 8
  %type26 = getelementptr inbounds %struct.texture, %struct.texture* %16, i32 0, i32 1
  %17 = load i8*, i8** %end, align 8
  %call27 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay23, i8* %arraydecay24, i32* %majtype25, i32* %type26, i8* %17) #4
  %cmp28 = icmp ne i32 %call27, 3
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.22
  %18 = load i8*, i8** %end, align 8
  %call31 = call double @g_ascii_strtod(i8* %18, i8** %end)
  %19 = load %struct.texture*, %struct.texture** %t, align 8
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %19, i32 0, i32 3
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color1, i32 0, i32 0
  store double %call31, double* %x, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.22
  %20 = load i8*, i8** %end, align 8
  %tobool33 = icmp ne i8* %20, null
  br i1 %tobool33, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.end.32
  %call34 = call i32* @__errno_location() #6
  %21 = load i32, i32* %call34, align 4
  %cmp35 = icmp ne i32 %21, 34
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %land.lhs.true
  %22 = load i8*, i8** %end, align 8
  %call38 = call double @g_ascii_strtod(i8* %22, i8** %end)
  %23 = load %struct.texture*, %struct.texture** %t, align 8
  %color139 = getelementptr inbounds %struct.texture, %struct.texture* %23, i32 0, i32 3
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color139, i32 0, i32 1
  store double %call38, double* %y, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %land.lhs.true, %if.end.32
  %24 = load i8*, i8** %end, align 8
  %tobool41 = icmp ne i8* %24, null
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.49

land.lhs.true.42:                                 ; preds = %if.end.40
  %call43 = call i32* @__errno_location() #6
  %25 = load i32, i32* %call43, align 4
  %cmp44 = icmp ne i32 %25, 34
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %land.lhs.true.42
  %26 = load i8*, i8** %end, align 8
  %call47 = call double @g_ascii_strtod(i8* %26, i8** %end)
  %27 = load %struct.texture*, %struct.texture** %t, align 8
  %color148 = getelementptr inbounds %struct.texture, %struct.texture* %27, i32 0, i32 3
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color148, i32 0, i32 2
  store double %call47, double* %z, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %land.lhs.true.42, %if.end.40
  %28 = load i8*, i8** %end, align 8
  %tobool50 = icmp ne i8* %28, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.58

land.lhs.true.51:                                 ; preds = %if.end.49
  %call52 = call i32* @__errno_location() #6
  %29 = load i32, i32* %call52, align 4
  %cmp53 = icmp ne i32 %29, 34
  br i1 %cmp53, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %land.lhs.true.51
  %30 = load i8*, i8** %end, align 8
  %call56 = call double @g_ascii_strtod(i8* %30, i8** %end)
  %31 = load %struct.texture*, %struct.texture** %t, align 8
  %color157 = getelementptr inbounds %struct.texture, %struct.texture* %31, i32 0, i32 3
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color157, i32 0, i32 3
  store double %call56, double* %w, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %land.lhs.true.51, %if.end.49
  %32 = load i8*, i8** %end, align 8
  %tobool59 = icmp ne i8* %32, null
  br i1 %tobool59, label %land.lhs.true.60, label %if.end.67

land.lhs.true.60:                                 ; preds = %if.end.58
  %call61 = call i32* @__errno_location() #6
  %33 = load i32, i32* %call61, align 4
  %cmp62 = icmp ne i32 %33, 34
  br i1 %cmp62, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %land.lhs.true.60
  %34 = load i8*, i8** %end, align 8
  %call65 = call double @g_ascii_strtod(i8* %34, i8** %end)
  %35 = load %struct.texture*, %struct.texture** %t, align 8
  %color2 = getelementptr inbounds %struct.texture, %struct.texture* %35, i32 0, i32 4
  %x66 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color2, i32 0, i32 0
  store double %call65, double* %x66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %land.lhs.true.60, %if.end.58
  %36 = load i8*, i8** %end, align 8
  %tobool68 = icmp ne i8* %36, null
  br i1 %tobool68, label %land.lhs.true.69, label %if.end.77

land.lhs.true.69:                                 ; preds = %if.end.67
  %call70 = call i32* @__errno_location() #6
  %37 = load i32, i32* %call70, align 4
  %cmp71 = icmp ne i32 %37, 34
  br i1 %cmp71, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %land.lhs.true.69
  %38 = load i8*, i8** %end, align 8
  %call74 = call double @g_ascii_strtod(i8* %38, i8** %end)
  %39 = load %struct.texture*, %struct.texture** %t, align 8
  %color275 = getelementptr inbounds %struct.texture, %struct.texture* %39, i32 0, i32 4
  %y76 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color275, i32 0, i32 1
  store double %call74, double* %y76, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %land.lhs.true.69, %if.end.67
  %40 = load i8*, i8** %end, align 8
  %tobool78 = icmp ne i8* %40, null
  br i1 %tobool78, label %land.lhs.true.79, label %if.end.87

land.lhs.true.79:                                 ; preds = %if.end.77
  %call80 = call i32* @__errno_location() #6
  %41 = load i32, i32* %call80, align 4
  %cmp81 = icmp ne i32 %41, 34
  br i1 %cmp81, label %if.then.83, label %if.end.87

if.then.83:                                       ; preds = %land.lhs.true.79
  %42 = load i8*, i8** %end, align 8
  %call84 = call double @g_ascii_strtod(i8* %42, i8** %end)
  %43 = load %struct.texture*, %struct.texture** %t, align 8
  %color285 = getelementptr inbounds %struct.texture, %struct.texture* %43, i32 0, i32 4
  %z86 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color285, i32 0, i32 2
  store double %call84, double* %z86, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.83, %land.lhs.true.79, %if.end.77
  %44 = load i8*, i8** %end, align 8
  %tobool88 = icmp ne i8* %44, null
  br i1 %tobool88, label %land.lhs.true.89, label %if.end.97

land.lhs.true.89:                                 ; preds = %if.end.87
  %call90 = call i32* @__errno_location() #6
  %45 = load i32, i32* %call90, align 4
  %cmp91 = icmp ne i32 %45, 34
  br i1 %cmp91, label %if.then.93, label %if.end.97

if.then.93:                                       ; preds = %land.lhs.true.89
  %46 = load i8*, i8** %end, align 8
  %call94 = call double @g_ascii_strtod(i8* %46, i8** %end)
  %47 = load %struct.texture*, %struct.texture** %t, align 8
  %color295 = getelementptr inbounds %struct.texture, %struct.texture* %47, i32 0, i32 4
  %w96 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color295, i32 0, i32 3
  store double %call94, double* %w96, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.93, %land.lhs.true.89, %if.end.87
  %48 = load i8*, i8** %end, align 8
  %tobool98 = icmp ne i8* %48, null
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.105

land.lhs.true.99:                                 ; preds = %if.end.97
  %call100 = call i32* @__errno_location() #6
  %49 = load i32, i32* %call100, align 4
  %cmp101 = icmp ne i32 %49, 34
  br i1 %cmp101, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %land.lhs.true.99
  %50 = load i8*, i8** %end, align 8
  %call104 = call double @g_ascii_strtod(i8* %50, i8** %end)
  %51 = load %struct.texture*, %struct.texture** %t, align 8
  %oscale = getelementptr inbounds %struct.texture, %struct.texture* %51, i32 0, i32 8
  store double %call104, double* %oscale, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %land.lhs.true.99, %if.end.97
  %52 = load i8*, i8** %end, align 8
  %tobool106 = icmp ne i8* %52, null
  br i1 %tobool106, label %land.lhs.true.107, label %if.end.114

land.lhs.true.107:                                ; preds = %if.end.105
  %call108 = call i32* @__errno_location() #6
  %53 = load i32, i32* %call108, align 4
  %cmp109 = icmp ne i32 %53, 34
  br i1 %cmp109, label %if.then.111, label %if.end.114

if.then.111:                                      ; preds = %land.lhs.true.107
  %54 = load i8*, i8** %end, align 8
  %call112 = call double @g_ascii_strtod(i8* %54, i8** %end)
  %55 = load %struct.texture*, %struct.texture** %t, align 8
  %turbulence = getelementptr inbounds %struct.texture, %struct.texture* %55, i32 0, i32 21
  %x113 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %turbulence, i32 0, i32 0
  store double %call112, double* %x113, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.111, %land.lhs.true.107, %if.end.105
  %56 = load i8*, i8** %end, align 8
  %tobool115 = icmp ne i8* %56, null
  br i1 %tobool115, label %land.lhs.true.116, label %if.end.122

land.lhs.true.116:                                ; preds = %if.end.114
  %call117 = call i32* @__errno_location() #6
  %57 = load i32, i32* %call117, align 4
  %cmp118 = icmp ne i32 %57, 34
  br i1 %cmp118, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %land.lhs.true.116
  %58 = load i8*, i8** %end, align 8
  %call121 = call double @g_ascii_strtod(i8* %58, i8** %end)
  %59 = load %struct.texture*, %struct.texture** %t, align 8
  %amount = getelementptr inbounds %struct.texture, %struct.texture* %59, i32 0, i32 19
  store double %call121, double* %amount, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %land.lhs.true.116, %if.end.114
  %60 = load i8*, i8** %end, align 8
  %tobool123 = icmp ne i8* %60, null
  br i1 %tobool123, label %land.lhs.true.124, label %if.end.130

land.lhs.true.124:                                ; preds = %if.end.122
  %call125 = call i32* @__errno_location() #6
  %61 = load i32, i32* %call125, align 4
  %cmp126 = icmp ne i32 %61, 34
  br i1 %cmp126, label %if.then.128, label %if.end.130

if.then.128:                                      ; preds = %land.lhs.true.124
  %62 = load i8*, i8** %end, align 8
  %call129 = call double @g_ascii_strtod(i8* %62, i8** %end)
  %63 = load %struct.texture*, %struct.texture** %t, align 8
  %exp = getelementptr inbounds %struct.texture, %struct.texture* %63, i32 0, i32 20
  store double %call129, double* %exp, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.128, %land.lhs.true.124, %if.end.122
  %64 = load i8*, i8** %end, align 8
  %tobool131 = icmp ne i8* %64, null
  br i1 %tobool131, label %land.lhs.true.132, label %if.end.139

land.lhs.true.132:                                ; preds = %if.end.130
  %call133 = call i32* @__errno_location() #6
  %65 = load i32, i32* %call133, align 4
  %cmp134 = icmp ne i32 %65, 34
  br i1 %cmp134, label %if.then.136, label %if.end.139

if.then.136:                                      ; preds = %land.lhs.true.132
  %66 = load i8*, i8** %end, align 8
  %call137 = call double @g_ascii_strtod(i8* %66, i8** %end)
  %67 = load %struct.texture*, %struct.texture** %t, align 8
  %scale = getelementptr inbounds %struct.texture, %struct.texture* %67, i32 0, i32 9
  %x138 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %scale, i32 0, i32 0
  store double %call137, double* %x138, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.136, %land.lhs.true.132, %if.end.130
  %68 = load i8*, i8** %end, align 8
  %tobool140 = icmp ne i8* %68, null
  br i1 %tobool140, label %land.lhs.true.141, label %if.end.149

land.lhs.true.141:                                ; preds = %if.end.139
  %call142 = call i32* @__errno_location() #6
  %69 = load i32, i32* %call142, align 4
  %cmp143 = icmp ne i32 %69, 34
  br i1 %cmp143, label %if.then.145, label %if.end.149

if.then.145:                                      ; preds = %land.lhs.true.141
  %70 = load i8*, i8** %end, align 8
  %call146 = call double @g_ascii_strtod(i8* %70, i8** %end)
  %71 = load %struct.texture*, %struct.texture** %t, align 8
  %scale147 = getelementptr inbounds %struct.texture, %struct.texture* %71, i32 0, i32 9
  %y148 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %scale147, i32 0, i32 1
  store double %call146, double* %y148, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.145, %land.lhs.true.141, %if.end.139
  %72 = load i8*, i8** %end, align 8
  %tobool150 = icmp ne i8* %72, null
  br i1 %tobool150, label %land.lhs.true.151, label %if.end.159

land.lhs.true.151:                                ; preds = %if.end.149
  %call152 = call i32* @__errno_location() #6
  %73 = load i32, i32* %call152, align 4
  %cmp153 = icmp ne i32 %73, 34
  br i1 %cmp153, label %if.then.155, label %if.end.159

if.then.155:                                      ; preds = %land.lhs.true.151
  %74 = load i8*, i8** %end, align 8
  %call156 = call double @g_ascii_strtod(i8* %74, i8** %end)
  %75 = load %struct.texture*, %struct.texture** %t, align 8
  %scale157 = getelementptr inbounds %struct.texture, %struct.texture* %75, i32 0, i32 9
  %z158 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %scale157, i32 0, i32 2
  store double %call156, double* %z158, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.155, %land.lhs.true.151, %if.end.149
  %76 = load i8*, i8** %end, align 8
  %tobool160 = icmp ne i8* %76, null
  br i1 %tobool160, label %land.lhs.true.161, label %if.end.168

land.lhs.true.161:                                ; preds = %if.end.159
  %call162 = call i32* @__errno_location() #6
  %77 = load i32, i32* %call162, align 4
  %cmp163 = icmp ne i32 %77, 34
  br i1 %cmp163, label %if.then.165, label %if.end.168

if.then.165:                                      ; preds = %land.lhs.true.161
  %78 = load i8*, i8** %end, align 8
  %call166 = call double @g_ascii_strtod(i8* %78, i8** %end)
  %79 = load %struct.texture*, %struct.texture** %t, align 8
  %rotate = getelementptr inbounds %struct.texture, %struct.texture* %79, i32 0, i32 11
  %x167 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate, i32 0, i32 0
  store double %call166, double* %x167, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.165, %land.lhs.true.161, %if.end.159
  %80 = load i8*, i8** %end, align 8
  %tobool169 = icmp ne i8* %80, null
  br i1 %tobool169, label %land.lhs.true.170, label %if.end.178

land.lhs.true.170:                                ; preds = %if.end.168
  %call171 = call i32* @__errno_location() #6
  %81 = load i32, i32* %call171, align 4
  %cmp172 = icmp ne i32 %81, 34
  br i1 %cmp172, label %if.then.174, label %if.end.178

if.then.174:                                      ; preds = %land.lhs.true.170
  %82 = load i8*, i8** %end, align 8
  %call175 = call double @g_ascii_strtod(i8* %82, i8** %end)
  %83 = load %struct.texture*, %struct.texture** %t, align 8
  %rotate176 = getelementptr inbounds %struct.texture, %struct.texture* %83, i32 0, i32 11
  %y177 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate176, i32 0, i32 1
  store double %call175, double* %y177, align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.174, %land.lhs.true.170, %if.end.168
  %84 = load i8*, i8** %end, align 8
  %tobool179 = icmp ne i8* %84, null
  br i1 %tobool179, label %land.lhs.true.180, label %if.end.188

land.lhs.true.180:                                ; preds = %if.end.178
  %call181 = call i32* @__errno_location() #6
  %85 = load i32, i32* %call181, align 4
  %cmp182 = icmp ne i32 %85, 34
  br i1 %cmp182, label %if.then.184, label %if.end.188

if.then.184:                                      ; preds = %land.lhs.true.180
  %86 = load i8*, i8** %end, align 8
  %call185 = call double @g_ascii_strtod(i8* %86, i8** %end)
  %87 = load %struct.texture*, %struct.texture** %t, align 8
  %rotate186 = getelementptr inbounds %struct.texture, %struct.texture* %87, i32 0, i32 11
  %z187 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate186, i32 0, i32 2
  store double %call185, double* %z187, align 8
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.184, %land.lhs.true.180, %if.end.178
  %88 = load i8*, i8** %end, align 8
  %tobool189 = icmp ne i8* %88, null
  br i1 %tobool189, label %land.lhs.true.190, label %if.end.197

land.lhs.true.190:                                ; preds = %if.end.188
  %call191 = call i32* @__errno_location() #6
  %89 = load i32, i32* %call191, align 4
  %cmp192 = icmp ne i32 %89, 34
  br i1 %cmp192, label %if.then.194, label %if.end.197

if.then.194:                                      ; preds = %land.lhs.true.190
  %90 = load i8*, i8** %end, align 8
  %call195 = call double @g_ascii_strtod(i8* %90, i8** %end)
  %91 = load %struct.texture*, %struct.texture** %t, align 8
  %translate = getelementptr inbounds %struct.texture, %struct.texture* %91, i32 0, i32 10
  %x196 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %translate, i32 0, i32 0
  store double %call195, double* %x196, align 8
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.194, %land.lhs.true.190, %if.end.188
  %92 = load i8*, i8** %end, align 8
  %tobool198 = icmp ne i8* %92, null
  br i1 %tobool198, label %land.lhs.true.199, label %if.end.207

land.lhs.true.199:                                ; preds = %if.end.197
  %call200 = call i32* @__errno_location() #6
  %93 = load i32, i32* %call200, align 4
  %cmp201 = icmp ne i32 %93, 34
  br i1 %cmp201, label %if.then.203, label %if.end.207

if.then.203:                                      ; preds = %land.lhs.true.199
  %94 = load i8*, i8** %end, align 8
  %call204 = call double @g_ascii_strtod(i8* %94, i8** %end)
  %95 = load %struct.texture*, %struct.texture** %t, align 8
  %translate205 = getelementptr inbounds %struct.texture, %struct.texture* %95, i32 0, i32 10
  %y206 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %translate205, i32 0, i32 1
  store double %call204, double* %y206, align 8
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.203, %land.lhs.true.199, %if.end.197
  %96 = load i8*, i8** %end, align 8
  %tobool208 = icmp ne i8* %96, null
  br i1 %tobool208, label %land.lhs.true.209, label %if.end.217

land.lhs.true.209:                                ; preds = %if.end.207
  %call210 = call i32* @__errno_location() #6
  %97 = load i32, i32* %call210, align 4
  %cmp211 = icmp ne i32 %97, 34
  br i1 %cmp211, label %if.then.213, label %if.end.217

if.then.213:                                      ; preds = %land.lhs.true.209
  %98 = load i8*, i8** %end, align 8
  %call214 = call double @g_ascii_strtod(i8* %98, i8** %end)
  %99 = load %struct.texture*, %struct.texture** %t, align 8
  %translate215 = getelementptr inbounds %struct.texture, %struct.texture* %99, i32 0, i32 10
  %z216 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %translate215, i32 0, i32 2
  store double %call214, double* %z216, align 8
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.213, %land.lhs.true.209, %if.end.207
  %100 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %inc = add i16 %100, 1
  store i16 %inc, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  br label %while.cond

while.end:                                        ; preds = %if.then.21, %while.cond
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call218 = call i32 @fclose(%struct._IO_FILE* %101)
  br label %return

return:                                           ; preds = %while.end, %if.then.9, %if.then
  ret void
}

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @setdefaults(%struct.texture* %t) #0 {
entry:
  %t.addr = alloca %struct.texture*, align 8
  store %struct.texture* %t, %struct.texture** %t.addr, align 8
  %0 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %1 = bitcast %struct.texture* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 664, i32 8, i1 false)
  %2 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %type = getelementptr inbounds %struct.texture, %struct.texture* %2, i32 0, i32 1
  store i32 0, i32* %type, align 4
  %3 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %3, i32 0, i32 3
  call void @vcset(%struct._GimpVector4* %color1, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %4 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color2 = getelementptr inbounds %struct.texture, %struct.texture* %4, i32 0, i32 4
  call void @vcset(%struct._GimpVector4* %color2, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %5 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %diffuse = getelementptr inbounds %struct.texture, %struct.texture* %5, i32 0, i32 7
  call void @vcset(%struct._GimpVector4* %diffuse, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %6 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %ambient = getelementptr inbounds %struct.texture, %struct.texture* %6, i32 0, i32 6
  call void @vcset(%struct._GimpVector4* %ambient, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %7 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %scale = getelementptr inbounds %struct.texture, %struct.texture* %7, i32 0, i32 9
  call void @vset(%struct._GimpVector4* %scale, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %8 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %rotate = getelementptr inbounds %struct.texture, %struct.texture* %8, i32 0, i32 11
  call void @vset(%struct._GimpVector4* %rotate, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %9 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %translate = getelementptr inbounds %struct.texture, %struct.texture* %9, i32 0, i32 10
  call void @vset(%struct._GimpVector4* %translate, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %10 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %oscale = getelementptr inbounds %struct.texture, %struct.texture* %10, i32 0, i32 8
  store double 1.000000e+00, double* %oscale, align 8
  %11 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %amount = getelementptr inbounds %struct.texture, %struct.texture* %11, i32 0, i32 19
  store double 1.000000e+00, double* %amount, align 8
  %12 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %exp = getelementptr inbounds %struct.texture, %struct.texture* %12, i32 0, i32 20
  store double 1.000000e+00, double* %exp, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare double @g_ascii_strtod(i8*, i8**) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @vcset(%struct._GimpVector4* %v, double %a, double %b, double %c, double %d) #5 {
entry:
  %v.addr = alloca %struct._GimpVector4*, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %c.addr = alloca double, align 8
  %d.addr = alloca double, align 8
  store %struct._GimpVector4* %v, %struct._GimpVector4** %v.addr, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  store double %c, double* %c.addr, align 8
  store double %d, double* %d.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %1 = load %struct._GimpVector4*, %struct._GimpVector4** %v.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %1, i32 0, i32 0
  store double %0, double* %x, align 8
  %2 = load double, double* %b.addr, align 8
  %3 = load %struct._GimpVector4*, %struct._GimpVector4** %v.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %3, i32 0, i32 1
  store double %2, double* %y, align 8
  %4 = load double, double* %c.addr, align 8
  %5 = load %struct._GimpVector4*, %struct._GimpVector4** %v.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %5, i32 0, i32 2
  store double %4, double* %z, align 8
  %6 = load double, double* %d.addr, align 8
  %7 = load %struct._GimpVector4*, %struct._GimpVector4** %v.addr, align 8
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %7, i32 0, i32 3
  store double %6, double* %w, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vset(%struct._GimpVector4* %v, double %a, double %b, double %c) #5 {
entry:
  %v.addr = alloca %struct._GimpVector4*, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %c.addr = alloca double, align 8
  store %struct._GimpVector4* %v, %struct._GimpVector4** %v.addr, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  store double %c, double* %c.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %1 = load %struct._GimpVector4*, %struct._GimpVector4** %v.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %1, i32 0, i32 0
  store double %0, double* %x, align 8
  %2 = load double, double* %b.addr, align 8
  %3 = load %struct._GimpVector4*, %struct._GimpVector4** %v.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %3, i32 0, i32 1
  store double %2, double* %y, align 8
  %4 = load double, double* %c.addr, align 8
  %5 = load %struct._GimpVector4*, %struct._GimpVector4** %v.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %5, i32 0, i32 2
  store double %4, double* %z, align 8
  %6 = load %struct._GimpVector4*, %struct._GimpVector4** %v.addr, align 8
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %6, i32 0, i32 3
  store double 1.000000e+00, double* %w, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @saveit(i8* %fn) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %buf = alloca [39 x i8], align 16
  %t = alloca %struct.texture*, align 8
  store i8* %fn, i8** %fn.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.67, i32 0, i32 0)) #4
  %2 = load i8*, i8** %fn.addr, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %2)
  %call3 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call3, align 4
  %call4 = call i8* @g_strerror(i32 %3) #6
  call void (i8*, ...) @g_message(i8* %call1, i8* %call2, i8* %call4)
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %conv = sext i16 %5 to i32
  %cmp = icmp slt i32 %4, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 3), i32 0, i64 %idxprom
  store %struct.texture* %arrayidx, %struct.texture** %t, align 8
  %7 = load %struct.texture*, %struct.texture** %t, align 8
  %majtype = getelementptr inbounds %struct.texture, %struct.texture* %7, i32 0, i32 0
  %8 = load i32, i32* %majtype, align 4
  %cmp6 = icmp slt i32 %8, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.inc

if.end.9:                                         ; preds = %for.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %10 = load %struct.texture*, %struct.texture** %t, align 8
  %majtype10 = getelementptr inbounds %struct.texture, %struct.texture* %10, i32 0, i32 0
  %11 = load i32, i32* %majtype10, align 4
  %12 = load %struct.texture*, %struct.texture** %t, align 8
  %type = getelementptr inbounds %struct.texture, %struct.texture* %12, i32 0, i32 1
  %13 = load i32, i32* %type, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 %11, i32 %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %15 = load %struct.texture*, %struct.texture** %t, align 8
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %15, i32 0, i32 3
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color1, i32 0, i32 0
  %16 = load double, double* %x, align 8
  %call12 = call i8* @g_ascii_dtostr(i8* %arraydecay, i32 39, double %16)
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call12)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay14 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %18 = load %struct.texture*, %struct.texture** %t, align 8
  %color115 = getelementptr inbounds %struct.texture, %struct.texture* %18, i32 0, i32 3
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color115, i32 0, i32 1
  %19 = load double, double* %y, align 8
  %call16 = call i8* @g_ascii_dtostr(i8* %arraydecay14, i32 39, double %19)
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call16)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay18 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %21 = load %struct.texture*, %struct.texture** %t, align 8
  %color119 = getelementptr inbounds %struct.texture, %struct.texture* %21, i32 0, i32 3
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color119, i32 0, i32 2
  %22 = load double, double* %z, align 8
  %call20 = call i8* @g_ascii_dtostr(i8* %arraydecay18, i32 39, double %22)
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call20)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay22 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %24 = load %struct.texture*, %struct.texture** %t, align 8
  %color123 = getelementptr inbounds %struct.texture, %struct.texture* %24, i32 0, i32 3
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color123, i32 0, i32 3
  %25 = load double, double* %w, align 8
  %call24 = call i8* @g_ascii_dtostr(i8* %arraydecay22, i32 39, double %25)
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call24)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay26 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %27 = load %struct.texture*, %struct.texture** %t, align 8
  %color2 = getelementptr inbounds %struct.texture, %struct.texture* %27, i32 0, i32 4
  %x27 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color2, i32 0, i32 0
  %28 = load double, double* %x27, align 8
  %call28 = call i8* @g_ascii_dtostr(i8* %arraydecay26, i32 39, double %28)
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay30 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %30 = load %struct.texture*, %struct.texture** %t, align 8
  %color231 = getelementptr inbounds %struct.texture, %struct.texture* %30, i32 0, i32 4
  %y32 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color231, i32 0, i32 1
  %31 = load double, double* %y32, align 8
  %call33 = call i8* @g_ascii_dtostr(i8* %arraydecay30, i32 39, double %31)
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call33)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay35 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %33 = load %struct.texture*, %struct.texture** %t, align 8
  %color236 = getelementptr inbounds %struct.texture, %struct.texture* %33, i32 0, i32 4
  %z37 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color236, i32 0, i32 2
  %34 = load double, double* %z37, align 8
  %call38 = call i8* @g_ascii_dtostr(i8* %arraydecay35, i32 39, double %34)
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call38)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay40 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %36 = load %struct.texture*, %struct.texture** %t, align 8
  %color241 = getelementptr inbounds %struct.texture, %struct.texture* %36, i32 0, i32 4
  %w42 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %color241, i32 0, i32 3
  %37 = load double, double* %w42, align 8
  %call43 = call i8* @g_ascii_dtostr(i8* %arraydecay40, i32 39, double %37)
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call43)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay45 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %39 = load %struct.texture*, %struct.texture** %t, align 8
  %oscale = getelementptr inbounds %struct.texture, %struct.texture* %39, i32 0, i32 8
  %40 = load double, double* %oscale, align 8
  %call46 = call i8* @g_ascii_dtostr(i8* %arraydecay45, i32 39, double %40)
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call46)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay48 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %42 = load %struct.texture*, %struct.texture** %t, align 8
  %turbulence = getelementptr inbounds %struct.texture, %struct.texture* %42, i32 0, i32 21
  %x49 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %turbulence, i32 0, i32 0
  %43 = load double, double* %x49, align 8
  %call50 = call i8* @g_ascii_dtostr(i8* %arraydecay48, i32 39, double %43)
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call50)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay52 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %45 = load %struct.texture*, %struct.texture** %t, align 8
  %amount = getelementptr inbounds %struct.texture, %struct.texture* %45, i32 0, i32 19
  %46 = load double, double* %amount, align 8
  %call53 = call i8* @g_ascii_dtostr(i8* %arraydecay52, i32 39, double %46)
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call53)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay55 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %48 = load %struct.texture*, %struct.texture** %t, align 8
  %exp = getelementptr inbounds %struct.texture, %struct.texture* %48, i32 0, i32 20
  %49 = load double, double* %exp, align 8
  %call56 = call i8* @g_ascii_dtostr(i8* %arraydecay55, i32 39, double %49)
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call56)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay58 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %51 = load %struct.texture*, %struct.texture** %t, align 8
  %scale = getelementptr inbounds %struct.texture, %struct.texture* %51, i32 0, i32 9
  %x59 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %scale, i32 0, i32 0
  %52 = load double, double* %x59, align 8
  %call60 = call i8* @g_ascii_dtostr(i8* %arraydecay58, i32 39, double %52)
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call60)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay62 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %54 = load %struct.texture*, %struct.texture** %t, align 8
  %scale63 = getelementptr inbounds %struct.texture, %struct.texture* %54, i32 0, i32 9
  %y64 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %scale63, i32 0, i32 1
  %55 = load double, double* %y64, align 8
  %call65 = call i8* @g_ascii_dtostr(i8* %arraydecay62, i32 39, double %55)
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call65)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay67 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %57 = load %struct.texture*, %struct.texture** %t, align 8
  %scale68 = getelementptr inbounds %struct.texture, %struct.texture* %57, i32 0, i32 9
  %z69 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %scale68, i32 0, i32 2
  %58 = load double, double* %z69, align 8
  %call70 = call i8* @g_ascii_dtostr(i8* %arraydecay67, i32 39, double %58)
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call70)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay72 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %60 = load %struct.texture*, %struct.texture** %t, align 8
  %rotate = getelementptr inbounds %struct.texture, %struct.texture* %60, i32 0, i32 11
  %x73 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate, i32 0, i32 0
  %61 = load double, double* %x73, align 8
  %call74 = call i8* @g_ascii_dtostr(i8* %arraydecay72, i32 39, double %61)
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call74)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay76 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %63 = load %struct.texture*, %struct.texture** %t, align 8
  %rotate77 = getelementptr inbounds %struct.texture, %struct.texture* %63, i32 0, i32 11
  %y78 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate77, i32 0, i32 1
  %64 = load double, double* %y78, align 8
  %call79 = call i8* @g_ascii_dtostr(i8* %arraydecay76, i32 39, double %64)
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call79)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay81 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %66 = load %struct.texture*, %struct.texture** %t, align 8
  %rotate82 = getelementptr inbounds %struct.texture, %struct.texture* %66, i32 0, i32 11
  %z83 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate82, i32 0, i32 2
  %67 = load double, double* %z83, align 8
  %call84 = call i8* @g_ascii_dtostr(i8* %arraydecay81, i32 39, double %67)
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call84)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay86 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %69 = load %struct.texture*, %struct.texture** %t, align 8
  %translate = getelementptr inbounds %struct.texture, %struct.texture* %69, i32 0, i32 10
  %x87 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %translate, i32 0, i32 0
  %70 = load double, double* %x87, align 8
  %call88 = call i8* @g_ascii_dtostr(i8* %arraydecay86, i32 39, double %70)
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call88)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay90 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %72 = load %struct.texture*, %struct.texture** %t, align 8
  %translate91 = getelementptr inbounds %struct.texture, %struct.texture* %72, i32 0, i32 10
  %y92 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %translate91, i32 0, i32 1
  %73 = load double, double* %y92, align 8
  %call93 = call i8* @g_ascii_dtostr(i8* %arraydecay90, i32 39, double %73)
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call93)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay95 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %75 = load %struct.texture*, %struct.texture** %t, align 8
  %translate96 = getelementptr inbounds %struct.texture, %struct.texture* %75, i32 0, i32 10
  %z97 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %translate96, i32 0, i32 2
  %76 = load double, double* %z97, align 8
  %call98 = call i8* @g_ascii_dtostr(i8* %arraydecay95, i32 39, double %76)
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %call98)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end.9, %if.then.8
  %78 = load i32, i32* %i, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call101 = call i32 @fclose(%struct._IO_FILE* %79)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @g_ascii_dtostr(i8*, i32, double) #1

; Function Attrs: nounwind uwtable
define internal void @setvals(%struct.texture* %t) #0 {
entry:
  %t.addr = alloca %struct.texture*, align 8
  %l = alloca %struct.textures_t*, align 8
  store %struct.texture* %t, %struct.texture** %t.addr, align 8
  %0 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %tobool = icmp ne %struct.texture* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* @noupdate, align 4
  %1 = load %struct._GtkObject*, %struct._GtkObject** @amountscale, align 8
  %2 = bitcast %struct._GtkObject* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkAdjustment*
  %4 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %amount = getelementptr inbounds %struct.texture, %struct.texture* %4, i32 0, i32 19
  %5 = load double, double* %amount, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %3, double %5)
  %6 = load %struct._GtkObject*, %struct._GtkObject** @scalescale, align 8
  %7 = bitcast %struct._GtkObject* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_adjustment_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkAdjustment*
  %9 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %oscale = getelementptr inbounds %struct.texture, %struct.texture* %9, i32 0, i32 8
  %10 = load double, double* %oscale, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %10)
  %11 = load %struct._GtkObject*, %struct._GtkObject** @scalexscale, align 8
  %12 = bitcast %struct._GtkObject* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_adjustment_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkAdjustment*
  %14 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %scale = getelementptr inbounds %struct.texture, %struct.texture* %14, i32 0, i32 9
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %scale, i32 0, i32 0
  %15 = load double, double* %x, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %13, double %15)
  %16 = load %struct._GtkObject*, %struct._GtkObject** @scaleyscale, align 8
  %17 = bitcast %struct._GtkObject* %16 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_adjustment_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call6)
  %18 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkAdjustment*
  %19 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %scale8 = getelementptr inbounds %struct.texture, %struct.texture* %19, i32 0, i32 9
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %scale8, i32 0, i32 1
  %20 = load double, double* %y, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %18, double %20)
  %21 = load %struct._GtkObject*, %struct._GtkObject** @scalezscale, align 8
  %22 = bitcast %struct._GtkObject* %21 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_adjustment_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call9)
  %23 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkAdjustment*
  %24 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %scale11 = getelementptr inbounds %struct.texture, %struct.texture* %24, i32 0, i32 9
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %scale11, i32 0, i32 2
  %25 = load double, double* %z, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %23, double %25)
  %26 = load %struct._GtkObject*, %struct._GtkObject** @rotxscale, align 8
  %27 = bitcast %struct._GtkObject* %26 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_adjustment_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call12)
  %28 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkAdjustment*
  %29 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %rotate = getelementptr inbounds %struct.texture, %struct.texture* %29, i32 0, i32 11
  %x14 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate, i32 0, i32 0
  %30 = load double, double* %x14, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %28, double %30)
  %31 = load %struct._GtkObject*, %struct._GtkObject** @rotyscale, align 8
  %32 = bitcast %struct._GtkObject* %31 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_adjustment_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call15)
  %33 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkAdjustment*
  %34 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %rotate17 = getelementptr inbounds %struct.texture, %struct.texture* %34, i32 0, i32 11
  %y18 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate17, i32 0, i32 1
  %35 = load double, double* %y18, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %33, double %35)
  %36 = load %struct._GtkObject*, %struct._GtkObject** @rotzscale, align 8
  %37 = bitcast %struct._GtkObject* %36 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_adjustment_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call19)
  %38 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkAdjustment*
  %39 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %rotate21 = getelementptr inbounds %struct.texture, %struct.texture* %39, i32 0, i32 11
  %z22 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate21, i32 0, i32 2
  %40 = load double, double* %z22, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %38, double %40)
  %41 = load %struct._GtkObject*, %struct._GtkObject** @posxscale, align 8
  %42 = bitcast %struct._GtkObject* %41 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_adjustment_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call23)
  %43 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkAdjustment*
  %44 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %translate = getelementptr inbounds %struct.texture, %struct.texture* %44, i32 0, i32 10
  %x25 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %translate, i32 0, i32 0
  %45 = load double, double* %x25, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %43, double %45)
  %46 = load %struct._GtkObject*, %struct._GtkObject** @posyscale, align 8
  %47 = bitcast %struct._GtkObject* %46 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_adjustment_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call26)
  %48 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkAdjustment*
  %49 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %translate28 = getelementptr inbounds %struct.texture, %struct.texture* %49, i32 0, i32 10
  %y29 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %translate28, i32 0, i32 1
  %50 = load double, double* %y29, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %48, double %50)
  %51 = load %struct._GtkObject*, %struct._GtkObject** @poszscale, align 8
  %52 = bitcast %struct._GtkObject* %51 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_adjustment_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call30)
  %53 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkAdjustment*
  %54 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %translate32 = getelementptr inbounds %struct.texture, %struct.texture* %54, i32 0, i32 10
  %z33 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %translate32, i32 0, i32 2
  %55 = load double, double* %z33, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %53, double %55)
  %56 = load %struct._GtkObject*, %struct._GtkObject** @turbulencescale, align 8
  %57 = bitcast %struct._GtkObject* %56 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_adjustment_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call34)
  %58 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkAdjustment*
  %59 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %turbulence = getelementptr inbounds %struct.texture, %struct.texture* %59, i32 0, i32 21
  %x36 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %turbulence, i32 0, i32 0
  %60 = load double, double* %x36, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %58, double %60)
  %61 = load %struct._GtkObject*, %struct._GtkObject** @expscale, align 8
  %62 = bitcast %struct._GtkObject* %61 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_adjustment_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call37)
  %63 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkAdjustment*
  %64 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %exp = getelementptr inbounds %struct.texture, %struct.texture* %64, i32 0, i32 20
  %65 = load double, double* %exp, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %63, double %65)
  call void @drawcolor1(%struct._GtkWidget* null)
  call void @drawcolor2(%struct._GtkWidget* null)
  store %struct.textures_t* getelementptr inbounds ([10 x %struct.textures_t], [10 x %struct.textures_t]* @textures, i32 0, i32 0), %struct.textures_t** %l, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %if.end
  %66 = load %struct.textures_t*, %struct.textures_t** %l, align 8
  %s = getelementptr inbounds %struct.textures_t, %struct.textures_t* %66, i32 0, i32 1
  %67 = load i8*, i8** %s, align 8
  %tobool39 = icmp ne i8* %67, null
  br i1 %tobool39, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %68 = load %struct.textures_t*, %struct.textures_t** %l, align 8
  %n = getelementptr inbounds %struct.textures_t, %struct.textures_t* %68, i32 0, i32 2
  %69 = load i64, i64* %n, align 8
  %70 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %type = getelementptr inbounds %struct.texture, %struct.texture* %70, i32 0, i32 1
  %71 = load i32, i32* %type, align 4
  %conv = sext i32 %71 to i64
  %cmp = icmp eq i64 %69, %conv
  br i1 %cmp, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %while.body
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** @texturemenu, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_int_combo_box_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call42)
  %74 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpIntComboBox*
  %75 = load %struct.textures_t*, %struct.textures_t** %l, align 8
  %index = getelementptr inbounds %struct.textures_t, %struct.textures_t* %75, i32 0, i32 0
  %76 = load i32, i32* %index, align 4
  %call44 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %74, i32 %76)
  br label %while.end

if.end.45:                                        ; preds = %while.body
  %77 = load %struct.textures_t*, %struct.textures_t** %l, align 8
  %incdec.ptr = getelementptr inbounds %struct.textures_t, %struct.textures_t* %77, i32 1
  store %struct.textures_t* %incdec.ptr, %struct.textures_t** %l, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.41, %while.cond
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** @typemenu, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_int_combo_box_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call46)
  %80 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpIntComboBox*
  %81 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %majtype = getelementptr inbounds %struct.texture, %struct.texture* %81, i32 0, i32 0
  %82 = load i32, i32* %majtype, align 4
  %call48 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %80, i32 %82)
  store i32 0, i32* @noupdate, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.texture* @currenttexture() #0 {
entry:
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %t = alloca %struct.texture*, align 8
  store %struct.texture* null, %struct.texture** %t, align 8
  %0 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %0)
  store %struct._GtkTreeSelection* %call, %struct._GtkTreeSelection** %sel, align 8
  %1 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %call1 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %1, %struct._GtkTreeModel** null, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call2 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %2)
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %call2, %struct._GtkTreeIter* %iter, i32 1, %struct.texture** %t, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.texture*, %struct.texture** %t, align 8
  ret %struct.texture* %3
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @mklabel(%struct.texture* %t) #0 {
entry:
  %t.addr = alloca %struct.texture*, align 8
  %l = alloca %struct.textures_t*, align 8
  store %struct.texture* %t, %struct.texture** %t.addr, align 8
  %0 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %majtype = getelementptr inbounds %struct.texture, %struct.texture* %0, i32 0, i32 0
  %1 = load i32, i32* %majtype, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)) #4
  %call1 = call i8* @strcpy(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @mklabel.tmps, i32 0, i32 0), i8* %call) #4
  br label %if.end.16

if.else:                                          ; preds = %entry
  %2 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %majtype2 = getelementptr inbounds %struct.texture, %struct.texture* %2, i32 0, i32 0
  %3 = load i32, i32* %majtype2, align 4
  %cmp3 = icmp eq i32 %3, 1
  br i1 %cmp3, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %if.else
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0)) #4
  %call6 = call i8* @strcpy(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @mklabel.tmps, i32 0, i32 0), i8* %call5) #4
  br label %if.end.15

if.else.7:                                        ; preds = %if.else
  %4 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %majtype8 = getelementptr inbounds %struct.texture, %struct.texture* %4, i32 0, i32 0
  %5 = load i32, i32* %majtype8, align 4
  %cmp9 = icmp eq i32 %5, 2
  br i1 %cmp9, label %if.then.10, label %if.else.13

if.then.10:                                       ; preds = %if.else.7
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #4
  %call12 = call i8* @strcpy(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @mklabel.tmps, i32 0, i32 0), i8* %call11) #4
  br label %if.end

if.else.13:                                       ; preds = %if.else.7
  %call14 = call i8* @strcpy(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @mklabel.tmps, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.4
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then
  %6 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %majtype17 = getelementptr inbounds %struct.texture, %struct.texture* %6, i32 0, i32 0
  %7 = load i32, i32* %majtype17, align 4
  %cmp18 = icmp eq i32 %7, 0
  br i1 %cmp18, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %8 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %majtype19 = getelementptr inbounds %struct.texture, %struct.texture* %8, i32 0, i32 0
  %9 = load i32, i32* %majtype19, align 4
  %cmp20 = icmp eq i32 %9, 1
  br i1 %cmp20, label %if.then.21, label %if.end.30

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.16
  %call22 = call i8* @strcat(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @mklabel.tmps, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #4
  store %struct.textures_t* getelementptr inbounds ([10 x %struct.textures_t], [10 x %struct.textures_t]* @textures, i32 0, i32 0), %struct.textures_t** %l, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.29, %if.then.21
  %10 = load %struct.textures_t*, %struct.textures_t** %l, align 8
  %s = getelementptr inbounds %struct.textures_t, %struct.textures_t* %10, i32 0, i32 1
  %11 = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %type = getelementptr inbounds %struct.texture, %struct.texture* %12, i32 0, i32 1
  %13 = load i32, i32* %type, align 4
  %conv = sext i32 %13 to i64
  %14 = load %struct.textures_t*, %struct.textures_t** %l, align 8
  %n = getelementptr inbounds %struct.textures_t, %struct.textures_t* %14, i32 0, i32 2
  %15 = load i64, i64* %n, align 8
  %cmp23 = icmp eq i64 %conv, %15
  br i1 %cmp23, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %while.body
  %16 = load %struct.textures_t*, %struct.textures_t** %l, align 8
  %s26 = getelementptr inbounds %struct.textures_t, %struct.textures_t* %16, i32 0, i32 1
  %17 = load i8*, i8** %s26, align 8
  %call27 = call i8* @gettext(i8* %17) #4
  %call28 = call i8* @strcat(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @mklabel.tmps, i32 0, i32 0), i8* %call27) #4
  br label %while.end

if.end.29:                                        ; preds = %while.body
  %18 = load %struct.textures_t*, %struct.textures_t** %l, align 8
  %incdec.ptr = getelementptr inbounds %struct.textures_t, %struct.textures_t* %18, i32 1
  store %struct.textures_t* %incdec.ptr, %struct.textures_t** %l, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.25, %while.cond
  br label %if.end.30

if.end.30:                                        ; preds = %while.end, %lor.lhs.false
  ret i8* getelementptr inbounds ([100 x i8], [100 x i8]* @mklabel.tmps, i32 0, i32 0)
}

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define internal void @restartrender() #0 {
entry:
  %0 = load i32, i32* @idle_id, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @idle_id, align 4
  %call = call i32 @g_source_remove(i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 ()* @render to i32 (i8*)*), i8* null)
  store i32 %call1, i32* @idle_id, align 4
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare i32 @g_source_remove(i32) #1

declare i32 @g_idle_add(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @render() #0 {
entry:
  %col = alloca %struct._GimpVector4, align 8
  %dest_row = alloca i8*, align 8
  %r = alloca %struct.ray, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %p = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %bpp = alloca i32, align 4
  %g = alloca i32, align 4
  %gridsize = alloca i32, align 4
  store i32 150, i32* %tx, align 4
  store i32 150, i32* %ty, align 4
  store i32 4, i32* %bpp, align 4
  store i32 0, i32* @idle_id, align 4
  call void @initworld()
  %v1 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v1, i32 0, i32 2
  store double -1.000000e+01, double* %z, align 8
  %v2 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 1
  %z1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v2, i32 0, i32 2
  store double 0.000000e+00, double* %z1, align 8
  %0 = load i16, i16* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 1, i64 0, i32 0, i32 0, i32 2), align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end.94

if.then:                                          ; preds = %entry
  %1 = load %struct._cairo_surface*, %struct._cairo_surface** @buffer, align 8
  call void @cairo_surface_flush(%struct._cairo_surface* %1)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.91, %if.then
  %2 = load i32, i32* %y, align 4
  %3 = load i32, i32* %ty, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body, label %for.end.93

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** @img, align 8
  %5 = load i32, i32* %y, align 4
  %6 = load i32, i32* @img_stride, align 4
  %mul = mul nsw i32 %5, %6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %dest_row, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %tx, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  store i32 16, i32* %gridsize, align 4
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %gridsize, align 4
  %div = sdiv i32 %9, %10
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %gridsize, align 4
  %div9 = sdiv i32 %11, %12
  %add = add nsw i32 %div, %div9
  %rem = srem i32 %add, 2
  %mul10 = mul nsw i32 %rem, 60
  %add11 = add nsw i32 %mul10, 100
  store i32 %add11, i32* %g, align 4
  %13 = load i32, i32* %x, align 4
  %conv12 = sitofp i32 %13 to float
  %14 = load i32, i32* %tx, align 4
  %sub = sub nsw i32 %14, 1
  %conv13 = sitofp i32 %sub to float
  %div14 = fdiv float %conv12, %conv13
  %conv15 = fpext float %div14 to double
  %sub16 = fsub double %conv15, 5.000000e-01
  %mul17 = fmul double 8.500000e+00, %sub16
  %v218 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 1
  %x19 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v218, i32 0, i32 0
  store double %mul17, double* %x19, align 8
  %v120 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %x21 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v120, i32 0, i32 0
  store double %mul17, double* %x21, align 8
  %15 = load i32, i32* %y, align 4
  %conv22 = sitofp i32 %15 to float
  %16 = load i32, i32* %ty, align 4
  %sub23 = sub nsw i32 %16, 1
  %conv24 = sitofp i32 %sub23 to float
  %div25 = fdiv float %conv22, %conv24
  %conv26 = fpext float %div25 to double
  %sub27 = fsub double %conv26, 5.000000e-01
  %mul28 = fmul double 8.500000e+00, %sub27
  %v229 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 1
  %y30 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v229, i32 0, i32 1
  store double %mul28, double* %y30, align 8
  %v131 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %y32 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v131, i32 0, i32 1
  store double %mul28, double* %y32, align 8
  %17 = load i32, i32* %x, align 4
  %18 = load i32, i32* %bpp, align 4
  %mul33 = mul nsw i32 %17, %18
  store i32 %mul33, i32* %p, align 4
  %call = call i32 @traceray(%struct.ray* %r, %struct._GimpVector4* %col, i32 10, double 1.000000e+00)
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %col, i32 0, i32 3
  %19 = load double, double* %w, align 8
  %cmp34 = fcmp olt double %19, 0.000000e+00
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %for.body.8
  %w37 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %col, i32 0, i32 3
  store double 0.000000e+00, double* %w37, align 8
  br label %if.end.43

if.else:                                          ; preds = %for.body.8
  %w38 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %col, i32 0, i32 3
  %20 = load double, double* %w38, align 8
  %cmp39 = fcmp ogt double %20, 1.000000e+00
  br i1 %cmp39, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.else
  %w42 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %col, i32 0, i32 3
  store double 1.000000e+00, double* %w42, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.41, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %if.then.36
  br label %do.body

do.body:                                          ; preds = %if.end.43
  %z44 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %col, i32 0, i32 2
  %21 = load double, double* %z44, align 8
  %mul45 = fmul double 2.550000e+02, %21
  %call46 = call zeroext i8 @pixelval(double %mul45)
  %conv47 = zext i8 %call46 to i32
  %conv48 = sitofp i32 %conv47 to double
  %w49 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %col, i32 0, i32 3
  %22 = load double, double* %w49, align 8
  %mul50 = fmul double %conv48, %22
  %23 = load i32, i32* %g, align 4
  %conv51 = sitofp i32 %23 to double
  %w52 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %col, i32 0, i32 3
  %24 = load double, double* %w52, align 8
  %sub53 = fsub double 1.000000e+00, %24
  %mul54 = fmul double %conv51, %sub53
  %add55 = fadd double %mul50, %mul54
  %conv56 = fptoui double %add55 to i8
  %25 = load i8*, i8** %dest_row, align 8
  %26 = load i32, i32* %p, align 4
  %idx.ext57 = sext i32 %26 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %25, i64 %idx.ext57
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr58, i64 0
  store i8 %conv56, i8* %arrayidx, align 1
  %y59 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %col, i32 0, i32 1
  %27 = load double, double* %y59, align 8
  %mul60 = fmul double 2.550000e+02, %27
  %call61 = call zeroext i8 @pixelval(double %mul60)
  %conv62 = zext i8 %call61 to i32
  %conv63 = sitofp i32 %conv62 to double
  %w64 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %col, i32 0, i32 3
  %28 = load double, double* %w64, align 8
  %mul65 = fmul double %conv63, %28
  %29 = load i32, i32* %g, align 4
  %conv66 = sitofp i32 %29 to double
  %w67 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %col, i32 0, i32 3
  %30 = load double, double* %w67, align 8
  %sub68 = fsub double 1.000000e+00, %30
  %mul69 = fmul double %conv66, %sub68
  %add70 = fadd double %mul65, %mul69
  %conv71 = fptoui double %add70 to i8
  %31 = load i8*, i8** %dest_row, align 8
  %32 = load i32, i32* %p, align 4
  %idx.ext72 = sext i32 %32 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %31, i64 %idx.ext72
  %arrayidx74 = getelementptr inbounds i8, i8* %add.ptr73, i64 1
  store i8 %conv71, i8* %arrayidx74, align 1
  %x75 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %col, i32 0, i32 0
  %33 = load double, double* %x75, align 8
  %mul76 = fmul double 2.550000e+02, %33
  %call77 = call zeroext i8 @pixelval(double %mul76)
  %conv78 = zext i8 %call77 to i32
  %conv79 = sitofp i32 %conv78 to double
  %w80 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %col, i32 0, i32 3
  %34 = load double, double* %w80, align 8
  %mul81 = fmul double %conv79, %34
  %35 = load i32, i32* %g, align 4
  %conv82 = sitofp i32 %35 to double
  %w83 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %col, i32 0, i32 3
  %36 = load double, double* %w83, align 8
  %sub84 = fsub double 1.000000e+00, %36
  %mul85 = fmul double %conv82, %sub84
  %add86 = fadd double %mul81, %mul85
  %conv87 = fptoui double %add86 to i8
  %37 = load i8*, i8** %dest_row, align 8
  %38 = load i32, i32* %p, align 4
  %idx.ext88 = sext i32 %38 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %37, i64 %idx.ext88
  %arrayidx90 = getelementptr inbounds i8, i8* %add.ptr89, i64 2
  store i8 %conv87, i8* %arrayidx90, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %39 = load i32, i32* %x, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.end
  %40 = load i32, i32* %y, align 4
  %inc92 = add nsw i32 %40, 1
  store i32 %inc92, i32* %y, align 4
  br label %for.cond

for.end.93:                                       ; preds = %for.cond
  %41 = load %struct._cairo_surface*, %struct._cairo_surface** @buffer, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %41)
  br label %if.end.94

if.end.94:                                        ; preds = %for.end.93, %entry
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** @drawarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %42)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @initworld() #0 {
entry:
  %i = alloca i32, align 4
  %c = alloca %struct.common*, align 8
  %d = alloca %struct.common*, align 8
  %t = alloca %struct.texture*, align 8
  %l = alloca %struct.light, align 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.world_t* @world to i8*), i8 0, i64 280112, i32 8, i1 false)
  store i16 3, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 0), align 2
  store double 0.000000e+00, double* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 1, i32 2), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 1, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 1, i32 0), align 8
  store double 4.000000e+00, double* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 2), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%union.object* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 1, i64 0) to i8*), i8* bitcast (%struct.sphere* @s to i8*), i64 26632, i32 8, i1 false)
  store i32 1, i32* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 0), align 4
  store i16 0, i16* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 1, i64 0, i32 0, i32 0, i32 2), align 2
  store i16 0, i16* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 1, i64 0, i32 0, i32 0, i32 4), align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i16, i16* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0, i32 2), align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store %struct.common* getelementptr inbounds (%struct.sphere, %struct.sphere* @s, i32 0, i32 0), %struct.common** %c, align 8
  store %struct.common* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 1, i64 0, i32 0, i32 0), %struct.common** %d, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.common*, %struct.common** %c, align 8
  %texture = getelementptr inbounds %struct.common, %struct.common* %3, i32 0, i32 3
  %arrayidx = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture, i32 0, i64 %idxprom
  store %struct.texture* %arrayidx, %struct.texture** %t, align 8
  %4 = load %struct.texture*, %struct.texture** %t, align 8
  %amount = getelementptr inbounds %struct.texture, %struct.texture* %4, i32 0, i32 19
  %5 = load double, double* %amount, align 8
  %cmp2 = fcmp ole double %5, 0.000000e+00
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load %struct.texture*, %struct.texture** %t, align 8
  %majtype = getelementptr inbounds %struct.texture, %struct.texture* %6, i32 0, i32 0
  %7 = load i32, i32* %majtype, align 4
  %cmp4 = icmp slt i32 %7, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.texture*, %struct.texture** %t, align 8
  %majtype6 = getelementptr inbounds %struct.texture, %struct.texture* %8, i32 0, i32 0
  %9 = load i32, i32* %majtype6, align 4
  %cmp7 = icmp eq i32 %9, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %10 = load %struct.texture*, %struct.texture** %t, align 8
  %type = getelementptr inbounds %struct.texture, %struct.texture* %10, i32 0, i32 1
  %11 = load i32, i32* %type, align 4
  %cmp10 = icmp eq i32 %11, 5
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  %12 = load %struct.texture*, %struct.texture** %t, align 8
  %phongcolor = getelementptr inbounds %struct.texture, %struct.texture* %12, i32 0, i32 17
  %13 = load %struct.texture*, %struct.texture** %t, align 8
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %13, i32 0, i32 3
  %14 = bitcast %struct._GimpVector4* %phongcolor to i8*
  %15 = bitcast %struct._GimpVector4* %color1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  %16 = load %struct.texture*, %struct.texture** %t, align 8
  %oscale = getelementptr inbounds %struct.texture, %struct.texture* %16, i32 0, i32 8
  %17 = load double, double* %oscale, align 8
  %div = fdiv double %17, 2.500000e+01
  %18 = load %struct.texture*, %struct.texture** %t, align 8
  %phongsize = getelementptr inbounds %struct.texture, %struct.texture* %18, i32 0, i32 18
  store double %div, double* %phongsize, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.9
  %19 = load %struct.common*, %struct.common** %d, align 8
  %numtexture = getelementptr inbounds %struct.common, %struct.common* %19, i32 0, i32 2
  %20 = load i16, i16* %numtexture, align 2
  %idxprom14 = sext i16 %20 to i64
  %21 = load %struct.common*, %struct.common** %d, align 8
  %texture15 = getelementptr inbounds %struct.common, %struct.common* %21, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture15, i32 0, i64 %idxprom14
  %22 = load %struct.texture*, %struct.texture** %t, align 8
  %23 = bitcast %struct.texture* %arrayidx16 to i8*
  %24 = bitcast %struct.texture* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 664, i32 8, i1 false)
  %25 = load %struct.common*, %struct.common** %d, align 8
  %numtexture17 = getelementptr inbounds %struct.common, %struct.common* %25, i32 0, i32 2
  %26 = load i16, i16* %numtexture17, align 2
  %idxprom18 = sext i16 %26 to i64
  %27 = load %struct.common*, %struct.common** %d, align 8
  %texture19 = getelementptr inbounds %struct.common, %struct.common* %27, i32 0, i32 3
  %arrayidx20 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture19, i32 0, i64 %idxprom18
  %scale = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx20, i32 0, i32 9
  %28 = load %struct.common*, %struct.common** %d, align 8
  %numtexture21 = getelementptr inbounds %struct.common, %struct.common* %28, i32 0, i32 2
  %29 = load i16, i16* %numtexture21, align 2
  %idxprom22 = sext i16 %29 to i64
  %30 = load %struct.common*, %struct.common** %d, align 8
  %texture23 = getelementptr inbounds %struct.common, %struct.common* %30, i32 0, i32 3
  %arrayidx24 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture23, i32 0, i64 %idxprom22
  %oscale25 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx24, i32 0, i32 8
  %31 = load double, double* %oscale25, align 8
  call void @vmul(%struct._GimpVector4* %scale, double %31)
  %32 = load %struct.common*, %struct.common** %d, align 8
  %numtexture26 = getelementptr inbounds %struct.common, %struct.common* %32, i32 0, i32 2
  %33 = load i16, i16* %numtexture26, align 2
  %inc = add i16 %33, 1
  store i16 %inc, i16* %numtexture26, align 2
  br label %if.end.58

if.else:                                          ; preds = %if.end
  %34 = load %struct.texture*, %struct.texture** %t, align 8
  %majtype27 = getelementptr inbounds %struct.texture, %struct.texture* %34, i32 0, i32 0
  %35 = load i32, i32* %majtype27, align 4
  %cmp28 = icmp eq i32 %35, 1
  br i1 %cmp28, label %if.then.30, label %if.else.45

if.then.30:                                       ; preds = %if.else
  %36 = load %struct.common*, %struct.common** %d, align 8
  %numnormal = getelementptr inbounds %struct.common, %struct.common* %36, i32 0, i32 4
  %37 = load i16, i16* %numnormal, align 2
  %idxprom31 = sext i16 %37 to i64
  %38 = load %struct.common*, %struct.common** %d, align 8
  %normal = getelementptr inbounds %struct.common, %struct.common* %38, i32 0, i32 5
  %arrayidx32 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %normal, i32 0, i64 %idxprom31
  %39 = load %struct.texture*, %struct.texture** %t, align 8
  %40 = bitcast %struct.texture* %arrayidx32 to i8*
  %41 = bitcast %struct.texture* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 664, i32 8, i1 false)
  %42 = load %struct.common*, %struct.common** %d, align 8
  %numnormal33 = getelementptr inbounds %struct.common, %struct.common* %42, i32 0, i32 4
  %43 = load i16, i16* %numnormal33, align 2
  %idxprom34 = sext i16 %43 to i64
  %44 = load %struct.common*, %struct.common** %d, align 8
  %normal35 = getelementptr inbounds %struct.common, %struct.common* %44, i32 0, i32 5
  %arrayidx36 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %normal35, i32 0, i64 %idxprom34
  %scale37 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx36, i32 0, i32 9
  %45 = load %struct.common*, %struct.common** %d, align 8
  %numnormal38 = getelementptr inbounds %struct.common, %struct.common* %45, i32 0, i32 4
  %46 = load i16, i16* %numnormal38, align 2
  %idxprom39 = sext i16 %46 to i64
  %47 = load %struct.common*, %struct.common** %d, align 8
  %texture40 = getelementptr inbounds %struct.common, %struct.common* %47, i32 0, i32 3
  %arrayidx41 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture40, i32 0, i64 %idxprom39
  %oscale42 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx41, i32 0, i32 8
  %48 = load double, double* %oscale42, align 8
  call void @vmul(%struct._GimpVector4* %scale37, double %48)
  %49 = load %struct.common*, %struct.common** %d, align 8
  %numnormal43 = getelementptr inbounds %struct.common, %struct.common* %49, i32 0, i32 4
  %50 = load i16, i16* %numnormal43, align 2
  %inc44 = add i16 %50, 1
  store i16 %inc44, i16* %numnormal43, align 2
  br label %if.end.57

if.else.45:                                       ; preds = %if.else
  %51 = load %struct.texture*, %struct.texture** %t, align 8
  %majtype46 = getelementptr inbounds %struct.texture, %struct.texture* %51, i32 0, i32 0
  %52 = load i32, i32* %majtype46, align 4
  %cmp47 = icmp eq i32 %52, 2
  br i1 %cmp47, label %if.then.49, label %if.end.56

if.then.49:                                       ; preds = %if.else.45
  %a = getelementptr inbounds %struct.light, %struct.light* %l, i32 0, i32 2
  %53 = load %struct.texture*, %struct.texture** %t, align 8
  %translate = getelementptr inbounds %struct.texture, %struct.texture* %53, i32 0, i32 10
  call void @vcopy(%struct._GimpVector4* %a, %struct._GimpVector4* %translate)
  %color = getelementptr inbounds %struct.light, %struct.light* %l, i32 0, i32 1
  %54 = load %struct.texture*, %struct.texture** %t, align 8
  %color150 = getelementptr inbounds %struct.texture, %struct.texture* %54, i32 0, i32 3
  call void @vcopy(%struct._GimpVector4* %color, %struct._GimpVector4* %color150)
  %color51 = getelementptr inbounds %struct.light, %struct.light* %l, i32 0, i32 1
  %55 = load %struct.texture*, %struct.texture** %t, align 8
  %amount52 = getelementptr inbounds %struct.texture, %struct.texture* %55, i32 0, i32 19
  %56 = load double, double* %amount52, align 8
  call void @vmul(%struct._GimpVector4* %color51, double %56)
  %57 = load i32, i32* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 2), align 4
  %idxprom53 = sext i32 %57 to i64
  %arrayidx54 = getelementptr inbounds [5 x %struct.light], [5 x %struct.light]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 3), i32 0, i64 %idxprom53
  %58 = bitcast %struct.light* %arrayidx54 to i8*
  %59 = bitcast %struct.light* %l to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 26656, i32 8, i1 false)
  %60 = load i32, i32* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 2), align 4
  %inc55 = add nsw i32 %60, 1
  store i32 %inc55, i32* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 2), align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.49, %if.else.45
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.30
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.58, %if.then
  %61 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %61, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i16 5, i16* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 7), align 2
  %62 = load i64, i64* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 6), align 8
  %or = or i64 %62, 1
  store i64 %or, i64* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 6), align 8
  store double 4.000000e+01, double* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 8), align 8
  ret void
}

declare void @cairo_surface_flush(%struct._cairo_surface*) #1

; Function Attrs: nounwind uwtable
define internal i32 @traceray(%struct.ray* %r, %struct._GimpVector4* %col, i32 %level, double %imp) #0 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca %struct.ray*, align 8
  %col.addr = alloca %struct._GimpVector4*, align 8
  %level.addr = alloca i32, align 4
  %imp.addr = alloca double, align 8
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca double, align 8
  %min = alloca double, align 8
  %obj = alloca %struct.common*, align 8
  %bobj = alloca %struct.common*, align 8
  %hits = alloca i32, align 4
  %p = alloca %struct._GimpVector4, align 8
  %ambient = alloca double, align 8
  %lcol = alloca %struct._GimpVector4, align 8
  %refcol = alloca %struct._GimpVector4, align 8
  %norm = alloca %struct._GimpVector4, align 8
  %ocol = alloca %struct._GimpVector4, align 8
  %ref = alloca %struct.ray, align 8
  %refcol150 = alloca %struct._GimpVector4, align 8
  %ref151 = alloca %struct.ray, align 8
  %refcol180 = alloca %struct._GimpVector4, align 8
  %ref181 = alloca %struct.ray, align 8
  %smcol = alloca %struct._GimpVector4, align 8
  %raydir = alloca %struct._GimpVector4, align 8
  %norm214 = alloca %struct._GimpVector4, align 8
  %tran = alloca double, align 8
  %ref215 = alloca %struct.ray, align 8
  %refcol245 = alloca %struct._GimpVector4, align 8
  %norm246 = alloca %struct._GimpVector4, align 8
  %tmpv = alloca %struct._GimpVector4, align 8
  %ref247 = alloca %struct.ray, align 8
  %c1 = alloca double, align 8
  %c2 = alloca double, align 8
  %n1 = alloca double, align 8
  %n2 = alloca double, align 8
  %n = alloca double, align 8
  %tmpcol = alloca %struct._GimpVector4, align 8
  %v = alloca double, align 8
  %pt = alloca [3 x double], align 16
  store %struct.ray* %r, %struct.ray** %r.addr, align 8
  store %struct._GimpVector4* %col, %struct._GimpVector4** %col.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store double %imp, double* %imp.addr, align 8
  store i32 -1, i32* %b, align 4
  store double -1.000000e+00, double* %t, align 8
  store double 0.000000e+00, double* %min, align 8
  store %struct.common* null, %struct.common** %bobj, align 8
  store i32 0, i32* %hits, align 4
  %0 = load i32, i32* %level.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load double, double* %imp.addr, align 8
  %cmp1 = fcmp olt double %1, 5.000000e-03
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vset(%struct._GimpVector4* %2, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 0), align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [5 x %union.object], [5 x %union.object]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 1), i32 0, i64 %idxprom
  %6 = bitcast %union.object* %arrayidx to %struct.common*
  store %struct.common* %6, %struct.common** %obj, align 8
  %7 = load %struct.common*, %struct.common** %obj, align 8
  %type = getelementptr inbounds %struct.common, %struct.common* %7, i32 0, i32 0
  %8 = load i16, i16* %type, align 2
  %conv = sext i16 %8 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.9
    i32 3, label %sw.bb.13
    i32 4, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %for.body
  %9 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds [5 x %union.object], [5 x %union.object]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 1), i32 0, i64 %idxprom3
  %11 = bitcast %union.object* %arrayidx4 to %struct.triangle*
  %call = call double @checktri(%struct.ray* %9, %struct.triangle* %11)
  store double %call, double* %t, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body
  %12 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [5 x %union.object], [5 x %union.object]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 1), i32 0, i64 %idxprom6
  %14 = bitcast %union.object* %arrayidx7 to %struct.disc*
  %call8 = call double @checkdisc(%struct.ray* %12, %struct.disc* %14)
  store double %call8, double* %t, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %for.body
  %15 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [5 x %union.object], [5 x %union.object]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 1), i32 0, i64 %idxprom10
  %17 = bitcast %union.object* %arrayidx11 to %struct.plane*
  %call12 = call double @checkplane(%struct.ray* %15, %struct.plane* %17)
  store double %call12, double* %t, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.body
  %18 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [5 x %union.object], [5 x %union.object]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 1), i32 0, i64 %idxprom14
  %20 = bitcast %union.object* %arrayidx15 to %struct.sphere*
  %call16 = call double @checksphere(%struct.ray* %18, %struct.sphere* %20)
  store double %call16, double* %t, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %for.body
  %21 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [5 x %union.object], [5 x %union.object]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 1), i32 0, i64 %idxprom18
  %23 = bitcast %union.object* %arrayidx19 to %struct.cylinder*
  %call20 = call double @checkcylinder(%struct.ray* %21, %struct.cylinder* %23)
  store double %call20, double* %t, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.17, %sw.bb.13, %sw.bb.9, %sw.bb.5, %sw.bb
  %24 = load double, double* %t, align 8
  %cmp21 = fcmp ole double %24, 0.000000e+00
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %sw.epilog
  br label %for.inc

if.end.24:                                        ; preds = %sw.epilog
  %25 = load %struct.common*, %struct.common** %obj, align 8
  %flags = getelementptr inbounds %struct.common, %struct.common* %25, i32 0, i32 1
  %26 = load i64, i64* %flags, align 8
  %and = and i64 %26, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.end.28, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.24
  %27 = load i32, i32* %level.addr, align 4
  %cmp25 = icmp eq i32 %27, -1
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  %28 = load i32, i32* %i, align 4
  %add = add nsw i32 %28, 1
  store i32 %add, i32* %retval
  br label %return

if.end.28:                                        ; preds = %land.lhs.true, %if.end.24
  %29 = load i32, i32* %hits, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %hits, align 4
  %30 = load %struct.common*, %struct.common** %bobj, align 8
  %tobool29 = icmp ne %struct.common* %30, null
  br i1 %tobool29, label %lor.lhs.false.30, label %if.then.33

lor.lhs.false.30:                                 ; preds = %if.end.28
  %31 = load double, double* %t, align 8
  %32 = load double, double* %min, align 8
  %cmp31 = fcmp olt double %31, %32
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false.30, %if.end.28
  %33 = load double, double* %t, align 8
  store double %33, double* %min, align 8
  %34 = load i32, i32* %i, align 4
  store i32 %34, i32* %b, align 4
  %35 = load %struct.common*, %struct.common** %obj, align 8
  store %struct.common* %35, %struct.common** %bobj, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %lor.lhs.false.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.34, %if.then.23
  %36 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %36, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %level.addr, align 4
  %cmp36 = icmp eq i32 %37, -1
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %for.end
  %38 = load %struct.common*, %struct.common** %bobj, align 8
  %tobool40 = icmp ne %struct.common* %38, null
  br i1 %tobool40, label %if.then.41, label %if.else.319

if.then.41:                                       ; preds = %if.end.39
  %39 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v1 = getelementptr inbounds %struct.ray, %struct.ray* %39, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v1, i32 0, i32 0
  %40 = load double, double* %x, align 8
  %41 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v2 = getelementptr inbounds %struct.ray, %struct.ray* %41, i32 0, i32 1
  %x42 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v2, i32 0, i32 0
  %42 = load double, double* %x42, align 8
  %43 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v143 = getelementptr inbounds %struct.ray, %struct.ray* %43, i32 0, i32 0
  %x44 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v143, i32 0, i32 0
  %44 = load double, double* %x44, align 8
  %sub = fsub double %42, %44
  %45 = load double, double* %min, align 8
  %mul = fmul double %sub, %45
  %add45 = fadd double %40, %mul
  %x46 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  store double %add45, double* %x46, align 8
  %46 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v147 = getelementptr inbounds %struct.ray, %struct.ray* %46, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v147, i32 0, i32 1
  %47 = load double, double* %y, align 8
  %48 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v248 = getelementptr inbounds %struct.ray, %struct.ray* %48, i32 0, i32 1
  %y49 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v248, i32 0, i32 1
  %49 = load double, double* %y49, align 8
  %50 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v150 = getelementptr inbounds %struct.ray, %struct.ray* %50, i32 0, i32 0
  %y51 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v150, i32 0, i32 1
  %51 = load double, double* %y51, align 8
  %sub52 = fsub double %49, %51
  %52 = load double, double* %min, align 8
  %mul53 = fmul double %sub52, %52
  %add54 = fadd double %47, %mul53
  %y55 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  store double %add54, double* %y55, align 8
  %53 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v156 = getelementptr inbounds %struct.ray, %struct.ray* %53, i32 0, i32 0
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v156, i32 0, i32 2
  %54 = load double, double* %z, align 8
  %55 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v257 = getelementptr inbounds %struct.ray, %struct.ray* %55, i32 0, i32 1
  %z58 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v257, i32 0, i32 2
  %56 = load double, double* %z58, align 8
  %57 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v159 = getelementptr inbounds %struct.ray, %struct.ray* %57, i32 0, i32 0
  %z60 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v159, i32 0, i32 2
  %58 = load double, double* %z60, align 8
  %sub61 = fsub double %56, %58
  %59 = load double, double* %min, align 8
  %mul62 = fmul double %sub61, %59
  %add63 = fadd double %54, %mul62
  %z64 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 2
  store double %add63, double* %z64, align 8
  %60 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %61 = load %struct.common*, %struct.common** %bobj, align 8
  call void @calclight(%struct._GimpVector4* %60, %struct._GimpVector4* %p, %struct.common* %61)
  %62 = load i64, i64* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 6), align 8
  %and65 = and i64 %62, 1
  %tobool66 = icmp ne i64 %and65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.71

if.then.67:                                       ; preds = %if.then.41
  %63 = load double, double* %min, align 8
  %sub68 = fsub double -0.000000e+00, %63
  %64 = load double, double* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 8), align 8
  %div = fdiv double %sub68, %64
  %call69 = call double @exp(double %div) #4
  %mul70 = fmul double 3.000000e-01, %call69
  store double %mul70, double* %ambient, align 8
  %65 = load %struct.common*, %struct.common** %bobj, align 8
  call void @objcolor(%struct._GimpVector4* %lcol, %struct._GimpVector4* %p, %struct.common* %65)
  %66 = load double, double* %ambient, align 8
  call void @vmul(%struct._GimpVector4* %lcol, double %66)
  %67 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vadd(%struct._GimpVector4* %67, %struct._GimpVector4* %lcol)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.67, %if.then.41
  store i32 0, i32* %i, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.316, %if.end.71
  %68 = load i32, i32* %i, align 4
  %69 = load %struct.common*, %struct.common** %bobj, align 8
  %numtexture = getelementptr inbounds %struct.common, %struct.common* %69, i32 0, i32 2
  %70 = load i16, i16* %numtexture, align 2
  %conv73 = sext i16 %70 to i32
  %cmp74 = icmp slt i32 %68, %conv73
  br i1 %cmp74, label %for.body.76, label %for.end.318

for.body.76:                                      ; preds = %for.cond.72
  %71 = load i16, i16* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 7), align 2
  %conv77 = sext i16 %71 to i32
  %cmp78 = icmp sge i32 %conv77, 4
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.141

land.lhs.true.80:                                 ; preds = %for.body.76
  %72 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %72 to i64
  %73 = load %struct.common*, %struct.common** %bobj, align 8
  %texture = getelementptr inbounds %struct.common, %struct.common* %73, i32 0, i32 3
  %arrayidx82 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture, i32 0, i64 %idxprom81
  %type83 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx82, i32 0, i32 1
  %74 = load i32, i32* %type83, align 4
  %cmp84 = icmp eq i32 %74, 6
  br i1 %cmp84, label %if.then.93, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %land.lhs.true.80
  %75 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %75 to i64
  %76 = load %struct.common*, %struct.common** %bobj, align 8
  %texture88 = getelementptr inbounds %struct.common, %struct.common* %76, i32 0, i32 3
  %arrayidx89 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture88, i32 0, i64 %idxprom87
  %type90 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx89, i32 0, i32 1
  %77 = load i32, i32* %type90, align 4
  %cmp91 = icmp eq i32 %77, 5
  br i1 %cmp91, label %if.then.93, label %if.end.141

if.then.93:                                       ; preds = %lor.lhs.false.86, %land.lhs.true.80
  %78 = load %struct.common*, %struct.common** %bobj, align 8
  call void @objcolor(%struct._GimpVector4* %ocol, %struct._GimpVector4* %p, %struct.common* %78)
  %v194 = getelementptr inbounds %struct.ray, %struct.ray* %ref, i32 0, i32 0
  call void @vcopy(%struct._GimpVector4* %v194, %struct._GimpVector4* %p)
  %v295 = getelementptr inbounds %struct.ray, %struct.ray* %ref, i32 0, i32 1
  %79 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v196 = getelementptr inbounds %struct.ray, %struct.ray* %79, i32 0, i32 0
  call void @vcopy(%struct._GimpVector4* %v295, %struct._GimpVector4* %v196)
  %80 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %inside = getelementptr inbounds %struct.ray, %struct.ray* %80, i32 0, i32 2
  %81 = load i16, i16* %inside, align 2
  %inside97 = getelementptr inbounds %struct.ray, %struct.ray* %ref, i32 0, i32 2
  store i16 %81, i16* %inside97, align 2
  %82 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %ior = getelementptr inbounds %struct.ray, %struct.ray* %82, i32 0, i32 3
  %83 = load double, double* %ior, align 8
  %ior98 = getelementptr inbounds %struct.ray, %struct.ray* %ref, i32 0, i32 3
  store double %83, double* %ior98, align 8
  %v199 = getelementptr inbounds %struct.ray, %struct.ray* %ref, i32 0, i32 0
  %v1100 = getelementptr inbounds %struct.ray, %struct.ray* %ref, i32 0, i32 0
  %v2101 = getelementptr inbounds %struct.ray, %struct.ray* %ref, i32 0, i32 1
  call void @vmix(%struct._GimpVector4* %v199, %struct._GimpVector4* %v1100, %struct._GimpVector4* %v2101, double 9.999000e-01)
  %v2102 = getelementptr inbounds %struct.ray, %struct.ray* %ref, i32 0, i32 1
  call void @vsub(%struct._GimpVector4* %v2102, %struct._GimpVector4* %p)
  %84 = load %struct.common*, %struct.common** %bobj, align 8
  call void @objnormal(%struct._GimpVector4* %norm, %struct.common* %84, %struct._GimpVector4* %p)
  call void @vnorm(%struct._GimpVector4* %norm, double 1.000000e+00)
  %v2103 = getelementptr inbounds %struct.ray, %struct.ray* %ref, i32 0, i32 1
  call void @vrotate(%struct._GimpVector4* %norm, double 1.800000e+02, %struct._GimpVector4* %v2103)
  call void @vmul(%struct._GimpVector4* %norm, double -1.000000e-04)
  %v1104 = getelementptr inbounds %struct.ray, %struct.ray* %ref, i32 0, i32 0
  call void @vadd(%struct._GimpVector4* %v1104, %struct._GimpVector4* %norm)
  %v2105 = getelementptr inbounds %struct.ray, %struct.ray* %ref, i32 0, i32 1
  call void @vnorm(%struct._GimpVector4* %v2105, double 1.000000e+00)
  %v2106 = getelementptr inbounds %struct.ray, %struct.ray* %ref, i32 0, i32 1
  call void @vadd(%struct._GimpVector4* %v2106, %struct._GimpVector4* %p)
  %85 = load i16, i16* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 7), align 2
  %conv107 = sext i16 %85 to i32
  %cmp108 = icmp sge i32 %conv107, 5
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.130

land.lhs.true.110:                                ; preds = %if.then.93
  %86 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %86 to i64
  %87 = load %struct.common*, %struct.common** %bobj, align 8
  %texture112 = getelementptr inbounds %struct.common, %struct.common* %87, i32 0, i32 3
  %arrayidx113 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture112, i32 0, i64 %idxprom111
  %type114 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx113, i32 0, i32 1
  %88 = load i32, i32* %type114, align 4
  %cmp115 = icmp eq i32 %88, 6
  br i1 %cmp115, label %if.then.117, label %if.end.130

if.then.117:                                      ; preds = %land.lhs.true.110
  %89 = load i32, i32* %level.addr, align 4
  %sub118 = sub nsw i32 %89, 1
  %90 = load double, double* %imp.addr, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %91 to i64
  %92 = load %struct.common*, %struct.common** %bobj, align 8
  %texture120 = getelementptr inbounds %struct.common, %struct.common* %92, i32 0, i32 3
  %arrayidx121 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture120, i32 0, i64 %idxprom119
  %reflection = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx121, i32 0, i32 13
  %call122 = call double @vmax(%struct._GimpVector4* %reflection)
  %mul123 = fmul double %90, %call122
  %call124 = call i32 @traceray(%struct.ray* %ref, %struct._GimpVector4* %refcol, i32 %sub118, double %mul123)
  %93 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %93 to i64
  %94 = load %struct.common*, %struct.common** %bobj, align 8
  %texture126 = getelementptr inbounds %struct.common, %struct.common* %94, i32 0, i32 3
  %arrayidx127 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture126, i32 0, i64 %idxprom125
  %reflection128 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx127, i32 0, i32 13
  call void @vvmul(%struct._GimpVector4* %refcol, %struct._GimpVector4* %reflection128)
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %ocol, i32 0, i32 3
  %95 = load double, double* %w, align 8
  %w129 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %refcol, i32 0, i32 3
  store double %95, double* %w129, align 8
  %96 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vadd(%struct._GimpVector4* %96, %struct._GimpVector4* %refcol)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.117, %land.lhs.true.110, %if.then.93
  %97 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %97 to i64
  %98 = load %struct.common*, %struct.common** %bobj, align 8
  %texture132 = getelementptr inbounds %struct.common, %struct.common* %98, i32 0, i32 3
  %arrayidx133 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture132, i32 0, i64 %idxprom131
  %type134 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx133, i32 0, i32 1
  %99 = load i32, i32* %type134, align 4
  %cmp135 = icmp eq i32 %99, 5
  br i1 %cmp135, label %if.then.137, label %if.end.140

if.then.137:                                      ; preds = %if.end.130
  call void @vcset(%struct._GimpVector4* %refcol, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %100 = load %struct.common*, %struct.common** %bobj, align 8
  call void @calcphong(%struct.common* %100, %struct.ray* %ref, %struct._GimpVector4* %refcol)
  %w138 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %ocol, i32 0, i32 3
  %101 = load double, double* %w138, align 8
  %w139 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %refcol, i32 0, i32 3
  store double %101, double* %w139, align 8
  %102 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vadd(%struct._GimpVector4* %102, %struct._GimpVector4* %refcol)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.137, %if.end.130
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %lor.lhs.false.86, %for.body.76
  %103 = load i16, i16* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 7), align 2
  %conv142 = sext i16 %103 to i32
  %cmp143 = icmp sge i32 %conv142, 5
  br i1 %cmp143, label %land.lhs.true.145, label %if.end.168

land.lhs.true.145:                                ; preds = %if.end.141
  %104 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %w146 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %104, i32 0, i32 3
  %105 = load double, double* %w146, align 8
  %cmp147 = fcmp olt double %105, 1.000000e+00
  br i1 %cmp147, label %if.then.149, label %if.end.168

if.then.149:                                      ; preds = %land.lhs.true.145
  %v1152 = getelementptr inbounds %struct.ray, %struct.ray* %ref151, i32 0, i32 0
  call void @vcopy(%struct._GimpVector4* %v1152, %struct._GimpVector4* %p)
  %v2153 = getelementptr inbounds %struct.ray, %struct.ray* %ref151, i32 0, i32 1
  call void @vcopy(%struct._GimpVector4* %v2153, %struct._GimpVector4* %p)
  %v2154 = getelementptr inbounds %struct.ray, %struct.ray* %ref151, i32 0, i32 1
  %106 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v1155 = getelementptr inbounds %struct.ray, %struct.ray* %106, i32 0, i32 0
  call void @vsub(%struct._GimpVector4* %v2154, %struct._GimpVector4* %v1155)
  %v2156 = getelementptr inbounds %struct.ray, %struct.ray* %ref151, i32 0, i32 1
  call void @vnorm(%struct._GimpVector4* %v2156, double 1.000000e+00)
  %v2157 = getelementptr inbounds %struct.ray, %struct.ray* %ref151, i32 0, i32 1
  call void @vadd(%struct._GimpVector4* %v2157, %struct._GimpVector4* %p)
  %v1158 = getelementptr inbounds %struct.ray, %struct.ray* %ref151, i32 0, i32 0
  %v1159 = getelementptr inbounds %struct.ray, %struct.ray* %ref151, i32 0, i32 0
  %v2160 = getelementptr inbounds %struct.ray, %struct.ray* %ref151, i32 0, i32 1
  call void @vmix(%struct._GimpVector4* %v1158, %struct._GimpVector4* %v1159, %struct._GimpVector4* %v2160, double 9.990000e-01)
  %107 = load i32, i32* %level.addr, align 4
  %sub161 = sub nsw i32 %107, 1
  %108 = load double, double* %imp.addr, align 8
  %109 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %w162 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %109, i32 0, i32 3
  %110 = load double, double* %w162, align 8
  %sub163 = fsub double 1.000000e+00, %110
  %mul164 = fmul double %108, %sub163
  %call165 = call i32 @traceray(%struct.ray* %ref151, %struct._GimpVector4* %refcol150, i32 %sub161, double %mul164)
  %111 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %w166 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %111, i32 0, i32 3
  %112 = load double, double* %w166, align 8
  %sub167 = fsub double 1.000000e+00, %112
  call void @vmul(%struct._GimpVector4* %refcol150, double %sub167)
  %113 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vadd(%struct._GimpVector4* %113, %struct._GimpVector4* %refcol150)
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.149, %land.lhs.true.145, %if.end.141
  %114 = load i16, i16* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 7), align 2
  %conv169 = sext i16 %114 to i32
  %cmp170 = icmp sge i32 %conv169, 5
  br i1 %cmp170, label %land.lhs.true.172, label %if.end.202

land.lhs.true.172:                                ; preds = %if.end.168
  %115 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %115 to i64
  %116 = load %struct.common*, %struct.common** %bobj, align 8
  %texture174 = getelementptr inbounds %struct.common, %struct.common* %116, i32 0, i32 3
  %arrayidx175 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture174, i32 0, i64 %idxprom173
  %type176 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx175, i32 0, i32 1
  %117 = load i32, i32* %type176, align 4
  %cmp177 = icmp eq i32 %117, 10
  br i1 %cmp177, label %if.then.179, label %if.end.202

if.then.179:                                      ; preds = %land.lhs.true.172
  %v1182 = getelementptr inbounds %struct.ray, %struct.ray* %ref181, i32 0, i32 0
  call void @vcopy(%struct._GimpVector4* %v1182, %struct._GimpVector4* %p)
  %v2183 = getelementptr inbounds %struct.ray, %struct.ray* %ref181, i32 0, i32 1
  call void @vcopy(%struct._GimpVector4* %v2183, %struct._GimpVector4* %p)
  %v2184 = getelementptr inbounds %struct.ray, %struct.ray* %ref181, i32 0, i32 1
  %118 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v1185 = getelementptr inbounds %struct.ray, %struct.ray* %118, i32 0, i32 0
  call void @vsub(%struct._GimpVector4* %v2184, %struct._GimpVector4* %v1185)
  %v2186 = getelementptr inbounds %struct.ray, %struct.ray* %ref181, i32 0, i32 1
  call void @vnorm(%struct._GimpVector4* %v2186, double 1.000000e+00)
  %v2187 = getelementptr inbounds %struct.ray, %struct.ray* %ref181, i32 0, i32 1
  call void @vadd(%struct._GimpVector4* %v2187, %struct._GimpVector4* %p)
  %v1188 = getelementptr inbounds %struct.ray, %struct.ray* %ref181, i32 0, i32 0
  %v1189 = getelementptr inbounds %struct.ray, %struct.ray* %ref181, i32 0, i32 0
  %v2190 = getelementptr inbounds %struct.ray, %struct.ray* %ref181, i32 0, i32 1
  call void @vmix(%struct._GimpVector4* %v1188, %struct._GimpVector4* %v1189, %struct._GimpVector4* %v2190, double 9.990000e-01)
  %119 = load i32, i32* %level.addr, align 4
  %sub191 = sub nsw i32 %119, 1
  %120 = load double, double* %imp.addr, align 8
  %121 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %121 to i64
  %122 = load %struct.common*, %struct.common** %bobj, align 8
  %texture193 = getelementptr inbounds %struct.common, %struct.common* %122, i32 0, i32 3
  %arrayidx194 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture193, i32 0, i64 %idxprom192
  %transparent = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx194, i32 0, i32 15
  %call195 = call double @vmax(%struct._GimpVector4* %transparent)
  %mul196 = fmul double %120, %call195
  %call197 = call i32 @traceray(%struct.ray* %ref181, %struct._GimpVector4* %refcol180, i32 %sub191, double %mul196)
  %123 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %123 to i64
  %124 = load %struct.common*, %struct.common** %bobj, align 8
  %texture199 = getelementptr inbounds %struct.common, %struct.common* %124, i32 0, i32 3
  %arrayidx200 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture199, i32 0, i64 %idxprom198
  %transparent201 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx200, i32 0, i32 15
  call void @vvmul(%struct._GimpVector4* %refcol180, %struct._GimpVector4* %transparent201)
  %125 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vadd(%struct._GimpVector4* %125, %struct._GimpVector4* %refcol180)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.179, %land.lhs.true.172, %if.end.168
  %126 = load i16, i16* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 7), align 2
  %conv203 = sext i16 %126 to i32
  %cmp204 = icmp sge i32 %conv203, 5
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.233

land.lhs.true.206:                                ; preds = %if.end.202
  %127 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %127 to i64
  %128 = load %struct.common*, %struct.common** %bobj, align 8
  %texture208 = getelementptr inbounds %struct.common, %struct.common* %128, i32 0, i32 3
  %arrayidx209 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture208, i32 0, i64 %idxprom207
  %type210 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx209, i32 0, i32 1
  %129 = load i32, i32* %type210, align 4
  %cmp211 = icmp eq i32 %129, 13
  br i1 %cmp211, label %if.then.213, label %if.end.233

if.then.213:                                      ; preds = %land.lhs.true.206
  %v1216 = getelementptr inbounds %struct.ray, %struct.ray* %ref215, i32 0, i32 0
  call void @vcopy(%struct._GimpVector4* %v1216, %struct._GimpVector4* %p)
  %v2217 = getelementptr inbounds %struct.ray, %struct.ray* %ref215, i32 0, i32 1
  call void @vcopy(%struct._GimpVector4* %v2217, %struct._GimpVector4* %p)
  %v2218 = getelementptr inbounds %struct.ray, %struct.ray* %ref215, i32 0, i32 1
  %130 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v1219 = getelementptr inbounds %struct.ray, %struct.ray* %130, i32 0, i32 0
  call void @vsub(%struct._GimpVector4* %v2218, %struct._GimpVector4* %v1219)
  %v2220 = getelementptr inbounds %struct.ray, %struct.ray* %ref215, i32 0, i32 1
  call void @vnorm(%struct._GimpVector4* %v2220, double 1.000000e+00)
  %v2221 = getelementptr inbounds %struct.ray, %struct.ray* %ref215, i32 0, i32 1
  call void @vadd(%struct._GimpVector4* %v2221, %struct._GimpVector4* %p)
  %131 = load %struct.common*, %struct.common** %bobj, align 8
  call void @objnormal(%struct._GimpVector4* %norm214, %struct.common* %131, %struct._GimpVector4* %p)
  %132 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v2222 = getelementptr inbounds %struct.ray, %struct.ray* %132, i32 0, i32 1
  call void @vcopy(%struct._GimpVector4* %raydir, %struct._GimpVector4* %v2222)
  %133 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v1223 = getelementptr inbounds %struct.ray, %struct.ray* %133, i32 0, i32 0
  call void @vsub(%struct._GimpVector4* %raydir, %struct._GimpVector4* %v1223)
  call void @vnorm(%struct._GimpVector4* %raydir, double 1.000000e+00)
  %call224 = call double @vdot(%struct._GimpVector4* %norm214, %struct._GimpVector4* %raydir)
  store double %call224, double* %tran, align 8
  %134 = load double, double* %tran, align 8
  %cmp225 = fcmp olt double %134, 0.000000e+00
  br i1 %cmp225, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %if.then.213
  br label %for.inc.316

if.end.228:                                       ; preds = %if.then.213
  %135 = load double, double* %tran, align 8
  %136 = load double, double* %tran, align 8
  %mul229 = fmul double %136, %135
  store double %mul229, double* %tran, align 8
  %137 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %137 to i64
  %138 = load %struct.common*, %struct.common** %bobj, align 8
  %texture231 = getelementptr inbounds %struct.common, %struct.common* %138, i32 0, i32 3
  %arrayidx232 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture231, i32 0, i64 %idxprom230
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx232, i32 0, i32 3
  call void @vcopy(%struct._GimpVector4* %smcol, %struct._GimpVector4* %color1)
  %139 = load double, double* %tran, align 8
  call void @vmul(%struct._GimpVector4* %smcol, double %139)
  %140 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vadd(%struct._GimpVector4* %140, %struct._GimpVector4* %smcol)
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.228, %land.lhs.true.206, %if.end.202
  %141 = load i16, i16* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 7), align 2
  %conv234 = sext i16 %141 to i32
  %cmp235 = icmp sge i32 %conv234, 5
  br i1 %cmp235, label %land.lhs.true.237, label %if.end.315

land.lhs.true.237:                                ; preds = %if.end.233
  %142 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %142 to i64
  %143 = load %struct.common*, %struct.common** %bobj, align 8
  %texture239 = getelementptr inbounds %struct.common, %struct.common* %143, i32 0, i32 3
  %arrayidx240 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture239, i32 0, i64 %idxprom238
  %type241 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx240, i32 0, i32 1
  %144 = load i32, i32* %type241, align 4
  %cmp242 = icmp eq i32 %144, 7
  br i1 %cmp242, label %if.then.244, label %if.end.315

if.then.244:                                      ; preds = %land.lhs.true.237
  %v1248 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 0
  call void @vcopy(%struct._GimpVector4* %v1248, %struct._GimpVector4* %p)
  %v2249 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 1
  call void @vcopy(%struct._GimpVector4* %v2249, %struct._GimpVector4* %p)
  %v2250 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 1
  %145 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v1251 = getelementptr inbounds %struct.ray, %struct.ray* %145, i32 0, i32 0
  call void @vsub(%struct._GimpVector4* %v2250, %struct._GimpVector4* %v1251)
  %v2252 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 1
  %146 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v2253 = getelementptr inbounds %struct.ray, %struct.ray* %146, i32 0, i32 1
  call void @vadd(%struct._GimpVector4* %v2252, %struct._GimpVector4* %v2253)
  %v1254 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 0
  %v1255 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 0
  %v2256 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 1
  call void @vmix(%struct._GimpVector4* %v1254, %struct._GimpVector4* %v1255, %struct._GimpVector4* %v2256, double 9.990000e-01)
  %v2257 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 1
  call void @vsub(%struct._GimpVector4* %v2257, %struct._GimpVector4* %p)
  %147 = load %struct.common*, %struct.common** %bobj, align 8
  call void @objnormal(%struct._GimpVector4* %norm246, %struct.common* %147, %struct._GimpVector4* %p)
  %148 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %inside258 = getelementptr inbounds %struct.ray, %struct.ray* %148, i32 0, i32 2
  %149 = load i16, i16* %inside258, align 2
  %conv259 = sext i16 %149 to i32
  %150 = load i32, i32* %b, align 4
  %cmp260 = icmp eq i32 %conv259, %150
  br i1 %cmp260, label %if.then.262, label %if.else

if.then.262:                                      ; preds = %if.then.244
  %inside263 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 2
  store i16 -1, i16* %inside263, align 2
  %ior264 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 3
  store double 1.000000e+00, double* %ior264, align 8
  br label %if.end.272

if.else:                                          ; preds = %if.then.244
  %151 = load i32, i32* %b, align 4
  %conv265 = trunc i32 %151 to i16
  %inside266 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 2
  store i16 %conv265, i16* %inside266, align 2
  %152 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %152 to i64
  %153 = load %struct.common*, %struct.common** %bobj, align 8
  %texture268 = getelementptr inbounds %struct.common, %struct.common* %153, i32 0, i32 3
  %arrayidx269 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture268, i32 0, i64 %idxprom267
  %ior270 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx269, i32 0, i32 16
  %154 = load double, double* %ior270, align 8
  %ior271 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 3
  store double %154, double* %ior271, align 8
  br label %if.end.272

if.end.272:                                       ; preds = %if.else, %if.then.262
  %v2273 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 1
  %call274 = call double @vdot(%struct._GimpVector4* %norm246, %struct._GimpVector4* %v2273)
  store double %call274, double* %c1, align 8
  %inside275 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 2
  %155 = load i16, i16* %inside275, align 2
  %conv276 = sext i16 %155 to i32
  %cmp277 = icmp slt i32 %conv276, 0
  br i1 %cmp277, label %if.then.279, label %if.end.281

if.then.279:                                      ; preds = %if.end.272
  %156 = load double, double* %c1, align 8
  %sub280 = fsub double -0.000000e+00, %156
  store double %sub280, double* %c1, align 8
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.279, %if.end.272
  %157 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %ior282 = getelementptr inbounds %struct.ray, %struct.ray* %157, i32 0, i32 3
  %158 = load double, double* %ior282, align 8
  store double %158, double* %n1, align 8
  %ior283 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 3
  %159 = load double, double* %ior283, align 8
  store double %159, double* %n2, align 8
  %160 = load double, double* %n1, align 8
  %161 = load double, double* %n2, align 8
  %div284 = fdiv double %160, %161
  store double %div284, double* %n, align 8
  %162 = load double, double* %n, align 8
  %163 = load double, double* %n, align 8
  %mul285 = fmul double %162, %163
  %164 = load double, double* %c1, align 8
  %165 = load double, double* %c1, align 8
  %mul286 = fmul double %164, %165
  %sub287 = fsub double 1.000000e+00, %mul286
  %mul288 = fmul double %mul285, %sub287
  %sub289 = fsub double 1.000000e+00, %mul288
  store double %sub289, double* %c2, align 8
  %166 = load double, double* %c2, align 8
  %cmp290 = fcmp olt double %166, 0.000000e+00
  br i1 %cmp290, label %if.then.292, label %if.else.295

if.then.292:                                      ; preds = %if.end.281
  %167 = load double, double* %c2, align 8
  %sub293 = fsub double -0.000000e+00, %167
  %call294 = call double @sqrt(double %sub293) #4
  store double %call294, double* %c2, align 8
  br label %if.end.297

if.else.295:                                      ; preds = %if.end.281
  %168 = load double, double* %c2, align 8
  %call296 = call double @sqrt(double %168) #4
  store double %call296, double* %c2, align 8
  br label %if.end.297

if.end.297:                                       ; preds = %if.else.295, %if.then.292
  %v2298 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 1
  %169 = load double, double* %n, align 8
  call void @vmul(%struct._GimpVector4* %v2298, double %169)
  call void @vcopy(%struct._GimpVector4* %tmpv, %struct._GimpVector4* %norm246)
  %170 = load double, double* %n, align 8
  %171 = load double, double* %c1, align 8
  %mul299 = fmul double %170, %171
  %172 = load double, double* %c2, align 8
  %sub300 = fsub double %mul299, %172
  call void @vmul(%struct._GimpVector4* %tmpv, double %sub300)
  %v2301 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 1
  call void @vadd(%struct._GimpVector4* %v2301, %struct._GimpVector4* %tmpv)
  %v2302 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 1
  call void @vnorm(%struct._GimpVector4* %v2302, double 1.000000e+00)
  %v2303 = getelementptr inbounds %struct.ray, %struct.ray* %ref247, i32 0, i32 1
  call void @vadd(%struct._GimpVector4* %v2303, %struct._GimpVector4* %p)
  %173 = load i32, i32* %level.addr, align 4
  %sub304 = sub nsw i32 %173, 1
  %174 = load double, double* %imp.addr, align 8
  %175 = load i32, i32* %i, align 4
  %idxprom305 = sext i32 %175 to i64
  %176 = load %struct.common*, %struct.common** %bobj, align 8
  %texture306 = getelementptr inbounds %struct.common, %struct.common* %176, i32 0, i32 3
  %arrayidx307 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture306, i32 0, i64 %idxprom305
  %refraction = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx307, i32 0, i32 14
  %call308 = call double @vmax(%struct._GimpVector4* %refraction)
  %mul309 = fmul double %174, %call308
  %call310 = call i32 @traceray(%struct.ray* %ref247, %struct._GimpVector4* %refcol245, i32 %sub304, double %mul309)
  %177 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %177 to i64
  %178 = load %struct.common*, %struct.common** %bobj, align 8
  %texture312 = getelementptr inbounds %struct.common, %struct.common* %178, i32 0, i32 3
  %arrayidx313 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture312, i32 0, i64 %idxprom311
  %refraction314 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx313, i32 0, i32 14
  call void @vvmul(%struct._GimpVector4* %refcol245, %struct._GimpVector4* %refraction314)
  %179 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vadd(%struct._GimpVector4* %179, %struct._GimpVector4* %refcol245)
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.297, %land.lhs.true.237, %if.end.233
  br label %for.inc.316

for.inc.316:                                      ; preds = %if.end.315, %if.then.227
  %180 = load i32, i32* %i, align 4
  %inc317 = add nsw i32 %180, 1
  store i32 %inc317, i32* %i, align 4
  br label %for.cond.72

for.end.318:                                      ; preds = %for.cond.72
  br label %if.end.320

if.else.319:                                      ; preds = %if.end.39
  %181 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vcset(%struct._GimpVector4* %181, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  store double 1.000000e+04, double* %min, align 8
  call void @vcset(%struct._GimpVector4* %p, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %if.end.320

if.end.320:                                       ; preds = %if.else.319, %for.end.318
  store i32 0, i32* %i, align 4
  br label %for.cond.321

for.cond.321:                                     ; preds = %for.inc.360, %if.end.320
  %182 = load i32, i32* %i, align 4
  %183 = load i16, i16* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 9), align 2
  %conv322 = sext i16 %183 to i32
  %cmp323 = icmp slt i32 %182, %conv322
  br i1 %cmp323, label %for.body.325, label %for.end.362

for.body.325:                                     ; preds = %for.cond.321
  %184 = load i32, i32* %i, align 4
  %idxprom326 = sext i32 %184 to i64
  %arrayidx327 = getelementptr inbounds [1 x %struct.atmos], [1 x %struct.atmos]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 10), i32 0, i64 %idxprom326
  %type328 = getelementptr inbounds %struct.atmos, %struct.atmos* %arrayidx327, i32 0, i32 0
  %185 = load i16, i16* %type328, align 2
  %conv329 = sext i16 %185 to i32
  %cmp330 = icmp eq i32 %conv329, 0
  br i1 %cmp330, label %if.then.332, label %if.end.359

if.then.332:                                      ; preds = %for.body.325
  %x333 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  %186 = load double, double* %x333, align 8
  %arrayidx334 = getelementptr inbounds [3 x double], [3 x double]* %pt, i32 0, i64 0
  store double %186, double* %arrayidx334, align 8
  %y335 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  %187 = load double, double* %y335, align 8
  %arrayidx336 = getelementptr inbounds [3 x double], [3 x double]* %pt, i32 0, i64 1
  store double %187, double* %arrayidx336, align 8
  %z337 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 2
  %188 = load double, double* %z337, align 8
  %arrayidx338 = getelementptr inbounds [3 x double], [3 x double]* %pt, i32 0, i64 2
  store double %188, double* %arrayidx338, align 8
  %189 = load i32, i32* %i, align 4
  %idxprom339 = sext i32 %189 to i64
  %arrayidx340 = getelementptr inbounds [1 x %struct.atmos], [1 x %struct.atmos]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 10), i32 0, i64 %idxprom339
  %turbulence = getelementptr inbounds %struct.atmos, %struct.atmos* %arrayidx340, i32 0, i32 3
  %190 = load double, double* %turbulence, align 8
  store double %190, double* %v, align 8
  %cmp341 = fcmp ogt double %190, 0.000000e+00
  br i1 %cmp341, label %if.then.343, label %if.end.349

if.then.343:                                      ; preds = %if.then.332
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %pt, i32 0, i32 0
  %call344 = call double @turbulence(double* %arraydecay, double 1.000000e+00, double 2.560000e+02)
  %191 = load i32, i32* %i, align 4
  %idxprom345 = sext i32 %191 to i64
  %arrayidx346 = getelementptr inbounds [1 x %struct.atmos], [1 x %struct.atmos]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 10), i32 0, i64 %idxprom345
  %turbulence347 = getelementptr inbounds %struct.atmos, %struct.atmos* %arrayidx346, i32 0, i32 3
  %192 = load double, double* %turbulence347, align 8
  %mul348 = fmul double %call344, %192
  store double %mul348, double* %v, align 8
  br label %if.end.349

if.end.349:                                       ; preds = %if.then.343, %if.then.332
  %193 = load double, double* %min, align 8
  %194 = load double, double* %v, align 8
  %add350 = fadd double %193, %194
  %sub351 = fsub double -0.000000e+00, %add350
  %195 = load i32, i32* %i, align 4
  %idxprom352 = sext i32 %195 to i64
  %arrayidx353 = getelementptr inbounds [1 x %struct.atmos], [1 x %struct.atmos]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 10), i32 0, i64 %idxprom352
  %density = getelementptr inbounds %struct.atmos, %struct.atmos* %arrayidx353, i32 0, i32 1
  %196 = load double, double* %density, align 8
  %div354 = fdiv double %sub351, %196
  %call355 = call double @exp(double %div354) #4
  store double %call355, double* %v, align 8
  %197 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %198 = load double, double* %v, align 8
  call void @vmul(%struct._GimpVector4* %197, double %198)
  %199 = load i32, i32* %i, align 4
  %idxprom356 = sext i32 %199 to i64
  %arrayidx357 = getelementptr inbounds [1 x %struct.atmos], [1 x %struct.atmos]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 10), i32 0, i64 %idxprom356
  %color = getelementptr inbounds %struct.atmos, %struct.atmos* %arrayidx357, i32 0, i32 2
  call void @vcopy(%struct._GimpVector4* %tmpcol, %struct._GimpVector4* %color)
  %200 = load double, double* %v, align 8
  %sub358 = fsub double 1.000000e+00, %200
  call void @vmul(%struct._GimpVector4* %tmpcol, double %sub358)
  %201 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vadd(%struct._GimpVector4* %201, %struct._GimpVector4* %tmpcol)
  br label %if.end.359

if.end.359:                                       ; preds = %if.end.349, %for.body.325
  br label %for.inc.360

for.inc.360:                                      ; preds = %if.end.359
  %202 = load i32, i32* %i, align 4
  %inc361 = add nsw i32 %202, 1
  store i32 %inc361, i32* %i, align 4
  br label %for.cond.321

for.end.362:                                      ; preds = %for.cond.321
  %203 = load i32, i32* %hits, align 4
  store i32 %203, i32* %retval
  br label %return

return:                                           ; preds = %for.end.362, %if.then.38, %if.then.27, %if.then
  %204 = load i32, i32* %retval
  ret i32 %204
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @pixelval(double %v) #0 {
entry:
  %retval = alloca i8, align 1
  %v.addr = alloca double, align 8
  store double %v, double* %v.addr, align 8
  %0 = load double, double* %v.addr, align 8
  %add = fadd double %0, 5.000000e-01
  store double %add, double* %v.addr, align 8
  %1 = load double, double* %v.addr, align 8
  %cmp = fcmp olt double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %v.addr, align 8
  %cmp1 = fcmp ogt double %2, 2.550000e+02
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i8 -1, i8* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load double, double* %v.addr, align 8
  %conv = fptoui double %3 to i8
  store i8 %conv, i8* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @vmul(%struct._GimpVector4* %v, double %a) #5 {
entry:
  %v.addr = alloca %struct._GimpVector4*, align 8
  %a.addr = alloca double, align 8
  store %struct._GimpVector4* %v, %struct._GimpVector4** %v.addr, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %1 = load %struct._GimpVector4*, %struct._GimpVector4** %v.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %1, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %mul = fmul double %2, %0
  store double %mul, double* %x, align 8
  %3 = load double, double* %a.addr, align 8
  %4 = load %struct._GimpVector4*, %struct._GimpVector4** %v.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %mul1 = fmul double %5, %3
  store double %mul1, double* %y, align 8
  %6 = load double, double* %a.addr, align 8
  %7 = load %struct._GimpVector4*, %struct._GimpVector4** %v.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %7, i32 0, i32 2
  %8 = load double, double* %z, align 8
  %mul2 = fmul double %8, %6
  store double %mul2, double* %z, align 8
  %9 = load double, double* %a.addr, align 8
  %10 = load %struct._GimpVector4*, %struct._GimpVector4** %v.addr, align 8
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %10, i32 0, i32 3
  %11 = load double, double* %w, align 8
  %mul3 = fmul double %11, %9
  store double %mul3, double* %w, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vcopy(%struct._GimpVector4* %a, %struct._GimpVector4* %b) #5 {
entry:
  %a.addr = alloca %struct._GimpVector4*, align 8
  %b.addr = alloca %struct._GimpVector4*, align 8
  store %struct._GimpVector4* %a, %struct._GimpVector4** %a.addr, align 8
  store %struct._GimpVector4* %b, %struct._GimpVector4** %b.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %1 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %2 = bitcast %struct._GimpVector4* %0 to i8*
  %3 = bitcast %struct._GimpVector4* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @checktri(%struct.ray* %r, %struct.triangle* %tri) #0 {
entry:
  %retval = alloca double, align 8
  %r.addr = alloca %struct.ray*, align 8
  %tri.addr = alloca %struct.triangle*, align 8
  %ed1 = alloca %struct._GimpVector4, align 8
  %ed2 = alloca %struct._GimpVector4, align 8
  %tvec = alloca %struct._GimpVector4, align 8
  %pvec = alloca %struct._GimpVector4, align 8
  %qvec = alloca %struct._GimpVector4, align 8
  %det = alloca double, align 8
  %idet = alloca double, align 8
  %t = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %orig = alloca %struct._GimpVector4*, align 8
  %dir = alloca %struct._GimpVector4, align 8
  store %struct.ray* %r, %struct.ray** %r.addr, align 8
  store %struct.triangle* %tri, %struct.triangle** %tri.addr, align 8
  %0 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v1 = getelementptr inbounds %struct.ray, %struct.ray* %0, i32 0, i32 0
  store %struct._GimpVector4* %v1, %struct._GimpVector4** %orig, align 8
  %1 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v2 = getelementptr inbounds %struct.ray, %struct.ray* %1, i32 0, i32 1
  %2 = bitcast %struct._GimpVector4* %dir to i8*
  %3 = bitcast %struct._GimpVector4* %v2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  %4 = load %struct._GimpVector4*, %struct._GimpVector4** %orig, align 8
  call void @vsub(%struct._GimpVector4* %dir, %struct._GimpVector4* %4)
  %5 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %c = getelementptr inbounds %struct.triangle, %struct.triangle* %5, i32 0, i32 3
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %c, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %7 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %a = getelementptr inbounds %struct.triangle, %struct.triangle* %7, i32 0, i32 1
  %x1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %a, i32 0, i32 0
  %8 = load double, double* %x1, align 8
  %sub = fsub double %6, %8
  %x2 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %ed1, i32 0, i32 0
  store double %sub, double* %x2, align 8
  %9 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %c3 = getelementptr inbounds %struct.triangle, %struct.triangle* %9, i32 0, i32 3
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %c3, i32 0, i32 1
  %10 = load double, double* %y, align 8
  %11 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %a4 = getelementptr inbounds %struct.triangle, %struct.triangle* %11, i32 0, i32 1
  %y5 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %a4, i32 0, i32 1
  %12 = load double, double* %y5, align 8
  %sub6 = fsub double %10, %12
  %y7 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %ed1, i32 0, i32 1
  store double %sub6, double* %y7, align 8
  %13 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %c8 = getelementptr inbounds %struct.triangle, %struct.triangle* %13, i32 0, i32 3
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %c8, i32 0, i32 2
  %14 = load double, double* %z, align 8
  %15 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %a9 = getelementptr inbounds %struct.triangle, %struct.triangle* %15, i32 0, i32 1
  %z10 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %a9, i32 0, i32 2
  %16 = load double, double* %z10, align 8
  %sub11 = fsub double %14, %16
  %z12 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %ed1, i32 0, i32 2
  store double %sub11, double* %z12, align 8
  %17 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %b = getelementptr inbounds %struct.triangle, %struct.triangle* %17, i32 0, i32 2
  %x13 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %b, i32 0, i32 0
  %18 = load double, double* %x13, align 8
  %19 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %a14 = getelementptr inbounds %struct.triangle, %struct.triangle* %19, i32 0, i32 1
  %x15 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %a14, i32 0, i32 0
  %20 = load double, double* %x15, align 8
  %sub16 = fsub double %18, %20
  %x17 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %ed2, i32 0, i32 0
  store double %sub16, double* %x17, align 8
  %21 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %b18 = getelementptr inbounds %struct.triangle, %struct.triangle* %21, i32 0, i32 2
  %y19 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %b18, i32 0, i32 1
  %22 = load double, double* %y19, align 8
  %23 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %a20 = getelementptr inbounds %struct.triangle, %struct.triangle* %23, i32 0, i32 1
  %y21 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %a20, i32 0, i32 1
  %24 = load double, double* %y21, align 8
  %sub22 = fsub double %22, %24
  %y23 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %ed2, i32 0, i32 1
  store double %sub22, double* %y23, align 8
  %25 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %b24 = getelementptr inbounds %struct.triangle, %struct.triangle* %25, i32 0, i32 2
  %z25 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %b24, i32 0, i32 2
  %26 = load double, double* %z25, align 8
  %27 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %a26 = getelementptr inbounds %struct.triangle, %struct.triangle* %27, i32 0, i32 1
  %z27 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %a26, i32 0, i32 2
  %28 = load double, double* %z27, align 8
  %sub28 = fsub double %26, %28
  %z29 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %ed2, i32 0, i32 2
  store double %sub28, double* %z29, align 8
  call void @vcross(%struct._GimpVector4* %pvec, %struct._GimpVector4* %dir, %struct._GimpVector4* %ed2)
  %call = call double @vdot(%struct._GimpVector4* %ed1, %struct._GimpVector4* %pvec)
  store double %call, double* %det, align 8
  %29 = load double, double* %det, align 8
  %div = fdiv double 1.000000e+00, %29
  store double %div, double* %idet, align 8
  %30 = load %struct._GimpVector4*, %struct._GimpVector4** %orig, align 8
  %x30 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %30, i32 0, i32 0
  %31 = load double, double* %x30, align 8
  %x31 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %tvec, i32 0, i32 0
  store double %31, double* %x31, align 8
  %32 = load %struct._GimpVector4*, %struct._GimpVector4** %orig, align 8
  %y32 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %32, i32 0, i32 1
  %33 = load double, double* %y32, align 8
  %y33 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %tvec, i32 0, i32 1
  store double %33, double* %y33, align 8
  %34 = load %struct._GimpVector4*, %struct._GimpVector4** %orig, align 8
  %z34 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %34, i32 0, i32 2
  %35 = load double, double* %z34, align 8
  %z35 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %tvec, i32 0, i32 2
  store double %35, double* %z35, align 8
  %36 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %a36 = getelementptr inbounds %struct.triangle, %struct.triangle* %36, i32 0, i32 1
  call void @vsub(%struct._GimpVector4* %tvec, %struct._GimpVector4* %a36)
  %call37 = call double @vdot(%struct._GimpVector4* %tvec, %struct._GimpVector4* %pvec)
  %37 = load double, double* %idet, align 8
  %mul = fmul double %call37, %37
  store double %mul, double* %u, align 8
  %38 = load double, double* %u, align 8
  %cmp = fcmp olt double %38, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %39 = load double, double* %u, align 8
  %cmp38 = fcmp ogt double %39, 1.000000e+00
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end
  store double 0.000000e+00, double* %retval
  br label %return

if.end.40:                                        ; preds = %if.end
  call void @vcross(%struct._GimpVector4* %qvec, %struct._GimpVector4* %tvec, %struct._GimpVector4* %ed1)
  %call41 = call double @vdot(%struct._GimpVector4* %dir, %struct._GimpVector4* %qvec)
  %40 = load double, double* %idet, align 8
  %mul42 = fmul double %call41, %40
  store double %mul42, double* %v, align 8
  %41 = load double, double* %v, align 8
  %cmp43 = fcmp olt double %41, 0.000000e+00
  br i1 %cmp43, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.40
  %42 = load double, double* %u, align 8
  %43 = load double, double* %v, align 8
  %add = fadd double %42, %43
  %cmp44 = fcmp ogt double %add, 1.000000e+00
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false, %if.end.40
  store double 0.000000e+00, double* %retval
  br label %return

if.end.46:                                        ; preds = %lor.lhs.false
  %call47 = call double @vdot(%struct._GimpVector4* %ed2, %struct._GimpVector4* %qvec)
  %44 = load double, double* %idet, align 8
  %mul48 = fmul double %call47, %44
  store double %mul48, double* %t, align 8
  %45 = load double, double* %t, align 8
  store double %45, double* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.45, %if.then.39, %if.then
  %46 = load double, double* %retval
  ret double %46
}

; Function Attrs: nounwind uwtable
define internal double @checkdisc(%struct.ray* %r, %struct.disc* %disc) #0 {
entry:
  %r.addr = alloca %struct.ray*, align 8
  %disc.addr = alloca %struct.disc*, align 8
  %p = alloca %struct._GimpVector4, align 8
  %v = alloca %struct._GimpVector4*, align 8
  %t = alloca double, align 8
  %d2 = alloca double, align 8
  %i = alloca double, align 8
  %j = alloca double, align 8
  %k = alloca double, align 8
  store %struct.ray* %r, %struct.ray** %r.addr, align 8
  store %struct.disc* %disc, %struct.disc** %disc.addr, align 8
  %0 = load %struct.disc*, %struct.disc** %disc.addr, align 8
  %a = getelementptr inbounds %struct.disc, %struct.disc* %0, i32 0, i32 1
  store %struct._GimpVector4* %a, %struct._GimpVector4** %v, align 8
  %1 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v2 = getelementptr inbounds %struct.ray, %struct.ray* %1, i32 0, i32 1
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v2, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %3 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v1 = getelementptr inbounds %struct.ray, %struct.ray* %3, i32 0, i32 0
  %x1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v1, i32 0, i32 0
  %4 = load double, double* %x1, align 8
  %sub = fsub double %2, %4
  store double %sub, double* %i, align 8
  %5 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v22 = getelementptr inbounds %struct.ray, %struct.ray* %5, i32 0, i32 1
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v22, i32 0, i32 1
  %6 = load double, double* %y, align 8
  %7 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v13 = getelementptr inbounds %struct.ray, %struct.ray* %7, i32 0, i32 0
  %y4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v13, i32 0, i32 1
  %8 = load double, double* %y4, align 8
  %sub5 = fsub double %6, %8
  store double %sub5, double* %j, align 8
  %9 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v26 = getelementptr inbounds %struct.ray, %struct.ray* %9, i32 0, i32 1
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v26, i32 0, i32 2
  %10 = load double, double* %z, align 8
  %11 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v17 = getelementptr inbounds %struct.ray, %struct.ray* %11, i32 0, i32 0
  %z8 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v17, i32 0, i32 2
  %12 = load double, double* %z8, align 8
  %sub9 = fsub double %10, %12
  store double %sub9, double* %k, align 8
  %13 = load %struct._GimpVector4*, %struct._GimpVector4** %v, align 8
  %x10 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %13, i32 0, i32 0
  %14 = load double, double* %x10, align 8
  %15 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v111 = getelementptr inbounds %struct.ray, %struct.ray* %15, i32 0, i32 0
  %x12 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v111, i32 0, i32 0
  %16 = load double, double* %x12, align 8
  %mul = fmul double %14, %16
  %17 = load %struct._GimpVector4*, %struct._GimpVector4** %v, align 8
  %y13 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %17, i32 0, i32 1
  %18 = load double, double* %y13, align 8
  %19 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v114 = getelementptr inbounds %struct.ray, %struct.ray* %19, i32 0, i32 0
  %y15 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v114, i32 0, i32 1
  %20 = load double, double* %y15, align 8
  %mul16 = fmul double %18, %20
  %add = fadd double %mul, %mul16
  %21 = load %struct._GimpVector4*, %struct._GimpVector4** %v, align 8
  %z17 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %21, i32 0, i32 2
  %22 = load double, double* %z17, align 8
  %23 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v118 = getelementptr inbounds %struct.ray, %struct.ray* %23, i32 0, i32 0
  %z19 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v118, i32 0, i32 2
  %24 = load double, double* %z19, align 8
  %mul20 = fmul double %22, %24
  %add21 = fadd double %add, %mul20
  %25 = load %struct.disc*, %struct.disc** %disc.addr, align 8
  %b = getelementptr inbounds %struct.disc, %struct.disc* %25, i32 0, i32 2
  %26 = load double, double* %b, align 8
  %sub22 = fsub double %add21, %26
  %sub23 = fsub double -0.000000e+00, %sub22
  %27 = load %struct._GimpVector4*, %struct._GimpVector4** %v, align 8
  %x24 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %27, i32 0, i32 0
  %28 = load double, double* %x24, align 8
  %29 = load double, double* %i, align 8
  %mul25 = fmul double %28, %29
  %30 = load %struct._GimpVector4*, %struct._GimpVector4** %v, align 8
  %y26 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %30, i32 0, i32 1
  %31 = load double, double* %y26, align 8
  %32 = load double, double* %j, align 8
  %mul27 = fmul double %31, %32
  %add28 = fadd double %mul25, %mul27
  %33 = load %struct._GimpVector4*, %struct._GimpVector4** %v, align 8
  %z29 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %33, i32 0, i32 2
  %34 = load double, double* %z29, align 8
  %35 = load double, double* %k, align 8
  %mul30 = fmul double %34, %35
  %add31 = fadd double %add28, %mul30
  %div = fdiv double %sub23, %add31
  store double %div, double* %t, align 8
  %36 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v132 = getelementptr inbounds %struct.ray, %struct.ray* %36, i32 0, i32 0
  %x33 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v132, i32 0, i32 0
  %37 = load double, double* %x33, align 8
  %38 = load double, double* %i, align 8
  %39 = load double, double* %t, align 8
  %mul34 = fmul double %38, %39
  %add35 = fadd double %37, %mul34
  %x36 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  store double %add35, double* %x36, align 8
  %40 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v137 = getelementptr inbounds %struct.ray, %struct.ray* %40, i32 0, i32 0
  %y38 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v137, i32 0, i32 1
  %41 = load double, double* %y38, align 8
  %42 = load double, double* %j, align 8
  %43 = load double, double* %t, align 8
  %mul39 = fmul double %42, %43
  %add40 = fadd double %41, %mul39
  %y41 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  store double %add40, double* %y41, align 8
  %44 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v142 = getelementptr inbounds %struct.ray, %struct.ray* %44, i32 0, i32 0
  %z43 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v142, i32 0, i32 2
  %45 = load double, double* %z43, align 8
  %46 = load double, double* %k, align 8
  %47 = load double, double* %t, align 8
  %mul44 = fmul double %46, %47
  %add45 = fadd double %45, %mul44
  %z46 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 2
  store double %add45, double* %z46, align 8
  %48 = load %struct._GimpVector4*, %struct._GimpVector4** %v, align 8
  %call = call double @vdist2(%struct._GimpVector4* %p, %struct._GimpVector4* %48)
  store double %call, double* %d2, align 8
  %49 = load double, double* %d2, align 8
  %50 = load %struct.disc*, %struct.disc** %disc.addr, align 8
  %r47 = getelementptr inbounds %struct.disc, %struct.disc* %50, i32 0, i32 3
  %51 = load double, double* %r47, align 8
  %52 = load %struct.disc*, %struct.disc** %disc.addr, align 8
  %r48 = getelementptr inbounds %struct.disc, %struct.disc* %52, i32 0, i32 3
  %53 = load double, double* %r48, align 8
  %mul49 = fmul double %51, %53
  %cmp = fcmp ogt double %49, %mul49
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %54 = load double, double* %t, align 8
  ret double %54
}

; Function Attrs: nounwind uwtable
define internal double @checkplane(%struct.ray* %r, %struct.plane* %plane) #0 {
entry:
  %r.addr = alloca %struct.ray*, align 8
  %plane.addr = alloca %struct.plane*, align 8
  %v = alloca %struct._GimpVector4*, align 8
  %t = alloca double, align 8
  %i = alloca double, align 8
  %j = alloca double, align 8
  %k = alloca double, align 8
  store %struct.ray* %r, %struct.ray** %r.addr, align 8
  store %struct.plane* %plane, %struct.plane** %plane.addr, align 8
  %0 = load %struct.plane*, %struct.plane** %plane.addr, align 8
  %a = getelementptr inbounds %struct.plane, %struct.plane* %0, i32 0, i32 1
  store %struct._GimpVector4* %a, %struct._GimpVector4** %v, align 8
  %1 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v2 = getelementptr inbounds %struct.ray, %struct.ray* %1, i32 0, i32 1
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v2, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %3 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v1 = getelementptr inbounds %struct.ray, %struct.ray* %3, i32 0, i32 0
  %x1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v1, i32 0, i32 0
  %4 = load double, double* %x1, align 8
  %sub = fsub double %2, %4
  store double %sub, double* %i, align 8
  %5 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v22 = getelementptr inbounds %struct.ray, %struct.ray* %5, i32 0, i32 1
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v22, i32 0, i32 1
  %6 = load double, double* %y, align 8
  %7 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v13 = getelementptr inbounds %struct.ray, %struct.ray* %7, i32 0, i32 0
  %y4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v13, i32 0, i32 1
  %8 = load double, double* %y4, align 8
  %sub5 = fsub double %6, %8
  store double %sub5, double* %j, align 8
  %9 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v26 = getelementptr inbounds %struct.ray, %struct.ray* %9, i32 0, i32 1
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v26, i32 0, i32 2
  %10 = load double, double* %z, align 8
  %11 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v17 = getelementptr inbounds %struct.ray, %struct.ray* %11, i32 0, i32 0
  %z8 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v17, i32 0, i32 2
  %12 = load double, double* %z8, align 8
  %sub9 = fsub double %10, %12
  store double %sub9, double* %k, align 8
  %13 = load %struct._GimpVector4*, %struct._GimpVector4** %v, align 8
  %x10 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %13, i32 0, i32 0
  %14 = load double, double* %x10, align 8
  %15 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v111 = getelementptr inbounds %struct.ray, %struct.ray* %15, i32 0, i32 0
  %x12 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v111, i32 0, i32 0
  %16 = load double, double* %x12, align 8
  %mul = fmul double %14, %16
  %17 = load %struct._GimpVector4*, %struct._GimpVector4** %v, align 8
  %y13 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %17, i32 0, i32 1
  %18 = load double, double* %y13, align 8
  %19 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v114 = getelementptr inbounds %struct.ray, %struct.ray* %19, i32 0, i32 0
  %y15 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v114, i32 0, i32 1
  %20 = load double, double* %y15, align 8
  %mul16 = fmul double %18, %20
  %add = fadd double %mul, %mul16
  %21 = load %struct._GimpVector4*, %struct._GimpVector4** %v, align 8
  %z17 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %21, i32 0, i32 2
  %22 = load double, double* %z17, align 8
  %23 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v118 = getelementptr inbounds %struct.ray, %struct.ray* %23, i32 0, i32 0
  %z19 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %v118, i32 0, i32 2
  %24 = load double, double* %z19, align 8
  %mul20 = fmul double %22, %24
  %add21 = fadd double %add, %mul20
  %25 = load %struct.plane*, %struct.plane** %plane.addr, align 8
  %b = getelementptr inbounds %struct.plane, %struct.plane* %25, i32 0, i32 2
  %26 = load double, double* %b, align 8
  %sub22 = fsub double %add21, %26
  %sub23 = fsub double -0.000000e+00, %sub22
  %27 = load %struct._GimpVector4*, %struct._GimpVector4** %v, align 8
  %x24 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %27, i32 0, i32 0
  %28 = load double, double* %x24, align 8
  %29 = load double, double* %i, align 8
  %mul25 = fmul double %28, %29
  %30 = load %struct._GimpVector4*, %struct._GimpVector4** %v, align 8
  %y26 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %30, i32 0, i32 1
  %31 = load double, double* %y26, align 8
  %32 = load double, double* %j, align 8
  %mul27 = fmul double %31, %32
  %add28 = fadd double %mul25, %mul27
  %33 = load %struct._GimpVector4*, %struct._GimpVector4** %v, align 8
  %z29 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %33, i32 0, i32 2
  %34 = load double, double* %z29, align 8
  %35 = load double, double* %k, align 8
  %mul30 = fmul double %34, %35
  %add31 = fadd double %add28, %mul30
  %div = fdiv double %sub23, %add31
  store double %div, double* %t, align 8
  %36 = load double, double* %t, align 8
  ret double %36
}

; Function Attrs: nounwind uwtable
define internal double @checksphere(%struct.ray* %r, %struct.sphere* %sphere) #0 {
entry:
  %retval = alloca double, align 8
  %r.addr = alloca %struct.ray*, align 8
  %sphere.addr = alloca %struct.sphere*, align 8
  %cendir = alloca %struct._GimpVector4, align 8
  %rdir = alloca %struct._GimpVector4, align 8
  %dirproj = alloca double, align 8
  %cdlensq = alloca double, align 8
  %linear = alloca double, align 8
  %constant = alloca double, align 8
  %rsq = alloca double, align 8
  %quadratic = alloca double, align 8
  %discriminant = alloca double, align 8
  %smallzero = alloca double, align 8
  %solmin = alloca double, align 8
  %solmax = alloca double, align 8
  %tolerance = alloca double, align 8
  store %struct.ray* %r, %struct.ray** %r.addr, align 8
  store %struct.sphere* %sphere, %struct.sphere** %sphere.addr, align 8
  store double 1.000000e-03, double* %tolerance, align 8
  %0 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v2 = getelementptr inbounds %struct.ray, %struct.ray* %0, i32 0, i32 1
  call void @vcopy(%struct._GimpVector4* %rdir, %struct._GimpVector4* %v2)
  %1 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v1 = getelementptr inbounds %struct.ray, %struct.ray* %1, i32 0, i32 0
  call void @vsub(%struct._GimpVector4* %rdir, %struct._GimpVector4* %v1)
  %2 = load %struct.sphere*, %struct.sphere** %sphere.addr, align 8
  %r1 = getelementptr inbounds %struct.sphere, %struct.sphere* %2, i32 0, i32 2
  %3 = load double, double* %r1, align 8
  %4 = load %struct.sphere*, %struct.sphere** %sphere.addr, align 8
  %r2 = getelementptr inbounds %struct.sphere, %struct.sphere* %4, i32 0, i32 2
  %5 = load double, double* %r2, align 8
  %mul = fmul double %3, %5
  store double %mul, double* %rsq, align 8
  %6 = load %struct.ray*, %struct.ray** %r.addr, align 8
  %v13 = getelementptr inbounds %struct.ray, %struct.ray* %6, i32 0, i32 0
  call void @vcopy(%struct._GimpVector4* %cendir, %struct._GimpVector4* %v13)
  %7 = load %struct.sphere*, %struct.sphere** %sphere.addr, align 8
  %a = getelementptr inbounds %struct.sphere, %struct.sphere* %7, i32 0, i32 1
  call void @vsub(%struct._GimpVector4* %cendir, %struct._GimpVector4* %a)
  %call = call double @vdot(%struct._GimpVector4* %rdir, %struct._GimpVector4* %cendir)
  store double %call, double* %dirproj, align 8
  %call4 = call double @vdot(%struct._GimpVector4* %cendir, %struct._GimpVector4* %cendir)
  store double %call4, double* %cdlensq, align 8
  %8 = load double, double* %cdlensq, align 8
  %9 = load double, double* %rsq, align 8
  %cmp = fcmp oge double %8, %9
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load double, double* %dirproj, align 8
  %cmp5 = fcmp ogt double %10, 0.000000e+00
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load double, double* %dirproj, align 8
  %mul6 = fmul double 2.000000e+00, %11
  store double %mul6, double* %linear, align 8
  %12 = load double, double* %cdlensq, align 8
  %13 = load double, double* %rsq, align 8
  %sub = fsub double %12, %13
  store double %sub, double* %constant, align 8
  %call7 = call double @vdot(%struct._GimpVector4* %rdir, %struct._GimpVector4* %rdir)
  store double %call7, double* %quadratic, align 8
  %14 = load double, double* %constant, align 8
  %15 = load double, double* %linear, align 8
  %div = fdiv double %14, %15
  store double %div, double* %smallzero, align 8
  %16 = load double, double* %smallzero, align 8
  %17 = load double, double* %tolerance, align 8
  %cmp8 = fcmp olt double %16, %17
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.17

land.lhs.true.9:                                  ; preds = %if.end
  %18 = load double, double* %smallzero, align 8
  %19 = load double, double* %tolerance, align 8
  %sub10 = fsub double -0.000000e+00, %19
  %cmp11 = fcmp ogt double %18, %sub10
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %land.lhs.true.9
  %20 = load double, double* %linear, align 8
  %sub13 = fsub double -0.000000e+00, %20
  %21 = load double, double* %quadratic, align 8
  %div14 = fdiv double %sub13, %21
  store double %div14, double* %solmin, align 8
  %22 = load double, double* %solmin, align 8
  %23 = load double, double* %tolerance, align 8
  %cmp15 = fcmp ogt double %22, %23
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.12
  %24 = load double, double* %solmin, align 8
  store double %24, double* %retval
  br label %return

if.else:                                          ; preds = %if.then.12
  store double 0.000000e+00, double* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true.9, %if.end
  %25 = load double, double* %linear, align 8
  %26 = load double, double* %linear, align 8
  %mul18 = fmul double %25, %26
  %27 = load double, double* %quadratic, align 8
  %mul19 = fmul double 4.000000e+00, %27
  %28 = load double, double* %constant, align 8
  %mul20 = fmul double %mul19, %28
  %sub21 = fsub double %mul18, %mul20
  store double %sub21, double* %discriminant, align 8
  %29 = load double, double* %discriminant, align 8
  %cmp22 = fcmp olt double %29, 0.000000e+00
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.17
  store double 0.000000e+00, double* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.17
  %30 = load double, double* %quadratic, align 8
  %mul25 = fmul double %30, 2.000000e+00
  store double %mul25, double* %quadratic, align 8
  %31 = load double, double* %discriminant, align 8
  %call26 = call double @sqrt(double %31) #4
  store double %call26, double* %discriminant, align 8
  %32 = load double, double* %linear, align 8
  %sub27 = fsub double -0.000000e+00, %32
  %33 = load double, double* %discriminant, align 8
  %add = fadd double %sub27, %33
  %34 = load double, double* %quadratic, align 8
  %div28 = fdiv double %add, %34
  store double %div28, double* %solmax, align 8
  %35 = load double, double* %linear, align 8
  %sub29 = fsub double -0.000000e+00, %35
  %36 = load double, double* %discriminant, align 8
  %sub30 = fsub double %sub29, %36
  %37 = load double, double* %quadratic, align 8
  %div31 = fdiv double %sub30, %37
  store double %div31, double* %solmin, align 8
  %38 = load double, double* %solmax, align 8
  %39 = load double, double* %tolerance, align 8
  %cmp32 = fcmp olt double %38, %39
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.24
  store double 0.000000e+00, double* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.24
  %40 = load double, double* %solmin, align 8
  %41 = load double, double* %tolerance, align 8
  %cmp35 = fcmp olt double %40, %41
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.34
  %42 = load double, double* %solmax, align 8
  store double %42, double* %retval
  br label %return

if.else.37:                                       ; preds = %if.end.34
  %43 = load double, double* %solmin, align 8
  store double %43, double* %retval
  br label %return

return:                                           ; preds = %if.else.37, %if.then.36, %if.then.33, %if.then.23, %if.else, %if.then.16, %if.then
  %44 = load double, double* %retval
  ret double %44
}

; Function Attrs: nounwind uwtable
define internal double @checkcylinder(%struct.ray* %r, %struct.cylinder* %cylinder) #0 {
entry:
  %r.addr = alloca %struct.ray*, align 8
  %cylinder.addr = alloca %struct.cylinder*, align 8
  store %struct.ray* %r, %struct.ray** %r.addr, align 8
  store %struct.cylinder* %cylinder, %struct.cylinder** %cylinder.addr, align 8
  ret double 0.000000e+00
}

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
  call void @g_logv(i8* null, i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calclight(%struct._GimpVector4* %col, %struct._GimpVector4* %point, %struct.common* %obj) #0 {
entry:
  %col.addr = alloca %struct._GimpVector4*, align 8
  %point.addr = alloca %struct._GimpVector4*, align 8
  %obj.addr = alloca %struct.common*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca %struct.ray, align 8
  %b = alloca double, align 8
  %a = alloca double, align 8
  %lcol = alloca %struct._GimpVector4, align 8
  %norm = alloca %struct._GimpVector4, align 8
  %pcol = alloca %struct._GimpVector4, align 8
  store %struct._GimpVector4* %col, %struct._GimpVector4** %col.addr, align 8
  store %struct._GimpVector4* %point, %struct._GimpVector4** %point.addr, align 8
  store %struct.common* %obj, %struct.common** %obj.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vcset(%struct._GimpVector4* %0, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %1 = load %struct._GimpVector4*, %struct._GimpVector4** %point.addr, align 8
  %2 = load %struct.common*, %struct.common** %obj.addr, align 8
  call void @objcolor(%struct._GimpVector4* %pcol, %struct._GimpVector4* %1, %struct.common* %2)
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %pcol, i32 0, i32 3
  %3 = load double, double* %w, align 8
  store double %3, double* %a, align 8
  %4 = load i16, i16* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 7), align 2
  %conv = sext i16 %4 to i32
  %cmp = icmp slt i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vcopy(%struct._GimpVector4* %5, %struct._GimpVector4* %pcol)
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.common*, %struct.common** %obj.addr, align 8
  %numtexture = getelementptr inbounds %struct.common, %struct.common* %7, i32 0, i32 2
  %8 = load i16, i16* %numtexture, align 2
  %conv2 = sext i16 %8 to i32
  %cmp3 = icmp slt i32 %6, %conv2
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture = getelementptr inbounds %struct.common, %struct.common* %10, i32 0, i32 3
  %arrayidx = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx, i32 0, i32 1
  %11 = load i32, i32* %type, align 4
  %cmp5 = icmp eq i32 %11, 5
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  br label %for.inc

if.end.8:                                         ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture10 = getelementptr inbounds %struct.common, %struct.common* %13, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture10, i32 0, i64 %idxprom9
  %type12 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx11, i32 0, i32 1
  %14 = load i32, i32* %type12, align 4
  %cmp13 = icmp eq i32 %14, 6
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.8
  br label %for.inc

if.end.16:                                        ; preds = %if.end.8
  %15 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture18 = getelementptr inbounds %struct.common, %struct.common* %16, i32 0, i32 3
  %arrayidx19 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture18, i32 0, i64 %idxprom17
  %type20 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx19, i32 0, i32 1
  %17 = load i32, i32* %type20, align 4
  %cmp21 = icmp eq i32 %17, 7
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.16
  br label %for.inc

if.end.24:                                        ; preds = %if.end.16
  %18 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %18 to i64
  %19 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture26 = getelementptr inbounds %struct.common, %struct.common* %19, i32 0, i32 3
  %arrayidx27 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture26, i32 0, i64 %idxprom25
  %type28 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx27, i32 0, i32 1
  %20 = load i32, i32* %type28, align 4
  %cmp29 = icmp eq i32 %20, 10
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.24
  br label %for.inc

if.end.32:                                        ; preds = %if.end.24
  %21 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %21 to i64
  %22 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture34 = getelementptr inbounds %struct.common, %struct.common* %22, i32 0, i32 3
  %arrayidx35 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture34, i32 0, i64 %idxprom33
  %type36 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx35, i32 0, i32 1
  %23 = load i32, i32* %type36, align 4
  %cmp37 = icmp eq i32 %23, 13
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.32
  br label %for.inc

if.end.40:                                        ; preds = %if.end.32
  call void @vcopy(%struct._GimpVector4* %lcol, %struct._GimpVector4* %pcol)
  %24 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %24 to i64
  %25 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture42 = getelementptr inbounds %struct.common, %struct.common* %25, i32 0, i32 3
  %arrayidx43 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture42, i32 0, i64 %idxprom41
  %ambient = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx43, i32 0, i32 6
  call void @vvmul(%struct._GimpVector4* %lcol, %struct._GimpVector4* %ambient)
  %26 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vadd(%struct._GimpVector4* %26, %struct._GimpVector4* %lcol)
  br label %for.inc

for.inc:                                          ; preds = %if.end.40, %if.then.39, %if.then.31, %if.then.23, %if.then.15, %if.then.7
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.common*, %struct.common** %obj.addr, align 8
  %29 = load %struct._GimpVector4*, %struct._GimpVector4** %point.addr, align 8
  call void @objnormal(%struct._GimpVector4* %norm, %struct.common* %28, %struct._GimpVector4* %29)
  call void @vnorm(%struct._GimpVector4* %norm, double 1.000000e+00)
  %inside = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 2
  store i16 -1, i16* %inside, align 2
  %ior = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 3
  store double 1.000000e+00, double* %ior, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.116, %for.end
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 2), align 4
  %cmp45 = icmp slt i32 %30, %31
  br i1 %cmp45, label %for.body.47, label %for.end.118

for.body.47:                                      ; preds = %for.cond.44
  %v1 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %32 = load %struct._GimpVector4*, %struct._GimpVector4** %point.addr, align 8
  call void @vcopy(%struct._GimpVector4* %v1, %struct._GimpVector4* %32)
  %v2 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 1
  %33 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %33 to i64
  %arrayidx49 = getelementptr inbounds [5 x %struct.light], [5 x %struct.light]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 3), i32 0, i64 %idxprom48
  %a50 = getelementptr inbounds %struct.light, %struct.light* %arrayidx49, i32 0, i32 2
  call void @vcopy(%struct._GimpVector4* %v2, %struct._GimpVector4* %a50)
  %v151 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %v152 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %v253 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 1
  call void @vmix(%struct._GimpVector4* %v151, %struct._GimpVector4* %v152, %struct._GimpVector4* %v253, double 9.999000e-01)
  %v154 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %v255 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 1
  call void @vsub(%struct._GimpVector4* %v154, %struct._GimpVector4* %v255)
  %v156 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  call void @vnorm(%struct._GimpVector4* %v156, double 1.000000e+00)
  %v157 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %call = call double @vdot(%struct._GimpVector4* %v157, %struct._GimpVector4* %norm)
  store double %call, double* %b, align 8
  %34 = load double, double* %b, align 8
  %cmp58 = fcmp olt double %34, 0.000000e+00
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.body.47
  br label %for.inc.116

if.end.61:                                        ; preds = %for.body.47
  store i32 0, i32* %j, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.113, %if.end.61
  %35 = load i32, i32* %j, align 4
  %36 = load %struct.common*, %struct.common** %obj.addr, align 8
  %numtexture63 = getelementptr inbounds %struct.common, %struct.common* %36, i32 0, i32 2
  %37 = load i16, i16* %numtexture63, align 2
  %conv64 = sext i16 %37 to i32
  %cmp65 = icmp slt i32 %35, %conv64
  br i1 %cmp65, label %for.body.67, label %for.end.115

for.body.67:                                      ; preds = %for.cond.62
  %38 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %38 to i64
  %39 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture69 = getelementptr inbounds %struct.common, %struct.common* %39, i32 0, i32 3
  %arrayidx70 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture69, i32 0, i64 %idxprom68
  %type71 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx70, i32 0, i32 1
  %40 = load i32, i32* %type71, align 4
  %cmp72 = icmp eq i32 %40, 5
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %for.body.67
  br label %for.inc.113

if.end.75:                                        ; preds = %for.body.67
  %41 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %41 to i64
  %42 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture77 = getelementptr inbounds %struct.common, %struct.common* %42, i32 0, i32 3
  %arrayidx78 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture77, i32 0, i64 %idxprom76
  %type79 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx78, i32 0, i32 1
  %43 = load i32, i32* %type79, align 4
  %cmp80 = icmp eq i32 %43, 6
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.75
  br label %for.inc.113

if.end.83:                                        ; preds = %if.end.75
  %44 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %44 to i64
  %45 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture85 = getelementptr inbounds %struct.common, %struct.common* %45, i32 0, i32 3
  %arrayidx86 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture85, i32 0, i64 %idxprom84
  %type87 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx86, i32 0, i32 1
  %46 = load i32, i32* %type87, align 4
  %cmp88 = icmp eq i32 %46, 7
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.83
  br label %for.inc.113

if.end.91:                                        ; preds = %if.end.83
  %47 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %47 to i64
  %48 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture93 = getelementptr inbounds %struct.common, %struct.common* %48, i32 0, i32 3
  %arrayidx94 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture93, i32 0, i64 %idxprom92
  %type95 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx94, i32 0, i32 1
  %49 = load i32, i32* %type95, align 4
  %cmp96 = icmp eq i32 %49, 10
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.91
  br label %for.inc.113

if.end.99:                                        ; preds = %if.end.91
  %50 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %50 to i64
  %51 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture101 = getelementptr inbounds %struct.common, %struct.common* %51, i32 0, i32 3
  %arrayidx102 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture101, i32 0, i64 %idxprom100
  %type103 = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx102, i32 0, i32 1
  %52 = load i32, i32* %type103, align 4
  %cmp104 = icmp eq i32 %52, 13
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.99
  br label %for.inc.113

if.end.107:                                       ; preds = %if.end.99
  call void @vcopy(%struct._GimpVector4* %lcol, %struct._GimpVector4* %pcol)
  %53 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %53 to i64
  %arrayidx109 = getelementptr inbounds [5 x %struct.light], [5 x %struct.light]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 3), i32 0, i64 %idxprom108
  %color = getelementptr inbounds %struct.light, %struct.light* %arrayidx109, i32 0, i32 1
  call void @vvmul(%struct._GimpVector4* %lcol, %struct._GimpVector4* %color)
  %54 = load i32, i32* %j, align 4
  %idxprom110 = sext i32 %54 to i64
  %55 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture111 = getelementptr inbounds %struct.common, %struct.common* %55, i32 0, i32 3
  %arrayidx112 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture111, i32 0, i64 %idxprom110
  %diffuse = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx112, i32 0, i32 7
  call void @vvmul(%struct._GimpVector4* %lcol, %struct._GimpVector4* %diffuse)
  %56 = load double, double* %b, align 8
  call void @vmul(%struct._GimpVector4* %lcol, double %56)
  %57 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vadd(%struct._GimpVector4* %57, %struct._GimpVector4* %lcol)
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.107, %if.then.106, %if.then.98, %if.then.90, %if.then.82, %if.then.74
  %58 = load i32, i32* %j, align 4
  %inc114 = add nsw i32 %58, 1
  store i32 %inc114, i32* %j, align 4
  br label %for.cond.62

for.end.115:                                      ; preds = %for.cond.62
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.end.115, %if.then.60
  %59 = load i32, i32* %i, align 4
  %inc117 = add nsw i32 %59, 1
  store i32 %inc117, i32* %i, align 4
  br label %for.cond.44

for.end.118:                                      ; preds = %for.cond.44
  %60 = load double, double* %a, align 8
  %61 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %w119 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %61, i32 0, i32 3
  store double %60, double* %w119, align 8
  br label %return

return:                                           ; preds = %for.end.118, %if.then
  ret void
}

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind uwtable
define internal void @objcolor(%struct._GimpVector4* %col, %struct._GimpVector4* %p, %struct.common* %obj) #0 {
entry:
  %col.addr = alloca %struct._GimpVector4*, align 8
  %p.addr = alloca %struct._GimpVector4*, align 8
  %obj.addr = alloca %struct.common*, align 8
  %i = alloca i32, align 4
  %t = alloca %struct.texture*, align 8
  %tmpcol = alloca %struct._GimpVector4, align 8
  store %struct._GimpVector4* %col, %struct._GimpVector4** %col.addr, align 8
  store %struct._GimpVector4* %p, %struct._GimpVector4** %p.addr, align 8
  store %struct.common* %obj, %struct.common** %obj.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vcset(%struct._GimpVector4* %0, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.common*, %struct.common** %obj.addr, align 8
  %numtexture = getelementptr inbounds %struct.common, %struct.common* %2, i32 0, i32 2
  %3 = load i16, i16* %numtexture, align 2
  %conv = sext i16 %3 to i32
  %cmp = icmp slt i32 %1, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture = getelementptr inbounds %struct.common, %struct.common* %5, i32 0, i32 3
  %arrayidx = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture, i32 0, i64 %idxprom
  store %struct.texture* %arrayidx, %struct.texture** %t, align 8
  %6 = load i16, i16* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 7), align 2
  %conv2 = sext i16 %6 to i32
  %cmp3 = icmp slt i32 %conv2, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %8 = load %struct.texture*, %struct.texture** %t, align 8
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %8, i32 0, i32 3
  call void @vadd(%struct._GimpVector4* %7, %struct._GimpVector4* %color1)
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @vset(%struct._GimpVector4* %tmpcol, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %9 = load %struct.texture*, %struct.texture** %t, align 8
  %type = getelementptr inbounds %struct.texture, %struct.texture* %9, i32 0, i32 1
  %10 = load i32, i32* %type, align 4
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.7
    i32 3, label %sw.bb.8
    i32 8, label %sw.bb.9
    i32 9, label %sw.bb.10
    i32 11, label %sw.bb.11
    i32 12, label %sw.bb.12
    i32 4, label %sw.bb.13
    i32 5, label %sw.bb.14
    i32 7, label %sw.bb.14
    i32 6, label %sw.bb.14
    i32 10, label %sw.bb.14
    i32 13, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.end
  %11 = load %struct.texture*, %struct.texture** %t, align 8
  %color15 = getelementptr inbounds %struct.texture, %struct.texture* %11, i32 0, i32 3
  call void @vcopy(%struct._GimpVector4* %tmpcol, %struct._GimpVector4* %color15)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %12 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %13 = load %struct.texture*, %struct.texture** %t, align 8
  call void @checker(%struct._GimpVector4* %12, %struct._GimpVector4* %tmpcol, %struct.texture* %13)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %14 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %15 = load %struct.texture*, %struct.texture** %t, align 8
  call void @marble(%struct._GimpVector4* %14, %struct._GimpVector4* %tmpcol, %struct.texture* %15)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  %16 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %17 = load %struct.texture*, %struct.texture** %t, align 8
  call void @lizard(%struct._GimpVector4* %16, %struct._GimpVector4* %tmpcol, %struct.texture* %17)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  %18 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %19 = load %struct.texture*, %struct.texture** %t, align 8
  call void @perlin(%struct._GimpVector4* %18, %struct._GimpVector4* %tmpcol, %struct.texture* %19)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  %20 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %21 = load %struct.texture*, %struct.texture** %t, align 8
  call void @wood(%struct._GimpVector4* %20, %struct._GimpVector4* %tmpcol, %struct.texture* %21)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %22 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %23 = load %struct.texture*, %struct.texture** %t, align 8
  call void @spiral(%struct._GimpVector4* %22, %struct._GimpVector4* %tmpcol, %struct.texture* %23)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  %24 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %25 = load %struct.texture*, %struct.texture** %t, align 8
  call void @spots(%struct._GimpVector4* %24, %struct._GimpVector4* %tmpcol, %struct.texture* %25)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end
  %26 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %27 = load %struct.texture*, %struct.texture** %t, align 8
  call void @imagepixel(%struct._GimpVector4* %26, %struct._GimpVector4* %tmpcol, %struct.texture* %27)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  br label %for.inc

sw.default:                                       ; preds = %if.end
  %28 = load %struct.texture*, %struct.texture** %t, align 8
  %type15 = getelementptr inbounds %struct.texture, %struct.texture* %28, i32 0, i32 1
  %29 = load i32, i32* %type15, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i32 0, i32 0), i32 %29)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb
  %30 = load %struct.texture*, %struct.texture** %t, align 8
  %amount = getelementptr inbounds %struct.texture, %struct.texture* %30, i32 0, i32 19
  %31 = load double, double* %amount, align 8
  call void @vmul(%struct._GimpVector4* %tmpcol, double %31)
  %32 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vadd(%struct._GimpVector4* %32, %struct._GimpVector4* %tmpcol)
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %sw.bb.14, %if.then
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %for.end
  %35 = load %struct.common*, %struct.common** %obj.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.75, i32 0, i32 0), %struct.common* %35)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %for.end
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vadd(%struct._GimpVector4* %a, %struct._GimpVector4* %b) #5 {
entry:
  %a.addr = alloca %struct._GimpVector4*, align 8
  %b.addr = alloca %struct._GimpVector4*, align 8
  store %struct._GimpVector4* %a, %struct._GimpVector4** %a.addr, align 8
  store %struct._GimpVector4* %b, %struct._GimpVector4** %b.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %add = fadd double %3, %1
  store double %add, double* %x1, align 8
  %4 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %add3 = fadd double %7, %5
  store double %add3, double* %y2, align 8
  %8 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %8, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %10, i32 0, i32 2
  %11 = load double, double* %z4, align 8
  %add5 = fadd double %11, %9
  store double %add5, double* %z4, align 8
  %12 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %12, i32 0, i32 3
  %13 = load double, double* %w, align 8
  %14 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %w6 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %14, i32 0, i32 3
  %15 = load double, double* %w6, align 8
  %add7 = fadd double %15, %13
  store double %add7, double* %w6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @vmix(%struct._GimpVector4* %r, %struct._GimpVector4* %a, %struct._GimpVector4* %b, double %v) #0 {
entry:
  %r.addr = alloca %struct._GimpVector4*, align 8
  %a.addr = alloca %struct._GimpVector4*, align 8
  %b.addr = alloca %struct._GimpVector4*, align 8
  %v.addr = alloca double, align 8
  %i = alloca double, align 8
  store %struct._GimpVector4* %r, %struct._GimpVector4** %r.addr, align 8
  store %struct._GimpVector4* %a, %struct._GimpVector4** %a.addr, align 8
  store %struct._GimpVector4* %b, %struct._GimpVector4** %b.addr, align 8
  store double %v, double* %v.addr, align 8
  %0 = load double, double* %v.addr, align 8
  %sub = fsub double 1.000000e+00, %0
  store double %sub, double* %i, align 8
  %1 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %1, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %3 = load double, double* %v.addr, align 8
  %mul = fmul double %2, %3
  %4 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %4, i32 0, i32 0
  %5 = load double, double* %x1, align 8
  %6 = load double, double* %i, align 8
  %mul2 = fmul double %5, %6
  %add = fadd double %mul, %mul2
  %7 = load %struct._GimpVector4*, %struct._GimpVector4** %r.addr, align 8
  %x3 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %7, i32 0, i32 0
  store double %add, double* %x3, align 8
  %8 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %8, i32 0, i32 1
  %9 = load double, double* %y, align 8
  %10 = load double, double* %v.addr, align 8
  %mul4 = fmul double %9, %10
  %11 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %11, i32 0, i32 1
  %12 = load double, double* %y5, align 8
  %13 = load double, double* %i, align 8
  %mul6 = fmul double %12, %13
  %add7 = fadd double %mul4, %mul6
  %14 = load %struct._GimpVector4*, %struct._GimpVector4** %r.addr, align 8
  %y8 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %14, i32 0, i32 1
  store double %add7, double* %y8, align 8
  %15 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %15, i32 0, i32 2
  %16 = load double, double* %z, align 8
  %17 = load double, double* %v.addr, align 8
  %mul9 = fmul double %16, %17
  %18 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %z10 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %18, i32 0, i32 2
  %19 = load double, double* %z10, align 8
  %20 = load double, double* %i, align 8
  %mul11 = fmul double %19, %20
  %add12 = fadd double %mul9, %mul11
  %21 = load %struct._GimpVector4*, %struct._GimpVector4** %r.addr, align 8
  %z13 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %21, i32 0, i32 2
  store double %add12, double* %z13, align 8
  %22 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %22, i32 0, i32 3
  %23 = load double, double* %w, align 8
  %24 = load double, double* %v.addr, align 8
  %mul14 = fmul double %23, %24
  %25 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %w15 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %25, i32 0, i32 3
  %26 = load double, double* %w15, align 8
  %27 = load double, double* %i, align 8
  %mul16 = fmul double %26, %27
  %add17 = fadd double %mul14, %mul16
  %28 = load %struct._GimpVector4*, %struct._GimpVector4** %r.addr, align 8
  %w18 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %28, i32 0, i32 3
  store double %add17, double* %w18, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vsub(%struct._GimpVector4* %a, %struct._GimpVector4* %b) #5 {
entry:
  %a.addr = alloca %struct._GimpVector4*, align 8
  %b.addr = alloca %struct._GimpVector4*, align 8
  store %struct._GimpVector4* %a, %struct._GimpVector4** %a.addr, align 8
  store %struct._GimpVector4* %b, %struct._GimpVector4** %b.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %sub = fsub double %3, %1
  store double %sub, double* %x1, align 8
  %4 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %sub3 = fsub double %7, %5
  store double %sub3, double* %y2, align 8
  %8 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %8, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %10, i32 0, i32 2
  %11 = load double, double* %z4, align 8
  %sub5 = fsub double %11, %9
  store double %sub5, double* %z4, align 8
  %12 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %12, i32 0, i32 3
  %13 = load double, double* %w, align 8
  %14 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %w6 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %14, i32 0, i32 3
  %15 = load double, double* %w6, align 8
  %sub7 = fsub double %15, %13
  store double %sub7, double* %w6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @objnormal(%struct._GimpVector4* %res, %struct.common* %obj, %struct._GimpVector4* %p) #0 {
entry:
  %res.addr = alloca %struct._GimpVector4*, align 8
  %obj.addr = alloca %struct.common*, align 8
  %p.addr = alloca %struct._GimpVector4*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %tmpcol = alloca [6 x %struct._GimpVector4], align 16
  %q = alloca [6 x %struct._GimpVector4], align 16
  %nres = alloca %struct._GimpVector4, align 8
  %t = alloca %struct.texture*, align 8
  %nstep = alloca double, align 8
  store %struct._GimpVector4* %res, %struct._GimpVector4** %res.addr, align 8
  store %struct.common* %obj, %struct.common** %obj.addr, align 8
  store %struct._GimpVector4* %p, %struct._GimpVector4** %p.addr, align 8
  %0 = load %struct.common*, %struct.common** %obj.addr, align 8
  %type = getelementptr inbounds %struct.common, %struct.common* %0, i32 0, i32 0
  %1 = load i16, i16* %type, align 2
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._GimpVector4*, %struct._GimpVector4** %res.addr, align 8
  %3 = load %struct.common*, %struct.common** %obj.addr, align 8
  %4 = bitcast %struct.common* %3 to %struct.triangle*
  call void @trianglenormal(%struct._GimpVector4* %2, double* null, %struct.triangle* %4)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %5 = load %struct._GimpVector4*, %struct._GimpVector4** %res.addr, align 8
  %6 = load %struct.common*, %struct.common** %obj.addr, align 8
  %7 = bitcast %struct.common* %6 to %struct.disc*
  %a = getelementptr inbounds %struct.disc, %struct.disc* %7, i32 0, i32 1
  call void @vcopy(%struct._GimpVector4* %5, %struct._GimpVector4* %a)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GimpVector4*, %struct._GimpVector4** %res.addr, align 8
  %9 = load %struct.common*, %struct.common** %obj.addr, align 8
  %10 = bitcast %struct.common* %9 to %struct.plane*
  %a3 = getelementptr inbounds %struct.plane, %struct.plane* %10, i32 0, i32 1
  call void @vcopy(%struct._GimpVector4* %8, %struct._GimpVector4* %a3)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %11 = load %struct._GimpVector4*, %struct._GimpVector4** %res.addr, align 8
  %12 = load %struct.common*, %struct.common** %obj.addr, align 8
  %13 = bitcast %struct.common* %12 to %struct.sphere*
  %a5 = getelementptr inbounds %struct.sphere, %struct.sphere* %13, i32 0, i32 1
  call void @vcopy(%struct._GimpVector4* %11, %struct._GimpVector4* %a5)
  %14 = load %struct._GimpVector4*, %struct._GimpVector4** %res.addr, align 8
  %15 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  call void @vsub(%struct._GimpVector4* %14, %struct._GimpVector4* %15)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %16 = load %struct._GimpVector4*, %struct._GimpVector4** %res.addr, align 8
  call void @vset(%struct._GimpVector4* %16, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.77, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb.1, %sw.bb
  %17 = load %struct._GimpVector4*, %struct._GimpVector4** %res.addr, align 8
  call void @vnorm(%struct._GimpVector4* %17, double 1.000000e+00)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.135, %sw.epilog
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.common*, %struct.common** %obj.addr, align 8
  %numnormal = getelementptr inbounds %struct.common, %struct.common* %19, i32 0, i32 4
  %20 = load i16, i16* %numnormal, align 2
  %conv7 = sext i16 %20 to i32
  %cmp = icmp slt i32 %18, %conv7
  br i1 %cmp, label %for.body, label %for.end.137

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.common*, %struct.common** %obj.addr, align 8
  %normal = getelementptr inbounds %struct.common, %struct.common* %22, i32 0, i32 5
  %arrayidx = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %normal, i32 0, i64 %idxprom
  store %struct.texture* %arrayidx, %struct.texture** %t, align 8
  store double 1.000000e-01, double* %nstep, align 8
  call void @vset(%struct._GimpVector4* %nres, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  store i32 0, i32* %k, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %k, align 4
  %cmp10 = icmp slt i32 %23, 6
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %24 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %24 to i64
  %arrayidx14 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %q, i32 0, i64 %idxprom13
  %25 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  call void @vcopy(%struct._GimpVector4* %arrayidx14, %struct._GimpVector4* %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %26 = load i32, i32* %k, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %27 = load double, double* %nstep, align 8
  %arrayidx15 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %q, i32 0, i64 0
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %arrayidx15, i32 0, i32 0
  %28 = load double, double* %x, align 8
  %add = fadd double %28, %27
  store double %add, double* %x, align 8
  %29 = load double, double* %nstep, align 8
  %arrayidx16 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %q, i32 0, i64 1
  %x17 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %arrayidx16, i32 0, i32 0
  %30 = load double, double* %x17, align 8
  %sub = fsub double %30, %29
  store double %sub, double* %x17, align 8
  %31 = load double, double* %nstep, align 8
  %arrayidx18 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %q, i32 0, i64 2
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %arrayidx18, i32 0, i32 1
  %32 = load double, double* %y, align 8
  %add19 = fadd double %32, %31
  store double %add19, double* %y, align 8
  %33 = load double, double* %nstep, align 8
  %arrayidx20 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %q, i32 0, i64 3
  %y21 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %arrayidx20, i32 0, i32 1
  %34 = load double, double* %y21, align 8
  %sub22 = fsub double %34, %33
  store double %sub22, double* %y21, align 8
  %35 = load double, double* %nstep, align 8
  %arrayidx23 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %q, i32 0, i64 4
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %arrayidx23, i32 0, i32 2
  %36 = load double, double* %z, align 8
  %add24 = fadd double %36, %35
  store double %add24, double* %z, align 8
  %37 = load double, double* %nstep, align 8
  %arrayidx25 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %q, i32 0, i64 5
  %z26 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %arrayidx25, i32 0, i32 2
  %38 = load double, double* %z26, align 8
  %sub27 = fsub double %38, %37
  store double %sub27, double* %z26, align 8
  %39 = load %struct.texture*, %struct.texture** %t, align 8
  %type28 = getelementptr inbounds %struct.texture, %struct.texture* %39, i32 0, i32 1
  %40 = load i32, i32* %type28, align 4
  switch i32 %40, label %sw.default.114 [
    i32 2, label %sw.bb.29
    i32 3, label %sw.bb.41
    i32 8, label %sw.bb.53
    i32 9, label %sw.bb.65
    i32 11, label %sw.bb.77
    i32 12, label %sw.bb.89
    i32 4, label %sw.bb.101
    i32 1, label %sw.bb.113
    i32 0, label %sw.bb.113
    i32 5, label %sw.bb.113
    i32 7, label %sw.bb.113
    i32 6, label %sw.bb.113
    i32 10, label %sw.bb.113
    i32 13, label %sw.bb.113
  ]

sw.bb.29:                                         ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.38, %sw.bb.29
  %41 = load i32, i32* %k, align 4
  %cmp31 = icmp slt i32 %41, 6
  br i1 %cmp31, label %for.body.33, label %for.end.40

for.body.33:                                      ; preds = %for.cond.30
  %42 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %42 to i64
  %arrayidx35 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %q, i32 0, i64 %idxprom34
  %43 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %43 to i64
  %arrayidx37 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %tmpcol, i32 0, i64 %idxprom36
  %44 = load %struct.texture*, %struct.texture** %t, align 8
  call void @marble(%struct._GimpVector4* %arrayidx35, %struct._GimpVector4* %arrayidx37, %struct.texture* %44)
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.33
  %45 = load i32, i32* %k, align 4
  %inc39 = add nsw i32 %45, 1
  store i32 %inc39, i32* %k, align 4
  br label %for.cond.30

for.end.40:                                       ; preds = %for.cond.30
  br label %sw.epilog.116

sw.bb.41:                                         ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.50, %sw.bb.41
  %46 = load i32, i32* %k, align 4
  %cmp43 = icmp slt i32 %46, 6
  br i1 %cmp43, label %for.body.45, label %for.end.52

for.body.45:                                      ; preds = %for.cond.42
  %47 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %47 to i64
  %arrayidx47 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %q, i32 0, i64 %idxprom46
  %48 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %48 to i64
  %arrayidx49 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %tmpcol, i32 0, i64 %idxprom48
  %49 = load %struct.texture*, %struct.texture** %t, align 8
  call void @lizard(%struct._GimpVector4* %arrayidx47, %struct._GimpVector4* %arrayidx49, %struct.texture* %49)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.45
  %50 = load i32, i32* %k, align 4
  %inc51 = add nsw i32 %50, 1
  store i32 %inc51, i32* %k, align 4
  br label %for.cond.42

for.end.52:                                       ; preds = %for.cond.42
  br label %sw.epilog.116

sw.bb.53:                                         ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.62, %sw.bb.53
  %51 = load i32, i32* %k, align 4
  %cmp55 = icmp slt i32 %51, 6
  br i1 %cmp55, label %for.body.57, label %for.end.64

for.body.57:                                      ; preds = %for.cond.54
  %52 = load i32, i32* %k, align 4
  %idxprom58 = sext i32 %52 to i64
  %arrayidx59 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %q, i32 0, i64 %idxprom58
  %53 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %53 to i64
  %arrayidx61 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %tmpcol, i32 0, i64 %idxprom60
  %54 = load %struct.texture*, %struct.texture** %t, align 8
  call void @perlin(%struct._GimpVector4* %arrayidx59, %struct._GimpVector4* %arrayidx61, %struct.texture* %54)
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.57
  %55 = load i32, i32* %k, align 4
  %inc63 = add nsw i32 %55, 1
  store i32 %inc63, i32* %k, align 4
  br label %for.cond.54

for.end.64:                                       ; preds = %for.cond.54
  br label %sw.epilog.116

sw.bb.65:                                         ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.74, %sw.bb.65
  %56 = load i32, i32* %k, align 4
  %cmp67 = icmp slt i32 %56, 6
  br i1 %cmp67, label %for.body.69, label %for.end.76

for.body.69:                                      ; preds = %for.cond.66
  %57 = load i32, i32* %k, align 4
  %idxprom70 = sext i32 %57 to i64
  %arrayidx71 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %q, i32 0, i64 %idxprom70
  %58 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %58 to i64
  %arrayidx73 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %tmpcol, i32 0, i64 %idxprom72
  %59 = load %struct.texture*, %struct.texture** %t, align 8
  call void @wood(%struct._GimpVector4* %arrayidx71, %struct._GimpVector4* %arrayidx73, %struct.texture* %59)
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.69
  %60 = load i32, i32* %k, align 4
  %inc75 = add nsw i32 %60, 1
  store i32 %inc75, i32* %k, align 4
  br label %for.cond.66

for.end.76:                                       ; preds = %for.cond.66
  br label %sw.epilog.116

sw.bb.77:                                         ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.86, %sw.bb.77
  %61 = load i32, i32* %k, align 4
  %cmp79 = icmp slt i32 %61, 6
  br i1 %cmp79, label %for.body.81, label %for.end.88

for.body.81:                                      ; preds = %for.cond.78
  %62 = load i32, i32* %k, align 4
  %idxprom82 = sext i32 %62 to i64
  %arrayidx83 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %q, i32 0, i64 %idxprom82
  %63 = load i32, i32* %k, align 4
  %idxprom84 = sext i32 %63 to i64
  %arrayidx85 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %tmpcol, i32 0, i64 %idxprom84
  %64 = load %struct.texture*, %struct.texture** %t, align 8
  call void @spiral(%struct._GimpVector4* %arrayidx83, %struct._GimpVector4* %arrayidx85, %struct.texture* %64)
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.81
  %65 = load i32, i32* %k, align 4
  %inc87 = add nsw i32 %65, 1
  store i32 %inc87, i32* %k, align 4
  br label %for.cond.78

for.end.88:                                       ; preds = %for.cond.78
  br label %sw.epilog.116

sw.bb.89:                                         ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.98, %sw.bb.89
  %66 = load i32, i32* %k, align 4
  %cmp91 = icmp slt i32 %66, 6
  br i1 %cmp91, label %for.body.93, label %for.end.100

for.body.93:                                      ; preds = %for.cond.90
  %67 = load i32, i32* %k, align 4
  %idxprom94 = sext i32 %67 to i64
  %arrayidx95 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %q, i32 0, i64 %idxprom94
  %68 = load i32, i32* %k, align 4
  %idxprom96 = sext i32 %68 to i64
  %arrayidx97 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %tmpcol, i32 0, i64 %idxprom96
  %69 = load %struct.texture*, %struct.texture** %t, align 8
  call void @spots(%struct._GimpVector4* %arrayidx95, %struct._GimpVector4* %arrayidx97, %struct.texture* %69)
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.93
  %70 = load i32, i32* %k, align 4
  %inc99 = add nsw i32 %70, 1
  store i32 %inc99, i32* %k, align 4
  br label %for.cond.90

for.end.100:                                      ; preds = %for.cond.90
  br label %sw.epilog.116

sw.bb.101:                                        ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.110, %sw.bb.101
  %71 = load i32, i32* %k, align 4
  %cmp103 = icmp slt i32 %71, 6
  br i1 %cmp103, label %for.body.105, label %for.end.112

for.body.105:                                     ; preds = %for.cond.102
  %72 = load i32, i32* %k, align 4
  %idxprom106 = sext i32 %72 to i64
  %arrayidx107 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %q, i32 0, i64 %idxprom106
  %73 = load i32, i32* %k, align 4
  %idxprom108 = sext i32 %73 to i64
  %arrayidx109 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %tmpcol, i32 0, i64 %idxprom108
  %74 = load %struct.texture*, %struct.texture** %t, align 8
  call void @imagepixel(%struct._GimpVector4* %arrayidx107, %struct._GimpVector4* %arrayidx109, %struct.texture* %74)
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.105
  %75 = load i32, i32* %k, align 4
  %inc111 = add nsw i32 %75, 1
  store i32 %inc111, i32* %k, align 4
  br label %for.cond.102

for.end.112:                                      ; preds = %for.cond.102
  br label %sw.epilog.116

sw.bb.113:                                        ; preds = %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end
  br label %for.inc.135

sw.default.114:                                   ; preds = %for.end
  %76 = load %struct.texture*, %struct.texture** %t, align 8
  %type115 = getelementptr inbounds %struct.texture, %struct.texture* %76, i32 0, i32 1
  %77 = load i32, i32* %type115, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i32 0, i32 0), i32 %77)
  br label %sw.epilog.116

sw.epilog.116:                                    ; preds = %sw.default.114, %for.end.112, %for.end.100, %for.end.88, %for.end.76, %for.end.64, %for.end.52, %for.end.40
  %arrayidx117 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %tmpcol, i32 0, i64 0
  %x118 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %arrayidx117, i32 0, i32 0
  %78 = load double, double* %x118, align 8
  %arrayidx119 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %tmpcol, i32 0, i64 1
  %x120 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %arrayidx119, i32 0, i32 0
  %79 = load double, double* %x120, align 8
  %sub121 = fsub double %78, %79
  %x122 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %nres, i32 0, i32 0
  store double %sub121, double* %x122, align 8
  %arrayidx123 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %tmpcol, i32 0, i64 2
  %x124 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %arrayidx123, i32 0, i32 0
  %80 = load double, double* %x124, align 8
  %arrayidx125 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %tmpcol, i32 0, i64 3
  %x126 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %arrayidx125, i32 0, i32 0
  %81 = load double, double* %x126, align 8
  %sub127 = fsub double %80, %81
  %y128 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %nres, i32 0, i32 1
  store double %sub127, double* %y128, align 8
  %arrayidx129 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %tmpcol, i32 0, i64 4
  %x130 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %arrayidx129, i32 0, i32 0
  %82 = load double, double* %x130, align 8
  %arrayidx131 = getelementptr inbounds [6 x %struct._GimpVector4], [6 x %struct._GimpVector4]* %tmpcol, i32 0, i64 5
  %x132 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %arrayidx131, i32 0, i32 0
  %83 = load double, double* %x132, align 8
  %sub133 = fsub double %82, %83
  %z134 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %nres, i32 0, i32 2
  store double %sub133, double* %z134, align 8
  %84 = load %struct._GimpVector4*, %struct._GimpVector4** %res.addr, align 8
  call void @vadd(%struct._GimpVector4* %nres, %struct._GimpVector4* %84)
  call void @vnorm(%struct._GimpVector4* %nres, double 1.000000e+00)
  %85 = load %struct.texture*, %struct.texture** %t, align 8
  %amount = getelementptr inbounds %struct.texture, %struct.texture* %85, i32 0, i32 19
  %86 = load double, double* %amount, align 8
  call void @vmul(%struct._GimpVector4* %nres, double %86)
  %87 = load %struct._GimpVector4*, %struct._GimpVector4** %res.addr, align 8
  call void @vadd(%struct._GimpVector4* %87, %struct._GimpVector4* %nres)
  %88 = load %struct._GimpVector4*, %struct._GimpVector4** %res.addr, align 8
  call void @vnorm(%struct._GimpVector4* %88, double 1.000000e+00)
  br label %for.inc.135

for.inc.135:                                      ; preds = %sw.epilog.116, %sw.bb.113
  %89 = load i32, i32* %i, align 4
  %inc136 = add nsw i32 %89, 1
  store i32 %inc136, i32* %i, align 4
  br label %for.cond

for.end.137:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vnorm(%struct._GimpVector4* %a, double %v) #5 {
entry:
  %a.addr = alloca %struct._GimpVector4*, align 8
  %v.addr = alloca double, align 8
  %d = alloca double, align 8
  store %struct._GimpVector4* %a, %struct._GimpVector4** %a.addr, align 8
  store double %v, double* %v.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %call = call double @vlen(%struct._GimpVector4* %0)
  store double %call, double* %d, align 8
  %1 = load double, double* %v.addr, align 8
  %2 = load double, double* %d, align 8
  %div = fdiv double %1, %2
  %3 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %3, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %mul = fmul double %4, %div
  store double %mul, double* %x, align 8
  %5 = load double, double* %v.addr, align 8
  %6 = load double, double* %d, align 8
  %div1 = fdiv double %5, %6
  %7 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %7, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %mul2 = fmul double %8, %div1
  store double %mul2, double* %y, align 8
  %9 = load double, double* %v.addr, align 8
  %10 = load double, double* %d, align 8
  %div3 = fdiv double %9, %10
  %11 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %11, i32 0, i32 2
  %12 = load double, double* %z, align 8
  %mul4 = fmul double %12, %div3
  store double %mul4, double* %z, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vrotate(%struct._GimpVector4* %axis, double %ang, %struct._GimpVector4* %vector) #5 {
entry:
  %axis.addr = alloca %struct._GimpVector4*, align 8
  %ang.addr = alloca double, align 8
  %vector.addr = alloca %struct._GimpVector4*, align 8
  %rad = alloca double, align 8
  %ax = alloca double, align 8
  %ay = alloca double, align 8
  %az = alloca double, align 8
  %x1 = alloca double, align 8
  %y3 = alloca double, align 8
  %z5 = alloca double, align 8
  %c = alloca double, align 8
  %s = alloca double, align 8
  %c1 = alloca double, align 8
  %xx = alloca double, align 8
  %yy = alloca double, align 8
  %zz = alloca double, align 8
  %xy = alloca double, align 8
  %xz = alloca double, align 8
  %yz = alloca double, align 8
  %sx = alloca double, align 8
  %sy = alloca double, align 8
  %sz = alloca double, align 8
  store %struct._GimpVector4* %axis, %struct._GimpVector4** %axis.addr, align 8
  store double %ang, double* %ang.addr, align 8
  store %struct._GimpVector4* %vector, %struct._GimpVector4** %vector.addr, align 8
  %0 = load double, double* %ang.addr, align 8
  %div = fdiv double %0, 1.800000e+02
  %mul = fmul double %div, 0x400921FB54442D18
  store double %mul, double* %rad, align 8
  %1 = load %struct._GimpVector4*, %struct._GimpVector4** %vector.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %1, i32 0, i32 0
  %2 = load double, double* %x, align 8
  store double %2, double* %ax, align 8
  %3 = load %struct._GimpVector4*, %struct._GimpVector4** %vector.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %3, i32 0, i32 1
  %4 = load double, double* %y, align 8
  store double %4, double* %ay, align 8
  %5 = load %struct._GimpVector4*, %struct._GimpVector4** %vector.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %5, i32 0, i32 2
  %6 = load double, double* %z, align 8
  store double %6, double* %az, align 8
  %7 = load %struct._GimpVector4*, %struct._GimpVector4** %axis.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %7, i32 0, i32 0
  %8 = load double, double* %x2, align 8
  store double %8, double* %x1, align 8
  %9 = load %struct._GimpVector4*, %struct._GimpVector4** %axis.addr, align 8
  %y4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %9, i32 0, i32 1
  %10 = load double, double* %y4, align 8
  store double %10, double* %y3, align 8
  %11 = load %struct._GimpVector4*, %struct._GimpVector4** %axis.addr, align 8
  %z6 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %11, i32 0, i32 2
  %12 = load double, double* %z6, align 8
  store double %12, double* %z5, align 8
  %13 = load double, double* %rad, align 8
  %call = call double @cos(double %13) #4
  store double %call, double* %c, align 8
  %14 = load double, double* %rad, align 8
  %call7 = call double @sin(double %14) #4
  store double %call7, double* %s, align 8
  %15 = load double, double* %c, align 8
  %sub = fsub double 1.000000e+00, %15
  store double %sub, double* %c1, align 8
  %16 = load double, double* %c1, align 8
  %17 = load double, double* %x1, align 8
  %mul8 = fmul double %16, %17
  %18 = load double, double* %x1, align 8
  %mul9 = fmul double %mul8, %18
  store double %mul9, double* %xx, align 8
  %19 = load double, double* %c1, align 8
  %20 = load double, double* %y3, align 8
  %mul10 = fmul double %19, %20
  %21 = load double, double* %y3, align 8
  %mul11 = fmul double %mul10, %21
  store double %mul11, double* %yy, align 8
  %22 = load double, double* %c1, align 8
  %23 = load double, double* %z5, align 8
  %mul12 = fmul double %22, %23
  %24 = load double, double* %z5, align 8
  %mul13 = fmul double %mul12, %24
  store double %mul13, double* %zz, align 8
  %25 = load double, double* %c1, align 8
  %26 = load double, double* %x1, align 8
  %mul14 = fmul double %25, %26
  %27 = load double, double* %y3, align 8
  %mul15 = fmul double %mul14, %27
  store double %mul15, double* %xy, align 8
  %28 = load double, double* %c1, align 8
  %29 = load double, double* %x1, align 8
  %mul16 = fmul double %28, %29
  %30 = load double, double* %z5, align 8
  %mul17 = fmul double %mul16, %30
  store double %mul17, double* %xz, align 8
  %31 = load double, double* %c1, align 8
  %32 = load double, double* %y3, align 8
  %mul18 = fmul double %31, %32
  %33 = load double, double* %z5, align 8
  %mul19 = fmul double %mul18, %33
  store double %mul19, double* %yz, align 8
  %34 = load double, double* %s, align 8
  %35 = load double, double* %x1, align 8
  %mul20 = fmul double %34, %35
  store double %mul20, double* %sx, align 8
  %36 = load double, double* %s, align 8
  %37 = load double, double* %y3, align 8
  %mul21 = fmul double %36, %37
  store double %mul21, double* %sy, align 8
  %38 = load double, double* %s, align 8
  %39 = load double, double* %z5, align 8
  %mul22 = fmul double %38, %39
  store double %mul22, double* %sz, align 8
  %40 = load double, double* %xx, align 8
  %41 = load double, double* %c, align 8
  %add = fadd double %40, %41
  %42 = load double, double* %ax, align 8
  %mul23 = fmul double %add, %42
  %43 = load double, double* %xy, align 8
  %44 = load double, double* %sz, align 8
  %add24 = fadd double %43, %44
  %45 = load double, double* %ay, align 8
  %mul25 = fmul double %add24, %45
  %add26 = fadd double %mul23, %mul25
  %46 = load double, double* %xz, align 8
  %47 = load double, double* %sy, align 8
  %sub27 = fsub double %46, %47
  %48 = load double, double* %az, align 8
  %mul28 = fmul double %sub27, %48
  %add29 = fadd double %add26, %mul28
  %49 = load %struct._GimpVector4*, %struct._GimpVector4** %vector.addr, align 8
  %x30 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %49, i32 0, i32 0
  store double %add29, double* %x30, align 8
  %50 = load double, double* %xy, align 8
  %51 = load double, double* %sz, align 8
  %sub31 = fsub double %50, %51
  %52 = load double, double* %ax, align 8
  %mul32 = fmul double %sub31, %52
  %53 = load double, double* %yy, align 8
  %54 = load double, double* %c, align 8
  %add33 = fadd double %53, %54
  %55 = load double, double* %ay, align 8
  %mul34 = fmul double %add33, %55
  %add35 = fadd double %mul32, %mul34
  %56 = load double, double* %yz, align 8
  %57 = load double, double* %sx, align 8
  %add36 = fadd double %56, %57
  %58 = load double, double* %az, align 8
  %mul37 = fmul double %add36, %58
  %add38 = fadd double %add35, %mul37
  %59 = load %struct._GimpVector4*, %struct._GimpVector4** %vector.addr, align 8
  %y39 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %59, i32 0, i32 1
  store double %add38, double* %y39, align 8
  %60 = load double, double* %xz, align 8
  %61 = load double, double* %sy, align 8
  %add40 = fadd double %60, %61
  %62 = load double, double* %ax, align 8
  %mul41 = fmul double %add40, %62
  %63 = load double, double* %yz, align 8
  %64 = load double, double* %sx, align 8
  %sub42 = fsub double %63, %64
  %65 = load double, double* %ay, align 8
  %mul43 = fmul double %sub42, %65
  %add44 = fadd double %mul41, %mul43
  %66 = load double, double* %zz, align 8
  %67 = load double, double* %c, align 8
  %add45 = fadd double %66, %67
  %68 = load double, double* %az, align 8
  %mul46 = fmul double %add45, %68
  %add47 = fadd double %add44, %mul46
  %69 = load %struct._GimpVector4*, %struct._GimpVector4** %vector.addr, align 8
  %z48 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %69, i32 0, i32 2
  store double %add47, double* %z48, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @vmax(%struct._GimpVector4* %a) #0 {
entry:
  %a.addr = alloca %struct._GimpVector4*, align 8
  %max = alloca double, align 8
  store %struct._GimpVector4* %a, %struct._GimpVector4** %a.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %call = call double @fabs(double %1) #6
  store double %call, double* %max, align 8
  %2 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %2, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %call1 = call double @fabs(double %3) #6
  %4 = load double, double* %max, align 8
  %cmp = fcmp ogt double %call1, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %5, i32 0, i32 1
  %6 = load double, double* %y2, align 8
  %call3 = call double @fabs(double %6) #6
  store double %call3, double* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %7, i32 0, i32 2
  %8 = load double, double* %z, align 8
  %call4 = call double @fabs(double %8) #6
  %9 = load double, double* %max, align 8
  %cmp5 = fcmp ogt double %call4, %9
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z7 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %10, i32 0, i32 2
  %11 = load double, double* %z7, align 8
  %call8 = call double @fabs(double %11) #6
  store double %call8, double* %max, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %12 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %12, i32 0, i32 3
  %13 = load double, double* %w, align 8
  %call10 = call double @fabs(double %13) #6
  %14 = load double, double* %max, align 8
  %cmp11 = fcmp ogt double %call10, %14
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.9
  %15 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %w13 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %15, i32 0, i32 3
  %16 = load double, double* %w13, align 8
  %call14 = call double @fabs(double %16) #6
  store double %call14, double* %max, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.9
  %17 = load double, double* %max, align 8
  ret double %17
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vvmul(%struct._GimpVector4* %a, %struct._GimpVector4* %b) #5 {
entry:
  %a.addr = alloca %struct._GimpVector4*, align 8
  %b.addr = alloca %struct._GimpVector4*, align 8
  store %struct._GimpVector4* %a, %struct._GimpVector4** %a.addr, align 8
  store %struct._GimpVector4* %b, %struct._GimpVector4** %b.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %mul = fmul double %3, %1
  store double %mul, double* %x1, align 8
  %4 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %mul3 = fmul double %7, %5
  store double %mul3, double* %y2, align 8
  %8 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %8, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %10, i32 0, i32 2
  %11 = load double, double* %z4, align 8
  %mul5 = fmul double %11, %9
  store double %mul5, double* %z4, align 8
  %12 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %w = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %12, i32 0, i32 3
  %13 = load double, double* %w, align 8
  %14 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %w6 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %14, i32 0, i32 3
  %15 = load double, double* %w6, align 8
  %mul7 = fmul double %15, %13
  store double %mul7, double* %w6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calcphong(%struct.common* %obj, %struct.ray* %r2, %struct._GimpVector4* %col) #0 {
entry:
  %obj.addr = alloca %struct.common*, align 8
  %r2.addr = alloca %struct.ray*, align 8
  %col.addr = alloca %struct._GimpVector4*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca %struct.ray, align 8
  %b = alloca double, align 8
  %lcol = alloca %struct._GimpVector4, align 8
  %norm = alloca %struct._GimpVector4, align 8
  %pcol = alloca %struct._GimpVector4, align 8
  %ps = alloca double, align 8
  store %struct.common* %obj, %struct.common** %obj.addr, align 8
  store %struct.ray* %r2, %struct.ray** %r2.addr, align 8
  store %struct._GimpVector4* %col, %struct._GimpVector4** %col.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vcopy(%struct._GimpVector4* %pcol, %struct._GimpVector4* %0)
  %1 = load %struct.ray*, %struct.ray** %r2.addr, align 8
  %v2 = getelementptr inbounds %struct.ray, %struct.ray* %1, i32 0, i32 1
  call void @vcopy(%struct._GimpVector4* %norm, %struct._GimpVector4* %v2)
  %2 = load %struct.ray*, %struct.ray** %r2.addr, align 8
  %v1 = getelementptr inbounds %struct.ray, %struct.ray* %2, i32 0, i32 0
  call void @vsub(%struct._GimpVector4* %norm, %struct._GimpVector4* %v1)
  call void @vnorm(%struct._GimpVector4* %norm, double 1.000000e+00)
  %inside = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 2
  store i16 -1, i16* %inside, align 2
  %ior = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 3
  store double 1.000000e+00, double* %ior, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 2), align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %v11 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %5 = load %struct.ray*, %struct.ray** %r2.addr, align 8
  %v12 = getelementptr inbounds %struct.ray, %struct.ray* %5, i32 0, i32 0
  call void @vcopy(%struct._GimpVector4* %v11, %struct._GimpVector4* %v12)
  %v23 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 1
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.light], [5 x %struct.light]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 3), i32 0, i64 %idxprom
  %a = getelementptr inbounds %struct.light, %struct.light* %arrayidx, i32 0, i32 2
  call void @vcopy(%struct._GimpVector4* %v23, %struct._GimpVector4* %a)
  %v14 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %v15 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %v26 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 1
  call void @vmix(%struct._GimpVector4* %v14, %struct._GimpVector4* %v15, %struct._GimpVector4* %v26, double 9.999000e-01)
  %call = call i32 @traceray(%struct.ray* %r, %struct._GimpVector4* null, i32 -1, double 1.000000e+00)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.37

if.end:                                           ; preds = %for.body
  %v17 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %v28 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 1
  call void @vsub(%struct._GimpVector4* %v17, %struct._GimpVector4* %v28)
  %v19 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  call void @vnorm(%struct._GimpVector4* %v19, double 1.000000e+00)
  %v110 = getelementptr inbounds %struct.ray, %struct.ray* %r, i32 0, i32 0
  %call11 = call double @vdot(%struct._GimpVector4* %v110, %struct._GimpVector4* %norm)
  %sub = fsub double -0.000000e+00, %call11
  store double %sub, double* %b, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.end
  %7 = load i32, i32* %j, align 4
  %8 = load %struct.common*, %struct.common** %obj.addr, align 8
  %numtexture = getelementptr inbounds %struct.common, %struct.common* %8, i32 0, i32 2
  %9 = load i16, i16* %numtexture, align 2
  %conv = sext i16 %9 to i32
  %cmp13 = icmp slt i32 %7, %conv
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %10 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %10 to i64
  %11 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture = getelementptr inbounds %struct.common, %struct.common* %11, i32 0, i32 3
  %arrayidx17 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture, i32 0, i64 %idxprom16
  %type = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx17, i32 0, i32 1
  %12 = load i32, i32* %type, align 4
  %cmp18 = icmp ne i32 %12, 5
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.body.15
  br label %for.inc

if.end.21:                                        ; preds = %for.body.15
  %13 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %13 to i64
  %14 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture23 = getelementptr inbounds %struct.common, %struct.common* %14, i32 0, i32 3
  %arrayidx24 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture23, i32 0, i64 %idxprom22
  %phongsize = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx24, i32 0, i32 18
  %15 = load double, double* %phongsize, align 8
  store double %15, double* %ps, align 8
  %16 = load double, double* %b, align 8
  %17 = load double, double* %ps, align 8
  %sub25 = fsub double 1.000000e+00, %17
  %cmp26 = fcmp olt double %16, %sub25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.21
  br label %for.inc

if.end.29:                                        ; preds = %if.end.21
  %18 = load double, double* %b, align 8
  %19 = load double, double* %ps, align 8
  %sub30 = fsub double 1.000000e+00, %19
  %sub31 = fsub double %18, %sub30
  %20 = load double, double* %ps, align 8
  %div = fdiv double %sub31, %20
  store double %div, double* %ps, align 8
  %21 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %21 to i64
  %22 = load %struct.common*, %struct.common** %obj.addr, align 8
  %texture33 = getelementptr inbounds %struct.common, %struct.common* %22, i32 0, i32 3
  %arrayidx34 = getelementptr inbounds [20 x %struct.texture], [20 x %struct.texture]* %texture33, i32 0, i64 %idxprom32
  %phongcolor = getelementptr inbounds %struct.texture, %struct.texture* %arrayidx34, i32 0, i32 17
  call void @vcopy(%struct._GimpVector4* %lcol, %struct._GimpVector4* %phongcolor)
  %23 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %23 to i64
  %arrayidx36 = getelementptr inbounds [5 x %struct.light], [5 x %struct.light]* getelementptr inbounds (%struct.world_t, %struct.world_t* @world, i32 0, i32 3), i32 0, i64 %idxprom35
  %color = getelementptr inbounds %struct.light, %struct.light* %arrayidx36, i32 0, i32 1
  call void @vvmul(%struct._GimpVector4* %lcol, %struct._GimpVector4* %color)
  %24 = load double, double* %ps, align 8
  call void @vmul(%struct._GimpVector4* %lcol, double %24)
  %25 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vadd(%struct._GimpVector4* %25, %struct._GimpVector4* %lcol)
  br label %for.inc

for.inc:                                          ; preds = %if.end.29, %if.then.28, %if.then.20
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end, %if.then
  %27 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %27, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @vdot(%struct._GimpVector4* %a, %struct._GimpVector4* %b) #5 {
entry:
  %a.addr = alloca %struct._GimpVector4*, align 8
  %b.addr = alloca %struct._GimpVector4*, align 8
  store %struct._GimpVector4* %a, %struct._GimpVector4** %a.addr, align 8
  store %struct._GimpVector4* %b, %struct._GimpVector4** %b.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %mul = fmul double %1, %3
  %4 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %mul3 = fmul double %5, %7
  %add = fadd double %mul, %mul3
  %8 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %8, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %z4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %10, i32 0, i32 2
  %11 = load double, double* %z4, align 8
  %mul5 = fmul double %9, %11
  %add6 = fadd double %add, %mul5
  ret double %add6
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define internal double @turbulence(double* %point, double %lofreq, double %hifreq) #0 {
entry:
  %point.addr = alloca double*, align 8
  %lofreq.addr = alloca double, align 8
  %hifreq.addr = alloca double, align 8
  %freq = alloca double, align 8
  %t = alloca double, align 8
  %p = alloca [3 x double], align 16
  store double* %point, double** %point.addr, align 8
  store double %lofreq, double* %lofreq.addr, align 8
  store double %hifreq, double* %hifreq.addr, align 8
  %0 = load double*, double** %point.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %add = fadd double %1, 1.234560e+02
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  store double %add, double* %arrayidx1, align 8
  %2 = load double*, double** %point.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %2, i64 1
  %3 = load double, double* %arrayidx2, align 8
  %add3 = fadd double %3, 2.345670e+02
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  store double %add3, double* %arrayidx4, align 8
  %4 = load double*, double** %point.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %4, i64 2
  %5 = load double, double* %arrayidx5, align 8
  %add6 = fadd double %5, 3.456780e+02
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 2
  store double %add6, double* %arrayidx7, align 8
  store double 0.000000e+00, double* %t, align 8
  %6 = load double, double* %lofreq.addr, align 8
  store double %6, double* %freq, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load double, double* %freq, align 8
  %8 = load double, double* %hifreq.addr, align 8
  %cmp = fcmp olt double %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i32 0
  %call = call double @noise3(double* %arraydecay)
  %9 = load double, double* %freq, align 8
  %div = fdiv double %call, %9
  %10 = load double, double* %t, align 8
  %add8 = fadd double %10, %div
  store double %add8, double* %t, align 8
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %11 = load double, double* %arrayidx9, align 8
  %mul = fmul double %11, 2.000000e+00
  store double %mul, double* %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %12 = load double, double* %arrayidx10, align 8
  %mul11 = fmul double %12, 2.000000e+00
  store double %mul11, double* %arrayidx10, align 8
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 2
  %13 = load double, double* %arrayidx12, align 8
  %mul13 = fmul double %13, 2.000000e+00
  store double %mul13, double* %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load double, double* %freq, align 8
  %mul14 = fmul double %14, 2.000000e+00
  store double %mul14, double* %freq, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load double, double* %t, align 8
  %sub = fsub double %15, 3.000000e-01
  ret double %sub
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vcross(%struct._GimpVector4* %r, %struct._GimpVector4* %a, %struct._GimpVector4* %b) #5 {
entry:
  %r.addr = alloca %struct._GimpVector4*, align 8
  %a.addr = alloca %struct._GimpVector4*, align 8
  %b.addr = alloca %struct._GimpVector4*, align 8
  store %struct._GimpVector4* %r, %struct._GimpVector4** %r.addr, align 8
  store %struct._GimpVector4* %a, %struct._GimpVector4** %a.addr, align 8
  store %struct._GimpVector4* %b, %struct._GimpVector4** %b.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %0, i32 0, i32 1
  %1 = load double, double* %y, align 8
  %2 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %2, i32 0, i32 2
  %3 = load double, double* %z, align 8
  %mul = fmul double %1, %3
  %4 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %4, i32 0, i32 2
  %5 = load double, double* %z1, align 8
  %6 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %mul3 = fmul double %5, %7
  %sub = fsub double %mul, %mul3
  %8 = load %struct._GimpVector4*, %struct._GimpVector4** %r.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %8, i32 0, i32 0
  store double %sub, double* %x, align 8
  %9 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %x4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %9, i32 0, i32 0
  %10 = load double, double* %x4, align 8
  %11 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %z5 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %11, i32 0, i32 2
  %12 = load double, double* %z5, align 8
  %mul6 = fmul double %10, %12
  %13 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z7 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %13, i32 0, i32 2
  %14 = load double, double* %z7, align 8
  %15 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %x8 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %15, i32 0, i32 0
  %16 = load double, double* %x8, align 8
  %mul9 = fmul double %14, %16
  %sub10 = fsub double %mul6, %mul9
  %sub11 = fsub double -0.000000e+00, %sub10
  %17 = load %struct._GimpVector4*, %struct._GimpVector4** %r.addr, align 8
  %y12 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %17, i32 0, i32 1
  store double %sub11, double* %y12, align 8
  %18 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %x13 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %18, i32 0, i32 0
  %19 = load double, double* %x13, align 8
  %20 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %y14 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %20, i32 0, i32 1
  %21 = load double, double* %y14, align 8
  %mul15 = fmul double %19, %21
  %22 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y16 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %22, i32 0, i32 1
  %23 = load double, double* %y16, align 8
  %24 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %x17 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %24, i32 0, i32 0
  %25 = load double, double* %x17, align 8
  %mul18 = fmul double %23, %25
  %sub19 = fsub double %mul15, %mul18
  %26 = load %struct._GimpVector4*, %struct._GimpVector4** %r.addr, align 8
  %z20 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %26, i32 0, i32 2
  store double %sub19, double* %z20, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @vdist2(%struct._GimpVector4* %a, %struct._GimpVector4* %b) #5 {
entry:
  %a.addr = alloca %struct._GimpVector4*, align 8
  %b.addr = alloca %struct._GimpVector4*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  store %struct._GimpVector4* %a, %struct._GimpVector4** %a.addr, align 8
  store %struct._GimpVector4* %b, %struct._GimpVector4** %b.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %0, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %2 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %2, i32 0, i32 0
  %3 = load double, double* %x2, align 8
  %sub = fsub double %1, %3
  store double %sub, double* %x, align 8
  %4 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y3 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %4, i32 0, i32 1
  %5 = load double, double* %y3, align 8
  %6 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %y4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %6, i32 0, i32 1
  %7 = load double, double* %y4, align 8
  %sub5 = fsub double %5, %7
  store double %sub5, double* %y, align 8
  %8 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z6 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %8, i32 0, i32 2
  %9 = load double, double* %z6, align 8
  %10 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %z7 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %10, i32 0, i32 2
  %11 = load double, double* %z7, align 8
  %sub8 = fsub double %9, %11
  store double %sub8, double* %z, align 8
  %12 = load double, double* %x, align 8
  %13 = load double, double* %x, align 8
  %mul = fmul double %12, %13
  %14 = load double, double* %y, align 8
  %15 = load double, double* %y, align 8
  %mul9 = fmul double %14, %15
  %add = fadd double %mul, %mul9
  %16 = load double, double* %z, align 8
  %17 = load double, double* %z, align 8
  %mul10 = fmul double %16, %17
  %add11 = fadd double %add, %mul10
  ret double %add11
}

; Function Attrs: nounwind uwtable
define internal void @checker(%struct._GimpVector4* %q, %struct._GimpVector4* %col, %struct.texture* %t) #0 {
entry:
  %q.addr = alloca %struct._GimpVector4*, align 8
  %col.addr = alloca %struct._GimpVector4*, align 8
  %t.addr = alloca %struct.texture*, align 8
  %c = alloca i32, align 4
  %p = alloca %struct._GimpVector4, align 8
  store %struct._GimpVector4* %q, %struct._GimpVector4** %q.addr, align 8
  store %struct._GimpVector4* %col, %struct._GimpVector4** %col.addr, align 8
  store %struct.texture* %t, %struct.texture** %t.addr, align 8
  store i32 0, i32* %c, align 4
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %q.addr, align 8
  %1 = bitcast %struct._GimpVector4* %p to i8*
  %2 = bitcast %struct._GimpVector4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false)
  %3 = load %struct.texture*, %struct.texture** %t.addr, align 8
  call void @transformpoint(%struct._GimpVector4* %p, %struct.texture* %3)
  call void @vmul(%struct._GimpVector4* %p, double 2.500000e-01)
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %add = fadd double %4, 1.000000e-05
  store double %add, double* %x, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %add1 = fadd double %5, 1.000000e-05
  store double %add1, double* %y, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 2
  %6 = load double, double* %z, align 8
  %add2 = fadd double %6, 1.000000e-05
  store double %add2, double* %z, align 8
  %x3 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  %7 = load double, double* %x3, align 8
  %cmp = fcmp olt double %7, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %x4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  %8 = load double, double* %x4, align 8
  %sub = fsub double 5.000000e-01, %8
  %x5 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  store double %sub, double* %x5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %y6 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  %9 = load double, double* %y6, align 8
  %cmp7 = fcmp olt double %9, 0.000000e+00
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %y9 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  %10 = load double, double* %y9, align 8
  %sub10 = fsub double 5.000000e-01, %10
  %y11 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  store double %sub10, double* %y11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %z13 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 2
  %11 = load double, double* %z13, align 8
  %cmp14 = fcmp olt double %11, 0.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.12
  %z16 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 2
  %12 = load double, double* %z16, align 8
  %sub17 = fsub double 5.000000e-01, %12
  %z18 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 2
  store double %sub17, double* %z18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end.12
  %x20 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  %13 = load double, double* %x20, align 8
  %x21 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  %14 = load double, double* %x21, align 8
  %conv = fptosi double %14 to i32
  %conv22 = sitofp i32 %conv to double
  %sub23 = fsub double %13, %conv22
  %cmp24 = fcmp olt double %sub23, 5.000000e-01
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.19
  %15 = load i32, i32* %c, align 4
  %xor = xor i32 %15, 1
  store i32 %xor, i32* %c, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.19
  %y28 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  %16 = load double, double* %y28, align 8
  %y29 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  %17 = load double, double* %y29, align 8
  %conv30 = fptosi double %17 to i32
  %conv31 = sitofp i32 %conv30 to double
  %sub32 = fsub double %16, %conv31
  %cmp33 = fcmp olt double %sub32, 5.000000e-01
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.27
  %18 = load i32, i32* %c, align 4
  %xor36 = xor i32 %18, 1
  store i32 %xor36, i32* %c, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.27
  %z38 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 2
  %19 = load double, double* %z38, align 8
  %z39 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 2
  %20 = load double, double* %z39, align 8
  %conv40 = fptosi double %20 to i32
  %conv41 = sitofp i32 %conv40 to double
  %sub42 = fsub double %19, %conv41
  %cmp43 = fcmp olt double %sub42, 5.000000e-01
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.37
  %21 = load i32, i32* %c, align 4
  %xor46 = xor i32 %21, 1
  store i32 %xor46, i32* %c, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.37
  %22 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %23 = load i32, i32* %c, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.47
  %24 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %24, i32 0, i32 3
  %25 = bitcast %struct._GimpVector4* %22 to i8*
  %26 = bitcast %struct._GimpVector4* %color1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  br label %cond.end

cond.false:                                       ; preds = %if.end.47
  %27 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color2 = getelementptr inbounds %struct.texture, %struct.texture* %27, i32 0, i32 4
  %28 = bitcast %struct._GimpVector4* %22 to i8*
  %29 = bitcast %struct._GimpVector4* %color2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @marble(%struct._GimpVector4* %q, %struct._GimpVector4* %col, %struct.texture* %t) #0 {
entry:
  %q.addr = alloca %struct._GimpVector4*, align 8
  %col.addr = alloca %struct._GimpVector4*, align 8
  %t.addr = alloca %struct.texture*, align 8
  %f = alloca double, align 8
  %p = alloca %struct._GimpVector4, align 8
  store %struct._GimpVector4* %q, %struct._GimpVector4** %q.addr, align 8
  store %struct._GimpVector4* %col, %struct._GimpVector4** %col.addr, align 8
  store %struct.texture* %t, %struct.texture** %t.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %q.addr, align 8
  %1 = bitcast %struct._GimpVector4* %p to i8*
  %2 = bitcast %struct._GimpVector4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false)
  %3 = load %struct.texture*, %struct.texture** %t.addr, align 8
  call void @transformpoint(%struct._GimpVector4* %p, %struct.texture* %3)
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %mul = fmul double %4, 4.000000e+00
  %call = call double @sin(double %mul) #4
  %div = fdiv double %call, 2.000000e+00
  %add = fadd double %div, 5.000000e-01
  store double %add, double* %f, align 8
  %5 = load double, double* %f, align 8
  %6 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %exp = getelementptr inbounds %struct.texture, %struct.texture* %6, i32 0, i32 20
  %7 = load double, double* %exp, align 8
  %call1 = call double @pow(double %5, double %7) #4
  store double %call1, double* %f, align 8
  %8 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %flags = getelementptr inbounds %struct.texture, %struct.texture* %8, i32 0, i32 2
  %9 = load i64, i64* %flags, align 8
  %and = and i64 %9, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %11 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %gradient = getelementptr inbounds %struct.texture, %struct.texture* %11, i32 0, i32 5
  %12 = load double, double* %f, align 8
  call void @gradcolor(%struct._GimpVector4* %10, %struct.gradient* %gradient, double %12)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %14 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %14, i32 0, i32 3
  %15 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color2 = getelementptr inbounds %struct.texture, %struct.texture* %15, i32 0, i32 4
  %16 = load double, double* %f, align 8
  call void @vmix(%struct._GimpVector4* %13, %struct._GimpVector4* %color1, %struct._GimpVector4* %color2, double %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lizard(%struct._GimpVector4* %q, %struct._GimpVector4* %col, %struct.texture* %t) #0 {
entry:
  %q.addr = alloca %struct._GimpVector4*, align 8
  %col.addr = alloca %struct._GimpVector4*, align 8
  %t.addr = alloca %struct.texture*, align 8
  %f = alloca double, align 8
  %p = alloca %struct._GimpVector4, align 8
  store %struct._GimpVector4* %q, %struct._GimpVector4** %q.addr, align 8
  store %struct._GimpVector4* %col, %struct._GimpVector4** %col.addr, align 8
  store %struct.texture* %t, %struct.texture** %t.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %q.addr, align 8
  %1 = bitcast %struct._GimpVector4* %p to i8*
  %2 = bitcast %struct._GimpVector4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false)
  %3 = load %struct.texture*, %struct.texture** %t.addr, align 8
  call void @transformpoint(%struct._GimpVector4* %p, %struct.texture* %3)
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %mul = fmul double %4, 4.000000e+00
  %call = call double @sin(double %mul) #4
  %call1 = call double @fabs(double %call) #6
  store double %call1, double* %f, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %mul2 = fmul double %5, 4.000000e+00
  %call3 = call double @sin(double %mul2) #4
  %call4 = call double @fabs(double %call3) #6
  %6 = load double, double* %f, align 8
  %add = fadd double %6, %call4
  store double %add, double* %f, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 2
  %7 = load double, double* %z, align 8
  %mul5 = fmul double %7, 4.000000e+00
  %call6 = call double @sin(double %mul5) #4
  %call7 = call double @fabs(double %call6) #6
  %8 = load double, double* %f, align 8
  %add8 = fadd double %8, %call7
  store double %add8, double* %f, align 8
  %9 = load double, double* %f, align 8
  %div = fdiv double %9, 3.000000e+00
  store double %div, double* %f, align 8
  %10 = load double, double* %f, align 8
  %11 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %exp = getelementptr inbounds %struct.texture, %struct.texture* %11, i32 0, i32 20
  %12 = load double, double* %exp, align 8
  %call9 = call double @pow(double %10, double %12) #4
  store double %call9, double* %f, align 8
  %13 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %flags = getelementptr inbounds %struct.texture, %struct.texture* %13, i32 0, i32 2
  %14 = load i64, i64* %flags, align 8
  %and = and i64 %14, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %16 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %gradient = getelementptr inbounds %struct.texture, %struct.texture* %16, i32 0, i32 5
  %17 = load double, double* %f, align 8
  call void @gradcolor(%struct._GimpVector4* %15, %struct.gradient* %gradient, double %17)
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %19 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %19, i32 0, i32 3
  %20 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color2 = getelementptr inbounds %struct.texture, %struct.texture* %20, i32 0, i32 4
  %21 = load double, double* %f, align 8
  call void @vmix(%struct._GimpVector4* %18, %struct._GimpVector4* %color1, %struct._GimpVector4* %color2, double %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @perlin(%struct._GimpVector4* %q, %struct._GimpVector4* %col, %struct.texture* %t) #0 {
entry:
  %q.addr = alloca %struct._GimpVector4*, align 8
  %col.addr = alloca %struct._GimpVector4*, align 8
  %t.addr = alloca %struct.texture*, align 8
  %f = alloca double, align 8
  %point = alloca [3 x double], align 16
  %p = alloca %struct._GimpVector4, align 8
  store %struct._GimpVector4* %q, %struct._GimpVector4** %q.addr, align 8
  store %struct._GimpVector4* %col, %struct._GimpVector4** %col.addr, align 8
  store %struct.texture* %t, %struct.texture** %t.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %q.addr, align 8
  %1 = bitcast %struct._GimpVector4* %p to i8*
  %2 = bitcast %struct._GimpVector4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false)
  %3 = load %struct.texture*, %struct.texture** %t.addr, align 8
  call void @transformpoint(%struct._GimpVector4* %p, %struct.texture* %3)
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %point, i32 0, i64 0
  store double %4, double* %arrayidx, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %point, i32 0, i64 1
  store double %5, double* %arrayidx1, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 2
  %6 = load double, double* %z, align 8
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %point, i32 0, i64 2
  store double %6, double* %arrayidx2, align 8
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %point, i32 0, i32 0
  %call = call double @turbulence(double* %arraydecay, double 1.000000e+00, double 2.560000e+02)
  %mul = fmul double %call, 3.000000e-01
  %add = fadd double %mul, 5.000000e-01
  store double %add, double* %f, align 8
  %7 = load double, double* %f, align 8
  %8 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %exp = getelementptr inbounds %struct.texture, %struct.texture* %8, i32 0, i32 20
  %9 = load double, double* %exp, align 8
  %call3 = call double @pow(double %7, double %9) #4
  store double %call3, double* %f, align 8
  %10 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %flags = getelementptr inbounds %struct.texture, %struct.texture* %10, i32 0, i32 2
  %11 = load i64, i64* %flags, align 8
  %and = and i64 %11, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %13 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %gradient = getelementptr inbounds %struct.texture, %struct.texture* %13, i32 0, i32 5
  %14 = load double, double* %f, align 8
  call void @gradcolor(%struct._GimpVector4* %12, %struct.gradient* %gradient, double %14)
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %16 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %16, i32 0, i32 3
  %17 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color2 = getelementptr inbounds %struct.texture, %struct.texture* %17, i32 0, i32 4
  %18 = load double, double* %f, align 8
  call void @vmix(%struct._GimpVector4* %15, %struct._GimpVector4* %color1, %struct._GimpVector4* %color2, double %18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wood(%struct._GimpVector4* %q, %struct._GimpVector4* %col, %struct.texture* %t) #0 {
entry:
  %q.addr = alloca %struct._GimpVector4*, align 8
  %col.addr = alloca %struct._GimpVector4*, align 8
  %t.addr = alloca %struct.texture*, align 8
  %f = alloca double, align 8
  %p = alloca %struct._GimpVector4, align 8
  store %struct._GimpVector4* %q, %struct._GimpVector4** %q.addr, align 8
  store %struct._GimpVector4* %col, %struct._GimpVector4** %col.addr, align 8
  store %struct.texture* %t, %struct.texture** %t.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %q.addr, align 8
  %1 = bitcast %struct._GimpVector4* %p to i8*
  %2 = bitcast %struct._GimpVector4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false)
  %3 = load %struct.texture*, %struct.texture** %t.addr, align 8
  call void @transformpoint(%struct._GimpVector4* %p, %struct.texture* %3)
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %call = call double @fabs(double %4) #6
  store double %call, double* %f, align 8
  %5 = load double, double* %f, align 8
  %6 = load double, double* %f, align 8
  %conv = fptosi double %6 to i32
  %conv1 = sitofp i32 %conv to double
  %sub = fsub double %5, %conv1
  store double %sub, double* %f, align 8
  %7 = load double, double* %f, align 8
  %8 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %exp = getelementptr inbounds %struct.texture, %struct.texture* %8, i32 0, i32 20
  %9 = load double, double* %exp, align 8
  %call2 = call double @pow(double %7, double %9) #4
  store double %call2, double* %f, align 8
  %10 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %flags = getelementptr inbounds %struct.texture, %struct.texture* %10, i32 0, i32 2
  %11 = load i64, i64* %flags, align 8
  %and = and i64 %11, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %13 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %gradient = getelementptr inbounds %struct.texture, %struct.texture* %13, i32 0, i32 5
  %14 = load double, double* %f, align 8
  call void @gradcolor(%struct._GimpVector4* %12, %struct.gradient* %gradient, double %14)
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %16 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %16, i32 0, i32 3
  %17 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color2 = getelementptr inbounds %struct.texture, %struct.texture* %17, i32 0, i32 4
  %18 = load double, double* %f, align 8
  call void @vmix(%struct._GimpVector4* %15, %struct._GimpVector4* %color1, %struct._GimpVector4* %color2, double %18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @spiral(%struct._GimpVector4* %q, %struct._GimpVector4* %col, %struct.texture* %t) #0 {
entry:
  %q.addr = alloca %struct._GimpVector4*, align 8
  %col.addr = alloca %struct._GimpVector4*, align 8
  %t.addr = alloca %struct.texture*, align 8
  %f = alloca double, align 8
  %p = alloca %struct._GimpVector4, align 8
  store %struct._GimpVector4* %q, %struct._GimpVector4** %q.addr, align 8
  store %struct._GimpVector4* %col, %struct._GimpVector4** %col.addr, align 8
  store %struct.texture* %t, %struct.texture** %t.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %q.addr, align 8
  %1 = bitcast %struct._GimpVector4* %p to i8*
  %2 = bitcast %struct._GimpVector4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false)
  %3 = load %struct.texture*, %struct.texture** %t.addr, align 8
  call void @transformpoint(%struct._GimpVector4* %p, %struct.texture* %3)
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 2
  %5 = load double, double* %z, align 8
  %call = call double @atan2(double %4, double %5) #4
  %div = fdiv double %call, 0x400921FB54442D18
  %div1 = fdiv double %div, 2.000000e+00
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  %6 = load double, double* %y, align 8
  %add = fadd double %div1, %6
  %add2 = fadd double %add, 9.999900e+04
  %call3 = call double @fabs(double %add2) #6
  store double %call3, double* %f, align 8
  %7 = load double, double* %f, align 8
  %8 = load double, double* %f, align 8
  %conv = fptosi double %8 to i32
  %conv4 = sitofp i32 %conv to double
  %sub = fsub double %7, %conv4
  store double %sub, double* %f, align 8
  %9 = load double, double* %f, align 8
  %10 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %exp = getelementptr inbounds %struct.texture, %struct.texture* %10, i32 0, i32 20
  %11 = load double, double* %exp, align 8
  %call5 = call double @pow(double %9, double %11) #4
  store double %call5, double* %f, align 8
  %12 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %flags = getelementptr inbounds %struct.texture, %struct.texture* %12, i32 0, i32 2
  %13 = load i64, i64* %flags, align 8
  %and = and i64 %13, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %15 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %gradient = getelementptr inbounds %struct.texture, %struct.texture* %15, i32 0, i32 5
  %16 = load double, double* %f, align 8
  call void @gradcolor(%struct._GimpVector4* %14, %struct.gradient* %gradient, double %16)
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %18 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %18, i32 0, i32 3
  %19 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color2 = getelementptr inbounds %struct.texture, %struct.texture* %19, i32 0, i32 4
  %20 = load double, double* %f, align 8
  call void @vmix(%struct._GimpVector4* %17, %struct._GimpVector4* %color1, %struct._GimpVector4* %color2, double %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @spots(%struct._GimpVector4* %q, %struct._GimpVector4* %col, %struct.texture* %t) #0 {
entry:
  %q.addr = alloca %struct._GimpVector4*, align 8
  %col.addr = alloca %struct._GimpVector4*, align 8
  %t.addr = alloca %struct.texture*, align 8
  %f = alloca double, align 8
  %p = alloca %struct._GimpVector4, align 8
  %r = alloca %struct._GimpVector4, align 8
  store %struct._GimpVector4* %q, %struct._GimpVector4** %q.addr, align 8
  store %struct._GimpVector4* %col, %struct._GimpVector4** %col.addr, align 8
  store %struct.texture* %t, %struct.texture** %t.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %q.addr, align 8
  %1 = bitcast %struct._GimpVector4* %p to i8*
  %2 = bitcast %struct._GimpVector4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false)
  %3 = load %struct.texture*, %struct.texture** %t.addr, align 8
  call void @transformpoint(%struct._GimpVector4* %p, %struct.texture* %3)
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %add = fadd double %4, 1.000000e+04
  store double %add, double* %x, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %add1 = fadd double %5, 1.000000e+04
  store double %add1, double* %y, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 2
  %6 = load double, double* %z, align 8
  %add2 = fadd double %6, 1.000000e+04
  store double %add2, double* %z, align 8
  %x3 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  %7 = load double, double* %x3, align 8
  %add4 = fadd double %7, 5.000000e-01
  %conv = fptosi double %add4 to i32
  %conv5 = sitofp i32 %conv to double
  %y6 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  %8 = load double, double* %y6, align 8
  %add7 = fadd double %8, 5.000000e-01
  %conv8 = fptosi double %add7 to i32
  %conv9 = sitofp i32 %conv8 to double
  %z10 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 2
  %9 = load double, double* %z10, align 8
  %add11 = fadd double %9, 5.000000e-01
  %conv12 = fptosi double %add11 to i32
  %conv13 = sitofp i32 %conv12 to double
  call void @vset(%struct._GimpVector4* %r, double %conv5, double %conv9, double %conv13)
  %call = call double @vdist(%struct._GimpVector4* %p, %struct._GimpVector4* %r)
  store double %call, double* %f, align 8
  %10 = load double, double* %f, align 8
  %mul = fmul double %10, 0x400921FB54442D18
  %call14 = call double @cos(double %mul) #4
  store double %call14, double* %f, align 8
  %11 = load double, double* %f, align 8
  %cmp = fcmp ogt double %11, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.20

cond.false:                                       ; preds = %entry
  %12 = load double, double* %f, align 8
  %cmp16 = fcmp olt double %12, 0.000000e+00
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.false
  br label %cond.end

cond.false.19:                                    ; preds = %cond.false
  %13 = load double, double* %f, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.19, %cond.true.18
  %cond = phi double [ 0.000000e+00, %cond.true.18 ], [ %13, %cond.false.19 ]
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.end, %cond.true
  %cond21 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond21, double* %f, align 8
  %14 = load double, double* %f, align 8
  %15 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %exp = getelementptr inbounds %struct.texture, %struct.texture* %15, i32 0, i32 20
  %16 = load double, double* %exp, align 8
  %call22 = call double @pow(double %14, double %16) #4
  store double %call22, double* %f, align 8
  %17 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %flags = getelementptr inbounds %struct.texture, %struct.texture* %17, i32 0, i32 2
  %18 = load i64, i64* %flags, align 8
  %and = and i64 %18, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.20
  %19 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %20 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %gradient = getelementptr inbounds %struct.texture, %struct.texture* %20, i32 0, i32 5
  %21 = load double, double* %f, align 8
  call void @gradcolor(%struct._GimpVector4* %19, %struct.gradient* %gradient, double %21)
  br label %if.end

if.else:                                          ; preds = %cond.end.20
  %22 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %23 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color1 = getelementptr inbounds %struct.texture, %struct.texture* %23, i32 0, i32 3
  %24 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %color2 = getelementptr inbounds %struct.texture, %struct.texture* %24, i32 0, i32 4
  %25 = load double, double* %f, align 8
  call void @vmix(%struct._GimpVector4* %22, %struct._GimpVector4* %color1, %struct._GimpVector4* %color2, double %25)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @imagepixel(%struct._GimpVector4* %q, %struct._GimpVector4* %col, %struct.texture* %t) #0 {
entry:
  %q.addr = alloca %struct._GimpVector4*, align 8
  %col.addr = alloca %struct._GimpVector4*, align 8
  %t.addr = alloca %struct.texture*, align 8
  %p = alloca %struct._GimpVector4, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %rgb = alloca i8*, align 8
  store %struct._GimpVector4* %q, %struct._GimpVector4** %q.addr, align 8
  store %struct._GimpVector4* %col, %struct._GimpVector4** %col.addr, align 8
  store %struct.texture* %t, %struct.texture** %t.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %q.addr, align 8
  %1 = bitcast %struct._GimpVector4* %p to i8*
  %2 = bitcast %struct._GimpVector4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false)
  %3 = load %struct.texture*, %struct.texture** %t.addr, align 8
  call void @transformpoint(%struct._GimpVector4* %p, %struct.texture* %3)
  %x1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 0
  %4 = load double, double* %x1, align 8
  %5 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %image = getelementptr inbounds %struct.texture, %struct.texture* %5, i32 0, i32 12
  %xsize = getelementptr inbounds %struct.image, %struct.image* %image, i32 0, i32 0
  %6 = load i16, i16* %xsize, align 2
  %conv = sext i16 %6 to i32
  %conv2 = sitofp i32 %conv to double
  %mul = fmul double %4, %conv2
  %conv3 = fptosi double %mul to i32
  store i32 %conv3, i32* %x, align 4
  %y4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %p, i32 0, i32 1
  %7 = load double, double* %y4, align 8
  %8 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %image5 = getelementptr inbounds %struct.texture, %struct.texture* %8, i32 0, i32 12
  %ysize = getelementptr inbounds %struct.image, %struct.image* %image5, i32 0, i32 1
  %9 = load i16, i16* %ysize, align 2
  %conv6 = sext i16 %9 to i32
  %conv7 = sitofp i32 %conv6 to double
  %mul8 = fmul double %7, %conv7
  %conv9 = fptosi double %mul8 to i32
  store i32 %conv9, i32* %y, align 4
  %10 = load i32, i32* %x, align 4
  %11 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %image10 = getelementptr inbounds %struct.texture, %struct.texture* %11, i32 0, i32 12
  %xsize11 = getelementptr inbounds %struct.image, %struct.image* %image10, i32 0, i32 0
  %12 = load i16, i16* %xsize11, align 2
  %conv12 = sext i16 %12 to i32
  %rem = srem i32 %10, %conv12
  %13 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %image13 = getelementptr inbounds %struct.texture, %struct.texture* %13, i32 0, i32 12
  %xsize14 = getelementptr inbounds %struct.image, %struct.image* %image13, i32 0, i32 0
  %14 = load i16, i16* %xsize14, align 2
  %conv15 = sext i16 %14 to i32
  %add = add nsw i32 %rem, %conv15
  %15 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %image16 = getelementptr inbounds %struct.texture, %struct.texture* %15, i32 0, i32 12
  %xsize17 = getelementptr inbounds %struct.image, %struct.image* %image16, i32 0, i32 0
  %16 = load i16, i16* %xsize17, align 2
  %conv18 = sext i16 %16 to i32
  %rem19 = srem i32 %add, %conv18
  store i32 %rem19, i32* %x, align 4
  %17 = load i32, i32* %y, align 4
  %18 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %image20 = getelementptr inbounds %struct.texture, %struct.texture* %18, i32 0, i32 12
  %ysize21 = getelementptr inbounds %struct.image, %struct.image* %image20, i32 0, i32 1
  %19 = load i16, i16* %ysize21, align 2
  %conv22 = sext i16 %19 to i32
  %rem23 = srem i32 %17, %conv22
  %20 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %image24 = getelementptr inbounds %struct.texture, %struct.texture* %20, i32 0, i32 12
  %ysize25 = getelementptr inbounds %struct.image, %struct.image* %image24, i32 0, i32 1
  %21 = load i16, i16* %ysize25, align 2
  %conv26 = sext i16 %21 to i32
  %add27 = add nsw i32 %rem23, %conv26
  %22 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %image28 = getelementptr inbounds %struct.texture, %struct.texture* %22, i32 0, i32 12
  %ysize29 = getelementptr inbounds %struct.image, %struct.image* %image28, i32 0, i32 1
  %23 = load i16, i16* %ysize29, align 2
  %conv30 = sext i16 %23 to i32
  %rem31 = srem i32 %add27, %conv30
  store i32 %rem31, i32* %y, align 4
  %24 = load i32, i32* %x, align 4
  %mul32 = mul nsw i32 %24, 3
  %25 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %image33 = getelementptr inbounds %struct.texture, %struct.texture* %25, i32 0, i32 12
  %ysize34 = getelementptr inbounds %struct.image, %struct.image* %image33, i32 0, i32 1
  %26 = load i16, i16* %ysize34, align 2
  %conv35 = sext i16 %26 to i32
  %sub = sub nsw i32 %conv35, 1
  %27 = load i32, i32* %y, align 4
  %sub36 = sub nsw i32 %sub, %27
  %28 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %image37 = getelementptr inbounds %struct.texture, %struct.texture* %28, i32 0, i32 12
  %xsize38 = getelementptr inbounds %struct.image, %struct.image* %image37, i32 0, i32 0
  %29 = load i16, i16* %xsize38, align 2
  %conv39 = sext i16 %29 to i32
  %mul40 = mul nsw i32 %sub36, %conv39
  %mul41 = mul nsw i32 %mul40, 3
  %add42 = add nsw i32 %mul32, %mul41
  %idxprom = sext i32 %add42 to i64
  %30 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %image43 = getelementptr inbounds %struct.texture, %struct.texture* %30, i32 0, i32 12
  %rgb44 = getelementptr inbounds %struct.image, %struct.image* %image43, i32 0, i32 2
  %31 = load i8*, i8** %rgb44, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 %idxprom
  store i8* %arrayidx, i8** %rgb, align 8
  %32 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %33 = load i8*, i8** %rgb, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %34 to i32
  %conv47 = sitofp i32 %conv46 to double
  %div = fdiv double %conv47, 2.550000e+02
  %35 = load i8*, i8** %rgb, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %36 to i32
  %conv50 = sitofp i32 %conv49 to double
  %div51 = fdiv double %conv50, 2.550000e+02
  %37 = load i8*, i8** %rgb, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %37, i64 2
  %38 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %38 to i32
  %conv54 = sitofp i32 %conv53 to double
  %div55 = fdiv double %conv54, 2.550000e+02
  call void @vset(%struct._GimpVector4* %32, double %div, double %div51, double %div55)
  ret void
}

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @transformpoint(%struct._GimpVector4* %p, %struct.texture* %t) #0 {
entry:
  %p.addr = alloca %struct._GimpVector4*, align 8
  %t.addr = alloca %struct.texture*, align 8
  %point = alloca [3 x double], align 16
  %f = alloca double, align 8
  store %struct._GimpVector4* %p, %struct._GimpVector4** %p.addr, align 8
  store %struct.texture* %t, %struct.texture** %t.addr, align 8
  %0 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %rotate = getelementptr inbounds %struct.texture, %struct.texture* %0, i32 0, i32 11
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %cmp = fcmp une double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %rotate1 = getelementptr inbounds %struct.texture, %struct.texture* %2, i32 0, i32 11
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate1, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %cmp2 = fcmp une double %3, 0.000000e+00
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %rotate4 = getelementptr inbounds %struct.texture, %struct.texture* %4, i32 0, i32 11
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %rotate4, i32 0, i32 2
  %5 = load double, double* %z, align 8
  %cmp5 = fcmp une double %5, 0.000000e+00
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %6 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %7 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %rotate6 = getelementptr inbounds %struct.texture, %struct.texture* %7, i32 0, i32 11
  call void @vvrotate(%struct._GimpVector4* %6, %struct._GimpVector4* %rotate6)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.3
  %8 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %9 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %scale = getelementptr inbounds %struct.texture, %struct.texture* %9, i32 0, i32 9
  call void @vvdiv(%struct._GimpVector4* %8, %struct._GimpVector4* %scale)
  %10 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %11 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %translate = getelementptr inbounds %struct.texture, %struct.texture* %11, i32 0, i32 10
  call void @vsub(%struct._GimpVector4* %10, %struct._GimpVector4* %translate)
  %12 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %turbulence = getelementptr inbounds %struct.texture, %struct.texture* %12, i32 0, i32 21
  %x7 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %turbulence, i32 0, i32 0
  %13 = load double, double* %x7, align 8
  %cmp8 = fcmp une double %13, 0.000000e+00
  br i1 %cmp8, label %if.then.17, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end
  %14 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %turbulence10 = getelementptr inbounds %struct.texture, %struct.texture* %14, i32 0, i32 21
  %y11 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %turbulence10, i32 0, i32 1
  %15 = load double, double* %y11, align 8
  %cmp12 = fcmp une double %15, 0.000000e+00
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.9
  %16 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %turbulence14 = getelementptr inbounds %struct.texture, %struct.texture* %16, i32 0, i32 21
  %z15 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %turbulence14, i32 0, i32 2
  %17 = load double, double* %z15, align 8
  %cmp16 = fcmp une double %17, 0.000000e+00
  br i1 %cmp16, label %if.then.17, label %if.end.36

if.then.17:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.9, %if.end
  %18 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %x18 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %18, i32 0, i32 0
  %19 = load double, double* %x18, align 8
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %point, i32 0, i64 0
  store double %19, double* %arrayidx, align 8
  %20 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %y19 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %20, i32 0, i32 1
  %21 = load double, double* %y19, align 8
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %point, i32 0, i64 1
  store double %21, double* %arrayidx20, align 8
  %22 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %z21 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %22, i32 0, i32 2
  %23 = load double, double* %z21, align 8
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %point, i32 0, i64 2
  store double %23, double* %arrayidx22, align 8
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %point, i32 0, i32 0
  %call = call double @turbulence(double* %arraydecay, double 1.000000e+00, double 2.560000e+02)
  store double %call, double* %f, align 8
  %24 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %turbulence23 = getelementptr inbounds %struct.texture, %struct.texture* %24, i32 0, i32 21
  %x24 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %turbulence23, i32 0, i32 0
  %25 = load double, double* %x24, align 8
  %26 = load double, double* %f, align 8
  %mul = fmul double %25, %26
  %27 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %x25 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %27, i32 0, i32 0
  %28 = load double, double* %x25, align 8
  %add = fadd double %28, %mul
  store double %add, double* %x25, align 8
  %29 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %turbulence26 = getelementptr inbounds %struct.texture, %struct.texture* %29, i32 0, i32 21
  %y27 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %turbulence26, i32 0, i32 1
  %30 = load double, double* %y27, align 8
  %31 = load double, double* %f, align 8
  %mul28 = fmul double %30, %31
  %32 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %y29 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %32, i32 0, i32 1
  %33 = load double, double* %y29, align 8
  %add30 = fadd double %33, %mul28
  store double %add30, double* %y29, align 8
  %34 = load %struct.texture*, %struct.texture** %t.addr, align 8
  %turbulence31 = getelementptr inbounds %struct.texture, %struct.texture* %34, i32 0, i32 21
  %z32 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %turbulence31, i32 0, i32 2
  %35 = load double, double* %z32, align 8
  %36 = load double, double* %f, align 8
  %mul33 = fmul double %35, %36
  %37 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  %z34 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %37, i32 0, i32 2
  %38 = load double, double* %z34, align 8
  %add35 = fadd double %38, %mul33
  store double %add35, double* %z34, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.17, %lor.lhs.false.13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vvrotate(%struct._GimpVector4* %p, %struct._GimpVector4* %rot) #5 {
entry:
  %p.addr = alloca %struct._GimpVector4*, align 8
  %rot.addr = alloca %struct._GimpVector4*, align 8
  %axis = alloca %struct._GimpVector4, align 8
  store %struct._GimpVector4* %p, %struct._GimpVector4** %p.addr, align 8
  store %struct._GimpVector4* %rot, %struct._GimpVector4** %rot.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %rot.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %cmp = fcmp une double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @vset(%struct._GimpVector4* %axis, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %2 = load %struct._GimpVector4*, %struct._GimpVector4** %rot.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %4 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  call void @vrotate(%struct._GimpVector4* %axis, double %3, %struct._GimpVector4* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpVector4*, %struct._GimpVector4** %rot.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %5, i32 0, i32 1
  %6 = load double, double* %y, align 8
  %cmp2 = fcmp une double %6, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  call void @vset(%struct._GimpVector4* %axis, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %7 = load %struct._GimpVector4*, %struct._GimpVector4** %rot.addr, align 8
  %y4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %7, i32 0, i32 1
  %8 = load double, double* %y4, align 8
  %9 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  call void @vrotate(%struct._GimpVector4* %axis, double %8, %struct._GimpVector4* %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %10 = load %struct._GimpVector4*, %struct._GimpVector4** %rot.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %10, i32 0, i32 2
  %11 = load double, double* %z, align 8
  %cmp6 = fcmp une double %11, 0.000000e+00
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  call void @vset(%struct._GimpVector4* %axis, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %12 = load %struct._GimpVector4*, %struct._GimpVector4** %rot.addr, align 8
  %z8 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %12, i32 0, i32 2
  %13 = load double, double* %z8, align 8
  %14 = load %struct._GimpVector4*, %struct._GimpVector4** %p.addr, align 8
  call void @vrotate(%struct._GimpVector4* %axis, double %13, %struct._GimpVector4* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vvdiv(%struct._GimpVector4* %a, %struct._GimpVector4* %b) #5 {
entry:
  %a.addr = alloca %struct._GimpVector4*, align 8
  %b.addr = alloca %struct._GimpVector4*, align 8
  store %struct._GimpVector4* %a, %struct._GimpVector4** %a.addr, align 8
  store %struct._GimpVector4* %b, %struct._GimpVector4** %b.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %div = fdiv double %3, %1
  store double %div, double* %x1, align 8
  %4 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %div3 = fdiv double %7, %5
  store double %div3, double* %y2, align 8
  %8 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %8, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %10, i32 0, i32 2
  %11 = load double, double* %z4, align 8
  %div5 = fdiv double %11, %9
  store double %div5, double* %z4, align 8
  ret void
}

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind uwtable
define internal void @gradcolor(%struct._GimpVector4* %col, %struct.gradient* %t, double %val) #0 {
entry:
  %col.addr = alloca %struct._GimpVector4*, align 8
  %t.addr = alloca %struct.gradient*, align 8
  %val.addr = alloca double, align 8
  %i = alloca i32, align 4
  %d = alloca double, align 8
  %tmpcol = alloca %struct._GimpVector4, align 8
  store %struct._GimpVector4* %col, %struct._GimpVector4** %col.addr, align 8
  store %struct.gradient* %t, %struct.gradient** %t.addr, align 8
  store double %val, double* %val.addr, align 8
  %0 = load double, double* %val.addr, align 8
  %cmp = fcmp ogt double %0, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %1 = load double, double* %val.addr, align 8
  %cmp1 = fcmp olt double %1, 0.000000e+00
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load double, double* %val.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi double [ 0.000000e+00, %cond.true.2 ], [ %2, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond5, double* %val.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.4
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.gradient*, %struct.gradient** %t.addr, align 8
  %numcol = getelementptr inbounds %struct.gradient, %struct.gradient* %4, i32 0, i32 0
  %5 = load i16, i16* %numcol, align 2
  %conv = sext i16 %5 to i32
  %cmp6 = icmp slt i32 %3, %conv
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.gradient*, %struct.gradient** %t.addr, align 8
  %pos = getelementptr inbounds %struct.gradient, %struct.gradient* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %pos, i32 0, i64 %idxprom
  %8 = load double, double* %arrayidx, align 8
  %9 = load double, double* %val.addr, align 8
  %cmp8 = fcmp oeq double %8, %9
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load %struct.gradient*, %struct.gradient** %t.addr, align 8
  %color = getelementptr inbounds %struct.gradient, %struct.gradient* %12, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [5 x %struct._GimpVector4], [5 x %struct._GimpVector4]* %color, i32 0, i64 %idxprom10
  %13 = bitcast %struct._GimpVector4* %10 to i8*
  %14 = bitcast %struct._GimpVector4* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct.gradient*, %struct.gradient** %t.addr, align 8
  %pos13 = getelementptr inbounds %struct.gradient, %struct.gradient* %16, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [5 x double], [5 x double]* %pos13, i32 0, i64 %idxprom12
  %17 = load double, double* %arrayidx14, align 8
  %18 = load double, double* %val.addr, align 8
  %cmp15 = fcmp ogt double %17, %18
  br i1 %cmp15, label %if.then.17, label %if.end.38

if.then.17:                                       ; preds = %if.end
  %19 = load double, double* %val.addr, align 8
  %20 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %20, 1
  %idxprom18 = sext i32 %sub to i64
  %21 = load %struct.gradient*, %struct.gradient** %t.addr, align 8
  %pos19 = getelementptr inbounds %struct.gradient, %struct.gradient* %21, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [5 x double], [5 x double]* %pos19, i32 0, i64 %idxprom18
  %22 = load double, double* %arrayidx20, align 8
  %sub21 = fsub double %19, %22
  %23 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %23 to i64
  %24 = load %struct.gradient*, %struct.gradient** %t.addr, align 8
  %pos23 = getelementptr inbounds %struct.gradient, %struct.gradient* %24, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [5 x double], [5 x double]* %pos23, i32 0, i64 %idxprom22
  %25 = load double, double* %arrayidx24, align 8
  %26 = load i32, i32* %i, align 4
  %sub25 = sub nsw i32 %26, 1
  %idxprom26 = sext i32 %sub25 to i64
  %27 = load %struct.gradient*, %struct.gradient** %t.addr, align 8
  %pos27 = getelementptr inbounds %struct.gradient, %struct.gradient* %27, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [5 x double], [5 x double]* %pos27, i32 0, i64 %idxprom26
  %28 = load double, double* %arrayidx28, align 8
  %sub29 = fsub double %25, %28
  %div = fdiv double %sub21, %sub29
  store double %div, double* %d, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %29 to i64
  %30 = load %struct.gradient*, %struct.gradient** %t.addr, align 8
  %color31 = getelementptr inbounds %struct.gradient, %struct.gradient* %30, i32 0, i32 2
  %arrayidx32 = getelementptr inbounds [5 x %struct._GimpVector4], [5 x %struct._GimpVector4]* %color31, i32 0, i64 %idxprom30
  call void @vcopy(%struct._GimpVector4* %tmpcol, %struct._GimpVector4* %arrayidx32)
  %31 = load double, double* %d, align 8
  call void @vmul(%struct._GimpVector4* %tmpcol, double %31)
  %32 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vcopy(%struct._GimpVector4* %32, %struct._GimpVector4* %tmpcol)
  %33 = load i32, i32* %i, align 4
  %sub33 = sub nsw i32 %33, 1
  %idxprom34 = sext i32 %sub33 to i64
  %34 = load %struct.gradient*, %struct.gradient** %t.addr, align 8
  %color35 = getelementptr inbounds %struct.gradient, %struct.gradient* %34, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [5 x %struct._GimpVector4], [5 x %struct._GimpVector4]* %color35, i32 0, i64 %idxprom34
  call void @vcopy(%struct._GimpVector4* %tmpcol, %struct._GimpVector4* %arrayidx36)
  %35 = load double, double* %d, align 8
  %sub37 = fsub double 1.000000e+00, %35
  call void @vmul(%struct._GimpVector4* %tmpcol, double %sub37)
  %36 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vadd(%struct._GimpVector4* %36, %struct._GimpVector4* %tmpcol)
  br label %return

if.end.38:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i32 0, i32 0))
  %38 = load %struct._GimpVector4*, %struct._GimpVector4** %col.addr, align 8
  call void @vset(%struct._GimpVector4* %38, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  br label %return

return:                                           ; preds = %for.end, %if.then.17, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal double @vdist(%struct._GimpVector4* %a, %struct._GimpVector4* %b) #5 {
entry:
  %a.addr = alloca %struct._GimpVector4*, align 8
  %b.addr = alloca %struct._GimpVector4*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  store %struct._GimpVector4* %a, %struct._GimpVector4** %a.addr, align 8
  store %struct._GimpVector4* %b, %struct._GimpVector4** %b.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %0, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %2 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %2, i32 0, i32 0
  %3 = load double, double* %x2, align 8
  %sub = fsub double %1, %3
  store double %sub, double* %x, align 8
  %4 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y3 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %4, i32 0, i32 1
  %5 = load double, double* %y3, align 8
  %6 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %y4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %6, i32 0, i32 1
  %7 = load double, double* %y4, align 8
  %sub5 = fsub double %5, %7
  store double %sub5, double* %y, align 8
  %8 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z6 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %8, i32 0, i32 2
  %9 = load double, double* %z6, align 8
  %10 = load %struct._GimpVector4*, %struct._GimpVector4** %b.addr, align 8
  %z7 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %10, i32 0, i32 2
  %11 = load double, double* %z7, align 8
  %sub8 = fsub double %9, %11
  store double %sub8, double* %z, align 8
  %12 = load double, double* %x, align 8
  %13 = load double, double* %x, align 8
  %mul = fmul double %12, %13
  %14 = load double, double* %y, align 8
  %15 = load double, double* %y, align 8
  %mul9 = fmul double %14, %15
  %add = fadd double %mul, %mul9
  %16 = load double, double* %z, align 8
  %17 = load double, double* %z, align 8
  %mul10 = fmul double %16, %17
  %add11 = fadd double %add, %mul10
  %call = call double @sqrt(double %add11) #4
  ret double %call
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind uwtable
define internal void @trianglenormal(%struct._GimpVector4* %n, double* %t, %struct.triangle* %tri) #0 {
entry:
  %n.addr = alloca %struct._GimpVector4*, align 8
  %t.addr = alloca double*, align 8
  %tri.addr = alloca %struct.triangle*, align 8
  %tmp = alloca %struct.triangle, align 8
  store %struct._GimpVector4* %n, %struct._GimpVector4** %n.addr, align 8
  store double* %t, double** %t.addr, align 8
  store %struct.triangle* %tri, %struct.triangle** %tri.addr, align 8
  %b = getelementptr inbounds %struct.triangle, %struct.triangle* %tmp, i32 0, i32 2
  %0 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %b1 = getelementptr inbounds %struct.triangle, %struct.triangle* %0, i32 0, i32 2
  call void @vcopy(%struct._GimpVector4* %b, %struct._GimpVector4* %b1)
  %c = getelementptr inbounds %struct.triangle, %struct.triangle* %tmp, i32 0, i32 3
  %1 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %c2 = getelementptr inbounds %struct.triangle, %struct.triangle* %1, i32 0, i32 3
  call void @vcopy(%struct._GimpVector4* %c, %struct._GimpVector4* %c2)
  %b3 = getelementptr inbounds %struct.triangle, %struct.triangle* %tmp, i32 0, i32 2
  %2 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %a = getelementptr inbounds %struct.triangle, %struct.triangle* %2, i32 0, i32 1
  call void @vsub(%struct._GimpVector4* %b3, %struct._GimpVector4* %a)
  %c4 = getelementptr inbounds %struct.triangle, %struct.triangle* %tmp, i32 0, i32 3
  %3 = load %struct.triangle*, %struct.triangle** %tri.addr, align 8
  %a5 = getelementptr inbounds %struct.triangle, %struct.triangle* %3, i32 0, i32 1
  call void @vsub(%struct._GimpVector4* %c4, %struct._GimpVector4* %a5)
  %a6 = getelementptr inbounds %struct.triangle, %struct.triangle* %tmp, i32 0, i32 1
  call void @vset(%struct._GimpVector4* %a6, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %4 = load %struct._GimpVector4*, %struct._GimpVector4** %n.addr, align 8
  %b7 = getelementptr inbounds %struct.triangle, %struct.triangle* %tmp, i32 0, i32 2
  %c8 = getelementptr inbounds %struct.triangle, %struct.triangle* %tmp, i32 0, i32 3
  call void @vcross(%struct._GimpVector4* %4, %struct._GimpVector4* %b7, %struct._GimpVector4* %c8)
  %5 = load double*, double** %t.addr, align 8
  %tobool = icmp ne double* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %b9 = getelementptr inbounds %struct.triangle, %struct.triangle* %tmp, i32 0, i32 2
  %c10 = getelementptr inbounds %struct.triangle, %struct.triangle* %tmp, i32 0, i32 3
  %call = call double @vdot(%struct._GimpVector4* %b9, %struct._GimpVector4* %c10)
  %6 = load double*, double** %t.addr, align 8
  store double %call, double* %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @vlen(%struct._GimpVector4* %a) #5 {
entry:
  %a.addr = alloca %struct._GimpVector4*, align 8
  store %struct._GimpVector4* %a, %struct._GimpVector4** %a.addr, align 8
  %0 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %mul = fmul double %1, %3
  %4 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %mul3 = fmul double %5, %7
  %add = fadd double %mul, %mul3
  %8 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %8, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load %struct._GimpVector4*, %struct._GimpVector4** %a.addr, align 8
  %z4 = getelementptr inbounds %struct._GimpVector4, %struct._GimpVector4* %10, i32 0, i32 2
  %11 = load double, double* %z4, align 8
  %mul5 = fmul double %9, %11
  %add6 = fadd double %add, %mul5
  %call = call double @sqrt(double %add6) #4
  ret double %call
}

; Function Attrs: nounwind uwtable
define internal double @noise3(double* %vec) #0 {
entry:
  %vec.addr = alloca double*, align 8
  %bx0 = alloca i32, align 4
  %bx1 = alloca i32, align 4
  %by0 = alloca i32, align 4
  %by1 = alloca i32, align 4
  %bz0 = alloca i32, align 4
  %bz1 = alloca i32, align 4
  %b00 = alloca i32, align 4
  %b10 = alloca i32, align 4
  %b01 = alloca i32, align 4
  %b11 = alloca i32, align 4
  %rx0 = alloca double, align 8
  %rx1 = alloca double, align 8
  %ry0 = alloca double, align 8
  %ry1 = alloca double, align 8
  %rz0 = alloca double, align 8
  %rz1 = alloca double, align 8
  %q = alloca double*, align 8
  %sx = alloca double, align 8
  %sy = alloca double, align 8
  %sz = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  %t = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store double* %vec, double** %vec.addr, align 8
  %0 = load i32, i32* @start, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @start, align 4
  call void @init()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %1, i64 0
  %2 = load double, double* %arrayidx, align 8
  %add = fadd double %2, 1.000000e+04
  store double %add, double* %t, align 8
  %3 = load double, double* %t, align 8
  %conv = fptosi double %3 to i32
  %and = and i32 %conv, 255
  store i32 %and, i32* %bx0, align 4
  %4 = load i32, i32* %bx0, align 4
  %add1 = add nsw i32 %4, 1
  %and2 = and i32 %add1, 255
  store i32 %and2, i32* %bx1, align 4
  %5 = load double, double* %t, align 8
  %6 = load double, double* %t, align 8
  %conv3 = fptosi double %6 to i32
  %conv4 = sitofp i32 %conv3 to double
  %sub = fsub double %5, %conv4
  store double %sub, double* %rx0, align 8
  %7 = load double, double* %rx0, align 8
  %sub5 = fsub double %7, 1.000000e+00
  store double %sub5, double* %rx1, align 8
  %8 = load double*, double** %vec.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %8, i64 1
  %9 = load double, double* %arrayidx6, align 8
  %add7 = fadd double %9, 1.000000e+04
  store double %add7, double* %t, align 8
  %10 = load double, double* %t, align 8
  %conv8 = fptosi double %10 to i32
  %and9 = and i32 %conv8, 255
  store i32 %and9, i32* %by0, align 4
  %11 = load i32, i32* %by0, align 4
  %add10 = add nsw i32 %11, 1
  %and11 = and i32 %add10, 255
  store i32 %and11, i32* %by1, align 4
  %12 = load double, double* %t, align 8
  %13 = load double, double* %t, align 8
  %conv12 = fptosi double %13 to i32
  %conv13 = sitofp i32 %conv12 to double
  %sub14 = fsub double %12, %conv13
  store double %sub14, double* %ry0, align 8
  %14 = load double, double* %ry0, align 8
  %sub15 = fsub double %14, 1.000000e+00
  store double %sub15, double* %ry1, align 8
  %15 = load double*, double** %vec.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %15, i64 2
  %16 = load double, double* %arrayidx16, align 8
  %add17 = fadd double %16, 1.000000e+04
  store double %add17, double* %t, align 8
  %17 = load double, double* %t, align 8
  %conv18 = fptosi double %17 to i32
  %and19 = and i32 %conv18, 255
  store i32 %and19, i32* %bz0, align 4
  %18 = load i32, i32* %bz0, align 4
  %add20 = add nsw i32 %18, 1
  %and21 = and i32 %add20, 255
  store i32 %and21, i32* %bz1, align 4
  %19 = load double, double* %t, align 8
  %20 = load double, double* %t, align 8
  %conv22 = fptosi double %20 to i32
  %conv23 = sitofp i32 %conv22 to double
  %sub24 = fsub double %19, %conv23
  store double %sub24, double* %rz0, align 8
  %21 = load double, double* %rz0, align 8
  %sub25 = fsub double %21, 1.000000e+00
  store double %sub25, double* %rz1, align 8
  %22 = load i32, i32* %bx0, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [514 x i32], [514 x i32]* @p, i32 0, i64 %idxprom
  %23 = load i32, i32* %arrayidx26, align 4
  store i32 %23, i32* %i, align 4
  %24 = load i32, i32* %bx1, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [514 x i32], [514 x i32]* @p, i32 0, i64 %idxprom27
  %25 = load i32, i32* %arrayidx28, align 4
  store i32 %25, i32* %j, align 4
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %by0, align 4
  %add29 = add nsw i32 %26, %27
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [514 x i32], [514 x i32]* @p, i32 0, i64 %idxprom30
  %28 = load i32, i32* %arrayidx31, align 4
  store i32 %28, i32* %b00, align 4
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %by0, align 4
  %add32 = add nsw i32 %29, %30
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [514 x i32], [514 x i32]* @p, i32 0, i64 %idxprom33
  %31 = load i32, i32* %arrayidx34, align 4
  store i32 %31, i32* %b10, align 4
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %by1, align 4
  %add35 = add nsw i32 %32, %33
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds [514 x i32], [514 x i32]* @p, i32 0, i64 %idxprom36
  %34 = load i32, i32* %arrayidx37, align 4
  store i32 %34, i32* %b01, align 4
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %by1, align 4
  %add38 = add nsw i32 %35, %36
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [514 x i32], [514 x i32]* @p, i32 0, i64 %idxprom39
  %37 = load i32, i32* %arrayidx40, align 4
  store i32 %37, i32* %b11, align 4
  %38 = load double, double* %rx0, align 8
  %39 = load double, double* %rx0, align 8
  %mul = fmul double %38, %39
  %40 = load double, double* %rx0, align 8
  %mul41 = fmul double 2.000000e+00, %40
  %sub42 = fsub double 3.000000e+00, %mul41
  %mul43 = fmul double %mul, %sub42
  store double %mul43, double* %sx, align 8
  %41 = load double, double* %ry0, align 8
  %42 = load double, double* %ry0, align 8
  %mul44 = fmul double %41, %42
  %43 = load double, double* %ry0, align 8
  %mul45 = fmul double 2.000000e+00, %43
  %sub46 = fsub double 3.000000e+00, %mul45
  %mul47 = fmul double %mul44, %sub46
  store double %mul47, double* %sy, align 8
  %44 = load double, double* %rz0, align 8
  %45 = load double, double* %rz0, align 8
  %mul48 = fmul double %44, %45
  %46 = load double, double* %rz0, align 8
  %mul49 = fmul double 2.000000e+00, %46
  %sub50 = fsub double 3.000000e+00, %mul49
  %mul51 = fmul double %mul48, %sub50
  store double %mul51, double* %sz, align 8
  %47 = load i32, i32* %b00, align 4
  %48 = load i32, i32* %bz0, align 4
  %add52 = add nsw i32 %47, %48
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds [514 x [3 x double]], [514 x [3 x double]]* @g, i32 0, i64 %idxprom53
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %arrayidx54, i32 0, i32 0
  store double* %arraydecay, double** %q, align 8
  %49 = load double, double* %rx0, align 8
  %50 = load double*, double** %q, align 8
  %arrayidx55 = getelementptr inbounds double, double* %50, i64 0
  %51 = load double, double* %arrayidx55, align 8
  %mul56 = fmul double %49, %51
  %52 = load double, double* %ry0, align 8
  %53 = load double*, double** %q, align 8
  %arrayidx57 = getelementptr inbounds double, double* %53, i64 1
  %54 = load double, double* %arrayidx57, align 8
  %mul58 = fmul double %52, %54
  %add59 = fadd double %mul56, %mul58
  %55 = load double, double* %rz0, align 8
  %56 = load double*, double** %q, align 8
  %arrayidx60 = getelementptr inbounds double, double* %56, i64 2
  %57 = load double, double* %arrayidx60, align 8
  %mul61 = fmul double %55, %57
  %add62 = fadd double %add59, %mul61
  store double %add62, double* %u, align 8
  %58 = load i32, i32* %b10, align 4
  %59 = load i32, i32* %bz0, align 4
  %add63 = add nsw i32 %58, %59
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [514 x [3 x double]], [514 x [3 x double]]* @g, i32 0, i64 %idxprom64
  %arraydecay66 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx65, i32 0, i32 0
  store double* %arraydecay66, double** %q, align 8
  %60 = load double, double* %rx1, align 8
  %61 = load double*, double** %q, align 8
  %arrayidx67 = getelementptr inbounds double, double* %61, i64 0
  %62 = load double, double* %arrayidx67, align 8
  %mul68 = fmul double %60, %62
  %63 = load double, double* %ry0, align 8
  %64 = load double*, double** %q, align 8
  %arrayidx69 = getelementptr inbounds double, double* %64, i64 1
  %65 = load double, double* %arrayidx69, align 8
  %mul70 = fmul double %63, %65
  %add71 = fadd double %mul68, %mul70
  %66 = load double, double* %rz0, align 8
  %67 = load double*, double** %q, align 8
  %arrayidx72 = getelementptr inbounds double, double* %67, i64 2
  %68 = load double, double* %arrayidx72, align 8
  %mul73 = fmul double %66, %68
  %add74 = fadd double %add71, %mul73
  store double %add74, double* %v, align 8
  %69 = load double, double* %u, align 8
  %70 = load double, double* %sx, align 8
  %71 = load double, double* %v, align 8
  %72 = load double, double* %u, align 8
  %sub75 = fsub double %71, %72
  %mul76 = fmul double %70, %sub75
  %add77 = fadd double %69, %mul76
  store double %add77, double* %a, align 8
  %73 = load i32, i32* %b01, align 4
  %74 = load i32, i32* %bz0, align 4
  %add78 = add nsw i32 %73, %74
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds [514 x [3 x double]], [514 x [3 x double]]* @g, i32 0, i64 %idxprom79
  %arraydecay81 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx80, i32 0, i32 0
  store double* %arraydecay81, double** %q, align 8
  %75 = load double, double* %rx0, align 8
  %76 = load double*, double** %q, align 8
  %arrayidx82 = getelementptr inbounds double, double* %76, i64 0
  %77 = load double, double* %arrayidx82, align 8
  %mul83 = fmul double %75, %77
  %78 = load double, double* %ry1, align 8
  %79 = load double*, double** %q, align 8
  %arrayidx84 = getelementptr inbounds double, double* %79, i64 1
  %80 = load double, double* %arrayidx84, align 8
  %mul85 = fmul double %78, %80
  %add86 = fadd double %mul83, %mul85
  %81 = load double, double* %rz0, align 8
  %82 = load double*, double** %q, align 8
  %arrayidx87 = getelementptr inbounds double, double* %82, i64 2
  %83 = load double, double* %arrayidx87, align 8
  %mul88 = fmul double %81, %83
  %add89 = fadd double %add86, %mul88
  store double %add89, double* %u, align 8
  %84 = load i32, i32* %b11, align 4
  %85 = load i32, i32* %bz0, align 4
  %add90 = add nsw i32 %84, %85
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds [514 x [3 x double]], [514 x [3 x double]]* @g, i32 0, i64 %idxprom91
  %arraydecay93 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx92, i32 0, i32 0
  store double* %arraydecay93, double** %q, align 8
  %86 = load double, double* %rx1, align 8
  %87 = load double*, double** %q, align 8
  %arrayidx94 = getelementptr inbounds double, double* %87, i64 0
  %88 = load double, double* %arrayidx94, align 8
  %mul95 = fmul double %86, %88
  %89 = load double, double* %ry1, align 8
  %90 = load double*, double** %q, align 8
  %arrayidx96 = getelementptr inbounds double, double* %90, i64 1
  %91 = load double, double* %arrayidx96, align 8
  %mul97 = fmul double %89, %91
  %add98 = fadd double %mul95, %mul97
  %92 = load double, double* %rz0, align 8
  %93 = load double*, double** %q, align 8
  %arrayidx99 = getelementptr inbounds double, double* %93, i64 2
  %94 = load double, double* %arrayidx99, align 8
  %mul100 = fmul double %92, %94
  %add101 = fadd double %add98, %mul100
  store double %add101, double* %v, align 8
  %95 = load double, double* %u, align 8
  %96 = load double, double* %sx, align 8
  %97 = load double, double* %v, align 8
  %98 = load double, double* %u, align 8
  %sub102 = fsub double %97, %98
  %mul103 = fmul double %96, %sub102
  %add104 = fadd double %95, %mul103
  store double %add104, double* %b, align 8
  %99 = load double, double* %a, align 8
  %100 = load double, double* %sy, align 8
  %101 = load double, double* %b, align 8
  %102 = load double, double* %a, align 8
  %sub105 = fsub double %101, %102
  %mul106 = fmul double %100, %sub105
  %add107 = fadd double %99, %mul106
  store double %add107, double* %c, align 8
  %103 = load i32, i32* %b00, align 4
  %104 = load i32, i32* %bz1, align 4
  %add108 = add nsw i32 %103, %104
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds [514 x [3 x double]], [514 x [3 x double]]* @g, i32 0, i64 %idxprom109
  %arraydecay111 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx110, i32 0, i32 0
  store double* %arraydecay111, double** %q, align 8
  %105 = load double, double* %rx0, align 8
  %106 = load double*, double** %q, align 8
  %arrayidx112 = getelementptr inbounds double, double* %106, i64 0
  %107 = load double, double* %arrayidx112, align 8
  %mul113 = fmul double %105, %107
  %108 = load double, double* %ry0, align 8
  %109 = load double*, double** %q, align 8
  %arrayidx114 = getelementptr inbounds double, double* %109, i64 1
  %110 = load double, double* %arrayidx114, align 8
  %mul115 = fmul double %108, %110
  %add116 = fadd double %mul113, %mul115
  %111 = load double, double* %rz1, align 8
  %112 = load double*, double** %q, align 8
  %arrayidx117 = getelementptr inbounds double, double* %112, i64 2
  %113 = load double, double* %arrayidx117, align 8
  %mul118 = fmul double %111, %113
  %add119 = fadd double %add116, %mul118
  store double %add119, double* %u, align 8
  %114 = load i32, i32* %b10, align 4
  %115 = load i32, i32* %bz1, align 4
  %add120 = add nsw i32 %114, %115
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds [514 x [3 x double]], [514 x [3 x double]]* @g, i32 0, i64 %idxprom121
  %arraydecay123 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx122, i32 0, i32 0
  store double* %arraydecay123, double** %q, align 8
  %116 = load double, double* %rx1, align 8
  %117 = load double*, double** %q, align 8
  %arrayidx124 = getelementptr inbounds double, double* %117, i64 0
  %118 = load double, double* %arrayidx124, align 8
  %mul125 = fmul double %116, %118
  %119 = load double, double* %ry0, align 8
  %120 = load double*, double** %q, align 8
  %arrayidx126 = getelementptr inbounds double, double* %120, i64 1
  %121 = load double, double* %arrayidx126, align 8
  %mul127 = fmul double %119, %121
  %add128 = fadd double %mul125, %mul127
  %122 = load double, double* %rz1, align 8
  %123 = load double*, double** %q, align 8
  %arrayidx129 = getelementptr inbounds double, double* %123, i64 2
  %124 = load double, double* %arrayidx129, align 8
  %mul130 = fmul double %122, %124
  %add131 = fadd double %add128, %mul130
  store double %add131, double* %v, align 8
  %125 = load double, double* %u, align 8
  %126 = load double, double* %sx, align 8
  %127 = load double, double* %v, align 8
  %128 = load double, double* %u, align 8
  %sub132 = fsub double %127, %128
  %mul133 = fmul double %126, %sub132
  %add134 = fadd double %125, %mul133
  store double %add134, double* %a, align 8
  %129 = load i32, i32* %b01, align 4
  %130 = load i32, i32* %bz1, align 4
  %add135 = add nsw i32 %129, %130
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds [514 x [3 x double]], [514 x [3 x double]]* @g, i32 0, i64 %idxprom136
  %arraydecay138 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx137, i32 0, i32 0
  store double* %arraydecay138, double** %q, align 8
  %131 = load double, double* %rx0, align 8
  %132 = load double*, double** %q, align 8
  %arrayidx139 = getelementptr inbounds double, double* %132, i64 0
  %133 = load double, double* %arrayidx139, align 8
  %mul140 = fmul double %131, %133
  %134 = load double, double* %ry1, align 8
  %135 = load double*, double** %q, align 8
  %arrayidx141 = getelementptr inbounds double, double* %135, i64 1
  %136 = load double, double* %arrayidx141, align 8
  %mul142 = fmul double %134, %136
  %add143 = fadd double %mul140, %mul142
  %137 = load double, double* %rz1, align 8
  %138 = load double*, double** %q, align 8
  %arrayidx144 = getelementptr inbounds double, double* %138, i64 2
  %139 = load double, double* %arrayidx144, align 8
  %mul145 = fmul double %137, %139
  %add146 = fadd double %add143, %mul145
  store double %add146, double* %u, align 8
  %140 = load i32, i32* %b11, align 4
  %141 = load i32, i32* %bz1, align 4
  %add147 = add nsw i32 %140, %141
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds [514 x [3 x double]], [514 x [3 x double]]* @g, i32 0, i64 %idxprom148
  %arraydecay150 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx149, i32 0, i32 0
  store double* %arraydecay150, double** %q, align 8
  %142 = load double, double* %rx1, align 8
  %143 = load double*, double** %q, align 8
  %arrayidx151 = getelementptr inbounds double, double* %143, i64 0
  %144 = load double, double* %arrayidx151, align 8
  %mul152 = fmul double %142, %144
  %145 = load double, double* %ry1, align 8
  %146 = load double*, double** %q, align 8
  %arrayidx153 = getelementptr inbounds double, double* %146, i64 1
  %147 = load double, double* %arrayidx153, align 8
  %mul154 = fmul double %145, %147
  %add155 = fadd double %mul152, %mul154
  %148 = load double, double* %rz1, align 8
  %149 = load double*, double** %q, align 8
  %arrayidx156 = getelementptr inbounds double, double* %149, i64 2
  %150 = load double, double* %arrayidx156, align 8
  %mul157 = fmul double %148, %150
  %add158 = fadd double %add155, %mul157
  store double %add158, double* %v, align 8
  %151 = load double, double* %u, align 8
  %152 = load double, double* %sx, align 8
  %153 = load double, double* %v, align 8
  %154 = load double, double* %u, align 8
  %sub159 = fsub double %153, %154
  %mul160 = fmul double %152, %sub159
  %add161 = fadd double %151, %mul160
  store double %add161, double* %b, align 8
  %155 = load double, double* %a, align 8
  %156 = load double, double* %sy, align 8
  %157 = load double, double* %b, align 8
  %158 = load double, double* %a, align 8
  %sub162 = fsub double %157, %158
  %mul163 = fmul double %156, %sub162
  %add164 = fadd double %155, %mul163
  store double %add164, double* %d, align 8
  %159 = load double, double* %c, align 8
  %160 = load double, double* %sz, align 8
  %161 = load double, double* %d, align 8
  %162 = load double, double* %c, align 8
  %sub165 = fsub double %161, %162
  %mul166 = fmul double %160, %sub165
  %add167 = fadd double %159, %mul166
  %mul168 = fmul double 1.500000e+00, %add167
  ret double %mul168
}

; Function Attrs: nounwind uwtable
define internal void @init() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %v = alloca [3 x double], align 16
  %s = alloca double, align 8
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** @gr, align 8
  %0 = load %struct._GRand*, %struct._GRand** @gr, align 8
  call void @g_rand_set_seed(%struct._GRand* %0, i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %do.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call4 = call double @g_rand_double_range(%struct._GRand* %3, double -1.000000e+00, double 1.000000e+00)
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %v, i32 0, i64 %idxprom
  store double %call4, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %v, i32 0, i64 0
  %6 = load double, double* %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %v, i32 0, i64 0
  %7 = load double, double* %arrayidx6, align 8
  %mul = fmul double %6, %7
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %v, i32 0, i64 1
  %8 = load double, double* %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %v, i32 0, i64 1
  %9 = load double, double* %arrayidx8, align 8
  %mul9 = fmul double %8, %9
  %add = fadd double %mul, %mul9
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %v, i32 0, i64 2
  %10 = load double, double* %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %v, i32 0, i64 2
  %11 = load double, double* %arrayidx11, align 8
  %mul12 = fmul double %10, %11
  %add13 = fadd double %add, %mul12
  store double %add13, double* %s, align 8
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %12 = load double, double* %s, align 8
  %cmp14 = fcmp ogt double %12, 1.000000e+00
  br i1 %cmp14, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load double, double* %s, align 8
  %call15 = call double @sqrt(double %13) #4
  store double %call15, double* %s, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.25, %do.end
  %14 = load i32, i32* %j, align 4
  %cmp17 = icmp slt i32 %14, 3
  br i1 %cmp17, label %for.body.18, label %for.end.27

for.body.18:                                      ; preds = %for.cond.16
  %15 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %v, i32 0, i64 %idxprom19
  %16 = load double, double* %arrayidx20, align 8
  %17 = load double, double* %s, align 8
  %div = fdiv double %16, %17
  %18 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [514 x [3 x double]], [514 x [3 x double]]* @g, i32 0, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx23, i32 0, i64 %idxprom21
  store double %div, double* %arrayidx24, align 8
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.18
  %20 = load i32, i32* %j, align 4
  %inc26 = add nsw i32 %20, 1
  store i32 %inc26, i32* %j, align 4
  br label %for.cond.16

for.end.27:                                       ; preds = %for.cond.16
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end.27
  %21 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %21, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.36, %for.end.30
  %22 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %22, 256
  br i1 %cmp32, label %for.body.33, label %for.end.38

for.body.33:                                      ; preds = %for.cond.31
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %24 to i64
  %arrayidx35 = getelementptr inbounds [514 x i32], [514 x i32]* @p, i32 0, i64 %idxprom34
  store i32 %23, i32* %arrayidx35, align 4
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.33
  %25 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %25, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.31

for.end.38:                                       ; preds = %for.cond.31
  store i32 256, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.51, %for.end.38
  %26 = load i32, i32* %i, align 4
  %cmp40 = icmp sgt i32 %26, 0
  br i1 %cmp40, label %for.body.41, label %for.end.52

for.body.41:                                      ; preds = %for.cond.39
  %27 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %27 to i64
  %arrayidx43 = getelementptr inbounds [514 x i32], [514 x i32]* @p, i32 0, i64 %idxprom42
  %28 = load i32, i32* %arrayidx43, align 4
  store i32 %28, i32* %k, align 4
  %29 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call44 = call i32 @g_rand_int_range(%struct._GRand* %29, i32 0, i32 256)
  store i32 %call44, i32* %j, align 4
  %idxprom45 = sext i32 %call44 to i64
  %arrayidx46 = getelementptr inbounds [514 x i32], [514 x i32]* @p, i32 0, i64 %idxprom45
  %30 = load i32, i32* %arrayidx46, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %31 to i64
  %arrayidx48 = getelementptr inbounds [514 x i32], [514 x i32]* @p, i32 0, i64 %idxprom47
  store i32 %30, i32* %arrayidx48, align 4
  %32 = load i32, i32* %k, align 4
  %33 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %33 to i64
  %arrayidx50 = getelementptr inbounds [514 x i32], [514 x i32]* @p, i32 0, i64 %idxprom49
  store i32 %32, i32* %arrayidx50, align 4
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.41
  %34 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %34, 2
  store i32 %sub, i32* %i, align 4
  br label %for.cond.39

for.end.52:                                       ; preds = %for.cond.39
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.76, %for.end.52
  %35 = load i32, i32* %i, align 4
  %cmp54 = icmp slt i32 %35, 258
  br i1 %cmp54, label %for.body.55, label %for.end.78

for.body.55:                                      ; preds = %for.cond.53
  %36 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %36 to i64
  %arrayidx57 = getelementptr inbounds [514 x i32], [514 x i32]* @p, i32 0, i64 %idxprom56
  %37 = load i32, i32* %arrayidx57, align 4
  %38 = load i32, i32* %i, align 4
  %add58 = add nsw i32 256, %38
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds [514 x i32], [514 x i32]* @p, i32 0, i64 %idxprom59
  store i32 %37, i32* %arrayidx60, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.73, %for.body.55
  %39 = load i32, i32* %j, align 4
  %cmp62 = icmp slt i32 %39, 3
  br i1 %cmp62, label %for.body.63, label %for.end.75

for.body.63:                                      ; preds = %for.cond.61
  %40 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %40 to i64
  %41 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %41 to i64
  %arrayidx66 = getelementptr inbounds [514 x [3 x double]], [514 x [3 x double]]* @g, i32 0, i64 %idxprom65
  %arrayidx67 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx66, i32 0, i64 %idxprom64
  %42 = load double, double* %arrayidx67, align 8
  %43 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %43 to i64
  %44 = load i32, i32* %i, align 4
  %add69 = add nsw i32 256, %44
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds [514 x [3 x double]], [514 x [3 x double]]* @g, i32 0, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx71, i32 0, i64 %idxprom68
  store double %42, double* %arrayidx72, align 8
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.63
  %45 = load i32, i32* %j, align 4
  %inc74 = add nsw i32 %45, 1
  store i32 %inc74, i32* %j, align 4
  br label %for.cond.61

for.end.75:                                       ; preds = %for.cond.61
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.end.75
  %46 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %46, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond.53

for.end.78:                                       ; preds = %for.cond.53
  %47 = load %struct._GRand*, %struct._GRand** @gr, align 8
  call void @g_rand_free(%struct._GRand* %47)
  ret void
}

declare %struct._GRand* @g_rand_new() #1

declare void @g_rand_set_seed(%struct._GRand*, i32) #1

declare double @g_rand_double_range(%struct._GRand*, double, double) #1

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #1

declare void @g_rand_free(%struct._GRand*) #1

declare i32 @gtk_list_store_remove(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @relabel() #0 {
entry:
  %model = alloca %struct._GtkTreeModel*, align 8
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %t = alloca %struct.texture*, align 8
  store %struct.texture* null, %struct.texture** %t, align 8
  %0 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %0)
  store %struct._GtkTreeSelection* %call, %struct._GtkTreeSelection** %sel, align 8
  %1 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %call1 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %1, %struct._GtkTreeModel** null, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkTreeView*, %struct._GtkTreeView** @texturelist, align 8
  %call2 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %2)
  store %struct._GtkTreeModel* %call2, %struct._GtkTreeModel** %model, align 8
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter, i32 1, %struct.texture** %t, i32 -1)
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %5 = bitcast %struct._GtkTreeModel* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_list_store_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkListStore*
  %7 = load %struct.texture*, %struct.texture** %t, align 8
  %call5 = call i8* @mklabel(%struct.texture* %7)
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %6, %struct._GtkTreeIter* %iter, i32 0, i8* %call5, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #3

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gtk_main_quit() #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare noalias i8* @g_malloc(i64) #1

declare i32 @gimp_progress_init(i8*) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
