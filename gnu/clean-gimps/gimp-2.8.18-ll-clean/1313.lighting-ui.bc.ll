; ModuleID = './plug-ins/lighting/lighting-ui.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.LightingValues = type { i32, i32, i32, %struct._GimpVector3, %struct._GimpVector3, [6 x %struct.LightSettings], %struct.MaterialSettings, %struct.MaterialSettings, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double }
%struct._GimpVector3 = type { double, double, double }
%struct.LightSettings = type { i32, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpRGB, double, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct.MaterialSettings = type { double, double, double, double, double, i32, %struct._GimpRGB }
%struct._cairo_surface = type opaque
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GdkCursor = type { i32, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GimpDialog = type { %struct._GtkDialog }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GBinding = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkFileChooser = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@previewarea = global %struct._GtkWidget* null, align 8
@spin_pos_x = global %struct._GtkWidget* null, align 8
@spin_pos_y = global %struct._GtkWidget* null, align 8
@spin_pos_z = global %struct._GtkWidget* null, align 8
@spin_dir_x = global %struct._GtkWidget* null, align 8
@spin_dir_y = global %struct._GtkWidget* null, align 8
@spin_dir_z = global %struct._GtkWidget* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"lighting\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"lighting-effects-path\00", align 1
@lighting_effects_path = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Lighting Effects\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"gimp-lighting\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"plug-in-lighting\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@appwin = internal global %struct._GtkWidget* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"_Update\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Recompute preview image\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"I_nteractive\00", align 1
@mapvals = external global %struct.LightingValues, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Enable/disable real time preview of changes\00", align 1
@preview_rgb_data = external global i8*, align 8
@preview_surface = external global %struct._cairo_surface*, align 8
@options_note_book = internal global %struct._GtkNotebook* null, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"Op_tions\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"_Light\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"_Material\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"_Bump Map\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"_Environment Map\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"General Options\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"T_ransparent background\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"Make destination image transparent where bump height is zero\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Cre_ate new image\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Create a new image when applying filter\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"High _quality preview\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"Enable/disable high quality preview\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"Distance:\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"Distance of observer from surface\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"Light Settings\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"Light 1\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"Light 2\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Light 3\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"Light 4\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Light 5\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"Light 6\00", align 1
@lightselect_combo = internal global %struct._GtkWidget* null, align 8
@.str.37 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"Type:\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"Color:\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"light-source\04None\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"Directional\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@light_type_combo = internal global %struct._GtkWidget* null, align 8
@.str.43 = private unnamed_addr constant [30 x i8] c"Type of light source to apply\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"Select lightsource color\00", align 1
@colorbutton = internal global %struct._GtkWidget* null, align 8
@.str.45 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"Set light source color\00", align 1
@spin_intensity = internal global %struct._GtkWidget* null, align 8
@.str.47 = private unnamed_addr constant [12 x i8] c"_Intensity:\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"Light intensity\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"Position\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"_X:\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"Light source X position in XYZ space\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"_Y:\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"Light source Y position in XYZ space\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"_Z:\00", align 1
@.str.55 = private unnamed_addr constant [37 x i8] c"Light source Z position in XYZ space\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"X:\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"Light source X direction in XYZ space\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"Y:\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"Light source Y direction in XYZ space\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"Z:\00", align 1
@.str.62 = private unnamed_addr constant [38 x i8] c"Light source Z direction in XYZ space\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"I_solate\00", align 1
@isolate_button = internal global %struct._GtkWidget* null, align 8
@.str.64 = private unnamed_addr constant [17 x i8] c"Lighting preset:\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@save_lighting_preset.window = internal global %struct._GtkWidget* null, align 8
@.str.67 = private unnamed_addr constant [21 x i8] c"Save Lighting Preset\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.71 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"Number of lights: %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"Type: Point\0A\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"Type: Directional\0A\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"Type: Spot\0A\00", align 1
@.str.76 = private unnamed_addr constant [23 x i8] c"Unknown light type: %d\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"Position: %s %s %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"Direction: %s %s %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"Color: %s %s %s\0A\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"Intensity: %s\0A\00", align 1
@load_lighting_preset.window = internal global %struct._GtkWidget* null, align 8
@.str.81 = private unnamed_addr constant [21 x i8] c"Load Lighting Preset\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.83 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"Number of lights: %d\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c" Type: %20s\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"Spot\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"Unknown light type: %s\00", align 1
@.str.88 = private unnamed_addr constant [32 x i8] c" Position: %%%lus %%%lus %%%lus\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c" Direction: %%%lus %%%lus %%%lus\00", align 1
@.str.90 = private unnamed_addr constant [29 x i8] c" Color: %%%lus %%%lus %%%lus\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c" Intensity: %%%lus\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"Material Properties\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"intensity-ambient-low\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"_Glowing:\00", align 1
@.str.95 = private unnamed_addr constant [61 x i8] c"Amount of original color to show where no direct light falls\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"intensity-ambient-high\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"intensity-diffuse-low\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"_Bright:\00", align 1
@.str.99 = private unnamed_addr constant [55 x i8] c"Intensity of original color when lit by a light source\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"intensity-diffuse-high\00", align 1
@.str.101 = private unnamed_addr constant [26 x i8] c"reflectivity-specular-low\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"_Shiny:\00", align 1
@.str.103 = private unnamed_addr constant [44 x i8] c"Controls how intense the highlights will be\00", align 1
@.str.104 = private unnamed_addr constant [27 x i8] c"reflectivity-specular-high\00", align 1
@.str.105 = private unnamed_addr constant [27 x i8] c"reflectivity-highlight-low\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"_Polished:\00", align 1
@.str.107 = private unnamed_addr constant [48 x i8] c"Higher values makes the highlights more focused\00", align 1
@.str.108 = private unnamed_addr constant [28 x i8] c"reflectivity-highlight-high\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"_Metallic\00", align 1
@.str.110 = private unnamed_addr constant [21 x i8] c"E_nable bump mapping\00", align 1
@.str.111 = private unnamed_addr constant [42 x i8] c"Enable/disable bump-mapping (image depth)\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.114 = private unnamed_addr constant [16 x i8] c"Bumpm_ap image:\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"Logarithmic\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"Sinusoidal\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"Spherical\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"Cu_rve:\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"Ma_ximum height:\00", align 1
@.str.121 = private unnamed_addr constant [25 x i8] c"Maximum height for bumps\00", align 1
@.str.122 = private unnamed_addr constant [28 x i8] c"E_nable environment mapping\00", align 1
@.str.123 = private unnamed_addr constant [48 x i8] c"Enable/disable environment-mapping (reflection)\00", align 1
@.str.124 = private unnamed_addr constant [20 x i8] c"En_vironment image:\00", align 1
@.str.125 = private unnamed_addr constant [25 x i8] c"Environment image to use\00", align 1
@env_width = external global i32, align 4
@env_height = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @main_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %main_hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %path = alloca i8*, align 8
  %run = alloca i32, align 4
  %cursor = alloca %struct._GdkCursor*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 0, i32* %run, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0)
  %call = call i8* @gimp_gimprc_query(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call, i8** %path, align 8
  %0 = load i8*, i8** %path, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %path, align 8
  %call1 = call noalias i8* @g_filename_from_utf8(i8* %1, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call1, i8** @lighting_effects_path, align 8
  %2 = load i8*, i8** %path, align 8
  call void @g_free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @lighting_stock_init()
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #4
  %call3 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** @appwin, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %5, i32 -5, i32 -6, i32 -1)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_window_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %8)
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %main_hbox, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %11, i32 12)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  %call13 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %14)
  %15 = bitcast %struct._GtkWidget* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %17, i32 0, i32 0, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %call16 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %vbox, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %call19 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %frame, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_frame_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call20)
  %26 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %26, i32 1)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call22)
  %29 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 0, i32 0, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  call void @gtk_widget_realize(%struct._GtkWidget* %32)
  %call24 = call %struct._GtkWidget* @gtk_drawing_area_new()
  store %struct._GtkWidget* %call24, %struct._GtkWidget** @previewarea, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %33, i32 200, i32 200)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %34, i32 802)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @preview_events to void ()*), i8* %38, void (i8*, %struct._GClosure*)* null, i32 0)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %42 = bitcast %struct._GtkWidget* %41 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @preview_expose to void ()*), i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_container_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call27)
  %45 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkContainer*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_container_add(%struct._GtkContainer* %45, %struct._GtkWidget* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %call29 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %hbox, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call30)
  %50 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %50, %struct._GtkWidget* %51, i32 0, i32 0, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #4
  %call33 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %button, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call34)
  %55 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %55, %struct._GtkWidget* %56, i32 0, i32 0, i32 0)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %58 = bitcast %struct._GtkWidget* %57 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @preview_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %60, i8* %call37, i8* null)
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)) #4
  %call39 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call38)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %toggle, align 8
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_toggle_button_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call40)
  %63 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkToggleButton*
  %64 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 22), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %63, i32 %64)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_box_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call42)
  %67 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkBox*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %67, %struct._GtkWidget* %68, i32 1, i32 1, i32 0)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %70 = bitcast %struct._GtkWidget* %69 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 22) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %72 = bitcast %struct._GtkWidget* %71 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @interactive_preview_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %74, i8* %call46, i8* null)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @create_main_notebook(%struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %call47 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %77)
  %call48 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %call47, i32 60)
  store %struct._GdkCursor* %call48, %struct._GdkCursor** %cursor, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %call49 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %78)
  %79 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call49, %struct._GdkCursor* %79)
  %80 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %80)
  %81 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call50 = call i32 @image_setup(%struct._GimpDrawable* %81, i32 1)
  call void @preview_compute()
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_dialog_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call51)
  %84 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpDialog*
  %call53 = call i32 @gimp_dialog_run(%struct._GimpDialog* %84)
  %cmp = icmp eq i32 %call53, -5
  br i1 %cmp, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end
  store i32 1, i32* %run, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end
  %85 = load i8*, i8** @preview_rgb_data, align 8
  %cmp56 = icmp ne i8* %85, null
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  %86 = load i8*, i8** @preview_rgb_data, align 8
  call void @g_free(i8* %86)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.55
  %87 = load %struct._cairo_surface*, %struct._cairo_surface** @preview_surface, align 8
  %cmp59 = icmp ne %struct._cairo_surface* %87, null
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.58
  %88 = load %struct._cairo_surface*, %struct._cairo_surface** @preview_surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %88)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.58
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %89)
  %90 = load i32, i32* %run, align 4
  ret i32 %90
}

