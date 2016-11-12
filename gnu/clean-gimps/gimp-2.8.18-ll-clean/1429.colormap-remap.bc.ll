; ModuleID = './plug-ins/common/colormap-remap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkUIManagerPrivate = type opaque
%struct._GtkActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()* }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
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
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpHSV = type { double, double, double, double }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkIconView = type { %struct._GtkContainer, %struct._GtkIconViewPrivate* }
%struct._GtkIconViewPrivate = type opaque
%struct._GtkCellLayout = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GdkRegion = type opaque
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GtkTreeSortable = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.remap_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"num-colors\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Length of 'map' argument (should be equal to colormap size)\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Remap array for the colormap\00", align 1
@query.swap_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0) }], align 16
@.str.10 = private unnamed_addr constant [40 x i8] c"The run mode { RUN-NONINTERACTIVE (1) }\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"index1\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"First index in the colormap\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"index2\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Second (other) index in the colormap\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"plug-in-colormap-remap\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Rearrange the colormap\00", align 1
@.str.17 = private unnamed_addr constant [134 x i8] c"This procedure takes an indexed image and lets you alter the positions of colors in the colormap without visually changing the image.\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Mukund Sivaraman <muks@mukund.org>\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"June 2006\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"R_earrange Colormap...\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"INDEXED*\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"<Image>/Colors/Map/Colormap\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"<Colormap>\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"gimp-colormap\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"plug-in-colormap-swap\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"Swap two colors in the colormap\00", align 1
@.str.27 = private unnamed_addr constant [137 x i8] c"This procedure takes an indexed image and lets you swap the positions of two colors in the colormap without visually changing the image.\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"_Swap Colors\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.29 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"colormap-remap\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Rearrange Colormap\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"gimp-colormap-remap\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@__func__.remap_dialog = private unnamed_addr constant [13 x i8] c"remap_dialog\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"(ncols > 0) && (ncols <= 256)\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@reverse_order = internal global [256 x i32] zeroinitializer, align 16
@remap_ui = internal global %struct._GtkUIManager* null, align 8
@.str.39 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"size-points\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"ypad\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"popup-menu\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.47 = private unnamed_addr constant [136 x i8] c"Drag and drop colors to rearrange the colormap.  The numbers shown are the original indices.  Right-click for a menu with sort options.\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@remap_run = internal global i32 0, align 4
@remap_ui_manager_new.actions = internal constant [5 x %struct._GtkActionEntry] [%struct._GtkActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkTreeSortable*)* @remap_sort_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkTreeSortable*)* @remap_sort_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkTreeSortable*)* @remap_sort_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkListStore*)* @remap_reverse_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkTreeSortable*)* @remap_reset_callback to void ()*) }], align 16
@.str.49 = private unnamed_addr constant [9 x i8] c"sort-hue\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"Sort on Hue\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"sort-sat\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"Sort on Saturation\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"sort-val\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"Sort on Value\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"Reverse Order\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"Reset Order\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"Actions\00", align 1
@.str.60 = private unnamed_addr constant [231 x i8] c"<ui>  <popup name=\22remap-popup\22>    <menuitem action=\22sort-hue\22 />    <menuitem action=\22sort-sat\22 />    <menuitem action=\22sort-val\22 />    <separator />    <menuitem action=\22reverse\22 />    <menuitem action=\22reset\22 />  </popup></ui>\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"error parsing ui: %s\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"sort-\00", align 1
@__func__.remap_sort_callback = private unnamed_addr constant [20 x i8] c"remap_sort_callback\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"g_str_has_prefix (name, \22sort-\22)\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"sat\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"/remap-popup\00", align 1
@__func__.remap = private unnamed_addr constant [6 x i8] c"remap\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"cmap != NULL\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"ncols > 0\00", align 1
@.str.70 = private unnamed_addr constant [49 x i8] c"Invalid remap array was passed to remap function\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"Rearranging the colormap\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.remap_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0))
  %call1 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0))
  %call2 = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.swap_args, i32 0, i32 0), %struct._GimpParamDef* null)
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
  %image_ID = alloca i32, align 4
  %status = alloca i32, align 4
  %run_mode = alloca i32, align 4
  %map = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %n_cols = alloca i32, align 4
  %index1 = alloca i8, align 1
  %index2 = alloca i8, align 1
  %n_cols104 = alloca i32, align 4
  %tmp = alloca i8, align 1
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_image, align 4
  store i32 %6, i32* %image_ID, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %conv = trunc i32 %8 to i8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* %map, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8*, i8** %name.addr, align 8
  %call7 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0)) #7
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %12 = load i32, i32* %image_ID, align 4
  %call10 = call i32 @gimp_image_base_type(i32 %12)
  %cmp11 = icmp ne i32 %call10, 2
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %13 = load i32, i32* %status, align 4
  %cmp14 = icmp eq i32 %13, 3
  br i1 %cmp14, label %if.then.16, label %if.end.81

if.then.16:                                       ; preds = %if.end
  %14 = load i32, i32* %image_ID, align 4
  %call17 = call i8* @gimp_image_get_colormap(i32 %14, i32* %n_cols)
  call void @g_free(i8* %call17)
  %15 = load i32, i32* %run_mode, align 4
  switch i32 %15, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.21
    i32 2, label %sw.bb.54
  ]

sw.bb:                                            ; preds = %if.then.16
  %16 = load i32, i32* %image_ID, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %map, i32 0, i32 0
  %call18 = call i32 @remap_dialog(i32 %16, i8* %arraydecay)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %sw.bb
  store i32 4, i32* %status, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %sw.bb
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.then.16
  %17 = load i32, i32* %nparams.addr, align 4
  %cmp22 = icmp ne i32 %17, 5
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %sw.bb.21
  store i32 1, i32* %status, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %sw.bb.21
  %18 = load i32, i32* %status, align 4
  %cmp26 = icmp eq i32 %18, 3
  br i1 %cmp26, label %if.then.28, label %if.end.53

if.then.28:                                       ; preds = %if.end.25
  %19 = load i32, i32* %n_cols, align 4
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 3
  %data30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx29, i32 0, i32 1
  %d_int3231 = bitcast %union._GimpParamData* %data30 to i32*
  %21 = load i32, i32* %d_int3231, align 4
  %cmp32 = icmp ne i32 %19, %21
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.28
  store i32 1, i32* %status, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.28
  %22 = load i32, i32* %status, align 4
  %cmp36 = icmp eq i32 %22, 3
  br i1 %cmp36, label %if.then.38, label %if.end.52

