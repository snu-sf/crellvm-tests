; ModuleID = './app/actions/dialogs-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpStringActionEntry = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionGroupPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpImageWindow = type { %struct._GimpWindow }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GtkWindowGeometryInfo = type opaque
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque

@.str = private unnamed_addr constant [16 x i8] c"dialogs-toolbox\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Tool_box\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"<primary>B\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"gimp-toolbox\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"dialogs-tool-options\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"gimp-tool-options\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Tool _Options\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Open the tool options dialog\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"gimp-tool-options-dialog\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"dialogs-device-status\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"gimp-device-status\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"_Device Status\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Open the device status dialog\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"gimp-device-status-dialog\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"dialogs-layers\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"gimp-layers\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"_Layers\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"<primary>L\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Open the layers dialog\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"gimp-layer-list\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"gimp-layer-dialog\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"dialogs-channels\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"gimp-channels\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"_Channels\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Open the channels dialog\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"gimp-channel-list\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"gimp-channel-dialog\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"dialogs-vectors\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"gimp-paths\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"_Paths\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Open the paths dialog\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"gimp-vectors-list\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"gimp-path-dialog\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"dialogs-indexed-palette\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"gimp-colormap\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"Color_map\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"Open the colormap dialog\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"gimp-indexed-palette\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"gimp-indexed-palette-dialog\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"dialogs-histogram\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"gimp-histogram\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"Histogra_m\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"Open the histogram dialog\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"gimp-histogram-editor\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"gimp-histogram-dialog\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"dialogs-selection-editor\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"gimp-tool-rect-select\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"_Selection Editor\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"Open the selection editor\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"gimp-selection-editor\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"gimp-selection-dialog\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"dialogs-navigation\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"gimp-navigation\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"Na_vigation\00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"Open the display navigation dialog\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"gimp-navigation-view\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"gimp-navigation-dialog\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"dialogs-undo-history\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"gimp-undo-history\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"Undo _History\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"Open the undo history dialog\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"gimp-undo-dialog\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"dialogs-cursor\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"gimp-cursor\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"Pointer\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"Open the pointer information dialog\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"gimp-cursor-view\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"gimp-pointer-info-dialog\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"dialogs-sample-points\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"gimp-sample-point\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"_Sample Points\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"Open the sample points dialog\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"gimp-sample-point-editor\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"gimp-sample-point-dialog\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"dialogs-colors\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"gimp-default-colors\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"Colo_rs\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"Open the FG/BG color dialog\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"gimp-color-editor\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"gimp-color-dialog\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"dialogs-brushes\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"_Brushes\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"<primary><shift>B\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"Open the brushes dialog\00", align 1
@.str.85 = private unnamed_addr constant [32 x i8] c"gimp-brush-grid|gimp-brush-list\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"gimp-brush-dialog\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"dialogs-brush-editor\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"Brush Editor\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"Open the brush editor\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"gimp-brush-editor\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"gimp-brush-edit\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"dialogs-dynamics\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"gimp-dynamics\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"Paint Dynamics\00", align 1
@.str.95 = private unnamed_addr constant [27 x i8] c"Open paint dynamics dialog\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"gimp-dynamics-list\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"gimp-dynamics-dialog\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"dialogs-dynamics-editor\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"Paint Dynamics Editor\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"Open the paint dynamics editor\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"gimp-dynamics-editor\00", align 1
@.str.102 = private unnamed_addr constant [28 x i8] c"gimp-dynamics-editor-dialog\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"dialogs-patterns\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"gimp-tool-bucket-fill\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"P_atterns\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"<primary><shift>P\00", align 1
@.str.107 = private unnamed_addr constant [25 x i8] c"Open the patterns dialog\00", align 1
@.str.108 = private unnamed_addr constant [36 x i8] c"gimp-pattern-grid|gimp-pattern-list\00", align 1
@.str.109 = private unnamed_addr constant [20 x i8] c"gimp-pattern-dialog\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"dialogs-gradients\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"gimp-tool-blend\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"_Gradients\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"<primary>G\00", align 1
@.str.114 = private unnamed_addr constant [26 x i8] c"Open the gradients dialog\00", align 1
@.str.115 = private unnamed_addr constant [38 x i8] c"gimp-gradient-list|gimp-gradient-grid\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"gimp-gradient-dialog\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"dialogs-gradient-editor\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"Gradient Editor\00", align 1
@.str.119 = private unnamed_addr constant [25 x i8] c"Open the gradient editor\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"gimp-gradient-editor\00", align 1
@.str.121 = private unnamed_addr constant [19 x i8] c"gimp-gradient-edit\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"dialogs-palettes\00", align 1
@.str.123 = private unnamed_addr constant [17 x i8] c"gtk-select-color\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"Pal_ettes\00", align 1
@.str.125 = private unnamed_addr constant [25 x i8] c"Open the palettes dialog\00", align 1
@.str.126 = private unnamed_addr constant [36 x i8] c"gimp-palette-list|gimp-palette-grid\00", align 1
@.str.127 = private unnamed_addr constant [20 x i8] c"gimp-palette-dialog\00", align 1
@.str.128 = private unnamed_addr constant [23 x i8] c"dialogs-palette-editor\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"Palette Editor\00", align 1
@.str.130 = private unnamed_addr constant [24 x i8] c"Open the palette editor\00", align 1
@.str.131 = private unnamed_addr constant [20 x i8] c"gimp-palette-editor\00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c"gimp-palette-edit\00", align 1
@.str.133 = private unnamed_addr constant [21 x i8] c"dialogs-tool-presets\00", align 1
@.str.134 = private unnamed_addr constant [17 x i8] c"gimp-tool-preset\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"Tool presets\00", align 1
@.str.136 = private unnamed_addr constant [25 x i8] c"Open tool presets dialog\00", align 1
@.str.137 = private unnamed_addr constant [22 x i8] c"gimp-tool-preset-list\00", align 1
@.str.138 = private unnamed_addr constant [24 x i8] c"gimp-tool-preset-dialog\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"dialogs-fonts\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"gtk-select-font\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"_Fonts\00", align 1
@.str.142 = private unnamed_addr constant [22 x i8] c"Open the fonts dialog\00", align 1
@.str.143 = private unnamed_addr constant [30 x i8] c"gimp-font-list|gimp-font-grid\00", align 1
@.str.144 = private unnamed_addr constant [17 x i8] c"gimp-font-dialog\00", align 1
@.str.145 = private unnamed_addr constant [16 x i8] c"dialogs-buffers\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"gtk-paste\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"B_uffers\00", align 1
@.str.148 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.149 = private unnamed_addr constant [30 x i8] c"Open the named buffers dialog\00", align 1
@.str.150 = private unnamed_addr constant [34 x i8] c"gimp-buffer-list|gimp-buffer-grid\00", align 1
@.str.151 = private unnamed_addr constant [19 x i8] c"gimp-buffer-dialog\00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"dialogs-images\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"gimp-images\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"_Images\00", align 1
@.str.155 = private unnamed_addr constant [23 x i8] c"Open the images dialog\00", align 1
@.str.156 = private unnamed_addr constant [32 x i8] c"gimp-image-list|gimp-image-grid\00", align 1
@.str.157 = private unnamed_addr constant [18 x i8] c"gimp-image-dialog\00", align 1
@.str.158 = private unnamed_addr constant [25 x i8] c"dialogs-document-history\00", align 1
@.str.159 = private unnamed_addr constant [21 x i8] c"document-open-recent\00", align 1
@.str.160 = private unnamed_addr constant [18 x i8] c"Document Histor_y\00", align 1
@.str.161 = private unnamed_addr constant [33 x i8] c"Open the document history dialog\00", align 1
@.str.162 = private unnamed_addr constant [38 x i8] c"gimp-document-list|gimp-document-grid\00", align 1
@.str.163 = private unnamed_addr constant [21 x i8] c"gimp-document-dialog\00", align 1
@.str.164 = private unnamed_addr constant [18 x i8] c"dialogs-templates\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c"gimp-template\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"_Templates\00", align 1
@.str.167 = private unnamed_addr constant [32 x i8] c"Open the image templates dialog\00", align 1
@.str.168 = private unnamed_addr constant [38 x i8] c"gimp-template-list|gimp-template-grid\00", align 1
@.str.169 = private unnamed_addr constant [21 x i8] c"gimp-template-dialog\00", align 1
@.str.170 = private unnamed_addr constant [22 x i8] c"dialogs-error-console\00", align 1
@.str.171 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.172 = private unnamed_addr constant [15 x i8] c"Error Co_nsole\00", align 1
@.str.173 = private unnamed_addr constant [23 x i8] c"Open the error console\00", align 1
@.str.174 = private unnamed_addr constant [19 x i8] c"gimp-error-console\00", align 1
@.str.175 = private unnamed_addr constant [19 x i8] c"gimp-errors-dialog\00", align 1
@dialogs_dockable_actions = constant [30 x %struct._GimpStringActionEntry] [%struct._GimpStringActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.73, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.86, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.91, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.99, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.102, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.109, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.116, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.118, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.121, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.124, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.127, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.129, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.132, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.138, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.141, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.144, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.151, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.157, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.163, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.169, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.172, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.175, i32 0, i32 0) }], align 16
@n_dialogs_dockable_actions = global i32 30, align 4
@.str.176 = private unnamed_addr constant [15 x i8] c"dialogs-action\00", align 1
@dialogs_toplevel_actions = internal constant [6 x %struct._GimpStringActionEntry] [%struct._GimpStringActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.183, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.186, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.189, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.192, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.195, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.198, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.201, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.203, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.206, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.208, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.211, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.213, i32 0, i32 0) }], align 16
@.str.177 = private unnamed_addr constant [8 x i8] c"Toolbox\00", align 1
@.str.178 = private unnamed_addr constant [18 x i8] c"Raise the toolbox\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c"New Toolbox\00", align 1
@.str.180 = private unnamed_addr constant [21 x i8] c"Create a new toolbox\00", align 1
@.str.181 = private unnamed_addr constant [20 x i8] c"dialogs-preferences\00", align 1
@.str.182 = private unnamed_addr constant [16 x i8] c"gtk-preferences\00", align 1
@.str.183 = private unnamed_addr constant [13 x i8] c"_Preferences\00", align 1
@.str.184 = private unnamed_addr constant [28 x i8] c"Open the preferences dialog\00", align 1
@.str.185 = private unnamed_addr constant [24 x i8] c"gimp-preferences-dialog\00", align 1
@.str.186 = private unnamed_addr constant [18 x i8] c"gimp-prefs-dialog\00", align 1
@.str.187 = private unnamed_addr constant [22 x i8] c"dialogs-input-devices\00", align 1
@.str.188 = private unnamed_addr constant [18 x i8] c"gimp-input-device\00", align 1
@.str.189 = private unnamed_addr constant [15 x i8] c"_Input Devices\00", align 1
@.str.190 = private unnamed_addr constant [30 x i8] c"Open the input devices editor\00", align 1
@.str.191 = private unnamed_addr constant [26 x i8] c"gimp-input-devices-dialog\00", align 1
@.str.192 = private unnamed_addr constant [24 x i8] c"gimp-help-input-devices\00", align 1
@.str.193 = private unnamed_addr constant [27 x i8] c"dialogs-keyboard-shortcuts\00", align 1
@.str.194 = private unnamed_addr constant [17 x i8] c"gimp-char-picker\00", align 1
@.str.195 = private unnamed_addr constant [20 x i8] c"_Keyboard Shortcuts\00", align 1
@.str.196 = private unnamed_addr constant [35 x i8] c"Open the keyboard shortcuts editor\00", align 1
@.str.197 = private unnamed_addr constant [31 x i8] c"gimp-keyboard-shortcuts-dialog\00", align 1
@.str.198 = private unnamed_addr constant [29 x i8] c"gimp-help-keyboard-shortcuts\00", align 1
@.str.199 = private unnamed_addr constant [22 x i8] c"dialogs-module-dialog\00", align 1
@.str.200 = private unnamed_addr constant [12 x i8] c"gtk-execute\00", align 1
@.str.201 = private unnamed_addr constant [9 x i8] c"_Modules\00", align 1
@.str.202 = private unnamed_addr constant [31 x i8] c"Open the module manager dialog\00", align 1
@.str.203 = private unnamed_addr constant [19 x i8] c"gimp-module-dialog\00", align 1
@.str.204 = private unnamed_addr constant [13 x i8] c"dialogs-tips\00", align 1
@.str.205 = private unnamed_addr constant [10 x i8] c"gimp-info\00", align 1
@.str.206 = private unnamed_addr constant [16 x i8] c"_Tip of the Day\00", align 1
@.str.207 = private unnamed_addr constant [37 x i8] c"Show some helpful tips on using GIMP\00", align 1
@.str.208 = private unnamed_addr constant [17 x i8] c"gimp-tips-dialog\00", align 1
@.str.209 = private unnamed_addr constant [14 x i8] c"dialogs-about\00", align 1
@.str.210 = private unnamed_addr constant [10 x i8] c"gtk-about\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"_About\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"About GIMP\00", align 1
@.str.213 = private unnamed_addr constant [18 x i8] c"gimp-about-dialog\00", align 1
@.str.214 = private unnamed_addr constant [20 x i8] c"gimp-toolbox-window\00", align 1

