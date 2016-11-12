; ModuleID = './plug-ins/gimpressionist/presets.bc'
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
%struct.gimpressionist_vals_t = type { i32, double, double, i32, double, double, double, double, i32, double, double, double, i32, i32, [200 x i8], [200 x i8], %struct._GimpRGB, i32, i32, [50 x %struct.vector], i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, double, double, i32, double, [50 x %struct.smvector], i32, double, i32, i32, i32, i32, double }
%struct._GimpRGB = type { double, double, double, double }
%struct.vector = type { double, double, double, double, double, double, i32 }
%struct.smvector = type { double, double, double, double }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GError = type { i32, i32, i8* }

@presetsavebutton = internal global %struct._GtkWidget* null, align 8
@selected_preset_orig_name = internal global i8* null, align 8
@selected_preset_filename = internal global i8* null, align 8
@factory_defaults = internal global i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [8 x i8] c"Presets\00", align 1
@pcvals = external global %struct.gimpressionist_vals_t, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"_Presets\00", align 1
@presetnameentry = internal global %struct._GtkWidget* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Save Current...\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Save the current settings to the specified file\00", align 1
@presetlist = internal global %struct._GtkWidget* null, align 8
@store = internal global %struct._GtkListStore* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"gtk-apply\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Reads the selected Preset into memory\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@delete_button = internal global %struct._GtkWidget* null, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"Deletes the selected Preset\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"gtk-refresh\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Reread the folder of Presets\00", align 1
@presetdesclabel = internal global %struct._GtkWidget* null, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"<Factory defaults>\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Error opening file \22%s\22 for reading!\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Preset\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@presetdesc = internal global [4096 x i8] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [10 x i8] c"orientnum\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"orientfirst\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"orientlast\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"orienttype\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"sizenum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sizefirst\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"sizelast\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"sizetype\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"brushrelief\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"brushscale\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"brushdensity\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"brushgamma\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"brushaspect\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"generalbgtype\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"generaldarkedge\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"generalpaintedges\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"generaltileable\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"generaldropshadow\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"generalshadowdarkness\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"generalshadowdepth\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"generalshadowblur\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"devthresh\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"paperrelief\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"paperscale\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"paperinvert\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"paperoverlay\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"placetype\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"placecenter\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"selectedbrush\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"selectedpaper\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"numorientvector\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"orientvector\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"orientangoff\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"orientstrexp\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"orientvoronoi\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"numsizevector\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"sizevector\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"sizestrexp\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"sizevoronoi\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"colortype\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"colornoise\00", align 1
@parse_rgb_string.col = internal global [3 x i8] zeroinitializer, align 1
@create_save_preset.window = internal global %struct._GtkWidget* null, align 8
@.str.60 = private unnamed_addr constant [13 x i8] c"Save Current\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"gimp-gimpressionist\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"plug-in-gimpressionist\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"Description:\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.69 = private unnamed_addr constant [48 x i8] c"Internal error: (save_preset) thispath == NULL\0A\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"Error creating folder \22%s\22!\0A\00", align 1
@.str.71 = private unnamed_addr constant [44 x i8] c"Error building a filename for preset \22%s\22!\0A\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.73 = private unnamed_addr constant [38 x i8] c"Error opening file \22%s\22 for writing!\0A\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"desc=%s\0A\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"name=%s\0A\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"orientnum=%d\0A\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"orientfirst=%s\0A\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"orientlast=%s\0A\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"orienttype=%d\0A\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"sizenum=%d\0A\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"sizefirst=%s\0A\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"sizelast=%s\0A\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"sizetype=%d\0A\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"brushrelief=%s\0A\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"brushdensity=%s\0A\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"brushgamma=%s\0A\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"brushaspect=%s\0A\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"generalbgtype=%d\0A\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"generaldarkedge=%s\0A\00", align 1
@.str.92 = private unnamed_addr constant [22 x i8] c"generalpaintedges=%d\0A\00", align 1
@.str.93 = private unnamed_addr constant [20 x i8] c"generaltileable=%d\0A\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"generaldropshadow=%d\0A\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"generalshadowdarkness=%s\0A\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"generalshadowdepth=%d\0A\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"generalshadowblur=%d\0A\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"devthresh=%s\0A\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"paperrelief=%s\0A\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"paperscale=%s\0A\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"paperinvert=%d\0A\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"paperoverlay=%d\0A\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"selectedbrush=%s\0A\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"selectedpaper=%s\0A\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"color=%02x%02x%02x\0A\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"placetype=%d\0A\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"placecenter=%d\0A\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"numorientvector=%d\0A\00", align 1
@.str.109 = private unnamed_addr constant [38 x i8] c"orientvector=%d,%s,%s,%s,%s,%s,%s,%d\0A\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"orientangoff=%s\0A\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"orientstrexp=%s\0A\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"orientvoronoi=%d\0A\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"numsizevector=%d\0A\00", align 1
@.str.114 = private unnamed_addr constant [27 x i8] c"sizevector=%d,%s,%s,%s,%s\0A\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"sizestrexp=%s\0A\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"sizevoronoi=%d\0A\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"colortype=%d\0A\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"colornoise=%s\0A\00", align 1
@__func__.preset_create_filename = private unnamed_addr constant [23 x i8] c"preset_create_filename\00", align 1
@.str.119 = private unnamed_addr constant [17 x i8] c"basename != NULL\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"dest_dir != NULL\00", align 1
@.str.121 = private unnamed_addr constant [30 x i8] c"g_path_is_absolute (dest_dir)\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.122 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.124 = private unnamed_addr constant [24 x i8] c"Gimpressionist Defaults\00", align 1
@.str.125 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"desc=\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"name=\00", align 1

; Function Attrs: nounwind uwtable
define void @preset_save_button_set_sensitive(i32 %s) #0 {
entry:
  %s.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %s, i32* %s.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @presetsavebutton, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @presetsavebutton, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_widget_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkWidget*
  %16 = load i32, i32* %s.addr, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %15, i32 %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.6
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind uwtable
define void @preset_free() #0 {
entry:
  %0 = load i8*, i8** @selected_preset_orig_name, align 8
  call void @g_free(i8* %0)
  %1 = load i8*, i8** @selected_preset_filename, align 8
  call void @g_free(i8* %1)
  ret void
}

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @select_preset(i8* %preset) #0 {
entry:
  %preset.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %rel = alloca i8*, align 8
  %abs = alloca i8*, align 8
  store i8* %preset, i8** %preset.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %preset.addr, align 8
  %1 = load i8*, i8** @factory_defaults, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %preset.addr, align 8
  %call1 = call noalias i8* (i8*, ...) @g_build_filename(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %2, i8* null)
  store i8* %call1, i8** %rel, align 8
  %3 = load i8*, i8** %rel, align 8
  %call2 = call i8* @findfile(i8* %3)
  store i8* %call2, i8** %abs, align 8
  %4 = load i8*, i8** %rel, align 8
  call void @g_free(i8* %4)
  %5 = load i8*, i8** %abs, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %6 = load i8*, i8** %abs, align 8
  %call5 = call i32 @load_preset(i8* %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.4
  store i32 -2, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.4
  %7 = load i8*, i8** %abs, align 8
  call void @g_free(i8* %7)
  br label %if.end.8

if.else:                                          ; preds = %if.then
  store i32 -1, i32* %ret, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %8 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.9
  call void @set_colorbrushes(i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 14, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.9
  %9 = load i32, i32* %ret, align 4
  ret i32 %9
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare noalias i8* @g_build_filename(i8*, ...) #3

declare i8* @findfile(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @load_preset(i8* %fn) #0 {
entry:
  %retval = alloca i32, align 4
  %fn.addr = alloca i8*, align 8
  %line = alloca [1024 x i8], align 16
  %f = alloca %struct._IO_FILE*, align 8
  %tmps = alloca i8*, align 8
  store i8* %fn, i8** %fn.addr, align 8
  %0 = bitcast [1024 x i8]* %line to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1024, i32 16, i1 false)
  %1 = load i8*, i8** %fn.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %fn.addr, align 8
  %call1 = call i8* @gimp_filename_to_utf8(i8* %3)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0), i8* %call1)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i8* @fgets(i8* %arraydecay, i32 10, %struct._IO_FILE* %4)
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call4 = call i32 @strncmp(i8* %arraydecay3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i64 4) #7
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call7 = call i32 @fclose(%struct._IO_FILE* %5)
  %6 = load i8*, i8** %fn.addr, align 8
  %call8 = call i32 @load_old_preset(i8* %6)
  store i32 %call8, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  call void @restore_default_values()
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %if.then.22, %if.end.9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call10 = call i32 @feof(%struct._IO_FILE* %7) #5
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call13 = call i8* @fgets(i8* %arraydecay12, i32 1024, %struct._IO_FILE* %8)
  %tobool14 = icmp ne i8* %call13, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %while.body
  br label %while.end

if.end.16:                                        ; preds = %while.body
  %arraydecay17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call18 = call i8* @g_strchomp(i8* %arraydecay17)
  %arraydecay19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call20 = call i8* @strchr(i8* %arraydecay19, i32 61) #7
  store i8* %call20, i8** %tmps, align 8
  %9 = load i8*, i8** %tmps, align 8
  %tobool21 = icmp ne i8* %9, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.16
  br label %while.cond

if.end.23:                                        ; preds = %if.end.16
  %10 = load i8*, i8** %tmps, align 8
  store i8 0, i8* %10, align 1
  %11 = load i8*, i8** %tmps, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %tmps, align 8
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %12 = load i8*, i8** %tmps, align 8
  call void @set_values(i8* %arraydecay24, i8* %12)
  br label %while.cond

while.end:                                        ; preds = %if.then.15, %while.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* %13)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.6, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare void @set_colorbrushes(i8*) #3

