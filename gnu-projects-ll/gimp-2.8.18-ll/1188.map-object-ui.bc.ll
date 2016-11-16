; ModuleID = './plug-ins/map-object/map-object-ui.bc'
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
%struct.MapObjectValues = type { %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct.LightSettings, %struct.MaterialSettings, %struct.MaterialSettings, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, [6 x i32], [2 x i32] }
%struct._GimpVector3 = type { double, double, double }
%struct.LightSettings = type { i32, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpRGB, double }
%struct._GimpRGB = type { double, double, double, double }
%struct.MaterialSettings = type { double, double, double, double, double, %struct._GimpRGB }
%struct._cairo_surface = type opaque
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._GdkCursor = type { i32, i32 }
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
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
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
%struct.Quat = type { double, double, double, double }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GBinding = type opaque
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }

@previewarea = global %struct._GtkWidget* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"map-object\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Map to Object\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"gimp-map-object\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"plug-in-map-object\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@appwin = internal global %struct._GtkWidget* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"_Preview!\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Recompute preview image\00", align 1
@mapvals = external global %struct.MapObjectValues, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"zoomed\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Show _wireframe\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Update preview _live\00", align 1
@preview_rgb_data = external global i8*, align 8
@preview_surface = external global %struct._cairo_surface*, align 8
@box_page = internal global %struct._GtkWidget* null, align 8
@cylinder_page = internal global %struct._GtkWidget* null, align 8
@light_hit = internal global i32 0, align 4
@left_button_pressed = internal global i32 0, align 4
@xadj = internal global %struct._GtkObject* null, align 8
@yadj = internal global %struct._GtkObject* null, align 8
@zadj = internal global %struct._GtkObject* null, align 8
@options_note_book = internal global %struct._GtkNotebook* null, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"O_ptions\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"_Light\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"_Material\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"O_rientation\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"_Box\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"C_ylinder\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"General Options\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"Map to:\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Plane\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Sphere\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"Box\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Cylinder\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Type of object to map to\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Transparent background\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"Make image transparent outside object\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Tile source image\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"Tile source image: useful for infinite planes\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"Create new image\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"Create a new image when applying filter\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"Create new layer\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"Create a new layer when applying filter\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"Enable _antialiasing\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"Enable/disable jagged edges removal (antialiasing)\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"_Depth:\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"Antialiasing quality. Higher is better, but slower\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"_Threshold:\00", align 1
@.str.45 = private unnamed_addr constant [56 x i8] c"Stop when pixel differences are smaller than this value\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Light Settings\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"Point light\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"Directional light\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"No light\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"Lightsource type:\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"Type of light source to apply\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"Select lightsource color\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"Lightsource color:\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"Set light source color\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"Position\00", align 1
@pointlightwid = internal global %struct._GtkWidget* null, align 8
@.str.57 = private unnamed_addr constant [3 x i8] c"X:\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"Light source X position in XYZ space\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"Y:\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"Light source Y position in XYZ space\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"Z:\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"Light source Z position in XYZ space\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"Direction Vector\00", align 1
@dirlightwid = internal global %struct._GtkWidget* null, align 8
@.str.64 = private unnamed_addr constant [38 x i8] c"Light source X direction in XYZ space\00", align 1
@.str.65 = private unnamed_addr constant [38 x i8] c"Light source Y direction in XYZ space\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"Light source Z direction in XYZ space\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"Intensity Levels\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"intensity-ambient-low\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"Ambient:\00", align 1
@.str.70 = private unnamed_addr constant [61 x i8] c"Amount of original color to show where no direct light falls\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"intensity-ambient-high\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"intensity-diffuse-low\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"Diffuse:\00", align 1
@.str.74 = private unnamed_addr constant [55 x i8] c"Intensity of original color when lit by a light source\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"intensity-diffuse-high\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"Reflectivity\00", align 1
@.str.77 = private unnamed_addr constant [25 x i8] c"reflectivity-diffuse-low\00", align 1
@.str.78 = private unnamed_addr constant [67 x i8] c"Higher values makes the object reflect more light (appear lighter)\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"reflectivity-diffuse-high\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"reflectivity-specular-low\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"Specular:\00", align 1
@.str.82 = private unnamed_addr constant [44 x i8] c"Controls how intense the highlights will be\00", align 1
@.str.83 = private unnamed_addr constant [27 x i8] c"reflectivity-specular-high\00", align 1
@.str.84 = private unnamed_addr constant [27 x i8] c"reflectivity-highlight-low\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"Highlight:\00", align 1
@.str.86 = private unnamed_addr constant [48 x i8] c"Higher values makes the highlights more focused\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"reflectivity-highlight-high\00", align 1
@.str.88 = private unnamed_addr constant [31 x i8] c"Object X position in XYZ space\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"spinbutton\00", align 1
@.str.90 = private unnamed_addr constant [31 x i8] c"Object Y position in XYZ space\00", align 1
@.str.91 = private unnamed_addr constant [31 x i8] c"Object Z position in XYZ space\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"Rotation\00", align 1
@.str.93 = private unnamed_addr constant [28 x i8] c"Rotation angle about X axis\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"Rotation angle about Y axis\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"Rotation angle about Z axis\00", align 1
@create_box_page.labels = internal global [6 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0)], align 16
@.str.96 = private unnamed_addr constant [7 x i8] c"Front:\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"Back:\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"Top:\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"Bottom:\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"Left:\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"Right:\00", align 1
@.str.102 = private unnamed_addr constant [24 x i8] c"Map Images to Box Faces\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"Scale X:\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"X scale (size)\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"Y scale (size)\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"Z scale (size)\00", align 1
@create_cylinder_page.labels = internal global [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i32 0, i32 0)], align 16
@.str.107 = private unnamed_addr constant [6 x i8] c"_Top:\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"_Bottom:\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"Images for the Cap Faces\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"R_adius:\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"Cylinder radius\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"L_ength:\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"Cylinder length\00", align 1

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
  %model = alloca %struct._GimpZoomModel*, align 8
  %run = alloca i32, align 4
  %cursor = alloca %struct._GdkCursor*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 0, i32* %run, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** @appwin, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_hbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 0, i32 0, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call14 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %vbox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call17 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %frame, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_frame_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %23, i32 1)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call20)
  %26 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 0, i32 0, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  call void @gtk_widget_realize(%struct._GtkWidget* %29)
  %call22 = call %struct._GtkWidget* @gtk_drawing_area_new()
  store %struct._GtkWidget* %call22, %struct._GtkWidget** @previewarea, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %30, i32 200, i32 200)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %31, i32 802)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_container_add(%struct._GtkContainer* %34, %struct._GtkWidget* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @preview_events to void ()*), i8* %40, void (i8*, %struct._GClosure*)* null, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %42 = bitcast %struct._GtkWidget* %41 to i8*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @preview_expose to void ()*), i8* %44, void (i8*, %struct._GClosure*)* null, i32 0)
  %call27 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %hbox, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call28)
  %47 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %47, %struct._GtkWidget* %48, i32 0, i32 0, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0)) #4
  %call31 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call30)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %button, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_bin_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call32)
  %52 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBin*
  %call34 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %52)
  %53 = bitcast %struct._GtkWidget* %call34 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_misc_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call35)
  %54 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkMisc*
  call void @gtk_misc_set_padding(%struct._GtkMisc* %54, i32 2, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_box_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call37)
  %57 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkBox*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %57, %struct._GtkWidget* %58, i32 0, i32 0, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @preview_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %62, i8* %call40, i8* null)
  %call41 = call %struct._GimpZoomModel* @gimp_zoom_model_new()
  store %struct._GimpZoomModel* %call41, %struct._GimpZoomModel** %model, align 8
  %63 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model, align 8
  call void @gimp_zoom_model_set_range(%struct._GimpZoomModel* %63, double 2.500000e-01, double 1.000000e+00)
  %64 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model, align 8
  %65 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 18), align 8
  call void @gimp_zoom_model_zoom(%struct._GimpZoomModel* %64, i32 6, double %65)
  %66 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model, align 8
  %call42 = call %struct._GtkWidget* @gimp_zoom_button_new(%struct._GimpZoomModel* %66, i32 0, i32 1)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %button, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_box_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call43)
  %69 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkBox*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %69, %struct._GtkWidget* %70, i32 0, i32 0, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %72 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model, align 8
  %call45 = call %struct._GtkWidget* @gimp_zoom_button_new(%struct._GimpZoomModel* %72, i32 1, i32 1)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %button, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call46)
  %75 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %75, %struct._GtkWidget* %76, i32 0, i32 0, i32 0)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %78 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model, align 8
  %79 = bitcast %struct._GimpZoomModel* %78 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GimpZoomModel*)* @zoomed_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0)) #4
  %call50 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call49)
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %toggle, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_toggle_button_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call51)
  %82 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkToggleButton*
  %83 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 16), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %82, i32 %83)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_box_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call53)
  %86 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkBox*
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %86, %struct._GtkWidget* %87, i32 0, i32 0, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %90 = bitcast %struct._GtkWidget* %89 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 16) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0)) #4
  %call57 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call56)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %toggle, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_toggle_button_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call58)
  %93 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkToggleButton*
  %94 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 15), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %93, i32 %94)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_box_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call60)
  %97 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkBox*
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %97, %struct._GtkWidget* %98, i32 0, i32 0, i32 0)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %99)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %101 = bitcast %struct._GtkWidget* %100 to i8*
  %call62 = call i64 @g_signal_connect_data(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 15) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @create_main_notebook(%struct._GtkWidget* %102)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %call63 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %104)
  %call64 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %call63, i32 60)
  store %struct._GdkCursor* %call64, %struct._GdkCursor** %cursor, align 8
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %call65 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %105)
  %106 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call65, %struct._GdkCursor* %106)
  %107 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %107)
  %108 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call66 = call i32 @image_setup(%struct._GimpDrawable* %108, i32 1)
  call void @compute_preview_image()
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_dialog_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call67)
  %111 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpDialog*
  %call69 = call i32 @gimp_dialog_run(%struct._GimpDialog* %111)
  %cmp = icmp eq i32 %call69, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %run, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** @appwin, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %112)
  %113 = load i8*, i8** @preview_rgb_data, align 8
  %tobool = icmp ne i8* %113, null
  br i1 %tobool, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end
  %114 = load i8*, i8** @preview_rgb_data, align 8
  call void @g_free(i8* %114)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end
  %115 = load %struct._cairo_surface*, %struct._cairo_surface** @preview_surface, align 8
  %tobool72 = icmp ne %struct._cairo_surface* %115, null
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.71
  %116 = load %struct._cairo_surface*, %struct._cairo_surface** @preview_surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %116)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.end.71
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** @box_page, align 8
  %tobool75 = icmp ne %struct._GtkWidget* %117, null
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.74
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** @box_page, align 8
  %119 = bitcast %struct._GtkWidget* %118 to i8*
  call void @g_object_unref(i8* %119)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.74
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** @cylinder_page, align 8
  %tobool78 = icmp ne %struct._GtkWidget* %120, null
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.77
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** @cylinder_page, align 8
  %122 = bitcast %struct._GtkWidget* %121 to i8*
  call void @g_object_unref(i8* %122)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.end.77
  %123 = load i32, i32* %run, align 4
  ret i32 %123
}

