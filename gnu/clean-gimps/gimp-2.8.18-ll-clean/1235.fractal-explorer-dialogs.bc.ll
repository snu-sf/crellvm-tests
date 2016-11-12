; ModuleID = './plug-ins/fractal-explorer/fractal-explorer-dialogs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.explorer_interface_t = type { %struct._GtkWidget*, i8*, i32 }
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
%struct._DialogElements = type { [9 x %struct._GtkWidget*], %struct._GtkObject*, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkWidget*, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkObject*, [3 x %struct._GtkWidget*], %struct._GtkWidget*, [3 x %struct._GtkWidget*], %struct._GtkWidget*, [3 x %struct._GtkWidget*], %struct._GtkWidget*, [2 x %struct._GtkWidget*] }
%struct.explorer_vals_t = type { i32, double, double, double, double, double, double, double, i32, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gucharRGB = type { i8, i8, i8 }
%struct.DFigObj = type { i8*, i8*, i8*, %struct.explorer_vals_t, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkFileChooser = type opaque
%struct._GimpGradientSelectButton = type { %struct._GimpSelectButton }
%struct._GimpSelectButton = type { %struct._GtkBox, i8* }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"fractal-explorer\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"fractalexplorer-path\00", align 1
@fractalexplorer_path = external global i8*, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"gimprc\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fractalexplorer\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"No %s in gimprc:\0AYou need to add an entry like\0A(%s \22%s\22)\0Ato your %s file.\00", align 1
@preview_width = external global i32, align 4
@preview_height = external global i32, align 4
@wint = external global %struct.explorer_interface_t, align 8
@elements = internal global %struct._DialogElements* null, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"Fractal Explorer\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"gimp-fractal-explorer\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"plug-in-fractalexplorer\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@maindlg = internal global %struct._GtkWidget* null, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"leave-notify-event\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"enter-notify-event\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Realtime preview\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@wvals = external global %struct.explorer_vals_t, align 8
@.str.19 = private unnamed_addr constant [53 x i8] c"If enabled the preview will be redrawn automatically\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"R_edraw preview\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Zoom\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"gtk-zoom-in\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"gtk-zoom-out\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"gtk-undo\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Undo last zoom change\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"gtk-redo\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Redo last zoom change\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"_Parameters\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Fractal Parameters\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Left:\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Right:\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Top:\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Bottom:\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Iterations:\00", align 1
@.str.37 = private unnamed_addr constant [73 x i8] c"The higher the number of iterations, the more details will be calculated\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"CX:\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"Changes aspect of fractal\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"CY:\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"Load a fractal from file\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"Reset parameters to default values\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"Save active fractal to file\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Fractal Type\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"Mandelbrot\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Julia\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"Barnsley 1\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"Barnsley 2\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"Barnsley 3\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"Spider\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"Man'o'war\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"Lambda\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Sierpinski\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"Co_lors\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"Number of Colors\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"Number of colors:\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"Change the number of colors in the mapping\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"Use loglog smoothing\00", align 1
@.str.62 = private unnamed_addr constant [59 x i8] c"Use log log smoothing to eliminate \22banding\22 in the result\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"Color Density\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"Red:\00", align 1
@.str.65 = private unnamed_addr constant [40 x i8] c"Change the intensity of the red channel\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Green:\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"Change the intensity of the green channel\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"Blue:\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"Change the intensity of the blue channel\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"Color Function\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"Sine\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"Cosine\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"color-function\04None\00", align 1
@.str.75 = private unnamed_addr constant [43 x i8] c"Use sine-function for this color component\00", align 1
@.str.76 = private unnamed_addr constant [45 x i8] c"Use cosine-function for this color component\00", align 1
@.str.77 = private unnamed_addr constant [82 x i8] c"Use linear mapping instead of any trigonometrical function for this color channel\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"Inversion\00", align 1
@.str.79 = private unnamed_addr constant [93 x i8] c"If you enable this option higher color values will be swapped with lower ones and vice versa\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"Color Mode\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"As specified above\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@.str.85 = private unnamed_addr constant [125 x i8] c"Create a color-map with the options you specified above (color density/function). The result is visible in the preview image\00", align 1
@.str.86 = private unnamed_addr constant [37 x i8] c"Apply active gradient to final image\00", align 1
@.str.87 = private unnamed_addr constant [61 x i8] c"Create a color-map using a gradient from the gradient editor\00", align 1
@n_gradient_samples = internal global i32 0, align 4
@gradient_samples = internal global double* null, align 8
@.str.88 = private unnamed_addr constant [25 x i8] c"FractalExplorer Gradient\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"gradient-set\00", align 1
@cmap_preview = internal global %struct._GtkWidget* null, align 8
@.str.90 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"_Fractals\00", align 1
@ready_now = internal global i32 0, align 4
@xmin = external global double, align 8
@xmax = external global double, align 8
@ymin = external global double, align 8
@ymax = external global double, align 8
@xbild = external global double, align 8
@ybild = external global double, align 8
@xdiff = external global double, align 8
@ydiff = external global double, align 8
@colormap = external global [8192 x %struct.gucharRGB], align 16
@line_no = external global i32, align 4
@.str.92 = private unnamed_addr constant [19 x i8] c"Error reading file\00", align 1
@standardvals = internal global %struct.explorer_vals_t { i32 0, double -2.000000e+00, double 2.000000e+00, double -1.500000e+00, double 1.500000e+00, double 5.000000e+01, double -7.500000e-01, double -2.000000e-01, i32 0, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 256, i32 0, i32 0 }, align 8
@.str.93 = private unnamed_addr constant [6 x i8] c"<EOF>\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"%255s %255s\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"fractaltype:\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"xmin:\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"xmax:\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"ymin:\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"ymax:\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"redstretch:\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"greenstretch:\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"bluestretch:\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"iter:\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"cx:\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"cy:\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"redmode:\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"greenmode:\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"bluemode:\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"redinvert:\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"greeninvert:\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"blueinvert:\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"colormode:\00", align 1
@filename = external global i8*, align 8
@.str.113 = private unnamed_addr constant [27 x i8] c"fractal-explorer-dialogs.c\00", align 1
@__func__.explorer_load = private unnamed_addr constant [14 x i8] c"explorer_load\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.116 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.117 = private unnamed_addr constant [68 x i8] c"Fractal Explorer Plug-In Version 2 - (c) 1997 <cotting@mygale.org>\0A\00", align 1
@.str.118 = private unnamed_addr constant [35 x i8] c"'%s' is not a FractalExplorer file\00", align 1
@current_obj = external global %struct.DFigObj*, align 8
@.str.119 = private unnamed_addr constant [50 x i8] c"'%s' is corrupt. Line %d Option section incorrect\00", align 1
@x_press = internal global double -1.000000e+00, align 8
@y_press = internal global double -1.000000e+00, align 8
@zoomindex = internal global i32 0, align 4
@zooms = internal global [100 x %struct.explorer_vals_t] zeroinitializer, align 16
@zoommax = internal global i32 0, align 4
@oldxpos = internal global i32 -1, align 4
@oldypos = internal global i32 -1, align 4
@preview_enter_notify_event.cursor = internal global %struct._GdkCursor* null, align 8
@gradient_name = internal global i8* null, align 8
@create_load_file_chooser.window = internal global %struct._GtkWidget* null, align 8
@.str.120 = private unnamed_addr constant [24 x i8] c"Load Fractal Parameters\00", align 1
@create_save_file_chooser.window = internal global %struct._GtkWidget* null, align 8
@.str.121 = private unnamed_addr constant [24 x i8] c"Save Fractal Parameters\00", align 1
@tpath = internal global i8* null, align 8
@.str.122 = private unnamed_addr constant [4 x i8] c"wt+\00", align 1
@.str.123 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.124 = private unnamed_addr constant [73 x i8] c"#**********************************************************************\0A\00", align 1
@.str.125 = private unnamed_addr constant [73 x i8] c"# This is a data file for the Fractal Explorer plug-in for GIMP       *\0A\00", align 1
@.str.126 = private unnamed_addr constant [25 x i8] c"Could not write '%s': %s\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"fractaltype: %i\0A\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"%0.15f\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"xmin: %s\0A\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"xmax: %s\0A\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"ymin: %s\0A\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"ymax: %s\0A\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"iter: %s\0A\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"cx: %s\0A\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"cy: %s\0A\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"redstretch: %s\0A\00", align 1
@.str.137 = private unnamed_addr constant [18 x i8] c"greenstretch: %s\0A\00", align 1
@.str.138 = private unnamed_addr constant [17 x i8] c"bluestretch: %s\0A\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"redmode: %i\0A\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"greenmode: %i\0A\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"bluemode: %i\0A\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"redinvert: %i\0A\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"greeninvert: %i\0A\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"blueinvert: %i\0A\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"colormode: %i\0A\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"<EOF>\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @explorer_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %top_hbox = alloca %struct._GtkWidget*, align 8
  %left_vbox = alloca %struct._GtkWidget*, align 8
  %abox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %bbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %toggle_vbox = alloca %struct._GtkWidget*, align 8
  %toggle_vbox2 = alloca %struct._GtkWidget*, align 8
  %toggle_vbox3 = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %gradient = alloca %struct._GtkWidget*, align 8
  %path = alloca i8*, align 8
  %gradient_name = alloca i8*, align 8
  %group = alloca %struct._GSList*, align 8
  %i = alloca i32, align 4
  %gimprc = alloca i8*, align 8
  %full_path = alloca i8*, align 8
  %esc_path = alloca i8*, align 8
  %xsize = alloca i32, align 4
  %ysize = alloca i32, align 4
  store %struct._GSList* null, %struct._GSList** %group, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1)
  %call = call i8* @gimp_gimprc_query(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call, i8** %path, align 8
  %0 = load i8*, i8** %path, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %path, align 8
  %call1 = call noalias i8* @g_filename_from_utf8(i8* %1, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call1, i8** @fractalexplorer_path, align 8
  %2 = load i8*, i8** %path, align 8
  call void @g_free(i8* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call2, i8** %gimprc, align 8
  %call3 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call3, i8** %full_path, align 8
  %3 = load i8*, i8** %full_path, align 8
  %call4 = call noalias i8* @g_strescape(i8* %3, i8* null)
  store i8* %call4, i8** %esc_path, align 8
  %4 = load i8*, i8** %full_path, align 8
  call void @g_free(i8* %4)
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i32 0, i32 0)) #5
  %5 = load i8*, i8** %esc_path, align 8
  %6 = load i8*, i8** %gimprc, align 8
  %call6 = call i8* @gimp_filename_to_utf8(i8* %6)
  call void (i8*, ...) @g_message(i8* %call5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %5, i8* %call6)
  %7 = load i8*, i8** %gimprc, align 8
  call void @g_free(i8* %7)
  %8 = load i8*, i8** %esc_path, align 8
  call void @g_free(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* @preview_width, align 4
  %10 = load i32, i32* @preview_height, align 4
  %mul = mul nsw i32 %9, %10
  %mul7 = mul nsw i32 %mul, 3
  %conv = sext i32 %mul7 to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call8, i8** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 1), align 8
  %call9 = call noalias i8* @g_malloc_n(i64 1, i64 280)
  %11 = bitcast i8* %call9 to %struct._DialogElements*
  store %struct._DialogElements* %11, %struct._DialogElements** @elements, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)) #5
  %call11 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** @maindlg, align 8
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %dialog, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_dialog_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call12)
  %14 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %14, i32 -5, i32 -6, i32 -1)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_window_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @dialog_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* @gtk_main_quit, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %top_hbox, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %top_hbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %24, i32 12)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_dialog_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call21)
  %27 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkDialog*
  %call23 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %27)
  %28 = bitcast %struct._GtkWidget* %call23 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call24)
  %29 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %top_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 0, i32 0, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %top_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %call26 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %left_vbox, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %top_hbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call27)
  %34 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %left_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %left_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %call29 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %vbox, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %left_vbox, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call30)
  %39 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %40, i32 0, i32 0, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %call32 = call %struct._GtkWidget* @gtk_alignment_new(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %abox, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call33)
  %44 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %44, %struct._GtkWidget* %45, i32 0, i32 0, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %call35 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %frame, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_frame_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call36)
  %49 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %49, i32 1)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_container_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call38)
  %52 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkContainer*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %52, %struct._GtkWidget* %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %call40 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call40, %struct._GtkWidget** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 0), align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 0), align 8
  %56 = load i32, i32* @preview_width, align 4
  %57 = load i32, i32* @preview_height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %55, i32 %56, i32 %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_container_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call41)
  %60 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkContainer*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 0), align 8
  call void @gtk_container_add(%struct._GtkContainer* %60, %struct._GtkWidget* %61)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 0), align 8
  %63 = bitcast %struct._GtkWidget* %62 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @preview_button_press_event to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 0), align 8
  %65 = bitcast %struct._GtkWidget* %64 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @preview_button_release_event to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 0), align 8
  %67 = bitcast %struct._GtkWidget* %66 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @preview_motion_notify_event to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 0), align 8
  %69 = bitcast %struct._GtkWidget* %68 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @preview_leave_notify_event to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 0), align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @preview_enter_notify_event to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 0), align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %72, i32 13060)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 0), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0)) #5
  %call49 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call48)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %toggle, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_box_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call50)
  %76 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkBox*
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %76, %struct._GtkWidget* %77, i32 0, i32 0, i32 0)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @explorer_toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 18) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_toggle_button_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call53)
  %82 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkToggleButton*
  %83 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 18), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %82, i32 %83)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %85, i8* %call55, i8* null)
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0)) #5
  %call57 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call56)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %button, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_box_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call58)
  %88 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkBox*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %88, %struct._GtkWidget* %89, i32 0, i32 0, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %91 = bitcast %struct._GtkWidget* %90 to i8*
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %93 = bitcast %struct._GtkWidget* %92 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dialog_redraw_callback to void ()*), i8* %93, void (i8*, %struct._GClosure*)* null, i32 0)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %94)
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #5
  %call62 = call %struct._GtkWidget* @gimp_frame_new(i8* %call61)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %frame, align 8
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %left_vbox, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #7
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call63)
  %97 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %97, %struct._GtkWidget* %98, i32 0, i32 0, i32 0)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %99)
  %call65 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %vbox, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_container_get_type() #7
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call66)
  %102 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkContainer*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %102, %struct._GtkWidget* %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %call68 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %bbox, align 8
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_box_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call69)
  %107 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %107, i32 1)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_box_get_type() #7
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call71)
  %110 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkBox*
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %110, %struct._GtkWidget* %111, i32 0, i32 0, i32 0)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %112)
  %call73 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0))
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %button, align 8
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_box_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call74)
  %115 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkBox*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %115, %struct._GtkWidget* %116, i32 1, i32 1, i32 0)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %117)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %119 = bitcast %struct._GtkWidget* %118 to i8*
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %121 = bitcast %struct._GtkWidget* %120 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dialog_step_in_callback to void ()*), i8* %121, void (i8*, %struct._GClosure*)* null, i32 0)
  %call77 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0))
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %button, align 8
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_box_get_type() #7
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call78)
  %124 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkBox*
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %124, %struct._GtkWidget* %125, i32 1, i32 1, i32 0)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %126)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %128 = bitcast %struct._GtkWidget* %127 to i8*
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %130 = bitcast %struct._GtkWidget* %129 to i8*
  %call80 = call i64 @g_signal_connect_data(i8* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dialog_step_out_callback to void ()*), i8* %130, void (i8*, %struct._GClosure*)* null, i32 0)
  %call81 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %bbox, align 8
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_box_get_type() #7
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call82)
  %133 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %133, i32 1)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_box_get_type() #7
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call84)
  %136 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkBox*
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %136, %struct._GtkWidget* %137, i32 0, i32 0, i32 0)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %138)
  %call86 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %button, align 8
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %140 = bitcast %struct._GtkWidget* %139 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_box_get_type() #7
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call87)
  %141 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkBox*
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %141, %struct._GtkWidget* %142, i32 1, i32 1, i32 0)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %143)
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %144, i8* %call89, i8* null)
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %146 = bitcast %struct._GtkWidget* %145 to i8*
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %148 = bitcast %struct._GtkWidget* %147 to i8*
  %call90 = call i64 @g_signal_connect_data(i8* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dialog_undo_zoom_callback to void ()*), i8* %148, void (i8*, %struct._GClosure*)* null, i32 0)
  %call91 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0))
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %button, align 8
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_box_get_type() #7
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call92)
  %151 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkBox*
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %151, %struct._GtkWidget* %152, i32 1, i32 1, i32 0)
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %153)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %154, i8* %call94, i8* null)
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %156 = bitcast %struct._GtkWidget* %155 to i8*
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %158 = bitcast %struct._GtkWidget* %157 to i8*
  %call95 = call i64 @g_signal_connect_data(i8* %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dialog_redo_zoom_callback to void ()*), i8* %158, void (i8*, %struct._GClosure*)* null, i32 0)
  %call96 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call96, %struct._GtkWidget** %notebook, align 8
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %top_hbox, align 8
  %160 = bitcast %struct._GtkWidget* %159 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_box_get_type() #7
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call97)
  %161 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkBox*
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %161, %struct._GtkWidget* %162, i32 0, i32 0, i32 0)
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %163)
  %call99 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call99, %struct._GtkWidget** %vbox, align 8
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %165 = bitcast %struct._GtkWidget* %164 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_container_get_type() #7
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call100)
  %166 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %166, i32 12)
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %168 = bitcast %struct._GtkWidget* %167 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_notebook_get_type() #7
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 %call102)
  %169 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkNotebook*
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call104 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)) #5
  %call105 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call104)
  %call106 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %169, %struct._GtkWidget* %170, %struct._GtkWidget* %call105)
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %171)
  %call107 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0)) #5
  %call108 = call %struct._GtkWidget* @gimp_frame_new(i8* %call107)
  store %struct._GtkWidget* %call108, %struct._GtkWidget** %frame, align 8
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %173 = bitcast %struct._GtkWidget* %172 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_box_get_type() #7
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 %call109)
  %174 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkBox*
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %174, %struct._GtkWidget* %175, i32 0, i32 0, i32 0)
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %176)
  %call111 = call %struct._GtkWidget* @gtk_table_new(i32 8, i32 3, i32 0)
  store %struct._GtkWidget* %call111, %struct._GtkWidget** %table, align 8
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_table_get_type() #7
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call112)
  %179 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %179, i32 6)
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %181 = bitcast %struct._GtkWidget* %180 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_table_get_type() #7
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %181, i64 %call114)
  %182 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %182, i32 6)
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %184 = bitcast %struct._GtkWidget* %183 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_table_get_type() #7
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %184, i64 %call116)
  %185 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %185, i32 6, i32 12)
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %187 = bitcast %struct._GtkWidget* %186 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_container_get_type() #7
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call118)
  %188 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkContainer*
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %188, %struct._GtkWidget* %189)
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %190)
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %192 = bitcast %struct._GtkWidget* %191 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_table_get_type() #7
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %192, i64 %call120)
  %193 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkTable*
  %call122 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)) #5
  %194 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %call123 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %193, i32 0, i32 0, i8* %call122, i32 200, i32 10, double %194, double -3.000000e+00, double 3.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 5, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %195 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %xmin = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %195, i32 0, i32 1
  store %struct._GtkObject* %call123, %struct._GtkObject** %xmin, align 8
  %196 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %xmin124 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %196, i32 0, i32 1
  %197 = load %struct._GtkObject*, %struct._GtkObject** %xmin124, align 8
  %198 = bitcast %struct._GtkObject* %197 to i8*
  %call125 = call i64 @g_signal_connect_data(i8* %198, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @explorer_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %200 = bitcast %struct._GtkWidget* %199 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_table_get_type() #7
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %200, i64 %call126)
  %201 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkTable*
  %call128 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0)) #5
  %202 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  %call129 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %201, i32 0, i32 1, i8* %call128, i32 200, i32 10, double %202, double -3.000000e+00, double 3.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 5, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %203 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %xmax = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %203, i32 0, i32 2
  store %struct._GtkObject* %call129, %struct._GtkObject** %xmax, align 8
  %204 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %xmax130 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %204, i32 0, i32 2
  %205 = load %struct._GtkObject*, %struct._GtkObject** %xmax130, align 8
  %206 = bitcast %struct._GtkObject* %205 to i8*
  %call131 = call i64 @g_signal_connect_data(i8* %206, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @explorer_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %208 = bitcast %struct._GtkWidget* %207 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_table_get_type() #7
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %208, i64 %call132)
  %209 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkTable*
  %call134 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)) #5
  %210 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %call135 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %209, i32 0, i32 2, i8* %call134, i32 200, i32 10, double %210, double -3.000000e+00, double 3.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 5, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %211 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %ymin = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %211, i32 0, i32 3
  store %struct._GtkObject* %call135, %struct._GtkObject** %ymin, align 8
  %212 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %ymin136 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %212, i32 0, i32 3
  %213 = load %struct._GtkObject*, %struct._GtkObject** %ymin136, align 8
  %214 = bitcast %struct._GtkObject* %213 to i8*
  %call137 = call i64 @g_signal_connect_data(i8* %214, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @explorer_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %215 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %216 = bitcast %struct._GtkWidget* %215 to %struct._GTypeInstance*
  %call138 = call i64 @gtk_table_get_type() #7
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %216, i64 %call138)
  %217 = bitcast %struct._GTypeInstance* %call139 to %struct._GtkTable*
  %call140 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)) #5
  %218 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  %call141 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %217, i32 0, i32 3, i8* %call140, i32 200, i32 10, double %218, double -3.000000e+00, double 3.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 5, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %219 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %ymax = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %219, i32 0, i32 4
  store %struct._GtkObject* %call141, %struct._GtkObject** %ymax, align 8
  %220 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %ymax142 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %220, i32 0, i32 4
  %221 = load %struct._GtkObject*, %struct._GtkObject** %ymax142, align 8
  %222 = bitcast %struct._GtkObject* %221 to i8*
  %call143 = call i64 @g_signal_connect_data(i8* %222, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @explorer_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %224 = bitcast %struct._GtkWidget* %223 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_table_get_type() #7
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %224, i64 %call144)
  %225 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkTable*
  %call146 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0)) #5
  %226 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 5), align 8
  %call147 = call i8* @gettext(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.37, i32 0, i32 0)) #5
  %call148 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %225, i32 0, i32 4, i8* %call146, i32 200, i32 10, double %226, double 1.000000e+00, double 1.000000e+03, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call147, i8* null)
  %227 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %iter = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %227, i32 0, i32 5
  store %struct._GtkObject* %call148, %struct._GtkObject** %iter, align 8
  %228 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %iter149 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %228, i32 0, i32 5
  %229 = load %struct._GtkObject*, %struct._GtkObject** %iter149, align 8
  %230 = bitcast %struct._GtkObject* %229 to i8*
  %call150 = call i64 @g_signal_connect_data(i8* %230, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @explorer_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %231 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %232 = bitcast %struct._GtkWidget* %231 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_table_get_type() #7
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %232, i64 %call151)
  %233 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkTable*
  %call153 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0)) #5
  %234 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 6), align 8
  %call154 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0)) #5
  %call155 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %233, i32 0, i32 5, i8* %call153, i32 200, i32 10, double %234, double -2.500000e+00, double 2.500000e+00, double 1.000000e-03, double 1.000000e-02, i32 5, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call154, i8* null)
  %235 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %cx = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %235, i32 0, i32 6
  store %struct._GtkObject* %call155, %struct._GtkObject** %cx, align 8
  %236 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %cx156 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %236, i32 0, i32 6
  %237 = load %struct._GtkObject*, %struct._GtkObject** %cx156, align 8
  %238 = bitcast %struct._GtkObject* %237 to i8*
  %call157 = call i64 @g_signal_connect_data(i8* %238, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @explorer_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %239 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %240 = bitcast %struct._GtkWidget* %239 to %struct._GTypeInstance*
  %call158 = call i64 @gtk_table_get_type() #7
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %240, i64 %call158)
  %241 = bitcast %struct._GTypeInstance* %call159 to %struct._GtkTable*
  %call160 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0)) #5
  %242 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 7), align 8
  %call161 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0)) #5
  %call162 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %241, i32 0, i32 6, i8* %call160, i32 200, i32 10, double %242, double -2.500000e+00, double 2.500000e+00, double 1.000000e-03, double 1.000000e-02, i32 5, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call161, i8* null)
  %243 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %cy = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %243, i32 0, i32 7
  store %struct._GtkObject* %call162, %struct._GtkObject** %cy, align 8
  %244 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %cy163 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %244, i32 0, i32 7
  %245 = load %struct._GtkObject*, %struct._GtkObject** %cy163, align 8
  %246 = bitcast %struct._GtkObject* %245 to i8*
  %call164 = call i64 @g_signal_connect_data(i8* %246, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @explorer_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 7) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call165 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call165, %struct._GtkWidget** %bbox, align 8
  %247 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %248 = bitcast %struct._GtkWidget* %247 to %struct._GTypeInstance*
  %call166 = call i64 @gtk_box_get_type() #7
  %call167 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %248, i64 %call166)
  %249 = bitcast %struct._GTypeInstance* %call167 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %249, i32 1)
  %250 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %251 = bitcast %struct._GtkWidget* %250 to %struct._GTypeInstance*
  %call168 = call i64 @gtk_table_get_type() #7
  %call169 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %251, i64 %call168)
  %252 = bitcast %struct._GTypeInstance* %call169 to %struct._GtkTable*
  %253 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %252, %struct._GtkWidget* %253, i32 0, i32 3, i32 7, i32 8)
  %254 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %254)
  %call170 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0))
  store %struct._GtkWidget* %call170, %struct._GtkWidget** %button, align 8
  %255 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %256 = bitcast %struct._GtkWidget* %255 to %struct._GTypeInstance*
  %call171 = call i64 @gtk_box_get_type() #7
  %call172 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %256, i64 %call171)
  %257 = bitcast %struct._GTypeInstance* %call172 to %struct._GtkBox*
  %258 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %257, %struct._GtkWidget* %258, i32 1, i32 1, i32 0)
  %259 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %260 = bitcast %struct._GtkWidget* %259 to i8*
  %261 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %262 = bitcast %struct._GtkWidget* %261 to i8*
  %call173 = call i64 @g_signal_connect_data(i8* %260, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @create_load_file_chooser to void ()*), i8* %262, void (i8*, %struct._GClosure*)* null, i32 0)
  %263 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %263)
  %264 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call174 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %264, i8* %call174, i8* null)
  %call175 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0))
  store %struct._GtkWidget* %call175, %struct._GtkWidget** %button, align 8
  %265 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %266 = bitcast %struct._GtkWidget* %265 to %struct._GTypeInstance*
  %call176 = call i64 @gtk_box_get_type() #7
  %call177 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %266, i64 %call176)
  %267 = bitcast %struct._GTypeInstance* %call177 to %struct._GtkBox*
  %268 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %267, %struct._GtkWidget* %268, i32 1, i32 1, i32 0)
  %269 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %270 = bitcast %struct._GtkWidget* %269 to i8*
  %271 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %272 = bitcast %struct._GtkWidget* %271 to i8*
  %call178 = call i64 @g_signal_connect_data(i8* %270, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dialog_reset_callback to void ()*), i8* %272, void (i8*, %struct._GClosure*)* null, i32 0)
  %273 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %273)
  %274 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call179 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.44, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %274, i8* %call179, i8* null)
  %call180 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0))
  store %struct._GtkWidget* %call180, %struct._GtkWidget** %button, align 8
  %275 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %276 = bitcast %struct._GtkWidget* %275 to %struct._GTypeInstance*
  %call181 = call i64 @gtk_box_get_type() #7
  %call182 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %276, i64 %call181)
  %277 = bitcast %struct._GTypeInstance* %call182 to %struct._GtkBox*
  %278 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %277, %struct._GtkWidget* %278, i32 1, i32 1, i32 0)
  %279 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %280 = bitcast %struct._GtkWidget* %279 to i8*
  %281 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %282 = bitcast %struct._GtkWidget* %281 to i8*
  %call183 = call i64 @g_signal_connect_data(i8* %280, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @create_save_file_chooser to void ()*), i8* %282, void (i8*, %struct._GClosure*)* null, i32 0)
  %283 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %283)
  %284 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call184 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %284, i8* %call184, i8* null)
  %call185 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0)) #5
  %call186 = call %struct._GtkWidget* @gimp_frame_new(i8* %call185)
  store %struct._GtkWidget* %call186, %struct._GtkWidget** %frame, align 8
  %285 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %286 = bitcast %struct._GtkWidget* %285 to %struct._GTypeInstance*
  %call187 = call i64 @gtk_box_get_type() #7
  %call188 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %286, i64 %call187)
  %287 = bitcast %struct._GTypeInstance* %call188 to %struct._GtkBox*
  %288 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %287, %struct._GtkWidget* %288, i32 0, i32 0, i32 0)
  %289 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %289)
  %call189 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call189, %struct._GtkWidget** %hbox, align 8
  %290 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %291 = bitcast %struct._GtkWidget* %290 to %struct._GTypeInstance*
  %call190 = call i64 @gtk_container_get_type() #7
  %call191 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %291, i64 %call190)
  %292 = bitcast %struct._GTypeInstance* %call191 to %struct._GtkContainer*
  %293 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %292, %struct._GtkWidget* %293)
  %294 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %294)
  %295 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 0), align 4
  %call192 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0)) #5
  %296 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %296, i32 0, i32 0
  %arrayidx = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type, i32 0, i64 0
  %call193 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)) #5
  %297 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type194 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %297, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type194, i32 0, i64 1
  %call196 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0)) #5
  %298 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type197 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %298, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type197, i32 0, i64 2
  %call199 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0)) #5
  %299 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type200 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %299, i32 0, i32 0
  %arrayidx201 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type200, i32 0, i64 3
  %call202 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0)) #5
  %300 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type203 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %300, i32 0, i32 0
  %arrayidx204 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type203, i32 0, i64 4
  %call205 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0)) #5
  %301 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type206 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %301, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type206, i32 0, i64 5
  %call208 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0)) #5
  %302 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type209 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %302, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type209, i32 0, i64 6
  %call211 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0)) #5
  %303 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type212 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %303, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type212, i32 0, i64 7
  %call214 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0)) #5
  %304 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type215 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %304, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type215, i32 0, i64 8
  %call217 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 0, i8* null, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @explorer_radio_update to void ()*), i8* bitcast (%struct.explorer_vals_t* @wvals to i8*), i32 %295, i8* %call192, i32 0, %struct._GtkWidget** %arrayidx, i8* %call193, i32 1, %struct._GtkWidget** %arrayidx195, i8* %call196, i32 2, %struct._GtkWidget** %arrayidx198, i8* %call199, i32 3, %struct._GtkWidget** %arrayidx201, i8* %call202, i32 4, %struct._GtkWidget** %arrayidx204, i8* %call205, i32 5, %struct._GtkWidget** %arrayidx207, i8* %call208, i32 6, %struct._GtkWidget** %arrayidx210, i8* %call211, i32 7, %struct._GtkWidget** %arrayidx213, i8* %call214, i32 8, %struct._GtkWidget** %arrayidx216, i8* null)
  store %struct._GtkWidget* %call217, %struct._GtkWidget** %toggle_vbox, align 8
  %call218 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call218, %struct._GtkWidget** %toggle_vbox2, align 8
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %305 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %305, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %306 = load i32, i32* %i, align 4
  %idxprom = sext i32 %306 to i64
  %307 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type220 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %307, i32 0, i32 0
  %arrayidx221 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type220, i32 0, i64 %idxprom
  %308 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx221, align 8
  %309 = bitcast %struct._GtkWidget* %308 to i8*
  %call222 = call i8* @g_object_ref(i8* %309)
  %310 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %310 to i64
  %311 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type224 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %311, i32 0, i32 0
  %arrayidx225 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type224, i32 0, i64 %idxprom223
  %312 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx225, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %312)
  %313 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  %314 = bitcast %struct._GtkWidget* %313 to %struct._GTypeInstance*
  %call226 = call i64 @gtk_container_get_type() #7
  %call227 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %314, i64 %call226)
  %315 = bitcast %struct._GTypeInstance* %call227 to %struct._GtkContainer*
  %316 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %316 to i64
  %317 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type229 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %317, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type229, i32 0, i64 %idxprom228
  %318 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx230, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %315, %struct._GtkWidget* %318)
  %319 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox2, align 8
  %320 = bitcast %struct._GtkWidget* %319 to %struct._GTypeInstance*
  %call231 = call i64 @gtk_box_get_type() #7
  %call232 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %320, i64 %call231)
  %321 = bitcast %struct._GTypeInstance* %call232 to %struct._GtkBox*
  %322 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %322 to i64
  %323 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type234 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %323, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type234, i32 0, i64 %idxprom233
  %324 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx235, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %321, %struct._GtkWidget* %324, i32 0, i32 0, i32 0)
  %325 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %325 to i64
  %326 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type237 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %326, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type237, i32 0, i64 %idxprom236
  %327 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx238, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %327)
  %328 = load i32, i32* %i, align 4
  %idxprom239 = sext i32 %328 to i64
  %329 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type240 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %329, i32 0, i32 0
  %arrayidx241 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type240, i32 0, i64 %idxprom239
  %330 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx241, align 8
  %331 = bitcast %struct._GtkWidget* %330 to i8*
  call void @g_object_unref(i8* %331)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %332 = load i32, i32* %i, align 4
  %inc = add nsw i32 %332, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call242 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call242, %struct._GtkWidget** %toggle_vbox3, align 8
  store i32 6, i32* %i, align 4
  br label %for.cond.243