declare void @gimp_ui_init(i8*, i32) #1

declare i8* @gimp_gimprc_query(i8*) #1

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare void @g_free(i8*) #1

declare void @lighting_stock_init() #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

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

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare void @gtk_widget_realize(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_drawing_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare i32 @preview_events(%struct._GtkWidget*, %union._GdkEvent*) #1

declare i32 @preview_expose(%struct._GtkWidget*, %struct._GdkEventExpose*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @preview_callback(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  call void @preview_compute()
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %0)
  ret void
}

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @interactive_preview_callback(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @create_main_notebook(%struct._GtkWidget* %container) #0 {
entry:
  %container.addr = alloca %struct._GtkWidget*, align 8
  %page = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %container, %struct._GtkWidget** %container.addr, align 8
  %call = call %struct._GtkWidget* @gtk_notebook_new()
  %0 = bitcast %struct._GtkWidget* %call to %struct._GTypeInstance*
  %call1 = call i64 @gtk_notebook_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %0, i64 %call1)
  %1 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkNotebook*
  store %struct._GtkNotebook* %1, %struct._GtkNotebook** @options_note_book, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %container.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  %5 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %6 = bitcast %struct._GtkNotebook* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  call void @gtk_container_add(%struct._GtkContainer* %4, %struct._GtkWidget* %7)
  %call7 = call %struct._GtkWidget* @create_options_page()
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %page, align 8
  %8 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #4
  %call9 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call8)
  %call10 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %8, %struct._GtkWidget* %9, %struct._GtkWidget* %call9)
  %call11 = call %struct._GtkWidget* @create_light_page()
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %page, align 8
  %10 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)) #4
  %call13 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call12)
  %call14 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %10, %struct._GtkWidget* %11, %struct._GtkWidget* %call13)
  %call15 = call %struct._GtkWidget* @create_material_page()
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %page, align 8
  %12 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #4
  %call17 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call16)
  %call18 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %12, %struct._GtkWidget* %13, %struct._GtkWidget* %call17)
  %call19 = call %struct._GtkWidget* @create_bump_page()
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %page, align 8
  %14 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #4
  %call21 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call20)
  %call22 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %14, %struct._GtkWidget* %15, %struct._GtkWidget* %call21)
  %call23 = call %struct._GtkWidget* @create_environment_page()
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %page, align 8
  %16 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0)) #4
  %call25 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call24)
  %call26 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %16, %struct._GtkWidget* %17, %struct._GtkWidget* %call25)
  %18 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %19 = bitcast %struct._GtkNotebook* %18 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_widget_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call27)
  %20 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  ret void
}

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

declare i32 @image_setup(%struct._GimpDrawable*, i32) #1