declare void @gimp_ui_init(i8*, i32) #1

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

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @preview_events(%struct._GtkWidget* %area, %union._GdkEvent* %event) #0 {
entry:
  %area.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %pos = alloca %struct.Quat, align 8
  %live = alloca i32, align 4
  store %struct._GtkWidget* %area, %struct._GtkWidget** %area.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb.1
    i32 4, label %sw.bb.2
    i32 7, label %sw.bb.16
    i32 3, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button = bitcast %union._GdkEvent* %2 to %struct._GdkEventButton*
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button, i32 0, i32 4
  %3 = load double, double* %x, align 8
  %conv = fptosi double %3 to i32
  %4 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button3 = bitcast %union._GdkEvent* %4 to %struct._GdkEventButton*
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button3, i32 0, i32 5
  %5 = load double, double* %y, align 8
  %conv4 = fptosi double %5 to i32
  %call = call i32 @check_light_hit(i32 %conv, i32 %conv4)
  store i32 %call, i32* @light_hit, align 4
  %6 = load i32, i32* @light_hit, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %7 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button6 = bitcast %union._GdkEvent* %7 to %struct._GdkEventButton*
  %x7 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button6, i32 0, i32 4
  %8 = load double, double* %x7, align 8
  %mul = fmul double 2.000000e+00, %8
  %div = fdiv double %mul, 2.000000e+02
  %sub = fsub double %div, 1.000000e+00
  %sub8 = fsub double -0.000000e+00, %sub
  %x9 = getelementptr inbounds %struct.Quat, %struct.Quat* %pos, i32 0, i32 0
  store double %sub8, double* %x9, align 8
  %9 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button10 = bitcast %union._GdkEvent* %9 to %struct._GdkEventButton*
  %y11 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button10, i32 0, i32 5
  %10 = load double, double* %y11, align 8
  %mul12 = fmul double 2.000000e+00, %10
  %div13 = fdiv double %mul12, 2.000000e+02
  %sub14 = fsub double %div13, 1.000000e+00
  %y15 = getelementptr inbounds %struct.Quat, %struct.Quat* %pos, i32 0, i32 1
  store double %sub14, double* %y15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  store i32 1, i32* @left_button_pressed, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %11 = load i32, i32* @light_hit, align 4
  %cmp17 = icmp eq i32 %11, 1
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %sw.bb.16
  call void @compute_preview_image()
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %12)
  br label %if.end.33

if.else:                                          ; preds = %sw.bb.16
  %13 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button20 = bitcast %union._GdkEvent* %13 to %struct._GdkEventButton*
  %x21 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button20, i32 0, i32 4
  %14 = load double, double* %x21, align 8
  %mul22 = fmul double 2.000000e+00, %14
  %div23 = fdiv double %mul22, 2.000000e+02
  %sub24 = fsub double %div23, 1.000000e+00
  %sub25 = fsub double -0.000000e+00, %sub24
  %x26 = getelementptr inbounds %struct.Quat, %struct.Quat* %pos, i32 0, i32 0
  store double %sub25, double* %x26, align 8
  %15 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button27 = bitcast %union._GdkEvent* %15 to %struct._GdkEventButton*
  %y28 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button27, i32 0, i32 5
  %16 = load double, double* %y28, align 8
  %mul29 = fmul double 2.000000e+00, %16
  %div30 = fdiv double %mul29, 2.000000e+02
  %sub31 = fsub double %div30, 1.000000e+00
  %y32 = getelementptr inbounds %struct.Quat, %struct.Quat* %pos, i32 0, i32 1
  store double %sub31, double* %y32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.19
  store i32 0, i32* @left_button_pressed, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %entry
  %17 = load i32, i32* @left_button_pressed, align 4
  %cmp35 = icmp eq i32 %17, 1
  br i1 %cmp35, label %if.then.37, label %if.end.61

if.then.37:                                       ; preds = %sw.bb.34
  %18 = load i32, i32* @light_hit, align 4
  %cmp38 = icmp eq i32 %18, 1
  br i1 %cmp38, label %if.then.40, label %if.else.46

if.then.40:                                       ; preds = %if.then.37
  %19 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 15), align 4
  store i32 %19, i32* %live, align 4
  store i32 0, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 15), align 4
  %20 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %motion = bitcast %union._GdkEvent* %20 to %struct._GdkEventMotion*
  %x41 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %motion, i32 0, i32 4
  %21 = load double, double* %x41, align 8
  %conv42 = fptosi double %21 to i32
  %22 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %motion43 = bitcast %union._GdkEvent* %22 to %struct._GdkEventMotion*
  %y44 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %motion43, i32 0, i32 5
  %23 = load double, double* %y44, align 8
  %conv45 = fptosi double %23 to i32
  call void @update_light(i32 %conv42, i32 %conv45)
  call void @update_light_pos_entries()
  %24 = load i32, i32* %live, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 15), align 4
  br label %if.end.60