for.cond.243:                                     ; preds = %for.inc.270, %for.end
  %333 = load i32, i32* %i, align 4
  %cmp244 = icmp sle i32 %333, 8
  br i1 %cmp244, label %for.body.246, label %for.end.272

for.body.246:                                     ; preds = %for.cond.243
  %334 = load i32, i32* %i, align 4
  %idxprom247 = sext i32 %334 to i64
  %335 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type248 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %335, i32 0, i32 0
  %arrayidx249 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type248, i32 0, i64 %idxprom247
  %336 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx249, align 8
  %337 = bitcast %struct._GtkWidget* %336 to i8*
  %call250 = call i8* @g_object_ref(i8* %337)
  %338 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %338 to i64
  %339 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type252 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %339, i32 0, i32 0
  %arrayidx253 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type252, i32 0, i64 %idxprom251
  %340 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx253, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %340)
  %341 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  %342 = bitcast %struct._GtkWidget* %341 to %struct._GTypeInstance*
  %call254 = call i64 @gtk_container_get_type() #7
  %call255 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %342, i64 %call254)
  %343 = bitcast %struct._GTypeInstance* %call255 to %struct._GtkContainer*
  %344 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %344 to i64
  %345 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type257 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %345, i32 0, i32 0
  %arrayidx258 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type257, i32 0, i64 %idxprom256
  %346 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx258, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %343, %struct._GtkWidget* %346)
  %347 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox3, align 8
  %348 = bitcast %struct._GtkWidget* %347 to %struct._GTypeInstance*
  %call259 = call i64 @gtk_box_get_type() #7
  %call260 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %348, i64 %call259)
  %349 = bitcast %struct._GTypeInstance* %call260 to %struct._GtkBox*
  %350 = load i32, i32* %i, align 4
  %idxprom261 = sext i32 %350 to i64
  %351 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type262 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %351, i32 0, i32 0
  %arrayidx263 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type262, i32 0, i64 %idxprom261
  %352 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx263, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %349, %struct._GtkWidget* %352, i32 0, i32 0, i32 0)
  %353 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %353 to i64
  %354 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type265 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %354, i32 0, i32 0
  %arrayidx266 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type265, i32 0, i64 %idxprom264
  %355 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx266, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %355)
  %356 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %356 to i64
  %357 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type268 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %357, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type268, i32 0, i64 %idxprom267
  %358 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx269, align 8
  %359 = bitcast %struct._GtkWidget* %358 to i8*
  call void @g_object_unref(i8* %359)
  br label %for.inc.270

for.inc.270:                                      ; preds = %for.body.246
  %360 = load i32, i32* %i, align 4
  %inc271 = add nsw i32 %360, 1
  store i32 %inc271, i32* %i, align 4
  br label %for.cond.243