declare void @preview_compute() #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_notebook_new() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_options_page() #0 {
entry:
  %page = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %page, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0)) #4
  %call4 = call %struct._GtkWidget* @gimp_frame_new(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %vbox, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %10, %struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0)) #4
  %call11 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call10)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %toggle, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_toggle_button_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkToggleButton*
  %16 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 15), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %15, i32 %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 0, i32 0, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 15) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.22, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %24, i8* %call17, i8* null)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0)) #4
  %call19 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call18)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %toggle, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_toggle_button_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call20)
  %27 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkToggleButton*
  %28 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 14), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %27, i32 %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call22)
  %31 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %32, i32 0, i32 0, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 14) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %36, i8* %call25, i8* null)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0)) #4
  %call27 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call26)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %toggle, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_toggle_button_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call28)
  %39 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkToggleButton*
  %40 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 20), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %39, i32 %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call30)
  %43 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %43, %struct._GtkWidget* %44, i32 0, i32 0, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 20) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %48, i8* %call33, i8* null)
  %call34 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %table, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call35)
  %51 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %52, i32 0, i32 0, i32 12)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call37)
  %56 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0)) #4
  %57 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3, i32 2), align 8
  %call40 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %56, i32 0, i32 0, i8* %call39, i32 100, i32 6, double %57, double 0.000000e+00, double 2.000000e+00, double 1.000000e-02, double 5.000000e-02, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkObject* %call40, %struct._GtkObject** %adj, align 8
  %58 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %59 = bitcast %struct._GtkObject* %58 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @distance_update to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  ret %struct._GtkWidget* %61
}

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_light_page() #0 {
entry:
  %page = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %k = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 24), align 4
  store i32 %0, i32* %k, align 4
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %page, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %3, i32 12)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0)) #4
  %call4 = call %struct._GtkWidget* @gimp_frame_new(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %6, %struct._GtkWidget* %7, i32 0, i32 0, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %call7 = call %struct._GtkWidget* @gtk_table_new(i32 8, i32 8, i32 0)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %table, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_table_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %11, i32 6)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_table_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %14, i32 6)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_container_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkContainer*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %17, %struct._GtkWidget* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_table_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %22, i32 1, i32 12)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_table_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %25, i32 3, i32 12)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0)) #4
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0)) #4
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)) #4
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0)) #4
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)) #4
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0)) #4
  %call24 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call18, i32 0, i8* %call19, i32 1, i8* %call20, i32 2, i8* %call21, i32 3, i8* %call22, i32 4, i8* %call23, i32 5, i8* null)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** @lightselect_combo, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** @lightselect_combo, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_int_combo_box_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call25)
  %28 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpIntComboBox*
  %29 = load i32, i32* %k, align 4
  %call27 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %28, i32 %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_table_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call28)
  %32 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTable*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** @lightselect_combo, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %32, %struct._GtkWidget* %33, i32 0, i32 2, i32 0, i32 1)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** @lightselect_combo, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpIntComboBox*, i8*)* @lightselect_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** @lightselect_combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0)) #4
  %call32 = call %struct._GtkWidget* @gtk_label_new(i8* %call31)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %label, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_misc_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call33)
  %39 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %39, float 0.000000e+00, float 5.000000e-01)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_table_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call35)
  %42 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkTable*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %42, %struct._GtkWidget* %43, i32 0, i32 1, i32 1, i32 2)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0)) #4
  %call38 = call %struct._GtkWidget* @gtk_label_new(i8* %call37)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %label, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_misc_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call39)
  %47 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %47, float 0.000000e+00, float 5.000000e-01)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call41)
  %50 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %50, %struct._GtkWidget* %51, i32 0, i32 1, i32 2, i32 3)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %call43 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i64 13)
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0)) #4
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0)) #4
  %call46 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call43, i32 3, i8* %call44, i32 1, i8* %call45, i32 0, i8* null)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** @light_type_combo, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** @light_type_combo, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_int_combo_box_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call47)
  %55 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpIntComboBox*
  %56 = load i32, i32* %k, align 4
  %idxprom = sext i32 %56 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx, i32 0, i32 0
  %57 = load i32, i32* %type, align 4
  %call49 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %55, i32 %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_table_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call50)
  %60 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkTable*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** @light_type_combo, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %60, %struct._GtkWidget* %61, i32 1, i32 2, i32 1, i32 2)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** @light_type_combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** @light_type_combo, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @apply_settings to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** @light_type_combo, align 8
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %65, i8* %call53, i8* null)
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0)) #4
  %66 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %66 to i64
  %arrayidx56 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom55
  %color = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx56, i32 0, i32 3
  %call57 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call54, i32 64, i32 16, %struct._GimpRGB* %color, i32 0)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** @colorbutton, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** @colorbutton, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_color_button_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call58)
  %69 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpColorButton*
  call void @gimp_color_button_set_update(%struct._GimpColorButton* %69, i32 1)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** @colorbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_table_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call60)
  %73 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkTable*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** @colorbutton, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %73, %struct._GtkWidget* %74, i32 1, i32 2, i32 2, i32 3)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** @colorbutton, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %call62 = call i64 @g_signal_connect_data(i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @apply_settings to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** @colorbutton, align 8
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %77, i8* %call63, i8* null)
  %78 = load i32, i32* %k, align 4
  %idxprom64 = sext i32 %78 to i64
  %arrayidx65 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom64
  %intensity = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx65, i32 0, i32 4
  %79 = load double, double* %intensity, align 8
  %call66 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %79, double 0.000000e+00, double 1.000000e+02, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call66, %struct._GtkWidget** @spin_intensity, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_table_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call67)
  %82 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkTable*
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0)) #4
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_intensity, align 8
  %call70 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %82, i32 0, i32 3, i8* %call69, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %83, i32 1, i32 1)
  %84 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %85 = bitcast %struct._GtkObject* %84 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @apply_settings to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_intensity, align 8
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %86, i8* %call72, i8* null)
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0)) #4
  %call74 = call %struct._GtkWidget* @gtk_label_new(i8* %call73)
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %label, align 8
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_misc_get_type() #6
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call75)
  %89 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %89, float 0.000000e+00, float 5.000000e-01)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_table_get_type() #6
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call77)
  %92 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkTable*
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %92, %struct._GtkWidget* %93, i32 3, i32 4, i32 0, i32 1)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %94)
  %95 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %95 to i64
  %arrayidx80 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom79
  %position = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx80, i32 0, i32 1
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position, i32 0, i32 0
  %96 = load double, double* %x, align 8
  %call81 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %96, double -1.000000e+02, double 1.000000e+02, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** @spin_pos_x, align 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_table_get_type() #6
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call82)
  %99 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkTable*
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0)) #4
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_x, align 8
  %call85 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %99, i32 2, i32 1, i8* %call84, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %100, i32 1, i32 1)
  %101 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %102 = bitcast %struct._GtkObject* %101 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @apply_settings to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_x, align 8
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %103, i8* %call87, i8* null)
  %104 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %104 to i64
  %arrayidx89 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom88
  %position90 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx89, i32 0, i32 1
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position90, i32 0, i32 1
  %105 = load double, double* %y, align 8
  %call91 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %105, double -1.000000e+02, double 1.000000e+02, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call91, %struct._GtkWidget** @spin_pos_y, align 8
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_table_get_type() #6
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call92)
  %108 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkTable*
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0)) #4
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_y, align 8
  %call95 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %108, i32 2, i32 2, i8* %call94, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %109, i32 1, i32 1)
  %110 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %111 = bitcast %struct._GtkObject* %110 to i8*
  %call96 = call i64 @g_signal_connect_data(i8* %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @apply_settings to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_y, align 8
  %call97 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %112, i8* %call97, i8* null)
  %113 = load i32, i32* %k, align 4
  %idxprom98 = sext i32 %113 to i64
  %arrayidx99 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom98
  %position100 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx99, i32 0, i32 1
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position100, i32 0, i32 2
  %114 = load double, double* %z, align 8
  %call101 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %114, double -1.000000e+02, double 1.000000e+02, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call101, %struct._GtkWidget** @spin_pos_z, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_table_get_type() #6
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call102)
  %117 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkTable*
  %call104 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0)) #4
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_z, align 8
  %call105 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %117, i32 2, i32 3, i8* %call104, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %118, i32 1, i32 1)
  %119 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %120 = bitcast %struct._GtkObject* %119 to i8*
  %call106 = call i64 @g_signal_connect_data(i8* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @apply_settings to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_z, align 8
  %call107 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.55, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %121, i8* %call107, i8* null)
  %call108 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0)) #4
  %call109 = call %struct._GtkWidget* @gtk_label_new(i8* %call108)
  store %struct._GtkWidget* %call109, %struct._GtkWidget** %label, align 8
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_misc_get_type() #6
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call110)
  %124 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %124, float 0.000000e+00, float 5.000000e-01)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_table_get_type() #6
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call112)
  %127 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkTable*
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %127, %struct._GtkWidget* %128, i32 5, i32 6, i32 0, i32 1)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %129)
  %130 = load i32, i32* %k, align 4
  %idxprom114 = sext i32 %130 to i64
  %arrayidx115 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom114
  %direction = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx115, i32 0, i32 2
  %x116 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction, i32 0, i32 0
  %131 = load double, double* %x116, align 8
  %call117 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %131, double -1.000000e+02, double 1.000000e+02, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call117, %struct._GtkWidget** @spin_dir_x, align 8
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_table_get_type() #6
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call118)
  %134 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkTable*
  %call120 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0)) #4
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_x, align 8
  %call121 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %134, i32 4, i32 1, i8* %call120, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %135, i32 1, i32 1)
  %136 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %137 = bitcast %struct._GtkObject* %136 to i8*
  %call122 = call i64 @g_signal_connect_data(i8* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @apply_settings to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_x, align 8
  %call123 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.58, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %138, i8* %call123, i8* null)
  %139 = load i32, i32* %k, align 4
  %idxprom124 = sext i32 %139 to i64
  %arrayidx125 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom124
  %direction126 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx125, i32 0, i32 2
  %y127 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction126, i32 0, i32 1
  %140 = load double, double* %y127, align 8
  %call128 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %140, double -1.000000e+02, double 1.000000e+02, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call128, %struct._GtkWidget** @spin_dir_y, align 8
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call129 = call i64 @gtk_table_get_type() #6
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call129)
  %143 = bitcast %struct._GTypeInstance* %call130 to %struct._GtkTable*
  %call131 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0)) #4
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_y, align 8
  %call132 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %143, i32 4, i32 2, i8* %call131, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %144, i32 1, i32 1)
  %145 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %146 = bitcast %struct._GtkObject* %145 to i8*
  %call133 = call i64 @g_signal_connect_data(i8* %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @apply_settings to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_y, align 8
  %call134 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.60, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %147, i8* %call134, i8* null)
  %148 = load i32, i32* %k, align 4
  %idxprom135 = sext i32 %148 to i64
  %arrayidx136 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom135
  %direction137 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx136, i32 0, i32 2
  %z138 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction137, i32 0, i32 2
  %149 = load double, double* %z138, align 8
  %call139 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %149, double -1.000000e+02, double 1.000000e+02, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call139, %struct._GtkWidget** @spin_dir_z, align 8
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %151 = bitcast %struct._GtkWidget* %150 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_table_get_type() #6
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call140)
  %152 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkTable*
  %call142 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)) #4
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_z, align 8
  %call143 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %152, i32 4, i32 3, i8* %call142, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %153, i32 1, i32 1)
  %154 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %155 = bitcast %struct._GtkObject* %154 to i8*
  %call144 = call i64 @g_signal_connect_data(i8* %155, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @apply_settings to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_z, align 8
  %call145 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.62, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %156, i8* %call145, i8* null)
  %call146 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0)) #4
  %call147 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call146)
  store %struct._GtkWidget* %call147, %struct._GtkWidget** @isolate_button, align 8
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** @isolate_button, align 8
  %158 = bitcast %struct._GtkWidget* %157 to %struct._GTypeInstance*
  %call148 = call i64 @gtk_toggle_button_get_type() #6
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call148)
  %159 = bitcast %struct._GTypeInstance* %call149 to %struct._GtkToggleButton*
  %160 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 25), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %159, i32 %160)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** @isolate_button, align 8
  %162 = bitcast %struct._GtkWidget* %161 to i8*
  %call150 = call i64 @g_signal_connect_data(i8* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @isolate_selected_light to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %164 = bitcast %struct._GtkWidget* %163 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_table_get_type() #6
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call151)
  %165 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkTable*
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** @isolate_button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %165, %struct._GtkWidget* %166, i32 0, i32 1, i32 5, i32 6)
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** @isolate_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %167)
  %call153 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0)) #4
  %call154 = call %struct._GtkWidget* @gtk_label_new(i8* %call153)
  store %struct._GtkWidget* %call154, %struct._GtkWidget** %label, align 8
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %169 = bitcast %struct._GtkWidget* %168 to %struct._GTypeInstance*
  %call155 = call i64 @gtk_misc_get_type() #6
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %169, i64 %call155)
  %170 = bitcast %struct._GTypeInstance* %call156 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %170, float 1.000000e+00, float 5.000000e-01)
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %172 = bitcast %struct._GtkWidget* %171 to %struct._GTypeInstance*
  %call157 = call i64 @gtk_table_get_type() #6
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %172, i64 %call157)
  %173 = bitcast %struct._GTypeInstance* %call158 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %173, i32 5, i32 12)
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %175 = bitcast %struct._GtkWidget* %174 to %struct._GTypeInstance*
  %call159 = call i64 @gtk_table_get_type() #6
  %call160 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %175, i64 %call159)
  %176 = bitcast %struct._GTypeInstance* %call160 to %struct._GtkTable*
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %176, %struct._GtkWidget* %177, i32 0, i32 2, i32 6, i32 7)
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %178)
  %call161 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0))
  store %struct._GtkWidget* %call161, %struct._GtkWidget** %button, align 8
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %180 = bitcast %struct._GtkWidget* %179 to %struct._GTypeInstance*
  %call162 = call i64 @gtk_table_get_type() #6
  %call163 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %180, i64 %call162)
  %181 = bitcast %struct._GTypeInstance* %call163 to %struct._GtkTable*
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %181, %struct._GtkWidget* %182, i32 2, i32 4, i32 6, i32 7)
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %184 = bitcast %struct._GtkWidget* %183 to i8*
  %call164 = call i64 @g_signal_connect_data(i8* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @save_lighting_preset to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %185)
  %call165 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0))
  store %struct._GtkWidget* %call165, %struct._GtkWidget** %button, align 8
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %187 = bitcast %struct._GtkWidget* %186 to %struct._GTypeInstance*
  %call166 = call i64 @gtk_table_get_type() #6
  %call167 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call166)
  %188 = bitcast %struct._GTypeInstance* %call167 to %struct._GtkTable*
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %188, %struct._GtkWidget* %189, i32 4, i32 6, i32 6, i32 7)
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %191 = bitcast %struct._GtkWidget* %190 to i8*
  %call168 = call i64 @g_signal_connect_data(i8* %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @load_lighting_preset to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %192)
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %193)
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  ret %struct._GtkWidget* %194
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_material_page() #0 {
entry:
  %group = alloca %struct._GtkSizeGroup*, align 8
  %page = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %call = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call, %struct._GtkSizeGroup** %group, align 8
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %page, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i32 0, i32 0)) #4
  %call5 = call %struct._GtkWidget* @gimp_frame_new(i8* %call4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %hbox, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call9)
  %10 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %10, %struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call11 = call %struct._GtkWidget* @gtk_table_new(i32 5, i32 4, i32 0)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %table, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_table_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %15, i32 6)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call16 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.93, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %image, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_table_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call17)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTable*
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0)) #4
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %call20 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %23, i32 0, i32 0, i8* %call19, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %24, i32 1, i32 0)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %label, align 8
  %25 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %25, %struct._GtkWidget* %26)
  %27 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 0), align 8
  %call21 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %27, double 0.000000e+00, double 0x47EFFFFFE0000000, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %spinbutton, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call22)
  %30 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach(%struct._GtkTable* %30, %struct._GtkWidget* %31, i32 2, i32 3, i32 0, i32 1, i32 6, i32 6, i32 0, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %34 = bitcast %struct._GtkObject* %33 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 0) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %35 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %36 = bitcast %struct._GtkObject* %35 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @interactive_preview_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_label_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call26)
  %39 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkLabel*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %39, %struct._GtkWidget* %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.95, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %41, i8* %call28, i8* null)
  %call29 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.96, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %image, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_table_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call30)
  %44 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTable*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_table_attach(%struct._GtkTable* %44, %struct._GtkWidget* %45, i32 3, i32 4, i32 0, i32 1, i32 6, i32 6, i32 0, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %call32 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.97, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %image, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call33)
  %49 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0)) #4
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %call36 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %49, i32 0, i32 1, i8* %call35, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %50, i32 1, i32 0)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %label, align 8
  %51 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %51, %struct._GtkWidget* %52)
  %53 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 1), align 8
  %call37 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %53, double 0.000000e+00, double 0x47EFFFFFE0000000, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %spinbutton, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_table_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call38)
  %56 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkTable*
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach(%struct._GtkTable* %56, %struct._GtkWidget* %57, i32 2, i32 3, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %58)
  %59 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %60 = bitcast %struct._GtkObject* %59 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %61 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %62 = bitcast %struct._GtkObject* %61 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @interactive_preview_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_label_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call42)
  %65 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkLabel*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %65, %struct._GtkWidget* %66)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.99, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %67, i8* %call44, i8* null)
  %call45 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.100, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %image, align 8
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call46)
  %70 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_table_attach(%struct._GtkTable* %70, %struct._GtkWidget* %71, i32 3, i32 4, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %call48 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.101, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %image, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_table_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call49)
  %75 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkTable*
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0)) #4
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %call52 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %75, i32 0, i32 2, i8* %call51, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %76, i32 1, i32 0)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %label, align 8
  %77 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %77, %struct._GtkWidget* %78)
  %79 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 3), align 8
  %call53 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %79, double 0.000000e+00, double 0x47EFFFFFE0000000, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %spinbutton, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call54)
  %82 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach(%struct._GtkTable* %82, %struct._GtkWidget* %83, i32 2, i32 3, i32 2, i32 3, i32 6, i32 6, i32 0, i32 0)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %85 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %86 = bitcast %struct._GtkObject* %85 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %87 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %88 = bitcast %struct._GtkObject* %87 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @interactive_preview_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_label_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call58)
  %91 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkLabel*
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %91, %struct._GtkWidget* %92)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.103, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %93, i8* %call60, i8* null)
  %call61 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.104, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %image, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_table_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call62)
  %96 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkTable*
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_table_attach(%struct._GtkTable* %96, %struct._GtkWidget* %97, i32 3, i32 4, i32 2, i32 3, i32 6, i32 6, i32 0, i32 0)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  %call64 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.105, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %image, align 8
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_table_get_type() #6
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call65)
  %101 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkTable*
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0)) #4
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %call68 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %101, i32 0, i32 3, i8* %call67, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %102, i32 1, i32 0)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %label, align 8
  %103 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %103, %struct._GtkWidget* %104)
  %105 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 4), align 8
  %call69 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %105, double 0.000000e+00, double 0x47EFFFFFE0000000, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call69, %struct._GtkWidget** %spinbutton, align 8
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_table_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call70)
  %108 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkTable*
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach(%struct._GtkTable* %108, %struct._GtkWidget* %109, i32 2, i32 3, i32 3, i32 4, i32 6, i32 6, i32 0, i32 0)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %110)
  %111 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %112 = bitcast %struct._GtkObject* %111 to i8*
  %call72 = call i64 @g_signal_connect_data(i8* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %113 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %114 = bitcast %struct._GtkObject* %113 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @interactive_preview_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_label_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call74)
  %117 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkLabel*
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %117, %struct._GtkWidget* %118)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.107, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %119, i8* %call76, i8* null)
  %call77 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.108, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %image, align 8
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_table_get_type() #6
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call78)
  %122 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkTable*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_table_attach(%struct._GtkTable* %122, %struct._GtkWidget* %123, i32 3, i32 4, i32 3, i32 4, i32 6, i32 6, i32 0, i32 0)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.109, i32 0, i32 0)) #4
  %call81 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call80)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %button, align 8
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_table_get_type() #6
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call82)
  %127 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkTable*
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach(%struct._GtkTable* %127, %struct._GtkWidget* %128, i32 0, i32 3, i32 4, i32 5, i32 6, i32 6, i32 0, i32 0)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %129)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %131 = bitcast %struct._GtkWidget* %130 to i8*
  %call84 = call i64 @g_signal_connect_data(i8* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %133 = bitcast %struct._GtkWidget* %132 to i8*
  %call85 = call i64 @g_signal_connect_data(i8* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @interactive_preview_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %134)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  ret %struct._GtkWidget* %135
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_bump_page() #0 {
entry:
  %page = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %page, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call3 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.110, i32 0, i32 0)) #4
  %call7 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call6)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %toggle, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_toggle_button_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkToggleButton*
  %11 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %10, i32 %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_frame_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkFrame*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %14, %struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @interactive_preview_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.111, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %21, i8* %call14, i8* null)
  %call15 = call %struct._GtkWidget* @gtk_table_new(i32 6, i32 2, i32 0)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %table, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_table_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %24, i32 6)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_table_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %27, i32 6)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_container_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call20)
  %30 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkContainer*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %30, %struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %call22 = call %struct._GBinding* @g_object_bind_property(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), i8* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i32 2)
  %call23 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @bumpmap_constrain, i8* null)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %combo, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_int_combo_box_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call24)
  %39 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpIntComboBox*
  %40 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %call26 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %39, i32 %40, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1) to i8*))
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %42 = bitcast %struct._GtkWidget* %41 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @mapmenu2_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_table_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call28)
  %45 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTable*
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.114, i32 0, i32 0)) #4
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call31 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %45, i32 0, i32 0, i8* %call30, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %46, i32 1, i32 0)
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0)) #4
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0)) #4
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.117, i32 0, i32 0)) #4
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i32 0, i32 0)) #4
  %call36 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call32, i32 0, i8* %call33, i32 1, i8* %call34, i32 2, i8* %call35, i32 3, i8* null)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %combo, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_int_combo_box_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call37)
  %49 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpIntComboBox*
  %50 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 12), align 4
  %call39 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %49, i32 %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @mapmenu2_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 12) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call41)
  %55 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0)) #4
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call44 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %55, i32 0, i32 1, i8* %call43, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %56, i32 1, i32 0)
  %57 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 9), align 8
  %call45 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %57, double 0.000000e+00, double 0x47EFFFFFE0000000, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %spinbutton, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call46)
  %60 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i32 0, i32 0)) #4
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call49 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %60, i32 0, i32 2, i8* %call48, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %61, i32 1, i32 1)
  %62 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %63 = bitcast %struct._GtkObject* %62 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 9) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %64 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %65 = bitcast %struct._GtkObject* %64 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @interactive_preview_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.121, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %66, i8* %call52, i8* null)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  ret %struct._GtkWidget* %68
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_environment_page() #0 {
entry:
  %page = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %page, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call3 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.122, i32 0, i32 0)) #4
  %call7 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call6)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %toggle, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_toggle_button_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkToggleButton*
  %11 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 17), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %10, i32 %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_frame_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkFrame*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %14, %struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 17) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @interactive_preview_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.123, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %21, i8* %call14, i8* null)
  %call15 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 0)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %table, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_table_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %24, i32 6)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_table_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %27, i32 6)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_container_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call20)
  %30 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkContainer*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %30, %struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %call22 = call %struct._GBinding* @g_object_bind_property(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), i8* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i32 2)
  %call23 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @envmap_constrain, i8* null)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %combo, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_int_combo_box_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call24)
  %39 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpIntComboBox*
  %40 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %call26 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %39, i32 %40, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @envmap_combo_callback to void ()*), i8* null)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_table_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call27)
  %43 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTable*
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.124, i32 0, i32 0)) #4
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call30 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %43, i32 0, i32 0, i8* %call29, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %44, i32 1, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.125, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %45, i8* %call31, i8* null)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  ret %struct._GtkWidget* %47
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @toggle_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_toggle_button_update(%struct._GtkWidget* %0, i8* %1)
  call void @preview_compute()
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %2)
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @distance_update(%struct._GtkAdjustment* %adj, i8* %data) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  store double %call, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3, i32 2), align 8
  call void @preview_compute()
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %1)
  ret void
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @lightselect_callback(%struct._GimpIntComboBox* %combo, i8* %data) #0 {
entry:
  %combo.addr = alloca %struct._GimpIntComboBox*, align 8
  %data.addr = alloca i8*, align 8
  %valid = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct._GimpIntComboBox* %combo, %struct._GimpIntComboBox** %combo.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo.addr, align 8
  %call = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %0, i32* %k)
  store i32 %call, i32* %valid, align 4
  %1 = load i32, i32* %valid, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.53

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 23), align 4
  %2 = load i32, i32* %k, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 24), align 4
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @light_type_combo, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_int_combo_box_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpIntComboBox*
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %type, align 4
  %call3 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %5, i32 %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @colorbutton, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_color_button_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpColorButton*
  %11 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom6
  %color = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx7, i32 0, i32 3
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %10, %struct._GimpRGB* %color)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_x, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_spin_button_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkSpinButton*
  %15 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom10
  %position = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx11, i32 0, i32 1
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position, i32 0, i32 0
  %16 = load double, double* %x, align 8
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %14, double %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_y, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_spin_button_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkSpinButton*
  %20 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom14
  %position16 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx15, i32 0, i32 1
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position16, i32 0, i32 1
  %21 = load double, double* %y, align 8
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %19, double %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_z, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_spin_button_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkSpinButton*
  %25 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom19
  %position21 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx20, i32 0, i32 1
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position21, i32 0, i32 2
  %26 = load double, double* %z, align 8
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %24, double %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_x, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_spin_button_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call22)
  %29 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkSpinButton*
  %30 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %30 to i64
  %arrayidx25 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom24
  %direction = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx25, i32 0, i32 2
  %x26 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction, i32 0, i32 0
  %31 = load double, double* %x26, align 8
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %29, double %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_y, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_spin_button_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call27)
  %34 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkSpinButton*
  %35 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %35 to i64
  %arrayidx30 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom29
  %direction31 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx30, i32 0, i32 2
  %y32 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction31, i32 0, i32 1
  %36 = load double, double* %y32, align 8
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %34, double %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_z, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_spin_button_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call33)
  %39 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkSpinButton*
  %40 = load i32, i32* %k, align 4
  %idxprom35 = sext i32 %40 to i64
  %arrayidx36 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom35
  %direction37 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx36, i32 0, i32 2
  %z38 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction37, i32 0, i32 2
  %41 = load double, double* %z38, align 8
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %39, double %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_intensity, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_spin_button_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call39)
  %44 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkSpinButton*
  %45 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %45 to i64
  %arrayidx42 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom41
  %intensity = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx42, i32 0, i32 4
  %46 = load double, double* %intensity, align 8
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %44, double %46)
  store i32 1, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 23), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 25), align 4
  %tobool43 = icmp ne i32 %47, 0
  br i1 %tobool43, label %if.then.44, label %if.end.52