; Function Attrs: nounwind uwtable
define void @create_presetpage(%struct._GtkNotebook* %notebook) #0 {
entry:
  %notebook.addr = alloca %struct._GtkNotebook*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %box1 = alloca %struct._GtkWidget*, align 8
  %box2 = alloca %struct._GtkWidget*, align 8
  %thispage = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %tmpw = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  store %struct._GtkNotebook* %notebook, %struct._GtkNotebook** %notebook.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %label, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %thispage, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %3)
  %call5 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %box1, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call6)
  %6 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %6, %struct._GtkWidget* %7, i32 0, i32 0, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %call8 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call8, %struct._GtkWidget** @presetnameentry, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 0, i32 0, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %13, i32 200, i32 -1)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %14)
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #5
  %call12 = call %struct._GtkWidget* @gtk_button_new_with_label(i8* %call11)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call12, %struct._GtkWidget** @presetsavebutton, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @presetsavebutton, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_button_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkButton*
  %call15 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 4)
  call void @gtk_button_set_image(%struct._GtkButton* %17, %struct._GtkWidget* %call15)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call16)
  %20 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @create_save_preset to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %25, i8* %call19, i8* null)
  %call20 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %box1, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call21)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 1, i32 1, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  %call23 = call %struct._GtkWidget* @create_presets_list(%struct._GtkWidget* %31)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %view, align 8
  store %struct._GtkWidget* %call23, %struct._GtkWidget** @presetlist, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_tree_view_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call24)
  %34 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTreeView*
  %call26 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %34)
  %35 = bitcast %struct._GtkTreeModel* %call26 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_list_store_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call27)
  %36 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkListStore*
  store %struct._GtkListStore* %36, %struct._GtkListStore** @store, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_tree_view_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call29)
  %39 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkTreeView*
  %call31 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %39)
  store %struct._GtkTreeSelection* %call31, %struct._GtkTreeSelection** %selection, align 8
  call void @add_factory_defaults()
  %call32 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %vbox, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call33)
  %42 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 0, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %call35 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %hbox, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call36)
  %47 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %47, %struct._GtkWidget* %48, i32 0, i32 0, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %call38 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %box2, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call39)
  %52 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %52, %struct._GtkWidget* %53, i32 0, i32 0, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %call41 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %tmpw, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_box_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call42)
  %57 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkBox*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %57, %struct._GtkWidget* %58, i32 0, i32 0, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %62 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %63 = bitcast %struct._GtkTreeSelection* %62 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkTreeSelection*)* @apply_preset to void ()*), i8* %63, void (i8*, %struct._GClosure*)* null, i32 0)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %64, i8* %call45, i8* null)
  %call46 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GtkWidget* %call46, %struct._GtkWidget** @delete_button, align 8
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %tmpw, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_box_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call47)
  %67 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkBox*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %67, %struct._GtkWidget* %68, i32 0, i32 0, i32 0)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %72 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %73 = bitcast %struct._GtkTreeSelection* %72 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkTreeSelection*)* @delete_preset to void ()*), i8* %73, void (i8*, %struct._GClosure*)* null, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %74, i8* %call50, i8* null)
  %call51 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %tmpw, align 8
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_box_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call52)
  %77 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkBox*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %77, %struct._GtkWidget* %78, i32 0, i32 0, i32 0)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %81 = bitcast %struct._GtkWidget* %80 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* @preset_refresh_presets, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %82, i8* %call55, i8* null)
  %call56 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call56, %struct._GtkWidget** @presetdesclabel, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_label_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call57)
  %85 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %85, i32 3, i32 2, i32 -1)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_label_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call59)
  %88 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %88, i32 1)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %89, i32 240, i32 -1)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_misc_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call61)
  %92 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %92, float 0.000000e+00, float 0.000000e+00)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call63)
  %95 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %95, %struct._GtkWidget* %96, i32 1, i32 1, i32 0)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %97)
  call void @preset_read_dir_into_list()
  %98 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call65 = call i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook* %98, %struct._GtkWidget* %99, %struct._GtkWidget* %100, %struct._GtkWidget* null)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare %struct._GtkWidget* @gtk_entry_new() #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #3

declare %struct._GtkWidget* @gtk_button_new_with_label(i8*) #3

declare void @gtk_button_set_image(%struct._GtkButton*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @create_save_preset(%struct._GtkWidget* %parent) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %swin = alloca %struct._GtkWidget*, align 8
  %text = alloca %struct._GtkWidget*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_preset.window, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_preset.window, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %3)
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0)) #5
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call3 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %4)
  %call4 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0), %struct._GtkWidget* %call3, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** @create_save_preset.window, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_preset.window, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %7, i32 -5, i32 -6, i32 -1)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_preset.window, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @save_preset_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_preset.window, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* bitcast (%struct._GtkWidget** @create_save_preset.window to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %box, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %14, i32 12)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_preset.window, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_dialog_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkDialog*
  %call14 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %17)
  %18 = bitcast %struct._GtkWidget* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0)) #5
  %call18 = call %struct._GtkWidget* @gtk_label_new(i8* %call17)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %label, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_misc_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %24, float 0.000000e+00, float 5.000000e-01)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call21)
  %27 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %27, %struct._GtkWidget* %28, i32 0, i32 0, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %call23 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %swin, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_scrolled_window_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call24)
  %32 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %32, i32 1)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call26)
  %35 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 1, i32 1, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_scrolled_window_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call28)
  %39 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %39, i32 1, i32 1)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %call30 = call %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable* null)
  store %struct._GtkTextBuffer* %call30, %struct._GtkTextBuffer** %buffer, align 8
  %41 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %42 = bitcast %struct._GtkTextBuffer* %41 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTextBuffer*, i8*)* @preset_desc_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %43, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @presetdesc, i32 0, i32 0), i32 -1)
  %44 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call32 = call %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer* %44)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %text, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %text, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %45, i32 -1, i32 192)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_container_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call33)
  %48 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkContainer*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %text, align 8
  call void @gtk_container_add(%struct._GtkContainer* %48, %struct._GtkWidget* %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %text, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** @create_save_preset.window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_presets_list(%struct._GtkWidget* %parent) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %renderer = alloca %struct._GtkCellRenderer*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  %swin = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %call = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %swin, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_scrolled_window_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %2, i32 1, i32 1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_scrolled_window_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %5, i32 1)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 0, i32 0, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %11, i32 200, i32 -1)
  %call7 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 2, i64 64, i64 64)
  store %struct._GtkListStore* %call7, %struct._GtkListStore** %store, align 8
  %12 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %13 = bitcast %struct._GtkListStore* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_tree_model_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTreeModel*
  %call10 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %14)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %view, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_tree_view_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %17, i32 0)
  %18 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %19 = bitcast %struct._GtkListStore* %18 to i8*
  call void @g_object_unref(i8* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call13 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call13, %struct._GtkCellRenderer** %renderer, align 8
  %21 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call14 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct._GtkCellRenderer* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0), i32 1, i8* null)
  store %struct._GtkTreeViewColumn* %call14, %struct._GtkTreeViewColumn** %column, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_tree_view_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTreeView*
  %25 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call17 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %24, %struct._GtkTreeViewColumn* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_container_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkContainer*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %28, %struct._GtkWidget* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_tree_view_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call20)
  %32 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTreeView*
  %call22 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %32)
  store %struct._GtkTreeSelection* %call22, %struct._GtkTreeSelection** %selection, align 8
  %33 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %33, i32 2)
  %34 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %35 = bitcast %struct._GtkTreeSelection* %34 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, i8*)* @presets_list_select_preset to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  ret %struct._GtkWidget* %36
}

declare %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #1

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #3

; Function Attrs: nounwind uwtable
define internal void @add_factory_defaults() #0 {
entry:
  %iter = alloca %struct._GtkTreeIter, align 8
  %0 = load %struct._GtkListStore*, %struct._GtkListStore** @store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %0, %struct._GtkTreeIter* %iter)
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** @store, align 8
  %2 = load i8*, i8** @factory_defaults, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %1, %struct._GtkTreeIter* %iter, i32 0, i8* %2, i32 -1)
  %3 = load %struct._GtkListStore*, %struct._GtkListStore** @store, align 8
  %4 = load i8*, i8** @factory_defaults, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %3, %struct._GtkTreeIter* %iter, i32 1, i8* %4, i32 -1)
  ret void
}

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @apply_preset(%struct._GtkWidget* %w, %struct._GtkTreeSelection* %selection) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %preset = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %1, %struct._GtkTreeIter* %iter, i32 0, i8** %preset, i32 -1)
  %2 = load i8*, i8** %preset, align 8
  %call1 = call i32 @select_preset(i8* %2)
  call void @restore_values()
  %3 = load i8*, i8** @selected_preset_filename, align 8
  call void @g_free(i8* %3)
  %4 = load i8*, i8** %preset, align 8
  store i8* %4, i8** @selected_preset_filename, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @delete_preset(%struct._GtkWidget* %w, %struct._GtkTreeSelection* %selection) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %preset = alloca i8*, align 8
  %rel = alloca i8*, align 8
  %abs = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %1, %struct._GtkTreeIter* %iter, i32 0, i8** %preset, i32 -1)
  %2 = load i8*, i8** %preset, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.12

if.then.2:                                        ; preds = %if.then
  %3 = load i8*, i8** %preset, align 8
  %call3 = call noalias i8* (i8*, ...) @g_build_filename(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %3, i8* null)
  store i8* %call3, i8** %rel, align 8
  %4 = load i8*, i8** %rel, align 8
  %call4 = call i8* @findfile(i8* %4)
  store i8* %call4, i8** %abs, align 8
  %5 = load i8*, i8** %rel, align 8
  call void @g_free(i8* %5)
  %6 = load i8*, i8** %abs, align 8
  %tobool5 = icmp ne i8* %6, null
  br i1 %tobool5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.then.2
  %7 = load i8*, i8** %abs, align 8
  %call7 = call i32 @can_delete_preset(i8* %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.6
  %8 = load i8*, i8** %abs, align 8
  %call10 = call i32 @g_unlink(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.6
  %9 = load i8*, i8** %abs, align 8
  call void @g_free(i8* %9)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.2
  call void @preset_refresh_presets()
  %10 = load i8*, i8** %preset, align 8
  call void @g_free(i8* %10)
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @preset_refresh_presets() #0 {
entry:
  %0 = load %struct._GtkListStore*, %struct._GtkListStore** @store, align 8
  call void @gtk_list_store_clear(%struct._GtkListStore* %0)
  call void @add_factory_defaults()
  call void @preset_read_dir_into_list()
  ret void
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @preset_read_dir_into_list() #0 {
entry:
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @presetlist, align 8
  call void @readdirintolist_extended(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct._GtkWidget* %0, i8* null, i32 1, i8* (i8*, i8*, i8*)* @get_object_name, i8* null)
  ret void
}

declare i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare void @g_printerr(i8*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal i32 @load_old_preset(i8* %fname) #0 {
entry:
  %retval = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %len = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8
  %0 = load i8*, i8** %fname.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %fname.addr, align 8
  %call1 = call i8* @gimp_filename_to_utf8(i8* %2)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0), i8* %call1)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i64 @fread(i8* bitcast (%struct.gimpressionist_vals_t* @pcvals to i8*), i64 1, i64 5088, %struct._IO_FILE* %3)
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %len, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call3 = call i32 @fclose(%struct._IO_FILE* %4)
  %5 = load i32, i32* %len, align 4
  %conv4 = sext i32 %5 to i64
  %cmp = icmp ne i64 %conv4, 5088
  %cond = select i1 %cmp, i32 -1, i32 0
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare void @restore_default_values() #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