for.end.272:                                      ; preds = %for.cond.243
  %361 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %362 = bitcast %struct._GtkWidget* %361 to %struct._GTypeInstance*
  %call273 = call i64 @gtk_box_get_type() #7
  %call274 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %362, i64 %call273)
  %363 = bitcast %struct._GTypeInstance* %call274 to %struct._GtkBox*
  %364 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %363, %struct._GtkWidget* %364, i32 0, i32 0, i32 0)
  %365 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %365)
  %366 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %367 = bitcast %struct._GtkWidget* %366 to %struct._GTypeInstance*
  %call275 = call i64 @gtk_box_get_type() #7
  %call276 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %367, i64 %call275)
  %368 = bitcast %struct._GTypeInstance* %call276 to %struct._GtkBox*
  %369 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %368, %struct._GtkWidget* %369, i32 0, i32 0, i32 0)
  %370 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %370)
  %371 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %372 = bitcast %struct._GtkWidget* %371 to %struct._GTypeInstance*
  %call277 = call i64 @gtk_box_get_type() #7
  %call278 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %372, i64 %call277)
  %373 = bitcast %struct._GTypeInstance* %call278 to %struct._GtkBox*
  %374 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox3, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %373, %struct._GtkWidget* %374, i32 0, i32 0, i32 0)
  %375 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox3, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %375)
  %call279 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call279, %struct._GtkWidget** %vbox, align 8
  %376 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %377 = bitcast %struct._GtkWidget* %376 to %struct._GTypeInstance*
  %call280 = call i64 @gtk_container_get_type() #7
  %call281 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %377, i64 %call280)
  %378 = bitcast %struct._GTypeInstance* %call281 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %378, i32 12)
  %379 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %380 = bitcast %struct._GtkWidget* %379 to %struct._GTypeInstance*
  %call282 = call i64 @gtk_notebook_get_type() #7
  %call283 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %380, i64 %call282)
  %381 = bitcast %struct._GTypeInstance* %call283 to %struct._GtkNotebook*
  %382 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call284 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0)) #5
  %call285 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call284)
  %call286 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %381, %struct._GtkWidget* %382, %struct._GtkWidget* %call285)
  %383 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %383)
  %call287 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i32 0, i32 0)) #5
  %call288 = call %struct._GtkWidget* @gimp_frame_new(i8* %call287)
  store %struct._GtkWidget* %call288, %struct._GtkWidget** %frame, align 8
  %384 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %385 = bitcast %struct._GtkWidget* %384 to %struct._GTypeInstance*
  %call289 = call i64 @gtk_box_get_type() #7
  %call290 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %385, i64 %call289)
  %386 = bitcast %struct._GTypeInstance* %call290 to %struct._GtkBox*
  %387 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %386, %struct._GtkWidget* %387, i32 0, i32 0, i32 0)
  %388 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %388)
  %call291 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call291, %struct._GtkWidget** %table, align 8
  %389 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %390 = bitcast %struct._GtkWidget* %389 to %struct._GTypeInstance*
  %call292 = call i64 @gtk_table_get_type() #7
  %call293 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %390, i64 %call292)
  %391 = bitcast %struct._GTypeInstance* %call293 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %391, i32 6)
  %392 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %393 = bitcast %struct._GtkWidget* %392 to %struct._GTypeInstance*
  %call294 = call i64 @gtk_table_get_type() #7
  %call295 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %393, i64 %call294)
  %394 = bitcast %struct._GTypeInstance* %call295 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %394, i32 6)
  %395 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %396 = bitcast %struct._GtkWidget* %395 to %struct._GTypeInstance*
  %call296 = call i64 @gtk_container_get_type() #7
  %call297 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %396, i64 %call296)
  %397 = bitcast %struct._GTypeInstance* %call297 to %struct._GtkContainer*
  %398 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %397, %struct._GtkWidget* %398)
  %399 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %399)
  %400 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %401 = bitcast %struct._GtkWidget* %400 to %struct._GTypeInstance*
  %call298 = call i64 @gtk_table_get_type() #7
  %call299 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %401, i64 %call298)
  %402 = bitcast %struct._GTypeInstance* %call299 to %struct._GtkTable*
  %call300 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0)) #5
  %403 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19), align 4
  %conv301 = sitofp i32 %403 to double
  %call302 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i32 0, i32 0)) #5
  %call303 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %402, i32 0, i32 0, i8* %call300, i32 200, i32 0, double %conv301, double 2.000000e+00, double 8.192000e+03, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call302, i8* null)
  %404 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %ncol = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %404, i32 0, i32 8
  store %struct._GtkObject* %call303, %struct._GtkObject** %ncol, align 8
  %405 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %ncol304 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %405, i32 0, i32 8
  %406 = load %struct._GtkObject*, %struct._GtkObject** %ncol304, align 8
  %407 = bitcast %struct._GtkObject* %406 to i8*
  %call305 = call i64 @g_signal_connect_data(i8* %407, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @explorer_number_of_colors_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call306 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i32 0, i32 0)) #5
  %call307 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call306)
  store %struct._GtkWidget* %call307, %struct._GtkWidget** %toggle, align 8
  %408 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %useloglog = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %408, i32 0, i32 9
  store %struct._GtkWidget* %call307, %struct._GtkWidget** %useloglog, align 8
  %409 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %410 = bitcast %struct._GtkWidget* %409 to %struct._GTypeInstance*
  %call308 = call i64 @gtk_table_get_type() #7
  %call309 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %410, i64 %call308)
  %411 = bitcast %struct._GTypeInstance* %call309 to %struct._GtkTable*
  %412 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %411, %struct._GtkWidget* %412, i32 0, i32 3, i32 1, i32 2)
  %413 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %414 = bitcast %struct._GtkWidget* %413 to i8*
  %call310 = call i64 @g_signal_connect_data(i8* %414, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @explorer_toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 21) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %415 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %416 = bitcast %struct._GtkWidget* %415 to %struct._GTypeInstance*
  %call311 = call i64 @gtk_toggle_button_get_type() #7
  %call312 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %416, i64 %call311)
  %417 = bitcast %struct._GTypeInstance* %call312 to %struct._GtkToggleButton*
  %418 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 21), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %417, i32 %418)
  %419 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %419)
  %420 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call313 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.62, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %420, i8* %call313, i8* null)
  %call314 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0)) #5
  %call315 = call %struct._GtkWidget* @gimp_frame_new(i8* %call314)
  store %struct._GtkWidget* %call315, %struct._GtkWidget** %frame, align 8
  %421 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %422 = bitcast %struct._GtkWidget* %421 to %struct._GTypeInstance*
  %call316 = call i64 @gtk_box_get_type() #7
  %call317 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %422, i64 %call316)
  %423 = bitcast %struct._GTypeInstance* %call317 to %struct._GtkBox*
  %424 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %423, %struct._GtkWidget* %424, i32 0, i32 0, i32 0)
  %425 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %425)
  %call318 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call318, %struct._GtkWidget** %table, align 8
  %426 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %427 = bitcast %struct._GtkWidget* %426 to %struct._GTypeInstance*
  %call319 = call i64 @gtk_table_get_type() #7
  %call320 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %427, i64 %call319)
  %428 = bitcast %struct._GTypeInstance* %call320 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %428, i32 6)
  %429 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %430 = bitcast %struct._GtkWidget* %429 to %struct._GTypeInstance*
  %call321 = call i64 @gtk_table_get_type() #7
  %call322 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %430, i64 %call321)
  %431 = bitcast %struct._GTypeInstance* %call322 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %431, i32 6)
  %432 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %433 = bitcast %struct._GtkWidget* %432 to %struct._GTypeInstance*
  %call323 = call i64 @gtk_container_get_type() #7
  %call324 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %433, i64 %call323)
  %434 = bitcast %struct._GTypeInstance* %call324 to %struct._GtkContainer*
  %435 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %434, %struct._GtkWidget* %435)
  %436 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %436)
  %437 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %438 = bitcast %struct._GtkWidget* %437 to %struct._GTypeInstance*
  %call325 = call i64 @gtk_table_get_type() #7
  %call326 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %438, i64 %call325)
  %439 = bitcast %struct._GTypeInstance* %call326 to %struct._GtkTable*
  %call327 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0)) #5
  %440 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 9), align 8
  %call328 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.65, i32 0, i32 0)) #5
  %call329 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %439, i32 0, i32 0, i8* %call327, i32 200, i32 0, double %440, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call328, i8* null)
  %441 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %red = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %441, i32 0, i32 10
  store %struct._GtkObject* %call329, %struct._GtkObject** %red, align 8
  %442 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %red330 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %442, i32 0, i32 10
  %443 = load %struct._GtkObject*, %struct._GtkObject** %red330, align 8
  %444 = bitcast %struct._GtkObject* %443 to i8*
  %call331 = call i64 @g_signal_connect_data(i8* %444, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @explorer_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 9) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %445 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %446 = bitcast %struct._GtkWidget* %445 to %struct._GTypeInstance*
  %call332 = call i64 @gtk_table_get_type() #7
  %call333 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %446, i64 %call332)
  %447 = bitcast %struct._GTypeInstance* %call333 to %struct._GtkTable*
  %call334 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0)) #5
  %448 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 10), align 8
  %call335 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.67, i32 0, i32 0)) #5
  %call336 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %447, i32 0, i32 1, i8* %call334, i32 200, i32 0, double %448, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call335, i8* null)
  %449 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %green = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %449, i32 0, i32 11
  store %struct._GtkObject* %call336, %struct._GtkObject** %green, align 8
  %450 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %green337 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %450, i32 0, i32 11
  %451 = load %struct._GtkObject*, %struct._GtkObject** %green337, align 8
  %452 = bitcast %struct._GtkObject* %451 to i8*
  %call338 = call i64 @g_signal_connect_data(i8* %452, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @explorer_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 10) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %453 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %454 = bitcast %struct._GtkWidget* %453 to %struct._GTypeInstance*
  %call339 = call i64 @gtk_table_get_type() #7
  %call340 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %454, i64 %call339)
  %455 = bitcast %struct._GTypeInstance* %call340 to %struct._GtkTable*
  %call341 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0)) #5
  %456 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 11), align 8
  %call342 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.69, i32 0, i32 0)) #5
  %call343 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %455, i32 0, i32 2, i8* %call341, i32 200, i32 0, double %456, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call342, i8* null)
  %457 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %blue = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %457, i32 0, i32 12
  store %struct._GtkObject* %call343, %struct._GtkObject** %blue, align 8
  %458 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %blue344 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %458, i32 0, i32 12
  %459 = load %struct._GtkObject*, %struct._GtkObject** %blue344, align 8
  %460 = bitcast %struct._GtkObject* %459 to i8*
  %call345 = call i64 @g_signal_connect_data(i8* %460, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @explorer_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 11) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call346 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0)) #5
  %call347 = call %struct._GtkWidget* @gimp_frame_new(i8* %call346)
  store %struct._GtkWidget* %call347, %struct._GtkWidget** %frame, align 8
  %461 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %462 = bitcast %struct._GtkWidget* %461 to %struct._GTypeInstance*
  %call348 = call i64 @gtk_box_get_type() #7
  %call349 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %462, i64 %call348)
  %463 = bitcast %struct._GTypeInstance* %call349 to %struct._GtkBox*
  %464 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %463, %struct._GtkWidget* %464, i32 0, i32 0, i32 0)
  %465 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %465)
  %call350 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call350, %struct._GtkWidget** %hbox, align 8
  %466 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %467 = bitcast %struct._GtkWidget* %466 to %struct._GTypeInstance*
  %call351 = call i64 @gtk_container_get_type() #7
  %call352 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %467, i64 %call351)
  %468 = bitcast %struct._GTypeInstance* %call352 to %struct._GtkContainer*
  %469 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %468, %struct._GtkWidget* %469)
  %470 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %470)
  %call353 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0)) #5
  %471 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 12), align 4
  %call354 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0)) #5
  %472 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %redmode = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %472, i32 0, i32 13
  %arrayidx355 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %redmode, i32 0, i64 0
  %call356 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0)) #5
  %473 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %redmode357 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %473, i32 0, i32 13
  %arrayidx358 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %redmode357, i32 0, i64 1
  %call359 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.74, i32 0, i32 0), i64 15)
  %474 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %redmode360 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %474, i32 0, i32 13
  %arrayidx361 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %redmode360, i32 0, i64 2
  %call362 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call353, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @explorer_radio_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 12) to i8*), i32 %471, i8* %call354, i32 0, %struct._GtkWidget** %arrayidx355, i8* %call356, i32 1, %struct._GtkWidget** %arrayidx358, i8* %call359, i32 2, %struct._GtkWidget** %arrayidx361, i8* null)
  store %struct._GtkWidget* %call362, %struct._GtkWidget** %frame, align 8
  %475 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %redmode363 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %475, i32 0, i32 13
  %arrayidx364 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %redmode363, i32 0, i64 0
  %476 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx364, align 8
  %call365 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %476, i8* %call365, i8* null)
  %477 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %redmode366 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %477, i32 0, i32 13
  %arrayidx367 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %redmode366, i32 0, i64 1
  %478 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx367, align 8
  %call368 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.76, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %478, i8* %call368, i8* null)
  %479 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %redmode369 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %479, i32 0, i32 13
  %arrayidx370 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %redmode369, i32 0, i64 2
  %480 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx370, align 8
  %call371 = call i8* @gettext(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.77, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %480, i8* %call371, i8* null)
  %481 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %482 = bitcast %struct._GtkWidget* %481 to %struct._GTypeInstance*
  %call372 = call i64 @gtk_box_get_type() #7
  %call373 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %482, i64 %call372)
  %483 = bitcast %struct._GTypeInstance* %call373 to %struct._GtkBox*
  %484 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %483, %struct._GtkWidget* %484, i32 1, i32 1, i32 0)
  %485 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %485)
  %486 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %487 = bitcast %struct._GtkWidget* %486 to %struct._GTypeInstance*
  %call374 = call i64 @gtk_bin_get_type() #7
  %call375 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %487, i64 %call374)
  %488 = bitcast %struct._GTypeInstance* %call375 to %struct._GtkBin*
  %call376 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %488)
  store %struct._GtkWidget* %call376, %struct._GtkWidget** %toggle_vbox, align 8
  %call377 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0)) #5
  %call378 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call377)
  store %struct._GtkWidget* %call378, %struct._GtkWidget** %toggle, align 8
  %489 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %redinvert = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %489, i32 0, i32 14
  store %struct._GtkWidget* %call378, %struct._GtkWidget** %redinvert, align 8
  %490 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %491 = bitcast %struct._GtkWidget* %490 to %struct._GTypeInstance*
  %call379 = call i64 @gtk_toggle_button_get_type() #7
  %call380 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %491, i64 %call379)
  %492 = bitcast %struct._GTypeInstance* %call380 to %struct._GtkToggleButton*
  %493 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 15), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %492, i32 %493)
  %494 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  %495 = bitcast %struct._GtkWidget* %494 to %struct._GTypeInstance*
  %call381 = call i64 @gtk_box_get_type() #7
  %call382 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %495, i64 %call381)
  %496 = bitcast %struct._GTypeInstance* %call382 to %struct._GtkBox*
  %497 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %496, %struct._GtkWidget* %497, i32 0, i32 0, i32 0)
  %498 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %499 = bitcast %struct._GtkWidget* %498 to i8*
  %call383 = call i64 @g_signal_connect_data(i8* %499, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @explorer_toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 15) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %500 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %500)
  %501 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call384 = call i8* @gettext(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.79, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %501, i8* %call384, i8* null)
  %call385 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0)) #5
  %502 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 13), align 4
  %call386 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0)) #5
  %503 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %greenmode = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %503, i32 0, i32 15
  %arrayidx387 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %greenmode, i32 0, i64 0
  %call388 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0)) #5
  %504 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %greenmode389 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %504, i32 0, i32 15
  %arrayidx390 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %greenmode389, i32 0, i64 1
  %call391 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.74, i32 0, i32 0), i64 15)
  %505 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %greenmode392 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %505, i32 0, i32 15
  %arrayidx393 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %greenmode392, i32 0, i64 2
  %call394 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call385, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @explorer_radio_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 13) to i8*), i32 %502, i8* %call386, i32 0, %struct._GtkWidget** %arrayidx387, i8* %call388, i32 1, %struct._GtkWidget** %arrayidx390, i8* %call391, i32 2, %struct._GtkWidget** %arrayidx393, i8* null)
  store %struct._GtkWidget* %call394, %struct._GtkWidget** %frame, align 8
  %506 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %greenmode395 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %506, i32 0, i32 15
  %arrayidx396 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %greenmode395, i32 0, i64 0
  %507 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx396, align 8
  %call397 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %507, i8* %call397, i8* null)
  %508 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %greenmode398 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %508, i32 0, i32 15
  %arrayidx399 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %greenmode398, i32 0, i64 1
  %509 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx399, align 8
  %call400 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.76, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %509, i8* %call400, i8* null)
  %510 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %greenmode401 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %510, i32 0, i32 15
  %arrayidx402 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %greenmode401, i32 0, i64 2
  %511 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx402, align 8
  %call403 = call i8* @gettext(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.77, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %511, i8* %call403, i8* null)
  %512 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %513 = bitcast %struct._GtkWidget* %512 to %struct._GTypeInstance*
  %call404 = call i64 @gtk_box_get_type() #7
  %call405 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %513, i64 %call404)
  %514 = bitcast %struct._GTypeInstance* %call405 to %struct._GtkBox*
  %515 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %514, %struct._GtkWidget* %515, i32 1, i32 1, i32 0)
  %516 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %516)
  %517 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %518 = bitcast %struct._GtkWidget* %517 to %struct._GTypeInstance*
  %call406 = call i64 @gtk_bin_get_type() #7
  %call407 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %518, i64 %call406)
  %519 = bitcast %struct._GTypeInstance* %call407 to %struct._GtkBin*
  %call408 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %519)
  store %struct._GtkWidget* %call408, %struct._GtkWidget** %toggle_vbox, align 8
  %call409 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0)) #5
  %call410 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call409)
  store %struct._GtkWidget* %call410, %struct._GtkWidget** %toggle, align 8
  %520 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %greeninvert = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %520, i32 0, i32 16
  store %struct._GtkWidget* %call410, %struct._GtkWidget** %greeninvert, align 8
  %521 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %522 = bitcast %struct._GtkWidget* %521 to %struct._GTypeInstance*
  %call411 = call i64 @gtk_toggle_button_get_type() #7
  %call412 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %522, i64 %call411)
  %523 = bitcast %struct._GTypeInstance* %call412 to %struct._GtkToggleButton*
  %524 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 16), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %523, i32 %524)
  %525 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  %526 = bitcast %struct._GtkWidget* %525 to %struct._GTypeInstance*
  %call413 = call i64 @gtk_box_get_type() #7
  %call414 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %526, i64 %call413)
  %527 = bitcast %struct._GTypeInstance* %call414 to %struct._GtkBox*
  %528 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %527, %struct._GtkWidget* %528, i32 0, i32 0, i32 0)
  %529 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %530 = bitcast %struct._GtkWidget* %529 to i8*
  %call415 = call i64 @g_signal_connect_data(i8* %530, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @explorer_toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 16) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %531 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %531)
  %532 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call416 = call i8* @gettext(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.79, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %532, i8* %call416, i8* null)
  %call417 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0)) #5
  %533 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 14), align 4
  %call418 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0)) #5
  %534 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %bluemode = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %534, i32 0, i32 17
  %arrayidx419 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %bluemode, i32 0, i64 0
  %call420 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0)) #5
  %535 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %bluemode421 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %535, i32 0, i32 17
  %arrayidx422 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %bluemode421, i32 0, i64 1
  %call423 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.74, i32 0, i32 0), i64 15)
  %536 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %bluemode424 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %536, i32 0, i32 17
  %arrayidx425 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %bluemode424, i32 0, i64 2
  %call426 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call417, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @explorer_radio_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 14) to i8*), i32 %533, i8* %call418, i32 0, %struct._GtkWidget** %arrayidx419, i8* %call420, i32 1, %struct._GtkWidget** %arrayidx422, i8* %call423, i32 2, %struct._GtkWidget** %arrayidx425, i8* null)
  store %struct._GtkWidget* %call426, %struct._GtkWidget** %frame, align 8
  %537 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %bluemode427 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %537, i32 0, i32 17
  %arrayidx428 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %bluemode427, i32 0, i64 0
  %538 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx428, align 8
  %call429 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %538, i8* %call429, i8* null)
  %539 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %bluemode430 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %539, i32 0, i32 17
  %arrayidx431 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %bluemode430, i32 0, i64 1
  %540 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx431, align 8
  %call432 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.76, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %540, i8* %call432, i8* null)
  %541 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %bluemode433 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %541, i32 0, i32 17
  %arrayidx434 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %bluemode433, i32 0, i64 2
  %542 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx434, align 8
  %call435 = call i8* @gettext(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.77, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %542, i8* %call435, i8* null)
  %543 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %544 = bitcast %struct._GtkWidget* %543 to %struct._GTypeInstance*
  %call436 = call i64 @gtk_box_get_type() #7
  %call437 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %544, i64 %call436)
  %545 = bitcast %struct._GTypeInstance* %call437 to %struct._GtkBox*
  %546 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %545, %struct._GtkWidget* %546, i32 1, i32 1, i32 0)
  %547 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %547)
  %548 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %549 = bitcast %struct._GtkWidget* %548 to %struct._GTypeInstance*
  %call438 = call i64 @gtk_bin_get_type() #7
  %call439 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %549, i64 %call438)
  %550 = bitcast %struct._GTypeInstance* %call439 to %struct._GtkBin*
  %call440 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %550)
  store %struct._GtkWidget* %call440, %struct._GtkWidget** %toggle_vbox, align 8
  %call441 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0)) #5
  %call442 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call441)
  store %struct._GtkWidget* %call442, %struct._GtkWidget** %toggle, align 8
  %551 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %blueinvert = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %551, i32 0, i32 18
  store %struct._GtkWidget* %call442, %struct._GtkWidget** %blueinvert, align 8
  %552 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %553 = bitcast %struct._GtkWidget* %552 to %struct._GTypeInstance*
  %call443 = call i64 @gtk_toggle_button_get_type() #7
  %call444 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %553, i64 %call443)
  %554 = bitcast %struct._GTypeInstance* %call444 to %struct._GtkToggleButton*
  %555 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 17), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %554, i32 %555)
  %556 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  %557 = bitcast %struct._GtkWidget* %556 to %struct._GTypeInstance*
  %call445 = call i64 @gtk_box_get_type() #7
  %call446 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %557, i64 %call445)
  %558 = bitcast %struct._GTypeInstance* %call446 to %struct._GtkBox*
  %559 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %558, %struct._GtkWidget* %559, i32 0, i32 0, i32 0)
  %560 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %561 = bitcast %struct._GtkWidget* %560 to i8*
  %call447 = call i64 @g_signal_connect_data(i8* %561, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @explorer_toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 17) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %562 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %562)
  %563 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call448 = call i8* @gettext(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.79, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %563, i8* %call448, i8* null)
  %call449 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0)) #5
  %call450 = call %struct._GtkWidget* @gimp_frame_new(i8* %call449)
  store %struct._GtkWidget* %call450, %struct._GtkWidget** %frame, align 8
  %564 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %565 = bitcast %struct._GtkWidget* %564 to %struct._GTypeInstance*
  %call451 = call i64 @gtk_box_get_type() #7
  %call452 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %565, i64 %call451)
  %566 = bitcast %struct._GTypeInstance* %call452 to %struct._GtkBox*
  %567 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %566, %struct._GtkWidget* %567, i32 0, i32 0, i32 0)
  %568 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %568)
  %call453 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call453, %struct._GtkWidget** %toggle_vbox, align 8
  %569 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %570 = bitcast %struct._GtkWidget* %569 to %struct._GTypeInstance*
  %call454 = call i64 @gtk_container_get_type() #7
  %call455 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %570, i64 %call454)
  %571 = bitcast %struct._GTypeInstance* %call455 to %struct._GtkContainer*
  %572 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %571, %struct._GtkWidget* %572)
  %573 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %573)
  %574 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call456 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i32 0, i32 0)) #5
  %call457 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %574, i8* %call456)
  %575 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %colormode = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %575, i32 0, i32 19
  %arrayidx458 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %colormode, i32 0, i64 0
  store %struct._GtkWidget* %call457, %struct._GtkWidget** %arrayidx458, align 8
  store %struct._GtkWidget* %call457, %struct._GtkWidget** %toggle, align 8
  %576 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %577 = bitcast %struct._GtkWidget* %576 to %struct._GTypeInstance*
  %call459 = call i64 @gtk_radio_button_get_type() #7
  %call460 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %577, i64 %call459)
  %578 = bitcast %struct._GTypeInstance* %call460 to %struct._GtkRadioButton*
  %call461 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %578)
  store %struct._GSList* %call461, %struct._GSList** %group, align 8
  %579 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  %580 = bitcast %struct._GtkWidget* %579 to %struct._GTypeInstance*
  %call462 = call i64 @gtk_box_get_type() #7
  %call463 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %580, i64 %call462)
  %581 = bitcast %struct._GTypeInstance* %call463 to %struct._GtkBox*
  %582 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %581, %struct._GtkWidget* %582, i32 0, i32 0, i32 0)
  %583 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %584 = bitcast %struct._GtkWidget* %583 to %struct._GTypeInstance*
  %call464 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %584, i64 80)
  %585 = bitcast %struct._GTypeInstance* %call464 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %585, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8* null)
  %586 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %587 = bitcast %struct._GtkWidget* %586 to i8*
  %call465 = call i64 @g_signal_connect_data(i8* %587, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @explorer_radio_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 8) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %588 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %589 = bitcast %struct._GtkWidget* %588 to %struct._GTypeInstance*
  %call466 = call i64 @gtk_toggle_button_get_type() #7
  %call467 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %589, i64 %call466)
  %590 = bitcast %struct._GTypeInstance* %call467 to %struct._GtkToggleButton*
  %591 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 8), align 4
  %cmp468 = icmp eq i32 %591, 0
  %conv469 = zext i1 %cmp468 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %590, i32 %conv469)
  %592 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %592)
  %593 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call470 = call i8* @gettext(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.85, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %593, i8* %call470, i8* null)
  %call471 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call471, %struct._GtkWidget** %hbox, align 8
  %594 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  %595 = bitcast %struct._GtkWidget* %594 to %struct._GTypeInstance*
  %call472 = call i64 @gtk_box_get_type() #7
  %call473 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %595, i64 %call472)
  %596 = bitcast %struct._GTypeInstance* %call473 to %struct._GtkBox*
  %597 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %596, %struct._GtkWidget* %597, i32 0, i32 0, i32 0)
  %598 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %598)
  %599 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call474 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.86, i32 0, i32 0)) #5
  %call475 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %599, i8* %call474)
  %600 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %colormode476 = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %600, i32 0, i32 19
  %arrayidx477 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %colormode476, i32 0, i64 1
  store %struct._GtkWidget* %call475, %struct._GtkWidget** %arrayidx477, align 8
  store %struct._GtkWidget* %call475, %struct._GtkWidget** %toggle, align 8
  %601 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %602 = bitcast %struct._GtkWidget* %601 to %struct._GTypeInstance*
  %call478 = call i64 @gtk_radio_button_get_type() #7
  %call479 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %602, i64 %call478)
  %603 = bitcast %struct._GTypeInstance* %call479 to %struct._GtkRadioButton*
  %call480 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %603)
  store %struct._GSList* %call480, %struct._GSList** %group, align 8
  %604 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %605 = bitcast %struct._GtkWidget* %604 to %struct._GTypeInstance*
  %call481 = call i64 @gtk_box_get_type() #7
  %call482 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %605, i64 %call481)
  %606 = bitcast %struct._GTypeInstance* %call482 to %struct._GtkBox*
  %607 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %606, %struct._GtkWidget* %607, i32 1, i32 1, i32 0)
  %608 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %609 = bitcast %struct._GtkWidget* %608 to %struct._GTypeInstance*
  %call483 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %609, i64 80)
  %610 = bitcast %struct._GTypeInstance* %call483 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %610, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %611 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %612 = bitcast %struct._GtkWidget* %611 to i8*
  %call484 = call i64 @g_signal_connect_data(i8* %612, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @explorer_radio_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 8) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %613 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %614 = bitcast %struct._GtkWidget* %613 to %struct._GTypeInstance*
  %call485 = call i64 @gtk_toggle_button_get_type() #7
  %call486 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %614, i64 %call485)
  %615 = bitcast %struct._GTypeInstance* %call486 to %struct._GtkToggleButton*
  %616 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 8), align 4
  %cmp487 = icmp eq i32 %616, 1
  %conv488 = zext i1 %cmp487 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %615, i32 %conv488)
  %617 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %617)
  %618 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call489 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.87, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %618, i8* %call489, i8* null)
  %call490 = call i8* @gimp_context_get_gradient()
  store i8* %call490, i8** %gradient_name, align 8
  %619 = load i8*, i8** %gradient_name, align 8
  %620 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19), align 4
  %621 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 20), align 4
  %call491 = call i32 @gimp_gradient_get_uniform_samples(i8* %619, i32 %620, i32 %621, i32* @n_gradient_samples, double** @gradient_samples)
  %call492 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.88, i32 0, i32 0)) #5
  %622 = load i8*, i8** %gradient_name, align 8
  %call493 = call %struct._GtkWidget* @gimp_gradient_select_button_new(i8* %call492, i8* %622)
  store %struct._GtkWidget* %call493, %struct._GtkWidget** %gradient, align 8
  %623 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient, align 8
  %624 = bitcast %struct._GtkWidget* %623 to i8*
  %call494 = call i64 @g_signal_connect_data(i8* %624, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGradientSelectButton*, i8*, i32, double*, i32, i8*)* @explorer_gradient_select_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %625 = load i8*, i8** %gradient_name, align 8
  call void @g_free(i8* %625)
  %626 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %627 = bitcast %struct._GtkWidget* %626 to %struct._GTypeInstance*
  %call495 = call i64 @gtk_box_get_type() #7
  %call496 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %627, i64 %call495)
  %628 = bitcast %struct._GTypeInstance* %call496 to %struct._GtkBox*
  %629 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %628, %struct._GtkWidget* %629, i32 0, i32 0, i32 0)
  %630 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %630)
  %call497 = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call497, %struct._GtkWidget** %abox, align 8
  store i32 1, i32* %ysize, align 4
  br label %for.cond.498