if.then.44:                                       ; preds = %if.then
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.44
  %48 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %48, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 24), align 4
  %cmp45 = icmp eq i32 %49, %50
  br i1 %cmp45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %for.body
  %51 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %51 to i64
  %arrayidx48 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom47
  %active = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx48, i32 0, i32 5
  store i32 1, i32* %active, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %52 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %52 to i64
  %arrayidx50 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom49
  %active51 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx50, i32 0, i32 5
  store i32 0, i32* %active51, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.46
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %53 = load i32, i32* %j, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.52

if.end.52:                                        ; preds = %for.end, %if.then
  call void @interactive_preview_callback(%struct._GtkWidget* null)
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare i8* @g_dpgettext(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @apply_settings(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %valid = alloca i32, align 4
  %type = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 24), align 4
  store i32 %0, i32* %k, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 23), align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.52

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @light_type_combo, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %4, i32* %type)
  store i32 %call2, i32* %valid, align 4
  %5 = load i32, i32* %valid, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load i32, i32* %type, align 4
  %7 = load i32, i32* %k, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom
  %type5 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx, i32 0, i32 0
  store i32 %6, i32* %type5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @colorbutton, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_color_button_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpColorButton*
  %11 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom8
  %color = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx9, i32 0, i32 3
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %10, %struct._GimpRGB* %color)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_x, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_spin_button_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkSpinButton*
  %call12 = call double @gtk_spin_button_get_value(%struct._GtkSpinButton* %14)
  %15 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom13
  %position = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx14, i32 0, i32 1
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position, i32 0, i32 0
  store double %call12, double* %x, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_y, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_spin_button_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkSpinButton*
  %call17 = call double @gtk_spin_button_get_value(%struct._GtkSpinButton* %18)
  %19 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom18
  %position20 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx19, i32 0, i32 1
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position20, i32 0, i32 1
  store double %call17, double* %y, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_z, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_spin_button_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkSpinButton*
  %call23 = call double @gtk_spin_button_get_value(%struct._GtkSpinButton* %22)
  %23 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom24
  %position26 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx25, i32 0, i32 1
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position26, i32 0, i32 2
  store double %call23, double* %z, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_x, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_spin_button_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call27)
  %26 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkSpinButton*
  %call29 = call double @gtk_spin_button_get_value(%struct._GtkSpinButton* %26)
  %27 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %27 to i64
  %arrayidx31 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom30
  %direction = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx31, i32 0, i32 2
  %x32 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction, i32 0, i32 0
  store double %call29, double* %x32, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_y, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_spin_button_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call33)
  %30 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkSpinButton*
  %call35 = call double @gtk_spin_button_get_value(%struct._GtkSpinButton* %30)
  %31 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom36
  %direction38 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx37, i32 0, i32 2
  %y39 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction38, i32 0, i32 1
  store double %call35, double* %y39, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_z, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_spin_button_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call40)
  %34 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkSpinButton*
  %call42 = call double @gtk_spin_button_get_value(%struct._GtkSpinButton* %34)
  %35 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %35 to i64
  %arrayidx44 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom43
  %direction45 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx44, i32 0, i32 2
  %z46 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction45, i32 0, i32 2
  store double %call42, double* %z46, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_intensity, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_spin_button_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call47)
  %38 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkSpinButton*
  %call49 = call double @gtk_spin_button_get_value(%struct._GtkSpinButton* %38)
  %39 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %39 to i64
  %arrayidx51 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom50
  %intensity = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx51, i32 0, i32 4
  store double %call49, double* %intensity, align 8
  call void @interactive_preview_callback(%struct._GtkWidget* null)
  br label %if.end.52