; Function Attrs: nounwind uwtable
define void @dialogs_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_string_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.176, i32 0, i32 0), %struct._GimpStringActionEntry* getelementptr inbounds ([30 x %struct._GimpStringActionEntry], [30 x %struct._GimpStringActionEntry]* @dialogs_dockable_actions, i32 0, i32 0), i32 30, void ()* bitcast (void (%struct._GtkAction*, i8*, i8*)* @dialogs_create_dockable_cmd_callback to void ()*))
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_string_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.176, i32 0, i32 0), %struct._GimpStringActionEntry* getelementptr inbounds ([6 x %struct._GimpStringActionEntry], [6 x %struct._GimpStringActionEntry]* @dialogs_toplevel_actions, i32 0, i32 0), i32 6, void ()* bitcast (void (%struct._GtkAction*, i8*, i8*)* @dialogs_create_toplevel_cmd_callback to void ()*))
  ret void
}

declare void @gimp_action_group_add_string_actions(%struct._GimpActionGroup*, i8*, %struct._GimpStringActionEntry*, i32, void ()*) #1

declare void @dialogs_create_dockable_cmd_callback(%struct._GtkAction*, i8*, i8*) #1

declare void @dialogs_create_toplevel_cmd_callback(%struct._GtkAction*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @dialogs_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %toolbox_label = alloca i8*, align 8
  %toolbox_tooltip = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._Gimp* @action_data_get_gimp(i8* %0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  store i8* null, i8** %toolbox_label, align 8
  store i8* null, i8** %toolbox_tooltip, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call i32 @dialogs_actions_toolbox_exists(%struct._Gimp* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.177, i32 0, i32 0)) #4
  store i8* %call2, i8** %toolbox_label, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.178, i32 0, i32 0)) #4
  store i8* %call3, i8** %toolbox_tooltip, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.179, i32 0, i32 0)) #4
  store i8* %call4, i8** %toolbox_label, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.180, i32 0, i32 0)) #4
  store i8* %call5, i8** %toolbox_tooltip, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %3 = load i8*, i8** %toolbox_label, align 8
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* %3)
  %4 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %5 = load i8*, i8** %toolbox_tooltip, align 8
  call void @gimp_action_group_set_action_tooltip(%struct._GimpActionGroup* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* %5)
  ret void
}