declare i8* @g_strchomp(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @set_values(i8* %key, i8* %val) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %val.addr = alloca i8*, align 8
  %c = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %val, i8** %val.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %val.addr, align 8
  call void @parse_desc(i8* %1, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @presetdesc, i32 0, i32 0), i64 4096)
  br label %if.end.256

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %key.addr, align 8
  %call1 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else.5, label %if.then.3

if.then.3:                                        ; preds = %if.else
  %3 = load i8*, i8** %val.addr, align 8
  %call4 = call i32 @atoi(i8* %3) #7
  store i32 %call4, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 0), align 4
  br label %if.end.255

if.else.5:                                        ; preds = %if.else
  %4 = load i8*, i8** %key.addr, align 8
  %call6 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0)) #7
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else.10, label %if.then.8

if.then.8:                                        ; preds = %if.else.5
  %5 = load i8*, i8** %val.addr, align 8
  %call9 = call double @g_ascii_strtod(i8* %5, i8** null)
  store double %call9, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 1), align 8
  br label %if.end.254

if.else.10:                                       ; preds = %if.else.5
  %6 = load i8*, i8** %key.addr, align 8
  %call11 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0)) #7
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.else.15, label %if.then.13

if.then.13:                                       ; preds = %if.else.10
  %7 = load i8*, i8** %val.addr, align 8
  %call14 = call double @g_ascii_strtod(i8* %7, i8** null)
  store double %call14, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 2), align 8
  br label %if.end.253

if.else.15:                                       ; preds = %if.else.10
  %8 = load i8*, i8** %key.addr, align 8
  %call16 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)) #7
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else.21, label %if.then.18

if.then.18:                                       ; preds = %if.else.15
  %9 = load i8*, i8** %val.addr, align 8
  %call19 = call i32 @atoi(i8* %9) #7
  %call20 = call i32 @orientation_type_input(i32 %call19)
  store i32 %call20, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 3), align 4
  br label %if.end.252

if.else.21:                                       ; preds = %if.else.15
  %10 = load i8*, i8** %key.addr, align 8
  %call22 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)) #7
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else.26, label %if.then.24

if.then.24:                                       ; preds = %if.else.21
  %11 = load i8*, i8** %val.addr, align 8
  %call25 = call i32 @atoi(i8* %11) #7
  store i32 %call25, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 31), align 4
  br label %if.end.251

if.else.26:                                       ; preds = %if.else.21
  %12 = load i8*, i8** %key.addr, align 8
  %call27 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)) #7
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.else.31, label %if.then.29

if.then.29:                                       ; preds = %if.else.26
  %13 = load i8*, i8** %val.addr, align 8
  %call30 = call double @g_ascii_strtod(i8* %13, i8** null)
  store double %call30, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 32), align 8
  br label %if.end.250

if.else.31:                                       ; preds = %if.else.26
  %14 = load i8*, i8** %key.addr, align 8
  %call32 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0)) #7
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else.36, label %if.then.34

if.then.34:                                       ; preds = %if.else.31
  %15 = load i8*, i8** %val.addr, align 8
  %call35 = call double @g_ascii_strtod(i8* %15, i8** null)
  store double %call35, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 33), align 8
  br label %if.end.249

if.else.36:                                       ; preds = %if.else.31
  %16 = load i8*, i8** %key.addr, align 8
  %call37 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0)) #7
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.else.42, label %if.then.39

if.then.39:                                       ; preds = %if.else.36
  %17 = load i8*, i8** %val.addr, align 8
  %call40 = call i32 @atoi(i8* %17) #7
  %call41 = call i32 @size_type_input(i32 %call40)
  store i32 %call41, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 34), align 4
  br label %if.end.248

if.else.42:                                       ; preds = %if.else.36
  %18 = load i8*, i8** %key.addr, align 8
  %call43 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0)) #7
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.else.47, label %if.then.45

if.then.45:                                       ; preds = %if.else.42
  %19 = load i8*, i8** %val.addr, align 8
  %call46 = call double @g_ascii_strtod(i8* %19, i8** null)
  store double %call46, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 4), align 8
  br label %if.end.247

if.else.47:                                       ; preds = %if.else.42
  %20 = load i8*, i8** %key.addr, align 8
  %call48 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0)) #7
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.else.52, label %if.then.50

if.then.50:                                       ; preds = %if.else.47
  store i32 1, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 31), align 4
  %21 = load i8*, i8** %val.addr, align 8
  %call51 = call double @g_ascii_strtod(i8* %21, i8** null)
  store double %call51, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 33), align 8
  store double %call51, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 32), align 8
  br label %if.end.246

if.else.52:                                       ; preds = %if.else.47
  %22 = load i8*, i8** %key.addr, align 8
  %call53 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0)) #7
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.else.57, label %if.then.55

if.then.55:                                       ; preds = %if.else.52
  %23 = load i8*, i8** %val.addr, align 8
  %call56 = call double @g_ascii_strtod(i8* %23, i8** null)
  store double %call56, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 6), align 8
  br label %if.end.245

if.else.57:                                       ; preds = %if.else.52
  %24 = load i8*, i8** %key.addr, align 8
  %call58 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0)) #7
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.else.62, label %if.then.60

if.then.60:                                       ; preds = %if.else.57
  %25 = load i8*, i8** %val.addr, align 8
  %call61 = call double @g_ascii_strtod(i8* %25, i8** null)
  store double %call61, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 7), align 8
  br label %if.end.244

if.else.62:                                       ; preds = %if.else.57
  %26 = load i8*, i8** %key.addr, align 8
  %call63 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0)) #7
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.else.67, label %if.then.65

if.then.65:                                       ; preds = %if.else.62
  %27 = load i8*, i8** %val.addr, align 8
  %call66 = call double @g_ascii_strtod(i8* %27, i8** null)
  store double %call66, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 22), align 8
  br label %if.end.243

if.else.67:                                       ; preds = %if.else.62
  %28 = load i8*, i8** %key.addr, align 8
  %call68 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0)) #7
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.else.73, label %if.then.70

if.then.70:                                       ; preds = %if.else.67
  %29 = load i8*, i8** %val.addr, align 8
  %call71 = call i32 @atoi(i8* %29) #7
  %call72 = call i32 @general_bg_type_input(i32 %call71)
  store i32 %call72, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 8), align 4
  br label %if.end.242

if.else.73:                                       ; preds = %if.else.67
  %30 = load i8*, i8** %key.addr, align 8
  %call74 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0)) #7
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.else.78, label %if.then.76

if.then.76:                                       ; preds = %if.else.73
  %31 = load i8*, i8** %val.addr, align 8
  %call77 = call double @g_ascii_strtod(i8* %31, i8** null)
  store double %call77, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 9), align 8
  br label %if.end.241

if.else.78:                                       ; preds = %if.else.73
  %32 = load i8*, i8** %key.addr, align 8
  %call79 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0)) #7
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.else.83, label %if.then.81

if.then.81:                                       ; preds = %if.else.78
  %33 = load i8*, i8** %val.addr, align 8
  %call82 = call i32 @atoi(i8* %33) #7
  store i32 %call82, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 17), align 4
  br label %if.end.240

if.else.83:                                       ; preds = %if.else.78
  %34 = load i8*, i8** %key.addr, align 8
  %call84 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0)) #7
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.else.88, label %if.then.86

if.then.86:                                       ; preds = %if.else.83
  %35 = load i8*, i8** %val.addr, align 8
  %call87 = call i32 @atoi(i8* %35) #7
  store i32 %call87, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 25), align 4
  br label %if.end.239

if.else.88:                                       ; preds = %if.else.83
  %36 = load i8*, i8** %key.addr, align 8
  %call89 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0)) #7
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.else.93, label %if.then.91

if.then.91:                                       ; preds = %if.else.88
  %37 = load i8*, i8** %val.addr, align 8
  %call92 = call i32 @atoi(i8* %37) #7
  store i32 %call92, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 29), align 4
  br label %if.end.238

if.else.93:                                       ; preds = %if.else.88
  %38 = load i8*, i8** %key.addr, align 8
  %call94 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0)) #7
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.else.98, label %if.then.96

if.then.96:                                       ; preds = %if.else.93
  %39 = load i8*, i8** %val.addr, align 8
  %call97 = call double @g_ascii_strtod(i8* %39, i8** null)
  store double %call97, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 30), align 8
  br label %if.end.237

if.else.98:                                       ; preds = %if.else.93
  %40 = load i8*, i8** %key.addr, align 8
  %call99 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0)) #7
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.else.103, label %if.then.101

if.then.101:                                      ; preds = %if.else.98
  %41 = load i8*, i8** %val.addr, align 8
  %call102 = call i32 @atoi(i8* %41) #7
  store i32 %call102, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 40), align 4
  br label %if.end.236

if.else.103:                                      ; preds = %if.else.98
  %42 = load i8*, i8** %key.addr, align 8
  %call104 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0)) #7
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.else.108, label %if.then.106

if.then.106:                                      ; preds = %if.else.103
  %43 = load i8*, i8** %val.addr, align 8
  %call107 = call i32 @atoi(i8* %43) #7
  store i32 %call107, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 41), align 4
  br label %if.end.235