if.then.38:                                       ; preds = %if.end.35
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.49, %if.then.38
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %n_cols, align 4
  %cmp40 = icmp slt i32 %23, %24
  br i1 %cmp40, label %for.body.42, label %for.end.51

for.body.42:                                      ; preds = %for.cond.39
  %25 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %25 to i64
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 4
  %data45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx44, i32 0, i32 1
  %d_int8array = bitcast %union._GimpParamData* %data45 to i8**
  %27 = load i8*, i8** %d_int8array, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %27, i64 %idxprom43
  %28 = load i8, i8* %arrayidx46, align 1
  %29 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %29 to i64
  %arrayidx48 = getelementptr inbounds [256 x i8], [256 x i8]* %map, i32 0, i64 %idxprom47
  store i8 %28, i8* %arrayidx48, align 1
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.42
  %30 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %30, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.39

for.end.51:                                       ; preds = %for.cond.39
  br label %if.end.52

if.end.52:                                        ; preds = %for.end.51, %if.end.35
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.25
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.then.16
  %arraydecay55 = getelementptr inbounds [256 x i8], [256 x i8]* %map, i32 0, i32 0
  %call56 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay55)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.16, %sw.bb.54, %if.end.53, %if.end.20
  %31 = load i32, i32* %status, align 4
  %cmp57 = icmp eq i32 %31, 3
  br i1 %cmp57, label %if.then.59, label %if.end.80

if.then.59:                                       ; preds = %sw.epilog
  %32 = load i32, i32* %image_ID, align 4
  %33 = load i32, i32* %n_cols, align 4
  %arraydecay60 = getelementptr inbounds [256 x i8], [256 x i8]* %map, i32 0, i32 0
  %call61 = call i32 @remap(i32 %32, i32 %33, i8* %arraydecay60)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.then.59
  store i32 0, i32* %status, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.then.59
  %34 = load i32, i32* %status, align 4
  %cmp65 = icmp eq i32 %34, 3
  br i1 %cmp65, label %if.then.67, label %if.end.79

if.then.67:                                       ; preds = %if.end.64
  %35 = load i32, i32* %run_mode, align 4
  %cmp68 = icmp eq i32 %35, 0
  br i1 %cmp68, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.then.67
  %arraydecay71 = getelementptr inbounds [256 x i8], [256 x i8]* %map, i32 0, i32 0
  %call72 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay71, i32 256)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.then.67
  %36 = load i32, i32* %run_mode, align 4
  %cmp74 = icmp ne i32 %36, 1
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.73
  %call77 = call i32 @gimp_displays_flush()
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.end.73
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.64
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %sw.epilog
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end
  br label %if.end.136

if.else:                                          ; preds = %for.end
  %37 = load i8*, i8** %name.addr, align 8
  %call82 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0)) #7
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %if.then.85, label %if.else.134

if.then.85:                                       ; preds = %if.else
  %38 = load i32, i32* %image_ID, align 4
  %call86 = call i32 @gimp_image_base_type(i32 %38)
  %cmp87 = icmp ne i32 %call86, 2
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.85
  store i32 0, i32* %status, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.then.85
  %39 = load i32, i32* %status, align 4
  %cmp91 = icmp eq i32 %39, 3
  br i1 %cmp91, label %if.then.93, label %if.end.133

if.then.93:                                       ; preds = %if.end.90
  %40 = load i32, i32* %run_mode, align 4
  %cmp94 = icmp eq i32 %40, 1
  br i1 %cmp94, label %land.lhs.true, label %if.else.131

land.lhs.true:                                    ; preds = %if.then.93
  %41 = load i32, i32* %nparams.addr, align 4
  %cmp96 = icmp eq i32 %41, 5
  br i1 %cmp96, label %if.then.98, label %if.else.131

if.then.98:                                       ; preds = %land.lhs.true
  %42 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx99 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %42, i64 3
  %data100 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx99, i32 0, i32 1
  %d_int8 = bitcast %union._GimpParamData* %data100 to i8*
  %43 = load i8, i8* %d_int8, align 1
  store i8 %43, i8* %index1, align 1
  %44 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx101 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %44, i64 4
  %data102 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx101, i32 0, i32 1
  %d_int8103 = bitcast %union._GimpParamData* %data102 to i8*
  %45 = load i8, i8* %d_int8103, align 1
  store i8 %45, i8* %index2, align 1
  %46 = load i32, i32* %image_ID, align 4
  %call105 = call i8* @gimp_image_get_colormap(i32 %46, i32* %n_cols104)
  call void @g_free(i8* %call105)
  %47 = load i8, i8* %index1, align 1
  %conv106 = zext i8 %47 to i32
  %48 = load i32, i32* %n_cols104, align 4
  %cmp107 = icmp sge i32 %conv106, %48
  br i1 %cmp107, label %if.then.112, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.98
  %49 = load i8, i8* %index2, align 1
  %conv109 = zext i8 %49 to i32
  %50 = load i32, i32* %n_cols104, align 4
  %cmp110 = icmp sge i32 %conv109, %50
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %lor.lhs.false, %if.then.98
  store i32 1, i32* %status, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %lor.lhs.false
  %51 = load i32, i32* %status, align 4
  %cmp114 = icmp eq i32 %51, 3
  br i1 %cmp114, label %if.then.116, label %if.end.130

if.then.116:                                      ; preds = %if.end.113
  %52 = load i8, i8* %index1, align 1
  %idxprom117 = zext i8 %52 to i64
  %arrayidx118 = getelementptr inbounds [256 x i8], [256 x i8]* %map, i32 0, i64 %idxprom117
  %53 = load i8, i8* %arrayidx118, align 1
  store i8 %53, i8* %tmp, align 1
  %54 = load i8, i8* %index2, align 1
  %idxprom119 = zext i8 %54 to i64
  %arrayidx120 = getelementptr inbounds [256 x i8], [256 x i8]* %map, i32 0, i64 %idxprom119
  %55 = load i8, i8* %arrayidx120, align 1
  %56 = load i8, i8* %index1, align 1
  %idxprom121 = zext i8 %56 to i64
  %arrayidx122 = getelementptr inbounds [256 x i8], [256 x i8]* %map, i32 0, i64 %idxprom121
  store i8 %55, i8* %arrayidx122, align 1
  %57 = load i8, i8* %tmp, align 1
  %58 = load i8, i8* %index2, align 1
  %idxprom123 = zext i8 %58 to i64
  %arrayidx124 = getelementptr inbounds [256 x i8], [256 x i8]* %map, i32 0, i64 %idxprom123
  store i8 %57, i8* %arrayidx124, align 1
  %59 = load i32, i32* %image_ID, align 4
  %60 = load i32, i32* %n_cols104, align 4
  %arraydecay125 = getelementptr inbounds [256 x i8], [256 x i8]* %map, i32 0, i32 0
  %call126 = call i32 @remap(i32 %59, i32 %60, i8* %arraydecay125)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.end.129, label %if.then.128