for.cond.498:                                     ; preds = %for.inc.504, %for.end.272
  %631 = load i32, i32* %ysize, align 4
  %632 = load i32, i32* %ysize, align 4
  %mul499 = mul nsw i32 %631, %632
  %633 = load i32, i32* %ysize, align 4
  %mul500 = mul nsw i32 %mul499, %633
  %cmp501 = icmp slt i32 %mul500, 8192
  br i1 %cmp501, label %for.body.503, label %for.end.506

for.body.503:                                     ; preds = %for.cond.498
  br label %for.inc.504

for.inc.504:                                      ; preds = %for.body.503
  %634 = load i32, i32* %ysize, align 4
  %inc505 = add nsw i32 %634, 1
  store i32 %inc505, i32* %ysize, align 4
  br label %for.cond.498

for.end.506:                                      ; preds = %for.cond.498
  %635 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19), align 4
  %636 = load i32, i32* %ysize, align 4
  %div = sdiv i32 %635, %636
  store i32 %div, i32* %xsize, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.506
  %637 = load i32, i32* %xsize, align 4
  %638 = load i32, i32* %ysize, align 4
  %mul507 = mul nsw i32 %637, %638
  %cmp508 = icmp slt i32 %mul507, 8192
  br i1 %cmp508, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %639 = load i32, i32* %xsize, align 4
  %inc510 = add nsw i32 %639, 1
  store i32 %inc510, i32* %xsize, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %640 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %641 = load i32, i32* %xsize, align 4
  %642 = load i32, i32* %ysize, align 4
  %mul511 = mul nsw i32 %642, 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %640, i32 %641, i32 %mul511)
  %643 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  %644 = bitcast %struct._GtkWidget* %643 to %struct._GTypeInstance*
  %call512 = call i64 @gtk_box_get_type() #7
  %call513 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %644, i64 %call512)
  %645 = bitcast %struct._GTypeInstance* %call513 to %struct._GtkBox*
  %646 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %645, %struct._GtkWidget* %646, i32 0, i32 0, i32 0)
  %647 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %647)
  %call514 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call514, %struct._GtkWidget** @cmap_preview, align 8
  %648 = load %struct._GtkWidget*, %struct._GtkWidget** @cmap_preview, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %648, i32 32, i32 32)
  %649 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %650 = bitcast %struct._GtkWidget* %649 to %struct._GTypeInstance*
  %call515 = call i64 @gtk_container_get_type() #7
  %call516 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %650, i64 %call515)
  %651 = bitcast %struct._GTypeInstance* %call516 to %struct._GtkContainer*
  %652 = load %struct._GtkWidget*, %struct._GtkWidget** @cmap_preview, align 8
  call void @gtk_container_add(%struct._GtkContainer* %651, %struct._GtkWidget* %652)
  %653 = load %struct._GtkWidget*, %struct._GtkWidget** @cmap_preview, align 8
  %654 = bitcast %struct._GtkWidget* %653 to i8*
  %call517 = call i64 @g_signal_connect_data(i8* %654, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.90, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*)* @cmap_preview_size_allocate to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %655 = load %struct._GtkWidget*, %struct._GtkWidget** @cmap_preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %655)
  %call518 = call %struct._GtkWidget* @add_objects_list()
  store %struct._GtkWidget* %call518, %struct._GtkWidget** %frame, align 8
  %656 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %657 = bitcast %struct._GtkWidget* %656 to %struct._GTypeInstance*
  %call519 = call i64 @gtk_notebook_get_type() #7
  %call520 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %657, i64 %call519)
  %658 = bitcast %struct._GTypeInstance* %call520 to %struct._GtkNotebook*
  %659 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %call521 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0)) #5
  %call522 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call521)
  %call523 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %658, %struct._GtkWidget* %659, %struct._GtkWidget* %call522)
  %660 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %660)
  %661 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %662 = bitcast %struct._GtkWidget* %661 to %struct._GTypeInstance*
  %call524 = call i64 @gtk_notebook_get_type() #7
  %call525 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %662, i64 %call524)
  %663 = bitcast %struct._GTypeInstance* %call525 to %struct._GtkNotebook*
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %663, i32 0)
  %664 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %664)
  store i32 1, i32* @ready_now, align 4
  call void @set_cmap_preview()
  call void @dialog_update_preview()
  call void @gtk_main()
  %665 = load i8*, i8** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 1), align 8
  call void @g_free(i8* %665)
  %666 = load i32, i32* getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 2), align 4
  ret i32 %666
}

declare void @gimp_ui_init(i8*, i32) #1

declare i8* @gimp_gimprc_query(i8*) #1

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare void @g_free(i8*) #1

declare noalias i8* @gimp_personal_rc_file(i8*) #1

declare noalias i8* @gimp_config_build_data_path(i8*) #1

declare noalias i8* @g_strescape(i8*, i8*) #1

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

declare i8* @gimp_filename_to_utf8(i8*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

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

; Function Attrs: nounwind uwtable
define internal void @dialog_response(%struct._GtkWidget* %widget, i32 %response_id, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 -5, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 2), align 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %1)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %2)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

declare void @gtk_main_quit() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @preview_button_press_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 8
  %1 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %2, i32 0, i32 4
  %3 = load double, double* %x, align 8
  store double %3, double* @x_press, align 8
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 5
  %5 = load double, double* %y, align 8
  store double %5, double* @y_press, align 8
  %6 = load i32, i32* @preview_width, align 4
  %conv = sitofp i32 %6 to double
  store double %conv, double* @xbild, align 8
  %7 = load i32, i32* @preview_height, align 4
  %conv1 = sitofp i32 %7 to double
  store double %conv1, double* @ybild, align 8
  %8 = load double, double* @xmax, align 8
  %9 = load double, double* @xmin, align 8
  %sub = fsub double %8, %9
  %10 = load double, double* @xbild, align 8
  %div = fdiv double %sub, %10
  store double %div, double* @xdiff, align 8
  %11 = load double, double* @ymax, align 8
  %12 = load double, double* @ymin, align 8
  %sub2 = fsub double %11, %12
  %13 = load double, double* @ybild, align 8
  %div3 = fdiv double %sub2, %13
  store double %div3, double* @ydiff, align 8
  %14 = load double, double* @x_press, align 8
  %conv4 = fptosi double %14 to i32
  %15 = load double, double* @y_press, align 8
  %conv5 = fptosi double %15 to i32
  call void @preview_draw_crosshair(i32 %conv4, i32 %conv5)
  call void @preview_redraw()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @preview_button_release_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %l_xmin = alloca double, align 8
  %l_xmax = alloca double, align 8
  %l_ymin = alloca double, align 8
  %l_ymax = alloca double, align 8
  %x_release = alloca double, align 8
  %y_release = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 8
  %1 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end.43

