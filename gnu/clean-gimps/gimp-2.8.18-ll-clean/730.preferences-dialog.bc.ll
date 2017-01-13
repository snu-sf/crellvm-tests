; ModuleID = './app/dialogs/preferences-dialog.bc'
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
%struct.anon.0 = type { i8*, i8*, i8* }
%struct.anon.1 = type { i8*, i8*, i8* }
%struct.anon.2 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpConfig = type opaque
%struct._GimpRc = type { %struct._GimpPluginConfig, i8*, i8*, i32, i32, i32 }
%struct._GimpPluginConfig = type { %struct._GimpGuiConfig, i8*, i8*, i8*, i8*, i8* }
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkTreeStore = type { %struct._GObject, i32, i8*, i8*, i32, i32, %struct._GList*, i32, i64*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct.anon = type { i8*, i8*, i8*, i8* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpProcedure = type opaque
%struct._GimpContainerView = type opaque
%struct._GimpTemplateEditor = type { %struct._GtkBox }
%struct._GimpColorPanel = type { %struct._GimpColorButton, %struct._GimpContext*, %struct._GtkWidget* }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GBinding = type opaque
%struct._GimpColorProfileStore = type { %struct._GtkListStore, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GimpToolEditor = type { %struct._GimpContainerTreeView }
%struct._GimpContainerTreeView = type { %struct._GimpContainerBox, %struct._GtkTreeModel*, i32, [16 x i64], %struct._GtkTreeView*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._Gimp*, %struct._GimpContainerTreeViewPriv* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GimpContainerTreeViewPriv = type opaque
%struct._GdkPixbuf = type opaque
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon.3, %struct._GdkDrawable*, i32 }
%union.anon.3 = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque
%struct._GtkEventBox = type { %struct._GtkBin }
%struct._GError = type { i32, i32, i8* }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GimpColorProfileComboBox = type { %struct._GtkComboBox, %struct._GtkWidget* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GimpProfileChooserDialog = type { %struct._GtkFileChooserDialog, %struct._Gimp*, %struct._GtkTextBuffer*, i8*, i8*, i32 }
%struct._GtkFileChooserDialog = type { %struct._GtkDialog, %struct._GtkFileChooserDialogPrivate* }
%struct._GtkFileChooserDialogPrivate = type opaque
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkFileChooser = type opaque
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.preferences_dialog_create = private unnamed_addr constant [26 x i8] c"preferences_dialog_create\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@prefs_dialog = internal global %struct._GtkWidget* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"config-copy\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"config-orig\00", align 1
@__func__.prefs_dialog_new = private unnamed_addr constant [17 x i8] c"prefs_dialog_new\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"GIMP_IS_CONFIG (config)\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Preferences\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"gimp-preferences\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"gimp-prefs-dialog\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"pixbuf\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"notebook\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"switch-page\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Environment\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"environment\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"gimp-prefs-environment\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"Resource Consumption\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"undo-levels\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"Minimal number of _undo levels:\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"undo-size\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Maximum undo _memory:\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"tile-cache-size\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Tile cache _size:\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"max-new-image-size\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Maximum _new image size:\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"num-processors\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Number of _processors to use:\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"Image Thumbnails\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"thumbnail-size\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"Size of _thumbnails:\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"thumbnail-filesize-limit\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"Maximum _filesize for thumbnailing:\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"Document History\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"save-document-history\00", align 1
@.str.42 = private unnamed_addr constant [55 x i8] c"Keep record of used files in the Recent Documents list\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"User Interface\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"Interface\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"gimp-prefs-interface\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"Previews\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"layer-previews\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"_Enable layer & channel previews\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"layer-preview-size\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"_Default layer & channel preview size:\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"navigation-preview-size\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"Na_vigation preview size:\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"Keyboard Shortcuts\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"can-change-accels\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"_Use dynamic keyboard shortcuts\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"gtk-preferences\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"Configure _Keyboard Shortcuts...\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"save-accels\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"_Save keyboard shortcuts on exit\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"Save Keyboard Shortcuts _Now\00", align 1
@.str.64 = private unnamed_addr constant [44 x i8] c"_Reset Keyboard Shortcuts to Default Values\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"clear-button\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"gtk-clear\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Remove _All Keyboard Shortcuts\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"Theme\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"theme\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"gimp-prefs-theme\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"Select Theme\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"Folder\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"gtk-refresh\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"Reload C_urrent Theme\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"Help System\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"help-system\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"gimp-prefs-help\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"General\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"show-tooltips\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"Show _tooltips\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"show-help-button\00", align 1
@.str.82 = private unnamed_addr constant [19 x i8] c"Show help _buttons\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"user-manual-online\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"Use the online version\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"Use a locally installed copy\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"User manual:\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"gimp-info\00", align 1
@.str.88 = private unnamed_addr constant [49 x i8] c"There's a local installation of the user manual.\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.90 = private unnamed_addr constant [42 x i8] c"The user manual is not installed locally.\00", align 1
@.str.91 = private unnamed_addr constant [28 x i8] c"extension-gimp-help-browser\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"Help Browser\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"help-browser\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"H_elp browser to use:\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"Tool Options\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"tool-options\00", align 1
@.str.97 = private unnamed_addr constant [24 x i8] c"gimp-prefs-tool-options\00", align 1
@.str.98 = private unnamed_addr constant [18 x i8] c"save-tool-options\00", align 1
@.str.99 = private unnamed_addr constant [27 x i8] c"_Save tool options on exit\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"Save Tool Options _Now\00", align 1
@.str.101 = private unnamed_addr constant [44 x i8] c"_Reset Saved Tool Options to Default Values\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"Guide & Grid Snapping\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"snap-distance\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"_Snap distance:\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"Scaling\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"interpolation-type\00", align 1
@.str.107 = private unnamed_addr constant [24 x i8] c"Default _interpolation:\00", align 1
@.str.108 = private unnamed_addr constant [35 x i8] c"Paint Options Shared Between Tools\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"global-brush\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"_Brush\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"global-dynamics\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"_Dynamics\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"gimp-dynamics\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"global-pattern\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"_Pattern\00", align 1
@.str.117 = private unnamed_addr constant [22 x i8] c"gimp-tool-bucket-fill\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"global-gradient\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"_Gradient\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"gimp-tool-blend\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"Move Tool\00", align 1
@.str.122 = private unnamed_addr constant [25 x i8] c"move-tool-changes-active\00", align 1
@.str.123 = private unnamed_addr constant [28 x i8] c"Set layer or path as active\00", align 1
@.str.124 = private unnamed_addr constant [15 x i8] c"gimp-tool-move\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"Toolbox\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"toolbox\00", align 1
@.str.127 = private unnamed_addr constant [19 x i8] c"gimp-prefs-toolbox\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"Appearance\00", align 1
@.str.129 = private unnamed_addr constant [19 x i8] c"toolbox-color-area\00", align 1
@.str.130 = private unnamed_addr constant [36 x i8] c"Show _foreground & background color\00", align 1
@.str.131 = private unnamed_addr constant [20 x i8] c"gimp-default-colors\00", align 1
@.str.132 = private unnamed_addr constant [17 x i8] c"toolbox-foo-area\00", align 1
@.str.133 = private unnamed_addr constant [39 x i8] c"Show active _brush, pattern & gradient\00", align 1
@.str.134 = private unnamed_addr constant [19 x i8] c"toolbox-image-area\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c"Show active _image\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"gimp-image\00", align 1
@.str.137 = private unnamed_addr constant [20 x i8] c"Tools configuration\00", align 1
@tool_editor = internal global %struct._GtkWidget* null, align 8
@.str.138 = private unnamed_addr constant [18 x i8] c"Default New Image\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"new-image\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"Default Image\00", align 1
@.str.141 = private unnamed_addr constant [21 x i8] c"gimp-prefs-new-image\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"_Template:\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"select-item\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"Quick Mask\00", align 1
@.str.145 = private unnamed_addr constant [17 x i8] c"quick-mask-color\00", align 1
@.str.146 = private unnamed_addr constant [33 x i8] c"Set the default Quick Mask color\00", align 1
@.str.147 = private unnamed_addr constant [18 x i8] c"Quick Mask color:\00", align 1
@.str.148 = private unnamed_addr constant [19 x i8] c"Default Image Grid\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"default-grid\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"Default Grid\00", align 1
@.str.151 = private unnamed_addr constant [24 x i8] c"gimp-prefs-default-grid\00", align 1
@.str.152 = private unnamed_addr constant [14 x i8] c"Image Windows\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"image-windows\00", align 1
@.str.154 = private unnamed_addr constant [24 x i8] c"gimp-prefs-image-window\00", align 1
@.str.155 = private unnamed_addr constant [20 x i8] c"default-dot-for-dot\00", align 1
@.str.156 = private unnamed_addr constant [30 x i8] c"Use \22_Dot for dot\22 by default\00", align 1
@.str.157 = private unnamed_addr constant [20 x i8] c"marching-ants-speed\00", align 1
@.str.158 = private unnamed_addr constant [22 x i8] c"Marching _ants speed:\00", align 1
@.str.159 = private unnamed_addr constant [23 x i8] c"Zoom & Resize Behavior\00", align 1
@.str.160 = private unnamed_addr constant [23 x i8] c"resize-windows-on-zoom\00", align 1
@.str.161 = private unnamed_addr constant [23 x i8] c"Resize window on _zoom\00", align 1
@.str.162 = private unnamed_addr constant [25 x i8] c"resize-windows-on-resize\00", align 1
@.str.163 = private unnamed_addr constant [36 x i8] c"Resize window on image _size change\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c"initial-zoom-to-fit\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c"Fit to window\00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"1:1\00", align 1
@.str.167 = private unnamed_addr constant [21 x i8] c"Initial zoom _ratio:\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"Space Bar\00", align 1
@.str.169 = private unnamed_addr constant [17 x i8] c"space-bar-action\00", align 1
@.str.170 = private unnamed_addr constant [29 x i8] c"_While space bar is pressed:\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"Mouse Pointers\00", align 1
@.str.172 = private unnamed_addr constant [19 x i8] c"show-brush-outline\00", align 1
@.str.173 = private unnamed_addr constant [20 x i8] c"Show _brush outline\00", align 1
@.str.174 = private unnamed_addr constant [23 x i8] c"show-paint-tool-cursor\00", align 1
@.str.175 = private unnamed_addr constant [30 x i8] c"Show pointer for paint _tools\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"cursor-mode\00", align 1
@.str.177 = private unnamed_addr constant [15 x i8] c"Pointer _mode:\00", align 1
@.str.178 = private unnamed_addr constant [14 x i8] c"cursor-format\00", align 1
@.str.179 = private unnamed_addr constant [20 x i8] c"Pointer re_ndering:\00", align 1
@.str.180 = private unnamed_addr constant [18 x i8] c"cursor-handedness\00", align 1
@.str.181 = private unnamed_addr constant [21 x i8] c"Pointer _handedness:\00", align 1
@.str.182 = private unnamed_addr constant [24 x i8] c"Image Window Appearance\00", align 1
@.str.183 = private unnamed_addr constant [35 x i8] c"gimp-prefs-image-window-appearance\00", align 1
@.str.184 = private unnamed_addr constant [34 x i8] c"Default Appearance in Normal Mode\00", align 1
@.str.185 = private unnamed_addr constant [38 x i8] c"Default Appearance in Fullscreen Mode\00", align 1
@.str.186 = private unnamed_addr constant [31 x i8] c"Image Title & Statusbar Format\00", align 1
@.str.187 = private unnamed_addr constant [12 x i8] c"image-title\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c"Title & Status\00", align 1
@.str.189 = private unnamed_addr constant [30 x i8] c"gimp-prefs-image-window-title\00", align 1
@.str.190 = private unnamed_addr constant [19 x i8] c"%f-%p.%i (%t) %z%%\00", align 1
@.str.191 = private unnamed_addr constant [20 x i8] c"%f-%p.%i (%t) %d:%s\00", align 1
@.str.192 = private unnamed_addr constant [20 x i8] c"%f-%p.%i (%t) %wx%h\00", align 1
@.str.193 = private unnamed_addr constant [15 x i8] c"Current format\00", align 1
@.str.194 = private unnamed_addr constant [15 x i8] c"Default format\00", align 1
@.str.195 = private unnamed_addr constant [21 x i8] c"Show zoom percentage\00", align 1
@.str.196 = private unnamed_addr constant [16 x i8] c"Show zoom ratio\00", align 1
@.str.197 = private unnamed_addr constant [16 x i8] c"Show image size\00", align 1
@.str.198 = private unnamed_addr constant [27 x i8] c"%D*%f-%p.%i (%t, %L) %wx%h\00", align 1
@.str.199 = private unnamed_addr constant [19 x i8] c"Image Title Format\00", align 1
@.str.200 = private unnamed_addr constant [19 x i8] c"image-title-format\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c"%n (%m)\00", align 1
@.str.202 = private unnamed_addr constant [23 x i8] c"Image Statusbar Format\00", align 1
@.str.203 = private unnamed_addr constant [20 x i8] c"image-status-format\00", align 1
@.str.204 = private unnamed_addr constant [8 x i8] c"Display\00", align 1
@.str.205 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.206 = private unnamed_addr constant [19 x i8] c"gimp-prefs-display\00", align 1
@.str.207 = private unnamed_addr constant [13 x i8] c"Transparency\00", align 1
@.str.208 = private unnamed_addr constant [18 x i8] c"transparency-type\00", align 1
@.str.209 = private unnamed_addr constant [14 x i8] c"_Check style:\00", align 1
@.str.210 = private unnamed_addr constant [18 x i8] c"transparency-size\00", align 1
@.str.211 = private unnamed_addr constant [13 x i8] c"Check _size:\00", align 1
@.str.212 = private unnamed_addr constant [19 x i8] c"Monitor Resolution\00", align 1
@.str.213 = private unnamed_addr constant [7 x i8] c"Pixels\00", align 1
@.str.214 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.215 = private unnamed_addr constant [20 x i8] c"monitor-xresolution\00", align 1
@.str.216 = private unnamed_addr constant [20 x i8] c"monitor-yresolution\00", align 1
@.str.217 = private unnamed_addr constant [11 x i8] c"Horizontal\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"Vertical\00", align 1
@.str.219 = private unnamed_addr constant [4 x i8] c"ppi\00", align 1
@.str.220 = private unnamed_addr constant [47 x i8] c"_Detect automatically (currently %d \C3\97 %d ppi)\00", align 1
@.str.221 = private unnamed_addr constant [29 x i8] c"monitor_resolution_sizeentry\00", align 1
@.str.222 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.223 = private unnamed_addr constant [16 x i8] c"_Enter manually\00", align 1
@.str.224 = private unnamed_addr constant [14 x i8] c"C_alibrate...\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.227 = private unnamed_addr constant [17 x i8] c"Color Management\00", align 1
@.str.228 = private unnamed_addr constant [17 x i8] c"color-management\00", align 1
@.str.229 = private unnamed_addr constant [28 x i8] c"gimp-prefs-color-management\00", align 1
@prefs_dialog_new.profiles = internal constant [4 x %struct.anon.0] [%struct.anon.0 { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.232, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.235, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.238, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.241, i32 0, i32 0) }], align 16
@.str.230 = private unnamed_addr constant [14 x i8] c"_RGB profile:\00", align 1
@.str.231 = private unnamed_addr constant [25 x i8] c"Select RGB Color Profile\00", align 1
@.str.232 = private unnamed_addr constant [12 x i8] c"rgb-profile\00", align 1
@.str.233 = private unnamed_addr constant [15 x i8] c"_CMYK profile:\00", align 1
@.str.234 = private unnamed_addr constant [26 x i8] c"Select CMYK Color Profile\00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"cmyk-profile\00", align 1
@.str.236 = private unnamed_addr constant [18 x i8] c"_Monitor profile:\00", align 1
@.str.237 = private unnamed_addr constant [29 x i8] c"Select Monitor Color Profile\00", align 1
@.str.238 = private unnamed_addr constant [16 x i8] c"display-profile\00", align 1
@.str.239 = private unnamed_addr constant [27 x i8] c"_Print simulation profile:\00", align 1
@.str.240 = private unnamed_addr constant [29 x i8] c"Select Printer Color Profile\00", align 1
@.str.241 = private unnamed_addr constant [16 x i8] c"printer-profile\00", align 1
@.str.242 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.243 = private unnamed_addr constant [20 x i8] c"_Mode of operation:\00", align 1
@.str.244 = private unnamed_addr constant [10 x i8] c"profilerc\00", align 1
@.str.245 = private unnamed_addr constant [25 x i8] c"display-profile-from-gdk\00", align 1
@.str.246 = private unnamed_addr constant [39 x i8] c"_Try to use the system monitor profile\00", align 1
@.str.247 = private unnamed_addr constant [25 x i8] c"display-rendering-intent\00", align 1
@.str.248 = private unnamed_addr constant [27 x i8] c"_Display rendering intent:\00", align 1
@.str.249 = private unnamed_addr constant [28 x i8] c"simulation-rendering-intent\00", align 1
@.str.250 = private unnamed_addr constant [29 x i8] c"_Softproof rendering intent:\00", align 1
@.str.251 = private unnamed_addr constant [23 x i8] c"simulation-gamut-check\00", align 1
@.str.252 = private unnamed_addr constant [25 x i8] c"Mark out of gamut colors\00", align 1
@.str.253 = private unnamed_addr constant [19 x i8] c"out-of-gamut-color\00", align 1
@.str.254 = private unnamed_addr constant [21 x i8] c"Select Warning Color\00", align 1
@.str.255 = private unnamed_addr constant [21 x i8] c"color-profile-policy\00", align 1
@.str.256 = private unnamed_addr constant [21 x i8] c"File Open behaviour:\00", align 1
@.str.257 = private unnamed_addr constant [14 x i8] c"Input Devices\00", align 1
@.str.258 = private unnamed_addr constant [14 x i8] c"input-devices\00", align 1
@.str.259 = private unnamed_addr constant [25 x i8] c"gimp-prefs-input-devices\00", align 1
@.str.260 = private unnamed_addr constant [23 x i8] c"Extended Input Devices\00", align 1
@.str.261 = private unnamed_addr constant [37 x i8] c"Configure E_xtended Input Devices...\00", align 1
@.str.262 = private unnamed_addr constant [19 x i8] c"save-device-status\00", align 1
@.str.263 = private unnamed_addr constant [36 x i8] c"_Save input device settings on exit\00", align 1
@.str.264 = private unnamed_addr constant [32 x i8] c"Save Input Device Settings _Now\00", align 1
@.str.265 = private unnamed_addr constant [53 x i8] c"_Reset Saved Input Device Settings to Default Values\00", align 1
@.str.266 = private unnamed_addr constant [29 x i8] c"Additional Input Controllers\00", align 1
@.str.267 = private unnamed_addr constant [12 x i8] c"controllers\00", align 1
@.str.268 = private unnamed_addr constant [18 x i8] c"Input Controllers\00", align 1
@.str.269 = private unnamed_addr constant [29 x i8] c"gimp-prefs-input-controllers\00", align 1
@.str.270 = private unnamed_addr constant [18 x i8] c"Window Management\00", align 1
@.str.271 = private unnamed_addr constant [18 x i8] c"window-management\00", align 1
@.str.272 = private unnamed_addr constant [29 x i8] c"gimp-prefs-window-management\00", align 1
@.str.273 = private unnamed_addr constant [21 x i8] c"Window Manager Hints\00", align 1
@.str.274 = private unnamed_addr constant [17 x i8] c"dock-window-hint\00", align 1
@.str.275 = private unnamed_addr constant [29 x i8] c"Hint for _docks and toolbox:\00", align 1
@.str.276 = private unnamed_addr constant [6 x i8] c"Focus\00", align 1
@.str.277 = private unnamed_addr constant [18 x i8] c"activate-on-focus\00", align 1
@.str.278 = private unnamed_addr constant [28 x i8] c"Activate the _focused image\00", align 1
@.str.279 = private unnamed_addr constant [17 x i8] c"Window Positions\00", align 1
@.str.280 = private unnamed_addr constant [18 x i8] c"save-session-info\00", align 1
@.str.281 = private unnamed_addr constant [31 x i8] c"_Save window positions on exit\00", align 1
@.str.282 = private unnamed_addr constant [27 x i8] c"Save Window Positions _Now\00", align 1
@.str.283 = private unnamed_addr constant [48 x i8] c"_Reset Saved Window Positions to Default Values\00", align 1
@.str.284 = private unnamed_addr constant [8 x i8] c"Folders\00", align 1
@.str.285 = private unnamed_addr constant [8 x i8] c"folders\00", align 1
@.str.286 = private unnamed_addr constant [19 x i8] c"gimp-prefs-folders\00", align 1
@prefs_dialog_new.dirs = internal constant [2 x %struct.anon.1] [%struct.anon.1 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.289, i32 0, i32 0) }, %struct.anon.1 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.292, i32 0, i32 0) }], align 16
@.str.287 = private unnamed_addr constant [10 x i8] c"temp-path\00", align 1
@.str.288 = private unnamed_addr constant [18 x i8] c"Temporary folder:\00", align 1
@.str.289 = private unnamed_addr constant [34 x i8] c"Select Folder for Temporary Files\00", align 1
@.str.290 = private unnamed_addr constant [10 x i8] c"swap-path\00", align 1
@.str.291 = private unnamed_addr constant [13 x i8] c"Swap folder:\00", align 1
@.str.292 = private unnamed_addr constant [19 x i8] c"Select Swap Folder\00", align 1
@prefs_dialog_new.paths = internal constant [13 x %struct.anon.2] [%struct.anon.2 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.299, i32 0, i32 0) }, %struct.anon.2 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.306, i32 0, i32 0) }, %struct.anon.2 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.311, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.313, i32 0, i32 0) }, %struct.anon.2 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.314, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.315, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.316, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.317, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.318, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.319, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.320, i32 0, i32 0) }, %struct.anon.2 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.321, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.322, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.323, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.324, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.325, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.327, i32 0, i32 0) }, %struct.anon.2 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.328, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.329, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.331, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.332, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.333, i32 0, i32 0), i8* null }, %struct.anon.2 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.335, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.338, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.339, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.340, i32 0, i32 0) }, %struct.anon.2 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.341, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.342, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.343, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.345, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.346, i32 0, i32 0), i8* null }, %struct.anon.2 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.347, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.348, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.349, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.351, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.352, i32 0, i32 0), i8* null }, %struct.anon.2 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.353, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.354, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.355, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.356, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.357, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.358, i32 0, i32 0), i8* null }, %struct.anon.2 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.359, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.361, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.362, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.363, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.364, i32 0, i32 0), i8* null }, %struct.anon.2 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.365, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.366, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.367, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.369, i32 0, i32 0), i8* null }, %struct.anon.2 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.370, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.371, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.372, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.373, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.375, i32 0, i32 0), i8* null }], align 16
@.str.293 = private unnamed_addr constant [8 x i8] c"Brushes\00", align 1
@.str.294 = private unnamed_addr constant [14 x i8] c"Brush Folders\00", align 1
@.str.295 = private unnamed_addr constant [16 x i8] c"folders-brushes\00", align 1
@.str.296 = private unnamed_addr constant [27 x i8] c"gimp-prefs-folders-brushes\00", align 1
@.str.297 = private unnamed_addr constant [21 x i8] c"Select Brush Folders\00", align 1
@.str.298 = private unnamed_addr constant [11 x i8] c"brush-path\00", align 1
@.str.299 = private unnamed_addr constant [20 x i8] c"brush-path-writable\00", align 1
@.str.300 = private unnamed_addr constant [9 x i8] c"Dynamics\00", align 1
@.str.301 = private unnamed_addr constant [17 x i8] c"Dynamics Folders\00", align 1
@.str.302 = private unnamed_addr constant [17 x i8] c"folders-dynamics\00", align 1
@.str.303 = private unnamed_addr constant [28 x i8] c"gimp-prefs-folders-dynamics\00", align 1
@.str.304 = private unnamed_addr constant [24 x i8] c"Select Dynamics Folders\00", align 1
@.str.305 = private unnamed_addr constant [14 x i8] c"dynamics-path\00", align 1
@.str.306 = private unnamed_addr constant [23 x i8] c"dynamics-path-writable\00", align 1
@.str.307 = private unnamed_addr constant [9 x i8] c"Patterns\00", align 1
@.str.308 = private unnamed_addr constant [16 x i8] c"Pattern Folders\00", align 1
@.str.309 = private unnamed_addr constant [17 x i8] c"folders-patterns\00", align 1
@.str.310 = private unnamed_addr constant [28 x i8] c"gimp-prefs-folders-patterns\00", align 1
@.str.311 = private unnamed_addr constant [23 x i8] c"Select Pattern Folders\00", align 1
@.str.312 = private unnamed_addr constant [13 x i8] c"pattern-path\00", align 1
@.str.313 = private unnamed_addr constant [22 x i8] c"pattern-path-writable\00", align 1
@.str.314 = private unnamed_addr constant [9 x i8] c"Palettes\00", align 1
@.str.315 = private unnamed_addr constant [16 x i8] c"Palette Folders\00", align 1
@.str.316 = private unnamed_addr constant [17 x i8] c"folders-palettes\00", align 1
@.str.317 = private unnamed_addr constant [28 x i8] c"gimp-prefs-folders-palettes\00", align 1
@.str.318 = private unnamed_addr constant [23 x i8] c"Select Palette Folders\00", align 1
@.str.319 = private unnamed_addr constant [13 x i8] c"palette-path\00", align 1
@.str.320 = private unnamed_addr constant [22 x i8] c"palette-path-writable\00", align 1
@.str.321 = private unnamed_addr constant [10 x i8] c"Gradients\00", align 1
@.str.322 = private unnamed_addr constant [17 x i8] c"Gradient Folders\00", align 1
@.str.323 = private unnamed_addr constant [18 x i8] c"folders-gradients\00", align 1
@.str.324 = private unnamed_addr constant [29 x i8] c"gimp-prefs-folders-gradients\00", align 1
@.str.325 = private unnamed_addr constant [24 x i8] c"Select Gradient Folders\00", align 1
@.str.326 = private unnamed_addr constant [14 x i8] c"gradient-path\00", align 1
@.str.327 = private unnamed_addr constant [23 x i8] c"gradient-path-writable\00", align 1
@.str.328 = private unnamed_addr constant [6 x i8] c"Fonts\00", align 1
@.str.329 = private unnamed_addr constant [13 x i8] c"Font Folders\00", align 1
@.str.330 = private unnamed_addr constant [14 x i8] c"folders-fonts\00", align 1
@.str.331 = private unnamed_addr constant [25 x i8] c"gimp-prefs-folders-fonts\00", align 1
@.str.332 = private unnamed_addr constant [20 x i8] c"Select Font Folders\00", align 1
@.str.333 = private unnamed_addr constant [10 x i8] c"font-path\00", align 1
@.str.334 = private unnamed_addr constant [13 x i8] c"Tool Presets\00", align 1
@.str.335 = private unnamed_addr constant [20 x i8] c"Tool Preset Folders\00", align 1
@.str.336 = private unnamed_addr constant [21 x i8] c"folders-tool-presets\00", align 1
@.str.337 = private unnamed_addr constant [32 x i8] c"gimp-prefs-folders-tool-presets\00", align 1
@.str.338 = private unnamed_addr constant [27 x i8] c"Select Tool Preset Folders\00", align 1
@.str.339 = private unnamed_addr constant [17 x i8] c"tool-preset-path\00", align 1
@.str.340 = private unnamed_addr constant [26 x i8] c"tool-preset-path-writable\00", align 1
@.str.341 = private unnamed_addr constant [9 x i8] c"Plug-Ins\00", align 1
@.str.342 = private unnamed_addr constant [16 x i8] c"Plug-In Folders\00", align 1
@.str.343 = private unnamed_addr constant [17 x i8] c"folders-plug-ins\00", align 1
@.str.344 = private unnamed_addr constant [28 x i8] c"gimp-prefs-folders-plug-ins\00", align 1
@.str.345 = private unnamed_addr constant [23 x i8] c"Select Plug-In Folders\00", align 1
@.str.346 = private unnamed_addr constant [13 x i8] c"plug-in-path\00", align 1
@.str.347 = private unnamed_addr constant [8 x i8] c"Scripts\00", align 1
@.str.348 = private unnamed_addr constant [18 x i8] c"Script-Fu Folders\00", align 1
@.str.349 = private unnamed_addr constant [16 x i8] c"folders-scripts\00", align 1
@.str.350 = private unnamed_addr constant [27 x i8] c"gimp-prefs-folders-scripts\00", align 1
@.str.351 = private unnamed_addr constant [25 x i8] c"Select Script-Fu Folders\00", align 1
@.str.352 = private unnamed_addr constant [15 x i8] c"script-fu-path\00", align 1
@.str.353 = private unnamed_addr constant [8 x i8] c"Modules\00", align 1
@.str.354 = private unnamed_addr constant [15 x i8] c"Module Folders\00", align 1
@.str.355 = private unnamed_addr constant [16 x i8] c"folders-modules\00", align 1
@.str.356 = private unnamed_addr constant [27 x i8] c"gimp-prefs-folders-modules\00", align 1
@.str.357 = private unnamed_addr constant [22 x i8] c"Select Module Folders\00", align 1
@.str.358 = private unnamed_addr constant [12 x i8] c"module-path\00", align 1
@.str.359 = private unnamed_addr constant [13 x i8] c"Interpreters\00", align 1
@.str.360 = private unnamed_addr constant [20 x i8] c"Interpreter Folders\00", align 1
@.str.361 = private unnamed_addr constant [15 x i8] c"folders-interp\00", align 1
@.str.362 = private unnamed_addr constant [32 x i8] c"gimp-prefs-folders-interpreters\00", align 1
@.str.363 = private unnamed_addr constant [27 x i8] c"Select Interpreter Folders\00", align 1
@.str.364 = private unnamed_addr constant [17 x i8] c"interpreter-path\00", align 1
@.str.365 = private unnamed_addr constant [20 x i8] c"Environment Folders\00", align 1
@.str.366 = private unnamed_addr constant [16 x i8] c"folders-environ\00", align 1
@.str.367 = private unnamed_addr constant [31 x i8] c"gimp-prefs-folders-environment\00", align 1
@.str.368 = private unnamed_addr constant [27 x i8] c"Select Environment Folders\00", align 1
@.str.369 = private unnamed_addr constant [13 x i8] c"environ-path\00", align 1
@.str.370 = private unnamed_addr constant [7 x i8] c"Themes\00", align 1
@.str.371 = private unnamed_addr constant [14 x i8] c"Theme Folders\00", align 1
@.str.372 = private unnamed_addr constant [15 x i8] c"folders-themes\00", align 1
@.str.373 = private unnamed_addr constant [26 x i8] c"gimp-prefs-folders-themes\00", align 1
@.str.374 = private unnamed_addr constant [21 x i8] c"Select Theme Folders\00", align 1
@.str.375 = private unnamed_addr constant [11 x i8] c"theme-path\00", align 1
@.str.376 = private unnamed_addr constant [13 x i8] c"gimp-help-id\00", align 1
@.str.377 = private unnamed_addr constant [22 x i8] c"Reset All Preferences\00", align 1
@.str.378 = private unnamed_addr constant [14 x i8] c"gimp-question\00", align 1
@.str.379 = private unnamed_addr constant [63 x i8] c"Do you really want to reset all preferences to default values?\00", align 1
@.str.380 = private unnamed_addr constant [72 x i8] c"You will have to restart GIMP for the following changes to take effect:\00", align 1
@.str.381 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.382 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.383 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.384 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.385 = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.386 = private unnamed_addr constant [12 x i8] c"preferences\00", align 1
@.str.387 = private unnamed_addr constant [8 x i8] c"-22.png\00", align 1
@.str.388 = private unnamed_addr constant [31 x i8] c"gimp-keyboard-shortcuts-dialog\00", align 1
@.str.389 = private unnamed_addr constant [86 x i8] c"Your keyboard shortcuts will be reset to default values the next time you start GIMP.\00", align 1
@.str.390 = private unnamed_addr constant [30 x i8] c"Remove all Keyboard Shortcuts\00", align 1
@.str.391 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@.str.392 = private unnamed_addr constant [68 x i8] c"Do you really want to remove all keyboard shortcuts from all menus?\00", align 1
@.str.393 = private unnamed_addr constant [80 x i8] c"Your tool options will be reset to default values the next time you start GIMP.\00", align 1
@.str.394 = private unnamed_addr constant [13 x i8] c"show-menubar\00", align 1
@.str.395 = private unnamed_addr constant [14 x i8] c"Show _menubar\00", align 1
@.str.396 = private unnamed_addr constant [12 x i8] c"show-rulers\00", align 1
@.str.397 = private unnamed_addr constant [13 x i8] c"Show _rulers\00", align 1
@.str.398 = private unnamed_addr constant [16 x i8] c"show-scrollbars\00", align 1
@.str.399 = private unnamed_addr constant [17 x i8] c"Show scroll_bars\00", align 1
@.str.400 = private unnamed_addr constant [15 x i8] c"show-statusbar\00", align 1
@.str.401 = private unnamed_addr constant [16 x i8] c"Show s_tatusbar\00", align 1
@.str.402 = private unnamed_addr constant [15 x i8] c"show-selection\00", align 1
@.str.403 = private unnamed_addr constant [16 x i8] c"Show s_election\00", align 1
@.str.404 = private unnamed_addr constant [20 x i8] c"show-layer-boundary\00", align 1
@.str.405 = private unnamed_addr constant [21 x i8] c"Show _layer boundary\00", align 1
@.str.406 = private unnamed_addr constant [12 x i8] c"show-guides\00", align 1
@.str.407 = private unnamed_addr constant [13 x i8] c"Show _guides\00", align 1
@.str.408 = private unnamed_addr constant [10 x i8] c"show-grid\00", align 1
@.str.409 = private unnamed_addr constant [11 x i8] c"Show gri_d\00", align 1
@.str.410 = private unnamed_addr constant [13 x i8] c"padding-mode\00", align 1
@.str.411 = private unnamed_addr constant [22 x i8] c"Canvas _padding mode:\00", align 1
@.str.412 = private unnamed_addr constant [14 x i8] c"padding-color\00", align 1
@.str.413 = private unnamed_addr constant [23 x i8] c"Custom p_adding color:\00", align 1
@.str.414 = private unnamed_addr constant [35 x i8] c"Select Custom Canvas Padding Color\00", align 1
@.str.415 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@__func__.prefs_resolution_source_callback = private unnamed_addr constant [33 x i8] c"prefs_resolution_source_callback\00", align 1
@.str.416 = private unnamed_addr constant [27 x i8] c"GIMP_IS_SIZE_ENTRY (entry)\00", align 1
@.str.417 = private unnamed_addr constant [41 x i8] c"monitor-resolution-from-windowing-system\00", align 1
@.str.418 = private unnamed_addr constant [14 x i8] c"property-name\00", align 1
@.str.419 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.420 = private unnamed_addr constant [26 x i8] c"gimp-input-devices-dialog\00", align 1
@.str.421 = private unnamed_addr constant [89 x i8] c"Your input device settings will be reset to default values the next time you start GIMP.\00", align 1
@.str.422 = private unnamed_addr constant [80 x i8] c"Your window setup will be reset to default values the next time you start GIMP.\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @preferences_dialog_create(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %config = alloca %struct._GimpConfig*, align 8
  %config_copy = alloca %struct._GimpConfig*, align 8
  %config_orig = alloca %struct._GimpConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
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
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.preferences_dialog_create, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @prefs_dialog, align 8
  %tobool11 = icmp ne %struct._GtkWidget* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** @prefs_dialog, align 8
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %edit_config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 2
  %16 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config, align 8
  %17 = bitcast %struct._GimpCoreConfig* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_rc_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpRc*
  call void @gimp_rc_set_autosave(%struct._GimpRc* %18, i32 0)
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %edit_config16 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 2
  %20 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config16, align 8
  %21 = bitcast %struct._GimpCoreConfig* %20 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_config_interface_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call17)
  %22 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpConfig*
  store %struct._GimpConfig* %22, %struct._GimpConfig** %config, align 8
  %23 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %call19 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %23)
  %24 = bitcast i8* %call19 to %struct._GimpConfig*
  store %struct._GimpConfig* %24, %struct._GimpConfig** %config_copy, align 8
  %25 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %call20 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %25)
  %26 = bitcast i8* %call20 to %struct._GimpConfig*
  store %struct._GimpConfig* %26, %struct._GimpConfig** %config_orig, align 8
  %27 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %28 = bitcast %struct._GimpConfig* %27 to i8*
  %29 = load %struct._GimpConfig*, %struct._GimpConfig** %config_copy, align 8
  %30 = bitcast %struct._GimpConfig* %29 to i8*
  %call21 = call i64 @g_signal_connect_object(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @prefs_config_notify to void ()*), i8* %30, i32 0)
  %31 = load %struct._GimpConfig*, %struct._GimpConfig** %config_copy, align 8
  %32 = bitcast %struct._GimpConfig* %31 to i8*
  %33 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %34 = bitcast %struct._GimpConfig* %33 to i8*
  %call22 = call i64 @g_signal_connect_object(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @prefs_config_copy_notify to void ()*), i8* %34, i32 0)
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %36 = load %struct._GimpConfig*, %struct._GimpConfig** %config_copy, align 8
  %call23 = call %struct._GtkWidget* @prefs_dialog_new(%struct._Gimp* %35, %struct._GimpConfig* %36)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** @prefs_dialog, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** @prefs_dialog, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 80)
  %39 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %39, i8** bitcast (%struct._GtkWidget** @prefs_dialog to i8**))
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** @prefs_dialog, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 80)
  %42 = bitcast %struct._GTypeInstance* %call25 to %struct._GObject*
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %44 = bitcast %struct._Gimp* %43 to i8*
  call void @g_object_set_data(%struct._GObject* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** @prefs_dialog, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 80)
  %47 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  %48 = load %struct._GimpConfig*, %struct._GimpConfig** %config_copy, align 8
  %49 = bitcast %struct._GimpConfig* %48 to i8*
  call void @g_object_set_data_full(%struct._GObject* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* %49, void (i8*)* @g_object_unref)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** @prefs_dialog, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 80)
  %52 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  %53 = load %struct._GimpConfig*, %struct._GimpConfig** %config_orig, align 8
  %54 = bitcast %struct._GimpConfig* %53 to i8*
  call void @g_object_set_data_full(%struct._GObject* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* %54, void (i8*)* @g_object_unref)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** @prefs_dialog, align 8
  store %struct._GtkWidget* %55, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %56
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare void @gimp_rc_set_autosave(%struct._GimpRc*, i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_rc_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #1

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #3

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @prefs_config_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GObject* %config_copy) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %config_copy.addr = alloca %struct._GObject*, align 8
  %global_value = alloca %struct._GValue, align 8
  %copy_value = alloca %struct._GValue, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GObject* %config_copy, %struct._GObject** %config_copy.addr, align 8
  %0 = bitcast %struct._GValue* %global_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %1 = bitcast %struct._GValue* %copy_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 3
  %3 = load i64, i64* %value_type, align 8
  %call = call %struct._GValue* @g_value_init(%struct._GValue* %global_value, i64 %3)
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type1 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 3
  %5 = load i64, i64* %value_type1, align 8
  %call2 = call %struct._GValue* @g_value_init(%struct._GValue* %copy_value, i64 %5)
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %7, i32 0, i32 1
  %8 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %6, i8* %8, %struct._GValue* %global_value)
  %9 = load %struct._GObject*, %struct._GObject** %config_copy.addr, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name3 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name3, align 8
  call void @g_object_get_property(%struct._GObject* %9, i8* %11, %struct._GValue* %copy_value)
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %call4 = call i32 @g_param_values_cmp(%struct._GParamSpec* %12, %struct._GValue* %global_value, %struct._GValue* %copy_value)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GObject*, %struct._GObject** %config_copy.addr, align 8
  %14 = bitcast %struct._GObject* %13 to i8*
  %15 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %call5 = call i32 @g_signal_handlers_block_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @prefs_config_copy_notify to i8*), i8* %16)
  %17 = load %struct._GObject*, %struct._GObject** %config_copy.addr, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name6 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name6, align 8
  call void @g_object_set_property(%struct._GObject* %17, i8* %19, %struct._GValue* %global_value)
  %20 = load %struct._GObject*, %struct._GObject** %config_copy.addr, align 8
  %21 = bitcast %struct._GObject* %20 to i8*
  %22 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %23 = bitcast %struct._GObject* %22 to i8*
  %call7 = call i32 @g_signal_handlers_unblock_matched(i8* %21, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @prefs_config_copy_notify to i8*), i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @g_value_unset(%struct._GValue* %global_value)
  call void @g_value_unset(%struct._GValue* %copy_value)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prefs_config_copy_notify(%struct._GObject* %config_copy, %struct._GParamSpec* %param_spec, %struct._GObject* %config) #0 {