if.else.46:                                       ; preds = %if.then.37
  %25 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %motion47 = bitcast %union._GdkEvent* %25 to %struct._GdkEventMotion*
  %x48 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %motion47, i32 0, i32 4
  %26 = load double, double* %x48, align 8
  %mul49 = fmul double 2.000000e+00, %26
  %div50 = fdiv double %mul49, 2.000000e+02
  %sub51 = fsub double %div50, 1.000000e+00
  %sub52 = fsub double -0.000000e+00, %sub51
  %x53 = getelementptr inbounds %struct.Quat, %struct.Quat* %pos, i32 0, i32 0
  store double %sub52, double* %x53, align 8
  %27 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %motion54 = bitcast %union._GdkEvent* %27 to %struct._GdkEventMotion*
  %y55 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %motion54, i32 0, i32 5
  %28 = load double, double* %y55, align 8
  %mul56 = fmul double 2.000000e+00, %28
  %div57 = fdiv double %mul56, 2.000000e+02
  %sub58 = fsub double %div57, 1.000000e+00
  %y59 = getelementptr inbounds %struct.Quat, %struct.Quat* %pos, i32 0, i32 1
  store double %sub58, double* %y59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.46, %if.then.40
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %sw.bb.34
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.61, %if.end.33, %if.end, %sw.bb.1, %sw.bb
  ret i32 0
}

declare i32 @preview_expose(%struct._GtkWidget*, %struct._GdkEventExpose*) #1

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

declare void @gtk_misc_set_padding(%struct._GtkMisc*, i32, i32) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @preview_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @compute_preview_image()
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %0)
  ret void
}

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GimpZoomModel* @gimp_zoom_model_new() #1

declare void @gimp_zoom_model_set_range(%struct._GimpZoomModel*, double, double) #1

declare void @gimp_zoom_model_zoom(%struct._GimpZoomModel*, i32, double) #1

declare %struct._GtkWidget* @gimp_zoom_button_new(%struct._GimpZoomModel*, i32, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @zoomed_callback(%struct._GimpZoomModel* %model) #0 {
entry:
  %model.addr = alloca %struct._GimpZoomModel*, align 8
  store %struct._GimpZoomModel* %model, %struct._GimpZoomModel** %model.addr, align 8
  %0 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %call = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %0)
  store double %call, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 18), align 8
  call void @compute_preview_image()
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %1)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

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
  call void @compute_preview_image()
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_main_notebook(%struct._GtkWidget* %container) #0 {
entry:
  %container.addr = alloca %struct._GtkWidget*, align 8
  %page = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %container, %struct._GtkWidget** %container.addr, align 8
  %call = call %struct._GtkWidget* @gtk_notebook_new()
  %0 = bitcast %struct._GtkWidget* %call to %struct._GTypeInstance*
  %call1 = call i64 @gtk_notebook_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %0, i64 %call1)
  %1 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkNotebook*
  store %struct._GtkNotebook* %1, %struct._GtkNotebook** @options_note_book, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %container.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  %5 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %6 = bitcast %struct._GtkNotebook* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #5
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
  %call19 = call %struct._GtkWidget* @create_orientation_page()
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %page, align 8
  %14 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)) #4
  %call21 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call20)
  %call22 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %14, %struct._GtkWidget* %15, %struct._GtkWidget* %call21)
  %16 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 9), align 4
  %cmp = icmp eq i32 %16, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call23 = call %struct._GtkWidget* @create_box_page()
  store %struct._GtkWidget* %call23, %struct._GtkWidget** @box_page, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** @box_page, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call24 = call i8* @g_object_ref(i8* %18)
  %19 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @box_page, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #4
  %call26 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call25)
  %call27 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %19, %struct._GtkWidget* %20, %struct._GtkWidget* %call26)
  br label %if.end.35

if.else:                                          ; preds = %entry
  %21 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 9), align 4
  %cmp28 = icmp eq i32 %21, 3
  br i1 %cmp28, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.else
  %call30 = call %struct._GtkWidget* @create_cylinder_page()
  store %struct._GtkWidget* %call30, %struct._GtkWidget** @cylinder_page, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @cylinder_page, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %call31 = call i8* @g_object_ref(i8* %23)
  %24 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** @cylinder_page, align 8
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0)) #4
  %call33 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call32)
  %call34 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %24, %struct._GtkWidget* %25, %struct._GtkWidget* %call33)
  br label %if.end

if.end:                                           ; preds = %if.then.29, %if.else
  br label %if.end.35

if.end.35:                                        ; preds = %if.end, %if.then
  %26 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %27 = bitcast %struct._GtkNotebook* %26 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_widget_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call36)
  %28 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  ret void
}

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

declare i32 @image_setup(%struct._GimpDrawable*, i32) #1

declare void @compute_preview_image() #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @g_free(i8*) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare void @g_object_unref(i8*) #1