if.else.108:                                      ; preds = %if.else.103
  %44 = load i8*, i8** %key.addr, align 8
  %call109 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0)) #7
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.else.113, label %if.then.111

if.then.111:                                      ; preds = %if.else.108
  %45 = load i8*, i8** %val.addr, align 8
  %call112 = call double @g_ascii_strtod(i8* %45, i8** null)
  store double %call112, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 35), align 8
  br label %if.end.234

if.else.113:                                      ; preds = %if.else.108
  %46 = load i8*, i8** %key.addr, align 8
  %call114 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0)) #7
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.else.118, label %if.then.116

if.then.116:                                      ; preds = %if.else.113
  %47 = load i8*, i8** %val.addr, align 8
  %call117 = call double @g_ascii_strtod(i8* %47, i8** null)
  store double %call117, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 10), align 8
  br label %if.end.233

if.else.118:                                      ; preds = %if.else.113
  %48 = load i8*, i8** %key.addr, align 8
  %call119 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0)) #7
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.else.123, label %if.then.121

if.then.121:                                      ; preds = %if.else.118
  %49 = load i8*, i8** %val.addr, align 8
  %call122 = call double @g_ascii_strtod(i8* %49, i8** null)
  store double %call122, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 11), align 8
  br label %if.end.232

if.else.123:                                      ; preds = %if.else.118
  %50 = load i8*, i8** %key.addr, align 8
  %call124 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0)) #7
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.else.128, label %if.then.126

if.then.126:                                      ; preds = %if.else.123
  %51 = load i8*, i8** %val.addr, align 8
  %call127 = call i32 @atoi(i8* %51) #7
  store i32 %call127, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 12), align 4
  br label %if.end.231

if.else.128:                                      ; preds = %if.else.123
  %52 = load i8*, i8** %key.addr, align 8
  %call129 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0)) #7
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.else.133, label %if.then.131

if.then.131:                                      ; preds = %if.else.128
  %53 = load i8*, i8** %val.addr, align 8
  %call132 = call i32 @atoi(i8* %53) #7
  store i32 %call132, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 26), align 4
  br label %if.end.230

if.else.133:                                      ; preds = %if.else.128
  %54 = load i8*, i8** %key.addr, align 8
  %call134 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0)) #7
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.else.139, label %if.then.136

if.then.136:                                      ; preds = %if.else.133
  %55 = load i8*, i8** %val.addr, align 8
  %call137 = call i32 @atoi(i8* %55) #7
  %call138 = call i32 @place_type_input(i32 %call137)
  store i32 %call138, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 18), align 4
  br label %if.end.229

if.else.139:                                      ; preds = %if.else.133
  %56 = load i8*, i8** %key.addr, align 8
  %call140 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0)) #7
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.else.144, label %if.then.142

if.then.142:                                      ; preds = %if.else.139
  %57 = load i8*, i8** %val.addr, align 8
  %call143 = call i32 @atoi(i8* %57) #7
  store i32 %call143, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 21), align 4
  br label %if.end.228

if.else.144:                                      ; preds = %if.else.139
  %58 = load i8*, i8** %key.addr, align 8
  %call145 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0)) #7
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.else.149, label %if.then.147

if.then.147:                                      ; preds = %if.else.144
  %59 = load i8*, i8** %val.addr, align 8
  %call148 = call i64 @g_strlcpy(i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 14, i32 0), i8* %59, i64 200)
  br label %if.end.227

if.else.149:                                      ; preds = %if.else.144
  %60 = load i8*, i8** %key.addr, align 8
  %call150 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0)) #7
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.else.154, label %if.then.152

if.then.152:                                      ; preds = %if.else.149
  %61 = load i8*, i8** %val.addr, align 8
  %call153 = call i64 @g_strlcpy(i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 15, i32 0), i8* %61, i64 200)
  br label %if.end.226

if.else.154:                                      ; preds = %if.else.149
  %62 = load i8*, i8** %key.addr, align 8
  %call155 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0)) #7
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.else.161, label %if.then.157

if.then.157:                                      ; preds = %if.else.154
  %63 = load i8*, i8** %val.addr, align 8
  %call158 = call i8* @parse_rgb_string(i8* %63)
  store i8* %call158, i8** %c, align 8
  %64 = load i8*, i8** %c, align 8
  %arrayidx = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx, align 1
  %66 = load i8*, i8** %c, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx159, align 1
  %68 = load i8*, i8** %c, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %68, i64 2
  %69 = load i8, i8* %arrayidx160, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 16), i8 zeroext %65, i8 zeroext %67, i8 zeroext %69, i8 zeroext -1)
  br label %if.end.225

if.else.161:                                      ; preds = %if.else.154
  %70 = load i8*, i8** %key.addr, align 8
  %call162 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0)) #7
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.else.166, label %if.then.164

if.then.164:                                      ; preds = %if.else.161
  %71 = load i8*, i8** %val.addr, align 8
  %call165 = call i32 @atoi(i8* %71) #7
  store i32 %call165, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 20), align 4
  br label %if.end.224

if.else.166:                                      ; preds = %if.else.161
  %72 = load i8*, i8** %key.addr, align 8
  %call167 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0)) #7
  %tobool168 = icmp ne i32 %call167, 0
  br i1 %tobool168, label %if.else.170, label %if.then.169

if.then.169:                                      ; preds = %if.else.166
  %73 = load i8*, i8** %val.addr, align 8
  call void @set_orient_vector(i8* %73)
  br label %if.end.223

if.else.170:                                      ; preds = %if.else.166
  %74 = load i8*, i8** %key.addr, align 8
  %call171 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0)) #7
  %tobool172 = icmp ne i32 %call171, 0
  br i1 %tobool172, label %if.else.175, label %if.then.173

if.then.173:                                      ; preds = %if.else.170
  %75 = load i8*, i8** %val.addr, align 8
  %call174 = call double @g_ascii_strtod(i8* %75, i8** null)
  store double %call174, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 23), align 8
  br label %if.end.222

if.else.175:                                      ; preds = %if.else.170
  %76 = load i8*, i8** %key.addr, align 8
  %call176 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0)) #7
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %if.else.180, label %if.then.178

if.then.178:                                      ; preds = %if.else.175
  %77 = load i8*, i8** %val.addr, align 8
  %call179 = call double @g_ascii_strtod(i8* %77, i8** null)
  store double %call179, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 24), align 8
  br label %if.end.221

if.else.180:                                      ; preds = %if.else.175
  %78 = load i8*, i8** %key.addr, align 8
  %call181 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0)) #7
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.else.185, label %if.then.183

if.then.183:                                      ; preds = %if.else.180
  %79 = load i8*, i8** %val.addr, align 8
  %call184 = call i32 @atoi(i8* %79) #7
  store i32 %call184, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 27), align 4
  br label %if.end.220

if.else.185:                                      ; preds = %if.else.180
  %80 = load i8*, i8** %key.addr, align 8
  %call186 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0)) #7
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.else.190, label %if.then.188

if.then.188:                                      ; preds = %if.else.185
  %81 = load i8*, i8** %val.addr, align 8
  %call189 = call i32 @atoi(i8* %81) #7
  store i32 %call189, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 37), align 4
  br label %if.end.219

if.else.190:                                      ; preds = %if.else.185
  %82 = load i8*, i8** %key.addr, align 8
  %call191 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0)) #7
  %tobool192 = icmp ne i32 %call191, 0
  br i1 %tobool192, label %if.else.194, label %if.then.193

if.then.193:                                      ; preds = %if.else.190
  %83 = load i8*, i8** %val.addr, align 8
  call void @set_size_vector(i8* %83)
  br label %if.end.218

if.else.194:                                      ; preds = %if.else.190
  %84 = load i8*, i8** %key.addr, align 8
  %call195 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0)) #7
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.else.199, label %if.then.197

if.then.197:                                      ; preds = %if.else.194
  %85 = load i8*, i8** %val.addr, align 8
  %call198 = call double @g_ascii_strtod(i8* %85, i8** null)
  store double %call198, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 38), align 8
  br label %if.end.217

if.else.199:                                      ; preds = %if.else.194
  %86 = load i8*, i8** %key.addr, align 8
  %call200 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0)) #7
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.else.204, label %if.then.202

if.then.202:                                      ; preds = %if.else.199
  %87 = load i8*, i8** %val.addr, align 8
  %call203 = call i32 @atoi(i8* %87) #7
  store i32 %call203, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 39), align 4
  br label %if.end.216

if.else.204:                                      ; preds = %if.else.199
  %88 = load i8*, i8** %key.addr, align 8
  %call205 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0)) #7
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.else.210, label %if.then.207

if.then.207:                                      ; preds = %if.else.204
  %89 = load i8*, i8** %val.addr, align 8
  %call208 = call i32 @atoi(i8* %89) #7
  %call209 = call i32 @color_type_input(i32 %call208)
  store i32 %call209, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 42), align 4
  br label %if.end.215

if.else.210:                                      ; preds = %if.else.204
  %90 = load i8*, i8** %key.addr, align 8
  %call211 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0)) #7
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.end, label %if.then.213

if.then.213:                                      ; preds = %if.else.210
  %91 = load i8*, i8** %val.addr, align 8
  %call214 = call double @g_ascii_strtod(i8* %91, i8** null)
  store double %call214, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 43), align 8
  br label %if.end

if.end:                                           ; preds = %if.then.213, %if.else.210
  br label %if.end.215