entry:
  %config_copy.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %copy_value = alloca %struct._GValue, align 8
  %global_value = alloca %struct._GValue, align 8
  store %struct._GObject* %config_copy, %struct._GObject** %config_copy.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = bitcast %struct._GValue* %copy_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %1 = bitcast %struct._GValue* %global_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 3
  %3 = load i64, i64* %value_type, align 8
  %call = call %struct._GValue* @g_value_init(%struct._GValue* %copy_value, i64 %3)
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type1 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 3
  %5 = load i64, i64* %value_type1, align 8
  %call2 = call %struct._GValue* @g_value_init(%struct._GValue* %global_value, i64 %5)
  %6 = load %struct._GObject*, %struct._GObject** %config_copy.addr, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %7, i32 0, i32 1
  %8 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %6, i8* %8, %struct._GValue* %copy_value)
  %9 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name3 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name3, align 8
  call void @g_object_get_property(%struct._GObject* %9, i8* %11, %struct._GValue* %global_value)
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %call4 = call i32 @g_param_values_cmp(%struct._GParamSpec* %12, %struct._GValue* %copy_value, %struct._GValue* %global_value)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 2
  %14 = load i32, i32* %flags, align 4
  %and = and i32 %14, 2048
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %17 = load %struct._GObject*, %struct._GObject** %config_copy.addr, align 8
  %18 = bitcast %struct._GObject* %17 to i8*
  %call7 = call i32 @g_signal_handlers_block_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @prefs_config_notify to i8*), i8* %18)
  %19 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name8 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name8, align 8
  call void @g_object_set_property(%struct._GObject* %19, i8* %21, %struct._GValue* %copy_value)
  %22 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %23 = bitcast %struct._GObject* %22 to i8*
  %24 = load %struct._GObject*, %struct._GObject** %config_copy.addr, align 8
  %25 = bitcast %struct._GObject* %24 to i8*
  %call9 = call i32 @g_signal_handlers_unblock_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @prefs_config_notify to i8*), i8* %25)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  call void @g_value_unset(%struct._GValue* %copy_value)
  call void @g_value_unset(%struct._GValue* %global_value)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_dialog_new(%struct._Gimp* %gimp, %struct._GimpConfig* %config) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %config.addr = alloca %struct._GimpConfig*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %tv = alloca %struct._GtkWidget*, align 8
  %tree = alloca %struct._GtkTreeStore*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  %cell = alloca %struct._GtkCellRenderer*, align 8
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %top_iter = alloca %struct._GtkTreeIter, align 8
  %child_iter = alloca %struct._GtkTreeIter, align 8
  %page_index = alloca i32, align 4
  %size_group = alloca %struct._GtkSizeGroup*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %ebox = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %button2 = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %calibrate_button = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GSList*, align 8
  %editor = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  %object = alloca %struct._GObject*, align 8
  %core_config = alloca %struct._GimpCoreConfig*, align 8
  %display_config = alloca %struct._GimpDisplayConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %scrolled_win = alloca %struct._GtkWidget*, align 8
  %list_store = alloca %struct._GtkListStore*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %sel249 = alloca %struct._GtkTreeSelection*, align 8
  %themes = alloca i8**, align 8
  %n_themes = alloca i32, align 4
  %i253 = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %path299 = alloca %struct._GtkTreePath*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %hbox343 = alloca %struct._GtkWidget*, align 8
  %image345 = alloca %struct._GtkWidget*, align 8
  %label347 = alloca %struct._GtkWidget*, align 8
  %icon = alloca i8*, align 8
  %text = alloca i8*, align 8
  %combo518 = alloca %struct._GtkWidget*, align 8
  %format_strings = alloca [5 x i8*], align 16
  %format_names = alloca [5 x i8*], align 16
  %formats = alloca [2 x %struct.anon], align 16
  %format = alloca i32, align 4
  %scrolled_win686 = alloca %struct._GtkWidget*, align 8
  %list_store688 = alloca %struct._GtkListStore*, align 8
  %view690 = alloca %struct._GtkWidget*, align 8
  %sel692 = alloca %struct._GtkTreeSelection*, align 8
  %i694 = alloca i32, align 4
  %iter745 = alloca %struct._GtkTreeIter, align 8
  %pixels_per_unit = alloca i8*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %str = alloca i8*, align 8
  %color_config = alloca %struct._GObject*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %filename = alloca i8*, align 8
  %row = alloca i32, align 4
  %editor1091 = alloca %struct._GtkWidget*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GtkSizeGroup* null, %struct._GtkSizeGroup** %size_group, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.prefs_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %14 = bitcast %struct._GimpConfig* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_config_interface_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type27, align 8
  %21 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %20, %21
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %23 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %24 = load i32, i32* %__r19, align 4
  store i32 %24, i32* %tmp34
  %25 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %25, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.prefs_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %26 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %27 = bitcast %struct._GimpConfig* %26 to %struct._GTypeInstance*
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GObject*
  store %struct._GObject* %28, %struct._GObject** %object, align 8
  %29 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %30 = bitcast %struct._GimpConfig* %29 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_core_config_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call41)
  %31 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpCoreConfig*
  store %struct._GimpCoreConfig* %31, %struct._GimpCoreConfig** %core_config, align 8
  %32 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %33 = bitcast %struct._GimpConfig* %32 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_display_config_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call43)
  %34 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpDisplayConfig*
  store %struct._GimpDisplayConfig* %34, %struct._GimpDisplayConfig** %display_config, align 8
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)) #4
  %call46 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @prefs_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %dialog, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_dialog_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call47)
  %37 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %37, i32 1, i32 -5, i32 -6, i32 -1)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %41 = bitcast %struct._GtkWidget* %40 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GtkWidget*)* @prefs_response to void ()*), i8* %41, void (i8*, %struct._GClosure*)* null, i32 0)
  %call50 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %hbox, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_container_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call51)
  %44 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %44, i32 12)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_dialog_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call53)
  %47 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkDialog*
  %call55 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %47)
  %48 = bitcast %struct._GtkWidget* %call55 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_box_get_type() #6
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call56)
  %49 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkBox*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %49, %struct._GtkWidget* %50, i32 1, i32 1, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %call58 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %frame, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_scrolled_window_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call59)
  %54 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %54, i32 1)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_scrolled_window_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call61)
  %57 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %57, i32 2, i32 1)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call63)
  %60 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %60, %struct._GtkWidget* %61, i32 0, i32 0, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %62)
  %call65 = call i64 @gdk_pixbuf_get_type() #6
  %call66 = call i64 @gdk_pixbuf_get_type() #6
  %call67 = call %struct._GtkTreeStore* (i32, ...) @gtk_tree_store_new(i32 5, i64 %call65, i64 64, i64 24, i64 64, i64 %call66)
  store %struct._GtkTreeStore* %call67, %struct._GtkTreeStore** %tree, align 8
  %63 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %64 = bitcast %struct._GtkTreeStore* %63 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_tree_model_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call68)
  %65 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkTreeModel*
  %call70 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %65)
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %tv, align 8
  %66 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %67 = bitcast %struct._GtkTreeStore* %66 to i8*
  call void @g_object_unref(i8* %67)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_tree_view_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call71)
  %70 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %70, i32 0)
  %call73 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call73, %struct._GtkTreeViewColumn** %column, align 8
  %call74 = call %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new()
  store %struct._GtkCellRenderer* %call74, %struct._GtkCellRenderer** %cell, align 8
  %71 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %72 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %71, %struct._GtkCellRenderer* %72, i32 0)
  %73 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %74 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %73, %struct._GtkCellRenderer* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 0, i8* null)
  %call75 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call75, %struct._GtkCellRenderer** %cell, align 8
  %75 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %76 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %75, %struct._GtkCellRenderer* %76, i32 1)
  %77 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %78 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %77, %struct._GtkCellRenderer* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* null)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_tree_view_get_type() #6
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call76)
  %81 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkTreeView*
  %82 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call78 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %81, %struct._GtkTreeViewColumn* %82)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_container_get_type() #6
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call79)
  %85 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkContainer*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_container_add(%struct._GtkContainer* %85, %struct._GtkWidget* %86)
  %call81 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %vbox, align 8
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_box_get_type() #6
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call82)
  %89 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkBox*
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %89, %struct._GtkWidget* %90, i32 1, i32 1, i32 0)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  %call84 = call %struct._GtkWidget* @gtk_event_box_new()
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %ebox, align 8
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  call void @gtk_widget_set_state(%struct._GtkWidget* %92, i32 3)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_box_get_type() #6
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call85)
  %95 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkBox*
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %95, %struct._GtkWidget* %96, i32 0, i32 1, i32 0)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %97)
  %call87 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call87, %struct._GtkWidget** %hbox, align 8
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_container_get_type() #6
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call88)
  %100 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %100, i32 6)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_container_get_type() #6
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call90)
  %103 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkContainer*
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %103, %struct._GtkWidget* %104)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %105)
  %call92 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  store %struct._GtkWidget* %call92, %struct._GtkWidget** %label, align 8
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_misc_get_type() #6
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call93)
  %108 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %108, float 0.000000e+00, float 5.000000e-01)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_label_get_type() #6
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call95)
  %111 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %111, i32 15, double 1.200000e+00, i32 4, i32 700, i32 -1)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_box_get_type() #6
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call97)
  %114 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkBox*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %114, %struct._GtkWidget* %115, i32 0, i32 0, i32 0)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %116)
  %call99 = call %struct._GtkWidget* @gtk_image_new()
  store %struct._GtkWidget* %call99, %struct._GtkWidget** %image, align 8
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_box_get_type() #6
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call100)
  %119 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkBox*
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %119, %struct._GtkWidget* %120, i32 0, i32 0, i32 0)
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %121)
  %call102 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call102, %struct._GtkWidget** %notebook, align 8
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_notebook_get_type() #6
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call103)
  %124 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_tabs(%struct._GtkNotebook* %124, i32 0)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_notebook_get_type() #6
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call105)
  %127 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_border(%struct._GtkNotebook* %127, i32 0)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_box_get_type() #6
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call107)
  %130 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkBox*
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %130, %struct._GtkWidget* %131, i32 1, i32 1, i32 0)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 80)
  %134 = bitcast %struct._GTypeInstance* %call109 to %struct._GObject*
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %136 = bitcast %struct._GtkWidget* %135 to i8*
  call void @g_object_set_data(%struct._GObject* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* %136)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 80)
  %139 = bitcast %struct._GTypeInstance* %call110 to %struct._GObject*
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %141 = bitcast %struct._GtkWidget* %140 to i8*
  call void @g_object_set_data(%struct._GObject* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* %141)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 80)
  %144 = bitcast %struct._GTypeInstance* %call111 to %struct._GObject*
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %146 = bitcast %struct._GtkWidget* %145 to i8*
  call void @g_object_set_data(%struct._GObject* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* %146)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_tree_view_get_type() #6
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call112)
  %149 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkTreeView*
  %call114 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %149)
  store %struct._GtkTreeSelection* %call114, %struct._GtkTreeSelection** %sel, align 8
  %150 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %151 = bitcast %struct._GtkTreeSelection* %150 to i8*
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %153 = bitcast %struct._GtkWidget* %152 to i8*
  %call115 = call i64 @g_signal_connect_data(i8* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct._GtkNotebook*)* @prefs_tree_select_callback to void ()*), i8* %153, void (i8*, %struct._GClosure*)* null, i32 0)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %155 = bitcast %struct._GtkWidget* %154 to i8*
  %156 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %157 = bitcast %struct._GtkTreeSelection* %156 to i8*
  %call116 = call i64 @g_signal_connect_data(i8* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkNotebook*, i8*, i32, %struct._GtkTreeSelection*)* @prefs_notebook_page_callback to void ()*), i8* %157, void (i8*, %struct._GClosure*)* null, i32 0)
  store i32 0, i32* %page_index, align 4
  %158 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %160 = bitcast %struct._GtkWidget* %159 to %struct._GTypeInstance*
  %call117 = call i64 @gtk_notebook_get_type() #6
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call117)
  %161 = bitcast %struct._GTypeInstance* %call118 to %struct._GtkNotebook*
  %call119 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #4
  %162 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %163 = bitcast %struct._GtkTreeStore* %162 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_tree_store_get_type() #6
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 %call120)
  %164 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkTreeStore*
  %165 = load i32, i32* %page_index, align 4
  %inc = add nsw i32 %165, 1
  store i32 %inc, i32* %page_index, align 4
  %call122 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %158, %struct._GtkNotebook* %161, i8* %call119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), %struct._GtkTreeStore* %164, i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), %struct._GtkTreeIter* null, %struct._GtkTreeIter* %top_iter, i32 %165)
  store %struct._GtkWidget* %call122, %struct._GtkWidget** %vbox, align 8
  %166 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %166, %struct._GtkTreeIter* %top_iter)
  %call123 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call123, %struct._GtkSizeGroup** %size_group, align 8
  %call124 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0)) #4
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %168 = bitcast %struct._GtkWidget* %167 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_container_get_type() #6
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 %call125)
  %169 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkContainer*
  %call127 = call %struct._GtkWidget* @prefs_frame_new(i8* %call124, %struct._GtkContainer* %169, i32 0)
  store %struct._GtkWidget* %call127, %struct._GtkWidget** %vbox2, align 8
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_container_get_type() #6
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call128)
  %172 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkContainer*
  %call130 = call %struct._GtkWidget* @prefs_table_new(i32 5, %struct._GtkContainer* %172)
  store %struct._GtkWidget* %call130, %struct._GtkWidget** %table, align 8
  %173 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call131 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i32 0, i32 0)) #4
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %175 = bitcast %struct._GtkWidget* %174 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_table_get_type() #6
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %175, i64 %call132)
  %176 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkTable*
  %177 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call134 = call %struct._GtkWidget* @prefs_spin_button_add(%struct._GObject* %173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), double 1.000000e+00, double 5.000000e+00, i32 0, i8* %call131, %struct._GtkTable* %176, i32 0, %struct._GtkSizeGroup* %177)
  %178 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call135 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0)) #4
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %180 = bitcast %struct._GtkWidget* %179 to %struct._GTypeInstance*
  %call136 = call i64 @gtk_table_get_type() #6
  %call137 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %180, i64 %call136)
  %181 = bitcast %struct._GTypeInstance* %call137 to %struct._GtkTable*
  %182 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call138 = call %struct._GtkWidget* @prefs_memsize_entry_add(%struct._GObject* %178, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* %call135, %struct._GtkTable* %181, i32 1, %struct._GtkSizeGroup* %182)
  %183 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call139 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0)) #4
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %185 = bitcast %struct._GtkWidget* %184 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_table_get_type() #6
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %185, i64 %call140)
  %186 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkTable*
  %187 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call142 = call %struct._GtkWidget* @prefs_memsize_entry_add(%struct._GObject* %183, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* %call139, %struct._GtkTable* %186, i32 2, %struct._GtkSizeGroup* %187)
  %188 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call143 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0)) #4
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %190 = bitcast %struct._GtkWidget* %189 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_table_get_type() #6
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 %call144)
  %191 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkTable*
  %192 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call146 = call %struct._GtkWidget* @prefs_memsize_entry_add(%struct._GObject* %188, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i8* %call143, %struct._GtkTable* %191, i32 3, %struct._GtkSizeGroup* %192)
  %193 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call147 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i32 0, i32 0)) #4
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %195 = bitcast %struct._GtkWidget* %194 to %struct._GTypeInstance*
  %call148 = call i64 @gtk_table_get_type() #6
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %195, i64 %call148)
  %196 = bitcast %struct._GTypeInstance* %call149 to %struct._GtkTable*
  %197 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call150 = call %struct._GtkWidget* @prefs_spin_button_add(%struct._GObject* %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), double 1.000000e+00, double 4.000000e+00, i32 0, i8* %call147, %struct._GtkTable* %196, i32 4, %struct._GtkSizeGroup* %197)
  %call151 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0)) #4
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %199 = bitcast %struct._GtkWidget* %198 to %struct._GTypeInstance*
  %call152 = call i64 @gtk_container_get_type() #6
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %199, i64 %call152)
  %200 = bitcast %struct._GTypeInstance* %call153 to %struct._GtkContainer*
  %call154 = call %struct._GtkWidget* @prefs_frame_new(i8* %call151, %struct._GtkContainer* %200, i32 0)
  store %struct._GtkWidget* %call154, %struct._GtkWidget** %vbox2, align 8
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %202 = bitcast %struct._GtkWidget* %201 to %struct._GTypeInstance*
  %call155 = call i64 @gtk_container_get_type() #6
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %202, i64 %call155)
  %203 = bitcast %struct._GTypeInstance* %call156 to %struct._GtkContainer*
  %call157 = call %struct._GtkWidget* @prefs_table_new(i32 2, %struct._GtkContainer* %203)
  store %struct._GtkWidget* %call157, %struct._GtkWidget** %table, align 8
  %204 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call158 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0)) #4
  %205 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %206 = bitcast %struct._GtkWidget* %205 to %struct._GTypeInstance*
  %call159 = call i64 @gtk_table_get_type() #6
  %call160 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %206, i64 %call159)
  %207 = bitcast %struct._GTypeInstance* %call160 to %struct._GtkTable*
  %208 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call161 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %204, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 0, i8* %call158, %struct._GtkTable* %207, i32 0, %struct._GtkSizeGroup* %208)
  %209 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call162 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0)) #4
  %210 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %211 = bitcast %struct._GtkWidget* %210 to %struct._GTypeInstance*
  %call163 = call i64 @gtk_table_get_type() #6
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %211, i64 %call163)
  %212 = bitcast %struct._GTypeInstance* %call164 to %struct._GtkTable*
  %213 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call165 = call %struct._GtkWidget* @prefs_memsize_entry_add(%struct._GObject* %209, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), i8* %call162, %struct._GtkTable* %212, i32 1, %struct._GtkSizeGroup* %213)
  %214 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %215 = bitcast %struct._GtkSizeGroup* %214 to i8*
  call void @g_object_unref(i8* %215)
  store %struct._GtkSizeGroup* null, %struct._GtkSizeGroup** %size_group, align 8
  %call166 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0)) #4
  %216 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %217 = bitcast %struct._GtkWidget* %216 to %struct._GTypeInstance*
  %call167 = call i64 @gtk_container_get_type() #6
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %217, i64 %call167)
  %218 = bitcast %struct._GTypeInstance* %call168 to %struct._GtkContainer*
  %call169 = call %struct._GtkWidget* @prefs_frame_new(i8* %call166, %struct._GtkContainer* %218, i32 0)
  store %struct._GtkWidget* %call169, %struct._GtkWidget** %vbox2, align 8
  %219 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call170 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.42, i32 0, i32 0)) #4
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %221 = bitcast %struct._GtkWidget* %220 to %struct._GTypeInstance*
  %call171 = call i64 @gtk_box_get_type() #6
  %call172 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %221, i64 %call171)
  %222 = bitcast %struct._GTypeInstance* %call172 to %struct._GtkBox*
  %call173 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %219, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0), i8* %call170, %struct._GtkBox* %222)
  %223 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %224 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %225 = bitcast %struct._GtkWidget* %224 to %struct._GTypeInstance*
  %call174 = call i64 @gtk_notebook_get_type() #6
  %call175 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %225, i64 %call174)
  %226 = bitcast %struct._GTypeInstance* %call175 to %struct._GtkNotebook*
  %call176 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0)) #4
  %227 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %228 = bitcast %struct._GtkTreeStore* %227 to %struct._GTypeInstance*
  %call177 = call i64 @gtk_tree_store_get_type() #6
  %call178 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %228, i64 %call177)
  %229 = bitcast %struct._GTypeInstance* %call178 to %struct._GtkTreeStore*
  %call179 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0)) #4
  %230 = load i32, i32* %page_index, align 4
  %inc180 = add nsw i32 %230, 1
  store i32 %inc180, i32* %page_index, align 4
  %call181 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %223, %struct._GtkNotebook* %226, i8* %call176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), %struct._GtkTreeStore* %229, i8* %call179, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0), %struct._GtkTreeIter* null, %struct._GtkTreeIter* %top_iter, i32 %230)
  store %struct._GtkWidget* %call181, %struct._GtkWidget** %vbox, align 8
  %call182 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0)) #4
  %231 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %232 = bitcast %struct._GtkWidget* %231 to %struct._GTypeInstance*
  %call183 = call i64 @gtk_container_get_type() #6
  %call184 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %232, i64 %call183)
  %233 = bitcast %struct._GTypeInstance* %call184 to %struct._GtkContainer*
  %call185 = call %struct._GtkWidget* @prefs_frame_new(i8* %call182, %struct._GtkContainer* %233, i32 0)
  store %struct._GtkWidget* %call185, %struct._GtkWidget** %vbox2, align 8
  %234 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call186 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0)) #4
  %235 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %236 = bitcast %struct._GtkWidget* %235 to %struct._GTypeInstance*
  %call187 = call i64 @gtk_box_get_type() #6
  %call188 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %236, i64 %call187)
  %237 = bitcast %struct._GTypeInstance* %call188 to %struct._GtkBox*
  %call189 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %234, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* %call186, %struct._GtkBox* %237)
  %238 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %239 = bitcast %struct._GtkWidget* %238 to %struct._GTypeInstance*
  %call190 = call i64 @gtk_container_get_type() #6
  %call191 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %239, i64 %call190)
  %240 = bitcast %struct._GTypeInstance* %call191 to %struct._GtkContainer*
  %call192 = call %struct._GtkWidget* @prefs_table_new(i32 3, %struct._GtkContainer* %240)
  store %struct._GtkWidget* %call192, %struct._GtkWidget** %table, align 8
  %241 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call193 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.51, i32 0, i32 0)) #4
  %242 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %243 = bitcast %struct._GtkWidget* %242 to %struct._GTypeInstance*
  %call194 = call i64 @gtk_table_get_type() #6
  %call195 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %243, i64 %call194)
  %244 = bitcast %struct._GTypeInstance* %call195 to %struct._GtkTable*
  %245 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call196 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %241, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), i32 0, i32 0, i8* %call193, %struct._GtkTable* %244, i32 0, %struct._GtkSizeGroup* %245)
  %246 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call197 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i32 0, i32 0)) #4
  %247 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %248 = bitcast %struct._GtkWidget* %247 to %struct._GTypeInstance*
  %call198 = call i64 @gtk_table_get_type() #6
  %call199 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %248, i64 %call198)
  %249 = bitcast %struct._GTypeInstance* %call199 to %struct._GtkTable*
  %250 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call200 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %246, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0), i32 0, i32 0, i8* %call197, %struct._GtkTable* %249, i32 1, %struct._GtkSizeGroup* %250)
  %call201 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0)) #4
  %251 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %252 = bitcast %struct._GtkWidget* %251 to %struct._GTypeInstance*
  %call202 = call i64 @gtk_container_get_type() #6
  %call203 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %252, i64 %call202)
  %253 = bitcast %struct._GTypeInstance* %call203 to %struct._GtkContainer*
  %call204 = call %struct._GtkWidget* @prefs_frame_new(i8* %call201, %struct._GtkContainer* %253, i32 0)
  store %struct._GtkWidget* %call204, %struct._GtkWidget** %vbox2, align 8
  %254 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call205 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i32 0, i32 0)) #4
  %255 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %256 = bitcast %struct._GtkWidget* %255 to %struct._GTypeInstance*
  %call206 = call i64 @gtk_box_get_type() #6
  %call207 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %256, i64 %call206)
  %257 = bitcast %struct._GTypeInstance* %call207 to %struct._GtkBox*
  %call208 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %254, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0), i8* %call205, %struct._GtkBox* %257)
  %call209 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.58, i32 0, i32 0)) #4
  %258 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %259 = bitcast %struct._GtkWidget* %258 to %struct._GTypeInstance*
  %call210 = call i64 @gtk_box_get_type() #6
  %call211 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %259, i64 %call210)
  %260 = bitcast %struct._GTypeInstance* %call211 to %struct._GtkBox*
  %call212 = call %struct._GtkWidget* @prefs_button_add(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i8* %call209, %struct._GtkBox* %260)
  store %struct._GtkWidget* %call212, %struct._GtkWidget** %button, align 8
  %261 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %262 = bitcast %struct._GtkWidget* %261 to i8*
  %263 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %264 = bitcast %struct._Gimp* %263 to i8*
  %call213 = call i64 @g_signal_connect_data(i8* %262, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._Gimp*)* @prefs_keyboard_shortcuts_dialog to void ()*), i8* %264, void (i8*, %struct._GClosure*)* null, i32 0)
  %265 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call214 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.61, i32 0, i32 0)) #4
  %266 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %267 = bitcast %struct._GtkWidget* %266 to %struct._GTypeInstance*
  %call215 = call i64 @gtk_box_get_type() #6
  %call216 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %267, i64 %call215)
  %268 = bitcast %struct._GTypeInstance* %call216 to %struct._GtkBox*
  %call217 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %265, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i8* %call214, %struct._GtkBox* %268)
  %call218 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.63, i32 0, i32 0)) #4
  %269 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %270 = bitcast %struct._GtkWidget* %269 to %struct._GTypeInstance*
  %call219 = call i64 @gtk_box_get_type() #6
  %call220 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %270, i64 %call219)
  %271 = bitcast %struct._GTypeInstance* %call220 to %struct._GtkBox*
  %call221 = call %struct._GtkWidget* @prefs_button_add(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* %call218, %struct._GtkBox* %271)
  store %struct._GtkWidget* %call221, %struct._GtkWidget** %button, align 8
  %272 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %273 = bitcast %struct._GtkWidget* %272 to i8*
  %274 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %275 = bitcast %struct._Gimp* %274 to i8*
  %call222 = call i64 @g_signal_connect_data(i8* %273, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._Gimp*)* @prefs_menus_save_callback to void ()*), i8* %275, void (i8*, %struct._GClosure*)* null, i32 0)
  %call223 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.64, i32 0, i32 0)) #4
  %276 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %277 = bitcast %struct._GtkWidget* %276 to %struct._GTypeInstance*
  %call224 = call i64 @gtk_box_get_type() #6
  %call225 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %277, i64 %call224)
  %278 = bitcast %struct._GTypeInstance* %call225 to %struct._GtkBox*
  %call226 = call %struct._GtkWidget* @prefs_button_add(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* %call223, %struct._GtkBox* %278)
  store %struct._GtkWidget* %call226, %struct._GtkWidget** %button2, align 8
  %279 = load %struct._GtkWidget*, %struct._GtkWidget** %button2, align 8
  %280 = bitcast %struct._GtkWidget* %279 to i8*
  %281 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %282 = bitcast %struct._Gimp* %281 to i8*
  %call227 = call i64 @g_signal_connect_data(i8* %280, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._Gimp*)* @prefs_menus_clear_callback to void ()*), i8* %282, void (i8*, %struct._GClosure*)* null, i32 0)
  %283 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %284 = bitcast %struct._GtkWidget* %283 to %struct._GTypeInstance*
  %call228 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %284, i64 80)
  %285 = bitcast %struct._GTypeInstance* %call228 to %struct._GObject*
  %286 = load %struct._GtkWidget*, %struct._GtkWidget** %button2, align 8
  %287 = bitcast %struct._GtkWidget* %286 to i8*
  call void @g_object_set_data(%struct._GObject* %285, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), i8* %287)
  %call229 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0)) #4
  %288 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %289 = bitcast %struct._GtkWidget* %288 to %struct._GTypeInstance*
  %call230 = call i64 @gtk_box_get_type() #6
  %call231 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %289, i64 %call230)
  %290 = bitcast %struct._GTypeInstance* %call231 to %struct._GtkBox*
  %call232 = call %struct._GtkWidget* @prefs_button_add(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i8* %call229, %struct._GtkBox* %290)
  store %struct._GtkWidget* %call232, %struct._GtkWidget** %button, align 8
  %291 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %292 = bitcast %struct._GtkWidget* %291 to i8*
  %293 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %294 = bitcast %struct._Gimp* %293 to i8*
  %call233 = call i64 @g_signal_connect_data(i8* %292, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._Gimp*)* @prefs_menus_remove_callback to void ()*), i8* %294, void (i8*, %struct._GClosure*)* null, i32 0)
  %295 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %296 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %297 = bitcast %struct._GtkWidget* %296 to %struct._GTypeInstance*
  %call234 = call i64 @gtk_notebook_get_type() #6
  %call235 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %297, i64 %call234)
  %298 = bitcast %struct._GTypeInstance* %call235 to %struct._GtkNotebook*
  %call236 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0)) #4
  %299 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %300 = bitcast %struct._GtkTreeStore* %299 to %struct._GTypeInstance*
  %call237 = call i64 @gtk_tree_store_get_type() #6
  %call238 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %300, i64 %call237)
  %301 = bitcast %struct._GTypeInstance* %call238 to %struct._GtkTreeStore*
  %302 = load i32, i32* %page_index, align 4
  %inc239 = add nsw i32 %302, 1
  store i32 %inc239, i32* %page_index, align 4
  %call240 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %295, %struct._GtkNotebook* %298, i8* %call236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), %struct._GtkTreeStore* %301, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), %struct._GtkTreeIter* null, %struct._GtkTreeIter* %top_iter, i32 %302)
  store %struct._GtkWidget* %call240, %struct._GtkWidget** %vbox, align 8
  %call241 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0)) #4
  %303 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %304 = bitcast %struct._GtkWidget* %303 to %struct._GTypeInstance*
  %call242 = call i64 @gtk_container_get_type() #6
  %call243 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %304, i64 %call242)
  %305 = bitcast %struct._GTypeInstance* %call243 to %struct._GtkContainer*
  %call244 = call %struct._GtkWidget* @prefs_frame_new(i8* %call241, %struct._GtkContainer* %305, i32 1)
  store %struct._GtkWidget* %call244, %struct._GtkWidget** %vbox2, align 8
  %call254 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call254, %struct._GtkWidget** %scrolled_win, align 8
  %306 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %306, i32 -1, i32 80)
  %307 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %308 = bitcast %struct._GtkWidget* %307 to %struct._GTypeInstance*
  %call255 = call i64 @gtk_scrolled_window_get_type() #6
  %call256 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %308, i64 %call255)
  %309 = bitcast %struct._GTypeInstance* %call256 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %309, i32 1)
  %310 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %311 = bitcast %struct._GtkWidget* %310 to %struct._GTypeInstance*
  %call257 = call i64 @gtk_scrolled_window_get_type() #6
  %call258 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %311, i64 %call257)
  %312 = bitcast %struct._GTypeInstance* %call258 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %312, i32 2, i32 1)
  %313 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %314 = bitcast %struct._GtkWidget* %313 to %struct._GTypeInstance*
  %call259 = call i64 @gtk_box_get_type() #6
  %call260 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %314, i64 %call259)
  %315 = bitcast %struct._GTypeInstance* %call260 to %struct._GtkBox*
  %316 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %315, %struct._GtkWidget* %316, i32 1, i32 1, i32 0)
  %317 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %317)
  %call261 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 2, i64 64, i64 64)
  store %struct._GtkListStore* %call261, %struct._GtkListStore** %list_store, align 8
  %318 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %319 = bitcast %struct._GtkListStore* %318 to %struct._GTypeInstance*
  %call262 = call i64 @gtk_tree_model_get_type() #6
  %call263 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %319, i64 %call262)
  %320 = bitcast %struct._GTypeInstance* %call263 to %struct._GtkTreeModel*
  %call264 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %320)
  store %struct._GtkWidget* %call264, %struct._GtkWidget** %view, align 8
  %321 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %322 = bitcast %struct._GtkWidget* %321 to %struct._GTypeInstance*
  %call265 = call i64 @gtk_container_get_type() #6
  %call266 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %322, i64 %call265)
  %323 = bitcast %struct._GTypeInstance* %call266 to %struct._GtkContainer*
  %324 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %323, %struct._GtkWidget* %324)
  %325 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %325)
  %326 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %327 = bitcast %struct._GtkListStore* %326 to i8*
  call void @g_object_unref(i8* %327)
  %328 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %329 = bitcast %struct._GtkWidget* %328 to %struct._GTypeInstance*
  %call267 = call i64 @gtk_tree_view_get_type() #6
  %call268 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %329, i64 %call267)
  %330 = bitcast %struct._GTypeInstance* %call268 to %struct._GtkTreeView*
  %call269 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0)) #4
  %call270 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call271 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %330, i32 0, i8* %call269, %struct._GtkCellRenderer* %call270, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* null)
  %331 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %332 = bitcast %struct._GtkWidget* %331 to %struct._GTypeInstance*
  %call272 = call i64 @gtk_tree_view_get_type() #6
  %call273 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %332, i64 %call272)
  %333 = bitcast %struct._GTypeInstance* %call273 to %struct._GtkTreeView*
  %call274 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0)) #4
  %call275 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call276 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %333, i32 1, i8* %call274, %struct._GtkCellRenderer* %call275, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* null)
  %334 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %335 = bitcast %struct._GtkWidget* %334 to %struct._GTypeInstance*
  %call277 = call i64 @gtk_tree_view_get_type() #6
  %call278 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %335, i64 %call277)
  %336 = bitcast %struct._GTypeInstance* %call278 to %struct._GtkTreeView*
  %call279 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %336)
  store %struct._GtkTreeSelection* %call279, %struct._GtkTreeSelection** %sel249, align 8
  %337 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call280 = call i8** @themes_list_themes(%struct._Gimp* %337, i32* %n_themes)
  store i8** %call280, i8*** %themes, align 8
  store i32 0, i32* %i253, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.39
  %338 = load i32, i32* %i253, align 4
  %339 = load i32, i32* %n_themes, align 4
  %cmp281 = icmp slt i32 %338, %339
  br i1 %cmp281, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %340 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %340, %struct._GtkTreeIter* %iter)
  %341 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %342 = load i32, i32* %i253, align 4
  %idxprom = sext i32 %342 to i64
  %343 = load i8**, i8*** %themes, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %343, i64 %idxprom
  %344 = load i8*, i8** %arrayidx, align 8
  %345 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %346 = load i32, i32* %i253, align 4
  %idxprom283 = sext i32 %346 to i64
  %347 = load i8**, i8*** %themes, align 8
  %arrayidx284 = getelementptr inbounds i8*, i8** %347, i64 %idxprom283
  %348 = load i8*, i8** %arrayidx284, align 8
  %call285 = call i8* @themes_get_theme_dir(%struct._Gimp* %345, i8* %348)
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %341, %struct._GtkTreeIter* %iter, i32 0, i8* %344, i32 1, i8* %call285, i32 -1)
  %349 = load %struct._GObject*, %struct._GObject** %object, align 8
  %350 = bitcast %struct._GObject* %349 to %struct._GTypeInstance*
  %call286 = call i64 @gimp_gui_config_get_type() #6
  %call287 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %350, i64 %call286)
  %351 = bitcast %struct._GTypeInstance* %call287 to %struct._GimpGuiConfig*
  %theme = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %351, i32 0, i32 20
  %352 = load i8*, i8** %theme, align 8
  %tobool288 = icmp ne i8* %352, null
  br i1 %tobool288, label %land.lhs.true.289, label %if.end.307