if.then:                                          ; preds = %entry
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %2, i32 0, i32 4
  %3 = load double, double* %x, align 8
  store double %3, double* %x_release, align 8
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 5
  %5 = load double, double* %y, align 8
  store double %5, double* %y_release, align 8
  %6 = load double, double* @x_press, align 8
  %cmp1 = fcmp oge double %6, 0.000000e+00
  br i1 %cmp1, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.then
  %7 = load double, double* @y_press, align 8
  %cmp2 = fcmp oge double %7, 0.000000e+00
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.42

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %8 = load double, double* %x_release, align 8
  %cmp4 = fcmp oge double %8, 0.000000e+00
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.42

land.lhs.true.5:                                  ; preds = %land.lhs.true.3
  %9 = load double, double* %y_release, align 8
  %cmp6 = fcmp oge double %9, 0.000000e+00
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.42

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %10 = load double, double* @x_press, align 8
  %11 = load i32, i32* @preview_width, align 4
  %conv = sitofp i32 %11 to double
  %cmp8 = fcmp olt double %10, %conv
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.42

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %12 = load double, double* @y_press, align 8
  %13 = load i32, i32* @preview_height, align 4
  %conv11 = sitofp i32 %13 to double
  %cmp12 = fcmp olt double %12, %conv11
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.42

land.lhs.true.14:                                 ; preds = %land.lhs.true.10
  %14 = load double, double* %x_release, align 8
  %15 = load i32, i32* @preview_width, align 4
  %conv15 = sitofp i32 %15 to double
  %cmp16 = fcmp olt double %14, %conv15
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.42

land.lhs.true.18:                                 ; preds = %land.lhs.true.14
  %16 = load double, double* %y_release, align 8
  %17 = load i32, i32* @preview_height, align 4
  %conv19 = sitofp i32 %17 to double
  %cmp20 = fcmp olt double %16, %conv19
  br i1 %cmp20, label %if.then.22, label %if.end.42

if.then.22:                                       ; preds = %land.lhs.true.18
  %18 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %19 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  %20 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %sub = fsub double %19, %20
  %21 = load double, double* @x_press, align 8
  %22 = load i32, i32* @preview_width, align 4
  %conv23 = sitofp i32 %22 to double
  %div = fdiv double %21, %conv23
  %mul = fmul double %sub, %div
  %add = fadd double %18, %mul
  store double %add, double* %l_xmin, align 8
  %23 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %24 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  %25 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %sub24 = fsub double %24, %25
  %26 = load double, double* %x_release, align 8
  %27 = load i32, i32* @preview_width, align 4
  %conv25 = sitofp i32 %27 to double
  %div26 = fdiv double %26, %conv25
  %mul27 = fmul double %sub24, %div26
  %add28 = fadd double %23, %mul27
  store double %add28, double* %l_xmax, align 8
  %28 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %29 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  %30 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %sub29 = fsub double %29, %30
  %31 = load double, double* @y_press, align 8
  %32 = load i32, i32* @preview_height, align 4
  %conv30 = sitofp i32 %32 to double
  %div31 = fdiv double %31, %conv30
  %mul32 = fmul double %sub29, %div31
  %add33 = fadd double %28, %mul32
  store double %add33, double* %l_ymin, align 8
  %33 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %34 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  %35 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %sub34 = fsub double %34, %35
  %36 = load double, double* %y_release, align 8
  %37 = load i32, i32* @preview_height, align 4
  %conv35 = sitofp i32 %37 to double
  %div36 = fdiv double %36, %conv35
  %mul37 = fmul double %sub34, %div36
  %add38 = fadd double %33, %mul37
  store double %add38, double* %l_ymax, align 8
  %38 = load i32, i32* @zoomindex, align 4
  %cmp39 = icmp slt i32 %38, 99
  br i1 %cmp39, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.then.22
  %39 = load i32, i32* @zoomindex, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.explorer_vals_t], [100 x %struct.explorer_vals_t]* @zooms, i32 0, i64 %idxprom
  %40 = bitcast %struct.explorer_vals_t* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* bitcast (%struct.explorer_vals_t* @wvals to i8*), i64 136, i32 8, i1 false)
  %41 = load i32, i32* @zoomindex, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* @zoomindex, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.41, %if.then.22
  %42 = load i32, i32* @zoomindex, align 4
  store i32 %42, i32* @zoommax, align 4
  %43 = load double, double* %l_xmin, align 8
  store double %43, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %44 = load double, double* %l_xmax, align 8
  store double %44, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  %45 = load double, double* %l_ymin, align 8
  store double %45, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %46 = load double, double* %l_ymax, align 8
  store double %46, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  call void @dialog_change_scale()
  call void @dialog_update_preview()
  store i32 -1, i32* @oldxpos, align 4
  store i32 -1, i32* @oldypos, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.end, %land.lhs.true.18, %land.lhs.true.14, %land.lhs.true.10, %land.lhs.true.7, %land.lhs.true.5, %land.lhs.true.3, %land.lhs.true, %if.then
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @preview_motion_notify_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load i32, i32* @oldypos, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @oldxpos, align 4
  %2 = load i32, i32* @oldypos, align 4
  call void @preview_draw_crosshair(i32 %1, i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 4
  %4 = load double, double* %x, align 8
  %conv = fptosi double %4 to i32
  store i32 %conv, i32* @oldxpos, align 4
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 5
  %6 = load double, double* %y, align 8
  %conv1 = fptosi double %6 to i32
  store i32 %conv1, i32* @oldypos, align 4
  %7 = load i32, i32* @oldxpos, align 4
  %conv2 = sitofp i32 %7 to double
  %cmp3 = fcmp oge double %conv2, 0.000000e+00
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* @oldypos, align 4
  %conv5 = sitofp i32 %8 to double
  %cmp6 = fcmp oge double %conv5, 0.000000e+00
  br i1 %cmp6, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* @oldxpos, align 4
  %10 = load i32, i32* @preview_width, align 4
  %cmp9 = icmp slt i32 %9, %10
  br i1 %cmp9, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %land.lhs.true.8
  %11 = load i32, i32* @oldypos, align 4
  %12 = load i32, i32* @preview_height, align 4
  %cmp12 = icmp slt i32 %11, %12
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true.11
  %13 = load i32, i32* @oldxpos, align 4
  %14 = load i32, i32* @oldypos, align 4
  call void @preview_draw_crosshair(i32 %13, i32 %14)
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true.11, %land.lhs.true.8, %land.lhs.true, %if.end
  store i32 -1, i32* @oldypos, align 4
  store i32 -1, i32* @oldxpos, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  call void @preview_redraw()
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @preview_leave_notify_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load i32, i32* @oldypos, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @oldxpos, align 4
  %2 = load i32, i32* @oldypos, align 4
  call void @preview_draw_crosshair(i32 %1, i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 -1, i32* @oldxpos, align 4
  store i32 -1, i32* @oldypos, align 4
  call void @preview_redraw()
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @maindlg, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %3)
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call, %struct._GdkCursor* null)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @preview_enter_notify_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GdkCursor*, %struct._GdkCursor** @preview_enter_notify_event.cursor, align 8
  %tobool = icmp ne %struct._GdkCursor* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @maindlg, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %1)
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %2 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %2, i32 130)
  store %struct._GdkCursor* %call1, %struct._GdkCursor** @preview_enter_notify_event.cursor, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @maindlg, align 8
  %call2 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %3)
  %4 = load %struct._GdkCursor*, %struct._GdkCursor** @preview_enter_notify_event.cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call2, %struct._GdkCursor* %4)
  ret i32 1
}

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_label(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @explorer_toggle_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_toggle_button_update(%struct._GtkWidget* %0, i8* %1)
  call void @set_cmap_preview()
  call void @dialog_update_preview()
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_redraw_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %alwaysprev = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 18), align 4
  store i32 %0, i32* %alwaysprev, align 4
  store i32 1, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 18), align 4
  call void @set_cmap_preview()
  call void @dialog_update_preview()
  %1 = load i32, i32* %alwaysprev, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 18), align 4
  ret void
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_step_in_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %xdifferenz = alloca double, align 8
  %ydifferenz = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @zoomindex, align 4
  %cmp = icmp slt i32 %0, 99
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @zoomindex, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.explorer_vals_t], [100 x %struct.explorer_vals_t]* @zooms, i32 0, i64 %idxprom
  %2 = bitcast %struct.explorer_vals_t* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.explorer_vals_t* @wvals to i8*), i64 136, i32 8, i1 false)
  %3 = load i32, i32* @zoomindex, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @zoomindex, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* @zoomindex, align 4
  store i32 %4, i32* @zoommax, align 4
  %5 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  %6 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %sub = fsub double %5, %6
  store double %sub, double* %xdifferenz, align 8
  %7 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  %8 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %sub1 = fsub double %7, %8
  store double %sub1, double* %ydifferenz, align 8
  %9 = load double, double* %xdifferenz, align 8
  %mul = fmul double 0x3FC5555555555555, %9
  %10 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %add = fadd double %10, %mul
  store double %add, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %11 = load double, double* %ydifferenz, align 8
  %mul2 = fmul double 0x3FC5555555555555, %11
  %12 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %add3 = fadd double %12, %mul2
  store double %add3, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %13 = load double, double* %xdifferenz, align 8
  %mul4 = fmul double 0x3FC5555555555555, %13
  %14 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  %sub5 = fsub double %14, %mul4
  store double %sub5, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  %15 = load double, double* %ydifferenz, align 8
  %mul6 = fmul double 0x3FC5555555555555, %15
  %16 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  %sub7 = fsub double %16, %mul6
  store double %sub7, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  %17 = load i32, i32* @zoomindex, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds [100 x %struct.explorer_vals_t], [100 x %struct.explorer_vals_t]* @zooms, i32 0, i64 %idxprom8
  %18 = bitcast %struct.explorer_vals_t* %arrayidx9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast (%struct.explorer_vals_t* @wvals to i8*), i64 136, i32 8, i1 false)
  call void @dialog_change_scale()
  call void @set_cmap_preview()
  call void @dialog_update_preview()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_step_out_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %xdifferenz = alloca double, align 8
  %ydifferenz = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @zoomindex, align 4
  %cmp = icmp slt i32 %0, 99
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @zoomindex, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.explorer_vals_t], [100 x %struct.explorer_vals_t]* @zooms, i32 0, i64 %idxprom
  %2 = bitcast %struct.explorer_vals_t* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.explorer_vals_t* @wvals to i8*), i64 136, i32 8, i1 false)
  %3 = load i32, i32* @zoomindex, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @zoomindex, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* @zoomindex, align 4
  store i32 %4, i32* @zoommax, align 4
  %5 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  %6 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %sub = fsub double %5, %6
  store double %sub, double* %xdifferenz, align 8
  %7 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  %8 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %sub1 = fsub double %7, %8
  store double %sub1, double* %ydifferenz, align 8
  %9 = load double, double* %xdifferenz, align 8
  %mul = fmul double 2.500000e-01, %9
  %10 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %sub2 = fsub double %10, %mul
  store double %sub2, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %11 = load double, double* %ydifferenz, align 8
  %mul3 = fmul double 2.500000e-01, %11
  %12 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %sub4 = fsub double %12, %mul3
  store double %sub4, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %13 = load double, double* %xdifferenz, align 8
  %mul5 = fmul double 2.500000e-01, %13
  %14 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  %add = fadd double %14, %mul5
  store double %add, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  %15 = load double, double* %ydifferenz, align 8
  %mul6 = fmul double 2.500000e-01, %15
  %16 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  %add7 = fadd double %16, %mul6
  store double %add7, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  %17 = load i32, i32* @zoomindex, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds [100 x %struct.explorer_vals_t], [100 x %struct.explorer_vals_t]* @zooms, i32 0, i64 %idxprom8
  %18 = bitcast %struct.explorer_vals_t* %arrayidx9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast (%struct.explorer_vals_t* @wvals to i8*), i64 136, i32 8, i1 false)
  call void @dialog_change_scale()
  call void @set_cmap_preview()
  call void @dialog_update_preview()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_undo_zoom_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @zoomindex, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @zoomindex, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.explorer_vals_t], [100 x %struct.explorer_vals_t]* @zooms, i32 0, i64 %idxprom
  %2 = bitcast %struct.explorer_vals_t* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.explorer_vals_t* @wvals to i8*), i64 136, i32 8, i1 false)
  %3 = load i32, i32* @zoomindex, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* @zoomindex, align 4
  %4 = load i32, i32* @zoomindex, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [100 x %struct.explorer_vals_t], [100 x %struct.explorer_vals_t]* @zooms, i32 0, i64 %idxprom1
  %5 = bitcast %struct.explorer_vals_t* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.explorer_vals_t* @wvals to i8*), i8* %5, i64 136, i32 8, i1 false)
  call void @dialog_change_scale()
  call void @set_cmap_preview()
  call void @dialog_update_preview()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_redo_zoom_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @zoomindex, align 4
  %1 = load i32, i32* @zoommax, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @zoomindex, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @zoomindex, align 4
  %3 = load i32, i32* @zoomindex, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.explorer_vals_t], [100 x %struct.explorer_vals_t]* @zooms, i32 0, i64 %idxprom
  %4 = bitcast %struct.explorer_vals_t* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.explorer_vals_t* @wvals to i8*), i8* %4, i64 136, i32 8, i1 false)
  call void @dialog_change_scale()
  call void @set_cmap_preview()
  call void @dialog_update_preview()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @explorer_double_adjustment_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_double_adjustment_update(%struct._GtkAdjustment* %0, i8* %1)
  call void @set_cmap_preview()
  call void @dialog_update_preview()
  ret void
}

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @create_load_file_chooser(%struct._GtkWidget* %widget, %struct._GtkWidget* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @create_load_file_chooser.window, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.120, i32 0, i32 0)) #5
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %call3 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call, %struct._GtkWindow* %3, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** @create_load_file_chooser.window, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @create_load_file_chooser.window, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %6, i32 -5)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @create_load_file_chooser.window, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %9, i32 -5, i32 -6, i32 -1)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @create_load_file_chooser.window, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_file_chooser_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkFileChooser*
  call void @file_chooser_set_default_folder(%struct._GtkFileChooser* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @create_load_file_chooser.window, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* bitcast (%struct._GtkWidget** @create_load_file_chooser.window to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @create_load_file_chooser.window, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** @create_load_file_chooser.window, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkFileChooser*, i32, i8*)* @load_file_chooser_response to void ()*), i8* %18, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** @create_load_file_chooser.window, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_window_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call12)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_reset_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @standardvals, i32 0, i32 1), align 8
  store double %0, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %1 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @standardvals, i32 0, i32 2), align 8
  store double %1, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  %2 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @standardvals, i32 0, i32 3), align 8
  store double %2, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %3 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @standardvals, i32 0, i32 4), align 8
  store double %3, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  %4 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @standardvals, i32 0, i32 5), align 8
  store double %4, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 5), align 8
  %5 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @standardvals, i32 0, i32 6), align 8
  store double %5, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 6), align 8
  %6 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @standardvals, i32 0, i32 7), align 8
  store double %6, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 7), align 8
  call void @dialog_change_scale()
  call void @set_cmap_preview()
  call void @dialog_update_preview()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_save_file_chooser(%struct._GtkWidget* %widget, %struct._GtkWidget* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_file_chooser.window, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.121, i32 0, i32 0)) #5
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %call3 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call, %struct._GtkWindow* %3, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** @create_save_file_chooser.window, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_file_chooser.window, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_file_chooser.window, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %9, i32 -5)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_file_chooser.window, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_file_chooser_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %12, i32 1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_file_chooser.window, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* bitcast (%struct._GtkWidget** @create_save_file_chooser.window to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_file_chooser.window, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_file_chooser.window, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkFileChooser*, i32, i8*)* @save_file_chooser_response to void ()*), i8* %18, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load i8*, i8** @tpath, align 8
  %tobool12 = icmp ne i8* %19, null
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_file_chooser.window, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_file_chooser_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkFileChooser*
  %23 = load i8*, i8** @tpath, align 8
  %call16 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %22, i8* %23)
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_file_chooser.window, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_file_chooser_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call17)
  %26 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkFileChooser*
  call void @file_chooser_set_default_folder(%struct._GtkFileChooser* %26)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.13
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_file_chooser.window, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_window_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call20)
  %29 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %29)
  ret void
}

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @explorer_radio_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %c_sensitive = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* %1)
  %2 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 0), align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 8, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 0, i32* %c_sensitive, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 1, i32* %c_sensitive, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %3 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %cx = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %3, i32 0, i32 6
  %4 = load %struct._GtkObject*, %struct._GtkObject** %cx, align 8
  %5 = load i32, i32* %c_sensitive, align 4
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %4, i32 %5)
  %6 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %cy = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %6, i32 0, i32 7
  %7 = load %struct._GtkObject*, %struct._GtkObject** %cy, align 8
  %8 = load i32, i32* %c_sensitive, align 4
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %7, i32 %8)
  call void @set_cmap_preview()
  call void @dialog_update_preview()
  ret void
}

declare i8* @g_object_ref(i8*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @explorer_number_of_colors_callback(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_int_adjustment_update(%struct._GtkAdjustment* %0, i8* %1)
  %2 = load double*, double** @gradient_samples, align 8
  %3 = bitcast double* %2 to i8*
  call void @g_free(i8* %3)
  %4 = load i8*, i8** @gradient_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gimp_context_get_gradient()
  store i8* %call, i8** @gradient_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** @gradient_name, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 20), align 4
  %call1 = call i32 @gimp_gradient_get_uniform_samples(i8* %5, i32 %6, i32 %7, i32* @n_gradient_samples, double** @gradient_samples)
  call void @set_cmap_preview()
  call void @dialog_update_preview()
  ret void
}

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #3