if.end.215:                                       ; preds = %if.end, %if.then.207
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.202
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.then.197
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.then.193
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.then.188
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.then.183
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.then.178
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.then.173
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.then.169
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %if.then.164
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then.157
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %if.then.152
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.then.147
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.then.142
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.136
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.then.131
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.126
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.then.121
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %if.then.116
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.then.111
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.then.106
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.then.101
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.then.96
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.then.91
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.then.86
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.then.81
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.then.76
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.then.70
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.then.65
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.then.60
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %if.then.55
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %if.then.50
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %if.then.45
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.then.39
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.then.34
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.then.29
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.then.24
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.then.18
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %if.then.13
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.253, %if.then.8
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %if.then.3
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %if.then
  ret void
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal void @parse_desc(i8* %str, i8* %d, i64 %d_len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %d.addr = alloca i8*, align 8
  %d_len.addr = alloca i64, align 8
  %dest = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store i64 %d_len, i64* %d_len.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call noalias i8* @g_strcompress(i8* %0)
  store i8* %call, i8** %dest, align 8
  %1 = load i8*, i8** %d.addr, align 8
  %2 = load i8*, i8** %dest, align 8
  %3 = load i64, i64* %d_len.addr, align 8
  %call1 = call i64 @g_strlcpy(i8* %1, i8* %2, i64 %3)
  %4 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %4)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare double @g_ascii_strtod(i8*, i8**) #3

declare i32 @orientation_type_input(i32) #3

declare i32 @size_type_input(i32) #3

declare i32 @general_bg_type_input(i32) #3

declare i32 @place_type_input(i32) #3

declare i64 @g_strlcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i8* @parse_rgb_string(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %call = call i32 @hexval(i8 signext %1)
  %shl = shl i32 %call, 4
  %2 = load i8*, i8** %s.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %call2 = call i32 @hexval(i8 signext %3)
  %or = or i32 %shl, %call2
  %conv = trunc i32 %or to i8
  store i8 %conv, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @parse_rgb_string.col, i32 0, i64 0), align 1
  %4 = load i8*, i8** %s.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx3, align 1
  %call4 = call i32 @hexval(i8 signext %5)
  %shl5 = shl i32 %call4, 4
  %6 = load i8*, i8** %s.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx6, align 1
  %call7 = call i32 @hexval(i8 signext %7)
  %or8 = or i32 %shl5, %call7
  %conv9 = trunc i32 %or8 to i8
  store i8 %conv9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @parse_rgb_string.col, i32 0, i64 1), align 1
  %8 = load i8*, i8** %s.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8, i8* %arrayidx10, align 1
  %call11 = call i32 @hexval(i8 signext %9)
  %shl12 = shl i32 %call11, 4
  %10 = load i8*, i8** %s.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx13, align 1
  %call14 = call i32 @hexval(i8 signext %11)
  %or15 = or i32 %shl12, %call14
  %conv16 = trunc i32 %or15 to i8
  store i8 %conv16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @parse_rgb_string.col, i32 0, i64 2), align 1
  ret i8* getelementptr inbounds ([3 x i8], [3 x i8]* @parse_rgb_string.col, i32 0, i32 0)
}

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #3

; Function Attrs: nounwind uwtable
define internal void @set_orient_vector(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %tmps = alloca i8*, align 8
  %n = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %tmps, align 8
  %1 = load i8*, i8** %tmps, align 8
  %call = call i32 @atoi(i8* %1) #7
  store i32 %call, i32* %n, align 4
  %2 = load i8*, i8** %tmps, align 8
  %call1 = call i8* @strchr(i8* %2, i32 44) #7
  store i8* %call1, i8** %tmps, align 8
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %tmps, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %tmps, align 8
  %call2 = call double @g_ascii_strtod(i8* %incdec.ptr, i8** null)
  %4 = load i32, i32* %n, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx, i32 0, i32 0
  store double %call2, double* %x, align 8
  %5 = load i8*, i8** %tmps, align 8
  %call3 = call i8* @strchr(i8* %5, i32 44) #7
  store i8* %call3, i8** %tmps, align 8
  %tobool4 = icmp ne i8* %call3, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %6 = load i8*, i8** %tmps, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr7, i8** %tmps, align 8
  %call8 = call double @g_ascii_strtod(i8* %incdec.ptr7, i8** null)
  %7 = load i32, i32* %n, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom9
  %y = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx10, i32 0, i32 1
  store double %call8, double* %y, align 8
  %8 = load i8*, i8** %tmps, align 8
  %call11 = call i8* @strchr(i8* %8, i32 44) #7
  store i8* %call11, i8** %tmps, align 8
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.6
  br label %return

if.end.14:                                        ; preds = %if.end.6
  %9 = load i8*, i8** %tmps, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr15, i8** %tmps, align 8
  %call16 = call double @g_ascii_strtod(i8* %incdec.ptr15, i8** null)
  %10 = load i32, i32* %n, align 4
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom17
  %dir = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx18, i32 0, i32 2
  store double %call16, double* %dir, align 8
  %11 = load i8*, i8** %tmps, align 8
  %call19 = call i8* @strchr(i8* %11, i32 44) #7
  store i8* %call19, i8** %tmps, align 8
  %tobool20 = icmp ne i8* %call19, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.14
  br label %return

if.end.22:                                        ; preds = %if.end.14
  %12 = load i8*, i8** %tmps, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr23, i8** %tmps, align 8
  %call24 = call double @g_ascii_strtod(i8* %incdec.ptr23, i8** null)
  %13 = load i32, i32* %n, align 4
  %idxprom25 = sext i32 %13 to i64
  %arrayidx26 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom25
  %dx = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx26, i32 0, i32 3
  store double %call24, double* %dx, align 8
  %14 = load i8*, i8** %tmps, align 8
  %call27 = call i8* @strchr(i8* %14, i32 44) #7
  store i8* %call27, i8** %tmps, align 8
  %tobool28 = icmp ne i8* %call27, null
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.22
  br label %return

if.end.30:                                        ; preds = %if.end.22
  %15 = load i8*, i8** %tmps, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr31, i8** %tmps, align 8
  %call32 = call double @g_ascii_strtod(i8* %incdec.ptr31, i8** null)
  %16 = load i32, i32* %n, align 4
  %idxprom33 = sext i32 %16 to i64
  %arrayidx34 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom33
  %dy = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx34, i32 0, i32 4
  store double %call32, double* %dy, align 8
  %17 = load i8*, i8** %tmps, align 8
  %call35 = call i8* @strchr(i8* %17, i32 44) #7
  store i8* %call35, i8** %tmps, align 8
  %tobool36 = icmp ne i8* %call35, null
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.30
  br label %return

if.end.38:                                        ; preds = %if.end.30
  %18 = load i8*, i8** %tmps, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr39, i8** %tmps, align 8
  %call40 = call double @g_ascii_strtod(i8* %incdec.ptr39, i8** null)
  %19 = load i32, i32* %n, align 4
  %idxprom41 = sext i32 %19 to i64
  %arrayidx42 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom41
  %str43 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx42, i32 0, i32 5
  store double %call40, double* %str43, align 8
  %20 = load i8*, i8** %tmps, align 8
  %call44 = call i8* @strchr(i8* %20, i32 44) #7
  store i8* %call44, i8** %tmps, align 8
  %tobool45 = icmp ne i8* %call44, null
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.end.38
  br label %return

if.end.47:                                        ; preds = %if.end.38
  %21 = load i8*, i8** %tmps, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr48, i8** %tmps, align 8
  %call49 = call i32 @atoi(i8* %incdec.ptr48) #7
  %22 = load i32, i32* %n, align 4
  %idxprom50 = sext i32 %22 to i64
  %arrayidx51 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom50
  %type = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx51, i32 0, i32 6
  store i32 %call49, i32* %type, align 4
  br label %return

return:                                           ; preds = %if.end.47, %if.then.46, %if.then.37, %if.then.29, %if.then.21, %if.then.13, %if.then.5, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_size_vector(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %tmps = alloca i8*, align 8
  %n = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %tmps, align 8
  %1 = load i8*, i8** %tmps, align 8
  %call = call i32 @atoi(i8* %1) #7
  store i32 %call, i32* %n, align 4
  %2 = load i8*, i8** %tmps, align 8
  %call1 = call i8* @strchr(i8* %2, i32 44) #7
  store i8* %call1, i8** %tmps, align 8
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %tmps, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %tmps, align 8
  %call2 = call double @g_ascii_strtod(i8* %incdec.ptr, i8** null)
  %4 = load i32, i32* %n, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 36), i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx, i32 0, i32 0
  store double %call2, double* %x, align 8
  %5 = load i8*, i8** %tmps, align 8
  %call3 = call i8* @strchr(i8* %5, i32 44) #7
  store i8* %call3, i8** %tmps, align 8
  %tobool4 = icmp ne i8* %call3, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %6 = load i8*, i8** %tmps, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr7, i8** %tmps, align 8
  %call8 = call double @g_ascii_strtod(i8* %incdec.ptr7, i8** null)
  %7 = load i32, i32* %n, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 36), i32 0, i64 %idxprom9
  %y = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx10, i32 0, i32 1
  store double %call8, double* %y, align 8
  %8 = load i8*, i8** %tmps, align 8
  %call11 = call i8* @strchr(i8* %8, i32 44) #7
  store i8* %call11, i8** %tmps, align 8
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.6
  br label %return

if.end.14:                                        ; preds = %if.end.6
  %9 = load i8*, i8** %tmps, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr15, i8** %tmps, align 8
  %call16 = call double @g_ascii_strtod(i8* %incdec.ptr15, i8** null)
  %10 = load i32, i32* %n, align 4
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 36), i32 0, i64 %idxprom17
  %siz = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx18, i32 0, i32 2
  store double %call16, double* %siz, align 8
  %11 = load i8*, i8** %tmps, align 8
  %call19 = call i8* @strchr(i8* %11, i32 44) #7
  store i8* %call19, i8** %tmps, align 8
  %tobool20 = icmp ne i8* %call19, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.14
  br label %return

if.end.22:                                        ; preds = %if.end.14
  %12 = load i8*, i8** %tmps, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr23, i8** %tmps, align 8
  %call24 = call double @g_ascii_strtod(i8* %incdec.ptr23, i8** null)
  %13 = load i32, i32* %n, align 4
  %idxprom25 = sext i32 %13 to i64
  %arrayidx26 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 36), i32 0, i64 %idxprom25
  %str27 = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx26, i32 0, i32 3
  store double %call24, double* %str27, align 8
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.then.13, %if.then.5, %if.then
  ret void
}

declare i32 @color_type_input(i32) #3