if.end.52:                                        ; preds = %if.end, %entry
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** @light_type_combo, align 8
  %cmp = icmp eq %struct._GtkWidget* %40, %41
  br i1 %cmp, label %if.then.53, label %if.end.59

if.then.53:                                       ; preds = %if.end.52
  %42 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %42 to i64
  %arrayidx55 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom54
  %type56 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx55, i32 0, i32 0
  %43 = load i32, i32* %type56, align 4
  switch i32 %43, label %sw.default [
    i32 3, label %sw.bb
    i32 0, label %sw.bb.57
    i32 1, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %if.then.53
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_x, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %44, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_y, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %45, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_z, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %46, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_x, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %47, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_y, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %48, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_z, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %49, i32 0)
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.then.53
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_x, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %50, i32 1)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_y, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %51, i32 1)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_z, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %52, i32 1)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_x, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %53, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_y, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %54, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_z, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %55, i32 0)
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.then.53
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_x, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %56, i32 0)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_y, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %57, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_z, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %58, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_x, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %59, i32 1)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_y, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %60, i32 1)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_z, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %61, i32 1)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.53
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.58, %sw.bb.57, %sw.bb
  br label %if.end.59

if.end.59:                                        ; preds = %sw.epilog, %if.end.52
  ret void
}

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