if.then.128:                                      ; preds = %if.then.116
  store i32 0, i32* %status, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.then.116
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.end.113
  br label %if.end.132

if.else.131:                                      ; preds = %land.lhs.true, %if.then.93
  store i32 1, i32* %status, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.131, %if.end.130
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.90
  br label %if.end.135

if.else.134:                                      ; preds = %if.else
  store i32 1, i32* %status, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.134, %if.end.133
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.81
  %61 = load i32, i32* %status, align 4
  store i32 %61, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_image_base_type(i32) #1

declare void @g_free(i8*) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @remap_dialog(i32 %image_ID, i8* %map) #0 {
entry:
  %retval = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %map.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %iconview = alloca %struct._GtkWidget*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %renderer = alloca %struct._GtkCellRenderer*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %cmap = alloca i8*, align 8
  %ncols = alloca i32, align 4
  %i = alloca i32, align 4
  %valid = alloca i32, align 4
  %rgb = alloca %struct._GimpRGB, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  %index = alloca i32, align 4
  %text = alloca i8*, align 8
  %index72 = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %map, i8** %map.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 1, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load i32, i32* %image_ID.addr, align 4
  %call14 = call i8* @gimp_image_get_colormap(i32 %15, i32* %ncols)
  store i8* %call14, i8** %cmap, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %16 = load i32, i32* %ncols, align 4
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %17 = load i32, i32* %ncols, align 4
  %cmp15 = icmp sle i32 %17, 256
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.remap_dialog, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call16 = call i64 @gimp_rgb_get_type() #6
  %call17 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 6, i64 24, i64 64, i64 %call16, i64 60, i64 60, i64 60)
  store %struct._GtkListStore* %call17, %struct._GtkListStore** %store, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %ncols, align 4
  %cmp18 = icmp slt i32 %18, %19
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load i8*, i8** %map.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom
  %22 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %22 to i32
  store i32 %conv, i32* %index, align 4
  %23 = load i32, i32* %index, align 4
  %call19 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 %23)
  store i8* %call19, i8** %text, align 8
  %24 = load i32, i32* %index, align 4
  %mul = mul nsw i32 %24, 3
  %idxprom20 = sext i32 %mul to i64
  %25 = load i8*, i8** %cmap, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %25, i64 %idxprom20
  %26 = load i8, i8* %arrayidx21, align 1
  %27 = load i32, i32* %index, align 4
  %mul22 = mul nsw i32 %27, 3
  %add = add nsw i32 %mul22, 1
  %idxprom23 = sext i32 %add to i64
  %28 = load i8*, i8** %cmap, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %28, i64 %idxprom23
  %29 = load i8, i8* %arrayidx24, align 1
  %30 = load i32, i32* %index, align 4
  %mul25 = mul nsw i32 %30, 3
  %add26 = add nsw i32 %mul25, 2
  %idxprom27 = sext i32 %add26 to i64
  %31 = load i8*, i8** %cmap, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %31, i64 %idxprom27
  %32 = load i8, i8* %arrayidx28, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %rgb, i8 zeroext %26, i8 zeroext %29, i8 zeroext %32)
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv)
  %33 = load i32, i32* %ncols, align 4
  %34 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %33, %34
  %sub29 = sub nsw i32 %sub, 1
  %35 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %35 to i64
  %arrayidx31 = getelementptr inbounds [256 x i32], [256 x i32]* @reverse_order, i32 0, i64 %idxprom30
  store i32 %sub29, i32* %arrayidx31, align 4
  %36 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %36, %struct._GtkTreeIter* %iter)
  %37 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %38 = load i32, i32* %index, align 4
  %39 = load i8*, i8** %text, align 8
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  %40 = load double, double* %h, align 8
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 1
  %41 = load double, double* %s, align 8
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 2
  %42 = load double, double* %v, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %37, %struct._GtkTreeIter* %iter, i32 0, i32 %38, i32 1, i8* %39, i32 2, %struct._GimpRGB* %rgb, i32 3, double %40, i32 4, double %41, i32 5, double %42, i32 -1)
  %43 = load i8*, i8** %text, align 8
  call void @g_free(i8* %43)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i8*, i8** %cmap, align 8
  call void @g_free(i8* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %47 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %call32 = call %struct._GtkUIManager* @remap_ui_manager_new(%struct._GtkWidget* %46, %struct._GtkListStore* %47)
  store %struct._GtkUIManager* %call32, %struct._GtkUIManager** @remap_ui, align 8
  %48 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %49 = bitcast %struct._GtkListStore* %48 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_tree_model_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call33)
  %50 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTreeModel*
  %call35 = call %struct._GtkWidget* @gtk_icon_view_new_with_model(%struct._GtkTreeModel* %50)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %iconview, align 8
  %51 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %52 = bitcast %struct._GtkListStore* %51 to i8*
  call void @g_object_unref(i8* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call36)
  %55 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %iconview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %55, %struct._GtkWidget* %56, i32 1, i32 1, i32 0)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %iconview, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_icon_view_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call38)
  %59 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkIconView*
  call void @gtk_icon_view_set_selection_mode(%struct._GtkIconView* %59, i32 1)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %iconview, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_icon_view_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call40)
  %62 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkIconView*
  call void @gtk_icon_view_set_orientation(%struct._GtkIconView* %62, i32 1)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %iconview, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_icon_view_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call42)
  %65 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkIconView*
  call void @gtk_icon_view_set_columns(%struct._GtkIconView* %65, i32 16)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %iconview, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_icon_view_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call44)
  %68 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkIconView*
  call void @gtk_icon_view_set_row_spacing(%struct._GtkIconView* %68, i32 0)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %iconview, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_icon_view_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call46)
  %71 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkIconView*
  call void @gtk_icon_view_set_column_spacing(%struct._GtkIconView* %71, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %iconview, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_icon_view_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call48)
  %74 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkIconView*
  call void @gtk_icon_view_set_reorderable(%struct._GtkIconView* %74, i32 1)
  %call50 = call %struct._GtkCellRenderer* @gimp_cell_renderer_color_new()
  store %struct._GtkCellRenderer* %call50, %struct._GtkCellRenderer** %renderer, align 8
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %iconview, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_cell_layout_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call51)
  %77 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkCellLayout*
  %78 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  call void @gtk_cell_layout_pack_start(%struct._GtkCellLayout* %77, %struct._GtkCellRenderer* %78, i32 1)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %iconview, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_cell_layout_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call53)
  %81 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkCellLayout*
  %82 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  call void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) @gtk_cell_layout_set_attributes(%struct._GtkCellLayout* %81, %struct._GtkCellRenderer* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 2, i8* null)
  %83 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %84 = bitcast %struct._GtkCellRenderer* %83 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 24, i8* null)
  %call55 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call55, %struct._GtkCellRenderer** %renderer, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %iconview, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_cell_layout_get_type() #6
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call56)
  %87 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkCellLayout*
  %88 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  call void @gtk_cell_layout_pack_start(%struct._GtkCellLayout* %87, %struct._GtkCellRenderer* %88, i32 1)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %iconview, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_cell_layout_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call58)
  %91 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkCellLayout*
  %92 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  call void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) @gtk_cell_layout_set_attributes(%struct._GtkCellLayout* %91, %struct._GtkCellRenderer* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 1, i8* null)
  %93 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %94 = bitcast %struct._GtkCellRenderer* %93 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), double 6.000000e+00, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), double 5.000000e-01, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 0, i8* null)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %iconview, align 8
  %96 = bitcast %struct._GtkWidget* %95 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @remap_popup_menu to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %iconview, align 8
  %98 = bitcast %struct._GtkWidget* %97 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @remap_button_press to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.47, i32 0, i32 0)) #5
  %call63 = call %struct._GtkWidget* @gimp_hint_box_new(i8* %call62)
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %box, align 8
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_box_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call64)
  %101 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkBox*
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %101, %struct._GtkWidget* %102, i32 0, i32 0, i32 0)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %105 = bitcast %struct._GtkWidget* %104 to i8*
  %106 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %107 = bitcast %struct._GtkListStore* %106 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GtkTreeSortable*)* @remap_response to void ()*), i8* %107, void (i8*, %struct._GClosure*)* null, i32 0)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show_all(%struct._GtkWidget* %108)
  call void @gtk_main()
  store i32 0, i32* %i, align 4
  %109 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %110 = bitcast %struct._GtkListStore* %109 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_tree_model_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call67)
  %111 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkTreeModel*
  %call69 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %111, %struct._GtkTreeIter* %iter)
  store i32 %call69, i32* %valid, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.79, %for.end
  %112 = load i32, i32* %valid, align 4
  %tobool = icmp ne i32 %112, 0
  br i1 %tobool, label %for.body.71, label %for.end.83