declare noalias i8* @g_strcompress(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @hexval(i8 signext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %call = call signext i8 @g_ascii_tolower(i8 signext %0) #6
  store i8 %call, i8* %c.addr, align 1
  %1 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %2 to i32
  %cmp3 = icmp sle i32 %conv2, 102
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8, i8* %c.addr, align 1
  %conv5 = sext i8 %3 to i32
  %sub = sub nsw i32 %conv5, 97
  %add = add nsw i32 %sub, 10
  store i32 %add, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i8, i8* %c.addr, align 1
  %conv6 = sext i8 %4 to i32
  %cmp7 = icmp sge i32 %conv6, 48
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.16

land.lhs.true.9:                                  ; preds = %if.end
  %5 = load i8, i8* %c.addr, align 1
  %conv10 = sext i8 %5 to i32
  %cmp11 = icmp sle i32 %conv10, 57
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %land.lhs.true.9
  %6 = load i8, i8* %c.addr, align 1
  %conv14 = sext i8 %6 to i32
  %sub15 = sub nsw i32 %conv14, 48
  store i32 %sub15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true.9, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare signext i8 @g_ascii_tolower(i8 signext) #1

declare void @gtk_window_present(%struct._GtkWindow*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #3

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @save_preset_response(%struct._GtkWidget* %widget, i32 %response_id, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %0)
  %1 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %1, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @save_preset()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #3

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #3

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #3

declare %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable*) #3

; Function Attrs: nounwind uwtable
define internal void @preset_desc_callback(%struct._GtkTextBuffer* %buffer, i8* %data) #0 {
entry:
  %buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %data.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GtkTextBuffer* %buffer, %struct._GtkTextBuffer** %buffer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %0, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %1 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  %call = call i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer* %1, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 0)
  store i8* %call, i8** %str, align 8
  %2 = load i8*, i8** %str, align 8
  %call1 = call i64 @g_strlcpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @presetdesc, i32 0, i32 0), i8* %2, i64 4096)
  %3 = load i8*, i8** %str, align 8
  call void @g_free(i8* %3)
  ret void
}

declare void @gtk_text_buffer_set_text(%struct._GtkTextBuffer*, i8*, i32) #3

declare %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer*) #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

; Function Attrs: nounwind uwtable
define internal void @save_preset() #0 {
entry:
  %preset_name = alloca i8*, align 8
  %fname = alloca i8*, align 8
  %presets_dir_path = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %thispath = alloca %struct._GList*, align 8
  %buf = alloca [39 x i8], align 16
  %vbuf = alloca [6 x [39 x i8]], align 16
  %color = alloca [3 x i8], align 1
  %i = alloca i32, align 4
  %desc_escaped = alloca i8*, align 8
  %preset_name_escaped = alloca i8*, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @presetnameentry, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %2)
  store i8* %call2, i8** %preset_name, align 8
  %call3 = call %struct._GList* @parsepath()
  store %struct._GList* %call3, %struct._GList** %thispath, align 8
  call void @store_values()
  %3 = load %struct._GList*, %struct._GList** %thispath, align 8
  %tobool = icmp ne %struct._GList* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.69, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GList*, %struct._GList** %thispath, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %call4 = call noalias i8* (i8*, ...) @g_build_filename(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null)
  store i8* %call4, i8** %presets_dir_path, align 8
  %6 = load i8*, i8** %presets_dir_path, align 8
  %call5 = call i32 @g_file_test(i8* %6, i32 4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.12, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %7 = load i8*, i8** %presets_dir_path, align 8
  %call8 = call i32 @mkdir(i8* %7, i32 493) #5
  %cmp = icmp eq i32 %call8, -1
  br i1 %cmp, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.7
  %8 = load i8*, i8** %presets_dir_path, align 8
  %call10 = call i8* @gimp_filename_to_utf8(i8* %8)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.70, i32 0, i32 0), i8* %call10)
  %9 = load i8*, i8** %presets_dir_path, align 8
  call void @g_free(i8* %9)
  br label %return

if.end.11:                                        ; preds = %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %10 = load i8*, i8** @selected_preset_orig_name, align 8
  %tobool13 = icmp ne i8* %10, null
  br i1 %tobool13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.12
  %11 = load i8*, i8** %preset_name, align 8
  %12 = load i8*, i8** @selected_preset_orig_name, align 8
  %call14 = call i32 @strcmp(i8* %11, i8* %12) #7
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true
  %13 = load i8*, i8** %presets_dir_path, align 8
  %14 = load i8*, i8** @selected_preset_filename, align 8
  %call17 = call noalias i8* (i8*, ...) @g_build_filename(i8* %13, i8* %14, i8* null)
  store i8* %call17, i8** %fname, align 8
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true, %if.end.12
  %15 = load i8*, i8** %preset_name, align 8
  %16 = load i8*, i8** %presets_dir_path, align 8
  %call18 = call i8* @preset_create_filename(i8* %15, i8* %16)
  store i8* %call18, i8** %fname, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.16
  %17 = load i8*, i8** %presets_dir_path, align 8
  call void @g_free(i8* %17)
  %18 = load i8*, i8** %fname, align 8
  %tobool20 = icmp ne i8* %18, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.19
  %19 = load i8*, i8** %preset_name, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.71, i32 0, i32 0), i8* %19)
  br label %return

if.end.22:                                        ; preds = %if.end.19
  %20 = load i8*, i8** %fname, align 8
  %call23 = call %struct._IO_FILE* @fopen(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0))
  store %struct._IO_FILE* %call23, %struct._IO_FILE** %f, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool24 = icmp ne %struct._IO_FILE* %21, null
  br i1 %tobool24, label %if.end.27, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  %22 = load i8*, i8** %fname, align 8
  %call26 = call i8* @gimp_filename_to_utf8(i8* %22)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.73, i32 0, i32 0), i8* %call26)
  %23 = load i8*, i8** %fname, align 8
  call void @g_free(i8* %23)
  br label %return

if.end.27:                                        ; preds = %if.end.22
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0))
  %call29 = call noalias i8* @g_strescape(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @presetdesc, i32 0, i32 0), i8* null)
  store i8* %call29, i8** %desc_escaped, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %26 = load i8*, i8** %desc_escaped, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i8* %26)
  %27 = load i8*, i8** %desc_escaped, align 8
  call void @g_free(i8* %27)
  %28 = load i8*, i8** %preset_name, align 8
  %call31 = call noalias i8* @g_strescape(i8* %28, i8* null)
  store i8* %call31, i8** %preset_name_escaped, align 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %30 = load i8*, i8** %preset_name_escaped, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), i8* %30)
  %31 = load i8*, i8** %preset_name_escaped, align 8
  call void @g_free(i8* %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 0), align 4
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), i32 %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %35 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 1), align 8
  %call34 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %35)
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i32 0, i32 0), i8* %call34)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay36 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %37 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 2), align 8
  %call37 = call i8* @g_ascii_formatd(i8* %arraydecay36, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %37)
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0), i8* %call37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 3), align 4
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), i32 %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 31), align 4
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i32 %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay41 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %43 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 32), align 8
  %call42 = call i8* @g_ascii_formatd(i8* %arraydecay41, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %43)
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), i8* %call42)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay44 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %45 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 33), align 8
  %call45 = call i8* @g_ascii_formatd(i8* %arraydecay44, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %45)
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), i8* %call45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 34), align 4
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i32 0, i32 0), i32 %47)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay48 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %49 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 4), align 8
  %call49 = call i8* @g_ascii_formatd(i8* %arraydecay48, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %49)
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.86, i32 0, i32 0), i8* %call49)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay51 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %51 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 6), align 8
  %call52 = call i8* @g_ascii_formatd(i8* %arraydecay51, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %51)
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.87, i32 0, i32 0), i8* %call52)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay54 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %53 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 7), align 8
  %call55 = call i8* @g_ascii_formatd(i8* %arraydecay54, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %53)
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.88, i32 0, i32 0), i8* %call55)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay57 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %55 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 22), align 8
  %call58 = call i8* @g_ascii_formatd(i8* %arraydecay57, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %55)
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.89, i32 0, i32 0), i8* %call58)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 8), align 4
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i32 0, i32 0), i32 %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay61 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %59 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 9), align 8
  %call62 = call i8* @g_ascii_formatd(i8* %arraydecay61, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %59)
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.91, i32 0, i32 0), i8* %call62)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 17), align 4
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0), i32 %61)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 25), align 4
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.93, i32 0, i32 0), i32 %63)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 29), align 4
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i32 0, i32 0), i32 %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay67 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %67 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 30), align 8
  %call68 = call i8* @g_ascii_formatd(i8* %arraydecay67, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %67)
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.95, i32 0, i32 0), i8* %call68)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 40), align 4
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.96, i32 0, i32 0), i32 %69)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 41), align 4
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.97, i32 0, i32 0), i32 %71)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay72 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %73 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 35), align 8
  %call73 = call i8* @g_ascii_formatd(i8* %arraydecay72, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %73)
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0), i8* %call73)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay75 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %75 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 10), align 8
  %call76 = call i8* @g_ascii_formatd(i8* %arraydecay75, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %75)
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i32 0, i32 0), i8* %call76)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay78 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %77 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 11), align 8
  %call79 = call i8* @g_ascii_formatd(i8* %arraydecay78, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %77)
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.100, i32 0, i32 0), i8* %call79)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 12), align 4
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.101, i32 0, i32 0), i32 %79)
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 26), align 4
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.102, i32 0, i32 0), i32 %81)
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 14, i32 0))
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 15, i32 0))
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %color, i32 0, i64 0
  %arrayidx85 = getelementptr inbounds [3 x i8], [3 x i8]* %color, i32 0, i64 1
  %arrayidx86 = getelementptr inbounds [3 x i8], [3 x i8]* %color, i32 0, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 16), i8* %arrayidx, i8* %arrayidx85, i8* %arrayidx86)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arrayidx87 = getelementptr inbounds [3 x i8], [3 x i8]* %color, i32 0, i64 0
  %85 = load i8, i8* %arrayidx87, align 1
  %conv = zext i8 %85 to i32
  %arrayidx88 = getelementptr inbounds [3 x i8], [3 x i8]* %color, i32 0, i64 1
  %86 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %86 to i32
  %arrayidx90 = getelementptr inbounds [3 x i8], [3 x i8]* %color, i32 0, i64 2
  %87 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %87 to i32
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.105, i32 0, i32 0), i32 %conv, i32 %conv89, i32 %conv91)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 18), align 4
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i32 0, i32 0), i32 %89)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 21), align 4
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.107, i32 0, i32 0), i32 %91)
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 20), align 4
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.108, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %94 = load i32, i32* %i, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 20), align 4
  %cmp96 = icmp slt i32 %94, %95
  br i1 %cmp96, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx98 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 0
  %arraydecay99 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx98, i32 0, i32 0
  %96 = load i32, i32* %i, align 4
  %idxprom = sext i32 %96 to i64
  %arrayidx100 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx100, i32 0, i32 0
  %97 = load double, double* %x, align 8
  %call101 = call i8* @g_ascii_formatd(i8* %arraydecay99, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %97)
  %arrayidx102 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 1
  %arraydecay103 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx102, i32 0, i32 0
  %98 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %98 to i64
  %arrayidx105 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom104
  %y = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx105, i32 0, i32 1
  %99 = load double, double* %y, align 8
  %call106 = call i8* @g_ascii_formatd(i8* %arraydecay103, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %99)
  %arrayidx107 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 2
  %arraydecay108 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx107, i32 0, i32 0
  %100 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %100 to i64
  %arrayidx110 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom109
  %dir = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx110, i32 0, i32 2
  %101 = load double, double* %dir, align 8
  %call111 = call i8* @g_ascii_formatd(i8* %arraydecay108, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %101)
  %arrayidx112 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 3
  %arraydecay113 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx112, i32 0, i32 0
  %102 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %102 to i64
  %arrayidx115 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom114
  %dx = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx115, i32 0, i32 3
  %103 = load double, double* %dx, align 8
  %call116 = call i8* @g_ascii_formatd(i8* %arraydecay113, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %103)
  %arrayidx117 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 4
  %arraydecay118 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx117, i32 0, i32 0
  %104 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %104 to i64
  %arrayidx120 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom119
  %dy = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx120, i32 0, i32 4
  %105 = load double, double* %dy, align 8
  %call121 = call i8* @g_ascii_formatd(i8* %arraydecay118, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %105)
  %arrayidx122 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 5
  %arraydecay123 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx122, i32 0, i32 0
  %106 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %106 to i64
  %arrayidx125 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom124
  %str = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx125, i32 0, i32 5
  %107 = load double, double* %str, align 8
  %call126 = call i8* @g_ascii_formatd(i8* %arraydecay123, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %107)
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %109 = load i32, i32* %i, align 4
  %arrayidx127 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 0
  %arraydecay128 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx127, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 1
  %arraydecay130 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx129, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 2
  %arraydecay132 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx131, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 3
  %arraydecay134 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx133, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 4
  %arraydecay136 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx135, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 5
  %arraydecay138 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx137, i32 0, i32 0
  %110 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %110 to i64
  %arrayidx140 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom139
  %type = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx140, i32 0, i32 6
  %111 = load i32, i32* %type, align 4
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.109, i32 0, i32 0), i32 %109, i8* %arraydecay128, i8* %arraydecay130, i8* %arraydecay132, i8* %arraydecay134, i8* %arraydecay136, i8* %arraydecay138, i32 %111)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %112 = load i32, i32* %i, align 4
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay142 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %114 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 23), align 8
  %call143 = call i8* @g_ascii_formatd(i8* %arraydecay142, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %114)
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.110, i32 0, i32 0), i8* %call143)
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay145 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %116 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 24), align 8
  %call146 = call i8* @g_ascii_formatd(i8* %arraydecay145, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %116)
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i32 0, i32 0), i8* %call146)
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %118 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 27), align 4
  %call148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.112, i32 0, i32 0), i32 %118)
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %120 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 37), align 4
  %call149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.113, i32 0, i32 0), i32 %120)
  store i32 0, i32* %i, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.186, %for.end
  %121 = load i32, i32* %i, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 37), align 4
  %cmp151 = icmp slt i32 %121, %122
  br i1 %cmp151, label %for.body.153, label %for.end.188