declare %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i8* @gimp_context_get_gradient() #1

declare i32 @gimp_gradient_get_uniform_samples(i8*, i32, i32, i32*, double**) #1

declare %struct._GtkWidget* @gimp_gradient_select_button_new(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @explorer_gradient_select_callback(%struct._GimpGradientSelectButton* %gradient_button, i8* %name, i32 %width, double* %gradient_data, i32 %dialog_closing, i8* %data) #0 {
entry:
  %gradient_button.addr = alloca %struct._GimpGradientSelectButton*, align 8
  %name.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %gradient_data.addr = alloca double*, align 8
  %dialog_closing.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._GimpGradientSelectButton* %gradient_button, %struct._GimpGradientSelectButton** %gradient_button.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store double* %gradient_data, double** %gradient_data.addr, align 8
  store i32 %dialog_closing, i32* %dialog_closing.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** @gradient_name, align 8
  call void @g_free(i8* %0)
  %1 = load double*, double** @gradient_samples, align 8
  %2 = bitcast double* %1 to i8*
  call void @g_free(i8* %2)
  %3 = load i8*, i8** %name.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %3)
  store i8* %call, i8** @gradient_name, align 8
  %4 = load i8*, i8** @gradient_name, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 20), align 4
  %call1 = call i32 @gimp_gradient_get_uniform_samples(i8* %4, i32 %5, i32 %6, i32* @n_gradient_samples, double** @gradient_samples)
  %7 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 8), align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @set_cmap_preview()
  call void @dialog_update_preview()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_preview_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i8*, align 8
  %preview = alloca %struct._GimpPreviewArea*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreviewArea*
  store %struct._GimpPreviewArea* %2, %struct._GimpPreviewArea** %preview, align 8
  %3 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %3, i32 0, i32 2
  %4 = load i32, i32* %width, align 4
  %5 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %5, i32 0, i32 3
  %6 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %4, %6
  %mul2 = mul nsw i32 %mul, 3
  %conv = sext i32 %mul2 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call3, i8** %b, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %entry
  %7 = load i32, i32* %y, align 4
  %8 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height4 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %8, i32 0, i32 3
  %9 = load i32, i32* %height4, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.51, %for.body
  %10 = load i32, i32* %x, align 4
  %11 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %11, i32 0, i32 2
  %12 = load i32, i32* %width7, align 4
  %cmp8 = icmp slt i32 %10, %12
  br i1 %cmp8, label %for.body.10, label %for.end.53

for.body.10:                                      ; preds = %for.cond.6
  %13 = load i32, i32* %x, align 4
  %14 = load i32, i32* %y, align 4
  %div = sdiv i32 %14, 4
  %15 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %15, i32 0, i32 2
  %16 = load i32, i32* %width11, align 4
  %mul12 = mul nsw i32 %div, %16
  %add = add nsw i32 %13, %mul12
  store i32 %add, i32* %i, align 4
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19), align 4
  %cmp13 = icmp sgt i32 %17, %18
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.10
  store i32 0, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.then
  %19 = load i32, i32* %j, align 4
  %cmp16 = icmp slt i32 %19, 3
  br i1 %cmp16, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.15
  %20 = load i32, i32* %y, align 4
  %21 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %21, i32 0, i32 2
  %22 = load i32, i32* %width19, align 4
  %mul20 = mul nsw i32 %20, %22
  %23 = load i32, i32* %x, align 4
  %add21 = add nsw i32 %mul20, %23
  %mul22 = mul nsw i32 %add21, 3
  %24 = load i32, i32* %j, align 4
  %add23 = add nsw i32 %mul22, %24
  %idxprom = sext i32 %add23 to i64
  %25 = load i8*, i8** %b, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %if.end

if.else:                                          ; preds = %for.body.10
  %27 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom24
  %r = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx25, i32 0, i32 0
  %28 = load i8, i8* %r, align 1
  %29 = load i32, i32* %y, align 4
  %30 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width26 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %30, i32 0, i32 2
  %31 = load i32, i32* %width26, align 4
  %mul27 = mul nsw i32 %29, %31
  %32 = load i32, i32* %x, align 4
  %add28 = add nsw i32 %mul27, %32
  %mul29 = mul nsw i32 %add28, 3
  %idxprom30 = sext i32 %mul29 to i64
  %33 = load i8*, i8** %b, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %33, i64 %idxprom30
  store i8 %28, i8* %arrayidx31, align 1
  %34 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %34 to i64
  %arrayidx33 = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom32
  %g = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx33, i32 0, i32 1
  %35 = load i8, i8* %g, align 1
  %36 = load i32, i32* %y, align 4
  %37 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width34 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %37, i32 0, i32 2
  %38 = load i32, i32* %width34, align 4
  %mul35 = mul nsw i32 %36, %38
  %39 = load i32, i32* %x, align 4
  %add36 = add nsw i32 %mul35, %39
  %mul37 = mul nsw i32 %add36, 3
  %add38 = add nsw i32 %mul37, 1
  %idxprom39 = sext i32 %add38 to i64
  %40 = load i8*, i8** %b, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %40, i64 %idxprom39
  store i8 %35, i8* %arrayidx40, align 1
  %41 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %41 to i64
  %arrayidx42 = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom41
  %b43 = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx42, i32 0, i32 2
  %42 = load i8, i8* %b43, align 1
  %43 = load i32, i32* %y, align 4
  %44 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width44 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %44, i32 0, i32 2
  %45 = load i32, i32* %width44, align 4
  %mul45 = mul nsw i32 %43, %45
  %46 = load i32, i32* %x, align 4
  %add46 = add nsw i32 %mul45, %46
  %mul47 = mul nsw i32 %add46, 3
  %add48 = add nsw i32 %mul47, 2
  %idxprom49 = sext i32 %add48 to i64
  %47 = load i8*, i8** %b, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %47, i64 %idxprom49
  store i8 %42, i8* %arrayidx50, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end
  %48 = load i32, i32* %x, align 4
  %inc52 = add nsw i32 %48, 1
  store i32 %inc52, i32* %x, align 4
  br label %for.cond.6

for.end.53:                                       ; preds = %for.cond.6
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %49 = load i32, i32* %y, align 4
  %inc55 = add nsw i32 %49, 1
  store i32 %inc55, i32* %y, align 4
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  %50 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %preview, align 8
  %51 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width57 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %51, i32 0, i32 2
  %52 = load i32, i32* %width57, align 4
  %53 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height58 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %53, i32 0, i32 3
  %54 = load i32, i32* %height58, align 4
  %55 = load i8*, i8** %b, align 8
  %56 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width59 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %56, i32 0, i32 2
  %57 = load i32, i32* %width59, align 4
  %mul60 = mul nsw i32 %57, 3
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %50, i32 0, i32 0, i32 %52, i32 %54, i32 0, i8* %55, i32 %mul60)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** @cmap_preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %58)
  %59 = load i8*, i8** %b, align 8
  call void @g_free(i8* %59)
  ret void
}

declare %struct._GtkWidget* @add_objects_list() #1

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind uwtable
define void @set_cmap_preview() #0 {
entry:
  %xsize = alloca i32, align 4
  %ysize = alloca i32, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @cmap_preview, align 8
  %cmp = icmp eq %struct._GtkWidget* null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @make_color_map()
  store i32 1, i32* %ysize, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %ysize, align 4
  %2 = load i32, i32* %ysize, align 4
  %mul = mul nsw i32 %1, %2
  %3 = load i32, i32* %ysize, align 4
  %mul1 = mul nsw i32 %mul, %3
  %4 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19), align 4
  %cmp2 = icmp slt i32 %mul1, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %ysize, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %ysize, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19), align 4
  %7 = load i32, i32* %ysize, align 4
  %div = sdiv i32 %6, %7
  store i32 %div, i32* %xsize, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %8 = load i32, i32* %xsize, align 4
  %9 = load i32, i32* %ysize, align 4
  %mul3 = mul nsw i32 %8, %9
  %10 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19), align 4
  %cmp4 = icmp slt i32 %mul3, %10
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %xsize, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* %xsize, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @cmap_preview, align 8
  %13 = load i32, i32* %xsize, align 4
  %14 = load i32, i32* %ysize, align 4
  %mul6 = mul nsw i32 %14, 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %12, i32 %13, i32 %mul6)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @dialog_update_preview() #0 {
entry:
  %ycoord = alloca i32, align 4
  %p_ul = alloca i8*, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 0), align 8
  %cmp = icmp eq %struct._GtkWidget* null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @ready_now, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 18), align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %land.lhs.true
  %3 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  store double %3, double* @xmin, align 8
  %4 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  store double %4, double* @xmax, align 8
  %5 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  store double %5, double* @ymin, align 8
  %6 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  store double %6, double* @ymax, align 8
  %7 = load i32, i32* @preview_width, align 4
  %conv = sitofp i32 %7 to double
  store double %conv, double* @xbild, align 8
  %8 = load i32, i32* @preview_height, align 4
  %conv3 = sitofp i32 %8 to double
  store double %conv3, double* @ybild, align 8
  %9 = load double, double* @xmax, align 8
  %10 = load double, double* @xmin, align 8
  %sub = fsub double %9, %10
  %11 = load double, double* @xbild, align 8
  %div = fdiv double %sub, %11
  store double %div, double* @xdiff, align 8
  %12 = load double, double* @ymax, align 8
  %13 = load double, double* @ymin, align 8
  %sub4 = fsub double %12, %13
  %14 = load double, double* @ybild, align 8
  %div5 = fdiv double %sub4, %14
  store double %div5, double* @ydiff, align 8
  %15 = load i8*, i8** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 1), align 8
  store i8* %15, i8** %p_ul, align 8
  store i32 0, i32* %ycoord, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %16 = load i32, i32* %ycoord, align 4
  %17 = load i32, i32* @preview_height, align 4
  %cmp6 = icmp slt i32 %16, %17
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %p_ul, align 8
  %19 = load i32, i32* %ycoord, align 4
  %20 = load i32, i32* @preview_width, align 4
  call void @explorer_render_row(i8* null, i8* %18, i32 %19, i32 %20, i32 3)
  %21 = load i32, i32* @preview_width, align 4
  %mul = mul nsw i32 %21, 3
  %22 = load i8*, i8** %p_ul, align 8
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %p_ul, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %ycoord, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %ycoord, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @preview_redraw()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %for.end, %land.lhs.true, %if.end
  ret void
}

declare void @gtk_main() #1

declare void @explorer_render_row(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @preview_redraw() #0 {
entry:
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 0), align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreviewArea*
  %3 = load i32, i32* @preview_width, align 4
  %4 = load i32, i32* @preview_height, align 4
  %5 = load i8*, i8** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 1), align 8
  %6 = load i32, i32* @preview_width, align 4
  %mul = mul nsw i32 %6, 3
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %2, i32 0, i32 0, i32 %3, i32 %4, i32 0, i8* %5, i32 %mul)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 0), align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @make_color_map() #0 {
entry:
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %gr = alloca i32, align 4
  %bl = alloca i32, align 4
  %redstretch = alloca double, align 8
  %greenstretch = alloca double, align 8
  %bluestretch = alloca double, align 8
  %pi = alloca double, align 8
  %gradient_name = alloca i8*, align 8
  %x = alloca double, align 8
  %call = call double @atan(double 1.000000e+00) #5
  %mul = fmul double %call, 4.000000e+00
  store double %mul, double* %pi, align 8
  %0 = load double*, double** @gradient_samples, align 8
  %cmp = icmp eq double* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @gimp_context_get_gradient()
  store i8* %call1, i8** %gradient_name, align 8
  %1 = load i8*, i8** %gradient_name, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 20), align 4
  %call2 = call i32 @gimp_gradient_get_uniform_samples(i8* %1, i32 %2, i32 %3, i32* @n_gradient_samples, double** @gradient_samples)
  %4 = load i8*, i8** %gradient_name, align 8
  call void @g_free(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 9), align 8
  %mul3 = fmul double %5, 1.275000e+02
  store double %mul3, double* %redstretch, align 8
  %6 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 10), align 8
  %mul4 = fmul double %6, 1.275000e+02
  store double %mul4, double* %greenstretch, align 8
  %7 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 11), align 8
  %mul5 = fmul double %7, 1.275000e+02
  store double %mul5, double* %bluestretch, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19), align 4
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 8), align 4
  %cmp7 = icmp eq i32 %10, 1
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %mul9 = mul nsw i32 %11, 4
  %idxprom = sext i32 %mul9 to i64
  %12 = load double*, double** @gradient_samples, align 8
  %arrayidx = getelementptr inbounds double, double* %12, i64 %idxprom
  %13 = load double, double* %arrayidx, align 8
  %mul10 = fmul double %13, 2.559000e+02
  %conv = fptoui double %mul10 to i8
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom11
  %r13 = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx12, i32 0, i32 0
  store i8 %conv, i8* %r13, align 1
  %15 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 %15, 4
  %add = add nsw i32 %mul14, 1
  %idxprom15 = sext i32 %add to i64
  %16 = load double*, double** @gradient_samples, align 8
  %arrayidx16 = getelementptr inbounds double, double* %16, i64 %idxprom15
  %17 = load double, double* %arrayidx16, align 8
  %mul17 = fmul double %17, 2.559000e+02
  %conv18 = fptoui double %mul17 to i8
  %18 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom19
  %g = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx20, i32 0, i32 1
  store i8 %conv18, i8* %g, align 1
  %19 = load i32, i32* %i, align 4
  %mul21 = mul nsw i32 %19, 4
  %add22 = add nsw i32 %mul21, 2
  %idxprom23 = sext i32 %add22 to i64
  %20 = load double*, double** @gradient_samples, align 8
  %arrayidx24 = getelementptr inbounds double, double* %20, i64 %idxprom23
  %21 = load double, double* %arrayidx24, align 8
  %mul25 = fmul double %21, 2.559000e+02
  %conv26 = fptoui double %mul25 to i8
  %22 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom27
  %b = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx28, i32 0, i32 2
  store i8 %conv26, i8* %b, align 1
  br label %if.end.134

if.else:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %conv29 = sitofp i32 %23 to double
  %mul30 = fmul double %conv29, 2.000000e+00
  %24 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19), align 4
  %conv31 = sitofp i32 %24 to double
  %div = fdiv double %mul30, %conv31
  store double %div, double* %x, align 8
  store i32 0, i32* %bl, align 4
  store i32 0, i32* %gr, align 4
  store i32 0, i32* %r, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 12), align 4
  switch i32 %25, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.39
    i32 2, label %sw.bb.48
  ]

sw.bb:                                            ; preds = %if.else
  %26 = load double, double* %redstretch, align 8
  %conv32 = fptosi double %26 to i32
  %conv33 = sitofp i32 %conv32 to double
  %27 = load double, double* %x, align 8
  %sub = fsub double %27, 1.000000e+00
  %28 = load double, double* %pi, align 8
  %mul34 = fmul double %sub, %28
  %call35 = call double @sin(double %mul34) #5
  %add36 = fadd double 1.000000e+00, %call35
  %mul37 = fmul double %conv33, %add36
  %conv38 = fptosi double %mul37 to i32
  store i32 %conv38, i32* %r, align 4
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.else
  %29 = load double, double* %redstretch, align 8
  %conv40 = fptosi double %29 to i32
  %conv41 = sitofp i32 %conv40 to double
  %30 = load double, double* %x, align 8
  %sub42 = fsub double %30, 1.000000e+00
  %31 = load double, double* %pi, align 8
  %mul43 = fmul double %sub42, %31
  %call44 = call double @cos(double %mul43) #5
  %add45 = fadd double 1.000000e+00, %call44
  %mul46 = fmul double %conv41, %add45
  %conv47 = fptosi double %mul46 to i32
  store i32 %conv47, i32* %r, align 4
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.else
  %32 = load double, double* %redstretch, align 8
  %33 = load double, double* %x, align 8
  %mul49 = fmul double %32, %33
  %conv50 = fptosi double %mul49 to i32
  store i32 %conv50, i32* %r, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.48, %sw.bb.39, %sw.bb
  %34 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 13), align 4
  switch i32 %34, label %sw.default.72 [
    i32 0, label %sw.bb.51
    i32 1, label %sw.bb.60
    i32 2, label %sw.bb.69
  ]

sw.bb.51:                                         ; preds = %sw.epilog
  %35 = load double, double* %greenstretch, align 8
  %conv52 = fptosi double %35 to i32
  %conv53 = sitofp i32 %conv52 to double
  %36 = load double, double* %x, align 8
  %sub54 = fsub double %36, 1.000000e+00
  %37 = load double, double* %pi, align 8
  %mul55 = fmul double %sub54, %37
  %call56 = call double @sin(double %mul55) #5
  %add57 = fadd double 1.000000e+00, %call56
  %mul58 = fmul double %conv53, %add57
  %conv59 = fptosi double %mul58 to i32
  store i32 %conv59, i32* %gr, align 4
  br label %sw.epilog.73

sw.bb.60:                                         ; preds = %sw.epilog
  %38 = load double, double* %greenstretch, align 8
  %conv61 = fptosi double %38 to i32
  %conv62 = sitofp i32 %conv61 to double
  %39 = load double, double* %x, align 8
  %sub63 = fsub double %39, 1.000000e+00
  %40 = load double, double* %pi, align 8
  %mul64 = fmul double %sub63, %40
  %call65 = call double @cos(double %mul64) #5
  %add66 = fadd double 1.000000e+00, %call65
  %mul67 = fmul double %conv62, %add66
  %conv68 = fptosi double %mul67 to i32
  store i32 %conv68, i32* %gr, align 4
  br label %sw.epilog.73

sw.bb.69:                                         ; preds = %sw.epilog
  %41 = load double, double* %greenstretch, align 8
  %42 = load double, double* %x, align 8
  %mul70 = fmul double %41, %42
  %conv71 = fptosi double %mul70 to i32
  store i32 %conv71, i32* %gr, align 4
  br label %sw.epilog.73

sw.default.72:                                    ; preds = %sw.epilog
  br label %sw.epilog.73