for.body.71:                                      ; preds = %for.cond.70
  %113 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %114 = bitcast %struct._GtkListStore* %113 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_tree_model_get_type() #6
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call73)
  %115 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %115, %struct._GtkTreeIter* %iter, i32 0, i32* %index72, i32 -1)
  %116 = load i32, i32* %index72, align 4
  %conv75 = trunc i32 %116 to i8
  %117 = load i32, i32* %i, align 4
  %inc76 = add nsw i32 %117, 1
  store i32 %inc76, i32* %i, align 4
  %idxprom77 = sext i32 %117 to i64
  %118 = load i8*, i8** %map.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %118, i64 %idxprom77
  store i8 %conv75, i8* %arrayidx78, align 1
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.71
  %119 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %120 = bitcast %struct._GtkListStore* %119 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_tree_model_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call80)
  %121 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkTreeModel*
  %call82 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %121, %struct._GtkTreeIter* %iter)
  store i32 %call82, i32* %valid, align 4
  br label %for.cond.70

for.end.83:                                       ; preds = %for.cond.70
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %122)
  %123 = load i32, i32* @remap_run, align 4
  store i32 %123, i32* %retval
  br label %return

return:                                           ; preds = %for.end.83, %if.else
  %124 = load i32, i32* %retval
  ret i32 %124
}

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @remap(i32 %image_ID, i32 %num_colors, i8* %map) #0 {
entry:
  %retval = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %num_colors.addr = alloca i32, align 4
  %map.addr = alloca i8*, align 8
  %cmap = alloca i8*, align 8
  %new_cmap = alloca i8*, align 8
  %new_cmap_i = alloca i8*, align 8
  %ncols = alloca i32, align 4
  %num_layers = alloca i32, align 4
  %layers = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %pixels = alloca i64, align 8
  %processed = alloca i64, align 8
  %pixel_map = alloca [256 x i8], align 16
  %valid = alloca [256 x i32], align 16
  %drawable = alloca %struct._GimpDrawable*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytespp = alloca i32, align 4
  %update = alloca i32, align 4
  %pr = alloca i8*, align 8
  %src_row = alloca i8*, align 8
  %dest_row = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %num_colors, i32* %num_colors.addr, align 4
  store i8* %map, i8** %map.addr, align 8
  store i64 0, i64* %pixels, align 8
  store i64 0, i64* %processed, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i8* @gimp_image_get_colormap(i32 %0, i32* %ncols)
  store i8* %call, i8** %cmap, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i8*, i8** %cmap, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__func__.remap, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i32, i32* %ncols, align 4
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__func__.remap, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %3 = load i32, i32* %num_colors.addr, align 4
  %4 = load i32, i32* %ncols, align 4
  %cmp7 = icmp ne i32 %3, %4
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %do.end.6
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.70, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call9)
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %do.end.6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %ncols, align 4
  %cmp11 = icmp slt i32 %5, %6
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %valid, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.31, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %ncols, align 4
  %cmp13 = icmp slt i32 %9, %10
  br i1 %cmp13, label %for.body.14, label %for.end.33