declare i32 @check_light_hit(i32, i32) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare void @update_light(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @update_light_pos_entries() #0 {
entry:
  %0 = load %struct._GtkObject*, %struct._GtkObject** @xadj, align 8
  %1 = bitcast %struct._GtkObject* %0 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to i8*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 0) to i8*))
  %2 = load %struct._GtkObject*, %struct._GtkObject** @xadj, align 8
  %3 = bitcast %struct._GtkObject* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_adjustment_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkAdjustment*
  %5 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 0), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %4, double %5)
  %6 = load %struct._GtkObject*, %struct._GtkObject** @xadj, align 8
  %7 = bitcast %struct._GtkObject* %6 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to i8*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 0) to i8*))
  %8 = load %struct._GtkObject*, %struct._GtkObject** @yadj, align 8
  %9 = bitcast %struct._GtkObject* %8 to i8*
  %call4 = call i32 @g_signal_handlers_block_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to i8*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 1) to i8*))
  %10 = load %struct._GtkObject*, %struct._GtkObject** @yadj, align 8
  %11 = bitcast %struct._GtkObject* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_adjustment_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkAdjustment*
  %13 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 1), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %12, double %13)
  %14 = load %struct._GtkObject*, %struct._GtkObject** @yadj, align 8
  %15 = bitcast %struct._GtkObject* %14 to i8*
  %call7 = call i32 @g_signal_handlers_unblock_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to i8*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 1) to i8*))
  %16 = load %struct._GtkObject*, %struct._GtkObject** @zadj, align 8
  %17 = bitcast %struct._GtkObject* %16 to i8*
  %call8 = call i32 @g_signal_handlers_block_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to i8*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 2) to i8*))
  %18 = load %struct._GtkObject*, %struct._GtkObject** @zadj, align 8
  %19 = bitcast %struct._GtkObject* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_adjustment_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkAdjustment*
  %21 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 2), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %20, double %21)
  %22 = load %struct._GtkObject*, %struct._GtkObject** @zadj, align 8
  %23 = bitcast %struct._GtkObject* %22 to i8*
  %call11 = call i32 @g_signal_handlers_unblock_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to i8*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 2) to i8*))
  ret void
}

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @double_adjustment_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_double_adjustment_update(%struct._GtkAdjustment* %0, i8* %1)
  %2 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 15), align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @compute_preview_image()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %3)
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

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
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %page, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0)) #4
  %call4 = call %struct._GtkWidget* @gimp_frame_new(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #5
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
  %call8 = call i64 @gtk_container_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %10, %struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call10 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %hbox, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %15, %struct._GtkWidget* %16, i32 0, i32 0, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)) #4
  %call14 = call %struct._GtkWidget* @gtk_label_new(i8* %call13)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %label, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #4
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0)) #4
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0)) #4
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)) #4
  %call21 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call17, i32 0, i8* %call18, i32 1, i8* %call19, i32 2, i8* %call20, i32 3, i8* null)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %combo, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_int_combo_box_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call22)
  %25 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpIntComboBox*
  %26 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 9), align 4
  %call24 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %25, i32 %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call25)
  %29 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 1, i32 1, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @mapmenu_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 9) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %34, i8* %call28, i8* null)
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0)) #4
  %call30 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call29)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %toggle, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_toggle_button_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call31)
  %37 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkToggleButton*
  %38 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 13), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %37, i32 %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call33)
  %41 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %42, i32 0, i32 0, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 13) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %46, i8* %call36, i8* null)
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0)) #4
  %call38 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call37)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %toggle, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_toggle_button_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call39)
  %49 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkToggleButton*
  %50 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 14), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %49, i32 %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_box_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call41)
  %53 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkBox*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %53, %struct._GtkWidget* %54, i32 0, i32 0, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %57 = bitcast %struct._GtkWidget* %56 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 14) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %58, i8* %call44, i8* null)
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0)) #4
  %call46 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call45)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %toggle, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_toggle_button_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call47)
  %61 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkToggleButton*
  %62 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 11), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %61, i32 %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_box_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call49)
  %65 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkBox*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %65, %struct._GtkWidget* %66, i32 0, i32 0, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %69 = bitcast %struct._GtkWidget* %68 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 11) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %70, i8* %call52, i8* null)
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0)) #4
  %call54 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call53)
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %toggle, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_toggle_button_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call55)
  %73 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkToggleButton*
  %74 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 12), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %73, i32 %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call57)
  %77 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %77, %struct._GtkWidget* %78, i32 0, i32 0, i32 0)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %81 = bitcast %struct._GtkWidget* %80 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 12) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %82, i8* %call60, i8* null)
  %call61 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %frame, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_box_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call62)
  %85 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkBox*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %85, %struct._GtkWidget* %86, i32 0, i32 0, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0)) #4
  %call65 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call64)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %toggle, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_toggle_button_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call66)
  %90 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkToggleButton*
  %91 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 10), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %90, i32 %91)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_frame_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call68)
  %94 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkFrame*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %94, %struct._GtkWidget* %95)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %98 = bitcast %struct._GtkWidget* %97 to i8*
  %call70 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 10) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %99, i8* %call71, i8* null)
  %call72 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %table, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_table_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call73)
  %102 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %102, i32 6)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_table_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call75)
  %105 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %105, i32 6)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_container_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call77)
  %108 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkContainer*
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %108, %struct._GtkWidget* %109)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %110)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %112 = bitcast %struct._GtkWidget* %111 to i8*
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %114 = bitcast %struct._GtkWidget* %113 to i8*
  %call79 = call %struct._GBinding* @g_object_bind_property(i8* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 2)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_table_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call80)
  %117 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkTable*
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0)) #4
  %118 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 22), align 8
  %call83 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i32 0, i32 0)) #4
  %call84 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %117, i32 0, i32 0, i8* %call82, i32 0, i32 0, double %118, double 1.000000e+00, double 5.000000e+00, double 1.000000e-01, double 1.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call83, i8* null)
  store %struct._GtkObject* %call84, %struct._GtkObject** %adj, align 8
  %119 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %120 = bitcast %struct._GtkObject* %119 to i8*
  %call85 = call i64 @g_signal_connect_data(i8* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 22) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %121 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 23), align 8
  %call86 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %121, double 1.000000e-03, double 1.000000e+03, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 3)
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %spinbutton, align 8
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_table_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call87)
  %124 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkTable*
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0)) #4
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call90 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %124, i32 0, i32 1, i8* %call89, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %125, i32 1, i32 1)
  %126 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %127 = bitcast %struct._GtkObject* %126 to i8*
  %call91 = call i64 @g_signal_connect_data(i8* %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 23) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %128, i8* %call92, i8* null)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %129)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  ret %struct._GtkWidget* %130
}

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_light_page() #0 {
entry:
  %page = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %colorbutton = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %page, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0)) #4
  %call4 = call %struct._GtkWidget* @gimp_frame_new(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call7 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %table, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_table_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %10, i32 6)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_table_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %13, i32 6)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_container_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkContainer*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %16, %struct._GtkWidget* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0)) #4
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0)) #4
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0)) #4
  %call17 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call14, i32 0, i8* %call15, i32 1, i8* %call16, i32 2, i8* null)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %combo, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_int_combo_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpIntComboBox*
  %22 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  %call20 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %21, i32 %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call21)
  %25 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0)) #4
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call24 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %25, i32 0, i32 0, i8* %call23, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %26, i32 1, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @lightmenu_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %29, i8* %call26, i8* null)
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i32 0, i32 0)) #4
  %call28 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call27, i32 64, i32 16, %struct._GimpRGB* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 3), i32 0)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %colorbutton, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_table_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call29)
  %32 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkTable*
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0)) #4
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %colorbutton, align 8
  %call32 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %32, i32 0, i32 1, i8* %call31, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %33, i32 1, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %colorbutton, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %colorbutton, align 8
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %36, i8* %call34, i8* null)
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0)) #4
  %call36 = call %struct._GtkWidget* @gimp_frame_new(i8* %call35)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** @pointlightwid, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_box_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call37)
  %39 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkBox*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** @pointlightwid, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %40, i32 0, i32 0, i32 0)
  %41 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  %cmp = icmp eq i32 %41, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** @pointlightwid, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call39 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 0)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %table, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call40)
  %45 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %45, i32 6)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_table_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call42)
  %48 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %48, i32 6)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** @pointlightwid, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_container_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call44)
  %51 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkContainer*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %51, %struct._GtkWidget* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %54 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 0), align 8
  %call46 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** @xadj, double %54, double 0xC7EFFFFFE0000000, double 0x47EFFFFFE0000000, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %spinbutton, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call47)
  %57 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0)) #4
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call50 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %57, i32 0, i32 0, i8* %call49, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %58, i32 1, i32 1)
  %59 = load %struct._GtkObject*, %struct._GtkObject** @xadj, align 8
  %60 = bitcast %struct._GtkObject* %59 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 0) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.58, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %61, i8* %call52, i8* null)
  %62 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 1), align 8
  %call53 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** @yadj, double %62, double 0xC7EFFFFFE0000000, double 0x47EFFFFFE0000000, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %spinbutton, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call54)
  %65 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0)) #4
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call57 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %65, i32 0, i32 1, i8* %call56, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %66, i32 1, i32 1)
  %67 = load %struct._GtkObject*, %struct._GtkObject** @yadj, align 8
  %68 = bitcast %struct._GtkObject* %67 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.60, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %69, i8* %call59, i8* null)
  %70 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 2), align 8
  %call60 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** @zadj, double %70, double 0xC7EFFFFFE0000000, double 0x47EFFFFFE0000000, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %spinbutton, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_table_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call61)
  %73 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTable*
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)) #4
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call64 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %73, i32 0, i32 2, i8* %call63, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %74, i32 1, i32 1)
  %75 = load %struct._GtkObject*, %struct._GtkObject** @zadj, align 8
  %76 = bitcast %struct._GtkObject* %75 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call66 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %77, i8* %call66, i8* null)
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0)) #4
  %call68 = call %struct._GtkWidget* @gimp_frame_new(i8* %call67)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** @dirlightwid, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_box_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call69)
  %80 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkBox*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** @dirlightwid, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %80, %struct._GtkWidget* %81, i32 0, i32 0, i32 0)
  %82 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  %cmp71 = icmp eq i32 %82, 1
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** @dirlightwid, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %83)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end
  %call74 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 0)
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %table, align 8
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_table_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call75)
  %86 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %86, i32 6)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_table_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call77)
  %89 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %89, i32 6)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** @dirlightwid, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_container_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call79)
  %92 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkContainer*
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %92, %struct._GtkWidget* %93)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %94)
  %95 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 2, i32 0), align 8
  %call81 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %95, double -1.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %spinbutton, align 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_table_get_type() #5
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call82)
  %98 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkTable*
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0)) #4
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call85 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %98, i32 0, i32 0, i8* %call84, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %99, i32 1, i32 1)
  %100 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %101 = bitcast %struct._GtkObject* %100 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 2, i32 0) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.64, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %102, i8* %call87, i8* null)
  %103 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 2, i32 1), align 8
  %call88 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %103, double -1.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %spinbutton, align 8
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_table_get_type() #5
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call89)
  %106 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkTable*
  %call91 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0)) #4
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call92 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %106, i32 0, i32 1, i8* %call91, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %107, i32 1, i32 1)
  %108 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %109 = bitcast %struct._GtkObject* %108 to i8*
  %call93 = call i64 @g_signal_connect_data(i8* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 2, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.65, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %110, i8* %call94, i8* null)
  %111 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 2, i32 2), align 8
  %call95 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %111, double -1.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %spinbutton, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_table_get_type() #5
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call96)
  %114 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkTable*
  %call98 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)) #4
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call99 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %114, i32 0, i32 2, i8* %call98, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %115, i32 1, i32 1)
  %116 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %117 = bitcast %struct._GtkObject* %116 to i8*
  %call100 = call i64 @g_signal_connect_data(i8* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 2, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.66, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %118, i8* %call101, i8* null)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %119)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  ret %struct._GtkWidget* %120
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
  %adj = alloca %struct._GtkObject*, align 8
  %call = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call, %struct._GtkSizeGroup** %group, align 8
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %page, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i32 0, i32 0)) #4
  %call5 = call %struct._GtkWidget* @gimp_frame_new(i8* %call4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #5
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
  %call9 = call i64 @gtk_container_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call9)
  %10 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %10, %struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call11 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 4, i32 0)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %table, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_table_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %15, i32 6)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_table_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %18, i32 6)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %call18 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %image, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0)) #4
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %call22 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %26, i32 0, i32 0, i8* %call21, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %27, i32 1, i32 0)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %label, align 8
  %28 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %28, %struct._GtkWidget* %29)
  %30 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 0), align 8
  %call23 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %30, double 0.000000e+00, double 0x47EFFFFFE0000000, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %spinbutton, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach(%struct._GtkTable* %33, %struct._GtkWidget* %34, i32 2, i32 3, i32 0, i32 1, i32 6, i32 6, i32 0, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %36 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %37 = bitcast %struct._GtkObject* %36 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 0) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.70, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %38, i8* %call27, i8* null)
  %call28 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %image, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_table_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call29)
  %41 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkTable*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_table_attach(%struct._GtkTable* %41, %struct._GtkWidget* %42, i32 3, i32 4, i32 0, i32 1, i32 6, i32 6, i32 0, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %call31 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %image, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call32)
  %46 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0)) #4
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %call35 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %46, i32 0, i32 1, i8* %call34, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %47, i32 1, i32 0)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %label, align 8
  %48 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %48, %struct._GtkWidget* %49)
  %50 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 1), align 8
  %call36 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %50, double 0.000000e+00, double 0x47EFFFFFE0000000, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %spinbutton, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call37)
  %53 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach(%struct._GtkTable* %53, %struct._GtkWidget* %54, i32 2, i32 3, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %56 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %57 = bitcast %struct._GtkObject* %56 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.74, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %58, i8* %call40, i8* null)
  %call41 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %image, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_table_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call42)
  %61 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTable*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_table_attach(%struct._GtkTable* %61, %struct._GtkWidget* %62, i32 3, i32 4, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0)) #4
  %call45 = call %struct._GtkWidget* @gimp_frame_new(i8* %call44)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %frame, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call46)
  %66 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %66, %struct._GtkWidget* %67, i32 0, i32 0, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %68)
  %call48 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %hbox, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_container_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call49)
  %71 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkContainer*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %71, %struct._GtkWidget* %72)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  %call51 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 4, i32 0)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %table, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_table_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call52)
  %76 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %76, i32 6)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call54)
  %79 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %79, i32 6)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_box_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call56)
  %82 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkBox*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %82, %struct._GtkWidget* %83, i32 0, i32 0, i32 0)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %call58 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.77, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %image, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_table_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call59)
  %87 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkTable*
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0)) #4
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %call62 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %87, i32 0, i32 0, i8* %call61, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %88, i32 1, i32 0)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %label, align 8
  %89 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %89, %struct._GtkWidget* %90)
  %91 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 2), align 8
  %call63 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %91, double 0.000000e+00, double 0x47EFFFFFE0000000, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %spinbutton, align 8
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_table_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call64)
  %94 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTable*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach(%struct._GtkTable* %94, %struct._GtkWidget* %95, i32 2, i32 3, i32 0, i32 1, i32 6, i32 6, i32 0, i32 0)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %97 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %98 = bitcast %struct._GtkObject* %97 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.78, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %99, i8* %call67, i8* null)
  %call68 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.79, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %image, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call69)
  %102 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_table_attach(%struct._GtkTable* %102, %struct._GtkWidget* %103, i32 3, i32 4, i32 0, i32 1, i32 6, i32 6, i32 0, i32 0)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %call71 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %image, align 8
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_table_get_type() #5
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call72)
  %107 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkTable*
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0)) #4
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %call75 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %107, i32 0, i32 1, i8* %call74, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %108, i32 1, i32 0)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %label, align 8
  %109 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %109, %struct._GtkWidget* %110)
  %111 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 3), align 8
  %call76 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %111, double 0.000000e+00, double 0x47EFFFFFE0000000, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %spinbutton, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_table_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call77)
  %114 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkTable*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach(%struct._GtkTable* %114, %struct._GtkWidget* %115, i32 2, i32 3, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %116)
  %117 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %118 = bitcast %struct._GtkObject* %117 to i8*
  %call79 = call i64 @g_signal_connect_data(i8* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.82, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %119, i8* %call80, i8* null)
  %call81 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.83, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %image, align 8
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_table_get_type() #5
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call82)
  %122 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkTable*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_table_attach(%struct._GtkTable* %122, %struct._GtkWidget* %123, i32 3, i32 4, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %call84 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.84, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %image, align 8
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_table_get_type() #5
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call85)
  %127 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkTable*
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0)) #4
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %call88 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %127, i32 0, i32 2, i8* %call87, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %128, i32 1, i32 0)
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %label, align 8
  %129 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %129, %struct._GtkWidget* %130)
  %131 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 4), align 8
  %call89 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %131, double 0.000000e+00, double 0x47EFFFFFE0000000, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2)
  store %struct._GtkWidget* %call89, %struct._GtkWidget** %spinbutton, align 8
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_table_get_type() #5
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call90)
  %134 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkTable*
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach(%struct._GtkTable* %134, %struct._GtkWidget* %135, i32 2, i32 3, i32 2, i32 3, i32 6, i32 6, i32 0, i32 0)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %136)
  %137 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %138 = bitcast %struct._GtkObject* %137 to i8*
  %call92 = call i64 @g_signal_connect_data(i8* %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call93 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.86, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %139, i8* %call93, i8* null)
  %call94 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.87, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call94, %struct._GtkWidget** %image, align 8
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_table_get_type() #5
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call95)
  %142 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkTable*
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_table_attach(%struct._GtkTable* %142, %struct._GtkWidget* %143, i32 3, i32 4, i32 2, i32 3, i32 6, i32 6, i32 0, i32 0)
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %144)
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %145)
  %146 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %147 = bitcast %struct._GtkSizeGroup* %146 to i8*
  call void @g_object_unref(i8* %147)
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  ret %struct._GtkWidget* %148
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_orientation_page() #0 {
entry:
  %group = alloca %struct._GtkSizeGroup*, align 8
  %page = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %call = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call, %struct._GtkSizeGroup** %group, align 8
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %page, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0)) #4
  %call5 = call %struct._GtkWidget* @gimp_frame_new(i8* %call4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call8 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %table, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call9)
  %10 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %10, i32 6)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call11)
  %13 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %13, i32 6)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %16, %struct._GtkWidget* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_table_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTable*
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0)) #4
  %22 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 0), align 8
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.88, i32 0, i32 0)) #4
  %call19 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %21, i32 0, i32 0, i8* %call17, i32 0, i32 0, double %22, double -1.000000e+00, double 2.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 5, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call18, i8* null)
  store %struct._GtkObject* %call19, %struct._GtkObject** %adj, align 8
  %23 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %24 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %25 = bitcast %struct._GtkObject* %24 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %call21 = call i8* @g_object_get_data(%struct._GObject* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %27 = bitcast i8* %call21 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %23, %struct._GtkWidget* %27)
  %28 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %29 = bitcast %struct._GtkObject* %28 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %call23 = call i8* @g_object_get_data(%struct._GObject* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %31 = bitcast i8* %call23 to %struct._GtkSpinButton*
  %32 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %33 = bitcast %struct._GtkObject* %32 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  %call25 = call i8* @g_object_get_data(%struct._GObject* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %35 = bitcast i8* %call25 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_spin_button_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call26)
  %36 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkSpinButton*
  %call28 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %36)
  call void @gtk_spin_button_configure(%struct._GtkSpinButton* %31, %struct._GtkAdjustment* %call28, double 1.000000e-02, i32 5)
  %37 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %38 = bitcast %struct._GtkObject* %37 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 0) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_table_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call30)
  %41 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTable*
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0)) #4
  %42 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 1), align 8
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.90, i32 0, i32 0)) #4
  %call34 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %41, i32 0, i32 1, i8* %call32, i32 0, i32 0, double %42, double -1.000000e+00, double 2.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 5, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call33, i8* null)
  store %struct._GtkObject* %call34, %struct._GtkObject** %adj, align 8
  %43 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %44 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %45 = bitcast %struct._GtkObject* %44 to %struct._GTypeInstance*
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call35 to %struct._GObject*
  %call36 = call i8* @g_object_get_data(%struct._GObject* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %47 = bitcast i8* %call36 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %43, %struct._GtkWidget* %47)
  %48 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %49 = bitcast %struct._GtkObject* %48 to %struct._GTypeInstance*
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 80)
  %50 = bitcast %struct._GTypeInstance* %call37 to %struct._GObject*
  %call38 = call i8* @g_object_get_data(%struct._GObject* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %51 = bitcast i8* %call38 to %struct._GtkSpinButton*
  %52 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %53 = bitcast %struct._GtkObject* %52 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 80)
  %54 = bitcast %struct._GTypeInstance* %call39 to %struct._GObject*
  %call40 = call i8* @g_object_get_data(%struct._GObject* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %55 = bitcast i8* %call40 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_spin_button_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call41)
  %56 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkSpinButton*
  %call43 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %56)
  call void @gtk_spin_button_configure(%struct._GtkSpinButton* %51, %struct._GtkAdjustment* %call43, double 1.000000e-02, i32 5)
  %57 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %58 = bitcast %struct._GtkObject* %57 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_table_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call45)
  %61 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTable*
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)) #4
  %62 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 2), align 8
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.91, i32 0, i32 0)) #4
  %call49 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %61, i32 0, i32 2, i8* %call47, i32 0, i32 0, double %62, double -1.000000e+00, double 2.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 5, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call48, i8* null)
  store %struct._GtkObject* %call49, %struct._GtkObject** %adj, align 8
  %63 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %64 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %65 = bitcast %struct._GtkObject* %64 to %struct._GTypeInstance*
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 80)
  %66 = bitcast %struct._GTypeInstance* %call50 to %struct._GObject*
  %call51 = call i8* @g_object_get_data(%struct._GObject* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %67 = bitcast i8* %call51 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %63, %struct._GtkWidget* %67)
  %68 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %69 = bitcast %struct._GtkObject* %68 to %struct._GTypeInstance*
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 80)
  %70 = bitcast %struct._GTypeInstance* %call52 to %struct._GObject*
  %call53 = call i8* @g_object_get_data(%struct._GObject* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %71 = bitcast i8* %call53 to %struct._GtkSpinButton*
  %72 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %73 = bitcast %struct._GtkObject* %72 to %struct._GTypeInstance*
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 80)
  %74 = bitcast %struct._GTypeInstance* %call54 to %struct._GObject*
  %call55 = call i8* @g_object_get_data(%struct._GObject* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %75 = bitcast i8* %call55 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_spin_button_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call56)
  %76 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkSpinButton*
  %call58 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %76)
  call void @gtk_spin_button_configure(%struct._GtkSpinButton* %71, %struct._GtkAdjustment* %call58, double 1.000000e-02, i32 5)
  %77 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %78 = bitcast %struct._GtkObject* %77 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0)) #4
  %call61 = call %struct._GtkWidget* @gimp_frame_new(i8* %call60)
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %frame, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_box_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call62)
  %81 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkBox*
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %81, %struct._GtkWidget* %82, i32 0, i32 0, i32 0)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %83)
  %call64 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %table, align 8
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_table_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call65)
  %86 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %86, i32 6)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_table_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call67)
  %89 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %89, i32 6)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_container_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call69)
  %92 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkContainer*
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %92, %struct._GtkWidget* %93)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %94)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_table_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call71)
  %97 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTable*
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0)) #4
  %98 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.93, i32 0, i32 0)) #4
  %call75 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %97, i32 0, i32 0, i8* %call73, i32 0, i32 0, double %98, double -1.800000e+02, double 1.800000e+02, double 1.000000e+00, double 1.500000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call74, i8* null)
  store %struct._GtkObject* %call75, %struct._GtkObject** %adj, align 8
  %99 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %100 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %101 = bitcast %struct._GtkObject* %100 to %struct._GTypeInstance*
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 80)
  %102 = bitcast %struct._GTypeInstance* %call76 to %struct._GObject*
  %call77 = call i8* @g_object_get_data(%struct._GObject* %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %103 = bitcast i8* %call77 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %99, %struct._GtkWidget* %103)
  %104 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %105 = bitcast %struct._GtkObject* %104 to i8*
  %call78 = call i64 @g_signal_connect_data(i8* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_table_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call79)
  %108 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkTable*
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0)) #4
  %109 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.94, i32 0, i32 0)) #4
  %call83 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %108, i32 0, i32 1, i8* %call81, i32 0, i32 0, double %109, double -1.800000e+02, double 1.800000e+02, double 1.000000e+00, double 1.500000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call82, i8* null)
  store %struct._GtkObject* %call83, %struct._GtkObject** %adj, align 8
  %110 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %111 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %112 = bitcast %struct._GtkObject* %111 to %struct._GTypeInstance*
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 80)
  %113 = bitcast %struct._GTypeInstance* %call84 to %struct._GObject*
  %call85 = call i8* @g_object_get_data(%struct._GObject* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %114 = bitcast i8* %call85 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %110, %struct._GtkWidget* %114)
  %115 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %116 = bitcast %struct._GtkObject* %115 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_table_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call87)
  %119 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkTable*
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)) #4
  %120 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.95, i32 0, i32 0)) #4
  %call91 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %119, i32 0, i32 2, i8* %call89, i32 0, i32 0, double %120, double -1.800000e+02, double 1.800000e+02, double 1.000000e+00, double 1.500000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call90, i8* null)
  store %struct._GtkObject* %call91, %struct._GtkObject** %adj, align 8
  %121 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %122 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %123 = bitcast %struct._GtkObject* %122 to %struct._GTypeInstance*
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 80)
  %124 = bitcast %struct._GTypeInstance* %call92 to %struct._GObject*
  %call93 = call i8* @g_object_get_data(%struct._GObject* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %125 = bitcast i8* %call93 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %121, %struct._GtkWidget* %125)
  %126 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %127 = bitcast %struct._GtkObject* %126 to i8*
  %call94 = call i64 @g_signal_connect_data(i8* %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %128)
  %129 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %130 = bitcast %struct._GtkSizeGroup* %129 to i8*
  call void @g_object_unref(i8* %130)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  ret %struct._GtkWidget* %131
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_box_page() #0 {
entry:
  %page = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %i = alloca i32, align 4
  %combo = alloca %struct._GtkWidget*, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %page, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0)) #4
  %call4 = call %struct._GtkWidget* @gimp_frame_new(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %vbox, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %10, %struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call10 = call %struct._GtkWidget* @gtk_table_new(i32 6, i32 2, i32 0)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %table, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %15, i32 6)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_table_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %18, i32 6)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 5)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %24 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %24, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call17 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @box_constrain, i8* null)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %combo, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_int_combo_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpIntComboBox*
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 27), i32 0, i64 %idxprom
  %29 = load i32, i32* %arrayidx, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %30 to i64
  %arrayidx21 = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 27), i32 0, i64 %idxprom20
  %31 = bitcast i32* %arrayidx21 to i8*
  %call22 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %27, i32 %29, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %36 to i64
  %arrayidx26 = getelementptr inbounds [6 x i8*], [6 x i8*]* @create_box_page.labels, i32 0, i64 %idxprom25
  %37 = load i8*, i8** %arrayidx26, align 8
  %call27 = call i8* @gettext(i8* %37) #4
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call28 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %34, i32 0, i32 %35, i8* %call27, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %38, i32 1, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call29 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %table, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_table_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call30)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %42, i32 6)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call32)
  %45 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %45, i32 6)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call34)
  %48 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 0, i32 0, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call36)
  %53 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0)) #4
  %54 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 5, i32 0), align 8
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.104, i32 0, i32 0)) #4
  %call40 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %53, i32 0, i32 0, i8* %call38, i32 0, i32 0, double %54, double 0.000000e+00, double 5.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call39, i8* null)
  store %struct._GtkObject* %call40, %struct._GtkObject** %adj, align 8
  %55 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %56 = bitcast %struct._GtkObject* %55 to %struct._GTypeInstance*
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 80)
  %57 = bitcast %struct._GTypeInstance* %call41 to %struct._GObject*
  %call42 = call i8* @g_object_get_data(%struct._GObject* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %58 = bitcast i8* %call42 to %struct._GtkSpinButton*
  %59 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %60 = bitcast %struct._GtkObject* %59 to %struct._GTypeInstance*
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 80)
  %61 = bitcast %struct._GTypeInstance* %call43 to %struct._GObject*
  %call44 = call i8* @g_object_get_data(%struct._GObject* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %62 = bitcast i8* %call44 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_spin_button_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call45)
  %63 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkSpinButton*
  %call47 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %63)
  call void @gtk_spin_button_configure(%struct._GtkSpinButton* %58, %struct._GtkAdjustment* %call47, double 1.000000e-01, i32 2)
  %64 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %65 = bitcast %struct._GtkObject* %64 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 5, i32 0) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_table_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call49)
  %68 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkTable*
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0)) #4
  %69 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 5, i32 1), align 8
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.105, i32 0, i32 0)) #4
  %call53 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %68, i32 0, i32 1, i8* %call51, i32 0, i32 0, double %69, double 0.000000e+00, double 5.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call52, i8* null)
  store %struct._GtkObject* %call53, %struct._GtkObject** %adj, align 8
  %70 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %71 = bitcast %struct._GtkObject* %70 to %struct._GTypeInstance*
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 80)
  %72 = bitcast %struct._GTypeInstance* %call54 to %struct._GObject*
  %call55 = call i8* @g_object_get_data(%struct._GObject* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %73 = bitcast i8* %call55 to %struct._GtkSpinButton*
  %74 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %75 = bitcast %struct._GtkObject* %74 to %struct._GTypeInstance*
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 80)
  %76 = bitcast %struct._GTypeInstance* %call56 to %struct._GObject*
  %call57 = call i8* @g_object_get_data(%struct._GObject* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %77 = bitcast i8* %call57 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_spin_button_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call58)
  %78 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkSpinButton*
  %call60 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %78)
  call void @gtk_spin_button_configure(%struct._GtkSpinButton* %73, %struct._GtkAdjustment* %call60, double 1.000000e-01, i32 2)
  %79 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %80 = bitcast %struct._GtkObject* %79 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 5, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_table_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call62)
  %83 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkTable*
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)) #4
  %84 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 5, i32 2), align 8
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.106, i32 0, i32 0)) #4
  %call66 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %83, i32 0, i32 2, i8* %call64, i32 0, i32 0, double %84, double 0.000000e+00, double 5.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call65, i8* null)
  store %struct._GtkObject* %call66, %struct._GtkObject** %adj, align 8
  %85 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %86 = bitcast %struct._GtkObject* %85 to %struct._GTypeInstance*
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 80)
  %87 = bitcast %struct._GTypeInstance* %call67 to %struct._GObject*
  %call68 = call i8* @g_object_get_data(%struct._GObject* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %88 = bitcast i8* %call68 to %struct._GtkSpinButton*
  %89 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %90 = bitcast %struct._GtkObject* %89 to %struct._GTypeInstance*
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 80)
  %91 = bitcast %struct._GTypeInstance* %call69 to %struct._GObject*
  %call70 = call i8* @g_object_get_data(%struct._GObject* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %92 = bitcast i8* %call70 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_spin_button_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call71)
  %93 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkSpinButton*
  %call73 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %93)
  call void @gtk_spin_button_configure(%struct._GtkSpinButton* %88, %struct._GtkAdjustment* %call73, double 1.000000e-01, i32 2)
  %94 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %95 = bitcast %struct._GtkObject* %94 to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 5, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  ret %struct._GtkWidget* %97
}