land.lhs.true.289:                                ; preds = %for.body
  %353 = load %struct._GObject*, %struct._GObject** %object, align 8
  %354 = bitcast %struct._GObject* %353 to %struct._GTypeInstance*
  %call290 = call i64 @gimp_gui_config_get_type() #6
  %call291 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %354, i64 %call290)
  %355 = bitcast %struct._GTypeInstance* %call291 to %struct._GimpGuiConfig*
  %theme292 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %355, i32 0, i32 20
  %356 = load i8*, i8** %theme292, align 8
  %357 = load i32, i32* %i253, align 4
  %idxprom293 = sext i32 %357 to i64
  %358 = load i8**, i8*** %themes, align 8
  %arrayidx294 = getelementptr inbounds i8*, i8** %358, i64 %idxprom293
  %359 = load i8*, i8** %arrayidx294, align 8
  %call295 = call i32 @strcmp(i8* %356, i8* %359) #7
  %tobool296 = icmp ne i32 %call295, 0
  br i1 %tobool296, label %if.end.307, label %if.then.297

if.then.297:                                      ; preds = %land.lhs.true.289
  %360 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %361 = bitcast %struct._GtkListStore* %360 to %struct._GTypeInstance*
  %call300 = call i64 @gtk_tree_model_get_type() #6
  %call301 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %361, i64 %call300)
  %362 = bitcast %struct._GTypeInstance* %call301 to %struct._GtkTreeModel*
  %call302 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %362, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call302, %struct._GtkTreePath** %path299, align 8
  %363 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %364 = bitcast %struct._GtkWidget* %363 to %struct._GTypeInstance*
  %call303 = call i64 @gtk_tree_view_get_type() #6
  %call304 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %364, i64 %call303)
  %365 = bitcast %struct._GTypeInstance* %call304 to %struct._GtkTreeView*
  %366 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path299, align 8
  call void @gtk_tree_view_set_cursor(%struct._GtkTreeView* %365, %struct._GtkTreePath* %366, %struct._GtkTreeViewColumn* null, i32 0)
  %367 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %368 = bitcast %struct._GtkWidget* %367 to %struct._GTypeInstance*
  %call305 = call i64 @gtk_tree_view_get_type() #6
  %call306 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %368, i64 %call305)
  %369 = bitcast %struct._GTypeInstance* %call306 to %struct._GtkTreeView*
  %370 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path299, align 8
  call void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView* %369, %struct._GtkTreePath* %370, %struct._GtkTreeViewColumn* null, i32 0, float 0.000000e+00, float 0.000000e+00)
  %371 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path299, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %371)
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.297, %land.lhs.true.289, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.307
  %372 = load i32, i32* %i253, align 4
  %inc308 = add nsw i32 %372, 1
  store i32 %inc308, i32* %i253, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %373 = load i8**, i8*** %themes, align 8
  %tobool309 = icmp ne i8** %373, null
  br i1 %tobool309, label %if.then.310, label %if.end.311

if.then.310:                                      ; preds = %for.end
  %374 = load i8**, i8*** %themes, align 8
  call void @g_strfreev(i8** %374)
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.310, %for.end
  %375 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel249, align 8
  %376 = bitcast %struct._GtkTreeSelection* %375 to i8*
  %377 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %378 = bitcast %struct._Gimp* %377 to i8*
  %call312 = call i64 @g_signal_connect_data(i8* %376, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct._Gimp*)* @prefs_theme_select_callback to void ()*), i8* %378, void (i8*, %struct._GClosure*)* null, i32 0)
  %call313 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call313, %struct._GtkWidget** %hbox, align 8
  %379 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %380 = bitcast %struct._GtkWidget* %379 to %struct._GTypeInstance*
  %call314 = call i64 @gtk_box_get_type() #6
  %call315 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %380, i64 %call314)
  %381 = bitcast %struct._GTypeInstance* %call315 to %struct._GtkBox*
  %382 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %381, %struct._GtkWidget* %382, i32 0, i32 0, i32 0)
  %383 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %383)
  %call316 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.74, i32 0, i32 0)) #4
  %384 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %385 = bitcast %struct._GtkWidget* %384 to %struct._GTypeInstance*
  %call317 = call i64 @gtk_box_get_type() #6
  %call318 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %385, i64 %call317)
  %386 = bitcast %struct._GTypeInstance* %call318 to %struct._GtkBox*
  %call319 = call %struct._GtkWidget* @prefs_button_add(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0), i8* %call316, %struct._GtkBox* %386)
  store %struct._GtkWidget* %call319, %struct._GtkWidget** %button, align 8
  %387 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %388 = bitcast %struct._GtkWidget* %387 to i8*
  %389 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %390 = bitcast %struct._Gimp* %389 to i8*
  %call320 = call i64 @g_signal_connect_data(i8* %388, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._Gimp*)* @prefs_theme_reload_callback to void ()*), i8* %390, void (i8*, %struct._GClosure*)* null, i32 0)
  %391 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %392 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %393 = bitcast %struct._GtkWidget* %392 to %struct._GTypeInstance*
  %call321 = call i64 @gtk_notebook_get_type() #6
  %call322 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %393, i64 %call321)
  %394 = bitcast %struct._GTypeInstance* %call322 to %struct._GtkNotebook*
  %call323 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0)) #4
  %395 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %396 = bitcast %struct._GtkTreeStore* %395 to %struct._GTypeInstance*
  %call324 = call i64 @gtk_tree_store_get_type() #6
  %call325 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %396, i64 %call324)
  %397 = bitcast %struct._GTypeInstance* %call325 to %struct._GtkTreeStore*
  %398 = load i32, i32* %page_index, align 4
  %inc326 = add nsw i32 %398, 1
  store i32 %inc326, i32* %page_index, align 4
  %call327 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %391, %struct._GtkNotebook* %394, i8* %call323, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), %struct._GtkTreeStore* %397, i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0), %struct._GtkTreeIter* null, %struct._GtkTreeIter* %top_iter, i32 %398)
  store %struct._GtkWidget* %call327, %struct._GtkWidget** %vbox, align 8
  %call328 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call328, %struct._GtkSizeGroup** %size_group, align 8
  %call329 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0)) #4
  %399 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %400 = bitcast %struct._GtkWidget* %399 to %struct._GTypeInstance*
  %call330 = call i64 @gtk_container_get_type() #6
  %call331 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %400, i64 %call330)
  %401 = bitcast %struct._GTypeInstance* %call331 to %struct._GtkContainer*
  %call332 = call %struct._GtkWidget* @prefs_frame_new(i8* %call329, %struct._GtkContainer* %401, i32 0)
  store %struct._GtkWidget* %call332, %struct._GtkWidget** %vbox2, align 8
  %402 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call333 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0)) #4
  %403 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %404 = bitcast %struct._GtkWidget* %403 to %struct._GTypeInstance*
  %call334 = call i64 @gtk_box_get_type() #6
  %call335 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %404, i64 %call334)
  %405 = bitcast %struct._GTypeInstance* %call335 to %struct._GtkBox*
  %call336 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %402, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i32 0, i32 0), i8* %call333, %struct._GtkBox* %405)
  %406 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call337 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.82, i32 0, i32 0)) #4
  %407 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %408 = bitcast %struct._GtkWidget* %407 to %struct._GTypeInstance*
  %call338 = call i64 @gtk_box_get_type() #6
  %call339 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %408, i64 %call338)
  %409 = bitcast %struct._GTypeInstance* %call339 to %struct._GtkBox*
  %call340 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %406, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0), i8* %call337, %struct._GtkBox* %409)
  %410 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %411 = bitcast %struct._GtkWidget* %410 to %struct._GTypeInstance*
  %call350 = call i64 @gtk_container_get_type() #6
  %call351 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %411, i64 %call350)
  %412 = bitcast %struct._GTypeInstance* %call351 to %struct._GtkContainer*
  %call352 = call %struct._GtkWidget* @prefs_table_new(i32 2, %struct._GtkContainer* %412)
  store %struct._GtkWidget* %call352, %struct._GtkWidget** %table, align 8
  %413 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call353 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.84, i32 0, i32 0)) #4
  %call354 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.85, i32 0, i32 0)) #4
  %call355 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0)) #4
  %414 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %415 = bitcast %struct._GtkWidget* %414 to %struct._GTypeInstance*
  %call356 = call i64 @gtk_table_get_type() #6
  %call357 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %415, i64 %call356)
  %416 = bitcast %struct._GTypeInstance* %call357 to %struct._GtkTable*
  %417 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call358 = call %struct._GtkWidget* @prefs_boolean_combo_box_add(%struct._GObject* %413, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i32 0, i32 0), i8* %call353, i8* %call354, i8* %call355, %struct._GtkTable* %416, i32 0, %struct._GtkSizeGroup* %417)
  store %struct._GtkWidget* %call358, %struct._GtkWidget** %combo, align 8
  %418 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %418, i8* null, i8* null)
  %419 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call359 = call i32 @gimp_help_user_manual_is_installed(%struct._Gimp* %419)
  %tobool360 = icmp ne i32 %call359, 0
  br i1 %tobool360, label %if.then.361, label %if.else.363

if.then.361:                                      ; preds = %if.end.311
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i8** %icon, align 8
  %call362 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i32 0, i32 0)) #4
  store i8* %call362, i8** %text, align 8
  br label %if.end.365

if.else.363:                                      ; preds = %if.end.311
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), i8** %icon, align 8
  %call364 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.90, i32 0, i32 0)) #4
  store i8* %call364, i8** %text, align 8
  br label %if.end.365

if.end.365:                                       ; preds = %if.else.363, %if.then.361
  %call366 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call366, %struct._GtkWidget** %hbox343, align 8
  %420 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %421 = bitcast %struct._GtkWidget* %420 to %struct._GTypeInstance*
  %call367 = call i64 @gtk_table_get_type() #6
  %call368 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %421, i64 %call367)
  %422 = bitcast %struct._GTypeInstance* %call368 to %struct._GtkTable*
  %423 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox343, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %422, %struct._GtkWidget* %423, i32 1, i32 2, i32 1, i32 2)
  %424 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox343, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %424)
  %425 = load i8*, i8** %icon, align 8
  %call369 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %425, i32 4)
  store %struct._GtkWidget* %call369, %struct._GtkWidget** %image345, align 8
  %426 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox343, align 8
  %427 = bitcast %struct._GtkWidget* %426 to %struct._GTypeInstance*
  %call370 = call i64 @gtk_box_get_type() #6
  %call371 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %427, i64 %call370)
  %428 = bitcast %struct._GTypeInstance* %call371 to %struct._GtkBox*
  %429 = load %struct._GtkWidget*, %struct._GtkWidget** %image345, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %428, %struct._GtkWidget* %429, i32 0, i32 0, i32 0)
  %430 = load %struct._GtkWidget*, %struct._GtkWidget** %image345, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %430)
  %431 = load i8*, i8** %text, align 8
  %call372 = call %struct._GtkWidget* @gtk_label_new(i8* %431)
  store %struct._GtkWidget* %call372, %struct._GtkWidget** %label347, align 8
  %432 = load %struct._GtkWidget*, %struct._GtkWidget** %label347, align 8
  %433 = bitcast %struct._GtkWidget* %432 to %struct._GTypeInstance*
  %call373 = call i64 @gtk_label_get_type() #6
  %call374 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %433, i64 %call373)
  %434 = bitcast %struct._GTypeInstance* %call374 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %434, i32 3, i32 2, i32 -1)
  %435 = load %struct._GtkWidget*, %struct._GtkWidget** %label347, align 8
  %436 = bitcast %struct._GtkWidget* %435 to %struct._GTypeInstance*
  %call375 = call i64 @gtk_label_get_type() #6
  %call376 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %436, i64 %call375)
  %437 = bitcast %struct._GTypeInstance* %call376 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %437, i32 1)
  %438 = load %struct._GtkWidget*, %struct._GtkWidget** %label347, align 8
  %439 = bitcast %struct._GtkWidget* %438 to %struct._GTypeInstance*
  %call377 = call i64 @gtk_misc_get_type() #6
  %call378 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %439, i64 %call377)
  %440 = bitcast %struct._GTypeInstance* %call378 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %440, float 0.000000e+00, float 5.000000e-01)
  %441 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox343, align 8
  %442 = bitcast %struct._GtkWidget* %441 to %struct._GTypeInstance*
  %call379 = call i64 @gtk_box_get_type() #6
  %call380 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %442, i64 %call379)
  %443 = bitcast %struct._GTypeInstance* %call380 to %struct._GtkBox*
  %444 = load %struct._GtkWidget*, %struct._GtkWidget** %label347, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %443, %struct._GtkWidget* %444, i32 1, i32 1, i32 0)
  %445 = load %struct._GtkWidget*, %struct._GtkWidget** %label347, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %445)
  %446 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %446, i32 0, i32 44
  %447 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %call381 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %447, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.91, i32 0, i32 0))
  %tobool382 = icmp ne %struct._GimpProcedure* %call381, null
  br i1 %tobool382, label %if.then.383, label %if.end.395

if.then.383:                                      ; preds = %if.end.365
  %call384 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0)) #4
  %448 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %449 = bitcast %struct._GtkWidget* %448 to %struct._GTypeInstance*
  %call385 = call i64 @gtk_container_get_type() #6
  %call386 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %449, i64 %call385)
  %450 = bitcast %struct._GTypeInstance* %call386 to %struct._GtkContainer*
  %call387 = call %struct._GtkWidget* @prefs_frame_new(i8* %call384, %struct._GtkContainer* %450, i32 0)
  store %struct._GtkWidget* %call387, %struct._GtkWidget** %vbox2, align 8
  %451 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %452 = bitcast %struct._GtkWidget* %451 to %struct._GTypeInstance*
  %call388 = call i64 @gtk_container_get_type() #6
  %call389 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %452, i64 %call388)
  %453 = bitcast %struct._GTypeInstance* %call389 to %struct._GtkContainer*
  %call390 = call %struct._GtkWidget* @prefs_table_new(i32 1, %struct._GtkContainer* %453)
  store %struct._GtkWidget* %call390, %struct._GtkWidget** %table, align 8
  %454 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call391 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i32 0, i32 0)) #4
  %455 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %456 = bitcast %struct._GtkWidget* %455 to %struct._GTypeInstance*
  %call392 = call i64 @gtk_table_get_type() #6
  %call393 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %456, i64 %call392)
  %457 = bitcast %struct._GTypeInstance* %call393 to %struct._GtkTable*
  %458 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call394 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %454, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i32 0, i32 0), i32 0, i32 0, i8* %call391, %struct._GtkTable* %457, i32 0, %struct._GtkSizeGroup* %458)
  br label %if.end.395