for.body.14:                                      ; preds = %for.cond.12
  %11 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %11 to i64
  %12 = load i8*, i8** %map.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 %idxprom15
  %13 = load i8, i8* %arrayidx16, align 1
  %conv = zext i8 %13 to i32
  %14 = load i32, i32* %ncols, align 4
  %cmp17 = icmp sge i32 %conv, %14
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %for.body.14
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.70, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call20)
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %for.body.14
  %15 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %15 to i64
  %16 = load i8*, i8** %map.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %16, i64 %idxprom22
  %17 = load i8, i8* %arrayidx23, align 1
  %idxprom24 = zext i8 %17 to i64
  %arrayidx25 = getelementptr inbounds [256 x i32], [256 x i32]* %valid, i32 0, i64 %idxprom24
  store i32 1, i32* %arrayidx25, align 4
  %18 = load i32, i32* %i, align 4
  %conv26 = trunc i32 %18 to i8
  %19 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %19 to i64
  %20 = load i8*, i8** %map.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %20, i64 %idxprom27
  %21 = load i8, i8* %arrayidx28, align 1
  %idxprom29 = zext i8 %21 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], [256 x i8]* %pixel_map, i32 0, i64 %idxprom29
  store i8 %conv26, i8* %arrayidx30, align 1
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.21
  %22 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %22, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.12

for.end.33:                                       ; preds = %for.cond.12
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.45, %for.end.33
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %ncols, align 4
  %cmp35 = icmp slt i32 %23, %24
  br i1 %cmp35, label %for.body.37, label %for.end.47

for.body.37:                                      ; preds = %for.cond.34
  %25 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %25 to i64
  %arrayidx39 = getelementptr inbounds [256 x i32], [256 x i32]* %valid, i32 0, i64 %idxprom38
  %26 = load i32, i32* %arrayidx39, align 4
  %cmp40 = icmp eq i32 %26, 0
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %for.body.37
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.70, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call43)
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %for.body.37
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %27 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %27, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.34

for.end.47:                                       ; preds = %for.cond.34
  %28 = load i32, i32* %ncols, align 4
  %mul = mul nsw i32 %28, 3
  %conv48 = sext i32 %mul to i64
  %call49 = call noalias i8* @g_malloc_n(i64 %conv48, i64 1)
  store i8* %call49, i8** %new_cmap, align 8
  %29 = load i8*, i8** %new_cmap, align 8
  store i8* %29, i8** %new_cmap_i, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.67, %for.end.47
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %ncols, align 4
  %cmp51 = icmp slt i32 %30, %31
  br i1 %cmp51, label %for.body.53, label %for.end.69

for.body.53:                                      ; preds = %for.cond.50
  %32 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %32 to i64
  %33 = load i8*, i8** %map.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %33, i64 %idxprom54
  %34 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %34 to i32
  %mul57 = mul nsw i32 %conv56, 3
  store i32 %mul57, i32* %j, align 4
  %35 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %35 to i64
  %36 = load i8*, i8** %cmap, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %36, i64 %idxprom58
  %37 = load i8, i8* %arrayidx59, align 1
  %38 = load i8*, i8** %new_cmap_i, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %new_cmap_i, align 8
  store i8 %37, i8* %38, align 1
  %39 = load i32, i32* %j, align 4
  %add = add nsw i32 %39, 1
  %idxprom60 = sext i32 %add to i64
  %40 = load i8*, i8** %cmap, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %40, i64 %idxprom60
  %41 = load i8, i8* %arrayidx61, align 1
  %42 = load i8*, i8** %new_cmap_i, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr62, i8** %new_cmap_i, align 8
  store i8 %41, i8* %42, align 1
  %43 = load i32, i32* %j, align 4
  %add63 = add nsw i32 %43, 2
  %idxprom64 = sext i32 %add63 to i64
  %44 = load i8*, i8** %cmap, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %44, i64 %idxprom64
  %45 = load i8, i8* %arrayidx65, align 1
  %46 = load i8*, i8** %new_cmap_i, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr66, i8** %new_cmap_i, align 8
  store i8 %45, i8* %46, align 1
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.53
  %47 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %47, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond.50

for.end.69:                                       ; preds = %for.cond.50
  %48 = load i32, i32* %image_ID.addr, align 4
  %call70 = call i32 @gimp_image_undo_group_start(i32 %48)
  %49 = load i32, i32* %image_ID.addr, align 4
  %50 = load i8*, i8** %new_cmap, align 8
  %51 = load i32, i32* %ncols, align 4
  %call71 = call i32 @gimp_image_set_colormap(i32 %49, i8* %50, i32 %51)
  %52 = load i8*, i8** %cmap, align 8
  call void @g_free(i8* %52)
  %53 = load i8*, i8** %new_cmap, align 8
  call void @g_free(i8* %53)
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i32 0, i32 0)) #5
  %call73 = call i32 @gimp_progress_init(i8* %call72)
  %54 = load i32, i32* %image_ID.addr, align 4
  %call74 = call i32* @gimp_image_get_layers(i32 %54, i32* %num_layers)
  store i32* %call74, i32** %layers, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.88, %for.end.69
  %55 = load i32, i32* %k, align 4
  %56 = load i32, i32* %num_layers, align 4
  %cmp76 = icmp slt i32 %55, %56
  br i1 %cmp76, label %for.body.78, label %for.end.90

for.body.78:                                      ; preds = %for.cond.75
  %57 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %57 to i64
  %58 = load i32*, i32** %layers, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %58, i64 %idxprom79
  %59 = load i32, i32* %arrayidx80, align 4
  %call81 = call i32 @gimp_drawable_width(i32 %59)
  %60 = load i32, i32* %k, align 4
  %idxprom82 = sext i32 %60 to i64
  %61 = load i32*, i32** %layers, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %61, i64 %idxprom82
  %62 = load i32, i32* %arrayidx83, align 4
  %call84 = call i32 @gimp_drawable_height(i32 %62)
  %mul85 = mul nsw i32 %call81, %call84
  %conv86 = sext i32 %mul85 to i64
  %63 = load i64, i64* %pixels, align 8
  %add87 = add nsw i64 %63, %conv86
  store i64 %add87, i64* %pixels, align 8
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.78
  %64 = load i32, i32* %k, align 4
  %inc89 = add nsw i32 %64, 1
  store i32 %inc89, i32* %k, align 4
  br label %for.cond.75