declare void @gimp_color_button_set_update(%struct._GimpColorButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #3

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @isolate_selected_light(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 25), align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %3, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 24), align 4
  %cmp3 = icmp eq i32 %4, %5
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.body
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom
  %active = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx, i32 0, i32 5
  store i32 1, i32* %active, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %7 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom5
  %active7 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx6, i32 0, i32 5
  store i32 0, i32* %active7, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.else.8:                                        ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 25), align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.15, %if.else.8
  %9 = load i32, i32* %k, align 4
  %cmp10 = icmp slt i32 %9, 6
  br i1 %cmp10, label %for.body.11, label %for.end.17

for.body.11:                                      ; preds = %for.cond.9
  %10 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom12
  %active14 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx13, i32 0, i32 5
  store i32 1, i32* %active14, align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.11
  %11 = load i32, i32* %k, align 4
  %inc16 = add nsw i32 %11, 1
  store i32 %inc16, i32* %k, align 4
  br label %for.cond.9

for.end.17:                                       ; preds = %for.cond.9
  br label %if.end.18

if.end.18:                                        ; preds = %for.end.17, %for.end
  call void @interactive_preview_callback(%struct._GtkWidget* null)
  ret void
}

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @save_lighting_preset(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %dir = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @save_lighting_preset.window, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i32 0, i32 0)) #4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %call3 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call, %struct._GtkWindow* %3, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** @save_lighting_preset.window, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @save_lighting_preset.window, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @save_lighting_preset.window, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %9, i32 -5)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @save_lighting_preset.window, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_file_chooser_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %12, i32 1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @save_lighting_preset.window, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* bitcast (%struct._GtkWidget** @save_lighting_preset.window to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @save_lighting_preset.window, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GtkFileChooser*, i32, i8*)* @save_preset_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i8*, i8** @lighting_effects_path, align 8
  %tobool12 = icmp ne i8* %17, null
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %18 = load i8*, i8** @lighting_effects_path, align 8
  %call14 = call %struct._GList* @gimp_path_parse(i8* %18, i32 256, i32 0, %struct._GList** null)
  store %struct._GList* %call14, %struct._GList** %list, align 8
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %call15 = call noalias i8* @gimp_path_get_user_writable_dir(%struct._GList* %19)
  store i8* %call15, i8** %dir, align 8
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  call void @gimp_path_free(%struct._GList* %20)
  %21 = load i8*, i8** %dir, align 8
  %tobool16 = icmp ne i8* %21, null
  br i1 %tobool16, label %if.end.20, label %if.then.17

if.then.17:                                       ; preds = %if.then.13
  %call18 = call i8* @gimp_directory() #6
  %call19 = call noalias i8* @g_strdup(i8* %call18)
  store i8* %call19, i8** %dir, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.then.13
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @save_lighting_preset.window, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_file_chooser_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call21)
  %24 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkFileChooser*
  %25 = load i8*, i8** %dir, align 8
  %call23 = call i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser* %24, i8* %25)
  %26 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %26)
  br label %if.end.28

if.else:                                          ; preds = %if.end
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** @save_lighting_preset.window, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_file_chooser_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call24)
  %29 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkFileChooser*
  %call26 = call i8* @g_get_tmp_dir()
  %call27 = call i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser* %29, i8* %call26)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.end.20
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** @save_lighting_preset.window, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_window_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call29)
  %32 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @load_lighting_preset(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %dir = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @load_lighting_preset.window, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.81, i32 0, i32 0)) #4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %call3 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call, %struct._GtkWindow* %3, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** @load_lighting_preset.window, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @load_lighting_preset.window, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @load_lighting_preset.window, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %9, i32 -5)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @load_lighting_preset.window, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* bitcast (%struct._GtkWidget** @load_lighting_preset.window to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @load_lighting_preset.window, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GtkFileChooser*, i32, i8*)* @load_preset_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i8*, i8** @lighting_effects_path, align 8
  %tobool10 = icmp ne i8* %14, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %15 = load i8*, i8** @lighting_effects_path, align 8
  %call12 = call %struct._GList* @gimp_path_parse(i8* %15, i32 256, i32 0, %struct._GList** null)
  store %struct._GList* %call12, %struct._GList** %list, align 8
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %call13 = call noalias i8* @gimp_path_get_user_writable_dir(%struct._GList* %16)
  store i8* %call13, i8** %dir, align 8
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  call void @gimp_path_free(%struct._GList* %17)
  %18 = load i8*, i8** %dir, align 8
  %tobool14 = icmp ne i8* %18, null
  br i1 %tobool14, label %if.end.18, label %if.then.15

if.then.15:                                       ; preds = %if.then.11
  %call16 = call i8* @gimp_directory() #6
  %call17 = call noalias i8* @g_strdup(i8* %call16)
  store i8* %call17, i8** %dir, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.then.11
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** @load_lighting_preset.window, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_file_chooser_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call19)
  %21 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkFileChooser*
  %22 = load i8*, i8** %dir, align 8
  %call21 = call i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser* %21, i8* %22)
  %23 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %23)
  br label %if.end.26

if.else:                                          ; preds = %if.end
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** @load_lighting_preset.window, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_file_chooser_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call22)
  %26 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkFileChooser*
  %call24 = call i8* @g_get_tmp_dir()
  %call25 = call i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser* %26, i8* %call24)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.end.18
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** @load_lighting_preset.window, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_window_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call27)
  %29 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %29)
  ret void
}

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare void @gtk_spin_button_set_value(%struct._GtkSpinButton*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #3

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare double @gtk_spin_button_get_value(%struct._GtkSpinButton*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

; Function Attrs: nounwind uwtable
define internal void @save_preset_response(%struct._GtkFileChooser* %chooser, i32 %response_id, i8* %data) #0 {
entry:
  %chooser.addr = alloca %struct._GtkFileChooser*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %num_lights = alloca i32, align 4
  %k = alloca i32, align 4
  %source = alloca %struct.LightSettings*, align 8
  %buffer1 = alloca [39 x i8], align 16
  %buffer2 = alloca [39 x i8], align 16
  %buffer3 = alloca [39 x i8], align 16
  %blen = alloca i32, align 4
  %filename = alloca i8*, align 8
  store %struct._GtkFileChooser* %chooser, %struct._GtkFileChooser** %chooser.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %num_lights, align 4
  store i32 39, i32* %blen, align 4
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.68

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %call = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %1)
  store i8* %call, i8** %filename, align 8
  %2 = load i8*, i8** %filename, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.71, i32 0, i32 0)) #4
  %4 = load i8*, i8** %filename, align 8
  %call4 = call i32* @__errno_location() #6
  %5 = load i32, i32* %call4, align 4
  %call5 = call i8* @g_strerror(i32 %5) #6
  call void (i8*, ...) @g_message(i8* %call3, i8* %4, i8* %call5)
  br label %if.end.67

if.else:                                          ; preds = %if.then
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load i32, i32* %k, align 4
  %cmp6 = icmp slt i32 %6, 6
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %k, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %type, align 4
  %cmp7 = icmp ne i32 %8, 3
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.body
  %9 = load i32, i32* %num_lights, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %num_lights, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %k, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %12 = load i32, i32* %num_lights, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i32 0, i32 0), i32 %12)
  store i32 0, i32* %k, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.63, %for.end
  %13 = load i32, i32* %k, align 4
  %cmp12 = icmp slt i32 %13, 6
  br i1 %cmp12, label %for.body.13, label %for.end.65