for.body.153:                                     ; preds = %for.cond.150
  %arrayidx154 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 0
  %arraydecay155 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx154, i32 0, i32 0
  %123 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %123 to i64
  %arrayidx157 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 36), i32 0, i64 %idxprom156
  %x158 = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx157, i32 0, i32 0
  %124 = load double, double* %x158, align 8
  %call159 = call i8* @g_ascii_formatd(i8* %arraydecay155, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %124)
  %arrayidx160 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 1
  %arraydecay161 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx160, i32 0, i32 0
  %125 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %125 to i64
  %arrayidx163 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 36), i32 0, i64 %idxprom162
  %y164 = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx163, i32 0, i32 1
  %126 = load double, double* %y164, align 8
  %call165 = call i8* @g_ascii_formatd(i8* %arraydecay161, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %126)
  %arrayidx166 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 2
  %arraydecay167 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx166, i32 0, i32 0
  %127 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %127 to i64
  %arrayidx169 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 36), i32 0, i64 %idxprom168
  %siz = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx169, i32 0, i32 2
  %128 = load double, double* %siz, align 8
  %call170 = call i8* @g_ascii_formatd(i8* %arraydecay167, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %128)
  %arrayidx171 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 3
  %arraydecay172 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx171, i32 0, i32 0
  %129 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %129 to i64
  %arrayidx174 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 36), i32 0, i64 %idxprom173
  %str175 = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx174, i32 0, i32 3
  %130 = load double, double* %str175, align 8
  %call176 = call i8* @g_ascii_formatd(i8* %arraydecay172, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %130)
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %132 = load i32, i32* %i, align 4
  %arrayidx177 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 0
  %arraydecay178 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx177, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 1
  %arraydecay180 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx179, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 2
  %arraydecay182 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx181, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [6 x [39 x i8]], [6 x [39 x i8]]* %vbuf, i32 0, i64 3
  %arraydecay184 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx183, i32 0, i32 0
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.114, i32 0, i32 0), i32 %132, i8* %arraydecay178, i8* %arraydecay180, i8* %arraydecay182, i8* %arraydecay184)
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.body.153
  %133 = load i32, i32* %i, align 4
  %inc187 = add nsw i32 %133, 1
  store i32 %inc187, i32* %i, align 4
  br label %for.cond.150

for.end.188:                                      ; preds = %for.cond.150
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay189 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %135 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 38), align 8
  %call190 = call i8* @g_ascii_formatd(i8* %arraydecay189, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %135)
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.115, i32 0, i32 0), i8* %call190)
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 39), align 4
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.116, i32 0, i32 0), i32 %137)
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %139 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 42), align 4
  %call193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.117, i32 0, i32 0), i32 %139)
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay194 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %141 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 43), align 8
  %call195 = call i8* @g_ascii_formatd(i8* %arraydecay194, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), double %141)
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.118, i32 0, i32 0), i8* %call195)
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call197 = call i32 @fclose(%struct._IO_FILE* %142)
  call void @preset_refresh_presets()
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** @presetlist, align 8
  %144 = load i8*, i8** %fname, align 8
  call void @reselect(%struct._GtkWidget* %143, i8* %144)
  %145 = load i8*, i8** %fname, align 8
  call void @g_free(i8* %145)
  br label %return

return:                                           ; preds = %for.end.188, %if.then.25, %if.then.21, %if.then.9, %if.then
  ret void
}

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #1

declare %struct._GList* @parsepath() #3

declare void @store_values() #3