if.end.395:                                       ; preds = %if.then.383, %if.end.365
  %459 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %460 = bitcast %struct._GtkSizeGroup* %459 to i8*
  call void @g_object_unref(i8* %460)
  store %struct._GtkSizeGroup* null, %struct._GtkSizeGroup** %size_group, align 8
  %461 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %462 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %463 = bitcast %struct._GtkWidget* %462 to %struct._GTypeInstance*
  %call396 = call i64 @gtk_notebook_get_type() #6
  %call397 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %463, i64 %call396)
  %464 = bitcast %struct._GTypeInstance* %call397 to %struct._GtkNotebook*
  %call398 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i32 0, i32 0)) #4
  %465 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %466 = bitcast %struct._GtkTreeStore* %465 to %struct._GTypeInstance*
  %call399 = call i64 @gtk_tree_store_get_type() #6
  %call400 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %466, i64 %call399)
  %467 = bitcast %struct._GTypeInstance* %call400 to %struct._GtkTreeStore*
  %468 = load i32, i32* %page_index, align 4
  %inc401 = add nsw i32 %468, 1
  store i32 %inc401, i32* %page_index, align 4
  %call402 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %461, %struct._GtkNotebook* %464, i8* %call398, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), %struct._GtkTreeStore* %467, i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.97, i32 0, i32 0), %struct._GtkTreeIter* null, %struct._GtkTreeIter* %top_iter, i32 %468)
  store %struct._GtkWidget* %call402, %struct._GtkWidget** %vbox, align 8
  %call403 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call403, %struct._GtkSizeGroup** %size_group, align 8
  %call404 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0)) #4
  %469 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %470 = bitcast %struct._GtkWidget* %469 to %struct._GTypeInstance*
  %call405 = call i64 @gtk_container_get_type() #6
  %call406 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %470, i64 %call405)
  %471 = bitcast %struct._GTypeInstance* %call406 to %struct._GtkContainer*
  %call407 = call %struct._GtkWidget* @prefs_frame_new(i8* %call404, %struct._GtkContainer* %471, i32 0)
  store %struct._GtkWidget* %call407, %struct._GtkWidget** %vbox2, align 8
  %472 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call408 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.99, i32 0, i32 0)) #4
  %473 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %474 = bitcast %struct._GtkWidget* %473 to %struct._GTypeInstance*
  %call409 = call i64 @gtk_box_get_type() #6
  %call410 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %474, i64 %call409)
  %475 = bitcast %struct._GTypeInstance* %call410 to %struct._GtkBox*
  %call411 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %472, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.98, i32 0, i32 0), i8* %call408, %struct._GtkBox* %475)
  %call412 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.100, i32 0, i32 0)) #4
  %476 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %477 = bitcast %struct._GtkWidget* %476 to %struct._GTypeInstance*
  %call413 = call i64 @gtk_box_get_type() #6
  %call414 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %477, i64 %call413)
  %478 = bitcast %struct._GTypeInstance* %call414 to %struct._GtkBox*
  %call415 = call %struct._GtkWidget* @prefs_button_add(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* %call412, %struct._GtkBox* %478)
  store %struct._GtkWidget* %call415, %struct._GtkWidget** %button, align 8
  %479 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %480 = bitcast %struct._GtkWidget* %479 to i8*
  %481 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %482 = bitcast %struct._Gimp* %481 to i8*
  %call416 = call i64 @g_signal_connect_data(i8* %480, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._Gimp*)* @prefs_tool_options_save_callback to void ()*), i8* %482, void (i8*, %struct._GClosure*)* null, i32 0)
  %call417 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.101, i32 0, i32 0)) #4
  %483 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %484 = bitcast %struct._GtkWidget* %483 to %struct._GTypeInstance*
  %call418 = call i64 @gtk_box_get_type() #6
  %call419 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %484, i64 %call418)
  %485 = bitcast %struct._GTypeInstance* %call419 to %struct._GtkBox*
  %call420 = call %struct._GtkWidget* @prefs_button_add(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* %call417, %struct._GtkBox* %485)
  store %struct._GtkWidget* %call420, %struct._GtkWidget** %button2, align 8
  %486 = load %struct._GtkWidget*, %struct._GtkWidget** %button2, align 8
  %487 = bitcast %struct._GtkWidget* %486 to i8*
  %488 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %489 = bitcast %struct._Gimp* %488 to i8*
  %call421 = call i64 @g_signal_connect_data(i8* %487, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._Gimp*)* @prefs_tool_options_clear_callback to void ()*), i8* %489, void (i8*, %struct._GClosure*)* null, i32 0)
  %490 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %491 = bitcast %struct._GtkWidget* %490 to %struct._GTypeInstance*
  %call422 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %491, i64 80)
  %492 = bitcast %struct._GTypeInstance* %call422 to %struct._GObject*
  %493 = load %struct._GtkWidget*, %struct._GtkWidget** %button2, align 8
  %494 = bitcast %struct._GtkWidget* %493 to i8*
  call void @g_object_set_data(%struct._GObject* %492, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), i8* %494)
  %call423 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.102, i32 0, i32 0)) #4
  %495 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %496 = bitcast %struct._GtkWidget* %495 to %struct._GTypeInstance*
  %call424 = call i64 @gtk_container_get_type() #6
  %call425 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %496, i64 %call424)
  %497 = bitcast %struct._GTypeInstance* %call425 to %struct._GtkContainer*
  %call426 = call %struct._GtkWidget* @prefs_frame_new(i8* %call423, %struct._GtkContainer* %497, i32 0)
  store %struct._GtkWidget* %call426, %struct._GtkWidget** %vbox2, align 8
  %498 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %499 = bitcast %struct._GtkWidget* %498 to %struct._GTypeInstance*
  %call427 = call i64 @gtk_container_get_type() #6
  %call428 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %499, i64 %call427)
  %500 = bitcast %struct._GTypeInstance* %call428 to %struct._GtkContainer*
  %call429 = call %struct._GtkWidget* @prefs_table_new(i32 1, %struct._GtkContainer* %500)
  store %struct._GtkWidget* %call429, %struct._GtkWidget** %table, align 8
  %501 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call430 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.104, i32 0, i32 0)) #4
  %502 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %503 = bitcast %struct._GtkWidget* %502 to %struct._GTypeInstance*
  %call431 = call i64 @gtk_table_get_type() #6
  %call432 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %503, i64 %call431)
  %504 = bitcast %struct._GTypeInstance* %call432 to %struct._GtkTable*
  %505 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call433 = call %struct._GtkWidget* @prefs_spin_button_add(%struct._GObject* %501, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.103, i32 0, i32 0), double 1.000000e+00, double 5.000000e+00, i32 0, i8* %call430, %struct._GtkTable* %504, i32 0, %struct._GtkSizeGroup* %505)
  %call434 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0)) #4
  %506 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %507 = bitcast %struct._GtkWidget* %506 to %struct._GTypeInstance*
  %call435 = call i64 @gtk_container_get_type() #6
  %call436 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %507, i64 %call435)
  %508 = bitcast %struct._GTypeInstance* %call436 to %struct._GtkContainer*
  %call437 = call %struct._GtkWidget* @prefs_frame_new(i8* %call434, %struct._GtkContainer* %508, i32 0)
  store %struct._GtkWidget* %call437, %struct._GtkWidget** %vbox2, align 8
  %509 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %510 = bitcast %struct._GtkWidget* %509 to %struct._GTypeInstance*
  %call438 = call i64 @gtk_container_get_type() #6
  %call439 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %510, i64 %call438)
  %511 = bitcast %struct._GTypeInstance* %call439 to %struct._GtkContainer*
  %call440 = call %struct._GtkWidget* @prefs_table_new(i32 1, %struct._GtkContainer* %511)
  store %struct._GtkWidget* %call440, %struct._GtkWidget** %table, align 8
  %512 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call441 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.107, i32 0, i32 0)) #4
  %513 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %514 = bitcast %struct._GtkWidget* %513 to %struct._GTypeInstance*
  %call442 = call i64 @gtk_table_get_type() #6
  %call443 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %514, i64 %call442)
  %515 = bitcast %struct._GTypeInstance* %call443 to %struct._GtkTable*
  %516 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call444 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %512, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.106, i32 0, i32 0), i32 0, i32 0, i8* %call441, %struct._GtkTable* %515, i32 0, %struct._GtkSizeGroup* %516)
  %517 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %518 = bitcast %struct._GtkSizeGroup* %517 to i8*
  call void @g_object_unref(i8* %518)
  %call445 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call445, %struct._GtkSizeGroup** %size_group, align 8
  %call446 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.108, i32 0, i32 0)) #4
  %519 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %520 = bitcast %struct._GtkWidget* %519 to %struct._GTypeInstance*
  %call447 = call i64 @gtk_container_get_type() #6
  %call448 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %520, i64 %call447)
  %521 = bitcast %struct._GTypeInstance* %call448 to %struct._GtkContainer*
  %call449 = call %struct._GtkWidget* @prefs_frame_new(i8* %call446, %struct._GtkContainer* %521, i32 0)
  store %struct._GtkWidget* %call449, %struct._GtkWidget** %vbox2, align 8
  %522 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call450 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0)) #4
  %523 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %524 = bitcast %struct._GtkWidget* %523 to %struct._GTypeInstance*
  %call451 = call i64 @gtk_box_get_type() #6
  %call452 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %524, i64 %call451)
  %525 = bitcast %struct._GTypeInstance* %call452 to %struct._GtkBox*
  %526 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call453 = call %struct._GtkWidget* @prefs_check_button_add_with_icon(%struct._GObject* %522, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), i8* %call450, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.111, i32 0, i32 0), %struct._GtkBox* %525, %struct._GtkSizeGroup* %526)
  %527 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call454 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0)) #4
  %528 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %529 = bitcast %struct._GtkWidget* %528 to %struct._GTypeInstance*
  %call455 = call i64 @gtk_box_get_type() #6
  %call456 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %529, i64 %call455)
  %530 = bitcast %struct._GTypeInstance* %call456 to %struct._GtkBox*
  %531 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call457 = call %struct._GtkWidget* @prefs_check_button_add_with_icon(%struct._GObject* %527, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.112, i32 0, i32 0), i8* %call454, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0), %struct._GtkBox* %530, %struct._GtkSizeGroup* %531)
  %532 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call458 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0)) #4
  %533 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %534 = bitcast %struct._GtkWidget* %533 to %struct._GTypeInstance*
  %call459 = call i64 @gtk_box_get_type() #6
  %call460 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %534, i64 %call459)
  %535 = bitcast %struct._GTypeInstance* %call460 to %struct._GtkBox*
  %536 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call461 = call %struct._GtkWidget* @prefs_check_button_add_with_icon(%struct._GObject* %532, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.115, i32 0, i32 0), i8* %call458, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.117, i32 0, i32 0), %struct._GtkBox* %535, %struct._GtkSizeGroup* %536)
  %537 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call462 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0)) #4
  %538 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %539 = bitcast %struct._GtkWidget* %538 to %struct._GTypeInstance*
  %call463 = call i64 @gtk_box_get_type() #6
  %call464 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %539, i64 %call463)
  %540 = bitcast %struct._GTypeInstance* %call464 to %struct._GtkBox*
  %541 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call465 = call %struct._GtkWidget* @prefs_check_button_add_with_icon(%struct._GObject* %537, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.118, i32 0, i32 0), i8* %call462, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.120, i32 0, i32 0), %struct._GtkBox* %540, %struct._GtkSizeGroup* %541)
  %call466 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0)) #4
  %542 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %543 = bitcast %struct._GtkWidget* %542 to %struct._GTypeInstance*
  %call467 = call i64 @gtk_container_get_type() #6
  %call468 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %543, i64 %call467)
  %544 = bitcast %struct._GTypeInstance* %call468 to %struct._GtkContainer*
  %call469 = call %struct._GtkWidget* @prefs_frame_new(i8* %call466, %struct._GtkContainer* %544, i32 0)
  store %struct._GtkWidget* %call469, %struct._GtkWidget** %vbox2, align 8
  %545 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call470 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.123, i32 0, i32 0)) #4
  %546 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %547 = bitcast %struct._GtkWidget* %546 to %struct._GTypeInstance*
  %call471 = call i64 @gtk_box_get_type() #6
  %call472 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %547, i64 %call471)
  %548 = bitcast %struct._GTypeInstance* %call472 to %struct._GtkBox*
  %549 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call473 = call %struct._GtkWidget* @prefs_check_button_add_with_icon(%struct._GObject* %545, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.122, i32 0, i32 0), i8* %call470, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.124, i32 0, i32 0), %struct._GtkBox* %548, %struct._GtkSizeGroup* %549)
  %550 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %551 = bitcast %struct._GtkSizeGroup* %550 to i8*
  call void @g_object_unref(i8* %551)
  store %struct._GtkSizeGroup* null, %struct._GtkSizeGroup** %size_group, align 8
  %552 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %553 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %554 = bitcast %struct._GtkWidget* %553 to %struct._GTypeInstance*
  %call474 = call i64 @gtk_notebook_get_type() #6
  %call475 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %554, i64 %call474)
  %555 = bitcast %struct._GTypeInstance* %call475 to %struct._GtkNotebook*
  %call476 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0)) #4
  %556 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %557 = bitcast %struct._GtkTreeStore* %556 to %struct._GTypeInstance*
  %call477 = call i64 @gtk_tree_store_get_type() #6
  %call478 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %557, i64 %call477)
  %558 = bitcast %struct._GTypeInstance* %call478 to %struct._GtkTreeStore*
  %559 = load i32, i32* %page_index, align 4
  %inc479 = add nsw i32 %559, 1
  store i32 %inc479, i32* %page_index, align 4
  %call480 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %552, %struct._GtkNotebook* %555, i8* %call476, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i32 0, i32 0), %struct._GtkTreeStore* %558, i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.127, i32 0, i32 0), %struct._GtkTreeIter* null, %struct._GtkTreeIter* %top_iter, i32 %559)
  store %struct._GtkWidget* %call480, %struct._GtkWidget** %vbox, align 8
  %call481 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call481, %struct._GtkSizeGroup** %size_group, align 8
  %call482 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.128, i32 0, i32 0)) #4
  %560 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %561 = bitcast %struct._GtkWidget* %560 to %struct._GTypeInstance*
  %call483 = call i64 @gtk_container_get_type() #6
  %call484 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %561, i64 %call483)
  %562 = bitcast %struct._GTypeInstance* %call484 to %struct._GtkContainer*
  %call485 = call %struct._GtkWidget* @prefs_frame_new(i8* %call482, %struct._GtkContainer* %562, i32 0)
  store %struct._GtkWidget* %call485, %struct._GtkWidget** %vbox2, align 8
  %563 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call486 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.130, i32 0, i32 0)) #4
  %564 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %565 = bitcast %struct._GtkWidget* %564 to %struct._GTypeInstance*
  %call487 = call i64 @gtk_box_get_type() #6
  %call488 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %565, i64 %call487)
  %566 = bitcast %struct._GTypeInstance* %call488 to %struct._GtkBox*
  %567 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call489 = call %struct._GtkWidget* @prefs_check_button_add_with_icon(%struct._GObject* %563, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.129, i32 0, i32 0), i8* %call486, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.131, i32 0, i32 0), %struct._GtkBox* %566, %struct._GtkSizeGroup* %567)
  %568 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call490 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.133, i32 0, i32 0)) #4
  %569 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %570 = bitcast %struct._GtkWidget* %569 to %struct._GTypeInstance*
  %call491 = call i64 @gtk_box_get_type() #6
  %call492 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %570, i64 %call491)
  %571 = bitcast %struct._GTypeInstance* %call492 to %struct._GtkBox*
  %572 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call493 = call %struct._GtkWidget* @prefs_check_button_add_with_icon(%struct._GObject* %568, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.132, i32 0, i32 0), i8* %call490, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.111, i32 0, i32 0), %struct._GtkBox* %571, %struct._GtkSizeGroup* %572)
  %573 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call494 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.135, i32 0, i32 0)) #4
  %574 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %575 = bitcast %struct._GtkWidget* %574 to %struct._GTypeInstance*
  %call495 = call i64 @gtk_box_get_type() #6
  %call496 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %575, i64 %call495)
  %576 = bitcast %struct._GTypeInstance* %call496 to %struct._GtkBox*
  %577 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call497 = call %struct._GtkWidget* @prefs_check_button_add_with_icon(%struct._GObject* %573, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.134, i32 0, i32 0), i8* %call494, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.136, i32 0, i32 0), %struct._GtkBox* %576, %struct._GtkSizeGroup* %577)
  %578 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %579 = bitcast %struct._GtkSizeGroup* %578 to i8*
  call void @g_object_unref(i8* %579)
  store %struct._GtkSizeGroup* null, %struct._GtkSizeGroup** %size_group, align 8
  %call498 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.137, i32 0, i32 0)) #4
  %580 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %581 = bitcast %struct._GtkWidget* %580 to %struct._GTypeInstance*
  %call499 = call i64 @gtk_container_get_type() #6
  %call500 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %581, i64 %call499)
  %582 = bitcast %struct._GTypeInstance* %call500 to %struct._GtkContainer*
  %call501 = call %struct._GtkWidget* @prefs_frame_new(i8* %call498, %struct._GtkContainer* %582, i32 1)
  store %struct._GtkWidget* %call501, %struct._GtkWidget** %vbox2, align 8
  %583 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %583, i32 0, i32 45
  %584 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  %585 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context = getelementptr inbounds %struct._Gimp, %struct._Gimp* %585, i32 0, i32 52
  %586 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %587 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call502 = call %struct._GList* @gimp_tools_get_default_order(%struct._Gimp* %587)
  %call503 = call %struct._GtkWidget* @gimp_tool_editor_new(%struct._GimpContainer* %584, %struct._GimpContext* %586, %struct._GList* %call502, i32 24, i32 1)
  store %struct._GtkWidget* %call503, %struct._GtkWidget** @tool_editor, align 8
  %588 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %589 = bitcast %struct._GtkWidget* %588 to %struct._GTypeInstance*
  %call504 = call i64 @gtk_box_get_type() #6
  %call505 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %589, i64 %call504)
  %590 = bitcast %struct._GTypeInstance* %call505 to %struct._GtkBox*
  %591 = load %struct._GtkWidget*, %struct._GtkWidget** @tool_editor, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %590, %struct._GtkWidget* %591, i32 1, i32 1, i32 0)
  %592 = load %struct._GtkWidget*, %struct._GtkWidget** @tool_editor, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %592)
  %593 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %594 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %595 = bitcast %struct._GtkWidget* %594 to %struct._GTypeInstance*
  %call506 = call i64 @gtk_notebook_get_type() #6
  %call507 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %595, i64 %call506)
  %596 = bitcast %struct._GTypeInstance* %call507 to %struct._GtkNotebook*
  %call508 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.138, i32 0, i32 0)) #4
  %597 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %598 = bitcast %struct._GtkTreeStore* %597 to %struct._GTypeInstance*
  %call509 = call i64 @gtk_tree_store_get_type() #6
  %call510 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %598, i64 %call509)
  %599 = bitcast %struct._GTypeInstance* %call510 to %struct._GtkTreeStore*
  %call511 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.140, i32 0, i32 0)) #4
  %600 = load i32, i32* %page_index, align 4
  %inc512 = add nsw i32 %600, 1
  store i32 %inc512, i32* %page_index, align 4
  %call513 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %593, %struct._GtkNotebook* %596, i8* %call508, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i32 0, i32 0), %struct._GtkTreeStore* %599, i8* %call511, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.141, i32 0, i32 0), %struct._GtkTreeIter* null, %struct._GtkTreeIter* %top_iter, i32 %600)
  store %struct._GtkWidget* %call513, %struct._GtkWidget** %vbox, align 8
  %601 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %602 = bitcast %struct._GtkWidget* %601 to %struct._GTypeInstance*
  %call514 = call i64 @gtk_container_get_type() #6
  %call515 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %602, i64 %call514)
  %603 = bitcast %struct._GTypeInstance* %call515 to %struct._GtkContainer*
  %call516 = call %struct._GtkWidget* @prefs_table_new(i32 1, %struct._GtkContainer* %603)
  store %struct._GtkWidget* %call516, %struct._GtkWidget** %table, align 8
  %604 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %templates = getelementptr inbounds %struct._Gimp, %struct._Gimp* %604, i32 0, i32 48
  %605 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %606 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call519 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %606)
  %call520 = call %struct._GtkWidget* @gimp_container_combo_box_new(%struct._GimpContainer* %605, %struct._GimpContext* %call519, i32 16, i32 0)
  store %struct._GtkWidget* %call520, %struct._GtkWidget** %combo518, align 8
  %607 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %608 = bitcast %struct._GtkWidget* %607 to %struct._GTypeInstance*
  %call521 = call i64 @gtk_table_get_type() #6
  %call522 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %608, i64 %call521)
  %609 = bitcast %struct._GTypeInstance* %call522 to %struct._GtkTable*
  %call523 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.142, i32 0, i32 0)) #4
  %610 = load %struct._GtkWidget*, %struct._GtkWidget** %combo518, align 8
  %call524 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %609, i32 0, i32 0, i8* %call523, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %610, i32 1, i32 0)
  %611 = load %struct._GtkWidget*, %struct._GtkWidget** %combo518, align 8
  %612 = bitcast %struct._GtkWidget* %611 to %struct._GTypeInstance*
  %call525 = call i64 @gimp_container_view_interface_get_type() #6
  %call526 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %612, i64 %call525)
  %613 = bitcast %struct._GTypeInstance* %call526 to %struct._GimpContainerView*
  %call527 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %613, %struct._GimpViewable* null)
  %614 = load %struct._GtkWidget*, %struct._GtkWidget** %combo518, align 8
  %615 = bitcast %struct._GtkWidget* %614 to i8*
  %616 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_image = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %616, i32 0, i32 35
  %617 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image, align 8
  %618 = bitcast %struct._GimpTemplate* %617 to i8*
  %call528 = call i64 @g_signal_connect_data(i8* %615, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.143, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GimpTemplate*, i8*, %struct._GimpTemplate*)* @prefs_template_select_callback to void ()*), i8* %618, void (i8*, %struct._GClosure*)* null, i32 0)
  %619 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_image529 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %619, i32 0, i32 35
  %620 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image529, align 8
  %621 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call530 = call %struct._GtkWidget* @gimp_template_editor_new(%struct._GimpTemplate* %620, %struct._Gimp* %621, i32 0)
  store %struct._GtkWidget* %call530, %struct._GtkWidget** %editor, align 8
  %622 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %623 = bitcast %struct._GtkWidget* %622 to %struct._GTypeInstance*
  %call531 = call i64 @gimp_template_editor_get_type() #6
  %call532 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %623, i64 %call531)
  %624 = bitcast %struct._GTypeInstance* %call532 to %struct._GimpTemplateEditor*
  call void @gimp_template_editor_show_advanced(%struct._GimpTemplateEditor* %624, i32 1)
  %625 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %626 = bitcast %struct._GtkWidget* %625 to %struct._GTypeInstance*
  %call533 = call i64 @gtk_box_get_type() #6
  %call534 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %626, i64 %call533)
  %627 = bitcast %struct._GTypeInstance* %call534 to %struct._GtkBox*
  %628 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %627, %struct._GtkWidget* %628, i32 0, i32 0, i32 0)
  %629 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %629)
  %call535 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.144, i32 0, i32 0)) #4
  %630 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %631 = bitcast %struct._GtkWidget* %630 to %struct._GTypeInstance*
  %call536 = call i64 @gtk_container_get_type() #6
  %call537 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %631, i64 %call536)
  %632 = bitcast %struct._GTypeInstance* %call537 to %struct._GtkContainer*
  %call538 = call %struct._GtkWidget* @prefs_frame_new(i8* %call535, %struct._GtkContainer* %632, i32 0)
  store %struct._GtkWidget* %call538, %struct._GtkWidget** %vbox2, align 8
  %633 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %634 = bitcast %struct._GtkWidget* %633 to %struct._GTypeInstance*
  %call539 = call i64 @gtk_container_get_type() #6
  %call540 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %634, i64 %call539)
  %635 = bitcast %struct._GTypeInstance* %call540 to %struct._GtkContainer*
  %call541 = call %struct._GtkWidget* @prefs_table_new(i32 1, %struct._GtkContainer* %635)
  store %struct._GtkWidget* %call541, %struct._GtkWidget** %table, align 8
  %636 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call542 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.146, i32 0, i32 0)) #4
  %call543 = call %struct._GtkWidget* @gimp_prop_color_button_new(%struct._GObject* %636, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.145, i32 0, i32 0), i8* %call542, i32 40, i32 24, i32 1)
  store %struct._GtkWidget* %call543, %struct._GtkWidget** %button, align 8
  %637 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %638 = bitcast %struct._GtkWidget* %637 to %struct._GTypeInstance*
  %call544 = call i64 @gimp_color_panel_get_type() #6
  %call545 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %638, i64 %call544)
  %639 = bitcast %struct._GTypeInstance* %call545 to %struct._GimpColorPanel*
  %640 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call546 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %640)
  call void @gimp_color_panel_set_context(%struct._GimpColorPanel* %639, %struct._GimpContext* %call546)
  %641 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call547 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.147, i32 0, i32 0)) #4
  %642 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %643 = bitcast %struct._GtkWidget* %642 to %struct._GTypeInstance*
  %call548 = call i64 @gtk_table_get_type() #6
  %call549 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %643, i64 %call548)
  %644 = bitcast %struct._GTypeInstance* %call549 to %struct._GtkTable*
  %call550 = call %struct._GtkWidget* @prefs_widget_add_aligned(%struct._GtkWidget* %641, i8* %call547, %struct._GtkTable* %644, i32 0, i32 1, %struct._GtkSizeGroup* null)
  %645 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %646 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %647 = bitcast %struct._GtkWidget* %646 to %struct._GTypeInstance*
  %call551 = call i64 @gtk_notebook_get_type() #6
  %call552 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %647, i64 %call551)
  %648 = bitcast %struct._GTypeInstance* %call552 to %struct._GtkNotebook*
  %call553 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.148, i32 0, i32 0)) #4
  %649 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %650 = bitcast %struct._GtkTreeStore* %649 to %struct._GTypeInstance*
  %call554 = call i64 @gtk_tree_store_get_type() #6
  %call555 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %650, i64 %call554)
  %651 = bitcast %struct._GTypeInstance* %call555 to %struct._GtkTreeStore*
  %call556 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.150, i32 0, i32 0)) #4
  %652 = load i32, i32* %page_index, align 4
  %inc557 = add nsw i32 %652, 1
  store i32 %inc557, i32* %page_index, align 4
  %call558 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %645, %struct._GtkNotebook* %648, i8* %call553, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.149, i32 0, i32 0), %struct._GtkTreeStore* %651, i8* %call556, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.151, i32 0, i32 0), %struct._GtkTreeIter* null, %struct._GtkTreeIter* %top_iter, i32 %652)
  store %struct._GtkWidget* %call558, %struct._GtkWidget** %vbox, align 8
  %653 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_grid = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %653, i32 0, i32 36
  %654 = load %struct._GimpGrid*, %struct._GimpGrid** %default_grid, align 8
  %655 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call559 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %655)
  %656 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_image560 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %656, i32 0, i32 35
  %657 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image560, align 8
  %call561 = call double @gimp_template_get_resolution_x(%struct._GimpTemplate* %657)
  %658 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_image562 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %658, i32 0, i32 35
  %659 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image562, align 8
  %call563 = call double @gimp_template_get_resolution_y(%struct._GimpTemplate* %659)
  %call564 = call %struct._GtkWidget* @gimp_grid_editor_new(%struct._GimpGrid* %654, %struct._GimpContext* %call559, double %call561, double %call563)
  store %struct._GtkWidget* %call564, %struct._GtkWidget** %editor, align 8
  %660 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %661 = bitcast %struct._GtkWidget* %660 to %struct._GTypeInstance*
  %call565 = call i64 @gtk_box_get_type() #6
  %call566 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %661, i64 %call565)
  %662 = bitcast %struct._GTypeInstance* %call566 to %struct._GtkBox*
  %663 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %662, %struct._GtkWidget* %663, i32 1, i32 1, i32 0)
  %664 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %664)
  %665 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %666 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %667 = bitcast %struct._GtkWidget* %666 to %struct._GTypeInstance*
  %call567 = call i64 @gtk_notebook_get_type() #6
  %call568 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %667, i64 %call567)
  %668 = bitcast %struct._GTypeInstance* %call568 to %struct._GtkNotebook*
  %call569 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.152, i32 0, i32 0)) #4
  %669 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %670 = bitcast %struct._GtkTreeStore* %669 to %struct._GTypeInstance*
  %call570 = call i64 @gtk_tree_store_get_type() #6
  %call571 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %670, i64 %call570)
  %671 = bitcast %struct._GTypeInstance* %call571 to %struct._GtkTreeStore*
  %672 = load i32, i32* %page_index, align 4
  %inc572 = add nsw i32 %672, 1
  store i32 %inc572, i32* %page_index, align 4
  %call573 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %665, %struct._GtkNotebook* %668, i8* %call569, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.153, i32 0, i32 0), %struct._GtkTreeStore* %671, i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.154, i32 0, i32 0), %struct._GtkTreeIter* null, %struct._GtkTreeIter* %top_iter, i32 %672)
  store %struct._GtkWidget* %call573, %struct._GtkWidget** %vbox, align 8
  %call574 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call574, %struct._GtkSizeGroup** %size_group, align 8
  %call575 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0)) #4
  %673 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %674 = bitcast %struct._GtkWidget* %673 to %struct._GTypeInstance*
  %call576 = call i64 @gtk_container_get_type() #6
  %call577 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %674, i64 %call576)
  %675 = bitcast %struct._GTypeInstance* %call577 to %struct._GtkContainer*
  %call578 = call %struct._GtkWidget* @prefs_frame_new(i8* %call575, %struct._GtkContainer* %675, i32 0)
  store %struct._GtkWidget* %call578, %struct._GtkWidget** %vbox2, align 8
  %676 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call579 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.156, i32 0, i32 0)) #4
  %677 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %678 = bitcast %struct._GtkWidget* %677 to %struct._GTypeInstance*
  %call580 = call i64 @gtk_box_get_type() #6
  %call581 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %678, i64 %call580)
  %679 = bitcast %struct._GTypeInstance* %call581 to %struct._GtkBox*
  %call582 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %676, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.155, i32 0, i32 0), i8* %call579, %struct._GtkBox* %679)
  %680 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %681 = bitcast %struct._GtkWidget* %680 to %struct._GTypeInstance*
  %call583 = call i64 @gtk_container_get_type() #6
  %call584 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %681, i64 %call583)
  %682 = bitcast %struct._GTypeInstance* %call584 to %struct._GtkContainer*
  %call585 = call %struct._GtkWidget* @prefs_table_new(i32 1, %struct._GtkContainer* %682)
  store %struct._GtkWidget* %call585, %struct._GtkWidget** %table, align 8
  %683 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call586 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.158, i32 0, i32 0)) #4
  %684 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %685 = bitcast %struct._GtkWidget* %684 to %struct._GTypeInstance*
  %call587 = call i64 @gtk_table_get_type() #6
  %call588 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %685, i64 %call587)
  %686 = bitcast %struct._GTypeInstance* %call588 to %struct._GtkTable*
  %687 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call589 = call %struct._GtkWidget* @prefs_spin_button_add(%struct._GObject* %683, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.157, i32 0, i32 0), double 1.000000e+00, double 1.000000e+01, i32 0, i8* %call586, %struct._GtkTable* %686, i32 0, %struct._GtkSizeGroup* %687)
  %call590 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.159, i32 0, i32 0)) #4
  %688 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %689 = bitcast %struct._GtkWidget* %688 to %struct._GTypeInstance*
  %call591 = call i64 @gtk_container_get_type() #6
  %call592 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %689, i64 %call591)
  %690 = bitcast %struct._GTypeInstance* %call592 to %struct._GtkContainer*
  %call593 = call %struct._GtkWidget* @prefs_frame_new(i8* %call590, %struct._GtkContainer* %690, i32 0)
  store %struct._GtkWidget* %call593, %struct._GtkWidget** %vbox2, align 8
  %691 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call594 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.161, i32 0, i32 0)) #4
  %692 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %693 = bitcast %struct._GtkWidget* %692 to %struct._GTypeInstance*
  %call595 = call i64 @gtk_box_get_type() #6
  %call596 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %693, i64 %call595)
  %694 = bitcast %struct._GTypeInstance* %call596 to %struct._GtkBox*
  %call597 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %691, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.160, i32 0, i32 0), i8* %call594, %struct._GtkBox* %694)
  %695 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call598 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.163, i32 0, i32 0)) #4
  %696 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %697 = bitcast %struct._GtkWidget* %696 to %struct._GTypeInstance*
  %call599 = call i64 @gtk_box_get_type() #6
  %call600 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %697, i64 %call599)
  %698 = bitcast %struct._GTypeInstance* %call600 to %struct._GtkBox*
  %call601 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %695, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.162, i32 0, i32 0), i8* %call598, %struct._GtkBox* %698)
  %699 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %700 = bitcast %struct._GtkWidget* %699 to %struct._GTypeInstance*
  %call602 = call i64 @gtk_container_get_type() #6
  %call603 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %700, i64 %call602)
  %701 = bitcast %struct._GTypeInstance* %call603 to %struct._GtkContainer*
  %call604 = call %struct._GtkWidget* @prefs_table_new(i32 1, %struct._GtkContainer* %701)
  store %struct._GtkWidget* %call604, %struct._GtkWidget** %table, align 8
  %702 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call605 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.165, i32 0, i32 0)) #4
  %call606 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.167, i32 0, i32 0)) #4
  %703 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %704 = bitcast %struct._GtkWidget* %703 to %struct._GTypeInstance*
  %call607 = call i64 @gtk_table_get_type() #6
  %call608 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %704, i64 %call607)
  %705 = bitcast %struct._GTypeInstance* %call608 to %struct._GtkTable*
  %706 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call609 = call %struct._GtkWidget* @prefs_boolean_combo_box_add(%struct._GObject* %702, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.164, i32 0, i32 0), i8* %call605, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.166, i32 0, i32 0), i8* %call606, %struct._GtkTable* %705, i32 0, %struct._GtkSizeGroup* %706)
  %call610 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.168, i32 0, i32 0)) #4
  %707 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %708 = bitcast %struct._GtkWidget* %707 to %struct._GTypeInstance*
  %call611 = call i64 @gtk_container_get_type() #6
  %call612 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %708, i64 %call611)
  %709 = bitcast %struct._GTypeInstance* %call612 to %struct._GtkContainer*
  %call613 = call %struct._GtkWidget* @prefs_frame_new(i8* %call610, %struct._GtkContainer* %709, i32 0)
  store %struct._GtkWidget* %call613, %struct._GtkWidget** %vbox2, align 8
  %710 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %711 = bitcast %struct._GtkWidget* %710 to %struct._GTypeInstance*
  %call614 = call i64 @gtk_container_get_type() #6
  %call615 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %711, i64 %call614)
  %712 = bitcast %struct._GTypeInstance* %call615 to %struct._GtkContainer*
  %call616 = call %struct._GtkWidget* @prefs_table_new(i32 1, %struct._GtkContainer* %712)
  store %struct._GtkWidget* %call616, %struct._GtkWidget** %table, align 8
  %713 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call617 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.170, i32 0, i32 0)) #4
  %714 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %715 = bitcast %struct._GtkWidget* %714 to %struct._GTypeInstance*
  %call618 = call i64 @gtk_table_get_type() #6
  %call619 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %715, i64 %call618)
  %716 = bitcast %struct._GTypeInstance* %call619 to %struct._GtkTable*
  %717 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call620 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %713, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.169, i32 0, i32 0), i32 0, i32 0, i8* %call617, %struct._GtkTable* %716, i32 0, %struct._GtkSizeGroup* %717)
  %call621 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.171, i32 0, i32 0)) #4
  %718 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %719 = bitcast %struct._GtkWidget* %718 to %struct._GTypeInstance*
  %call622 = call i64 @gtk_container_get_type() #6
  %call623 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %719, i64 %call622)
  %720 = bitcast %struct._GTypeInstance* %call623 to %struct._GtkContainer*
  %call624 = call %struct._GtkWidget* @prefs_frame_new(i8* %call621, %struct._GtkContainer* %720, i32 0)
  store %struct._GtkWidget* %call624, %struct._GtkWidget** %vbox2, align 8
  %721 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call625 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.173, i32 0, i32 0)) #4
  %722 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %723 = bitcast %struct._GtkWidget* %722 to %struct._GTypeInstance*
  %call626 = call i64 @gtk_box_get_type() #6
  %call627 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %723, i64 %call626)
  %724 = bitcast %struct._GTypeInstance* %call627 to %struct._GtkBox*
  %call628 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %721, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.172, i32 0, i32 0), i8* %call625, %struct._GtkBox* %724)
  %725 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call629 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.175, i32 0, i32 0)) #4
  %726 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %727 = bitcast %struct._GtkWidget* %726 to %struct._GTypeInstance*
  %call630 = call i64 @gtk_box_get_type() #6
  %call631 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %727, i64 %call630)
  %728 = bitcast %struct._GTypeInstance* %call631 to %struct._GtkBox*
  %call632 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %725, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.174, i32 0, i32 0), i8* %call629, %struct._GtkBox* %728)
  %729 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %730 = bitcast %struct._GtkWidget* %729 to %struct._GTypeInstance*
  %call633 = call i64 @gtk_container_get_type() #6
  %call634 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %730, i64 %call633)
  %731 = bitcast %struct._GTypeInstance* %call634 to %struct._GtkContainer*
  %call635 = call %struct._GtkWidget* @prefs_table_new(i32 3, %struct._GtkContainer* %731)
  store %struct._GtkWidget* %call635, %struct._GtkWidget** %table, align 8
  %732 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call636 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.177, i32 0, i32 0)) #4
  %733 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %734 = bitcast %struct._GtkWidget* %733 to %struct._GTypeInstance*
  %call637 = call i64 @gtk_table_get_type() #6
  %call638 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %734, i64 %call637)
  %735 = bitcast %struct._GTypeInstance* %call638 to %struct._GtkTable*
  %736 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call639 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %732, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.176, i32 0, i32 0), i32 0, i32 0, i8* %call636, %struct._GtkTable* %735, i32 0, %struct._GtkSizeGroup* %736)
  %737 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call640 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.179, i32 0, i32 0)) #4
  %738 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %739 = bitcast %struct._GtkWidget* %738 to %struct._GTypeInstance*
  %call641 = call i64 @gtk_table_get_type() #6
  %call642 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %739, i64 %call641)
  %740 = bitcast %struct._GTypeInstance* %call642 to %struct._GtkTable*
  %741 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call643 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %737, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.178, i32 0, i32 0), i32 0, i32 0, i8* %call640, %struct._GtkTable* %740, i32 1, %struct._GtkSizeGroup* %741)
  %742 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call644 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.181, i32 0, i32 0)) #4
  %743 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %744 = bitcast %struct._GtkWidget* %743 to %struct._GTypeInstance*
  %call645 = call i64 @gtk_table_get_type() #6
  %call646 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %744, i64 %call645)
  %745 = bitcast %struct._GTypeInstance* %call646 to %struct._GtkTable*
  %call647 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %742, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.180, i32 0, i32 0), i32 0, i32 0, i8* %call644, %struct._GtkTable* %745, i32 2, %struct._GtkSizeGroup* null)
  %746 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %747 = bitcast %struct._GtkSizeGroup* %746 to i8*
  call void @g_object_unref(i8* %747)
  store %struct._GtkSizeGroup* null, %struct._GtkSizeGroup** %size_group, align 8
  %748 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %749 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %750 = bitcast %struct._GtkWidget* %749 to %struct._GTypeInstance*
  %call648 = call i64 @gtk_notebook_get_type() #6
  %call649 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %750, i64 %call648)
  %751 = bitcast %struct._GTypeInstance* %call649 to %struct._GtkNotebook*
  %call650 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.182, i32 0, i32 0)) #4
  %752 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %753 = bitcast %struct._GtkTreeStore* %752 to %struct._GTypeInstance*
  %call651 = call i64 @gtk_tree_store_get_type() #6
  %call652 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %753, i64 %call651)
  %754 = bitcast %struct._GTypeInstance* %call652 to %struct._GtkTreeStore*
  %call653 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.128, i32 0, i32 0)) #4
  %755 = load i32, i32* %page_index, align 4
  %inc654 = add nsw i32 %755, 1
  store i32 %inc654, i32* %page_index, align 4
  %call655 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %748, %struct._GtkNotebook* %751, i8* %call650, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.153, i32 0, i32 0), %struct._GtkTreeStore* %754, i8* %call653, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.183, i32 0, i32 0), %struct._GtkTreeIter* %top_iter, %struct._GtkTreeIter* %child_iter, i32 %755)
  store %struct._GtkWidget* %call655, %struct._GtkWidget** %vbox, align 8
  %756 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %757 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %757, i32 0, i32 20
  %758 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_view, align 8
  %759 = bitcast %struct._GimpDisplayOptions* %758 to %struct._GTypeInstance*
  %call656 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %759, i64 80)
  %760 = bitcast %struct._GTypeInstance* %call656 to %struct._GObject*
  %call657 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.184, i32 0, i32 0)) #4
  %761 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %762 = bitcast %struct._GtkWidget* %761 to %struct._GTypeInstance*
  %call658 = call i64 @gtk_container_get_type() #6
  %call659 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %762, i64 %call658)
  %763 = bitcast %struct._GTypeInstance* %call659 to %struct._GtkContainer*
  call void @prefs_display_options_frame_add(%struct._Gimp* %756, %struct._GObject* %760, i8* %call657, %struct._GtkContainer* %763)
  %764 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %765 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_fullscreen_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %765, i32 0, i32 21
  %766 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_fullscreen_view, align 8
  %767 = bitcast %struct._GimpDisplayOptions* %766 to %struct._GTypeInstance*
  %call660 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %767, i64 80)
  %768 = bitcast %struct._GTypeInstance* %call660 to %struct._GObject*
  %call661 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.185, i32 0, i32 0)) #4
  %769 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %770 = bitcast %struct._GtkWidget* %769 to %struct._GTypeInstance*
  %call662 = call i64 @gtk_container_get_type() #6
  %call663 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %770, i64 %call662)
  %771 = bitcast %struct._GTypeInstance* %call663 to %struct._GtkContainer*
  call void @prefs_display_options_frame_add(%struct._Gimp* %764, %struct._GObject* %768, i8* %call661, %struct._GtkContainer* %771)
  %772 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %773 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %774 = bitcast %struct._GtkWidget* %773 to %struct._GTypeInstance*
  %call664 = call i64 @gtk_notebook_get_type() #6
  %call665 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %774, i64 %call664)
  %775 = bitcast %struct._GTypeInstance* %call665 to %struct._GtkNotebook*
  %call666 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.186, i32 0, i32 0)) #4
  %776 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %777 = bitcast %struct._GtkTreeStore* %776 to %struct._GTypeInstance*
  %call667 = call i64 @gtk_tree_store_get_type() #6
  %call668 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %777, i64 %call667)
  %778 = bitcast %struct._GTypeInstance* %call668 to %struct._GtkTreeStore*
  %call669 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.188, i32 0, i32 0)) #4
  %779 = load i32, i32* %page_index, align 4
  %inc670 = add nsw i32 %779, 1
  store i32 %inc670, i32* %page_index, align 4
  %call671 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %772, %struct._GtkNotebook* %775, i8* %call666, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.187, i32 0, i32 0), %struct._GtkTreeStore* %778, i8* %call669, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.189, i32 0, i32 0), %struct._GtkTreeIter* %top_iter, %struct._GtkTreeIter* %child_iter, i32 %779)
  store %struct._GtkWidget* %call671, %struct._GtkWidget** %vbox, align 8
  %780 = bitcast [5 x i8*]* %format_strings to i8*
  call void @llvm.memset.p0i8.i64(i8* %780, i8 0, i64 40, i32 16, i1 false)
  %781 = bitcast i8* %780 to [5 x i8*]*
  %782 = getelementptr [5 x i8*], [5 x i8*]* %781, i32 0, i32 2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.190, i32 0, i32 0), i8** %782
  %783 = getelementptr [5 x i8*], [5 x i8*]* %781, i32 0, i32 3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.191, i32 0, i32 0), i8** %783
  %784 = getelementptr [5 x i8*], [5 x i8*]* %781, i32 0, i32 4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.192, i32 0, i32 0), i8** %784
  %785 = bitcast [5 x i8*]* %format_names to i8*
  call void @llvm.memset.p0i8.i64(i8* %785, i8 0, i64 40, i32 16, i1 false)
  %786 = bitcast i8* %785 to [5 x i8*]*
  %787 = getelementptr [5 x i8*], [5 x i8*]* %786, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.193, i32 0, i32 0), i8** %787
  %788 = getelementptr [5 x i8*], [5 x i8*]* %786, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.194, i32 0, i32 0), i8** %788
  %789 = getelementptr [5 x i8*], [5 x i8*]* %786, i32 0, i32 2
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.195, i32 0, i32 0), i8** %789
  %790 = getelementptr [5 x i8*], [5 x i8*]* %786, i32 0, i32 3
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.196, i32 0, i32 0), i8** %790
  %791 = getelementptr [5 x i8*], [5 x i8*]* %786, i32 0, i32 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.197, i32 0, i32 0), i8** %791
  %792 = bitcast [2 x %struct.anon]* %formats to i8*
  call void @llvm.memset.p0i8.i64(i8* %792, i8 0, i64 64, i32 16, i1 false)
  %793 = bitcast i8* %792 to [2 x %struct.anon]*
  %794 = getelementptr [2 x %struct.anon], [2 x %struct.anon]* %793, i32 0, i32 0
  %795 = getelementptr %struct.anon, %struct.anon* %794, i32 0, i32 1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.198, i32 0, i32 0), i8** %795
  %796 = getelementptr %struct.anon, %struct.anon* %794, i32 0, i32 2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.199, i32 0, i32 0), i8** %796
  %797 = getelementptr %struct.anon, %struct.anon* %794, i32 0, i32 3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.200, i32 0, i32 0), i8** %797
  %798 = getelementptr [2 x %struct.anon], [2 x %struct.anon]* %793, i32 0, i32 1
  %799 = getelementptr %struct.anon, %struct.anon* %798, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.201, i32 0, i32 0), i8** %799
  %800 = getelementptr %struct.anon, %struct.anon* %798, i32 0, i32 2
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.202, i32 0, i32 0), i8** %800
  %801 = getelementptr %struct.anon, %struct.anon* %798, i32 0, i32 3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.203, i32 0, i32 0), i8** %801
  br label %do.body.676