for.body.13:                                      ; preds = %for.cond.11
  %14 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom14
  %type16 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx15, i32 0, i32 0
  %15 = load i32, i32* %type16, align 4
  %cmp17 = icmp ne i32 %15, 3
  br i1 %cmp17, label %if.then.18, label %if.end.62

if.then.18:                                       ; preds = %for.body.13
  %16 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom19
  store %struct.LightSettings* %arrayidx20, %struct.LightSettings** %source, align 8
  %17 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %type21 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %17, i32 0, i32 0
  %18 = load i32, i32* %type21, align 4
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.23
    i32 2, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.then.18
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0))
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.then.18
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i32 0, i32 0))
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.then.18
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.18
  %22 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom27
  %type29 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx28, i32 0, i32 0
  %23 = load i32, i32* %type29, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.76, i32 0, i32 0), i32 %23)
  br label %for.inc.63

sw.epilog:                                        ; preds = %sw.bb.25, %sw.bb.23, %sw.bb
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %buffer1, i32 0, i32 0
  %25 = load i32, i32* %blen, align 4
  %26 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %position = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %26, i32 0, i32 1
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position, i32 0, i32 0
  %27 = load double, double* %x, align 8
  %call30 = call i8* @g_ascii_dtostr(i8* %arraydecay, i32 %25, double %27)
  %arraydecay31 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer2, i32 0, i32 0
  %28 = load i32, i32* %blen, align 4
  %29 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %position32 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %29, i32 0, i32 1
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position32, i32 0, i32 1
  %30 = load double, double* %y, align 8
  %call33 = call i8* @g_ascii_dtostr(i8* %arraydecay31, i32 %28, double %30)
  %arraydecay34 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer3, i32 0, i32 0
  %31 = load i32, i32* %blen, align 4
  %32 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %position35 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %32, i32 0, i32 1
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position35, i32 0, i32 2
  %33 = load double, double* %z, align 8
  %call36 = call i8* @g_ascii_dtostr(i8* %arraydecay34, i32 %31, double %33)
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i32 0, i32 0), i8* %call30, i8* %call33, i8* %call36)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay38 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer1, i32 0, i32 0
  %35 = load i32, i32* %blen, align 4
  %36 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %direction = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %36, i32 0, i32 2
  %x39 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction, i32 0, i32 0
  %37 = load double, double* %x39, align 8
  %call40 = call i8* @g_ascii_dtostr(i8* %arraydecay38, i32 %35, double %37)
  %arraydecay41 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer2, i32 0, i32 0
  %38 = load i32, i32* %blen, align 4
  %39 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %direction42 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %39, i32 0, i32 2
  %y43 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction42, i32 0, i32 1
  %40 = load double, double* %y43, align 8
  %call44 = call i8* @g_ascii_dtostr(i8* %arraydecay41, i32 %38, double %40)
  %arraydecay45 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer3, i32 0, i32 0
  %41 = load i32, i32* %blen, align 4
  %42 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %direction46 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %42, i32 0, i32 2
  %z47 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction46, i32 0, i32 2
  %43 = load double, double* %z47, align 8
  %call48 = call i8* @g_ascii_dtostr(i8* %arraydecay45, i32 %41, double %43)
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i32 0, i32 0), i8* %call40, i8* %call44, i8* %call48)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay50 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer1, i32 0, i32 0
  %45 = load i32, i32* %blen, align 4
  %46 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %color = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %46, i32 0, i32 3
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %47 = load double, double* %r, align 8
  %call51 = call i8* @g_ascii_dtostr(i8* %arraydecay50, i32 %45, double %47)
  %arraydecay52 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer2, i32 0, i32 0
  %48 = load i32, i32* %blen, align 4
  %49 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %color53 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %49, i32 0, i32 3
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color53, i32 0, i32 1
  %50 = load double, double* %g, align 8
  %call54 = call i8* @g_ascii_dtostr(i8* %arraydecay52, i32 %48, double %50)
  %arraydecay55 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer3, i32 0, i32 0
  %51 = load i32, i32* %blen, align 4
  %52 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %color56 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %52, i32 0, i32 3
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color56, i32 0, i32 2
  %53 = load double, double* %b, align 8
  %call57 = call i8* @g_ascii_dtostr(i8* %arraydecay55, i32 %51, double %53)
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i32 0, i32 0), i8* %call51, i8* %call54, i8* %call57)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay59 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer1, i32 0, i32 0
  %55 = load i32, i32* %blen, align 4
  %56 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %intensity = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %56, i32 0, i32 4
  %57 = load double, double* %intensity, align 8
  %call60 = call i8* @g_ascii_dtostr(i8* %arraydecay59, i32 %55, double %57)
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0), i8* %call60)
  br label %if.end.62

if.end.62:                                        ; preds = %sw.epilog, %for.body.13
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62, %sw.default
  %58 = load i32, i32* %k, align 4
  %inc64 = add nsw i32 %58, 1
  store i32 %inc64, i32* %k, align 4
  br label %for.cond.11

for.end.65:                                       ; preds = %for.cond.11
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call66 = call i32 @fclose(%struct._IO_FILE* %59)
  br label %if.end.67

if.end.67:                                        ; preds = %for.end.65, %if.then.2
  %60 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %60)
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %entry
  %61 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %62 = bitcast %struct._GtkFileChooser* %61 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_widget_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call69)
  %63 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %63)
  ret void
}

declare %struct._GList* @gimp_path_parse(i8*, i32, i32, %struct._GList**) #1

declare noalias i8* @gimp_path_get_user_writable_dir(%struct._GList*) #1

declare void @gimp_path_free(%struct._GList*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #3

declare i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser*, i8*) #1

declare i8* @g_get_tmp_dir() #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

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

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

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

declare i8* @g_ascii_dtostr(i8*, i32, double) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @load_preset_response(%struct._GtkFileChooser* %chooser, i32 %response_id, i8* %data) #0 {
entry:
  %chooser.addr = alloca %struct._GtkFileChooser*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %num_lights = alloca i32, align 4
  %k = alloca i32, align 4
  %source = alloca %struct.LightSettings*, align 8
  %buffer1 = alloca [39 x i8], align 16
  %buffer2 = alloca [39 x i8], align 16
  %buffer3 = alloca [39 x i8], align 16
  %type_label = alloca [21 x i8], align 16
  %endptr = alloca i8*, align 8
  %fmt_str = alloca [32 x i8], align 16
  %filename = alloca i8*, align 8
  store %struct._GtkFileChooser* %chooser, %struct._GtkFileChooser** %chooser.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.99

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %call = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %1)
  store i8* %call, i8** %filename, align 8
  %2 = load i8*, i8** %filename, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.83, i32 0, i32 0)) #4
  %4 = load i8*, i8** %filename, align 8
  %call4 = call i32* @__errno_location() #6
  %5 = load i32, i32* %call4, align 4
  %call5 = call i8* @g_strerror(i32 %5) #6
  call void (i8*, ...) @g_message(i8* %call3, i8* %4, i8* %call5)
  br label %if.end.96

if.else:                                          ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.84, i32 0, i32 0), i32* %num_lights)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load i32, i32* %k, align 4
  %cmp7 = icmp slt i32 %7, 6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %k, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx, i32 0, i32 0
  store i32 3, i32* %type, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.92, %for.end
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %num_lights, align 4
  %cmp9 = icmp slt i32 %10, %11
  br i1 %cmp9, label %for.body.10, label %for.end.94

for.body.10:                                      ; preds = %for.cond.8
  %12 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom11
  store %struct.LightSettings* %arrayidx12, %struct.LightSettings** %source, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay = getelementptr inbounds [21 x i8], [21 x i8]* %type_label, i32 0, i32 0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i32 0, i32 0), i8* %arraydecay)
  %arraydecay14 = getelementptr inbounds [21 x i8], [21 x i8]* %type_label, i32 0, i32 0
  %call15 = call i32 @strcmp(i8* %arraydecay14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0)) #7
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.else.19, label %if.then.17

if.then.17:                                       ; preds = %for.body.10
  %14 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %type18 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %14, i32 0, i32 0
  store i32 0, i32* %type18, align 4
  br label %if.end.35

if.else.19:                                       ; preds = %for.body.10
  %arraydecay20 = getelementptr inbounds [21 x i8], [21 x i8]* %type_label, i32 0, i32 0
  %call21 = call i32 @strcmp(i8* %arraydecay20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0)) #7
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else.25, label %if.then.23

if.then.23:                                       ; preds = %if.else.19
  %15 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %type24 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %15, i32 0, i32 0
  store i32 1, i32* %type24, align 4
  br label %if.end.34