declare i32 @g_file_test(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal i8* @preset_create_filename(i8* %basename, i8* %dest_dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %basename.addr = alloca i8*, align 8
  %dest_dir.addr = alloca i8*, align 8
  %fullpath = alloca i8*, align 8
  %safe_name = alloca i8*, align 8
  %i = alloca i32, align 4
  %unum = alloca i32, align 4
  %filename = alloca i8*, align 8
  store i8* %basename, i8** %basename.addr, align 8
  store i8* %dest_dir, i8** %dest_dir.addr, align 8
  store i32 1, i32* %unum, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %basename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.preset_create_filename, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.119, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %dest_dir.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.preset_create_filename, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i8*, i8** %dest_dir.addr, align 8
  %call = call i32 @g_path_is_absolute(i8* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.body.7
  br label %if.end.10

if.else.9:                                        ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.preset_create_filename, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  %3 = load i8*, i8** %basename.addr, align 8
  %call12 = call noalias i8* @g_filename_from_utf8(i8* %3, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call12, i8** %safe_name, align 8
  %4 = load i8*, i8** %safe_name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp13 = icmp eq i32 %conv, 46
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.end.11
  %6 = load i8*, i8** %safe_name, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 45, i8* %arrayidx16, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %do.end.11
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8*, i8** %safe_name, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx18, align 1
  %tobool19 = icmp ne i8 %9, 0
  br i1 %tobool19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %10 to i64
  %11 = load i8*, i8** %safe_name, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %11, i64 %idxprom20
  %12 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %12 to i32
  %cmp23 = icmp eq i32 %conv22, 47
  br i1 %cmp23, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %13 to i64
  %14 = load i8*, i8** %safe_name, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %14, i64 %idxprom25
  %15 = load i8, i8* %arrayidx26, align 1
  %idxprom27 = zext i8 %15 to i64
  %16 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %16, i64 %idxprom27
  %17 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %17 to i32
  %and = and i32 %conv29, 256
  %cmp30 = icmp ne i32 %and, 0
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %lor.lhs.false, %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %18 to i64
  %19 = load i8*, i8** %safe_name, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %19, i64 %idxprom33
  store i8 45, i8* %arrayidx34, align 1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i8*, i8** %dest_dir.addr, align 8
  %22 = load i8*, i8** %safe_name, align 8
  %call36 = call noalias i8* (i8*, ...) @g_build_filename(i8* %21, i8* %22, i8* null)
  store i8* %call36, i8** %fullpath, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %23 = load i8*, i8** %fullpath, align 8
  %call37 = call i32 @g_file_test(i8* %23, i32 16)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i8*, i8** %fullpath, align 8
  call void @g_free(i8* %24)
  %25 = load i8*, i8** %safe_name, align 8
  %26 = load i32, i32* %unum, align 4
  %inc39 = add nsw i32 %26, 1
  store i32 %inc39, i32* %unum, align 4
  %call40 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i8* %25, i32 %26)
  store i8* %call40, i8** %filename, align 8
  %27 = load i8*, i8** %dest_dir.addr, align 8
  %28 = load i8*, i8** %filename, align 8
  %call41 = call noalias i8* (i8*, ...) @g_build_filename(i8* %27, i8* %28, i8* null)
  store i8* %call41, i8** %fullpath, align 8
  %29 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %29)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %30 = load i8*, i8** %safe_name, align 8
  call void @g_free(i8* %30)
  %31 = load i8*, i8** %fullpath, align 8
  store i8* %31, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.9, %if.else.4, %if.else
  %32 = load i8*, i8** %retval
  ret i8* %32
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare noalias i8* @g_strescape(i8*, i8*) #3

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #3

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #3

declare void @reselect(%struct._GtkWidget*, i8*) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @g_path_is_absolute(i8*) #3

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #3

declare i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #3

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #3

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #1

declare void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView*, i32) #3

declare void @g_object_unref(i8*) #3

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #3

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new_with_attributes(i8*, %struct._GtkCellRenderer*, ...) #3

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #3

declare void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @presets_list_select_preset(%struct._GtkTreeSelection* %selection, i8* %data) #0 {
entry:
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %data.addr = alloca i8*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %preset_name = alloca i8*, align 8
  %preset_filename = alloca i8*, align 8
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %1, %struct._GtkTreeIter* %iter, i32 1, i8** %preset_name, i32 -1)
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %iter, i32 0, i8** %preset_filename, i32 -1)
  %3 = load i8*, i8** %preset_filename, align 8
  %4 = load i8*, i8** @factory_defaults, align 8
  %call1 = call i32 @strcmp(i8* %3, i8* %4) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @presetnameentry, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_entry_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkEntry*
  %8 = load i8*, i8** %preset_name, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %7, i8* %8)
  %9 = load i8*, i8** @selected_preset_orig_name, align 8
  call void @g_free(i8* %9)
  %10 = load i8*, i8** @selected_preset_filename, align 8
  call void @g_free(i8* %10)
  %11 = load i8*, i8** %preset_name, align 8
  %call6 = call noalias i8* @g_strdup(i8* %11)
  store i8* %call6, i8** @selected_preset_orig_name, align 8
  %12 = load i8*, i8** @selected_preset_filename, align 8
  %call7 = call noalias i8* @g_strdup(i8* %12)
  store i8* %call7, i8** @selected_preset_filename, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %13 = load i8*, i8** %preset_filename, align 8
  call void @read_description(i8* %13)
  %14 = load i8*, i8** %preset_name, align 8
  call void @g_free(i8* %14)
  %15 = load i8*, i8** %preset_filename, align 8
  call void @g_free(i8* %15)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  ret void
}

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #3

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #3

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #3

declare noalias i8* @g_strdup(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @read_description(i8* %fn) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  %rel_fname = alloca i8*, align 8
  %fname = alloca i8*, align 8
  %unprocessed_line = alloca i8*, align 8
  %tmplabel = alloca [4096 x i8], align 16
  store i8* %fn, i8** %fn.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_build_filename(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %0, i8* null)
  store i8* %call, i8** %rel_fname, align 8
  %1 = load i8*, i8** %rel_fname, align 8
  %call1 = call i8* @findfile(i8* %1)
  store i8* %call1, i8** %fname, align 8
  %2 = load i8*, i8** %rel_fname, align 8
  call void @g_free(i8* %2)
  %3 = load i8*, i8** %fname, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end.6, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %fn.addr, align 8
  %5 = load i8*, i8** @factory_defaults, align 8
  %call2 = call i32 @strcmp(i8* %4, i8* %5) #7
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @delete_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %6, i32 0)
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i32 0, i32 0)) #5
  call void @set_preset_description_text(i8* %call5)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @set_preset_description_text(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.13

if.end.6:                                         ; preds = %entry
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @delete_button, align 8
  %8 = load i8*, i8** %fname, align 8
  %call7 = call i32 @can_delete_preset(i8* %8)
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %7, i32 %call7)
  %9 = load i8*, i8** %fname, align 8
  %call8 = call i8* @get_early_line_from_preset(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0))
  store i8* %call8, i8** %unprocessed_line, align 8
  %10 = load i8*, i8** %fname, align 8
  call void @g_free(i8* %10)
  %11 = load i8*, i8** %unprocessed_line, align 8
  %tobool9 = icmp ne i8* %11, null
  br i1 %tobool9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.end.6
  %12 = load i8*, i8** %unprocessed_line, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %tmplabel, i32 0, i32 0
  call void @parse_desc(i8* %12, i8* %arraydecay, i64 4096)
  %13 = load i8*, i8** %unprocessed_line, align 8
  call void @g_free(i8* %13)
  %arraydecay11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %tmplabel, i32 0, i32 0
  call void @set_preset_description_text(i8* %arraydecay11)
  br label %if.end.13

if.else.12:                                       ; preds = %if.end.6
  call void @set_preset_description_text(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.else.12, %if.then.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_preset_description_text(i8* %text) #0 {
entry:
  %text.addr = alloca i8*, align 8
  store i8* %text, i8** %text.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @presetdesclabel, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_label_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkLabel*
  %3 = load i8*, i8** %text.addr, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %2, i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @can_delete_preset(i8* %abs) #0 {
entry:
  %abs.addr = alloca i8*, align 8
  %user_data_dir = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %abs, i8** %abs.addr, align 8
  %call = call i8* @gimp_directory() #6
  %call1 = call noalias i8* (i8*, ...) @g_strconcat(i8* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i32 0, i32 0), i8* null)
  store i8* %call1, i8** %user_data_dir, align 8
  %0 = load i8*, i8** %abs.addr, align 8
  %1 = load i8*, i8** %user_data_dir, align 8
  %2 = load i8*, i8** %user_data_dir, align 8
  %call2 = call i64 @strlen(i8* %2) #7
  %call3 = call i32 @strncmp(i8* %0, i8* %1, i64 %call2) #7
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %ret, align 4
  %3 = load i8*, i8** %user_data_dir, align 8
  call void @g_free(i8* %3)
  %4 = load i32, i32* %ret, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i8* @get_early_line_from_preset(i8* %full_path, i8* %prefix) #0 {
entry:
  %retval = alloca i8*, align 8
  %full_path.addr = alloca i8*, align 8
  %prefix.addr = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %line = alloca [4096 x i8], align 16
  %prefix_len = alloca i32, align 4
  %line_idx = alloca i32, align 4
  store i8* %full_path, i8** %full_path.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  %0 = load i8*, i8** %prefix.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %prefix_len, align 4
  %1 = load i8*, i8** %full_path.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %f, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i8* @fgets(i8* %arraydecay, i32 10, %struct._IO_FILE* %3)
  %arraydecay3 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %call4 = call i32 @strncmp(i8* %arraydecay3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i64 4) #7
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.23, label %if.then.6

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %line_idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %4 = load i32, i32* %line_idx, align 4
  %cmp = icmp slt i32 %4, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call9 = call i8* @fgets(i8* %arraydecay8, i32 4096, %struct._IO_FILE* %5)
  %tobool10 = icmp ne i8* %call9, null
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %arraydecay12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %call13 = call i8* @g_strchomp(i8* %arraydecay12)
  %arraydecay14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %6 = load i8*, i8** %prefix.addr, align 8
  %7 = load i32, i32* %prefix_len, align 4
  %conv15 = sext i32 %7 to i64
  %call16 = call i32 @strncmp(i8* %arraydecay14, i8* %6, i64 %conv15) #7
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.22, label %if.then.18

if.then.18:                                       ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call19 = call i32 @fclose(%struct._IO_FILE* %8)
  %arraydecay20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %9 = load i32, i32* %prefix_len, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay20, i64 %idx.ext
  %call21 = call noalias i8* @g_strdup(i8* %add.ptr)
  store i8* %call21, i8** %retval
  br label %return

if.end.22:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %10 = load i32, i32* %line_idx, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %line_idx, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.11, %for.cond
  br label %if.end.23

if.end.23:                                        ; preds = %for.end, %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call24 = call i32 @fclose(%struct._IO_FILE* %11)
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.23, %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.18
  %12 = load i8*, i8** %retval
  ret i8* %12
}

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #3

declare noalias i8* @g_strconcat(i8*, ...) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #3

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #3

declare void @restore_values() #3

declare i32 @g_unlink(i8*) #3

declare void @gtk_list_store_clear(%struct._GtkListStore*) #3

declare void @readdirintolist_extended(i8*, %struct._GtkWidget*, i8*, i32, i8* (i8*, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @get_object_name(i8* %dir, i8* %filename, i8* %context) #0 {
entry:
  %dir.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %context.addr = alloca i8*, align 8
  %ret = alloca i8*, align 8
  %unprocessed_line = alloca i8*, align 8
  %full_path = alloca i8*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  store i8* null, i8** %ret, align 8
  store i8* null, i8** %unprocessed_line, align 8
  store i8* null, i8** %full_path, align 8
  %0 = load i8*, i8** %dir.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_build_filename(i8* %0, i8* %1, i8* null)
  store i8* %call, i8** %full_path, align 8
  %2 = load i8*, i8** %full_path, align 8
  %call1 = call i8* @get_early_line_from_preset(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0))
  store i8* %call1, i8** %unprocessed_line, align 8
  %3 = load i8*, i8** %unprocessed_line, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %unprocessed_line, align 8
  %call2 = call noalias i8* @g_strcompress(i8* %4)
  store i8* %call2, i8** %ret, align 8
  %5 = load i8*, i8** %unprocessed_line, align 8
  call void @g_free(i8* %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %full_path, align 8
  %call3 = call noalias i8* @g_filename_display_basename(i8* %6)
  store i8* %call3, i8** %ret, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i8*, i8** %full_path, align 8
  call void @g_free(i8* %7)
  %8 = load i8*, i8** %ret, align 8
  ret i8* %8
}

declare noalias i8* @g_filename_display_basename(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