declare i8* @g_object_ref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_cylinder_page() #0 {
entry:
  %group = alloca %struct._GtkSizeGroup*, align 8
  %page = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %i = alloca i32, align 4
  %combo = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %call = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call, %struct._GtkSizeGroup** %group, align 8
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %page, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.109, i32 0, i32 0)) #4
  %call5 = call %struct._GtkWidget* @gimp_frame_new(i8* %call4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call8 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %table, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call9)
  %10 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %10, i32 6)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call11)
  %13 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %13, i32 6)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %16, %struct._GtkWidget* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %19, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call15 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @cylinder_constrain, i8* null)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %combo, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_int_combo_box_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call16)
  %22 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpIntComboBox*
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 28), i32 0, i64 %idxprom
  %24 = load i32, i32* %arrayidx, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 28), i32 0, i64 %idxprom18
  %26 = bitcast i32* %arrayidx19 to i8*
  %call20 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %22, i32 %24, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call21)
  %29 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %31 to i64
  %arrayidx24 = getelementptr inbounds [2 x i8*], [2 x i8*]* @create_cylinder_page.labels, i32 0, i64 %idxprom23
  %32 = load i8*, i8** %arrayidx24, align 8
  %call25 = call i8* @gettext(i8* %32) #4
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call26 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %29, i32 0, i32 %30, i8* %call25, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %33, i32 1, i32 0)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %label, align 8
  %34 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %34, %struct._GtkWidget* %35)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0)) #4
  %call28 = call %struct._GtkWidget* @gimp_frame_new(i8* %call27)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %frame, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call29)
  %39 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %40, i32 0, i32 0, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %call31 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %table, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call32)
  %44 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %44, i32 6)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_table_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call34)
  %47 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %47, i32 6)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_container_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call36)
  %50 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkContainer*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %50, %struct._GtkWidget* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_table_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call38)
  %55 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkTable*
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0)) #4
  %56 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 25), align 8
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.112, i32 0, i32 0)) #4
  %call42 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %55, i32 0, i32 0, i8* %call40, i32 0, i32 0, double %56, double 0.000000e+00, double 2.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call41, i8* null)
  store %struct._GtkObject* %call42, %struct._GtkObject** %adj, align 8
  %57 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %58 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %59 = bitcast %struct._GtkObject* %58 to %struct._GTypeInstance*
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 80)
  %60 = bitcast %struct._GTypeInstance* %call43 to %struct._GObject*
  %call44 = call i8* @g_object_get_data(%struct._GObject* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0))
  %61 = bitcast i8* %call44 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %57, %struct._GtkWidget* %61)
  %62 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %63 = bitcast %struct._GtkObject* %62 to %struct._GTypeInstance*
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 80)
  %64 = bitcast %struct._GTypeInstance* %call45 to %struct._GObject*
  %call46 = call i8* @g_object_get_data(%struct._GObject* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %65 = bitcast i8* %call46 to %struct._GtkSpinButton*
  %66 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %67 = bitcast %struct._GtkObject* %66 to %struct._GTypeInstance*
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 80)
  %68 = bitcast %struct._GTypeInstance* %call47 to %struct._GObject*
  %call48 = call i8* @g_object_get_data(%struct._GObject* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %69 = bitcast i8* %call48 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_spin_button_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call49)
  %70 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkSpinButton*
  %call51 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %70)
  call void @gtk_spin_button_configure(%struct._GtkSpinButton* %65, %struct._GtkAdjustment* %call51, double 1.000000e-01, i32 2)
  %71 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %72 = bitcast %struct._GtkObject* %71 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 25) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_table_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call53)
  %75 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkTable*
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0)) #4
  %76 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 26), align 8
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.115, i32 0, i32 0)) #4
  %call57 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %75, i32 0, i32 1, i8* %call55, i32 0, i32 0, double %76, double 0.000000e+00, double 2.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call56, i8* null)
  store %struct._GtkObject* %call57, %struct._GtkObject** %adj, align 8
  %77 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %78 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %79 = bitcast %struct._GtkObject* %78 to %struct._GTypeInstance*
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 80)
  %80 = bitcast %struct._GTypeInstance* %call58 to %struct._GObject*
  %call59 = call i8* @g_object_get_data(%struct._GObject* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0))
  %81 = bitcast i8* %call59 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %77, %struct._GtkWidget* %81)
  %82 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %83 = bitcast %struct._GtkObject* %82 to %struct._GTypeInstance*
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 80)
  %84 = bitcast %struct._GTypeInstance* %call60 to %struct._GObject*
  %call61 = call i8* @g_object_get_data(%struct._GObject* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %85 = bitcast i8* %call61 to %struct._GtkSpinButton*
  %86 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %87 = bitcast %struct._GtkObject* %86 to %struct._GTypeInstance*
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 80)
  %88 = bitcast %struct._GTypeInstance* %call62 to %struct._GObject*
  %call63 = call i8* @g_object_get_data(%struct._GObject* %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  %89 = bitcast i8* %call63 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_spin_button_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call64)
  %90 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkSpinButton*
  %call66 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %90)
  call void @gtk_spin_button_configure(%struct._GtkSpinButton* %85, %struct._GtkAdjustment* %call66, double 1.000000e-01, i32 2)
  %91 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %92 = bitcast %struct._GtkObject* %91 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 26) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %93)
  %94 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %95 = bitcast %struct._GtkSizeGroup* %94 to i8*
  call void @g_object_unref(i8* %95)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  ret %struct._GtkWidget* %96
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @mapmenu_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %active = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %active)
  %3 = load i32, i32* %active, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 9), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 15), align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @compute_preview_image()
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 9), align 4
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @cylinder_page, align 8
  %tobool4 = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool4, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.then.3
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @cylinder_page, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  %call7 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %10)
  %11 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %12 = bitcast %struct._GtkNotebook* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  %cmp10 = icmp eq %struct._GtkWidget* %call7, %13
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %land.lhs.true
  %14 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %15 = bitcast %struct._GtkNotebook* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_container_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkContainer*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** @cylinder_page, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %16, %struct._GtkWidget* %17)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %land.lhs.true, %if.then.3
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** @box_page, align 8
  %tobool15 = icmp ne %struct._GtkWidget* %18, null
  br i1 %tobool15, label %if.end.19, label %if.then.16