sw.epilog.73:                                     ; preds = %sw.default.72, %sw.bb.69, %sw.bb.60, %sw.bb.51
  %43 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 14), align 4
  switch i32 %43, label %sw.default.95 [
    i32 0, label %sw.bb.74
    i32 1, label %sw.bb.83
    i32 2, label %sw.bb.92
  ]

sw.bb.74:                                         ; preds = %sw.epilog.73
  %44 = load double, double* %bluestretch, align 8
  %conv75 = fptosi double %44 to i32
  %conv76 = sitofp i32 %conv75 to double
  %45 = load double, double* %x, align 8
  %sub77 = fsub double %45, 1.000000e+00
  %46 = load double, double* %pi, align 8
  %mul78 = fmul double %sub77, %46
  %call79 = call double @sin(double %mul78) #5
  %add80 = fadd double 1.000000e+00, %call79
  %mul81 = fmul double %conv76, %add80
  %conv82 = fptosi double %mul81 to i32
  store i32 %conv82, i32* %bl, align 4
  br label %sw.epilog.96

sw.bb.83:                                         ; preds = %sw.epilog.73
  %47 = load double, double* %bluestretch, align 8
  %conv84 = fptosi double %47 to i32
  %conv85 = sitofp i32 %conv84 to double
  %48 = load double, double* %x, align 8
  %sub86 = fsub double %48, 1.000000e+00
  %49 = load double, double* %pi, align 8
  %mul87 = fmul double %sub86, %49
  %call88 = call double @cos(double %mul87) #5
  %add89 = fadd double 1.000000e+00, %call88
  %mul90 = fmul double %conv85, %add89
  %conv91 = fptosi double %mul90 to i32
  store i32 %conv91, i32* %bl, align 4
  br label %sw.epilog.96

sw.bb.92:                                         ; preds = %sw.epilog.73
  %50 = load double, double* %bluestretch, align 8
  %51 = load double, double* %x, align 8
  %mul93 = fmul double %50, %51
  %conv94 = fptosi double %mul93 to i32
  store i32 %conv94, i32* %bl, align 4
  br label %sw.epilog.96

sw.default.95:                                    ; preds = %sw.epilog.73
  br label %sw.epilog.96

sw.epilog.96:                                     ; preds = %sw.default.95, %sw.bb.92, %sw.bb.83, %sw.bb.74
  %52 = load i32, i32* %r, align 4
  %cmp97 = icmp slt i32 %52, 255
  br i1 %cmp97, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.96
  %53 = load i32, i32* %r, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog.96
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %53, %cond.true ], [ 255, %cond.false ]
  store i32 %cond, i32* %r, align 4
  %54 = load i32, i32* %gr, align 4
  %cmp99 = icmp slt i32 %54, 255
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %cond.end
  %55 = load i32, i32* %gr, align 4
  br label %cond.end.103

cond.false.102:                                   ; preds = %cond.end
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.102, %cond.true.101
  %cond104 = phi i32 [ %55, %cond.true.101 ], [ 255, %cond.false.102 ]
  store i32 %cond104, i32* %gr, align 4
  %56 = load i32, i32* %bl, align 4
  %cmp105 = icmp slt i32 %56, 255
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %cond.end.103
  %57 = load i32, i32* %bl, align 4
  br label %cond.end.109

cond.false.108:                                   ; preds = %cond.end.103
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.108, %cond.true.107
  %cond110 = phi i32 [ %57, %cond.true.107 ], [ 255, %cond.false.108 ]
  store i32 %cond110, i32* %bl, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 15), align 4
  %tobool = icmp ne i32 %58, 0
  br i1 %tobool, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %cond.end.109
  %59 = load i32, i32* %r, align 4
  %sub112 = sub nsw i32 255, %59
  store i32 %sub112, i32* %r, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %cond.end.109
  %60 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 16), align 4
  %tobool114 = icmp ne i32 %60, 0
  br i1 %tobool114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %if.end.113
  %61 = load i32, i32* %gr, align 4
  %sub116 = sub nsw i32 255, %61
  store i32 %sub116, i32* %gr, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %if.end.113
  %62 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 17), align 4
  %tobool118 = icmp ne i32 %62, 0
  br i1 %tobool118, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.end.117
  %63 = load i32, i32* %bl, align 4
  %sub120 = sub nsw i32 255, %63
  store i32 %sub120, i32* %bl, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.end.117
  %64 = load i32, i32* %r, align 4
  %conv122 = trunc i32 %64 to i8
  %65 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %65 to i64
  %arrayidx124 = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom123
  %r125 = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx124, i32 0, i32 0
  store i8 %conv122, i8* %r125, align 1
  %66 = load i32, i32* %gr, align 4
  %conv126 = trunc i32 %66 to i8
  %67 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %67 to i64
  %arrayidx128 = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom127
  %g129 = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx128, i32 0, i32 1
  store i8 %conv126, i8* %g129, align 1
  %68 = load i32, i32* %bl, align 4
  %conv130 = trunc i32 %68 to i8
  %69 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %69 to i64
  %arrayidx132 = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom131
  %b133 = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx132, i32 0, i32 2
  store i8 %conv130, i8* %b133, align 1
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.121, %if.then.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.134
  %70 = load i32, i32* %i, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare double @atan(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind uwtable
define void @dialog_change_scale() #0 {
entry:
  store i32 0, i32* @ready_now, align 4
  %0 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %xmin = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %0, i32 0, i32 1
  %1 = load %struct._GtkObject*, %struct._GtkObject** %xmin, align 8
  %2 = bitcast %struct._GtkObject* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkAdjustment*
  %4 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %3, double %4)
  %5 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %xmax = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %5, i32 0, i32 2
  %6 = load %struct._GtkObject*, %struct._GtkObject** %xmax, align 8
  %7 = bitcast %struct._GtkObject* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_adjustment_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkAdjustment*
  %9 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %9)
  %10 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %ymin = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %10, i32 0, i32 3
  %11 = load %struct._GtkObject*, %struct._GtkObject** %ymin, align 8
  %12 = bitcast %struct._GtkObject* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_adjustment_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkAdjustment*
  %14 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %13, double %14)
  %15 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %ymax = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %15, i32 0, i32 4
  %16 = load %struct._GtkObject*, %struct._GtkObject** %ymax, align 8
  %17 = bitcast %struct._GtkObject* %16 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_adjustment_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call6)
  %18 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkAdjustment*
  %19 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %18, double %19)
  %20 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %iter = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %20, i32 0, i32 5
  %21 = load %struct._GtkObject*, %struct._GtkObject** %iter, align 8
  %22 = bitcast %struct._GtkObject* %21 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_adjustment_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call8)
  %23 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkAdjustment*
  %24 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 5), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %23, double %24)
  %25 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %cx = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %25, i32 0, i32 6
  %26 = load %struct._GtkObject*, %struct._GtkObject** %cx, align 8
  %27 = bitcast %struct._GtkObject* %26 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_adjustment_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call10)
  %28 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkAdjustment*
  %29 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 6), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %28, double %29)
  %30 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %cy = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %30, i32 0, i32 7
  %31 = load %struct._GtkObject*, %struct._GtkObject** %cy, align 8
  %32 = bitcast %struct._GtkObject* %31 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_adjustment_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call12)
  %33 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkAdjustment*
  %34 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 7), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %33, double %34)
  %35 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %red = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %35, i32 0, i32 10
  %36 = load %struct._GtkObject*, %struct._GtkObject** %red, align 8
  %37 = bitcast %struct._GtkObject* %36 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_adjustment_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call14)
  %38 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkAdjustment*
  %39 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 9), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %38, double %39)
  %40 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %green = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %40, i32 0, i32 11
  %41 = load %struct._GtkObject*, %struct._GtkObject** %green, align 8
  %42 = bitcast %struct._GtkObject* %41 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_adjustment_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call16)
  %43 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkAdjustment*
  %44 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 10), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %43, double %44)
  %45 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %blue = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %45, i32 0, i32 12
  %46 = load %struct._GtkObject*, %struct._GtkObject** %blue, align 8
  %47 = bitcast %struct._GtkObject* %46 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_adjustment_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call18)
  %48 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkAdjustment*
  %49 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 11), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %48, double %49)
  %50 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 0), align 4
  %idxprom = sext i32 %50 to i64
  %51 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %type = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %51, i32 0, i32 0
  %arrayidx = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* %type, i32 0, i64 %idxprom
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_toggle_button_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call20)
  %54 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %54, i32 1)
  %55 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 12), align 4
  %idxprom22 = sext i32 %55 to i64
  %56 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %redmode = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %56, i32 0, i32 13
  %arrayidx23 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %redmode, i32 0, i64 %idxprom22
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx23, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_toggle_button_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call24)
  %59 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %59, i32 1)
  %60 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 13), align 4
  %idxprom26 = sext i32 %60 to i64
  %61 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %greenmode = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %61, i32 0, i32 15
  %arrayidx27 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %greenmode, i32 0, i64 %idxprom26
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx27, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_toggle_button_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call28)
  %64 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %64, i32 1)
  %65 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 14), align 4
  %idxprom30 = sext i32 %65 to i64
  %66 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %bluemode = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %66, i32 0, i32 17
  %arrayidx31 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %bluemode, i32 0, i64 %idxprom30
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx31, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_toggle_button_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call32)
  %69 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %69, i32 1)
  %70 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %redinvert = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %70, i32 0, i32 14
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %redinvert, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_toggle_button_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call34)
  %73 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkToggleButton*
  %74 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 15), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %73, i32 %74)
  %75 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %greeninvert = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %75, i32 0, i32 16
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %greeninvert, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_toggle_button_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call36)
  %78 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkToggleButton*
  %79 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 16), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %78, i32 %79)
  %80 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %blueinvert = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %80, i32 0, i32 18
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %blueinvert, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_toggle_button_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call38)
  %83 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkToggleButton*
  %84 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 17), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %83, i32 %84)
  %85 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 8), align 4
  %idxprom40 = sext i32 %85 to i64
  %86 = load %struct._DialogElements*, %struct._DialogElements** @elements, align 8
  %colormode = getelementptr inbounds %struct._DialogElements, %struct._DialogElements* %86, i32 0, i32 19
  %arrayidx41 = getelementptr inbounds [2 x %struct._GtkWidget*], [2 x %struct._GtkWidget*]* %colormode, i32 0, i64 %idxprom40
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx41, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_toggle_button_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call42)
  %89 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %89, i32 1)
  store i32 1, i32* @ready_now, align 4
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

; Function Attrs: nounwind uwtable
define i8* @get_line(i8* %buf, i32 %s, %struct._IO_FILE* %from, i32 %init) #0 {
entry:
  %retval = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %from.addr = alloca %struct._IO_FILE*, align 8
  %init.addr = alloca i32, align 4
  %slen = alloca i32, align 4
  %ret = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store %struct._IO_FILE* %from, %struct._IO_FILE** %from.addr, align 8
  store i32 %init, i32* %init.addr, align 4
  %0 = load i32, i32* %init.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* @line_no, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @line_no, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @line_no, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i32, i32* %s.addr, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %from.addr, align 8
  %call = call i8* @fgets(i8* %2, i32 %3, %struct._IO_FILE* %4)
  store i8* %call, i8** %ret, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %from.addr, align 8
  %call1 = call i32 @ferror(%struct._IO_FILE* %5) #5
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %6 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 35
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %8 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %9 = load i8*, i8** %buf.addr, align 8
  %call4 = call i64 @strlen(i8* %9) #8
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, i32* %slen, align 4
  %10 = load i32, i32* %slen, align 4
  %cmp6 = icmp sgt i32 %10, 0
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %do.end
  %11 = load i32, i32* %slen, align 4
  %sub = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %12 = load i8*, i8** %buf.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 %idxprom
  store i8 0, i8* %arrayidx9, align 1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %do.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %from.addr, align 8
  %call11 = call i32 @ferror(%struct._IO_FILE* %13) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.92, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %14 = load i8*, i8** %ret, align 8
  store i8* %14, i8** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13
  %15 = load i8*, i8** %retval
  ret i8* %15
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

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

; Function Attrs: nounwind uwtable
define i32 @load_options(%struct.DFigObj* %xxx, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i32, align 4
  %xxx.addr = alloca %struct.DFigObj*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %load_buf = alloca [256 x i8], align 16
  %str_buf = alloca [256 x i8], align 16
  %opt_buf = alloca [256 x i8], align 16
  %sp = alloca i32, align 4
  %sp53 = alloca double, align 8
  %sp62 = alloca double, align 8
  %sp72 = alloca double, align 8
  store %struct.DFigObj* %xxx, %struct.DFigObj** %xxx.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %0, i32 0, i32 3
  %1 = bitcast %struct.explorer_vals_t* %opts to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.explorer_vals_t* @standardvals to i8*), i64 136, i32 8, i1 false)
  %2 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts1 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %2, i32 0, i32 3
  %gradinvert = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts1, i32 0, i32 20
  store i32 0, i32* %gradinvert, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @get_line(i8* %arraydecay, i32 256, %struct._IO_FILE* %3, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %if.end.174, %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @feof(%struct._IO_FILE* %4) #5
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %call4 = call i32 @strcmp(i8* %arraydecay3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0)) #8
  %tobool5 = icmp ne i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool5, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i8* %arraydecay7, i8* %arraydecay8) #5
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call11 = call i32 @strcmp(i8* %arraydecay10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i32 0, i32 0)) #8
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, i32* %sp, align 4
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call14 = call i32 @atoi(i8* %arraydecay13) #8
  store i32 %call14, i32* %sp, align 4
  %6 = load i32, i32* %sp, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load i32, i32* %sp, align 4
  %8 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts16 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %8, i32 0, i32 3
  %fractaltype = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts16, i32 0, i32 0
  store i32 %7, i32* %fractaltype, align 4
  br label %if.end.174

if.else:                                          ; preds = %while.body
  %arraydecay17 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call18 = call i32 @strcmp(i8* %arraydecay17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0)) #8
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.else.24, label %if.then.20

if.then.20:                                       ; preds = %if.else
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call22 = call double @g_ascii_strtod(i8* %arraydecay21, i8** null)
  %9 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts23 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %9, i32 0, i32 3
  %xmin = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts23, i32 0, i32 1
  store double %call22, double* %xmin, align 8
  br label %if.end.173

if.else.24:                                       ; preds = %if.else
  %arraydecay25 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call26 = call i32 @strcmp(i8* %arraydecay25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0)) #8
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.else.32, label %if.then.28

if.then.28:                                       ; preds = %if.else.24
  %arraydecay29 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call30 = call double @g_ascii_strtod(i8* %arraydecay29, i8** null)
  %10 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts31 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %10, i32 0, i32 3
  %xmax = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts31, i32 0, i32 2
  store double %call30, double* %xmax, align 8
  br label %if.end.172

if.else.32:                                       ; preds = %if.else.24
  %arraydecay33 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call34 = call i32 @strcmp(i8* %arraydecay33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i32 0, i32 0)) #8
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.else.40, label %if.then.36

if.then.36:                                       ; preds = %if.else.32
  %arraydecay37 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call38 = call double @g_ascii_strtod(i8* %arraydecay37, i8** null)
  %11 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts39 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %11, i32 0, i32 3
  %ymin = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts39, i32 0, i32 3
  store double %call38, double* %ymin, align 8
  br label %if.end.171

if.else.40:                                       ; preds = %if.else.32
  %arraydecay41 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call42 = call i32 @strcmp(i8* %arraydecay41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0)) #8
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.else.48, label %if.then.44

if.then.44:                                       ; preds = %if.else.40
  %arraydecay45 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call46 = call double @g_ascii_strtod(i8* %arraydecay45, i8** null)
  %12 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts47 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %12, i32 0, i32 3
  %ymax = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts47, i32 0, i32 4
  store double %call46, double* %ymax, align 8
  br label %if.end.170

if.else.48:                                       ; preds = %if.else.40
  %arraydecay49 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call50 = call i32 @strcmp(i8* %arraydecay49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0)) #8
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.else.57, label %if.then.52

if.then.52:                                       ; preds = %if.else.48
  %arraydecay54 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call55 = call double @g_ascii_strtod(i8* %arraydecay54, i8** null)
  store double %call55, double* %sp53, align 8
  %13 = load double, double* %sp53, align 8
  %div = fdiv double %13, 1.280000e+02
  %14 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts56 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %14, i32 0, i32 3
  %redstretch = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts56, i32 0, i32 9
  store double %div, double* %redstretch, align 8
  br label %if.end.169

if.else.57:                                       ; preds = %if.else.48
  %arraydecay58 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call59 = call i32 @strcmp(i8* %arraydecay58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.101, i32 0, i32 0)) #8
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.else.67, label %if.then.61

if.then.61:                                       ; preds = %if.else.57
  %arraydecay63 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call64 = call double @g_ascii_strtod(i8* %arraydecay63, i8** null)
  store double %call64, double* %sp62, align 8
  %15 = load double, double* %sp62, align 8
  %div65 = fdiv double %15, 1.280000e+02
  %16 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts66 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %16, i32 0, i32 3
  %greenstretch = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts66, i32 0, i32 10
  store double %div65, double* %greenstretch, align 8
  br label %if.end.168

if.else.67:                                       ; preds = %if.else.57
  %arraydecay68 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call69 = call i32 @strcmp(i8* %arraydecay68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0)) #8
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.else.77, label %if.then.71

if.then.71:                                       ; preds = %if.else.67
  %arraydecay73 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call74 = call double @g_ascii_strtod(i8* %arraydecay73, i8** null)
  store double %call74, double* %sp72, align 8
  %17 = load double, double* %sp72, align 8
  %div75 = fdiv double %17, 1.280000e+02
  %18 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts76 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %18, i32 0, i32 3
  %bluestretch = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts76, i32 0, i32 11
  store double %div75, double* %bluestretch, align 8
  br label %if.end.167

if.else.77:                                       ; preds = %if.else.67
  %arraydecay78 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call79 = call i32 @strcmp(i8* %arraydecay78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0)) #8
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.else.85, label %if.then.81

if.then.81:                                       ; preds = %if.else.77
  %arraydecay82 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call83 = call double @g_ascii_strtod(i8* %arraydecay82, i8** null)
  %19 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts84 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %19, i32 0, i32 3
  %iter = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts84, i32 0, i32 5
  store double %call83, double* %iter, align 8
  br label %if.end.166