do.body.676:                                      ; preds = %if.end.395
  br label %do.end.677

do.end.677:                                       ; preds = %do.body.676
  %802 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %image_title_format = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %802, i32 0, i32 14
  %803 = load i8*, i8** %image_title_format, align 8
  %arrayidx678 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %formats, i32 0, i64 0
  %current_setting = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx678, i32 0, i32 0
  store i8* %803, i8** %current_setting, align 8
  %804 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %image_status_format = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %804, i32 0, i32 15
  %805 = load i8*, i8** %image_status_format, align 8
  %arrayidx679 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %formats, i32 0, i64 1
  %current_setting680 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx679, i32 0, i32 0
  store i8* %805, i8** %current_setting680, align 8
  store i32 0, i32* %format, align 4
  br label %for.cond.681

for.cond.681:                                     ; preds = %for.inc.759, %do.end.677
  %806 = load i32, i32* %format, align 4
  %conv = sext i32 %806 to i64
  %cmp682 = icmp ult i64 %conv, 2
  br i1 %cmp682, label %for.body.684, label %for.end.761

for.body.684:                                     ; preds = %for.cond.681
  %807 = load i32, i32* %format, align 4
  %idxprom695 = sext i32 %807 to i64
  %arrayidx696 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %formats, i32 0, i64 %idxprom695
  %current_setting697 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx696, i32 0, i32 0
  %808 = load i8*, i8** %current_setting697, align 8
  %arrayidx698 = getelementptr inbounds [5 x i8*], [5 x i8*]* %format_strings, i32 0, i64 0
  store i8* %808, i8** %arrayidx698, align 8
  %809 = load i32, i32* %format, align 4
  %idxprom699 = sext i32 %809 to i64
  %arrayidx700 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %formats, i32 0, i64 %idxprom699
  %default_setting = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx700, i32 0, i32 1
  %810 = load i8*, i8** %default_setting, align 8
  %arrayidx701 = getelementptr inbounds [5 x i8*], [5 x i8*]* %format_strings, i32 0, i64 1
  store i8* %810, i8** %arrayidx701, align 8
  %811 = load i32, i32* %format, align 4
  %idxprom702 = sext i32 %811 to i64
  %arrayidx703 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %formats, i32 0, i64 %idxprom702
  %title = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx703, i32 0, i32 2
  %812 = load i8*, i8** %title, align 8
  %call704 = call i8* @gettext(i8* %812) #4
  %813 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %814 = bitcast %struct._GtkWidget* %813 to %struct._GTypeInstance*
  %call705 = call i64 @gtk_container_get_type() #6
  %call706 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %814, i64 %call705)
  %815 = bitcast %struct._GTypeInstance* %call706 to %struct._GtkContainer*
  %call707 = call %struct._GtkWidget* @prefs_frame_new(i8* %call704, %struct._GtkContainer* %815, i32 1)
  store %struct._GtkWidget* %call707, %struct._GtkWidget** %vbox2, align 8
  %816 = load %struct._GObject*, %struct._GObject** %object, align 8
  %817 = load i32, i32* %format, align 4
  %idxprom708 = sext i32 %817 to i64
  %arrayidx709 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %formats, i32 0, i64 %idxprom708
  %property_name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx709, i32 0, i32 3
  %818 = load i8*, i8** %property_name, align 8
  %call710 = call %struct._GtkWidget* @gimp_prop_entry_new(%struct._GObject* %816, i8* %818, i32 0)
  store %struct._GtkWidget* %call710, %struct._GtkWidget** %entry1, align 8
  %819 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %820 = bitcast %struct._GtkWidget* %819 to %struct._GTypeInstance*
  %call711 = call i64 @gtk_box_get_type() #6
  %call712 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %820, i64 %call711)
  %821 = bitcast %struct._GTypeInstance* %call712 to %struct._GtkBox*
  %822 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %821, %struct._GtkWidget* %822, i32 0, i32 0, i32 0)
  %823 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %823)
  %call713 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call713, %struct._GtkWidget** %scrolled_win686, align 8
  %824 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win686, align 8
  %825 = bitcast %struct._GtkWidget* %824 to %struct._GTypeInstance*
  %call714 = call i64 @gtk_scrolled_window_get_type() #6
  %call715 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %825, i64 %call714)
  %826 = bitcast %struct._GTypeInstance* %call715 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %826, i32 1)
  %827 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win686, align 8
  %828 = bitcast %struct._GtkWidget* %827 to %struct._GTypeInstance*
  %call716 = call i64 @gtk_scrolled_window_get_type() #6
  %call717 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %828, i64 %call716)
  %829 = bitcast %struct._GTypeInstance* %call717 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %829, i32 2, i32 1)
  %830 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %831 = bitcast %struct._GtkWidget* %830 to %struct._GTypeInstance*
  %call718 = call i64 @gtk_box_get_type() #6
  %call719 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %831, i64 %call718)
  %832 = bitcast %struct._GTypeInstance* %call719 to %struct._GtkBox*
  %833 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win686, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %832, %struct._GtkWidget* %833, i32 1, i32 1, i32 0)
  %834 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win686, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %834)
  %call720 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 2, i64 64, i64 64)
  store %struct._GtkListStore* %call720, %struct._GtkListStore** %list_store688, align 8
  %835 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store688, align 8
  %836 = bitcast %struct._GtkListStore* %835 to %struct._GTypeInstance*
  %call721 = call i64 @gtk_tree_model_get_type() #6
  %call722 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %836, i64 %call721)
  %837 = bitcast %struct._GTypeInstance* %call722 to %struct._GtkTreeModel*
  %call723 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %837)
  store %struct._GtkWidget* %call723, %struct._GtkWidget** %view690, align 8
  %838 = load %struct._GtkWidget*, %struct._GtkWidget** %view690, align 8
  %839 = bitcast %struct._GtkWidget* %838 to %struct._GTypeInstance*
  %call724 = call i64 @gtk_tree_view_get_type() #6
  %call725 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %839, i64 %call724)
  %840 = bitcast %struct._GTypeInstance* %call725 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %840, i32 0)
  %841 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win686, align 8
  %842 = bitcast %struct._GtkWidget* %841 to %struct._GTypeInstance*
  %call726 = call i64 @gtk_container_get_type() #6
  %call727 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %842, i64 %call726)
  %843 = bitcast %struct._GTypeInstance* %call727 to %struct._GtkContainer*
  %844 = load %struct._GtkWidget*, %struct._GtkWidget** %view690, align 8
  call void @gtk_container_add(%struct._GtkContainer* %843, %struct._GtkWidget* %844)
  %845 = load %struct._GtkWidget*, %struct._GtkWidget** %view690, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %845)
  %846 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store688, align 8
  %847 = bitcast %struct._GtkListStore* %846 to i8*
  call void @g_object_unref(i8* %847)
  %848 = load %struct._GtkWidget*, %struct._GtkWidget** %view690, align 8
  %849 = bitcast %struct._GtkWidget* %848 to %struct._GTypeInstance*
  %call728 = call i64 @gtk_tree_view_get_type() #6
  %call729 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %849, i64 %call728)
  %850 = bitcast %struct._GTypeInstance* %call729 to %struct._GtkTreeView*
  %call730 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call731 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %850, i32 0, i8* null, %struct._GtkCellRenderer* %call730, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* null)
  %851 = load %struct._GtkWidget*, %struct._GtkWidget** %view690, align 8
  %852 = bitcast %struct._GtkWidget* %851 to %struct._GTypeInstance*
  %call732 = call i64 @gtk_tree_view_get_type() #6
  %call733 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %852, i64 %call732)
  %853 = bitcast %struct._GTypeInstance* %call733 to %struct._GtkTreeView*
  %call734 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call735 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %853, i32 1, i8* null, %struct._GtkCellRenderer* %call734, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* null)
  %854 = load %struct._GtkWidget*, %struct._GtkWidget** %view690, align 8
  %855 = bitcast %struct._GtkWidget* %854 to %struct._GTypeInstance*
  %call736 = call i64 @gtk_tree_view_get_type() #6
  %call737 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %855, i64 %call736)
  %856 = bitcast %struct._GTypeInstance* %call737 to %struct._GtkTreeView*
  %call738 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %856)
  store %struct._GtkTreeSelection* %call738, %struct._GtkTreeSelection** %sel692, align 8
  store i32 0, i32* %i694, align 4
  br label %for.cond.739

for.cond.739:                                     ; preds = %for.inc.755, %for.body.684
  %857 = load i32, i32* %i694, align 4
  %conv740 = sext i32 %857 to i64
  %cmp741 = icmp ult i64 %conv740, 5
  br i1 %cmp741, label %for.body.743, label %for.end.757

for.body.743:                                     ; preds = %for.cond.739
  %858 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store688, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %858, %struct._GtkTreeIter* %iter745)
  %859 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store688, align 8
  %860 = load i32, i32* %i694, align 4
  %idxprom746 = sext i32 %860 to i64
  %arrayidx747 = getelementptr inbounds [5 x i8*], [5 x i8*]* %format_names, i32 0, i64 %idxprom746
  %861 = load i8*, i8** %arrayidx747, align 8
  %call748 = call i8* @gettext(i8* %861) #4
  %862 = load i32, i32* %i694, align 4
  %idxprom749 = sext i32 %862 to i64
  %arrayidx750 = getelementptr inbounds [5 x i8*], [5 x i8*]* %format_strings, i32 0, i64 %idxprom749
  %863 = load i8*, i8** %arrayidx750, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %859, %struct._GtkTreeIter* %iter745, i32 0, i8* %call748, i32 1, i8* %863, i32 -1)
  %864 = load i32, i32* %i694, align 4
  %cmp751 = icmp eq i32 %864, 0
  br i1 %cmp751, label %if.then.753, label %if.end.754

if.then.753:                                      ; preds = %for.body.743
  %865 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel692, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %865, %struct._GtkTreeIter* %iter745)
  br label %if.end.754

if.end.754:                                       ; preds = %if.then.753, %for.body.743
  br label %for.inc.755

for.inc.755:                                      ; preds = %if.end.754
  %866 = load i32, i32* %i694, align 4
  %inc756 = add nsw i32 %866, 1
  store i32 %inc756, i32* %i694, align 4
  br label %for.cond.739

for.end.757:                                      ; preds = %for.cond.739
  %867 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel692, align 8
  %868 = bitcast %struct._GtkTreeSelection* %867 to i8*
  %869 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %870 = bitcast %struct._GtkWidget* %869 to i8*
  %call758 = call i64 @g_signal_connect_data(i8* %868, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct._GtkEntry*)* @prefs_format_string_select_callback to void ()*), i8* %870, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %for.inc.759

for.inc.759:                                      ; preds = %for.end.757
  %871 = load i32, i32* %format, align 4
  %inc760 = add nsw i32 %871, 1
  store i32 %inc760, i32* %format, align 4
  br label %for.cond.681

for.end.761:                                      ; preds = %for.cond.681
  %872 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %873 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %874 = bitcast %struct._GtkWidget* %873 to %struct._GTypeInstance*
  %call762 = call i64 @gtk_notebook_get_type() #6
  %call763 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %874, i64 %call762)
  %875 = bitcast %struct._GTypeInstance* %call763 to %struct._GtkNotebook*
  %call764 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.204, i32 0, i32 0)) #4
  %876 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %877 = bitcast %struct._GtkTreeStore* %876 to %struct._GTypeInstance*
  %call765 = call i64 @gtk_tree_store_get_type() #6
  %call766 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %877, i64 %call765)
  %878 = bitcast %struct._GTypeInstance* %call766 to %struct._GtkTreeStore*
  %879 = load i32, i32* %page_index, align 4
  %inc767 = add nsw i32 %879, 1
  store i32 %inc767, i32* %page_index, align 4
  %call768 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %872, %struct._GtkNotebook* %875, i8* %call764, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.205, i32 0, i32 0), %struct._GtkTreeStore* %878, i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.206, i32 0, i32 0), %struct._GtkTreeIter* null, %struct._GtkTreeIter* %top_iter, i32 %879)
  store %struct._GtkWidget* %call768, %struct._GtkWidget** %vbox, align 8
  %call769 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call769, %struct._GtkSizeGroup** %size_group, align 8
  %call770 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.207, i32 0, i32 0)) #4
  %880 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %881 = bitcast %struct._GtkWidget* %880 to %struct._GTypeInstance*
  %call771 = call i64 @gtk_container_get_type() #6
  %call772 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %881, i64 %call771)
  %882 = bitcast %struct._GTypeInstance* %call772 to %struct._GtkContainer*
  %call773 = call %struct._GtkWidget* @prefs_frame_new(i8* %call770, %struct._GtkContainer* %882, i32 0)
  store %struct._GtkWidget* %call773, %struct._GtkWidget** %vbox2, align 8
  %883 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %884 = bitcast %struct._GtkWidget* %883 to %struct._GTypeInstance*
  %call774 = call i64 @gtk_container_get_type() #6
  %call775 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %884, i64 %call774)
  %885 = bitcast %struct._GTypeInstance* %call775 to %struct._GtkContainer*
  %call776 = call %struct._GtkWidget* @prefs_table_new(i32 2, %struct._GtkContainer* %885)
  store %struct._GtkWidget* %call776, %struct._GtkWidget** %table, align 8
  %886 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call777 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.209, i32 0, i32 0)) #4
  %887 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %888 = bitcast %struct._GtkWidget* %887 to %struct._GTypeInstance*
  %call778 = call i64 @gtk_table_get_type() #6
  %call779 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %888, i64 %call778)
  %889 = bitcast %struct._GTypeInstance* %call779 to %struct._GtkTable*
  %890 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call780 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %886, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.208, i32 0, i32 0), i32 0, i32 0, i8* %call777, %struct._GtkTable* %889, i32 0, %struct._GtkSizeGroup* %890)
  %891 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call781 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.211, i32 0, i32 0)) #4
  %892 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %893 = bitcast %struct._GtkWidget* %892 to %struct._GTypeInstance*
  %call782 = call i64 @gtk_table_get_type() #6
  %call783 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %893, i64 %call782)
  %894 = bitcast %struct._GTypeInstance* %call783 to %struct._GtkTable*
  %895 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call784 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %891, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.210, i32 0, i32 0), i32 0, i32 0, i8* %call781, %struct._GtkTable* %894, i32 1, %struct._GtkSizeGroup* %895)
  %call785 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.212, i32 0, i32 0)) #4
  %896 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %897 = bitcast %struct._GtkWidget* %896 to %struct._GTypeInstance*
  %call786 = call i64 @gtk_container_get_type() #6
  %call787 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %897, i64 %call786)
  %898 = bitcast %struct._GTypeInstance* %call787 to %struct._GtkContainer*
  %call788 = call %struct._GtkWidget* @prefs_frame_new(i8* %call785, %struct._GtkContainer* %898, i32 0)
  store %struct._GtkWidget* %call788, %struct._GtkWidget** %vbox2, align 8
  %call790 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0)) #4
  %call791 = call noalias i8* (i8*, ...) @g_strconcat(i8* %call790, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.214, i32 0, i32 0), i8* null)
  store i8* %call791, i8** %pixels_per_unit, align 8
  %899 = load %struct._GObject*, %struct._GObject** %object, align 8
  %900 = load i8*, i8** %pixels_per_unit, align 8
  %call792 = call %struct._GtkWidget* @gimp_prop_coordinates_new(%struct._GObject* %899, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.216, i32 0, i32 0), i8* null, i8* %900, i32 2, double 0.000000e+00, double 0.000000e+00, i32 1)
  store %struct._GtkWidget* %call792, %struct._GtkWidget** %entry1, align 8
  %901 = load i8*, i8** %pixels_per_unit, align 8
  call void @g_free(i8* %901)
  %902 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %903 = bitcast %struct._GtkWidget* %902 to %struct._GTypeInstance*
  %call793 = call i64 @gtk_table_get_type() #6
  %call794 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %903, i64 %call793)
  %904 = bitcast %struct._GTypeInstance* %call794 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %904, i32 2)
  %905 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %906 = bitcast %struct._GtkWidget* %905 to %struct._GTypeInstance*
  %call795 = call i64 @gtk_table_get_type() #6
  %call796 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %906, i64 %call795)
  %907 = bitcast %struct._GTypeInstance* %call796 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %907, i32 2)
  %908 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %909 = bitcast %struct._GtkWidget* %908 to %struct._GTypeInstance*
  %call797 = call i64 @gimp_size_entry_get_type() #6
  %call798 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %909, i64 %call797)
  %910 = bitcast %struct._GTypeInstance* %call798 to %struct._GimpSizeEntry*
  %call799 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.217, i32 0, i32 0)) #4
  %call800 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %910, i8* %call799, i32 0, i32 1, float 0.000000e+00)
  %911 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %912 = bitcast %struct._GtkWidget* %911 to %struct._GTypeInstance*
  %call801 = call i64 @gimp_size_entry_get_type() #6
  %call802 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %912, i64 %call801)
  %913 = bitcast %struct._GTypeInstance* %call802 to %struct._GimpSizeEntry*
  %call803 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.218, i32 0, i32 0)) #4
  %call804 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %913, i8* %call803, i32 0, i32 2, float 0.000000e+00)
  %914 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %915 = bitcast %struct._GtkWidget* %914 to %struct._GTypeInstance*
  %call805 = call i64 @gimp_size_entry_get_type() #6
  %call806 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %915, i64 %call805)
  %916 = bitcast %struct._GTypeInstance* %call806 to %struct._GimpSizeEntry*
  %call807 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.219, i32 0, i32 0)) #4
  %call808 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %916, i8* %call807, i32 1, i32 4, float 0.000000e+00)
  %call809 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call809, %struct._GtkWidget** %hbox, align 8
  %917 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %918 = bitcast %struct._GtkWidget* %917 to %struct._GTypeInstance*
  %call810 = call i64 @gtk_box_get_type() #6
  %call811 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %918, i64 %call810)
  %919 = bitcast %struct._GTypeInstance* %call811 to %struct._GtkBox*
  %920 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %919, %struct._GtkWidget* %920, i32 0, i32 0, i32 24)
  %921 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %921)
  %922 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %923 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %monitor_res_from_gdk = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %923, i32 0, i32 18
  %924 = load i32, i32* %monitor_res_from_gdk, align 4
  %tobool812 = icmp ne i32 %924, 0
  %lnot = xor i1 %tobool812, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %922, i32 %lnot.ext)
  store %struct._GSList* null, %struct._GSList** %group, align 8
  call void @gimp_get_screen_resolution(%struct._GdkScreen* null, double* %xres, double* %yres)
  %call816 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.220, i32 0, i32 0)) #4
  %925 = load double, double* %xres, align 8
  %add = fadd double %925, 5.000000e-01
  %conv817 = fptosi double %add to i32
  %926 = load double, double* %yres, align 8
  %add818 = fadd double %926, 5.000000e-01
  %conv819 = fptosi double %add818 to i32
  %call820 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call816, i32 %conv817, i32 %conv819)
  store i8* %call820, i8** %str, align 8
  %927 = load %struct._GSList*, %struct._GSList** %group, align 8
  %928 = load i8*, i8** %str, align 8
  %call821 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %927, i8* %928)
  store %struct._GtkWidget* %call821, %struct._GtkWidget** %button, align 8
  %929 = load i8*, i8** %str, align 8
  call void @g_free(i8* %929)
  %930 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %931 = bitcast %struct._GtkWidget* %930 to %struct._GTypeInstance*
  %call822 = call i64 @gtk_radio_button_get_type() #6
  %call823 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %931, i64 %call822)
  %932 = bitcast %struct._GTypeInstance* %call823 to %struct._GtkRadioButton*
  %call824 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %932)
  store %struct._GSList* %call824, %struct._GSList** %group, align 8
  %933 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %934 = bitcast %struct._GtkWidget* %933 to %struct._GTypeInstance*
  %call825 = call i64 @gtk_box_get_type() #6
  %call826 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %934, i64 %call825)
  %935 = bitcast %struct._GTypeInstance* %call826 to %struct._GtkBox*
  %936 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %935, %struct._GtkWidget* %936, i32 0, i32 0, i32 0)
  %937 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %937)
  %938 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %939 = bitcast %struct._GtkWidget* %938 to %struct._GTypeInstance*
  %call827 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %939, i64 80)
  %940 = bitcast %struct._GTypeInstance* %call827 to %struct._GObject*
  %941 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %942 = bitcast %struct._GtkWidget* %941 to i8*
  call void @g_object_set_data(%struct._GObject* %940, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.221, i32 0, i32 0), i8* %942)
  %943 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %944 = bitcast %struct._GtkWidget* %943 to i8*
  %945 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %946 = bitcast %struct._GimpConfig* %945 to i8*
  %call828 = call i64 @g_signal_connect_data(i8* %944, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.222, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @prefs_resolution_source_callback to void ()*), i8* %946, void (i8*, %struct._GClosure*)* null, i32 0)
  %947 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call829 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.223, i32 0, i32 0)) #4
  %call830 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %947, i8* %call829)
  store %struct._GtkWidget* %call830, %struct._GtkWidget** %button, align 8
  %948 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %949 = bitcast %struct._GtkWidget* %948 to %struct._GTypeInstance*
  %call831 = call i64 @gtk_radio_button_get_type() #6
  %call832 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %949, i64 %call831)
  %950 = bitcast %struct._GTypeInstance* %call832 to %struct._GtkRadioButton*
  %call833 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %950)
  store %struct._GSList* %call833, %struct._GSList** %group, align 8
  %951 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %952 = bitcast %struct._GtkWidget* %951 to %struct._GTypeInstance*
  %call834 = call i64 @gtk_box_get_type() #6
  %call835 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %952, i64 %call834)
  %953 = bitcast %struct._GTypeInstance* %call835 to %struct._GtkBox*
  %954 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %953, %struct._GtkWidget* %954, i32 0, i32 0, i32 0)
  %955 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %955)
  %956 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %957 = bitcast %struct._GtkWidget* %956 to %struct._GTypeInstance*
  %call836 = call i64 @gtk_box_get_type() #6
  %call837 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %957, i64 %call836)
  %958 = bitcast %struct._GTypeInstance* %call837 to %struct._GtkBox*
  %959 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %958, %struct._GtkWidget* %959, i32 0, i32 0, i32 0)
  %960 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %960)
  %961 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %monitor_res_from_gdk838 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %961, i32 0, i32 18
  %962 = load i32, i32* %monitor_res_from_gdk838, align 4
  %tobool839 = icmp ne i32 %962, 0
  br i1 %tobool839, label %if.end.843, label %if.then.840

if.then.840:                                      ; preds = %for.end.761
  %963 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %964 = bitcast %struct._GtkWidget* %963 to %struct._GTypeInstance*
  %call841 = call i64 @gtk_toggle_button_get_type() #6
  %call842 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %964, i64 %call841)
  %965 = bitcast %struct._GTypeInstance* %call842 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %965, i32 1)
  br label %if.end.843

if.end.843:                                       ; preds = %if.then.840, %for.end.761
  %call844 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call844, %struct._GtkWidget** %hbox, align 8
  %966 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %967 = bitcast %struct._GtkWidget* %966 to %struct._GTypeInstance*
  %call845 = call i64 @gtk_box_get_type() #6
  %call846 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %967, i64 %call845)
  %968 = bitcast %struct._GTypeInstance* %call846 to %struct._GtkBox*
  %969 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %968, %struct._GtkWidget* %969, i32 0, i32 0, i32 0)
  %970 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %970)
  %call847 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.224, i32 0, i32 0)) #4
  %call848 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call847)
  store %struct._GtkWidget* %call848, %struct._GtkWidget** %calibrate_button, align 8
  %971 = load %struct._GtkWidget*, %struct._GtkWidget** %calibrate_button, align 8
  %972 = bitcast %struct._GtkWidget* %971 to %struct._GTypeInstance*
  %call849 = call i64 @gtk_bin_get_type() #6
  %call850 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %972, i64 %call849)
  %973 = bitcast %struct._GTypeInstance* %call850 to %struct._GtkBin*
  %call851 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %973)
  store %struct._GtkWidget* %call851, %struct._GtkWidget** %label, align 8
  %974 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %975 = bitcast %struct._GtkWidget* %974 to %struct._GTypeInstance*
  %call852 = call i64 @gtk_misc_get_type() #6
  %call853 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %975, i64 %call852)
  %976 = bitcast %struct._GTypeInstance* %call853 to %struct._GtkMisc*
  call void @gtk_misc_set_padding(%struct._GtkMisc* %976, i32 4, i32 0)
  %977 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %978 = bitcast %struct._GtkWidget* %977 to %struct._GTypeInstance*
  %call854 = call i64 @gtk_box_get_type() #6
  %call855 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %978, i64 %call854)
  %979 = bitcast %struct._GTypeInstance* %call855 to %struct._GtkBox*
  %980 = load %struct._GtkWidget*, %struct._GtkWidget** %calibrate_button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %979, %struct._GtkWidget* %980, i32 0, i32 0, i32 0)
  %981 = load %struct._GtkWidget*, %struct._GtkWidget** %calibrate_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %981)
  %982 = load %struct._GtkWidget*, %struct._GtkWidget** %calibrate_button, align 8
  %983 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %monitor_res_from_gdk856 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %983, i32 0, i32 18
  %984 = load i32, i32* %monitor_res_from_gdk856, align 4
  %tobool857 = icmp ne i32 %984, 0
  %lnot858 = xor i1 %tobool857, true
  %lnot.ext859 = zext i1 %lnot858 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %982, i32 %lnot.ext859)
  %985 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %986 = bitcast %struct._GtkWidget* %985 to i8*
  %987 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %988 = bitcast %struct._GtkWidget* %987 to i8*
  %call860 = call %struct._GBinding* @g_object_bind_property(i8* %986, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.225, i32 0, i32 0), i8* %988, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.226, i32 0, i32 0), i32 2)
  %989 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %990 = bitcast %struct._GtkWidget* %989 to i8*
  %991 = load %struct._GtkWidget*, %struct._GtkWidget** %calibrate_button, align 8
  %992 = bitcast %struct._GtkWidget* %991 to i8*
  %call861 = call %struct._GBinding* @g_object_bind_property(i8* %990, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.225, i32 0, i32 0), i8* %992, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.226, i32 0, i32 0), i32 2)
  %993 = load %struct._GtkWidget*, %struct._GtkWidget** %calibrate_button, align 8
  %994 = bitcast %struct._GtkWidget* %993 to i8*
  %995 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %996 = bitcast %struct._GtkWidget* %995 to i8*
  %call862 = call i64 @g_signal_connect_data(i8* %994, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @prefs_resolution_calibrate_callback to void ()*), i8* %996, void (i8*, %struct._GClosure*)* null, i32 0)
  %997 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %998 = bitcast %struct._GtkSizeGroup* %997 to i8*
  call void @g_object_unref(i8* %998)
  store %struct._GtkSizeGroup* null, %struct._GtkSizeGroup** %size_group, align 8
  %999 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1000 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %1001 = bitcast %struct._GtkWidget* %1000 to %struct._GTypeInstance*
  %call863 = call i64 @gtk_notebook_get_type() #6
  %call864 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1001, i64 %call863)
  %1002 = bitcast %struct._GTypeInstance* %call864 to %struct._GtkNotebook*
  %call865 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.227, i32 0, i32 0)) #4
  %1003 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %1004 = bitcast %struct._GtkTreeStore* %1003 to %struct._GTypeInstance*
  %call866 = call i64 @gtk_tree_store_get_type() #6
  %call867 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1004, i64 %call866)
  %1005 = bitcast %struct._GTypeInstance* %call867 to %struct._GtkTreeStore*
  %1006 = load i32, i32* %page_index, align 4
  %inc868 = add nsw i32 %1006, 1
  store i32 %inc868, i32* %page_index, align 4
  %call869 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %999, %struct._GtkNotebook* %1002, i8* %call865, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.228, i32 0, i32 0), %struct._GtkTreeStore* %1005, i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.229, i32 0, i32 0), %struct._GtkTreeIter* null, %struct._GtkTreeIter* %top_iter, i32 %1006)
  store %struct._GtkWidget* %call869, %struct._GtkWidget** %vbox, align 8
  %1007 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1008 = bitcast %struct._GtkWidget* %1007 to %struct._GTypeInstance*
  %call870 = call i64 @gtk_container_get_type() #6
  %call871 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1008, i64 %call870)
  %1009 = bitcast %struct._GTypeInstance* %call871 to %struct._GtkContainer*
  %call872 = call %struct._GtkWidget* @prefs_table_new(i32 10, %struct._GtkContainer* %1009)
  store %struct._GtkWidget* %call872, %struct._GtkWidget** %table, align 8
  store i32 0, i32* %row, align 4
  %1010 = load %struct._GObject*, %struct._GObject** %object, align 8
  %1011 = bitcast %struct._GObject* %1010 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1011, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.228, i32 0, i32 0), %struct._GObject** %color_config, i8* null)
  %1012 = load %struct._GObject*, %struct._GObject** %color_config, align 8
  %call877 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.243, i32 0, i32 0)) #4
  %1013 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1014 = bitcast %struct._GtkWidget* %1013 to %struct._GTypeInstance*
  %call878 = call i64 @gtk_table_get_type() #6
  %call879 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1014, i64 %call878)
  %1015 = bitcast %struct._GTypeInstance* %call879 to %struct._GtkTable*
  %1016 = load i32, i32* %row, align 4
  %inc880 = add nsw i32 %1016, 1
  store i32 %inc880, i32* %row, align 4
  %call881 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %1012, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.242, i32 0, i32 0), i32 0, i32 0, i8* %call877, %struct._GtkTable* %1015, i32 %1016, %struct._GtkSizeGroup* null)
  %1017 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1018 = bitcast %struct._GtkWidget* %1017 to %struct._GTypeInstance*
  %call882 = call i64 @gtk_table_get_type() #6
  %call883 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1018, i64 %call882)
  %1019 = bitcast %struct._GTypeInstance* %call883 to %struct._GtkTable*
  %1020 = load i32, i32* %row, align 4
  %sub = sub nsw i32 %1020, 1
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %1019, i32 %sub, i32 12)
  %call884 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.244, i32 0, i32 0))
  store i8* %call884, i8** %filename, align 8
  %1021 = load i8*, i8** %filename, align 8
  %call885 = call %struct._GtkListStore* @gimp_color_profile_store_new(i8* %1021)
  store %struct._GtkListStore* %call885, %struct._GtkListStore** %store, align 8
  %1022 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %1022)
  %1023 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %1024 = bitcast %struct._GtkListStore* %1023 to %struct._GTypeInstance*
  %call886 = call i64 @gimp_color_profile_store_get_type() #6
  %call887 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1024, i64 %call886)
  %1025 = bitcast %struct._GTypeInstance* %call887 to %struct._GimpColorProfileStore*
  call void @gimp_color_profile_store_add(%struct._GimpColorProfileStore* %1025, i8* null, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond.888

for.cond.888:                                     ; preds = %for.inc.938, %if.end.843
  %1026 = load i32, i32* %i, align 4
  %conv889 = sext i32 %1026 to i64
  %cmp890 = icmp ult i64 %conv889, 4
  br i1 %cmp890, label %for.body.892, label %for.end.940

for.body.892:                                     ; preds = %for.cond.888
  %1027 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1028 = load %struct._GObject*, %struct._GObject** %color_config, align 8
  %1029 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %1030 = load i32, i32* %i, align 4
  %idxprom893 = sext i32 %1030 to i64
  %arrayidx894 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* @prefs_dialog_new.profiles, i32 0, i64 %idxprom893
  %fs_label = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx894, i32 0, i32 1
  %1031 = load i8*, i8** %fs_label, align 8
  %call895 = call i8* @gettext(i8* %1031) #4
  %1032 = load i32, i32* %i, align 4
  %idxprom896 = sext i32 %1032 to i64
  %arrayidx897 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* @prefs_dialog_new.profiles, i32 0, i64 %idxprom896
  %property_name898 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx897, i32 0, i32 2
  %1033 = load i8*, i8** %property_name898, align 8
  %call899 = call %struct._GtkWidget* @prefs_profile_combo_box_new(%struct._Gimp* %1027, %struct._GObject* %1028, %struct._GtkListStore* %1029, i8* %call895, i8* %1033)
  store %struct._GtkWidget* %call899, %struct._GtkWidget** %button, align 8
  %1034 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1035 = bitcast %struct._GtkWidget* %1034 to %struct._GTypeInstance*
  %call900 = call i64 @gtk_table_get_type() #6
  %call901 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1035, i64 %call900)
  %1036 = bitcast %struct._GTypeInstance* %call901 to %struct._GtkTable*
  %1037 = load i32, i32* %row, align 4
  %inc902 = add nsw i32 %1037, 1
  store i32 %inc902, i32* %row, align 4
  %1038 = load i32, i32* %i, align 4
  %idxprom903 = sext i32 %1038 to i64
  %arrayidx904 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* @prefs_dialog_new.profiles, i32 0, i64 %idxprom903
  %label905 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx904, i32 0, i32 0
  %1039 = load i8*, i8** %label905, align 8
  %call906 = call i8* @gettext(i8* %1039) #4
  %1040 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call907 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %1036, i32 0, i32 %1037, i8* %call906, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %1040, i32 1, i32 0)
  %1041 = load i32, i32* %i, align 4
  %cmp908 = icmp eq i32 %1041, 2
  br i1 %cmp908, label %if.then.910, label %if.end.928