if.then.16:                                       ; preds = %if.end.14
  %call17 = call %struct._GtkWidget* @create_box_page()
  store %struct._GtkWidget* %call17, %struct._GtkWidget** @box_page, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** @box_page, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %call18 = call i8* @g_object_ref(i8* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.14
  %21 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @box_page, align 8
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #4
  %call21 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call20)
  %call22 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %21, %struct._GtkWidget* %22, %struct._GtkWidget* %call21)
  br label %if.end.71

if.else:                                          ; preds = %if.end
  %23 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 9), align 4
  %cmp23 = icmp eq i32 %23, 3
  br i1 %cmp23, label %if.then.24, label %if.else.45

if.then.24:                                       ; preds = %if.else
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** @box_page, align 8
  %tobool25 = icmp ne %struct._GtkWidget* %24, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.36

land.lhs.true.26:                                 ; preds = %if.then.24
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** @box_page, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_widget_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call27)
  %27 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkWidget*
  %call29 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %27)
  %28 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %29 = bitcast %struct._GtkNotebook* %28 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_widget_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call30)
  %30 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkWidget*
  %cmp32 = icmp eq %struct._GtkWidget* %call29, %30
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %land.lhs.true.26
  %31 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %32 = bitcast %struct._GtkNotebook* %31 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_container_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call34)
  %33 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkContainer*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** @box_page, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %33, %struct._GtkWidget* %34)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %land.lhs.true.26, %if.then.24
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** @cylinder_page, align 8
  %tobool37 = icmp ne %struct._GtkWidget* %35, null
  br i1 %tobool37, label %if.end.41, label %if.then.38