if.else.85:                                       ; preds = %if.else.77
  %arraydecay86 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call87 = call i32 @strcmp(i8* %arraydecay86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i32 0, i32 0)) #8
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.else.93, label %if.then.89

if.then.89:                                       ; preds = %if.else.85
  %arraydecay90 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call91 = call double @g_ascii_strtod(i8* %arraydecay90, i8** null)
  %20 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts92 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %20, i32 0, i32 3
  %cx = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts92, i32 0, i32 6
  store double %call91, double* %cx, align 8
  br label %if.end.165

if.else.93:                                       ; preds = %if.else.85
  %arraydecay94 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call95 = call i32 @strcmp(i8* %arraydecay94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0)) #8
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.else.101, label %if.then.97

if.then.97:                                       ; preds = %if.else.93
  %arraydecay98 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call99 = call double @g_ascii_strtod(i8* %arraydecay98, i8** null)
  %21 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts100 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %21, i32 0, i32 3
  %cy = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts100, i32 0, i32 7
  store double %call99, double* %cy, align 8
  br label %if.end.164

if.else.101:                                      ; preds = %if.else.93
  %arraydecay102 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call103 = call i32 @strcmp(i8* %arraydecay102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.106, i32 0, i32 0)) #8
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.else.109, label %if.then.105

if.then.105:                                      ; preds = %if.else.101
  %arraydecay106 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call107 = call i32 @atoi(i8* %arraydecay106) #8
  %22 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts108 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %22, i32 0, i32 3
  %redmode = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts108, i32 0, i32 12
  store i32 %call107, i32* %redmode, align 4
  br label %if.end.163

if.else.109:                                      ; preds = %if.else.101
  %arraydecay110 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call111 = call i32 @strcmp(i8* %arraydecay110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0)) #8
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.else.117, label %if.then.113

if.then.113:                                      ; preds = %if.else.109
  %arraydecay114 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call115 = call i32 @atoi(i8* %arraydecay114) #8
  %23 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts116 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %23, i32 0, i32 3
  %greenmode = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts116, i32 0, i32 13
  store i32 %call115, i32* %greenmode, align 4
  br label %if.end.162

if.else.117:                                      ; preds = %if.else.109
  %arraydecay118 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call119 = call i32 @strcmp(i8* %arraydecay118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0)) #8
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.else.125, label %if.then.121

if.then.121:                                      ; preds = %if.else.117
  %arraydecay122 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call123 = call i32 @atoi(i8* %arraydecay122) #8
  %24 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts124 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %24, i32 0, i32 3
  %bluemode = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts124, i32 0, i32 14
  store i32 %call123, i32* %bluemode, align 4
  br label %if.end.161

if.else.125:                                      ; preds = %if.else.117
  %arraydecay126 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call127 = call i32 @strcmp(i8* %arraydecay126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.109, i32 0, i32 0)) #8
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.else.133, label %if.then.129

if.then.129:                                      ; preds = %if.else.125
  %arraydecay130 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call131 = call i32 @atoi(i8* %arraydecay130) #8
  %25 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts132 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %25, i32 0, i32 3
  %redinvert = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts132, i32 0, i32 15
  store i32 %call131, i32* %redinvert, align 4
  br label %if.end.160

if.else.133:                                      ; preds = %if.else.125
  %arraydecay134 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call135 = call i32 @strcmp(i8* %arraydecay134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.110, i32 0, i32 0)) #8
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.else.141, label %if.then.137

if.then.137:                                      ; preds = %if.else.133
  %arraydecay138 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call139 = call i32 @atoi(i8* %arraydecay138) #8
  %26 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts140 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %26, i32 0, i32 3
  %greeninvert = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts140, i32 0, i32 16
  store i32 %call139, i32* %greeninvert, align 4
  br label %if.end.159

if.else.141:                                      ; preds = %if.else.133
  %arraydecay142 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call143 = call i32 @strcmp(i8* %arraydecay142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i32 0, i32 0)) #8
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.else.149, label %if.then.145

if.then.145:                                      ; preds = %if.else.141
  %arraydecay146 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call147 = call i32 @atoi(i8* %arraydecay146) #8
  %27 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts148 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %27, i32 0, i32 3
  %blueinvert = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts148, i32 0, i32 17
  store i32 %call147, i32* %blueinvert, align 4
  br label %if.end.158

if.else.149:                                      ; preds = %if.else.141
  %arraydecay150 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call151 = call i32 @strcmp(i8* %arraydecay150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0)) #8
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.end.157, label %if.then.153

if.then.153:                                      ; preds = %if.else.149
  %arraydecay154 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call155 = call i32 @atoi(i8* %arraydecay154) #8
  %28 = load %struct.DFigObj*, %struct.DFigObj** %xxx.addr, align 8
  %opts156 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %28, i32 0, i32 3
  %colormode = getelementptr inbounds %struct.explorer_vals_t, %struct.explorer_vals_t* %opts156, i32 0, i32 8
  store i32 %call155, i32* %colormode, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.153, %if.else.149
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.then.145
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.then.137
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.then.129
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.121
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.then.113
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.then.105
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.97
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.then.89
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.then.81
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.71
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.61
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.52
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.44
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.then.36
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.then.28
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.20
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end
  %arraydecay175 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call176 = call i8* @get_line(i8* %arraydecay175, i32 256, %struct._IO_FILE* %29, i32 0)
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.15
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare double @g_ascii_strtod(i8*, i8**) #1

; Function Attrs: nounwind uwtable
define void @explorer_load() #0 {
entry:
  %fp = alloca %struct._IO_FILE*, align 8
  %load_buf = alloca [256 x i8], align 16
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** @filename, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.113, i32 0, i32 0), i32 1859, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.explorer_load, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.114, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** @filename, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end.6, label %if.then.1

if.then.1:                                        ; preds = %do.end
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.116, i32 0, i32 0)) #5
  %3 = load i8*, i8** @filename, align 8
  %call3 = call i8* @gimp_filename_to_utf8(i8* %3)
  %call4 = call i32* @__errno_location() #7
  %4 = load i32, i32* %call4, align 4
  %call5 = call i8* @g_strerror(i32 %4) #7
  call void (i8*, ...) @g_message(i8* %call2, i8* %call3, i8* %call5)
  br label %return

if.end.6:                                         ; preds = %do.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i8* @get_line(i8* %arraydecay, i32 256, %struct._IO_FILE* %5, i32 1)
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %call10 = call i64 @strlen(i8* %arraydecay9) #8
  %call11 = call i32 @strncmp(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.117, i32 0, i32 0), i8* %arraydecay8, i64 %call10) #8
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.6
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.118, i32 0, i32 0)) #5
  %6 = load i8*, i8** @filename, align 8
  %call15 = call i8* @gimp_filename_to_utf8(i8* %6)
  call void (i8*, ...) @g_message(i8* %call14, i8* %call15)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* %7)
  br label %return

if.end.17:                                        ; preds = %if.end.6
  %8 = load %struct.DFigObj*, %struct.DFigObj** @current_obj, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call18 = call i32 @load_options(%struct.DFigObj* %8, %struct._IO_FILE* %9)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.17
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.119, i32 0, i32 0)) #5
  %10 = load i8*, i8** @filename, align 8
  %call22 = call i8* @gimp_filename_to_utf8(i8* %10)
  %11 = load i32, i32* @line_no, align 4
  call void (i8*, ...) @g_message(i8* %call21, i8* %call22, i32 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call23 = call i32 @fclose(%struct._IO_FILE* %12)
  br label %return

if.end.24:                                        ; preds = %if.end.17
  %13 = load %struct.DFigObj*, %struct.DFigObj** @current_obj, align 8
  %opts = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %13, i32 0, i32 3
  %14 = bitcast %struct.explorer_vals_t* %opts to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.explorer_vals_t* @wvals to i8*), i8* %14, i64 136, i32 8, i1 false)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* %15)
  br label %return

return:                                           ; preds = %if.end.24, %if.then.20, %if.then.13, %if.then.1
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @preview_draw_crosshair(i32 %px, i32 %py) #0 {
entry:
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %p_ul = alloca i8*, align 8
  store i32 %px, i32* %px.addr, align 4
  store i32 %py, i32* %py.addr, align 4
  %0 = load i8*, i8** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 1), align 8
  %1 = load i32, i32* @preview_width, align 4
  %2 = load i32, i32* %py.addr, align 4
  %mul = mul nsw i32 %1, %2
  %add = add nsw i32 %mul, 0
  %mul1 = mul nsw i32 3, %add
  %idx.ext = sext i32 %mul1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %p_ul, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* @preview_width, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p_ul, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %xor = xor i32 %conv, 254
  %conv2 = trunc i32 %xor to i8
  store i8 %conv2, i8* %arrayidx, align 1
  %7 = load i8*, i8** %p_ul, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  %xor5 = xor i32 %conv4, 254
  %conv6 = trunc i32 %xor5 to i8
  store i8 %conv6, i8* %arrayidx3, align 1
  %9 = load i8*, i8** %p_ul, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %xor9 = xor i32 %conv8, 254
  %conv10 = trunc i32 %xor9 to i8
  store i8 %conv10, i8* %arrayidx7, align 1
  %11 = load i8*, i8** %p_ul, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %11, i64 3
  store i8* %add.ptr11, i8** %p_ul, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %x, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i8*, i8** getelementptr inbounds (%struct.explorer_interface_t, %struct.explorer_interface_t* @wint, i32 0, i32 1), align 8
  %14 = load i32, i32* @preview_width, align 4
  %mul12 = mul nsw i32 %14, 0
  %15 = load i32, i32* %px.addr, align 4
  %add13 = add nsw i32 %mul12, %15
  %mul14 = mul nsw i32 3, %add13
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %13, i64 %idx.ext15
  store i8* %add.ptr16, i8** %p_ul, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.36, %for.end
  %16 = load i32, i32* %y, align 4
  %17 = load i32, i32* @preview_height, align 4
  %cmp18 = icmp slt i32 %16, %17
  br i1 %cmp18, label %for.body.20, label %for.end.38

for.body.20:                                      ; preds = %for.cond.17
  %18 = load i8*, i8** %p_ul, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %19 to i32
  %xor23 = xor i32 %conv22, 254
  %conv24 = trunc i32 %xor23 to i8
  store i8 %conv24, i8* %arrayidx21, align 1
  %20 = load i8*, i8** %p_ul, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %21 to i32
  %xor27 = xor i32 %conv26, 254
  %conv28 = trunc i32 %xor27 to i8
  store i8 %conv28, i8* %arrayidx25, align 1
  %22 = load i8*, i8** %p_ul, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %23 to i32
  %xor31 = xor i32 %conv30, 254
  %conv32 = trunc i32 %xor31 to i8
  store i8 %conv32, i8* %arrayidx29, align 1
  %24 = load i32, i32* @preview_width, align 4
  %mul33 = mul nsw i32 3, %24
  %25 = load i8*, i8** %p_ul, align 8
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %25, i64 %idx.ext34
  store i8* %add.ptr35, i8** %p_ul, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.20
  %26 = load i32, i32* %y, align 4
  %inc37 = add nsw i32 %26, 1
  store i32 %inc37, i32* %y, align 4
  br label %for.cond.17

for.end.38:                                       ; preds = %for.cond.17
  ret void
}

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_scale_entry_set_sensitive(%struct._GtkObject*, i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @file_chooser_set_default_folder(%struct._GtkFileChooser* %chooser) #0 {
entry:
  %chooser.addr = alloca %struct._GtkFileChooser*, align 8
  %path_list = alloca %struct._GList*, align 8
  %dir = alloca i8*, align 8
  store %struct._GtkFileChooser* %chooser, %struct._GtkFileChooser** %chooser.addr, align 8
  %0 = load i8*, i8** @fractalexplorer_path, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @fractalexplorer_path, align 8
  %call = call %struct._GList* @gimp_path_parse(i8* %1, i32 256, i32 0, %struct._GList** null)
  store %struct._GList* %call, %struct._GList** %path_list, align 8
  %2 = load %struct._GList*, %struct._GList** %path_list, align 8
  %call1 = call noalias i8* @gimp_path_get_user_writable_dir(%struct._GList* %2)
  store i8* %call1, i8** %dir, align 8
  %3 = load i8*, i8** %dir, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call i8* @gimp_directory() #7
  %call5 = call noalias i8* @g_strdup(i8* %call4)
  store i8* %call5, i8** %dir, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %4 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %5 = load i8*, i8** %dir, align 8
  %call7 = call i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser* %4, i8* %5)
  %6 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GList*, %struct._GList** %path_list, align 8
  call void @gimp_path_free(%struct._GList* %7)
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

; Function Attrs: nounwind uwtable
define internal void @load_file_chooser_response(%struct._GtkFileChooser* %chooser, i32 %response_id, i8* %data) #0 {
entry:
  %chooser.addr = alloca %struct._GtkFileChooser*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._GtkFileChooser* %chooser, %struct._GtkFileChooser** %chooser.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %call = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %1)
  store i8* %call, i8** @filename, align 8
  %2 = load i8*, i8** @filename, align 8
  %call1 = call i32 @g_file_test(i8* %2, i32 1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @explorer_load()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @maindlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %3)
  call void @dialog_change_scale()
  call void @set_cmap_preview()
  call void @dialog_update_preview()
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %4 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %5 = bitcast %struct._GtkFileChooser* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %6)
  ret void
}

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare %struct._GList* @gimp_path_parse(i8*, i32, i32, %struct._GList**) #1

declare noalias i8* @gimp_path_get_user_writable_dir(%struct._GList*) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #3

declare i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser*, i8*) #1

declare void @gimp_path_free(%struct._GList*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare i32 @g_file_test(i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @save_file_chooser_response(%struct._GtkFileChooser* %chooser, i32 %response_id, i8* %data) #0 {
entry:
  %chooser.addr = alloca %struct._GtkFileChooser*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._GtkFileChooser* %chooser, %struct._GtkFileChooser** %chooser.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %call = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %1)
  store i8* %call, i8** @filename, align 8
  call void @save_callback()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %3 = bitcast %struct._GtkFileChooser* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %4)
  ret void
}

declare i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @save_callback() #0 {
entry:
  %fp = alloca %struct._IO_FILE*, align 8
  %savename = alloca i8*, align 8
  %0 = load i8*, i8** @filename, align 8
  store i8* %0, i8** %savename, align 8
  %1 = load i8*, i8** %savename, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.123, i32 0, i32 0)) #5
  %3 = load i8*, i8** %savename, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %3)
  %call3 = call i32* @__errno_location() #7
  %4 = load i32, i32* %call3, align 4
  %call4 = call i8* @g_strerror(i32 %4) #7
  call void (i8*, ...) @g_message(i8* %call1, i8* %call2, i8* %call4)
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.117, i32 0, i32 0), %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.124, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.125, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.124, i32 0, i32 0), %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @save_options(%struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call9 = call i32 @ferror(%struct._IO_FILE* %10) #5
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.end
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.126, i32 0, i32 0)) #5
  %11 = load i8*, i8** %savename, align 8
  %call13 = call i8* @gimp_filename_to_utf8(i8* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call14 = call i32 @ferror(%struct._IO_FILE* %12) #5
  %call15 = call i8* @g_strerror(i32 %call14) #7
  call void (i8*, ...) @g_message(i8* %call12, i8* %call13, i8* %call15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* %13)
  br label %return

return:                                           ; preds = %if.end.16, %if.then
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @save_options(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %buf = alloca [64 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 0), align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.127, i32 0, i32 0), i32 %1)
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %2 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %call1 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), double %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay2 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0), i8* %arraydecay2)
  %arraydecay4 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %4 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  %call5 = call i8* @g_ascii_formatd(i8* %arraydecay4, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), double %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay6 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.130, i32 0, i32 0), i8* %arraydecay6)
  %arraydecay8 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %6 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %call9 = call i8* @g_ascii_formatd(i8* %arraydecay8, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), double %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay10 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.131, i32 0, i32 0), i8* %arraydecay10)
  %arraydecay12 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %8 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  %call13 = call i8* @g_ascii_formatd(i8* %arraydecay12, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), double %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay14 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0), i8* %arraydecay14)
  %arraydecay16 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %10 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 5), align 8
  %call17 = call i8* @g_ascii_formatd(i8* %arraydecay16, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), double %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay18 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i32 0, i32 0), i8* %arraydecay18)
  %arraydecay20 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %12 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 6), align 8
  %call21 = call i8* @g_ascii_formatd(i8* %arraydecay20, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), double %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay22 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.134, i32 0, i32 0), i8* %arraydecay22)
  %arraydecay24 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %14 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 7), align 8
  %call25 = call i8* @g_ascii_formatd(i8* %arraydecay24, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), double %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay26 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135, i32 0, i32 0), i8* %arraydecay26)
  %arraydecay28 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %16 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 9), align 8
  %mul = fmul double %16, 1.280000e+02
  %call29 = call i8* @g_ascii_formatd(i8* %arraydecay28, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), double %mul)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay30 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.136, i32 0, i32 0), i8* %arraydecay30)
  %arraydecay32 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %18 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 10), align 8
  %mul33 = fmul double %18, 1.280000e+02
  %call34 = call i8* @g_ascii_formatd(i8* %arraydecay32, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), double %mul33)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay35 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.137, i32 0, i32 0), i8* %arraydecay35)
  %arraydecay37 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %20 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 11), align 8
  %mul38 = fmul double %20, 1.280000e+02
  %call39 = call i8* @g_ascii_formatd(i8* %arraydecay37, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), double %mul38)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay40 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.138, i32 0, i32 0), i8* %arraydecay40)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 12), align 4
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0), i32 %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 13), align 4
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.140, i32 0, i32 0), i32 %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 14), align 4
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.141, i32 0, i32 0), i32 %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 15), align 4
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.142, i32 0, i32 0), i32 %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 16), align 4
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.143, i32 0, i32 0), i32 %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 17), align 4
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.144, i32 0, i32 0), i32 %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 8), align 4
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.145, i32 0, i32 0), i32 %35)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call49 = call i32 @fputs(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.124, i32 0, i32 0), %struct._IO_FILE* %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i32 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call51 = call i32 @fputs(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.124, i32 0, i32 0), %struct._IO_FILE* %38)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