for.end.90:                                       ; preds = %for.cond.75
  store i32 0, i32* %k, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.165, %for.end.90
  %65 = load i32, i32* %k, align 4
  %66 = load i32, i32* %num_layers, align 4
  %cmp92 = icmp slt i32 %65, %66
  br i1 %cmp92, label %for.body.94, label %for.end.167

for.body.94:                                      ; preds = %for.cond.91
  %67 = load i32, i32* %k, align 4
  %idxprom95 = sext i32 %67 to i64
  %68 = load i32*, i32** %layers, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %68, i64 %idxprom95
  %69 = load i32, i32* %arrayidx96, align 4
  %call97 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %69)
  store %struct._GimpDrawable* %call97, %struct._GimpDrawable** %drawable, align 8
  %70 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width98 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %70, i32 0, i32 1
  %71 = load i32, i32* %width98, align 4
  store i32 %71, i32* %width, align 4
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height99 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %72, i32 0, i32 2
  %73 = load i32, i32* %height99, align 4
  store i32 %73, i32* %height, align 4
  %74 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %74, i32 0, i32 3
  %75 = load i32, i32* %bpp, align 4
  store i32 %75, i32* %bytespp, align 4
  %76 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %77 = load i32, i32* %width, align 4
  %78 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %76, i32 0, i32 0, i32 %77, i32 %78, i32 0, i32 0)
  %79 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %80 = load i32, i32* %width, align 4
  %81 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %79, i32 0, i32 0, i32 %80, i32 %81, i32 1, i32 1)
  %call100 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call100, i8** %pr, align 8
  store i32 0, i32* %update, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.158, %for.body.94
  %82 = load i8*, i8** %pr, align 8
  %cmp102 = icmp ne i8* %82, null
  br i1 %cmp102, label %for.body.104, label %for.end.161

for.body.104:                                     ; preds = %for.cond.101
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %83 = load i8*, i8** %data, align 8
  store i8* %83, i8** %src_row, align 8
  %data105 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %84 = load i8*, i8** %data105, align 8
  store i8* %84, i8** %dest_row, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.143, %for.body.104
  %85 = load i32, i32* %i, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %86 = load i32, i32* %h, align 4
  %cmp107 = icmp slt i32 %85, %86
  br i1 %cmp107, label %for.body.109, label %for.end.145

for.body.109:                                     ; preds = %for.cond.106
  %87 = load i8*, i8** %src_row, align 8
  store i8* %87, i8** %src, align 8
  %88 = load i8*, i8** %dest_row, align 8
  store i8* %88, i8** %dest, align 8
  %89 = load i32, i32* %bytespp, align 4
  %cmp110 = icmp eq i32 %89, 1
  br i1 %cmp110, label %if.then.112, label %if.else.124

if.then.112:                                      ; preds = %for.body.109
  store i32 0, i32* %j, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.121, %if.then.112
  %90 = load i32, i32* %j, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %91 = load i32, i32* %w, align 4
  %cmp114 = icmp slt i32 %90, %91
  br i1 %cmp114, label %for.body.116, label %for.end.123

for.body.116:                                     ; preds = %for.cond.113
  %92 = load i8*, i8** %src, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr117, i8** %src, align 8
  %93 = load i8, i8* %92, align 1
  %idxprom118 = zext i8 %93 to i64
  %arrayidx119 = getelementptr inbounds [256 x i8], [256 x i8]* %pixel_map, i32 0, i64 %idxprom118
  %94 = load i8, i8* %arrayidx119, align 1
  %95 = load i8*, i8** %dest, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr120, i8** %dest, align 8
  store i8 %94, i8* %95, align 1
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.body.116
  %96 = load i32, i32* %j, align 4
  %inc122 = add nsw i32 %96, 1
  store i32 %inc122, i32* %j, align 4
  br label %for.cond.113

for.end.123:                                      ; preds = %for.cond.113
  br label %if.end.139

if.else.124:                                      ; preds = %for.body.109
  store i32 0, i32* %j, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.136, %if.else.124
  %97 = load i32, i32* %j, align 4
  %w126 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %98 = load i32, i32* %w126, align 4
  %cmp127 = icmp slt i32 %97, %98
  br i1 %cmp127, label %for.body.129, label %for.end.138

for.body.129:                                     ; preds = %for.cond.125
  %99 = load i8*, i8** %src, align 8
  %incdec.ptr130 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr130, i8** %src, align 8
  %100 = load i8, i8* %99, align 1
  %idxprom131 = zext i8 %100 to i64
  %arrayidx132 = getelementptr inbounds [256 x i8], [256 x i8]* %pixel_map, i32 0, i64 %idxprom131
  %101 = load i8, i8* %arrayidx132, align 1
  %102 = load i8*, i8** %dest, align 8
  %incdec.ptr133 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr133, i8** %dest, align 8
  store i8 %101, i8* %102, align 1
  %103 = load i8*, i8** %src, align 8
  %incdec.ptr134 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr134, i8** %src, align 8
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %dest, align 8
  %incdec.ptr135 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr135, i8** %dest, align 8
  store i8 %104, i8* %105, align 1
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.body.129
  %106 = load i32, i32* %j, align 4
  %inc137 = add nsw i32 %106, 1
  store i32 %inc137, i32* %j, align 4
  br label %for.cond.125

for.end.138:                                      ; preds = %for.cond.125
  br label %if.end.139

if.end.139:                                       ; preds = %for.end.138, %for.end.123
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %107 = load i32, i32* %rowstride, align 4
  %108 = load i8*, i8** %src_row, align 8
  %idx.ext = sext i32 %107 to i64
  %add.ptr = getelementptr inbounds i8, i8* %108, i64 %idx.ext
  store i8* %add.ptr, i8** %src_row, align 8
  %rowstride140 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %109 = load i32, i32* %rowstride140, align 4
  %110 = load i8*, i8** %dest_row, align 8
  %idx.ext141 = sext i32 %109 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %110, i64 %idx.ext141
  store i8* %add.ptr142, i8** %dest_row, align 8
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.139
  %111 = load i32, i32* %i, align 4
  %inc144 = add nsw i32 %111, 1
  store i32 %inc144, i32* %i, align 4
  br label %for.cond.106