if.then.38:                                       ; preds = %if.end.36
  %call39 = call %struct._GtkWidget* @create_cylinder_page()
  store %struct._GtkWidget* %call39, %struct._GtkWidget** @cylinder_page, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** @cylinder_page, align 8
  %37 = bitcast %struct._GtkWidget* %36 to i8*
  %call40 = call i8* @g_object_ref(i8* %37)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.end.36
  %38 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** @cylinder_page, align 8
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0)) #4
  %call43 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call42)
  %call44 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %38, %struct._GtkWidget* %39, %struct._GtkWidget* %call43)
  br label %if.end.70

if.else.45:                                       ; preds = %if.else
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** @box_page, align 8
  %tobool46 = icmp ne %struct._GtkWidget* %40, null
  br i1 %tobool46, label %land.lhs.true.47, label %if.end.57

land.lhs.true.47:                                 ; preds = %if.else.45
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** @box_page, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_widget_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call48)
  %43 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkWidget*
  %call50 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %43)
  %44 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %45 = bitcast %struct._GtkNotebook* %44 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_widget_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call51)
  %46 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkWidget*
  %cmp53 = icmp eq %struct._GtkWidget* %call50, %46
  br i1 %cmp53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %land.lhs.true.47
  %47 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %48 = bitcast %struct._GtkNotebook* %47 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_container_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call55)
  %49 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkContainer*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** @box_page, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %49, %struct._GtkWidget* %50)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %land.lhs.true.47, %if.else.45
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** @cylinder_page, align 8
  %tobool58 = icmp ne %struct._GtkWidget* %51, null
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.69