if.then.910:                                      ; preds = %for.body.892
  %1042 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1043 = bitcast %struct._GtkWidget* %1042 to %struct._GTypeInstance*
  %call911 = call i64 @gtk_table_get_type() #6
  %call912 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1043, i64 %call911)
  %1044 = bitcast %struct._GTypeInstance* %call912 to %struct._GtkTable*
  %1045 = load i32, i32* %row, align 4
  %sub913 = sub nsw i32 %1045, 2
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %1044, i32 %sub913, i32 12)
  %1046 = load %struct._GObject*, %struct._GObject** %color_config, align 8
  %call914 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.246, i32 0, i32 0)) #4
  %call915 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %1046, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.245, i32 0, i32 0), i8* %call914)
  store %struct._GtkWidget* %call915, %struct._GtkWidget** %button, align 8
  %1047 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1048 = bitcast %struct._GtkWidget* %1047 to %struct._GTypeInstance*
  %call916 = call i64 @gtk_table_get_type() #6
  %call917 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1048, i64 %call916)
  %1049 = bitcast %struct._GTypeInstance* %call917 to %struct._GtkTable*
  %1050 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %1051 = load i32, i32* %row, align 4
  %1052 = load i32, i32* %row, align 4
  %add918 = add nsw i32 %1052, 1
  call void @gtk_table_attach_defaults(%struct._GtkTable* %1049, %struct._GtkWidget* %1050, i32 1, i32 2, i32 %1051, i32 %add918)
  %1053 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %1053)
  %1054 = load i32, i32* %row, align 4
  %inc919 = add nsw i32 %1054, 1
  store i32 %inc919, i32* %row, align 4
  %1055 = load %struct._GObject*, %struct._GObject** %color_config, align 8
  %call920 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.248, i32 0, i32 0)) #4
  %1056 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1057 = bitcast %struct._GtkWidget* %1056 to %struct._GTypeInstance*
  %call921 = call i64 @gtk_table_get_type() #6
  %call922 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1057, i64 %call921)
  %1058 = bitcast %struct._GTypeInstance* %call922 to %struct._GtkTable*
  %1059 = load i32, i32* %row, align 4
  %inc923 = add nsw i32 %1059, 1
  store i32 %inc923, i32* %row, align 4
  %call924 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %1055, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.247, i32 0, i32 0), i32 0, i32 0, i8* %call920, %struct._GtkTable* %1058, i32 %1059, %struct._GtkSizeGroup* null)
  %1060 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1061 = bitcast %struct._GtkWidget* %1060 to %struct._GTypeInstance*
  %call925 = call i64 @gtk_table_get_type() #6
  %call926 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1061, i64 %call925)
  %1062 = bitcast %struct._GTypeInstance* %call926 to %struct._GtkTable*
  %1063 = load i32, i32* %row, align 4
  %sub927 = sub nsw i32 %1063, 1
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %1062, i32 %sub927, i32 12)
  br label %if.end.928

if.end.928:                                       ; preds = %if.then.910, %for.body.892
  %1064 = load i32, i32* %i, align 4
  %cmp929 = icmp eq i32 %1064, 3
  br i1 %cmp929, label %if.then.931, label %if.end.937

if.then.931:                                      ; preds = %if.end.928
  %1065 = load %struct._GObject*, %struct._GObject** %color_config, align 8
  %call932 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.250, i32 0, i32 0)) #4
  %1066 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1067 = bitcast %struct._GtkWidget* %1066 to %struct._GTypeInstance*
  %call933 = call i64 @gtk_table_get_type() #6
  %call934 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1067, i64 %call933)
  %1068 = bitcast %struct._GTypeInstance* %call934 to %struct._GtkTable*
  %1069 = load i32, i32* %row, align 4
  %inc935 = add nsw i32 %1069, 1
  store i32 %inc935, i32* %row, align 4
  %call936 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %1065, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.249, i32 0, i32 0), i32 0, i32 0, i8* %call932, %struct._GtkTable* %1068, i32 %1069, %struct._GtkSizeGroup* null)
  br label %if.end.937

if.end.937:                                       ; preds = %if.then.931, %if.end.928
  br label %for.inc.938

for.inc.938:                                      ; preds = %if.end.937
  %1070 = load i32, i32* %i, align 4
  %inc939 = add nsw i32 %1070, 1
  store i32 %inc939, i32* %i, align 4
  br label %for.cond.888

for.end.940:                                      ; preds = %for.cond.888
  %1071 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %1072 = bitcast %struct._GtkListStore* %1071 to i8*
  call void @g_object_unref(i8* %1072)
  %call941 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call941, %struct._GtkWidget** %hbox, align 8
  %1073 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1074 = bitcast %struct._GtkWidget* %1073 to %struct._GTypeInstance*
  %call942 = call i64 @gtk_table_get_type() #6
  %call943 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1074, i64 %call942)
  %1075 = bitcast %struct._GTypeInstance* %call943 to %struct._GtkTable*
  %1076 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %1077 = load i32, i32* %row, align 4
  %1078 = load i32, i32* %row, align 4
  %add944 = add nsw i32 %1078, 1
  call void @gtk_table_attach_defaults(%struct._GtkTable* %1075, %struct._GtkWidget* %1076, i32 1, i32 2, i32 %1077, i32 %add944)
  %1079 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %1079)
  %1080 = load i32, i32* %row, align 4
  %inc945 = add nsw i32 %1080, 1
  store i32 %inc945, i32* %row, align 4
  %1081 = load %struct._GObject*, %struct._GObject** %color_config, align 8
  %call946 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.252, i32 0, i32 0)) #4
  %call947 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %1081, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.251, i32 0, i32 0), i8* %call946)
  store %struct._GtkWidget* %call947, %struct._GtkWidget** %button, align 8
  %1082 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %1083 = bitcast %struct._GtkWidget* %1082 to %struct._GTypeInstance*
  %call948 = call i64 @gtk_box_get_type() #6
  %call949 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1083, i64 %call948)
  %1084 = bitcast %struct._GTypeInstance* %call949 to %struct._GtkBox*
  %1085 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %1084, %struct._GtkWidget* %1085, i32 1, i32 1, i32 0)
  %1086 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %1086)
  %1087 = load %struct._GObject*, %struct._GObject** %color_config, align 8
  %call950 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.254, i32 0, i32 0)) #4
  %call951 = call %struct._GtkWidget* @gimp_prop_color_button_new(%struct._GObject* %1087, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.253, i32 0, i32 0), i8* %call950, i32 40, i32 24, i32 0)
  store %struct._GtkWidget* %call951, %struct._GtkWidget** %button, align 8
  %1088 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %1089 = bitcast %struct._GtkWidget* %1088 to %struct._GTypeInstance*
  %call952 = call i64 @gtk_box_get_type() #6
  %call953 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1089, i64 %call952)
  %1090 = bitcast %struct._GTypeInstance* %call953 to %struct._GtkBox*
  %1091 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %1090, %struct._GtkWidget* %1091, i32 0, i32 0, i32 0)
  %1092 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %1092)
  %1093 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %1094 = bitcast %struct._GtkWidget* %1093 to %struct._GTypeInstance*
  %call954 = call i64 @gimp_color_panel_get_type() #6
  %call955 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1094, i64 %call954)
  %1095 = bitcast %struct._GTypeInstance* %call955 to %struct._GimpColorPanel*
  %1096 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call956 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %1096)
  call void @gimp_color_panel_set_context(%struct._GimpColorPanel* %1095, %struct._GimpContext* %call956)
  %1097 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1098 = bitcast %struct._GtkWidget* %1097 to %struct._GTypeInstance*
  %call957 = call i64 @gtk_table_get_type() #6
  %call958 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1098, i64 %call957)
  %1099 = bitcast %struct._GTypeInstance* %call958 to %struct._GtkTable*
  %1100 = load i32, i32* %row, align 4
  %sub959 = sub nsw i32 %1100, 1
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %1099, i32 %sub959, i32 12)
  %1101 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call960 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.256, i32 0, i32 0)) #4
  %1102 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1103 = bitcast %struct._GtkWidget* %1102 to %struct._GTypeInstance*
  %call961 = call i64 @gtk_table_get_type() #6
  %call962 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1103, i64 %call961)
  %1104 = bitcast %struct._GTypeInstance* %call962 to %struct._GtkTable*
  %1105 = load i32, i32* %row, align 4
  %inc963 = add nsw i32 %1105, 1
  store i32 %inc963, i32* %row, align 4
  %call964 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %1101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.255, i32 0, i32 0), i32 0, i32 0, i8* %call960, %struct._GtkTable* %1104, i32 %1105, %struct._GtkSizeGroup* null)
  store %struct._GtkWidget* %call964, %struct._GtkWidget** %button, align 8
  %1106 = load %struct._GObject*, %struct._GObject** %color_config, align 8
  %1107 = bitcast %struct._GObject* %1106 to i8*
  call void @g_object_unref(i8* %1107)
  %1108 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1109 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %1110 = bitcast %struct._GtkWidget* %1109 to %struct._GTypeInstance*
  %call965 = call i64 @gtk_notebook_get_type() #6
  %call966 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1110, i64 %call965)
  %1111 = bitcast %struct._GTypeInstance* %call966 to %struct._GtkNotebook*
  %call967 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.257, i32 0, i32 0)) #4
  %1112 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %1113 = bitcast %struct._GtkTreeStore* %1112 to %struct._GTypeInstance*
  %call968 = call i64 @gtk_tree_store_get_type() #6
  %call969 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1113, i64 %call968)
  %1114 = bitcast %struct._GTypeInstance* %call969 to %struct._GtkTreeStore*
  %1115 = load i32, i32* %page_index, align 4
  %inc970 = add nsw i32 %1115, 1
  store i32 %inc970, i32* %page_index, align 4
  %call971 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %1108, %struct._GtkNotebook* %1111, i8* %call967, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.258, i32 0, i32 0), %struct._GtkTreeStore* %1114, i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.259, i32 0, i32 0), %struct._GtkTreeIter* null, %struct._GtkTreeIter* %top_iter, i32 %1115)
  store %struct._GtkWidget* %call971, %struct._GtkWidget** %vbox, align 8
  %call972 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.260, i32 0, i32 0)) #4
  %1116 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1117 = bitcast %struct._GtkWidget* %1116 to %struct._GTypeInstance*
  %call973 = call i64 @gtk_container_get_type() #6
  %call974 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1117, i64 %call973)
  %1118 = bitcast %struct._GTypeInstance* %call974 to %struct._GtkContainer*
  %call975 = call %struct._GtkWidget* @prefs_frame_new(i8* %call972, %struct._GtkContainer* %1118, i32 0)
  store %struct._GtkWidget* %call975, %struct._GtkWidget** %vbox2, align 8
  %call976 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.261, i32 0, i32 0)) #4
  %1119 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %1120 = bitcast %struct._GtkWidget* %1119 to %struct._GTypeInstance*
  %call977 = call i64 @gtk_box_get_type() #6
  %call978 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1120, i64 %call977)
  %1121 = bitcast %struct._GTypeInstance* %call978 to %struct._GtkBox*
  %call979 = call %struct._GtkWidget* @prefs_button_add(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i8* %call976, %struct._GtkBox* %1121)
  store %struct._GtkWidget* %call979, %struct._GtkWidget** %button, align 8
  %1122 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %1123 = bitcast %struct._GtkWidget* %1122 to i8*
  %1124 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1125 = bitcast %struct._Gimp* %1124 to i8*
  %call980 = call i64 @g_signal_connect_data(i8* %1123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._Gimp*)* @prefs_input_devices_dialog to void ()*), i8* %1125, void (i8*, %struct._GClosure*)* null, i32 0)
  %1126 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call981 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.263, i32 0, i32 0)) #4
  %1127 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %1128 = bitcast %struct._GtkWidget* %1127 to %struct._GTypeInstance*
  %call982 = call i64 @gtk_box_get_type() #6
  %call983 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1128, i64 %call982)
  %1129 = bitcast %struct._GTypeInstance* %call983 to %struct._GtkBox*
  %call984 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %1126, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.262, i32 0, i32 0), i8* %call981, %struct._GtkBox* %1129)
  %call985 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.264, i32 0, i32 0)) #4
  %1130 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %1131 = bitcast %struct._GtkWidget* %1130 to %struct._GTypeInstance*
  %call986 = call i64 @gtk_box_get_type() #6
  %call987 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1131, i64 %call986)
  %1132 = bitcast %struct._GTypeInstance* %call987 to %struct._GtkBox*
  %call988 = call %struct._GtkWidget* @prefs_button_add(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* %call985, %struct._GtkBox* %1132)
  store %struct._GtkWidget* %call988, %struct._GtkWidget** %button, align 8
  %1133 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %1134 = bitcast %struct._GtkWidget* %1133 to i8*
  %1135 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1136 = bitcast %struct._Gimp* %1135 to i8*
  %call989 = call i64 @g_signal_connect_data(i8* %1134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._Gimp*)* @prefs_devices_save_callback to void ()*), i8* %1136, void (i8*, %struct._GClosure*)* null, i32 0)
  %call990 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.265, i32 0, i32 0)) #4
  %1137 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %1138 = bitcast %struct._GtkWidget* %1137 to %struct._GTypeInstance*
  %call991 = call i64 @gtk_box_get_type() #6
  %call992 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1138, i64 %call991)
  %1139 = bitcast %struct._GTypeInstance* %call992 to %struct._GtkBox*
  %call993 = call %struct._GtkWidget* @prefs_button_add(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* %call990, %struct._GtkBox* %1139)
  store %struct._GtkWidget* %call993, %struct._GtkWidget** %button2, align 8
  %1140 = load %struct._GtkWidget*, %struct._GtkWidget** %button2, align 8
  %1141 = bitcast %struct._GtkWidget* %1140 to i8*
  %1142 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1143 = bitcast %struct._Gimp* %1142 to i8*
  %call994 = call i64 @g_signal_connect_data(i8* %1141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._Gimp*)* @prefs_devices_clear_callback to void ()*), i8* %1143, void (i8*, %struct._GClosure*)* null, i32 0)
  %1144 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %1145 = bitcast %struct._GtkWidget* %1144 to %struct._GTypeInstance*
  %call995 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1145, i64 80)
  %1146 = bitcast %struct._GTypeInstance* %call995 to %struct._GObject*
  %1147 = load %struct._GtkWidget*, %struct._GtkWidget** %button2, align 8
  %1148 = bitcast %struct._GtkWidget* %1147 to i8*
  call void @g_object_set_data(%struct._GObject* %1146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), i8* %1148)
  %1149 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1150 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %1151 = bitcast %struct._GtkWidget* %1150 to %struct._GTypeInstance*
  %call996 = call i64 @gtk_notebook_get_type() #6
  %call997 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1151, i64 %call996)
  %1152 = bitcast %struct._GTypeInstance* %call997 to %struct._GtkNotebook*
  %call998 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.266, i32 0, i32 0)) #4
  %1153 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %1154 = bitcast %struct._GtkTreeStore* %1153 to %struct._GTypeInstance*
  %call999 = call i64 @gtk_tree_store_get_type() #6
  %call1000 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1154, i64 %call999)
  %1155 = bitcast %struct._GTypeInstance* %call1000 to %struct._GtkTreeStore*
  %call1001 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.268, i32 0, i32 0)) #4
  %1156 = load i32, i32* %page_index, align 4
  %inc1002 = add nsw i32 %1156, 1
  store i32 %inc1002, i32* %page_index, align 4
  %call1003 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %1149, %struct._GtkNotebook* %1152, i8* %call998, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.267, i32 0, i32 0), %struct._GtkTreeStore* %1155, i8* %call1001, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.269, i32 0, i32 0), %struct._GtkTreeIter* %top_iter, %struct._GtkTreeIter* %child_iter, i32 %1156)
  store %struct._GtkWidget* %call1003, %struct._GtkWidget** %vbox, align 8
  %1157 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call1004 = call %struct._GtkWidget* @gimp_controller_list_new(%struct._Gimp* %1157)
  store %struct._GtkWidget* %call1004, %struct._GtkWidget** %vbox2, align 8
  %1158 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1159 = bitcast %struct._GtkWidget* %1158 to %struct._GTypeInstance*
  %call1005 = call i64 @gtk_box_get_type() #6
  %call1006 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1159, i64 %call1005)
  %1160 = bitcast %struct._GTypeInstance* %call1006 to %struct._GtkBox*
  %1161 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %1160, %struct._GtkWidget* %1161, i32 1, i32 1, i32 0)
  %1162 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %1162)
  %1163 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1164 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %1165 = bitcast %struct._GtkWidget* %1164 to %struct._GTypeInstance*
  %call1007 = call i64 @gtk_notebook_get_type() #6
  %call1008 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1165, i64 %call1007)
  %1166 = bitcast %struct._GTypeInstance* %call1008 to %struct._GtkNotebook*
  %call1009 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.270, i32 0, i32 0)) #4
  %1167 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %1168 = bitcast %struct._GtkTreeStore* %1167 to %struct._GTypeInstance*
  %call1010 = call i64 @gtk_tree_store_get_type() #6
  %call1011 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1168, i64 %call1010)
  %1169 = bitcast %struct._GTypeInstance* %call1011 to %struct._GtkTreeStore*
  %1170 = load i32, i32* %page_index, align 4
  %inc1012 = add nsw i32 %1170, 1
  store i32 %inc1012, i32* %page_index, align 4
  %call1013 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %1163, %struct._GtkNotebook* %1166, i8* %call1009, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.271, i32 0, i32 0), %struct._GtkTreeStore* %1169, i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.272, i32 0, i32 0), %struct._GtkTreeIter* null, %struct._GtkTreeIter* %top_iter, i32 %1170)
  store %struct._GtkWidget* %call1013, %struct._GtkWidget** %vbox, align 8
  %call1014 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.273, i32 0, i32 0)) #4
  %1171 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1172 = bitcast %struct._GtkWidget* %1171 to %struct._GTypeInstance*
  %call1015 = call i64 @gtk_container_get_type() #6
  %call1016 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1172, i64 %call1015)
  %1173 = bitcast %struct._GTypeInstance* %call1016 to %struct._GtkContainer*
  %call1017 = call %struct._GtkWidget* @prefs_frame_new(i8* %call1014, %struct._GtkContainer* %1173, i32 0)
  store %struct._GtkWidget* %call1017, %struct._GtkWidget** %vbox2, align 8
  %1174 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %1175 = bitcast %struct._GtkWidget* %1174 to %struct._GTypeInstance*
  %call1018 = call i64 @gtk_container_get_type() #6
  %call1019 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1175, i64 %call1018)
  %1176 = bitcast %struct._GTypeInstance* %call1019 to %struct._GtkContainer*
  %call1020 = call %struct._GtkWidget* @prefs_table_new(i32 1, %struct._GtkContainer* %1176)
  store %struct._GtkWidget* %call1020, %struct._GtkWidget** %table, align 8
  %1177 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call1021 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.275, i32 0, i32 0)) #4
  %1178 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1179 = bitcast %struct._GtkWidget* %1178 to %struct._GTypeInstance*
  %call1022 = call i64 @gtk_table_get_type() #6
  %call1023 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1179, i64 %call1022)
  %1180 = bitcast %struct._GTypeInstance* %call1023 to %struct._GtkTable*
  %1181 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %call1024 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %1177, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.274, i32 0, i32 0), i32 0, i32 0, i8* %call1021, %struct._GtkTable* %1180, i32 1, %struct._GtkSizeGroup* %1181)
  %call1025 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.276, i32 0, i32 0)) #4
  %1182 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1183 = bitcast %struct._GtkWidget* %1182 to %struct._GTypeInstance*
  %call1026 = call i64 @gtk_container_get_type() #6
  %call1027 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1183, i64 %call1026)
  %1184 = bitcast %struct._GTypeInstance* %call1027 to %struct._GtkContainer*
  %call1028 = call %struct._GtkWidget* @prefs_frame_new(i8* %call1025, %struct._GtkContainer* %1184, i32 0)
  store %struct._GtkWidget* %call1028, %struct._GtkWidget** %vbox2, align 8
  %1185 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call1029 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.278, i32 0, i32 0)) #4
  %1186 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %1187 = bitcast %struct._GtkWidget* %1186 to %struct._GTypeInstance*
  %call1030 = call i64 @gtk_box_get_type() #6
  %call1031 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1187, i64 %call1030)
  %1188 = bitcast %struct._GTypeInstance* %call1031 to %struct._GtkBox*
  %call1032 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %1185, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.277, i32 0, i32 0), i8* %call1029, %struct._GtkBox* %1188)
  %call1033 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.279, i32 0, i32 0)) #4
  %1189 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1190 = bitcast %struct._GtkWidget* %1189 to %struct._GTypeInstance*
  %call1034 = call i64 @gtk_container_get_type() #6
  %call1035 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1190, i64 %call1034)
  %1191 = bitcast %struct._GTypeInstance* %call1035 to %struct._GtkContainer*
  %call1036 = call %struct._GtkWidget* @prefs_frame_new(i8* %call1033, %struct._GtkContainer* %1191, i32 0)
  store %struct._GtkWidget* %call1036, %struct._GtkWidget** %vbox2, align 8
  %1192 = load %struct._GObject*, %struct._GObject** %object, align 8
  %call1037 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.281, i32 0, i32 0)) #4
  %1193 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %1194 = bitcast %struct._GtkWidget* %1193 to %struct._GTypeInstance*
  %call1038 = call i64 @gtk_box_get_type() #6
  %call1039 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1194, i64 %call1038)
  %1195 = bitcast %struct._GTypeInstance* %call1039 to %struct._GtkBox*
  %call1040 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %1192, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.280, i32 0, i32 0), i8* %call1037, %struct._GtkBox* %1195)
  %call1041 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.282, i32 0, i32 0)) #4
  %1196 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %1197 = bitcast %struct._GtkWidget* %1196 to %struct._GTypeInstance*
  %call1042 = call i64 @gtk_box_get_type() #6
  %call1043 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1197, i64 %call1042)
  %1198 = bitcast %struct._GTypeInstance* %call1043 to %struct._GtkBox*
  %call1044 = call %struct._GtkWidget* @prefs_button_add(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* %call1041, %struct._GtkBox* %1198)
  store %struct._GtkWidget* %call1044, %struct._GtkWidget** %button, align 8
  %1199 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %1200 = bitcast %struct._GtkWidget* %1199 to i8*
  %1201 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1202 = bitcast %struct._Gimp* %1201 to i8*
  %call1045 = call i64 @g_signal_connect_data(i8* %1200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._Gimp*)* @prefs_session_save_callback to void ()*), i8* %1202, void (i8*, %struct._GClosure*)* null, i32 0)
  %call1046 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.283, i32 0, i32 0)) #4
  %1203 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %1204 = bitcast %struct._GtkWidget* %1203 to %struct._GTypeInstance*
  %call1047 = call i64 @gtk_box_get_type() #6
  %call1048 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1204, i64 %call1047)
  %1205 = bitcast %struct._GTypeInstance* %call1048 to %struct._GtkBox*
  %call1049 = call %struct._GtkWidget* @prefs_button_add(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* %call1046, %struct._GtkBox* %1205)
  store %struct._GtkWidget* %call1049, %struct._GtkWidget** %button2, align 8
  %1206 = load %struct._GtkWidget*, %struct._GtkWidget** %button2, align 8
  %1207 = bitcast %struct._GtkWidget* %1206 to i8*
  %1208 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1209 = bitcast %struct._Gimp* %1208 to i8*
  %call1050 = call i64 @g_signal_connect_data(i8* %1207, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._Gimp*)* @prefs_session_clear_callback to void ()*), i8* %1209, void (i8*, %struct._GClosure*)* null, i32 0)
  %1210 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %1211 = bitcast %struct._GtkWidget* %1210 to %struct._GTypeInstance*
  %call1051 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1211, i64 80)
  %1212 = bitcast %struct._GTypeInstance* %call1051 to %struct._GObject*
  %1213 = load %struct._GtkWidget*, %struct._GtkWidget** %button2, align 8
  %1214 = bitcast %struct._GtkWidget* %1213 to i8*
  call void @g_object_set_data(%struct._GObject* %1212, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), i8* %1214)
  %1215 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1216 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %1217 = bitcast %struct._GtkWidget* %1216 to %struct._GTypeInstance*
  %call1052 = call i64 @gtk_notebook_get_type() #6
  %call1053 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1217, i64 %call1052)
  %1218 = bitcast %struct._GTypeInstance* %call1053 to %struct._GtkNotebook*
  %call1054 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.284, i32 0, i32 0)) #4
  %1219 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %1220 = bitcast %struct._GtkTreeStore* %1219 to %struct._GTypeInstance*
  %call1055 = call i64 @gtk_tree_store_get_type() #6
  %call1056 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1220, i64 %call1055)
  %1221 = bitcast %struct._GTypeInstance* %call1056 to %struct._GtkTreeStore*
  %1222 = load i32, i32* %page_index, align 4
  %inc1057 = add nsw i32 %1222, 1
  store i32 %inc1057, i32* %page_index, align 4
  %call1058 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %1215, %struct._GtkNotebook* %1218, i8* %call1054, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.285, i32 0, i32 0), %struct._GtkTreeStore* %1221, i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.286, i32 0, i32 0), %struct._GtkTreeIter* null, %struct._GtkTreeIter* %top_iter, i32 %1222)
  store %struct._GtkWidget* %call1058, %struct._GtkWidget** %vbox, align 8
  %1223 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1224 = bitcast %struct._GtkWidget* %1223 to %struct._GTypeInstance*
  %call1059 = call i64 @gtk_container_get_type() #6
  %call1060 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1224, i64 %call1059)
  %1225 = bitcast %struct._GTypeInstance* %call1060 to %struct._GtkContainer*
  %call1061 = call %struct._GtkWidget* @prefs_table_new(i32 3, %struct._GtkContainer* %1225)
  store %struct._GtkWidget* %call1061, %struct._GtkWidget** %table, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1062

for.cond.1062:                                    ; preds = %for.inc.1082, %for.end.940
  %1226 = load i32, i32* %i, align 4
  %conv1063 = sext i32 %1226 to i64
  %cmp1064 = icmp ult i64 %conv1063, 2
  br i1 %cmp1064, label %for.body.1066, label %for.end.1084

for.body.1066:                                    ; preds = %for.cond.1062
  %1227 = load %struct._GObject*, %struct._GObject** %object, align 8
  %1228 = load i32, i32* %i, align 4
  %idxprom1067 = sext i32 %1228 to i64
  %arrayidx1068 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* @prefs_dialog_new.dirs, i32 0, i64 %idxprom1067
  %property_name1069 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx1068, i32 0, i32 0
  %1229 = load i8*, i8** %property_name1069, align 8
  %1230 = load i32, i32* %i, align 4
  %idxprom1070 = sext i32 %1230 to i64
  %arrayidx1071 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* @prefs_dialog_new.dirs, i32 0, i64 %idxprom1070
  %fs_label1072 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx1071, i32 0, i32 2
  %1231 = load i8*, i8** %fs_label1072, align 8
  %call1073 = call i8* @gettext(i8* %1231) #4
  %call1074 = call %struct._GtkWidget* @gimp_prop_file_chooser_button_new(%struct._GObject* %1227, i8* %1229, i8* %call1073, i32 2)
  store %struct._GtkWidget* %call1074, %struct._GtkWidget** %button, align 8
  %1232 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1233 = bitcast %struct._GtkWidget* %1232 to %struct._GTypeInstance*
  %call1075 = call i64 @gtk_table_get_type() #6
  %call1076 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1233, i64 %call1075)
  %1234 = bitcast %struct._GTypeInstance* %call1076 to %struct._GtkTable*
  %1235 = load i32, i32* %i, align 4
  %1236 = load i32, i32* %i, align 4
  %idxprom1077 = sext i32 %1236 to i64
  %arrayidx1078 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* @prefs_dialog_new.dirs, i32 0, i64 %idxprom1077
  %label1079 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx1078, i32 0, i32 1
  %1237 = load i8*, i8** %label1079, align 8
  %call1080 = call i8* @gettext(i8* %1237) #4
  %1238 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call1081 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %1234, i32 0, i32 %1235, i8* %call1080, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %1238, i32 1, i32 0)
  br label %for.inc.1082

for.inc.1082:                                     ; preds = %for.body.1066
  %1239 = load i32, i32* %i, align 4
  %inc1083 = add nsw i32 %1239, 1
  store i32 %inc1083, i32* %i, align 4
  br label %for.cond.1062

for.end.1084:                                     ; preds = %for.cond.1062
  store i32 0, i32* %i, align 4
  br label %for.cond.1085

for.cond.1085:                                    ; preds = %for.inc.1121, %for.end.1084
  %1240 = load i32, i32* %i, align 4
  %conv1086 = sext i32 %1240 to i64
  %cmp1087 = icmp ult i64 %conv1086, 13
  br i1 %cmp1087, label %for.body.1089, label %for.end.1123

for.body.1089:                                    ; preds = %for.cond.1085
  %1241 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1242 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %1243 = bitcast %struct._GtkWidget* %1242 to %struct._GTypeInstance*
  %call1092 = call i64 @gtk_notebook_get_type() #6
  %call1093 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1243, i64 %call1092)
  %1244 = bitcast %struct._GTypeInstance* %call1093 to %struct._GtkNotebook*
  %1245 = load i32, i32* %i, align 4
  %idxprom1094 = sext i32 %1245 to i64
  %arrayidx1095 = getelementptr inbounds [13 x %struct.anon.2], [13 x %struct.anon.2]* @prefs_dialog_new.paths, i32 0, i64 %idxprom1094
  %label1096 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx1095, i32 0, i32 1
  %1246 = load i8*, i8** %label1096, align 8
  %call1097 = call i8* @gettext(i8* %1246) #4
  %1247 = load i32, i32* %i, align 4
  %idxprom1098 = sext i32 %1247 to i64
  %arrayidx1099 = getelementptr inbounds [13 x %struct.anon.2], [13 x %struct.anon.2]* @prefs_dialog_new.paths, i32 0, i64 %idxprom1098
  %icon1100 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx1099, i32 0, i32 2
  %1248 = load i8*, i8** %icon1100, align 8
  %1249 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %1250 = bitcast %struct._GtkTreeStore* %1249 to %struct._GTypeInstance*
  %call1101 = call i64 @gtk_tree_store_get_type() #6
  %call1102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1250, i64 %call1101)
  %1251 = bitcast %struct._GTypeInstance* %call1102 to %struct._GtkTreeStore*
  %1252 = load i32, i32* %i, align 4
  %idxprom1103 = sext i32 %1252 to i64
  %arrayidx1104 = getelementptr inbounds [13 x %struct.anon.2], [13 x %struct.anon.2]* @prefs_dialog_new.paths, i32 0, i64 %idxprom1103
  %tree_label = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx1104, i32 0, i32 0
  %1253 = load i8*, i8** %tree_label, align 8
  %call1105 = call i8* @gettext(i8* %1253) #4
  %1254 = load i32, i32* %i, align 4
  %idxprom1106 = sext i32 %1254 to i64
  %arrayidx1107 = getelementptr inbounds [13 x %struct.anon.2], [13 x %struct.anon.2]* @prefs_dialog_new.paths, i32 0, i64 %idxprom1106
  %help_data = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx1107, i32 0, i32 3
  %1255 = load i8*, i8** %help_data, align 8
  %1256 = load i32, i32* %page_index, align 4
  %inc1108 = add nsw i32 %1256, 1
  store i32 %inc1108, i32* %page_index, align 4
  %call1109 = call %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %1241, %struct._GtkNotebook* %1244, i8* %call1097, i8* %1248, %struct._GtkTreeStore* %1251, i8* %call1105, i8* %1255, %struct._GtkTreeIter* %top_iter, %struct._GtkTreeIter* %child_iter, i32 %1256)
  store %struct._GtkWidget* %call1109, %struct._GtkWidget** %vbox, align 8
  %1257 = load %struct._GObject*, %struct._GObject** %object, align 8
  %1258 = load i32, i32* %i, align 4
  %idxprom1110 = sext i32 %1258 to i64
  %arrayidx1111 = getelementptr inbounds [13 x %struct.anon.2], [13 x %struct.anon.2]* @prefs_dialog_new.paths, i32 0, i64 %idxprom1110
  %path_property_name = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx1111, i32 0, i32 5
  %1259 = load i8*, i8** %path_property_name, align 8
  %1260 = load i32, i32* %i, align 4
  %idxprom1112 = sext i32 %1260 to i64
  %arrayidx1113 = getelementptr inbounds [13 x %struct.anon.2], [13 x %struct.anon.2]* @prefs_dialog_new.paths, i32 0, i64 %idxprom1112
  %writable_property_name = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx1113, i32 0, i32 6
  %1261 = load i8*, i8** %writable_property_name, align 8
  %1262 = load i32, i32* %i, align 4
  %idxprom1114 = sext i32 %1262 to i64
  %arrayidx1115 = getelementptr inbounds [13 x %struct.anon.2], [13 x %struct.anon.2]* @prefs_dialog_new.paths, i32 0, i64 %idxprom1114
  %fs_label1116 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx1115, i32 0, i32 4
  %1263 = load i8*, i8** %fs_label1116, align 8
  %call1117 = call i8* @gettext(i8* %1263) #4
  %call1118 = call %struct._GtkWidget* @gimp_prop_path_editor_new(%struct._GObject* %1257, i8* %1259, i8* %1261, i8* %call1117)
  store %struct._GtkWidget* %call1118, %struct._GtkWidget** %editor1091, align 8
  %1264 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1265 = bitcast %struct._GtkWidget* %1264 to %struct._GTypeInstance*
  %call1119 = call i64 @gtk_box_get_type() #6
  %call1120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1265, i64 %call1119)
  %1266 = bitcast %struct._GTypeInstance* %call1120 to %struct._GtkBox*
  %1267 = load %struct._GtkWidget*, %struct._GtkWidget** %editor1091, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %1266, %struct._GtkWidget* %1267, i32 1, i32 1, i32 0)
  %1268 = load %struct._GtkWidget*, %struct._GtkWidget** %editor1091, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %1268)
  br label %for.inc.1121

for.inc.1121:                                     ; preds = %for.body.1089
  %1269 = load i32, i32* %i, align 4
  %inc1122 = add nsw i32 %1269, 1
  store i32 %inc1122, i32* %i, align 4
  br label %for.cond.1085

for.end.1123:                                     ; preds = %for.cond.1085
  %1270 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %1271 = bitcast %struct._GtkWidget* %1270 to %struct._GTypeInstance*
  %call1124 = call i64 @gtk_tree_view_get_type() #6
  %call1125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1271, i64 %call1124)
  %1272 = bitcast %struct._GTypeInstance* %call1125 to %struct._GtkTreeView*
  call void @gtk_tree_view_expand_all(%struct._GtkTreeView* %1272)
  %1273 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree, align 8
  %1274 = bitcast %struct._GtkTreeStore* %1273 to %struct._GTypeInstance*
  %call1126 = call i64 @gtk_tree_model_get_type() #6
  %call1127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1274, i64 %call1126)
  %1275 = bitcast %struct._GTypeInstance* %call1127 to %struct._GtkTreeModel*
  %call1128 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %1275, %struct._GtkTreeIter* %top_iter)
  store %struct._GtkTreePath* %call1128, %struct._GtkTreePath** %path, align 8
  %1276 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %1277 = bitcast %struct._GtkWidget* %1276 to %struct._GTypeInstance*
  %call1129 = call i64 @gtk_tree_view_get_type() #6
  %call1130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1277, i64 %call1129)
  %1278 = bitcast %struct._GTypeInstance* %call1130 to %struct._GtkTreeView*
  %1279 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call1131 = call i32 @gtk_tree_view_collapse_row(%struct._GtkTreeView* %1278, %struct._GtkTreePath* %1279)
  %1280 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %1280)
  %1281 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %1281)
  %1282 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %1282)
  %1283 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %1283, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %for.end.1123, %if.else.37, %if.else.10
  %1284 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %1284
}

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #3

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #3