for.end.145:                                      ; preds = %for.cond.106
  %w146 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %112 = load i32, i32* %w146, align 4
  %h147 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %113 = load i32, i32* %h147, align 4
  %mul148 = mul nsw i32 %112, %113
  %conv149 = sext i32 %mul148 to i64
  %114 = load i64, i64* %processed, align 8
  %add150 = add nsw i64 %114, %conv149
  store i64 %add150, i64* %processed, align 8
  %115 = load i32, i32* %update, align 4
  %rem = srem i32 %115, 16
  store i32 %rem, i32* %update, align 4
  %116 = load i32, i32* %update, align 4
  %cmp151 = icmp eq i32 %116, 0
  br i1 %cmp151, label %if.then.153, label %if.end.157

if.then.153:                                      ; preds = %for.end.145
  %117 = load i64, i64* %processed, align 8
  %conv154 = sitofp i64 %117 to double
  %118 = load i64, i64* %pixels, align 8
  %conv155 = sitofp i64 %118 to double
  %div = fdiv double %conv154, %conv155
  %call156 = call i32 @gimp_progress_update(double %div)
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.153, %for.end.145
  br label %for.inc.158

for.inc.158:                                      ; preds = %if.end.157
  %119 = load i8*, i8** %pr, align 8
  %call159 = call i8* @gimp_pixel_rgns_process(i8* %119)
  store i8* %call159, i8** %pr, align 8
  %120 = load i32, i32* %update, align 4
  %inc160 = add nsw i32 %120, 1
  store i32 %inc160, i32* %update, align 4
  br label %for.cond.101

for.end.161:                                      ; preds = %for.cond.101
  %121 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %121)
  %122 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %122, i32 0, i32 0
  %123 = load i32, i32* %drawable_id, align 4
  %call162 = call i32 @gimp_drawable_merge_shadow(i32 %123, i32 1)
  %124 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id163 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %124, i32 0, i32 0
  %125 = load i32, i32* %drawable_id163, align 4
  %126 = load i32, i32* %width, align 4
  %127 = load i32, i32* %height, align 4
  %call164 = call i32 @gimp_drawable_update(i32 %125, i32 0, i32 0, i32 %126, i32 %127)
  %128 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %128)
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.end.161
  %129 = load i32, i32* %k, align 4
  %inc166 = add nsw i32 %129, 1
  store i32 %inc166, i32* %k, align 4
  br label %for.cond.91

for.end.167:                                      ; preds = %for.cond.91
  %call168 = call i32 @gimp_progress_update(double 1.000000e+00)
  %130 = load i32, i32* %image_ID.addr, align 4
  %call169 = call i32 @gimp_image_undo_group_end(i32 %130)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.167, %if.then.42, %if.then.19, %if.then.8, %if.else.4, %if.else
  %131 = load i32, i32* %retval
  ret i32 %131
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_displays_flush() #1

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

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rgb_get_type() #3

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gimp_rgb_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkUIManager* @remap_ui_manager_new(%struct._GtkWidget* %window, %struct._GtkListStore* %store) #0 {
entry:
  %window.addr = alloca %struct._GtkWidget*, align 8
  %store.addr = alloca %struct._GtkListStore*, align 8
  %ui_manager = alloca %struct._GtkUIManager*, align 8
  %group = alloca %struct._GtkActionGroup*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %window, %struct._GtkWidget** %window.addr, align 8
  store %struct._GtkListStore* %store, %struct._GtkListStore** %store.addr, align 8
  %call = call %struct._GtkUIManager* @gtk_ui_manager_new()
  store %struct._GtkUIManager* %call, %struct._GtkUIManager** %ui_manager, align 8
  %call1 = call %struct._GtkActionGroup* @gtk_action_group_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0))
  store %struct._GtkActionGroup* %call1, %struct._GtkActionGroup** %group, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  call void @gtk_action_group_set_translation_domain(%struct._GtkActionGroup* %0, i8* null)
  %1 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %2 = load %struct._GtkListStore*, %struct._GtkListStore** %store.addr, align 8
  %3 = bitcast %struct._GtkListStore* %2 to i8*
  call void @gtk_action_group_add_actions(%struct._GtkActionGroup* %1, %struct._GtkActionEntry* getelementptr inbounds ([5 x %struct._GtkActionEntry], [5 x %struct._GtkActionEntry]* @remap_ui_manager_new.actions, i32 0, i32 0), i32 5, i8* %3)
  %4 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %5 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  call void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager* %4, %struct._GtkActionGroup* %5, i32 -1)
  %6 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %7 = bitcast %struct._GtkActionGroup* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call2 = call i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager* %8, i8* getelementptr inbounds ([231 x i8], [231 x i8]* @.str.60, i32 0, i32 0), i64 -1, %struct._GError** %error)
  %9 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %10, i32 0, i32 2
  %11 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i32 0, i32 0), i8* %11)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  ret %struct._GtkUIManager* %12
}

declare %struct._GtkWidget* @gtk_icon_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #3

declare void @g_object_unref(i8*) #1

declare void @gtk_icon_view_set_selection_mode(%struct._GtkIconView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_icon_view_get_type() #3

declare void @gtk_icon_view_set_orientation(%struct._GtkIconView*, i32) #1

declare void @gtk_icon_view_set_columns(%struct._GtkIconView*, i32) #1

declare void @gtk_icon_view_set_row_spacing(%struct._GtkIconView*, i32) #1

declare void @gtk_icon_view_set_column_spacing(%struct._GtkIconView*, i32) #1

declare void @gtk_icon_view_set_reorderable(%struct._GtkIconView*, i32) #1

declare %struct._GtkCellRenderer* @gimp_cell_renderer_color_new() #1

declare void @gtk_cell_layout_pack_start(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_layout_get_type() #3

declare void @gtk_cell_layout_set_attributes(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @remap_popup_menu(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GtkUIManager*, %struct._GtkUIManager** @remap_ui, align 8
  %call = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0))
  store %struct._GtkWidget* %call, %struct._GtkWidget** %menu, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_menu_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkMenu*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %4)
  call void @gtk_menu_set_screen(%struct._GtkMenu* %3, %struct._GdkScreen* %call3)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_menu_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkMenu*
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %tobool = icmp ne %struct._GdkEventButton* %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %9, i32 0, i32 8
  %10 = load i32, i32* %button, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 0, %cond.false ]
  %11 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %tobool6 = icmp ne %struct._GdkEventButton* %11, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  %12 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %12, i32 0, i32 3
  %13 = load i32, i32* %time, align 4
  br label %cond.end.10