land.lhs.true.59:                                 ; preds = %if.end.57
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** @cylinder_page, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_widget_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call60)
  %54 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkWidget*
  %call62 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %54)
  %55 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %56 = bitcast %struct._GtkNotebook* %55 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_widget_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call63)
  %57 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkWidget*
  %cmp65 = icmp eq %struct._GtkWidget* %call62, %57
  br i1 %cmp65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %land.lhs.true.59
  %58 = load %struct._GtkNotebook*, %struct._GtkNotebook** @options_note_book, align 8
  %59 = bitcast %struct._GtkNotebook* %58 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_container_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call67)
  %60 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkContainer*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** @cylinder_page, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %60, %struct._GtkWidget* %61)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %land.lhs.true.59, %if.end.57
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.41
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.19
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_label(i8*) #1

declare void @gtk_frame_set_label_widget(%struct._GtkFrame*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @lightmenu_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %active = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %active)
  %3 = load i32, i32* %active, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @dirlightwid, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @pointlightwid, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  br label %if.end.6

if.else:                                          ; preds = %entry
  %7 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  %cmp3 = icmp eq i32 %7, 1
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @pointlightwid, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @dirlightwid, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @pointlightwid, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** @dirlightwid, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %11)
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 15), align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.6
  call void @compute_preview_image()
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.6
  ret void
}

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gtk_spin_button_configure(%struct._GtkSpinButton*, %struct._GtkAdjustment*, double, i32) #1

declare %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #3

declare %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @box_constrain(i32 %image_id, i32 %drawable_id, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %drawable_id.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %drawable_id.addr, align 4
  %call = call i32 @gimp_drawable_is_rgb(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %2 = load i32, i32* %drawable_id.addr, align 4
  %call1 = call i32 @gimp_drawable_is_indexed(i32 %2)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %3 = phi i1 [ false, %if.end ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_indexed(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @cylinder_constrain(i32 %image_id, i32 %drawable_id, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %drawable_id.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %drawable_id.addr, align 4
  %call = call i32 @gimp_drawable_is_rgb(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %2 = load i32, i32* %drawable_id.addr, align 4
  %call1 = call i32 @gimp_drawable_is_indexed(i32 %2)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %3 = phi i1 [ false, %if.end ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