declare i32 @g_param_values_cmp(%struct._GParamSpec*, %struct._GValue*, %struct._GValue*) #3

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @g_object_set_property(%struct._GObject*, i8*, %struct._GValue*) #3

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @g_value_unset(%struct._GValue*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_core_config_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_config_get_type() #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @prefs_help_func(i8* %help_id, i8* %help_data) #0 {
entry:
  %help_id.addr = alloca i8*, align 8
  %help_data.addr = alloca i8*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %event_box = alloca %struct._GtkWidget*, align 8
  %page_num = alloca i32, align 4
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %help_data, i8** %help_data.addr, align 8
  %0 = load i8*, i8** %help_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %notebook, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_notebook_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkNotebook*
  %call4 = call i32 @gtk_notebook_get_current_page(%struct._GtkNotebook* %6)
  store i32 %call4, i32* %page_num, align 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_notebook_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkNotebook*
  %10 = load i32, i32* %page_num, align 4
  %call7 = call %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook* %9, i32 %10)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %event_box, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %event_box, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %call9 = call i8* @g_object_get_data(%struct._GObject* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.376, i32 0, i32 0))
  store i8* %call9, i8** %help_id.addr, align 8
  %14 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_standard_help_func(i8* %14, i8* null)
  ret void
}

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @prefs_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._GtkWidget* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %confirm = alloca %struct._GtkWidget*, align 8
  %config_copy = alloca %struct._GimpConfig*, align 8
  %config_copy15 = alloca %struct._GObject*, align 8
  %restart_diff = alloca %struct._GList*, align 8
  %confirm_diff = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca %struct._GValue, align 8
  %string = alloca %struct._GString*, align 8
  %param_spec47 = alloca %struct._GParamSpec*, align 8
  %config_orig = alloca %struct._GObject*, align 8
  %diff = alloca %struct._GList*, align 8
  %list60 = alloca %struct._GList*, align 8
  %param_spec74 = alloca %struct._GParamSpec*, align 8
  %value76 = alloca %struct._GValue, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._Gimp*
  store %struct._Gimp* %3, %struct._Gimp** %gimp, align 8
  %4 = load i32, i32* %response_id.addr, align 4
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.377, i32 0, i32 0)) #4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call3 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.378, i32 0, i32 0), %struct._GtkWidget* %5, i32 3, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %confirm, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %confirm, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %8, i32 -5, i32 -6, i32 -1)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %confirm, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_message_dialog_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %11, i32 0, i32 1
  %12 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.379, i32 0, i32 0)) #4
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %12, i8* %call8)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %confirm, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_dialog_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDialog*
  %call11 = call i32 @gimp_dialog_run(%struct._GimpDialog* %15)
  %cmp = icmp eq i32 %call11, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %call13 = call i8* @g_object_get_data(%struct._GObject* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %19 = bitcast i8* %call13 to %struct._GimpConfig*
  store %struct._GimpConfig* %19, %struct._GimpConfig** %config_copy, align 8
  %20 = load %struct._GimpConfig*, %struct._GimpConfig** %config_copy, align 8
  call void @gimp_config_reset(%struct._GimpConfig* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %confirm, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %21)
  br label %return

sw.bb.14:                                         ; preds = %entry
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %call17 = call i8* @g_object_get_data(%struct._GObject* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %25 = bitcast i8* %call17 to %struct._GObject*
  store %struct._GObject* %25, %struct._GObject** %config_copy15, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_widget_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call19)
  %31 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %31, i32 0)
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %32, i32 0, i32 2
  %33 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config, align 8
  %34 = bitcast %struct._GimpCoreConfig* %33 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  %36 = load %struct._GObject*, %struct._GObject** %config_copy15, align 8
  %call22 = call %struct._GList* @gimp_config_diff(%struct._GObject* %35, %struct._GObject* %36, i32 2048)
  store %struct._GList* %call22, %struct._GList** %confirm_diff, align 8
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config23 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %37, i32 0, i32 2
  %38 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config23, align 8
  %39 = bitcast %struct._GimpCoreConfig* %38 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %40)
  %41 = load %struct._GList*, %struct._GList** %confirm_diff, align 8
  store %struct._GList* %41, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %sw.bb.14
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %42, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %43, i32 0, i32 0
  %44 = load i8*, i8** %data, align 8
  %45 = bitcast i8* %44 to %struct._GParamSpec*
  store %struct._GParamSpec* %45, %struct._GParamSpec** %param_spec, align 8
  %46 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 24, i32 8, i1 false)
  %47 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %47, i32 0, i32 3
  %48 = load i64, i64* %value_type, align 8
  %call25 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %48)
  %49 = load %struct._GObject*, %struct._GObject** %config_copy15, align 8
  %50 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %50, i32 0, i32 1
  %51 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %49, i8* %51, %struct._GValue* %value)
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config26 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %52, i32 0, i32 2
  %53 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config26, align 8
  %54 = bitcast %struct._GimpCoreConfig* %53 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 80)
  %55 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  %56 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name28 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %56, i32 0, i32 1
  %57 = load i8*, i8** %name28, align 8
  call void @g_object_set_property(%struct._GObject* %55, i8* %57, %struct._GValue* %value)
  call void @g_value_unset(%struct._GValue* %value)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool29 = icmp ne %struct._GList* %58, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %59 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %59, i32 0, i32 1
  %60 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %60, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config30 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %61, i32 0, i32 2
  %62 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config30, align 8
  %63 = bitcast %struct._GimpCoreConfig* %62 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 80)
  %64 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %64)
  %65 = load %struct._GList*, %struct._GList** %confirm_diff, align 8
  call void @g_list_free(%struct._GList* %65)
  %66 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config32 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %66, i32 0, i32 2
  %67 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config32, align 8
  %68 = bitcast %struct._GimpCoreConfig* %67 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_rc_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call33)
  %69 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpRc*
  call void @gimp_rc_save(%struct._GimpRc* %69)
  %70 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config35 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %70, i32 0, i32 2
  %71 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config35, align 8
  %72 = bitcast %struct._GimpCoreConfig* %71 to %struct._GTypeInstance*
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 80)
  %73 = bitcast %struct._GTypeInstance* %call36 to %struct._GObject*
  %74 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %74, i32 0, i32 1
  %75 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %76 = bitcast %struct._GimpCoreConfig* %75 to %struct._GTypeInstance*
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 80)
  %77 = bitcast %struct._GTypeInstance* %call37 to %struct._GObject*
  %call38 = call %struct._GList* @gimp_config_diff(%struct._GObject* %73, %struct._GObject* %77, i32 1024)
  store %struct._GList* %call38, %struct._GList** %restart_diff, align 8
  %78 = load %struct._GList*, %struct._GList** %restart_diff, align 8
  %tobool39 = icmp ne %struct._GList* %78, null
  br i1 %tobool39, label %if.then.40, label %if.end.59

if.then.40:                                       ; preds = %for.end
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.380, i32 0, i32 0)) #4
  %call42 = call %struct._GString* @g_string_new(i8* %call41)
  store %struct._GString* %call42, %struct._GString** %string, align 8
  %79 = load %struct._GString*, %struct._GString** %string, align 8
  %call43 = call %struct._GString* @g_string_append(%struct._GString* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.381, i32 0, i32 0))
  %80 = load %struct._GList*, %struct._GList** %restart_diff, align 8
  store %struct._GList* %80, %struct._GList** %list, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %cond.end.55, %if.then.40
  %81 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool45 = icmp ne %struct._GList* %81, null
  br i1 %tobool45, label %for.body.46, label %for.end.57

for.body.46:                                      ; preds = %for.cond.44
  %82 = load %struct._GList*, %struct._GList** %list, align 8
  %data48 = getelementptr inbounds %struct._GList, %struct._GList* %82, i32 0, i32 0
  %83 = load i8*, i8** %data48, align 8
  %84 = bitcast i8* %83 to %struct._GParamSpec*
  store %struct._GParamSpec* %84, %struct._GParamSpec** %param_spec47, align 8
  %85 = load %struct._GString*, %struct._GString** %string, align 8
  %86 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec47, align 8
  %name49 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %86, i32 0, i32 1
  %87 = load i8*, i8** %name49, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.382, i32 0, i32 0), i8* %87)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.46
  %88 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool51 = icmp ne %struct._GList* %88, null
  br i1 %tobool51, label %cond.true.52, label %cond.false.54

cond.true.52:                                     ; preds = %for.inc.50
  %89 = load %struct._GList*, %struct._GList** %list, align 8
  %next53 = getelementptr inbounds %struct._GList, %struct._GList* %89, i32 0, i32 1
  %90 = load %struct._GList*, %struct._GList** %next53, align 8
  br label %cond.end.55

cond.false.54:                                    ; preds = %for.inc.50
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.true.52
  %cond56 = phi %struct._GList* [ %90, %cond.true.52 ], [ null, %cond.false.54 ]
  store %struct._GList* %cond56, %struct._GList** %list, align 8
  br label %for.cond.44

for.end.57:                                       ; preds = %for.cond.44
  %91 = load %struct._GString*, %struct._GString** %string, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %91, i32 0, i32 0
  %92 = load i8*, i8** %str, align 8
  call void @prefs_message(i32 0, i32 0, i8* %92)
  %93 = load %struct._GString*, %struct._GString** %string, align 8
  %call58 = call i8* @g_string_free(%struct._GString* %93, i32 1)
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.57, %for.end
  %94 = load %struct._GList*, %struct._GList** %restart_diff, align 8
  call void @g_list_free(%struct._GList* %94)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 80)
  %97 = bitcast %struct._GTypeInstance* %call61 to %struct._GObject*
  %call62 = call i8* @g_object_get_data(%struct._GObject* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %98 = bitcast i8* %call62 to %struct._GObject*
  store %struct._GObject* %98, %struct._GObject** %config_orig, align 8
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 80)
  %101 = bitcast %struct._GTypeInstance* %call63 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_widget_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call64)
  %104 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %104, i32 0)
  %105 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config66 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %105, i32 0, i32 2
  %106 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config66, align 8
  %107 = bitcast %struct._GimpCoreConfig* %106 to %struct._GTypeInstance*
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 80)
  %108 = bitcast %struct._GTypeInstance* %call67 to %struct._GObject*
  %109 = load %struct._GObject*, %struct._GObject** %config_orig, align 8
  %call68 = call %struct._GList* @gimp_config_diff(%struct._GObject* %108, %struct._GObject* %109, i32 256)
  store %struct._GList* %call68, %struct._GList** %diff, align 8
  %110 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config69 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %110, i32 0, i32 2
  %111 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config69, align 8
  %112 = bitcast %struct._GimpCoreConfig* %111 to %struct._GTypeInstance*
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 80)
  %113 = bitcast %struct._GTypeInstance* %call70 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %113)
  %114 = load %struct._GList*, %struct._GList** %diff, align 8
  store %struct._GList* %114, %struct._GList** %list60, align 8
  br label %for.cond.71

for.cond.71:                                      ; preds = %cond.end.88, %sw.default
  %115 = load %struct._GList*, %struct._GList** %list60, align 8
  %tobool72 = icmp ne %struct._GList* %115, null
  br i1 %tobool72, label %for.body.73, label %for.end.90

for.body.73:                                      ; preds = %for.cond.71
  %116 = load %struct._GList*, %struct._GList** %list60, align 8
  %data75 = getelementptr inbounds %struct._GList, %struct._GList* %116, i32 0, i32 0
  %117 = load i8*, i8** %data75, align 8
  %118 = bitcast i8* %117 to %struct._GParamSpec*
  store %struct._GParamSpec* %118, %struct._GParamSpec** %param_spec74, align 8
  %119 = bitcast %struct._GValue* %value76 to i8*
  call void @llvm.memset.p0i8.i64(i8* %119, i8 0, i64 24, i32 8, i1 false)
  %120 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec74, align 8
  %value_type77 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %120, i32 0, i32 3
  %121 = load i64, i64* %value_type77, align 8
  %call78 = call %struct._GValue* @g_value_init(%struct._GValue* %value76, i64 %121)
  %122 = load %struct._GObject*, %struct._GObject** %config_orig, align 8
  %123 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec74, align 8
  %name79 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %123, i32 0, i32 1
  %124 = load i8*, i8** %name79, align 8
  call void @g_object_get_property(%struct._GObject* %122, i8* %124, %struct._GValue* %value76)
  %125 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config80 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %125, i32 0, i32 2
  %126 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config80, align 8
  %127 = bitcast %struct._GimpCoreConfig* %126 to %struct._GTypeInstance*
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 80)
  %128 = bitcast %struct._GTypeInstance* %call81 to %struct._GObject*
  %129 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec74, align 8
  %name82 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %129, i32 0, i32 1
  %130 = load i8*, i8** %name82, align 8
  call void @g_object_set_property(%struct._GObject* %128, i8* %130, %struct._GValue* %value76)
  call void @g_value_unset(%struct._GValue* %value76)
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.73
  %131 = load %struct._GList*, %struct._GList** %list60, align 8
  %tobool84 = icmp ne %struct._GList* %131, null
  br i1 %tobool84, label %cond.true.85, label %cond.false.87

cond.true.85:                                     ; preds = %for.inc.83
  %132 = load %struct._GList*, %struct._GList** %list60, align 8
  %next86 = getelementptr inbounds %struct._GList, %struct._GList* %132, i32 0, i32 1
  %133 = load %struct._GList*, %struct._GList** %next86, align 8
  br label %cond.end.88

cond.false.87:                                    ; preds = %for.inc.83
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.85
  %cond89 = phi %struct._GList* [ %133, %cond.true.85 ], [ null, %cond.false.87 ]
  store %struct._GList* %cond89, %struct._GList** %list60, align 8
  br label %for.cond.71

for.end.90:                                       ; preds = %for.cond.71
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** @tool_editor, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call91 = call i64 @gimp_tool_editor_get_type() #6
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call91)
  %136 = bitcast %struct._GTypeInstance* %call92 to %struct._GimpToolEditor*
  call void @gimp_tool_editor_revert_changes(%struct._GimpToolEditor* %136)
  %137 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config93 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %137, i32 0, i32 2
  %138 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config93, align 8
  %139 = bitcast %struct._GimpCoreConfig* %138 to %struct._GTypeInstance*
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 80)
  %140 = bitcast %struct._GTypeInstance* %call94 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %140)
  %141 = load %struct._GList*, %struct._GList** %diff, align 8
  call void @g_list_free(%struct._GList* %141)
  store %struct._GtkWidget* null, %struct._GtkWidget** @tool_editor, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.90, %if.end.59
  %142 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config95 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %142, i32 0, i32 2
  %143 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config95, align 8
  %144 = bitcast %struct._GimpCoreConfig* %143 to %struct._GTypeInstance*
  %call96 = call i64 @gimp_rc_get_type() #6
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call96)
  %145 = bitcast %struct._GTypeInstance* %call97 to %struct._GimpRc*
  call void @gimp_rc_set_autosave(%struct._GimpRc* %145, i32 1)
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %146)
  br label %return

return:                                           ; preds = %sw.epilog, %if.end
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #3

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #3

declare %struct._GtkTreeStore* @gtk_tree_store_new(i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gdk_pixbuf_get_type() #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #1

declare void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new() #3

declare %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new() #3

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #3

declare void @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) #3

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #3

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_event_box_new() #3

declare void @gtk_widget_set_state(%struct._GtkWidget*, i32) #3

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare %struct._GtkWidget* @gtk_image_new() #3

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_notebook_new() #3

declare void @gtk_notebook_set_show_tabs(%struct._GtkNotebook*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #1

declare void @gtk_notebook_set_show_border(%struct._GtkNotebook*, i32) #3

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #3

; Function Attrs: nounwind uwtable
define internal void @prefs_tree_select_callback(%struct._GtkTreeSelection* %sel, %struct._GtkNotebook* %notebook) #0 {
entry:
  %sel.addr = alloca %struct._GtkTreeSelection*, align 8
  %notebook.addr = alloca %struct._GtkNotebook*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %text = alloca i8*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %index = alloca i32, align 4
  store %struct._GtkTreeSelection* %sel, %struct._GtkTreeSelection** %sel.addr, align 8
  store %struct._GtkNotebook* %notebook, %struct._GtkNotebook** %notebook.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %2 = bitcast %struct._GtkNotebook* %1 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0))
  %4 = bitcast i8* %call2 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %label, align 8
  %5 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %6 = bitcast %struct._GtkNotebook* %5 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0))
  %8 = bitcast i8* %call4 to %struct._GtkWidget*
  store %struct._GtkWidget* %8, %struct._GtkWidget** %image, align 8
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter, i32 3, i8** %text, i32 4, %struct._GdkPixbuf** %pixbuf, i32 2, i32* %index, i32 -1)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_label_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkLabel*
  %13 = load i8*, i8** %text, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %12, i8* %13)
  %14 = load i8*, i8** %text, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_image_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkImage*
  %18 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void @gtk_image_set_from_pixbuf(%struct._GtkImage* %17, %struct._GdkPixbuf* %18)
  %19 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool9 = icmp ne %struct._GdkPixbuf* %19, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %20 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %21 = bitcast %struct._GdkPixbuf* %20 to i8*
  call void @g_object_unref(i8* %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %22 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %23 = bitcast %struct._GtkNotebook* %22 to i8*
  %24 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %25 = bitcast %struct._GtkTreeSelection* %24 to i8*
  %call12 = call i32 @g_signal_handlers_block_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkNotebook*, i8*, i32, %struct._GtkTreeSelection*)* @prefs_notebook_page_callback to i8*), i8* %25)
  %26 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %27 = bitcast %struct._GtkNotebook* %26 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_notebook_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call13)
  %28 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkNotebook*
  %29 = load i32, i32* %index, align 4
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %28, i32 %29)
  %30 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %31 = bitcast %struct._GtkNotebook* %30 to i8*
  %32 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %33 = bitcast %struct._GtkTreeSelection* %32 to i8*
  %call15 = call i32 @g_signal_handlers_unblock_matched(i8* %31, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkNotebook*, i8*, i32, %struct._GtkTreeSelection*)* @prefs_notebook_page_callback to i8*), i8* %33)
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prefs_notebook_page_callback(%struct._GtkNotebook* %notebook, i8* %page, i32 %page_num, %struct._GtkTreeSelection* %sel) #0 {
entry:
  %notebook.addr = alloca %struct._GtkNotebook*, align 8
  %page.addr = alloca i8*, align 8
  %page_num.addr = alloca i32, align 4
  %sel.addr = alloca %struct._GtkTreeSelection*, align 8
  %view = alloca %struct._GtkTreeView*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %index = alloca i32, align 4
  %num_children = alloca i32, align 4
  %i = alloca i32, align 4
  %child_iter = alloca %struct._GtkTreeIter, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  store %struct._GtkNotebook* %notebook, %struct._GtkNotebook** %notebook.addr, align 8
  store i8* %page, i8** %page.addr, align 8
  store i32 %page_num, i32* %page_num.addr, align 4
  store %struct._GtkTreeSelection* %sel, %struct._GtkTreeSelection** %sel.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %call = call %struct._GtkTreeView* @gtk_tree_selection_get_tree_view(%struct._GtkTreeSelection* %0)
  store %struct._GtkTreeView* %call, %struct._GtkTreeView** %view, align 8
  %1 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %call1 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %1)
  store %struct._GtkTreeModel* %call1, %struct._GtkTreeModel** %model, align 8
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call2 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %iter)
  store i32 %call2, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %3 = load i32, i32* %iter_valid, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %iter, i32 2, i32* %index, i32 -1)
  %5 = load i32, i32* %index, align 4
  %6 = load i32, i32* %page_num.addr, align 4
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %7, %struct._GtkTreeIter* %iter)
  br label %for.end.18

if.end:                                           ; preds = %for.body
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call3 = call i32 @gtk_tree_model_iter_has_child(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %iter)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.end
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call6 = call i32 @gtk_tree_model_iter_n_children(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter)
  store i32 %call6, i32* %num_children, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.then.5
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %num_children, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %13 = load i32, i32* %i, align 4
  %call10 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %child_iter, %struct._GtkTreeIter* %iter, i32 %13)
  %14 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %14, %struct._GtkTreeIter* %child_iter, i32 2, i32* %index, i32 -1)
  %15 = load i32, i32* %index, align 4
  %16 = load i32, i32* %page_num.addr, align 4
  %cmp11 = icmp eq i32 %15, %16
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %for.body.9
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call13 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %child_iter)
  store %struct._GtkTreePath* %call13, %struct._GtkTreePath** %path, align 8
  %18 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %19 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_view_expand_to_path(%struct._GtkTreeView* %18, %struct._GtkTreePath* %19)
  %20 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %20, %struct._GtkTreeIter* %child_iter)
  br label %for.end.18

if.end.14:                                        ; preds = %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %if.end
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %22 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call17 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %22, %struct._GtkTreeIter* %iter)
  store i32 %call17, i32* %iter_valid, align 4
  br label %for.cond

for.end.18:                                       ; preds = %if.then, %if.then.12, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_notebook_append_page(%struct._Gimp* %gimp, %struct._GtkNotebook* %notebook, i8* %notebook_label, i8* %notebook_icon, %struct._GtkTreeStore* %tree, i8* %tree_label, i8* %help_id, %struct._GtkTreeIter* %parent, %struct._GtkTreeIter* %iter, i32 %page_index) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %notebook.addr = alloca %struct._GtkNotebook*, align 8
  %notebook_label.addr = alloca i8*, align 8
  %notebook_icon.addr = alloca i8*, align 8
  %tree.addr = alloca %struct._GtkTreeStore*, align 8
  %tree_label.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkTreeIter*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %page_index.addr = alloca i32, align 4
  %event_box = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %small_pixbuf = alloca %struct._GdkPixbuf*, align 8
  %basename = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GtkNotebook* %notebook, %struct._GtkNotebook** %notebook.addr, align 8
  store i8* %notebook_label, i8** %notebook_label.addr, align 8
  store i8* %notebook_icon, i8** %notebook_icon.addr, align 8
  store %struct._GtkTreeStore* %tree, %struct._GtkTreeStore** %tree.addr, align 8
  store i8* %tree_label, i8** %tree_label.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store %struct._GtkTreeIter* %parent, %struct._GtkTreeIter** %parent.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i32 %page_index, i32* %page_index.addr, align 4
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf, align 8
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %small_pixbuf, align 8
  %call = call %struct._GtkWidget* @gtk_event_box_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %event_box, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %event_box, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_event_box_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEventBox*
  call void @gtk_event_box_set_visible_window(%struct._GtkEventBox* %2, i32 0)
  %3 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %event_box, align 8
  %call3 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %3, %struct._GtkWidget* %4, %struct._GtkWidget* null)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %event_box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %event_box, align 8
  %7 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %6, i8* null, i8* %7)
  %call4 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %vbox, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %event_box, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %10, %struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %13 = load i8*, i8** %notebook_icon.addr, align 8
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %14 = load i8*, i8** %notebook_icon.addr, align 8
  %call7 = call noalias i8* (i8*, ...) @g_strconcat(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.384, i32 0, i32 0), i8* null)
  store i8* %call7, i8** %basename, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = load i8*, i8** %basename, align 8
  %call8 = call i8* (%struct._Gimp*, i8*, ...) @themes_get_theme_file(%struct._Gimp* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.385, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.386, i32 0, i32 0), i8* %16, i8* null)
  store i8* %call8, i8** %filename, align 8
  %17 = load i8*, i8** %filename, align 8
  %call9 = call i32 @g_file_test(i8* %17, i32 1)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %18 = load i8*, i8** %filename, align 8
  %call12 = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8* %18, %struct._GError** null)
  store %struct._GdkPixbuf* %call12, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %19 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %19)
  %20 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %20)
  %21 = load i8*, i8** %notebook_icon.addr, align 8
  %call13 = call noalias i8* (i8*, ...) @g_strconcat(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.387, i32 0, i32 0), i8* null)
  store i8* %call13, i8** %basename, align 8
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = load i8*, i8** %basename, align 8
  %call14 = call i8* (%struct._Gimp*, i8*, ...) @themes_get_theme_file(%struct._Gimp* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.385, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.386, i32 0, i32 0), i8* %23, i8* null)
  store i8* %call14, i8** %filename, align 8
  %24 = load i8*, i8** %filename, align 8
  %call15 = call i32 @g_file_test(i8* %24, i32 1)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end
  %25 = load i8*, i8** %filename, align 8
  %call18 = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8* %25, %struct._GError** null)
  store %struct._GdkPixbuf* %call18, %struct._GdkPixbuf** %small_pixbuf, align 8
  br label %if.end.23

if.else:                                          ; preds = %if.end
  %26 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool19 = icmp ne %struct._GdkPixbuf* %26, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.else
  %27 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call21 = call %struct._GdkPixbuf* @gdk_pixbuf_scale_simple(%struct._GdkPixbuf* %27, i32 22, i32 22, i32 2)
  store %struct._GdkPixbuf* %call21, %struct._GdkPixbuf** %small_pixbuf, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.17
  %28 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %28)
  %29 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %29)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %entry
  %30 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree.addr, align 8
  %31 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %32 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %parent.addr, align 8
  call void @gtk_tree_store_append(%struct._GtkTreeStore* %30, %struct._GtkTreeIter* %31, %struct._GtkTreeIter* %32)
  %33 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree.addr, align 8
  %34 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %35 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %small_pixbuf, align 8
  %36 = load i8*, i8** %tree_label.addr, align 8
  %tobool25 = icmp ne i8* %36, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %37 = load i8*, i8** %tree_label.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  %38 = load i8*, i8** %notebook_label.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %37, %cond.true ], [ %38, %cond.false ]
  %39 = load i32, i32* %page_index.addr, align 4
  %40 = load i8*, i8** %notebook_label.addr, align 8
  %41 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %33, %struct._GtkTreeIter* %34, i32 0, %struct._GdkPixbuf* %35, i32 1, i8* %cond, i32 2, i32 %39, i32 3, i8* %40, i32 4, %struct._GdkPixbuf* %41, i32 -1)
  %42 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool26 = icmp ne %struct._GdkPixbuf* %42, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %cond.end
  %43 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %44 = bitcast %struct._GdkPixbuf* %43 to i8*
  call void @g_object_unref(i8* %44)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %cond.end
  %45 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %small_pixbuf, align 8
  %tobool29 = icmp ne %struct._GdkPixbuf* %45, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  %46 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %small_pixbuf, align 8
  %47 = bitcast %struct._GdkPixbuf* %46 to i8*
  call void @g_object_unref(i8* %47)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %48
}

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_store_get_type() #1

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #3

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_frame_new(i8* %label, %struct._GtkContainer* %parent, i32 %expand) #0 {
entry:
  %label.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkContainer*, align 8
  %expand.addr = alloca i32, align 4
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %label, i8** %label.addr, align 8
  store %struct._GtkContainer* %parent, %struct._GtkContainer** %parent.addr, align 8
  store i32 %expand, i32* %expand.addr, align 4
  %0 = load i8*, i8** %label.addr, align 8
  %call = call %struct._GtkWidget* @gimp_frame_new(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %frame, align 8
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %vbox, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %3, %struct._GtkWidget* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %5)
  %6 = load %struct._GtkContainer*, %struct._GtkContainer** %parent.addr, align 8
  %7 = bitcast %struct._GtkContainer* %6 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %7, %struct._GTypeInstance** %__inst, align 8
  %call4 = call i64 @gtk_box_get_type() #6
  store i64 %call4, i64* %__t, align 8
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %8, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %entry
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %10, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %13, %14
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %16 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %15, i64 %16) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %17 = load i32, i32* %__r, align 4
  store i32 %17, i32* %tmp
  %18 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.end.10
  %19 = load %struct._GtkContainer*, %struct._GtkContainer** %parent.addr, align 8
  %20 = bitcast %struct._GtkContainer* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %23 = load i32, i32* %expand.addr, align 4
  %24 = load i32, i32* %expand.addr, align 4
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 %23, i32 %24, i32 0)
  br label %if.end.16

if.else.15:                                       ; preds = %if.end.10
  %25 = load %struct._GtkContainer*, %struct._GtkContainer** %parent.addr, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %25, %struct._GtkWidget* %26)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.12
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_table_new(i32 %rows, %struct._GtkContainer* %parent) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %parent.addr = alloca %struct._GtkContainer*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store %struct._GtkContainer* %parent, %struct._GtkContainer** %parent.addr, align 8
  %0 = load i32, i32* %rows.addr, align 4
  %call = call %struct._GtkWidget* @gtk_table_new(i32 %0, i32 2, i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %table, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_table_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %3, i32 6)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %6, i32 6)
  %7 = load %struct._GtkContainer*, %struct._GtkContainer** %parent.addr, align 8
  %8 = bitcast %struct._GtkContainer* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gtk_box_get_type() #6
  store i64 %call5, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else:                                          ; preds = %entry
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.9:                                        ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call10 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #7
  store i32 %call10, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %19, 0
  br i1 %tobool12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.end.11
  %20 = load %struct._GtkContainer*, %struct._GtkContainer** %parent.addr, align 8
  %21 = bitcast %struct._GtkContainer* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 0, i32 0, i32 0)
  br label %if.end.17

if.else.16:                                       ; preds = %if.end.11
  %24 = load %struct._GtkContainer*, %struct._GtkContainer** %parent.addr, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %24, %struct._GtkWidget* %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.13
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  ret %struct._GtkWidget* %27
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_spin_button_add(%struct._GObject* %config, i8* %property_name, double %step_increment, double %page_increment, i32 %digits, i8* %label, %struct._GtkTable* %table, i32 %table_row, %struct._GtkSizeGroup* %group) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %step_increment.addr = alloca double, align 8
  %page_increment.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %table.addr = alloca %struct._GtkTable*, align 8
  %table_row.addr = alloca i32, align 4
  %group.addr = alloca %struct._GtkSizeGroup*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store double %step_increment, double* %step_increment.addr, align 8
  store double %page_increment, double* %page_increment.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %table_row, i32* %table_row.addr, align 4
  store %struct._GtkSizeGroup* %group, %struct._GtkSizeGroup** %group.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load double, double* %step_increment.addr, align 8
  %3 = load double, double* %page_increment.addr, align 8
  %4 = load i32, i32* %digits.addr, align 4
  %call = call %struct._GtkWidget* @gimp_prop_spin_button_new(%struct._GObject* %0, i8* %1, double %2, double %3, i32 %4)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %button, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %7 = load i8*, i8** %label.addr, align 8
  %8 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %9 = load i32, i32* %table_row.addr, align 4
  %10 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group.addr, align 8
  %call1 = call %struct._GtkWidget* @prefs_widget_add_aligned(%struct._GtkWidget* %6, i8* %7, %struct._GtkTable* %8, i32 %9, i32 1, %struct._GtkSizeGroup* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  ret %struct._GtkWidget* %11
}

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_memsize_entry_add(%struct._GObject* %config, i8* %property_name, i8* %label, %struct._GtkTable* %table, i32 %table_row, %struct._GtkSizeGroup* %group) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %table.addr = alloca %struct._GtkTable*, align 8
  %table_row.addr = alloca i32, align 4
  %group.addr = alloca %struct._GtkSizeGroup*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %table_row, i32* %table_row.addr, align 4
  store %struct._GtkSizeGroup* %group, %struct._GtkSizeGroup** %group.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %call = call %struct._GtkWidget* @gimp_prop_memsize_entry_new(%struct._GObject* %0, i8* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %entry1, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %tobool = icmp ne %struct._GtkWidget* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %4 = load i8*, i8** %label.addr, align 8
  %5 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %6 = load i32, i32* %table_row.addr, align 4
  %7 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group.addr, align 8
  %call2 = call %struct._GtkWidget* @prefs_widget_add_aligned(%struct._GtkWidget* %3, i8* %4, %struct._GtkTable* %5, i32 %6, i32 1, %struct._GtkSizeGroup* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  ret %struct._GtkWidget* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %config, i8* %property_name, i32 %minimum, i32 %maximum, i8* %label, %struct._GtkTable* %table, i32 %table_row, %struct._GtkSizeGroup* %group) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %minimum.addr = alloca i32, align 4
  %maximum.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %table.addr = alloca %struct._GtkTable*, align 8
  %table_row.addr = alloca i32, align 4
  %group.addr = alloca %struct._GtkSizeGroup*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i32 %minimum, i32* %minimum.addr, align 4
  store i32 %maximum, i32* %maximum.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %table_row, i32* %table_row.addr, align 4
  store %struct._GtkSizeGroup* %group, %struct._GtkSizeGroup** %group.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i32, i32* %minimum.addr, align 4
  %3 = load i32, i32* %maximum.addr, align 4
  %call = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %0, i8* %1, i32 %2, i32 %3)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %combo, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %6 = load i8*, i8** %label.addr, align 8
  %7 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %8 = load i32, i32* %table_row.addr, align 4
  %9 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group.addr, align 8
  %call1 = call %struct._GtkWidget* @prefs_widget_add_aligned(%struct._GtkWidget* %5, i8* %6, %struct._GtkTable* %7, i32 %8, i32 0, %struct._GtkSizeGroup* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  ret %struct._GtkWidget* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %config, i8* %property_name, i8* %label, %struct._GtkBox* %vbox) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %vbox.addr = alloca %struct._GtkBox*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store %struct._GtkBox* %vbox, %struct._GtkBox** %vbox.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i8*, i8** %label.addr, align 8
  %call = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %0, i8* %1, i8* %2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %button, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %tobool = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkBox*, %struct._GtkBox** %vbox.addr, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %4, %struct._GtkWidget* %5, i32 0, i32 0, i32 0)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  ret %struct._GtkWidget* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_button_add(i8* %stock_id, i8* %label, %struct._GtkBox* %box) #0 {