if.else.25:                                       ; preds = %if.else.19
  %arraydecay26 = getelementptr inbounds [21 x i8], [21 x i8]* %type_label, i32 0, i32 0
  %call27 = call i32 @strcmp(i8* %arraydecay26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0)) #7
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.else.31, label %if.then.29

if.then.29:                                       ; preds = %if.else.25
  %16 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %type30 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %16, i32 0, i32 0
  store i32 2, i32* %type30, align 4
  br label %if.end

if.else.31:                                       ; preds = %if.else.25
  %arraydecay32 = getelementptr inbounds [21 x i8], [21 x i8]* %type_label, i32 0, i32 0
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.87, i32 0, i32 0), i8* %arraydecay32)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call33 = call i32 @fclose(%struct._IO_FILE* %17)
  br label %return

if.end:                                           ; preds = %if.then.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.then.23
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.17
  %arraydecay36 = getelementptr inbounds [32 x i8], [32 x i8]* %fmt_str, i32 0, i32 0
  %call37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay36, i64 32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.88, i32 0, i32 0), i64 38, i64 38, i64 38) #4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay38 = getelementptr inbounds [32 x i8], [32 x i8]* %fmt_str, i32 0, i32 0
  %arraydecay39 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer1, i32 0, i32 0
  %arraydecay40 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer2, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer3, i32 0, i32 0
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %18, i8* %arraydecay38, i8* %arraydecay39, i8* %arraydecay40, i8* %arraydecay41)
  %arraydecay43 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer1, i32 0, i32 0
  %call44 = call double @g_ascii_strtod(i8* %arraydecay43, i8** %endptr)
  %19 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %position = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %19, i32 0, i32 1
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position, i32 0, i32 0
  store double %call44, double* %x, align 8
  %arraydecay45 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer2, i32 0, i32 0
  %call46 = call double @g_ascii_strtod(i8* %arraydecay45, i8** %endptr)
  %20 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %position47 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %20, i32 0, i32 1
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position47, i32 0, i32 1
  store double %call46, double* %y, align 8
  %arraydecay48 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer3, i32 0, i32 0
  %call49 = call double @g_ascii_strtod(i8* %arraydecay48, i8** %endptr)
  %21 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %position50 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %21, i32 0, i32 1
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position50, i32 0, i32 2
  store double %call49, double* %z, align 8
  %arraydecay51 = getelementptr inbounds [32 x i8], [32 x i8]* %fmt_str, i32 0, i32 0
  %call52 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay51, i64 32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i32 0, i32 0), i64 38, i64 38, i64 38) #4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay53 = getelementptr inbounds [32 x i8], [32 x i8]* %fmt_str, i32 0, i32 0
  %arraydecay54 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer1, i32 0, i32 0
  %arraydecay55 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer2, i32 0, i32 0
  %arraydecay56 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer3, i32 0, i32 0
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %22, i8* %arraydecay53, i8* %arraydecay54, i8* %arraydecay55, i8* %arraydecay56)
  %arraydecay58 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer1, i32 0, i32 0
  %call59 = call double @g_ascii_strtod(i8* %arraydecay58, i8** %endptr)
  %23 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %direction = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %23, i32 0, i32 2
  %x60 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction, i32 0, i32 0
  store double %call59, double* %x60, align 8
  %arraydecay61 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer2, i32 0, i32 0
  %call62 = call double @g_ascii_strtod(i8* %arraydecay61, i8** %endptr)
  %24 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %direction63 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %24, i32 0, i32 2
  %y64 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction63, i32 0, i32 1
  store double %call62, double* %y64, align 8
  %arraydecay65 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer3, i32 0, i32 0
  %call66 = call double @g_ascii_strtod(i8* %arraydecay65, i8** %endptr)
  %25 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %direction67 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %25, i32 0, i32 2
  %z68 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction67, i32 0, i32 2
  store double %call66, double* %z68, align 8
  %arraydecay69 = getelementptr inbounds [32 x i8], [32 x i8]* %fmt_str, i32 0, i32 0
  %call70 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay69, i64 32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.90, i32 0, i32 0), i64 38, i64 38, i64 38) #4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay71 = getelementptr inbounds [32 x i8], [32 x i8]* %fmt_str, i32 0, i32 0
  %arraydecay72 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer1, i32 0, i32 0
  %arraydecay73 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer2, i32 0, i32 0
  %arraydecay74 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer3, i32 0, i32 0
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %26, i8* %arraydecay71, i8* %arraydecay72, i8* %arraydecay73, i8* %arraydecay74)
  %arraydecay76 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer1, i32 0, i32 0
  %call77 = call double @g_ascii_strtod(i8* %arraydecay76, i8** %endptr)
  %27 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %color = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %27, i32 0, i32 3
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  store double %call77, double* %r, align 8
  %arraydecay78 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer2, i32 0, i32 0
  %call79 = call double @g_ascii_strtod(i8* %arraydecay78, i8** %endptr)
  %28 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %color80 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %28, i32 0, i32 3
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color80, i32 0, i32 1
  store double %call79, double* %g, align 8
  %arraydecay81 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer3, i32 0, i32 0
  %call82 = call double @g_ascii_strtod(i8* %arraydecay81, i8** %endptr)
  %29 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %color83 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %29, i32 0, i32 3
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color83, i32 0, i32 2
  store double %call82, double* %b, align 8
  %30 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %color84 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %30, i32 0, i32 3
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color84, i32 0, i32 3
  store double 1.000000e+00, double* %a, align 8
  %arraydecay85 = getelementptr inbounds [32 x i8], [32 x i8]* %fmt_str, i32 0, i32 0
  %call86 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay85, i64 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i32 0, i32 0), i64 38) #4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay87 = getelementptr inbounds [32 x i8], [32 x i8]* %fmt_str, i32 0, i32 0
  %arraydecay88 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer1, i32 0, i32 0
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %31, i8* %arraydecay87, i8* %arraydecay88)
  %arraydecay90 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer1, i32 0, i32 0
  %call91 = call double @g_ascii_strtod(i8* %arraydecay90, i8** %endptr)
  %32 = load %struct.LightSettings*, %struct.LightSettings** %source, align 8
  %intensity = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %32, i32 0, i32 4
  store double %call91, double* %intensity, align 8
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.35
  %33 = load i32, i32* %k, align 4
  %inc93 = add nsw i32 %33, 1
  store i32 %inc93, i32* %k, align 4
  br label %for.cond.8

for.end.94:                                       ; preds = %for.cond.8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call95 = call i32 @fclose(%struct._IO_FILE* %34)
  br label %if.end.96

if.end.96:                                        ; preds = %for.end.94, %if.then.2
  %35 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** @lightselect_combo, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call97 = call i64 @gimp_int_combo_box_get_type() #6
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call97)
  %38 = bitcast %struct._GTypeInstance* %call98 to %struct._GimpIntComboBox*
  call void @lightselect_callback(%struct._GimpIntComboBox* %38, i8* null)
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.96, %entry
  %39 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %40 = bitcast %struct._GtkFileChooser* %39 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_widget_get_type() #6
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call100)
  %41 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %41)
  %42 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %43 = bitcast %struct._GtkFileChooser* %42 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_widget_get_type() #6
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call102)
  %44 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkWidget*
  call void @interactive_preview_callback(%struct._GtkWidget* %44)
  br label %return

return:                                           ; preds = %if.end.99, %if.else.31
  ret void
}

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare double @g_ascii_strtod(i8*, i8**) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @gtk_frame_set_label_widget(%struct._GtkFrame*, %struct._GtkWidget*) #1

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @bumpmap_constrain(i32 %image_id, i32 %drawable_id, i8* %data) #0 {
entry:
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %drawable_id.addr, align 4
  %call = call i32 @gimp_drawable_width(i32 %0)
  %1 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 0), align 4
  %call1 = call i32 @gimp_drawable_width(i32 %1)
  %cmp = icmp eq i32 %call, %call1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i32, i32* %drawable_id.addr, align 4
  %call2 = call i32 @gimp_drawable_height(i32 %2)
  %3 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 0), align 4
  %call3 = call i32 @gimp_drawable_height(i32 %3)
  %cmp4 = icmp eq i32 %call2, %call3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @mapmenu2_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %4)
  call void @preview_compute()
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %5)
  ret void
}

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @envmap_constrain(i32 %image_id, i32 %drawable_id, i8* %data) #0 {
entry:
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %drawable_id.addr, align 4
  %call = call i32 @gimp_drawable_is_gray(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %drawable_id.addr, align 4
  %call1 = call i32 @gimp_drawable_has_alpha(i32 %1)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal void @envmap_combo_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2))
  %3 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %call3 = call i32 @gimp_drawable_width(i32 %3)
  store i32 %call3, i32* @env_width, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %call4 = call i32 @gimp_drawable_height(i32 %4)
  store i32 %call4, i32* @env_height, align 4
  ret void
}

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

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