declare %struct._Gimp* @action_data_get_gimp(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dialogs_actions_toolbox_exists(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %factory = alloca %struct._GimpDialogFactory*, align 8
  %toolbox_found = alloca i32, align 4
  %iter = alloca %struct._GList*, align 8
  %windows = alloca %struct._GList*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  store %struct._GimpDialogFactory* %call, %struct._GimpDialogFactory** %factory, align 8
  store i32 0, i32* %toolbox_found, align 4
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %call1 = call %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.214, i32 0, i32 0))
  %cmp = icmp ne %struct._GtkWidget* %call1, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %toolbox_found, align 4
  %1 = load i32, i32* %toolbox_found, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.15, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tobool2 = icmp ne %struct._Gimp* %2, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GList* @gimp_get_image_windows(%struct._Gimp* %3)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %call3, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %windows, align 8
  %4 = load %struct._GList*, %struct._GList** %windows, align 8
  store %struct._GList* %4, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.13, %cond.end
  %5 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool4 = icmp ne %struct._GList* %5, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %windows, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_image_window_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %9, %struct._GimpImageWindow** %window, align 8
  %10 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call7 = call i32 @gimp_image_window_has_toolbox(%struct._GimpImageWindow* %10)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  store i32 1, i32* %toolbox_found, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool10 = icmp ne %struct._GList* %11, null
  br i1 %tobool10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.13

cond.false.12:                                    ; preds = %for.inc
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi %struct._GList* [ %13, %cond.true.11 ], [ null, %cond.false.12 ]
  store %struct._GList* %cond14, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  %14 = load %struct._GList*, %struct._GList** %windows, align 8
  call void @g_list_free(%struct._GList* %14)
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %entry
  %15 = load i32, i32* %toolbox_found, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_action_group_set_action_label(%struct._GimpActionGroup*, i8*, i8*) #1

declare void @gimp_action_group_set_action_tooltip(%struct._GimpActionGroup*, i8*, i8*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory*, i8*) #1

declare %struct._GList* @gimp_get_image_windows(%struct._Gimp*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_window_get_type() #3

declare i32 @gimp_image_window_has_toolbox(%struct._GimpImageWindow*) #1

declare void @g_list_free(%struct._GList*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