entry:
  %stock_id.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %box.addr = alloca %struct._GtkBox*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store %struct._GtkBox* %box, %struct._GtkBox** %box.addr, align 8
  %0 = load i8*, i8** %stock_id.addr, align 8
  %1 = load i8*, i8** %label.addr, align 8
  %call = call %struct._GtkWidget* @gimp_stock_button_new(i8* %0, i8* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %button, align 8
  %2 = load %struct._GtkBox*, %struct._GtkBox** %box.addr, align 8
  %3 = bitcast %struct._GtkBox* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_box_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkBox*
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %4, %struct._GtkWidget* %5, i32 0, i32 0, i32 0)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  ret %struct._GtkWidget* %7
}

; Function Attrs: nounwind uwtable
define internal void @prefs_keyboard_shortcuts_dialog(%struct._GtkWidget* %widget, %struct._Gimp* %gimp) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %0)
  %call2 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_raise(%struct._GimpDialogFactory* %call, %struct._GdkScreen* %call1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.388, i32 0, i32 0), i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prefs_menus_save_callback(%struct._GtkWidget* %widget, %struct._Gimp* %gimp) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %clear_button = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @menus_save(%struct._Gimp* %0, i32 1)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0))
  %4 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %clear_button, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %clear_button, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %clear_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %6, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prefs_menus_clear_callback(%struct._GtkWidget* %widget, %struct._Gimp* %gimp) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i32 @menus_clear(%struct._Gimp* %0, %struct._GError** %error)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %1, i32 0, i32 2
  %2 = load i8*, i8** %message, align 8
  call void @prefs_message(i32 3, i32 1, i8* %2)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %3, i32 0)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.389, i32 0, i32 0)) #4
  call void @prefs_message(i32 0, i32 1, i8* %call1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prefs_menus_remove_callback(%struct._GtkWidget* %widget, %struct._Gimp* %gimp) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.390, i32 0, i32 0)) #4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %0)
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.378, i32 0, i32 0), %struct._GtkWidget* %call1, i32 3, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call3)
  %3 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %3, i32 -5, i32 -6, i32 -1)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call5 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %4)
  %5 = bitcast %struct._GtkWidget* %call5 to i8*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %call6 = call i64 @g_signal_connect_object(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.391, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %7, i32 2)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_message_dialog_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %10, i32 0, i32 1
  %11 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.392, i32 0, i32 0)) #4
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %11, i8* %call9)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_dialog_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpDialog*
  %call12 = call i32 @gimp_dialog_run(%struct._GimpDialog* %14)
  %cmp = icmp eq i32 %call12, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @menus_remove(%struct._Gimp* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %16)
  ret void
}

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #3

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #3

declare i32 @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) #3

declare i8** @themes_list_themes(%struct._Gimp*, i32*) #3

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #3

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #3

declare i8* @themes_get_theme_dir(%struct._Gimp*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #3

declare void @gtk_tree_view_set_cursor(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32) #3

declare void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32, float, float) #3

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #3

declare void @g_strfreev(i8**) #3

; Function Attrs: nounwind uwtable
define internal void @prefs_theme_select_callback(%struct._GtkTreeSelection* %sel, %struct._Gimp* %gimp) #0 {
entry:
  %sel.addr = alloca %struct._GtkTreeSelection*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %val = alloca %struct._GValue, align 8
  store %struct._GtkTreeSelection* %sel, %struct._GtkTreeSelection** %sel.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct._GValue* %val to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void @gtk_tree_model_get_value(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %iter, i32 0, %struct._GValue* %val)
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 1
  %4 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %5 = bitcast %struct._GimpCoreConfig* %4 to i8*
  %call1 = call i8* @g_value_get_string(%struct._GValue* %val)
  call void (i8*, i8*, ...) @g_object_set(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8* %call1, i8* null)
  call void @g_value_unset(%struct._GValue* %val)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prefs_theme_reload_callback(%struct._GtkWidget* %button, %struct._Gimp* %gimp) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 1
  %1 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %2 = bitcast %struct._GimpCoreConfig* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_boolean_combo_box_add(%struct._GObject* %config, i8* %property_name, i8* %true_text, i8* %false_text, i8* %label, %struct._GtkTable* %table, i32 %table_row, %struct._GtkSizeGroup* %group) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %true_text.addr = alloca i8*, align 8
  %false_text.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %table.addr = alloca %struct._GtkTable*, align 8
  %table_row.addr = alloca i32, align 4
  %group.addr = alloca %struct._GtkSizeGroup*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %true_text, i8** %true_text.addr, align 8
  store i8* %false_text, i8** %false_text.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %table_row, i32* %table_row.addr, align 4
  store %struct._GtkSizeGroup* %group, %struct._GtkSizeGroup** %group.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i8*, i8** %true_text.addr, align 8
  %3 = load i8*, i8** %false_text.addr, align 8
  %call = call %struct._GtkWidget* @gimp_prop_boolean_combo_box_new(%struct._GObject* %0, i8* %1, i8* %2, i8* %3)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %combo, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %6 = load i8*, i8** %label.addr, align 8
  %7 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %8 = load i32, i32* %table_row.addr, align 4
  %9 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group.addr, align 8
  %call1 = call %struct._GtkWidget* @prefs_widget_add_aligned(%struct._GtkWidget* %5, i8* %6, %struct._GtkTable* %7, i32 %8, i32 0, %struct._GtkSizeGroup* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  ret %struct._GtkWidget* %10
}

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #3

declare i32 @gimp_help_user_manual_is_installed(%struct._Gimp*) #3

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #3

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #3

declare %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @prefs_tool_options_save_callback(%struct._GtkWidget* %widget, %struct._Gimp* %gimp) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %clear_button = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_tools_save(%struct._Gimp* %0, i32 1, i32 1)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0))
  %4 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %clear_button, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %clear_button, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %clear_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %6, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prefs_tool_options_clear_callback(%struct._GtkWidget* %widget, %struct._Gimp* %gimp) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i32 @gimp_tools_clear(%struct._Gimp* %0, %struct._GError** %error)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %1, i32 0, i32 2
  %2 = load i8*, i8** %message, align 8
  call void @prefs_message(i32 3, i32 1, i8* %2)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %3, i32 0)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.393, i32 0, i32 0)) #4
  call void @prefs_message(i32 0, i32 1, i8* %call1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_check_button_add_with_icon(%struct._GObject* %config, i8* %property_name, i8* %label, i8* %stock_id, %struct._GtkBox* %vbox, %struct._GtkSizeGroup* %group) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %vbox.addr = alloca %struct._GtkBox*, align 8
  %group.addr = alloca %struct._GtkSizeGroup*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store %struct._GtkBox* %vbox, %struct._GtkBox** %vbox.addr, align 8
  store %struct._GtkSizeGroup* %group, %struct._GtkSizeGroup** %group.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i8*, i8** %label.addr, align 8
  %call = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %0, i8* %1, i8* %2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %button, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %tobool = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %hbox, align 8
  %4 = load %struct._GtkBox*, %struct._GtkBox** %vbox.addr, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %4, %struct._GtkWidget* %5, i32 0, i32 0, i32 0)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  %7 = load i8*, i8** %stock_id.addr, align 8
  %call2 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %7, i32 4)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %image, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_misc_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkMisc*
  call void @gtk_misc_set_padding(%struct._GtkMisc* %10, i32 2, i32 2)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 0, i32 0, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call7)
  %18 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 1, i32 1, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group.addr, align 8
  %tobool9 = icmp ne %struct._GtkSizeGroup* %21, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %22 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group.addr, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %22, %struct._GtkWidget* %23)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %24, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %25
}

declare %struct._GtkWidget* @gimp_tool_editor_new(%struct._GimpContainer*, %struct._GimpContext*, %struct._GList*, i32, i32) #3

declare %struct._GList* @gimp_tools_get_default_order(%struct._Gimp*) #3

declare %struct._GtkWidget* @gimp_container_combo_box_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #3

declare i32 @gimp_container_view_select_item(%struct._GimpContainerView*, %struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @prefs_template_select_callback(%struct._GimpContainerView* %view, %struct._GimpTemplate* %template, i8* %insert_data, %struct._GimpTemplate* %edit_template) #0 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %insert_data.addr = alloca i8*, align 8
  %edit_template.addr = alloca %struct._GimpTemplate*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  store %struct._GimpTemplate* %edit_template, %struct._GimpTemplate** %edit_template.addr, align 8
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %tobool = icmp ne %struct._GimpTemplate* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %2 = bitcast %struct._GimpTemplate* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %4 = load %struct._GimpTemplate*, %struct._GimpTemplate** %edit_template.addr, align 8
  %5 = bitcast %struct._GimpTemplate* %4 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %call2 = call i32 @gimp_config_sync(%struct._GObject* %3, %struct._GObject* %6, i32 65536)
  %7 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %8 = bitcast %struct._GimpTemplate* %7 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %10 = load %struct._GimpTemplate*, %struct._GimpTemplate** %edit_template.addr, align 8
  %11 = bitcast %struct._GimpTemplate* %10 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i32 @gimp_config_sync(%struct._GObject* %9, %struct._GObject* %12, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_template_editor_new(%struct._GimpTemplate*, %struct._Gimp*, i32) #3

declare void @gimp_template_editor_show_advanced(%struct._GimpTemplateEditor*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_template_editor_get_type() #1

declare %struct._GtkWidget* @gimp_prop_color_button_new(%struct._GObject*, i8*, i8*, i32, i32, i32) #3

declare void @gimp_color_panel_set_context(%struct._GimpColorPanel*, %struct._GimpContext*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_color_panel_get_type() #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_widget_add_aligned(%struct._GtkWidget* %widget, i8* %text, %struct._GtkTable* %table, i32 %table_row, i32 %left_align, %struct._GtkSizeGroup* %group) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %text.addr = alloca i8*, align 8
  %table.addr = alloca %struct._GtkTable*, align 8
  %table_row.addr = alloca i32, align 4
  %left_align.addr = alloca i32, align 4
  %group.addr = alloca %struct._GtkSizeGroup*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %table_row, i32* %table_row.addr, align 4
  store i32 %left_align, i32* %left_align.addr, align 4
  store %struct._GtkSizeGroup* %group, %struct._GtkSizeGroup** %group.addr, align 8
  %0 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %1 = load i32, i32* %table_row.addr, align 4
  %2 = load i8*, i8** %text.addr, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = load i32, i32* %left_align.addr, align 4
  %call = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %0, i32 0, i32 %1, i8* %2, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %3, i32 1, i32 %4)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %label, align 8
  %5 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group.addr, align 8
  %tobool = icmp ne %struct._GtkSizeGroup* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group.addr, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %6, %struct._GtkWidget* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  ret %struct._GtkWidget* %8
}

declare %struct._GtkWidget* @gimp_grid_editor_new(%struct._GimpGrid*, %struct._GimpContext*, double, double) #3

declare double @gimp_template_get_resolution_x(%struct._GimpTemplate*) #3

declare double @gimp_template_get_resolution_y(%struct._GimpTemplate*) #3

; Function Attrs: nounwind uwtable
define internal void @prefs_display_options_frame_add(%struct._Gimp* %gimp, %struct._GObject* %object, i8* %label, %struct._GtkContainer* %parent) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %object.addr = alloca %struct._GObject*, align 8
  %label.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkContainer*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %checks_vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store %struct._GtkContainer* %parent, %struct._GtkContainer** %parent.addr, align 8
  %0 = load i8*, i8** %label.addr, align 8
  %1 = load %struct._GtkContainer*, %struct._GtkContainer** %parent.addr, align 8
  %call = call %struct._GtkWidget* @prefs_frame_new(i8* %0, %struct._GtkContainer* %1, i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %hbox, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %4, %struct._GtkWidget* %5, i32 0, i32 0, i32 0)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  %call4 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %checks_vbox, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %checks_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %10, i32 1, i32 1, i32 0)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %checks_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.395, i32 0, i32 0)) #4
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %checks_vbox, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call8)
  %15 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %call10 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.394, i32 0, i32 0), i8* %call7, %struct._GtkBox* %15)
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.397, i32 0, i32 0)) #4
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %checks_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %call14 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.396, i32 0, i32 0), i8* %call11, %struct._GtkBox* %19)
  %20 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.399, i32 0, i32 0)) #4
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %checks_vbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %call18 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.398, i32 0, i32 0), i8* %call15, %struct._GtkBox* %23)
  %24 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.401, i32 0, i32 0)) #4
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %checks_vbox, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call20)
  %27 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %call22 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.400, i32 0, i32 0), i8* %call19, %struct._GtkBox* %27)
  %call23 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %checks_vbox, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call24)
  %30 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %checks_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %30, %struct._GtkWidget* %31, i32 1, i32 1, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %checks_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.403, i32 0, i32 0)) #4
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %checks_vbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call27)
  %36 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %call29 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.402, i32 0, i32 0), i8* %call26, %struct._GtkBox* %36)
  %37 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.405, i32 0, i32 0)) #4
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %checks_vbox, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call31)
  %40 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %call33 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.404, i32 0, i32 0), i8* %call30, %struct._GtkBox* %40)
  %41 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.407, i32 0, i32 0)) #4
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %checks_vbox, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call35)
  %44 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %call37 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.406, i32 0, i32 0), i8* %call34, %struct._GtkBox* %44)
  %45 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.409, i32 0, i32 0)) #4
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %checks_vbox, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call39)
  %48 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %call41 = call %struct._GtkWidget* @prefs_check_button_add(%struct._GObject* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.408, i32 0, i32 0), i8* %call38, %struct._GtkBox* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_container_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call42)
  %51 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkContainer*
  %call44 = call %struct._GtkWidget* @prefs_table_new(i32 2, %struct._GtkContainer* %51)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %table, align 8
  %52 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.411, i32 0, i32 0)) #4
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call46)
  %55 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  %call48 = call %struct._GtkWidget* @prefs_enum_combo_box_add(%struct._GObject* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.410, i32 0, i32 0), i32 0, i32 0, i8* %call45, %struct._GtkTable* %55, i32 0, %struct._GtkSizeGroup* null)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %combo, align 8
  %56 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.413, i32 0, i32 0)) #4
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.414, i32 0, i32 0)) #4
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_table_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call51)
  %59 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTable*
  %call53 = call %struct._GtkWidget* @prefs_color_button_add(%struct._GObject* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.412, i32 0, i32 0), i8* %call49, i8* %call50, %struct._GtkTable* %59, i32 1, %struct._GtkSizeGroup* null)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %button, align 8
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_color_panel_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call54)
  %62 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpColorPanel*
  %63 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call56 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %63)
  call void @gimp_color_panel_set_context(%struct._GimpColorPanel* %62, %struct._GimpContext* %call56)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %65 = bitcast %struct._GtkWidget* %64 to i8*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %67 = bitcast %struct._GtkWidget* %66 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.415, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @prefs_canvas_padding_color_changed to void ()*), i8* %67, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare %struct._GtkWidget* @gimp_prop_entry_new(%struct._GObject*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @prefs_format_string_select_callback(%struct._GtkTreeSelection* %sel, %struct._GtkEntry* %entry1) #0 {
entry:
  %sel.addr = alloca %struct._GtkTreeSelection*, align 8
  %entry.addr = alloca %struct._GtkEntry*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %val = alloca %struct._GValue, align 8
  store %struct._GtkTreeSelection* %sel, %struct._GtkTreeSelection** %sel.addr, align 8
  store %struct._GtkEntry* %entry1, %struct._GtkEntry** %entry.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct._GValue* %val to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void @gtk_tree_model_get_value(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %iter, i32 1, %struct._GValue* %val)
  %3 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  %call2 = call i8* @g_value_get_string(%struct._GValue* %val)
  call void @gtk_entry_set_text(%struct._GtkEntry* %3, i8* %call2)
  call void @g_value_unset(%struct._GValue* %val)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare noalias i8* @g_strconcat(i8*, ...) #3

declare %struct._GtkWidget* @gimp_prop_coordinates_new(%struct._GObject*, i8*, i8*, i8*, i8*, i32, double, double, i32) #3

declare void @g_free(i8*) #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #3

declare %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry*, i8*, i32, i32, float) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #3

declare void @gimp_get_screen_resolution(%struct._GdkScreen*, double*, double*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #3

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @prefs_resolution_source_callback(%struct._GtkWidget* %widget, %struct._GObject* %config) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %from_gdk = alloca i32, align 4
  %entry3 = alloca %struct._GimpSizeEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  store i32 %call2, i32* %from_gdk, align 4
  %3 = load i32, i32* %from_gdk, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @gimp_get_screen_resolution(%struct._GdkScreen* null, double* %xres, double* %yres)
  br label %if.end.22

if.else:                                          ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.221, i32 0, i32 0))
  %7 = bitcast i8* %call5 to %struct._GimpSizeEntry*
  store %struct._GimpSizeEntry* %7, %struct._GimpSizeEntry** %entry3, align 8
  br label %do.body

do.body:                                          ; preds = %if.else
  %8 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry3, align 8
  %9 = bitcast %struct._GimpSizeEntry* %8 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %9, %struct._GTypeInstance** %__inst, align 8
  %call6 = call i64 @gimp_size_entry_get_type() #6
  store i64 %call6, i64* %__t, align 8
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool7 = icmp ne %struct._GTypeInstance* %10, null
  br i1 %tobool7, label %if.else.9, label %if.then.8

if.then.8:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else.9:                                        ; preds = %do.body
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %12, null
  br i1 %tobool10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else.9
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %16 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %15, %16
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.13:                                       ; preds = %land.lhs.true, %if.else.9
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %18 = load i64, i64* %__t, align 8
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %17, i64 %18) #7
  store i32 %call14, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.12
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.8
  %19 = load i32, i32* %__r, align 4
  store i32 %19, i32* %tmp
  %20 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %20, 0
  br i1 %tobool16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.end.15
  br label %if.end.19

if.else.18:                                       ; preds = %if.end.15
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.prefs_resolution_source_callback, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.416, i32 0, i32 0))
  br label %return

if.end.19:                                        ; preds = %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %21 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry3, align 8
  %call20 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %21, i32 0)
  store double %call20, double* %xres, align 8
  %22 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry3, align 8
  %call21 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %22, i32 1)
  store double %call21, double* %yres, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %do.end, %if.then
  %23 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %24 = bitcast %struct._GObject* %23 to i8*
  %25 = load double, double* %xres, align 8
  %26 = load double, double* %yres, align 8
  %27 = load i32, i32* %from_gdk, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.215, i32 0, i32 0), double %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.216, i32 0, i32 0), double %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.417, i32 0, i32 0), i32 %27, i8* null)
  br label %return

return:                                           ; preds = %if.end.22, %if.else.18
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #1

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #3

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #1

declare void @gtk_misc_set_padding(%struct._GtkMisc*, i32, i32) #3

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @prefs_resolution_calibrate_callback(%struct._GtkWidget* %widget, %struct._GtkWidget* %entry1) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %call = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  %4 = bitcast i8* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %notebook, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @g_object_get_data(%struct._GObject* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0))
  %8 = bitcast i8* %call5 to %struct._GtkWidget*
  store %struct._GtkWidget* %8, %struct._GtkWidget** %image, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_image_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkImage*
  %call8 = call %struct._GdkPixbuf* @gtk_image_get_pixbuf(%struct._GtkImage* %12)
  call void @resolution_calibrate_dialog(%struct._GtkWidget* %9, %struct._GdkPixbuf* %call8)
  ret void
}

declare void @g_object_get(i8*, i8*, ...) #3

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #3

declare noalias i8* @gimp_personal_rc_file(i8*) #3

declare %struct._GtkListStore* @gimp_color_profile_store_new(i8*) #3

declare void @gimp_color_profile_store_add(%struct._GimpColorProfileStore*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_color_profile_store_get_type() #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_profile_combo_box_new(%struct._Gimp* %gimp, %struct._GObject* %config, %struct._GtkListStore* %store, i8* %label, i8* %property_name) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %store.addr = alloca %struct._GtkListStore*, align 8
  %label.addr = alloca i8*, align 8
  %property_name.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %filename = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GtkListStore* %store, %struct._GtkListStore** %store.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load i8*, i8** %label.addr, align 8
  %call = call %struct._GtkWidget* @gimp_profile_chooser_dialog_new(%struct._Gimp* %0, i8* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %dialog, align 8
  %2 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %3 = bitcast %struct._GObject* %2 to i8*
  %4 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %3, i8* %4, i8** %filename, i8* null)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %store.addr, align 8
  %7 = bitcast %struct._GtkListStore* %6 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_tree_model_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call1)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTreeModel*
  %call3 = call %struct._GtkWidget* @gimp_color_profile_combo_box_new_with_model(%struct._GtkWidget* %5, %struct._GtkTreeModel* %8)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %combo, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %12 = load i8*, i8** %property_name.addr, align 8
  call void @g_object_set_data(%struct._GObject* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.418, i32 0, i32 0), i8* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_color_profile_combo_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call5)
  %15 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpColorProfileComboBox*
  %16 = load i8*, i8** %filename, align 8
  call void @gimp_color_profile_combo_box_set_active(%struct._GimpColorProfileComboBox* %15, i8* %16, i8* null)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpProfileChooserDialog*, i32, %struct._GimpColorProfileComboBox*)* @prefs_profile_combo_dialog_response to void ()*), i8* %20, void (i8*, %struct._GClosure*)* null, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %24 = bitcast %struct._GObject* %23 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorProfileComboBox*, %struct._GObject*)* @prefs_profile_combo_changed to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %26 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %27 = load i8*, i8** %property_name.addr, align 8
  %call9 = call %struct._GtkWidget* @prefs_profile_combo_add_tooltip(%struct._GtkWidget* %25, %struct._GObject* %26, i8* %27)
  ret %struct._GtkWidget* %call9
}

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @prefs_input_devices_dialog(%struct._GtkWidget* %widget, %struct._Gimp* %gimp) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %0)
  %call2 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_raise(%struct._GimpDialogFactory* %call, %struct._GdkScreen* %call1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.420, i32 0, i32 0), i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prefs_devices_save_callback(%struct._GtkWidget* %widget, %struct._Gimp* %gimp) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %clear_button = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_devices_save(%struct._Gimp* %0, i32 1)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0))
  %4 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %clear_button, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %clear_button, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %clear_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %6, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prefs_devices_clear_callback(%struct._GtkWidget* %widget, %struct._Gimp* %gimp) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i32 @gimp_devices_clear(%struct._Gimp* %0, %struct._GError** %error)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %1, i32 0, i32 2
  %2 = load i8*, i8** %message, align 8
  call void @prefs_message(i32 3, i32 1, i8* %2)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %3, i32 0)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.421, i32 0, i32 0)) #4
  call void @prefs_message(i32 0, i32 1, i8* %call1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_controller_list_new(%struct._Gimp*) #3

; Function Attrs: nounwind uwtable
define internal void @prefs_session_save_callback(%struct._GtkWidget* %widget, %struct._Gimp* %gimp) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %clear_button = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @session_save(%struct._Gimp* %0, i32 1)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0))
  %4 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %clear_button, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %clear_button, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %clear_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %6, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prefs_session_clear_callback(%struct._GtkWidget* %widget, %struct._Gimp* %gimp) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i32 @session_clear(%struct._Gimp* %0, %struct._GError** %error)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %1, i32 0, i32 2
  %2 = load i8*, i8** %message, align 8
  call void @prefs_message(i32 3, i32 1, i8* %2)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %3, i32 0)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.422, i32 0, i32 0)) #4
  call void @prefs_message(i32 0, i32 1, i8* %call1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_prop_file_chooser_button_new(%struct._GObject*, i8*, i8*, i32) #3

declare %struct._GtkWidget* @gimp_prop_path_editor_new(%struct._GObject*, i8*, i8*, i8*) #3

declare void @gtk_tree_view_expand_all(%struct._GtkTreeView*) #3

declare i32 @gtk_tree_view_collapse_row(%struct._GtkTreeView*, %struct._GtkTreePath*) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare i32 @gtk_notebook_get_current_page(%struct._GtkNotebook*) #3

declare %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook*, i32) #3

declare void @gimp_standard_help_func(i8*, i8*) #3

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #1

declare void @gimp_config_reset(%struct._GimpConfig*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare %struct._GList* @gimp_config_diff(%struct._GObject*, %struct._GObject*, i32) #3

declare void @g_object_freeze_notify(%struct._GObject*) #3

declare void @g_object_thaw_notify(%struct._GObject*) #3

declare void @g_list_free(%struct._GList*) #3

declare void @gimp_rc_save(%struct._GimpRc*) #3

declare %struct._GString* @g_string_new(i8*) #3

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #3

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @prefs_message(i32 %type, i32 %destroy_with_parent, i8* %message) #0 {
entry:
  %type.addr = alloca i32, align 4
  %destroy_with_parent.addr = alloca i32, align 4
  %message.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %destroy_with_parent, i32* %destroy_with_parent.addr, align 4
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @prefs_dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWindow*
  %3 = load i32, i32* %destroy_with_parent.addr, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 2, i32 0
  %4 = load i32, i32* %type.addr, align 4
  %5 = load i8*, i8** %message.addr, align 8
  %call2 = call %struct._GtkWidget* (%struct._GtkWindow*, i32, i32, i32, i8*, ...) @gtk_message_dialog_new(%struct._GtkWindow* %2, i32 %cond, i32 %4, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.383, i32 0, i32 0), i8* %5)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %call3 = call i64 @g_signal_connect_data(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  ret void
}

declare i8* @g_string_free(%struct._GString*, i32) #3

declare void @gimp_tool_editor_revert_changes(%struct._GimpToolEditor*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_editor_get_type() #1

declare %struct._GtkWidget* @gtk_message_dialog_new(%struct._GtkWindow*, i32, i32, i32, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #3

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #3

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #3

declare void @gtk_image_set_from_pixbuf(%struct._GtkImage*, %struct._GdkPixbuf*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #1

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #3

declare %struct._GtkTreeView* @gtk_tree_selection_get_tree_view(%struct._GtkTreeSelection*) #3

declare %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView*) #3

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #3

declare i32 @gtk_tree_model_iter_has_child(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #3

declare i32 @gtk_tree_model_iter_n_children(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #3

declare i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i32) #3

declare void @gtk_tree_view_expand_to_path(%struct._GtkTreeView*, %struct._GtkTreePath*) #3

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #3

declare void @gtk_event_box_set_visible_window(%struct._GtkEventBox*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_event_box_get_type() #1

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #3

declare i8* @themes_get_theme_file(%struct._Gimp*, i8*, ...) #3

declare i32 @g_file_test(i8*, i32) #3

declare %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8*, %struct._GError**) #3

declare %struct._GdkPixbuf* @gdk_pixbuf_scale_simple(%struct._GdkPixbuf*, i32, i32, i32) #3

declare void @gtk_tree_store_append(%struct._GtkTreeStore*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #3

declare void @gtk_tree_store_set(%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) #3

declare %struct._GtkWidget* @gimp_frame_new(i8*) #3

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #3

declare %struct._GtkWidget* @gimp_prop_spin_button_new(%struct._GObject*, i8*, double, double, i32) #3

declare %struct._GtkWidget* @gimp_prop_memsize_entry_new(%struct._GObject*, i8*) #3

declare %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject*, i8*, i32, i32) #3

declare %struct._GtkWidget* @gimp_stock_button_new(i8*, i8*) #3

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_raise(%struct._GimpDialogFactory*, %struct._GdkScreen*, i8*, i32) #3

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #3

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

declare void @menus_save(%struct._Gimp*, i32) #3

declare i32 @menus_clear(%struct._Gimp*, %struct._GError**) #3

declare void @g_clear_error(%struct._GError**) #3

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #3

declare void @menus_remove(%struct._Gimp*) #3

declare void @gtk_tree_model_get_value(%struct._GtkTreeModel*, %struct._GtkTreeIter*, i32, %struct._GValue*) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare i8* @g_value_get_string(%struct._GValue*) #3

declare void @g_object_notify(%struct._GObject*, i8*) #3

declare %struct._GtkWidget* @gimp_prop_boolean_combo_box_new(%struct._GObject*, i8*, i8*, i8*) #3

declare void @gimp_tools_save(%struct._Gimp*, i32, i32) #3

declare i32 @gimp_tools_clear(%struct._Gimp*, %struct._GError**) #3

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #3

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_color_button_add(%struct._GObject* %config, i8* %property_name, i8* %label, i8* %title, %struct._GtkTable* %table, i32 %table_row, %struct._GtkSizeGroup* %group) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %title.addr = alloca i8*, align 8
  %table.addr = alloca %struct._GtkTable*, align 8
  %table_row.addr = alloca i32, align 4
  %group.addr = alloca %struct._GtkSizeGroup*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %table_row, i32* %table_row.addr, align 4
  store %struct._GtkSizeGroup* %group, %struct._GtkSizeGroup** %group.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i8*, i8** %title.addr, align 8
  %call = call %struct._GtkWidget* @gimp_prop_color_button_new(%struct._GObject* %0, i8* %1, i8* %2, i32 40, i32 24, i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %button, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %tobool = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %5 = load i8*, i8** %label.addr, align 8
  %6 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %7 = load i32, i32* %table_row.addr, align 4
  %8 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group.addr, align 8
  %call1 = call %struct._GtkWidget* @prefs_widget_add_aligned(%struct._GtkWidget* %4, i8* %5, %struct._GtkTable* %6, i32 %7, i32 1, %struct._GtkSizeGroup* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  ret %struct._GtkWidget* %9
}

; Function Attrs: nounwind uwtable
define internal void @prefs_canvas_padding_color_changed(%struct._GtkWidget* %button, %struct._GtkWidget* %combo) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %combo.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GtkWidget* %combo, %struct._GtkWidget** %combo.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %2, i32 3)
  ret void
}

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #3

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #3

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #3

declare void @resolution_calibrate_dialog(%struct._GtkWidget*, %struct._GdkPixbuf*) #3

declare %struct._GdkPixbuf* @gtk_image_get_pixbuf(%struct._GtkImage*) #3

declare %struct._GtkWidget* @gimp_profile_chooser_dialog_new(%struct._Gimp*, i8*) #3

declare %struct._GtkWidget* @gimp_color_profile_combo_box_new_with_model(%struct._GtkWidget*, %struct._GtkTreeModel*) #3

declare void @gimp_color_profile_combo_box_set_active(%struct._GimpColorProfileComboBox*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_color_profile_combo_box_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @prefs_profile_combo_dialog_response(%struct._GimpProfileChooserDialog* %dialog, i32 %response, %struct._GimpColorProfileComboBox* %combo) #0 {
entry:
  %dialog.addr = alloca %struct._GimpProfileChooserDialog*, align 8
  %response.addr = alloca i32, align 4
  %combo.addr = alloca %struct._GimpColorProfileComboBox*, align 8
  %filename = alloca i8*, align 8
  %label = alloca i8*, align 8
  store %struct._GimpProfileChooserDialog* %dialog, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  store i32 %response, i32* %response.addr, align 4
  store %struct._GimpColorProfileComboBox* %combo, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  %0 = load i32, i32* %response.addr, align 4
  %cmp = icmp eq i32 %0, -3
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %2 = bitcast %struct._GimpProfileChooserDialog* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %3)
  store i8* %call2, i8** %filename, align 8
  %4 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %6 = load i8*, i8** %filename, align 8
  %call4 = call i8* @gimp_profile_chooser_dialog_get_desc(%struct._GimpProfileChooserDialog* %5, i8* %6)
  store i8* %call4, i8** %label, align 8
  %7 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  %8 = load i8*, i8** %filename, align 8
  %9 = load i8*, i8** %label, align 8
  call void @gimp_color_profile_combo_box_set_active(%struct._GimpColorProfileComboBox* %7, i8* %8, i8* %9)
  %10 = load i8*, i8** %label, align 8
  call void @g_free(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %12 = bitcast %struct._GimpProfileChooserDialog* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  call void @gtk_widget_hide(%struct._GtkWidget* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prefs_profile_combo_changed(%struct._GimpColorProfileComboBox* %combo, %struct._GObject* %config) #0 {
entry:
  %combo.addr = alloca %struct._GimpColorProfileComboBox*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %filename = alloca i8*, align 8
  store %struct._GimpColorProfileComboBox* %combo, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  %call = call i8* @gimp_color_profile_combo_box_get_active(%struct._GimpColorProfileComboBox* %0)
  store i8* %call, i8** %filename, align 8
  %1 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %2 = bitcast %struct._GObject* %1 to i8*
  %3 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  %4 = bitcast %struct._GimpColorProfileComboBox* %3 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.418, i32 0, i32 0))
  %6 = load i8*, i8** %filename, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %2, i8* %call2, i8* %6, i8* null)
  %7 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @prefs_profile_combo_add_tooltip(%struct._GtkWidget* %combo, %struct._GObject* %config, i8* %property_name) #0 {
entry:
  %combo.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %blurb = alloca i8*, align 8
  store %struct._GtkWidget* %combo, %struct._GtkWidget** %combo.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GObjectClass*
  %4 = load i8*, i8** %property_name.addr, align 8
  %call = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %3, i8* %4)
  store %struct._GParamSpec* %call, %struct._GParamSpec** %param_spec, align 8
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call1 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %5)
  store i8* %call1, i8** %blurb, align 8
  %6 = load i8*, i8** %blurb, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %8 = load i8*, i8** %blurb, align 8
  %call2 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.419, i32 0, i32 0), i8* %8) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %7, i8* %call2, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  ret %struct._GtkWidget* %9
}

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #1

declare i8* @gimp_profile_chooser_dialog_get_desc(%struct._GimpProfileChooserDialog*, i8*) #3

declare void @gtk_widget_hide(%struct._GtkWidget*) #3

declare i8* @gimp_color_profile_combo_box_get_active(%struct._GimpColorProfileComboBox*) #3

declare %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass*, i8*) #3

declare i8* @g_param_spec_get_blurb(%struct._GParamSpec*) #3

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare void @gimp_devices_save(%struct._Gimp*, i32) #3

declare i32 @gimp_devices_clear(%struct._Gimp*, %struct._GError**) #3

declare void @session_save(%struct._Gimp*, i32) #3

declare i32 @session_clear(%struct._Gimp*, %struct._GError**) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