cond.false.8:                                     ; preds = %cond.end
  %call9 = call i32 @gtk_get_current_event_time()
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.7
  %cond11 = phi i32 [ %13, %cond.true.7 ], [ %call9, %cond.false.8 ]
  call void @gtk_menu_popup(%struct._GtkMenu* %7, %struct._GtkWidget* null, %struct._GtkWidget* null, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)* null, i8* null, i32 %cond, i32 %cond11)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @remap_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %1 = bitcast %struct._GdkEventButton* %0 to %union._GdkEvent*
  %call = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %call1 = call i32 @remap_popup_menu(%struct._GtkWidget* %2, %struct._GdkEventButton* %3)
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare %struct._GtkWidget* @gimp_hint_box_new(i8*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @remap_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._GtkTreeSortable* %store) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %store.addr = alloca %struct._GtkTreeSortable*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GtkTreeSortable* %store, %struct._GtkTreeSortable** %store.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._GtkTreeSortable*, %struct._GtkTreeSortable** %store.addr, align 8
  call void @remap_reset_callback(%struct._GtkAction* null, %struct._GtkTreeSortable* %1)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* @remap_run, align 4
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.1
  call void @gtk_main_quit()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

declare void @gtk_widget_show_all(%struct._GtkWidget*) #1

declare void @gtk_main() #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @remap_sort_callback(%struct._GtkAction* %action, %struct._GtkTreeSortable* %store) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %store.addr = alloca %struct._GtkTreeSortable*, align 8
  %name = alloca i8*, align 8
  %column = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkTreeSortable* %store, %struct._GtkTreeSortable** %store.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %call = call i8* @gtk_action_get_name(%struct._GtkAction* %0)
  store i8* %call, i8** %name, align 8
  store i32 -2, i32* %column, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i8*, i8** %name, align 8
  %call1 = call i32 @g_str_has_prefix(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0))
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.remap_sort_callback, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.63, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load i8*, i8** %name, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 5
  %call2 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i64 3) #7
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.end
  store i32 3, i32* %column, align 4
  br label %if.end.16

if.else.4:                                        ; preds = %do.end
  %3 = load i8*, i8** %name, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %3, i64 5
  %call6 = call i32 @strncmp(i8* %add.ptr5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i64 3) #7
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.4
  store i32 4, i32* %column, align 4
  br label %if.end.15

if.else.9:                                        ; preds = %if.else.4
  %4 = load i8*, i8** %name, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %4, i64 5
  %call11 = call i32 @strncmp(i8* %add.ptr10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i64 3) #7
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else.9
  store i32 5, i32* %column, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.else.9
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.3
  %5 = load %struct._GtkTreeSortable*, %struct._GtkTreeSortable** %store.addr, align 8
  %6 = load i32, i32* %column, align 4
  call void @remap_sort(%struct._GtkTreeSortable* %5, i32 %6, i32 0)
  br label %return

return:                                           ; preds = %if.end.16, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remap_reverse_callback(%struct._GtkAction* %action, %struct._GtkListStore* %store) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %store.addr = alloca %struct._GtkListStore*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkListStore* %store, %struct._GtkListStore** %store.addr, align 8
  %0 = load %struct._GtkListStore*, %struct._GtkListStore** %store.addr, align 8
  call void @gtk_list_store_reorder(%struct._GtkListStore* %0, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @reverse_order, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remap_reset_callback(%struct._GtkAction* %action, %struct._GtkTreeSortable* %store) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %store.addr = alloca %struct._GtkTreeSortable*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkTreeSortable* %store, %struct._GtkTreeSortable** %store.addr, align 8
  %0 = load %struct._GtkTreeSortable*, %struct._GtkTreeSortable** %store.addr, align 8
  call void @remap_sort(%struct._GtkTreeSortable* %0, i32 0, i32 0)
  ret void
}

declare %struct._GtkUIManager* @gtk_ui_manager_new() #1

declare %struct._GtkActionGroup* @gtk_action_group_new(i8*) #1

declare void @gtk_action_group_set_translation_domain(%struct._GtkActionGroup*, i8*) #1

declare void @gtk_action_group_add_actions(%struct._GtkActionGroup*, %struct._GtkActionEntry*, i32, i8*) #1

declare void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager*, %struct._GtkActionGroup*, i32) #1

declare i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager*, i8*, i64, %struct._GError**) #1

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

declare void @g_clear_error(%struct._GError**) #1

declare i8* @gtk_action_get_name(%struct._GtkAction*) #1

declare i32 @g_str_has_prefix(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal void @remap_sort(%struct._GtkTreeSortable* %store, i32 %column, i32 %order) #0 {
entry:
  %store.addr = alloca %struct._GtkTreeSortable*, align 8
  %column.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store %struct._GtkTreeSortable* %store, %struct._GtkTreeSortable** %store.addr, align 8
  store i32 %column, i32* %column.addr, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load %struct._GtkTreeSortable*, %struct._GtkTreeSortable** %store.addr, align 8
  %1 = load i32, i32* %column.addr, align 4
  %2 = load i32, i32* %order.addr, align 4
  call void @gtk_tree_sortable_set_sort_column_id(%struct._GtkTreeSortable* %0, i32 %1, i32 %2)
  %3 = load %struct._GtkTreeSortable*, %struct._GtkTreeSortable** %store.addr, align 8
  call void @gtk_tree_sortable_set_sort_column_id(%struct._GtkTreeSortable* %3, i32 -2, i32 0)
  ret void
}

declare void @gtk_tree_sortable_set_sort_column_id(%struct._GtkTreeSortable*, i32, i32) #1

declare void @gtk_list_store_reorder(%struct._GtkListStore*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #1

declare void @gtk_menu_set_screen(%struct._GtkMenu*, %struct._GdkScreen*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #3

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare void @gtk_menu_popup(%struct._GtkMenu*, %struct._GtkWidget*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, i32) #1

declare i32 @gtk_get_current_event_time() #1

declare i32 @gdk_event_triggers_context_menu(%union._GdkEvent*) #1

declare void @gtk_main_quit() #1

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

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_image_undo_group_start(i32) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

declare i32 @gimp_progress_init(i8*) #1

declare i32* @gimp_image_get_layers(i32, i32*) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_image_undo_group_end(i32) #1

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
