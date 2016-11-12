; ModuleID = './plug-ins/common/unit-editor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GtkActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()* }
%struct.UnitColumn = type { i8*, i8* }
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
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
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
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GError = type { i32, i32, i8* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkCellRendererToggle = type { %struct._GtkCellRenderer, i8 }
%struct._GtkTreePath = type opaque
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkMessageDialog = type { %struct._GtkDialog, %struct._GtkWidget*, %struct._GtkWidget* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"The run mode { RUN-INTERACTIVE (0) }\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"plug-in-unit-editor\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Create or alter units used in GIMP\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"The GIMP unit editor\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"2000\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"U_nits\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"<Image>/Edit/Preferences\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"gimp-tool-measure\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"unit-editor\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Unit Editor\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"gimp-unit-editor\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"gtk-refresh\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@actions = internal global [3 x %struct._GtkActionEntry] [%struct._GtkActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, %struct._GtkTreeView*)* @new_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, %struct._GtkTreeView*)* @duplicate_callback to void ()*) }], align 16
@.str.20 = private unnamed_addr constant [156 x i8] c"<ui>\0A  <toolbar action=\22unit-editor-toolbar\22>\0A    <toolitem action=\22unit-editor-new\22 />\0A    <toolitem action=\22unit-editor-duplicate\22 />\0A  </toolbar>\0A</ui>\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"/unit-editor-toolbar\00", align 1
@columns = internal constant [8 x %struct.UnitColumn] [%struct.UnitColumn { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.50, i32 0, i32 0) }, %struct.UnitColumn { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.52, i32 0, i32 0) }, %struct.UnitColumn { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i32 0, i32 0) }, %struct.UnitColumn { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.56, i32 0, i32 0) }, %struct.UnitColumn { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.58, i32 0, i32 0) }, %struct.UnitColumn { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.60, i32 0, i32 0) }, %struct.UnitColumn { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.62, i32 0, i32 0) }, %struct.UnitColumn { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0) }], align 16
@.str.22 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"activatable\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"cell-background-gdk\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"unit-editor-toolbar\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Unit Editor Toolbar\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"unit-editor-new\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"<control>N\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Create a new unit from scratch\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"unit-editor-duplicate\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"gimp-duplicate\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"<control>D\00", align 1
@.str.36 = private unnamed_addr constant [64 x i8] c"Create a new unit using the currently selected unit as template\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"Add a New Unit\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"gtk-add\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"_ID:\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"_Factor:\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"_Digits:\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"_Symbol:\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"_Abbreviation:\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"Si_ngular:\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"_Plural:\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"Incomplete input\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"Please fill in all text fields.\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Saved\00", align 1
@.str.50 = private unnamed_addr constant [82 x i8] c"A unit definition will only be saved before GIMP exits if this column is checked.\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.52 = private unnamed_addr constant [75 x i8] c"This string will be used to identify a unit in GIMP's configuration files.\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"How many units make up an inch.\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"Digits\00", align 1
@.str.56 = private unnamed_addr constant [206 x i8] c"This field is a hint for numerical input fields. It specifies how many decimal digits the input field should provide to get approximately the same accuracy as an \22inch\22 input field with two decimal digits.\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@.str.58 = private unnamed_addr constant [111 x i8] c"The unit's symbol if it has one (e.g. \22 for inches). The unit's abbreviation is used if doesn't have a symbol.\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"Abbreviation\00", align 1
@.str.60 = private unnamed_addr constant [53 x i8] c"The unit's abbreviation (e.g. \22cm\22 for centimeters).\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"Singular\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"The unit's singular form.\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"Plural\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"The unit's plural form.\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"%s: bad tree path?\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"unit-editor.c:634\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i32 1, i32 1, i32 0, %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0))
  %call1 = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0))
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
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %2 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 3, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  call void @unit_editor_dialog()
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
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

; Function Attrs: nounwind uwtable
define internal void @unit_editor_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %scrolled_win = alloca %struct._GtkWidget*, align 8
  %ui_manager = alloca %struct._GtkUIManager*, align 8
  %group = alloca %struct._GtkActionGroup*, align 8
  %toolbar = alloca %struct._GtkWidget*, align 8
  %list_store = alloca %struct._GtkListStore*, align 8
  %tv = alloca %struct._GtkWidget*, align 8
  %col = alloca %struct._GtkTreeViewColumn*, align 8
  %col_widget = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %rend = alloca %struct._GtkCellRenderer*, align 8
  %i = alloca i32, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 0)
  %call = call i64 @gimp_unit_get_type() #6
  %call1 = call i64 @gdk_color_get_type() #6
  %call2 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 11, i64 20, i64 64, i64 60, i64 24, i64 64, i64 64, i64 64, i64 64, i64 %call, i64 20, i64 %call1)
  store %struct._GtkListStore* %call2, %struct._GtkListStore** %list_store, align 8
  %0 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %1 = bitcast %struct._GtkListStore* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_model_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeModel*
  %call5 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %2)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %tv, align 8
  %3 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %4 = bitcast %struct._GtkListStore* %3 to i8*
  call void @g_object_unref(i8* %4)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #5
  %call7 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 -7, i8* null)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %dialog, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_dialog_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call8)
  %7 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %7, i32 -7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @unit_editor_response to void ()*), i8* %11, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), void ()* @gtk_main_quit, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call12 = call %struct._GtkUIManager* @gtk_ui_manager_new()
  store %struct._GtkUIManager* %call12, %struct._GtkUIManager** %ui_manager, align 8
  %call13 = call %struct._GtkActionGroup* @gtk_action_group_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkActionGroup* %call13, %struct._GtkActionGroup** %group, align 8
  %14 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  call void @gtk_action_group_set_translation_domain(%struct._GtkActionGroup* %14, i8* null)
  %15 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  call void @gtk_action_group_add_actions(%struct._GtkActionGroup* %15, %struct._GtkActionEntry* getelementptr inbounds ([3 x %struct._GtkActionEntry], [3 x %struct._GtkActionEntry]* @actions, i32 0, i32 0), i32 3, i8* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_window_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWindow*
  %21 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call16 = call %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager* %21)
  call void @gtk_window_add_accel_group(%struct._GtkWindow* %20, %struct._GtkAccelGroup* %call16)
  %22 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call17 = call %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager* %22)
  call void @gtk_accel_group_lock(%struct._GtkAccelGroup* %call17)
  %23 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %24 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  call void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager* %23, %struct._GtkActionGroup* %24, i32 -1)
  %25 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %26 = bitcast %struct._GtkActionGroup* %25 to i8*
  call void @g_object_unref(i8* %26)
  %27 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call18 = call i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager* %27, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.20, i32 0, i32 0), i64 -1, %struct._GError** null)
  %28 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call19 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0))
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %toolbar, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_dialog_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call20)
  %31 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkDialog*
  %call22 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %31)
  %32 = bitcast %struct._GtkWidget* %call22 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call23)
  %33 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %33, %struct._GtkWidget* %34, i32 0, i32 0, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %call25 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %scrolled_win, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_scrolled_window_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call26)
  %38 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %38, i32 1)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_scrolled_window_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call28)
  %41 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %41, i32 2, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_container_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call30)
  %44 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %44, i32 12)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_dialog_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call32)
  %47 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkDialog*
  %call34 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %47)
  %48 = bitcast %struct._GtkWidget* %call34 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call35)
  %49 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %49, %struct._GtkWidget* %50, i32 1, i32 1, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %52, i32 -1, i32 220)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_container_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call37)
  %55 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkContainer*
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_container_add(%struct._GtkContainer* %55, %struct._GtkWidget* %56)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %57)
  %call39 = call %struct._GtkCellRenderer* @gtk_cell_renderer_toggle_new()
  store %struct._GtkCellRenderer* %call39, %struct._GtkCellRenderer** %rend, align 8
  %58 = load i8*, i8** getelementptr inbounds ([8 x %struct.UnitColumn], [8 x %struct.UnitColumn]* @columns, i32 0, i64 0, i32 0), align 8
  %call40 = call i8* @gettext(i8* %58) #5
  %59 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  %call41 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* %call40, %struct._GtkCellRenderer* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 10, i8* null)
  store %struct._GtkTreeViewColumn* %call41, %struct._GtkTreeViewColumn** %col, align 8
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_tree_view_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call42)
  %62 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTreeView*
  %63 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %call44 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %62, %struct._GtkTreeViewColumn* %63)
  %64 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %call45 = call %struct._GtkWidget* @gtk_tree_view_column_get_widget(%struct._GtkTreeViewColumn* %64)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %col_widget, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %col_widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %65, null
  br i1 %tobool, label %if.then, label %if.end.51

if.then:                                          ; preds = %entry
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %col_widget, align 8
  %call46 = call i64 @gtk_button_get_type() #6
  %call47 = call %struct._GtkWidget* @gtk_widget_get_ancestor(%struct._GtkWidget* %66, i64 %call46)
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %button, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %tobool48 = icmp ne %struct._GtkWidget* %67, null
  br i1 %tobool48, label %if.then.49, label %if.end

if.then.49:                                       ; preds = %if.then
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %69 = load i8*, i8** getelementptr inbounds ([8 x %struct.UnitColumn], [8 x %struct.UnitColumn]* @columns, i32 0, i64 0, i32 1), align 8
  %call50 = call i8* @gettext(i8* %69) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %68, i8* %call50, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then.49, %if.then
  br label %if.end.51

if.end.51:                                        ; preds = %if.end, %entry
  %70 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  %71 = bitcast %struct._GtkCellRenderer* %70 to i8*
  %72 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %73 = bitcast %struct._GtkListStore* %72 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererToggle*, i8*, %struct._GtkListStore*)* @saved_toggled_callback to void ()*), i8* %73, void (i8*, %struct._GClosure*)* null, i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.51
  %74 = load i32, i32* %i, align 4
  %conv = sext i32 %74 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %75 = load i32, i32* %i, align 4
  %cmp54 = icmp eq i32 %75, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %for.body
  br label %for.inc

if.end.57:                                        ; preds = %for.body
  %76 = load i32, i32* %i, align 4
  %idxprom = sext i32 %76 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.UnitColumn], [8 x %struct.UnitColumn]* @columns, i32 0, i64 %idxprom
  %title = getelementptr inbounds %struct.UnitColumn, %struct.UnitColumn* %arrayidx, i32 0, i32 0
  %77 = load i8*, i8** %title, align 8
  %call58 = call i8* @gettext(i8* %77) #5
  %call59 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %78 = load i32, i32* %i, align 4
  %call60 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* %call58, %struct._GtkCellRenderer* %call59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 10, i8* null)
  store %struct._GtkTreeViewColumn* %call60, %struct._GtkTreeViewColumn** %col, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_tree_view_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call61)
  %81 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTreeView*
  %82 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %call63 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %81, %struct._GtkTreeViewColumn* %82)
  %83 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %call64 = call %struct._GtkWidget* @gtk_tree_view_column_get_widget(%struct._GtkTreeViewColumn* %83)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %col_widget, align 8
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %col_widget, align 8
  %tobool65 = icmp ne %struct._GtkWidget* %84, null
  br i1 %tobool65, label %if.then.66, label %if.end.75

if.then.66:                                       ; preds = %if.end.57
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %col_widget, align 8
  %call67 = call i64 @gtk_button_get_type() #6
  %call68 = call %struct._GtkWidget* @gtk_widget_get_ancestor(%struct._GtkWidget* %85, i64 %call67)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %button, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %tobool69 = icmp ne %struct._GtkWidget* %86, null
  br i1 %tobool69, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %if.then.66
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %88 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %88 to i64
  %arrayidx72 = getelementptr inbounds [8 x %struct.UnitColumn], [8 x %struct.UnitColumn]* @columns, i32 0, i64 %idxprom71
  %help = getelementptr inbounds %struct.UnitColumn, %struct.UnitColumn* %arrayidx72, i32 0, i32 1
  %89 = load i8*, i8** %help, align 8
  %call73 = call i8* @gettext(i8* %89) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %87, i8* %call73, i8* null)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.70, %if.then.66
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.57
  br label %for.inc

for.inc:                                          ; preds = %if.end.75, %if.then.56
  %90 = load i32, i32* %i, align 4
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_tree_view_get_type() #6
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call76)
  %93 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkTreeView*
  call void @unit_list_init(%struct._GtkTreeView* %93)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %94)
  call void @gtk_main()
  ret void
}

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_unit_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gdk_color_get_type() #3

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #3

declare void @g_object_unref(i8*) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @unit_editor_response(%struct._GtkWidget* %widget, i32 %response_id, i8* %data) #0 {
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
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeView*
  call void @unit_list_init(%struct._GtkTreeView* %3)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %4)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

declare void @gtk_main_quit() #1

declare %struct._GtkUIManager* @gtk_ui_manager_new() #1

declare %struct._GtkActionGroup* @gtk_action_group_new(i8*) #1

declare void @gtk_action_group_set_translation_domain(%struct._GtkActionGroup*, i8*) #1

declare void @gtk_action_group_add_actions(%struct._GtkActionGroup*, %struct._GtkActionEntry*, i32, i8*) #1

declare void @gtk_window_add_accel_group(%struct._GtkWindow*, %struct._GtkAccelGroup*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager*) #1

declare void @gtk_accel_group_lock(%struct._GtkAccelGroup*) #1

declare void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager*, %struct._GtkActionGroup*, i32) #1

declare i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager*, i8*, i64, %struct._GError**) #1

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #3

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_toggle_new() #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new_with_attributes(i8*, %struct._GtkCellRenderer*, ...) #1

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #3

declare %struct._GtkWidget* @gtk_tree_view_column_get_widget(%struct._GtkTreeViewColumn*) #1

declare %struct._GtkWidget* @gtk_widget_get_ancestor(%struct._GtkWidget*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #3

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @saved_toggled_callback(%struct._GtkCellRendererToggle* %celltoggle, i8* %path_string, %struct._GtkListStore* %list_store) #0 {
entry:
  %celltoggle.addr = alloca %struct._GtkCellRendererToggle*, align 8
  %path_string.addr = alloca i8*, align 8
  %list_store.addr = alloca %struct._GtkListStore*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %saved = alloca i32, align 4
  %unit = alloca i32, align 4
  store %struct._GtkCellRendererToggle* %celltoggle, %struct._GtkCellRendererToggle** %celltoggle.addr, align 8
  store i8* %path_string, i8** %path_string.addr, align 8
  store %struct._GtkListStore* %list_store, %struct._GtkListStore** %list_store.addr, align 8
  %0 = load i8*, i8** %path_string.addr, align 8
  %call = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %0)
  store %struct._GtkTreePath* %call, %struct._GtkTreePath** %path, align 8
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store.addr, align 8
  %2 = bitcast %struct._GtkListStore* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_tree_model_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTreeModel*
  %4 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call3 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.11

if.end:                                           ; preds = %entry
  %5 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %5)
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store.addr, align 8
  %7 = bitcast %struct._GtkListStore* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_tree_model_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %iter, i32 0, i32* %saved, i32 8, i32* %unit, i32 -1)
  %9 = load i32, i32* %unit, align 4
  %call6 = call i32 @gimp_unit_get_number_of_built_in_units() #6
  %cmp = icmp uge i32 %9, %call6
  br i1 %cmp, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %10 = load i32, i32* %unit, align 4
  %11 = load i32, i32* %saved, align 4
  call void @gimp_unit_set_deletion_flag(i32 %10, i32 %11)
  %12 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store.addr, align 8
  %13 = bitcast %struct._GtkListStore* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_list_store_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkListStore*
  %15 = load i32, i32* %saved, align 4
  %tobool10 = icmp ne i32 %15, 0
  %lnot = xor i1 %tobool10, true
  %lnot.ext = zext i1 %lnot to i32
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %14, %struct._GtkTreeIter* %iter, i32 0, i32 %lnot.ext, i32 -1)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then, %if.then.7, %if.end
  ret void
}

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

; Function Attrs: nounwind uwtable
define internal void @unit_list_init(%struct._GtkTreeView* %tv) #0 {
entry:
  %tv.addr = alloca %struct._GtkTreeView*, align 8
  %list_store = alloca %struct._GtkListStore*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %num_units = alloca i32, align 4
  %unit = alloca i32, align 4
  %color = alloca %struct._GdkColor, align 4
  %user_unit = alloca i32, align 4
  store %struct._GtkTreeView* %tv, %struct._GtkTreeView** %tv.addr, align 8
  %0 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv.addr, align 8
  %call = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %0)
  %1 = bitcast %struct._GtkTreeModel* %call to %struct._GTypeInstance*
  %call1 = call i64 @gtk_list_store_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkListStore*
  store %struct._GtkListStore* %2, %struct._GtkListStore** %list_store, align 8
  %3 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  call void @gtk_list_store_clear(%struct._GtkListStore* %3)
  %call3 = call i32 @gimp_unit_get_number_of_units()
  store i32 %call3, i32* %num_units, align 4
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 1
  store i16 -8739, i16* %red, align 2
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 2
  store i16 -8739, i16* %green, align 2
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 3
  store i16 -1, i16* %blue, align 2
  store i32 1, i32* %unit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %unit, align 4
  %5 = load i32, i32* %num_units, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %unit, align 4
  %call4 = call i32 @gimp_unit_get_number_of_built_in_units() #6
  %cmp5 = icmp uge i32 %6, %call4
  %conv = zext i1 %cmp5 to i32
  store i32 %conv, i32* %user_unit, align 4
  %7 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %7, %struct._GtkTreeIter* %iter)
  %8 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %9 = load i32, i32* %unit, align 4
  %call6 = call i32 @gimp_unit_get_deletion_flag(i32 %9)
  %tobool = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %10 = load i32, i32* %unit, align 4
  %call7 = call i8* @gimp_unit_get_identifier(i32 %10)
  %11 = load i32, i32* %unit, align 4
  %call8 = call double @gimp_unit_get_factor(i32 %11)
  %12 = load i32, i32* %unit, align 4
  %call9 = call i32 @gimp_unit_get_digits(i32 %12)
  %13 = load i32, i32* %unit, align 4
  %call10 = call i8* @gimp_unit_get_symbol(i32 %13)
  %14 = load i32, i32* %unit, align 4
  %call11 = call i8* @gimp_unit_get_abbreviation(i32 %14)
  %15 = load i32, i32* %unit, align 4
  %call12 = call i8* @gimp_unit_get_singular(i32 %15)
  %16 = load i32, i32* %unit, align 4
  %call13 = call i8* @gimp_unit_get_plural(i32 %16)
  %17 = load i32, i32* %unit, align 4
  %18 = load i32, i32* %user_unit, align 4
  %19 = load i32, i32* %user_unit, align 4
  %tobool14 = icmp ne i32 %19, 0
  %cond = select i1 %tobool14, i32 -1, i32 10
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %8, %struct._GtkTreeIter* %iter, i32 0, i32 %lnot.ext, i32 1, i8* %call7, i32 2, double %call8, i32 3, i32 %call9, i32 4, i8* %call10, i32 5, i8* %call11, i32 6, i8* %call12, i32 7, i8* %call13, i32 8, i32 %17, i32 9, i32 %18, i32 %cond, %struct._GdkColor* %color, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %unit, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %unit, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %22 = bitcast %struct._GtkListStore* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_tree_model_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTreeModel*
  %call17 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %23, %struct._GtkTreeIter* %iter)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %24 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv.addr, align 8
  %call19 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %24)
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %call19, %struct._GtkTreeIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

declare void @gtk_main() #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @new_callback(%struct._GtkAction* %action, %struct._GtkTreeView* %tv) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %tv.addr = alloca %struct._GtkTreeView*, align 8
  %unit = alloca i32, align 4
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkTreeView* %tv, %struct._GtkTreeView** %tv.addr, align 8
  %0 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv.addr, align 8
  %1 = bitcast %struct._GtkTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %2)
  %call3 = call i32 @new_unit_dialog(%struct._GtkWidget* %call2, i32 0)
  store i32 %call3, i32* %unit, align 4
  %3 = load i32, i32* %unit, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv.addr, align 8
  call void @unit_list_init(%struct._GtkTreeView* %4)
  %5 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv.addr, align 8
  %call4 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %5)
  store %struct._GtkTreeModel* %call4, %struct._GtkTreeModel** %model, align 8
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call5 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %6, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %8 = load i32, i32* %unit, align 4
  %sub = sub i32 %8, 1
  %call6 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %sub)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  %9 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv.addr, align 8
  %call9 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %9)
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %call9, %struct._GtkTreeIter* %iter)
  %10 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv.addr, align 8
  %call10 = call %struct._GtkAdjustment* @gtk_tree_view_get_vadjustment(%struct._GtkTreeView* %10)
  store %struct._GtkAdjustment* %call10, %struct._GtkAdjustment** %adj, align 8
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %12 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call11 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %12)
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %11, double %call11)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @duplicate_callback(%struct._GtkAction* %action, %struct._GtkTreeView* %tv) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %tv.addr = alloca %struct._GtkTreeView*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %unit = alloca i32, align 4
  %iter8 = alloca %struct._GtkTreeIter, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkTreeView* %tv, %struct._GtkTreeView** %tv.addr, align 8
  %0 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv.addr, align 8
  %call = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %0)
  store %struct._GtkTreeModel* %call, %struct._GtkTreeModel** %model, align 8
  %1 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv.addr, align 8
  %call1 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %1)
  store %struct._GtkTreeSelection* %call1, %struct._GtkTreeSelection** %sel, align 8
  %2 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %call2 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %2, %struct._GtkTreeModel** null, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter, i32 8, i32* %unit, i32 -1)
  %4 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv.addr, align 8
  %5 = bitcast %struct._GtkTreeView* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  %call5 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %6)
  %7 = load i32, i32* %unit, align 4
  %call6 = call i32 @new_unit_dialog(%struct._GtkWidget* %call5, i32 %7)
  store i32 %call6, i32* %unit, align 4
  %8 = load i32, i32* %unit, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %if.then
  %9 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv.addr, align 8
  call void @unit_list_init(%struct._GtkTreeView* %9)
  %10 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call9 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %10, %struct._GtkTreeIter* %iter8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.7
  %11 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %12 = load i32, i32* %unit, align 4
  %sub = sub i32 %12, 1
  %call11 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %11, %struct._GtkTreeIter* %iter8, %struct._GtkTreeIter* null, i32 %sub)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %land.lhs.true
  %13 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %13, %struct._GtkTreeIter* %iter8)
  %14 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv.addr, align 8
  %call14 = call %struct._GtkAdjustment* @gtk_tree_view_get_vadjustment(%struct._GtkTreeView* %14)
  store %struct._GtkAdjustment* %call14, %struct._GtkAdjustment** %adj, align 8
  %15 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call15 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %16)
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %15, double %call15)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %land.lhs.true, %if.then.7
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @new_unit_dialog(%struct._GtkWidget* %main_dialog, i32 %template) #0 {
entry:
  %main_dialog.addr = alloca %struct._GtkWidget*, align 8
  %template.addr = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %identifier_entry = alloca %struct._GtkWidget*, align 8
  %factor_adj = alloca %struct._GtkObject*, align 8
  %digits_adj = alloca %struct._GtkObject*, align 8
  %symbol_entry = alloca %struct._GtkWidget*, align 8
  %abbreviation_entry = alloca %struct._GtkWidget*, align 8
  %singular_entry = alloca %struct._GtkWidget*, align 8
  %plural_entry = alloca %struct._GtkWidget*, align 8
  %unit = alloca i32, align 4
  %identifier = alloca i8*, align 8
  %factor = alloca double, align 8
  %digits = alloca i32, align 4
  %symbol = alloca i8*, align 8
  %abbreviation = alloca i8*, align 8
  %singular = alloca i8*, align 8
  %plural = alloca i8*, align 8
  %msg = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %main_dialog, %struct._GtkWidget** %main_dialog.addr, align 8
  store i32 %template, i32* %template.addr, align 4
  store i32 0, i32* %unit, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0)) #5
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %main_dialog.addr, align 8
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), %struct._GtkWidget* %0, i32 1, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call3)
  %3 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %3, i32 -5, i32 -6, i32 -1)
  %call5 = call %struct._GtkWidget* @gtk_table_new(i32 7, i32 2, i32 0)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %table, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_table_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call6)
  %6 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %6, i32 6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_table_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call8)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %9, i32 6)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %12, i32 12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_dialog_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkDialog*
  %call14 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %15)
  %16 = bitcast %struct._GtkWidget* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 0, i32 0, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %call17 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %identifier_entry, align 8
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %entry1, align 8
  %20 = load i32, i32* %template.addr, align 4
  %cmp = icmp ne i32 %20, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_entry_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkEntry*
  %24 = load i32, i32* %template.addr, align 4
  %call20 = call i8* @gimp_unit_get_identifier(i32 %24)
  call void @gtk_entry_set_text(%struct._GtkEntry* %23, i8* %call20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call21)
  %27 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0)) #5
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call24 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %27, i32 0, i32 0, i8* %call23, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %28, i32 1, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %30 = load i8*, i8** getelementptr inbounds ([8 x %struct.UnitColumn], [8 x %struct.UnitColumn]* @columns, i32 0, i64 1, i32 1), align 8
  %call25 = call i8* @gettext(i8* %30) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %29, i8* %call25, i8* null)
  %31 = load i32, i32* %template.addr, align 4
  %cmp26 = icmp ne i32 %31, 0
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %32 = load i32, i32* %template.addr, align 4
  %call27 = call double @gimp_unit_get_factor(i32 %32)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call27, %cond.true ], [ 1.000000e+00, %cond.false ]
  %call28 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %factor_adj, double %cond, double 5.000000e-03, double 6.553600e+04, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, double 1.000000e-02, i32 5)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %spinbutton, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_table_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call29)
  %35 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkTable*
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0)) #5
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call32 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %35, i32 0, i32 1, i8* %call31, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %36, i32 1, i32 1)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %38 = load i8*, i8** getelementptr inbounds ([8 x %struct.UnitColumn], [8 x %struct.UnitColumn]* @columns, i32 0, i64 2, i32 1), align 8
  %call33 = call i8* @gettext(i8* %38) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %37, i8* %call33, i8* null)
  %39 = load i32, i32* %template.addr, align 4
  %cmp34 = icmp ne i32 %39, 0
  br i1 %cmp34, label %cond.true.35, label %cond.false.37

cond.true.35:                                     ; preds = %cond.end
  %40 = load i32, i32* %template.addr, align 4
  %call36 = call i32 @gimp_unit_get_digits(i32 %40)
  %conv = sitofp i32 %call36 to double
  br label %cond.end.38

cond.false.37:                                    ; preds = %cond.end
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.35
  %cond39 = phi double [ %conv, %cond.true.35 ], [ 2.000000e+00, %cond.false.37 ]
  %call40 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %digits_adj, double %cond39, double 0.000000e+00, double 5.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %spinbutton, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call41)
  %43 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0)) #5
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call44 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %43, i32 0, i32 2, i8* %call43, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %44, i32 1, i32 1)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %46 = load i8*, i8** getelementptr inbounds ([8 x %struct.UnitColumn], [8 x %struct.UnitColumn]* @columns, i32 0, i64 3, i32 1), align 8
  %call45 = call i8* @gettext(i8* %46) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %45, i8* %call45, i8* null)
  %call46 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %symbol_entry, align 8
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %entry1, align 8
  %47 = load i32, i32* %template.addr, align 4
  %cmp47 = icmp ne i32 %47, 0
  br i1 %cmp47, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %cond.end.38
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_entry_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call50)
  %50 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkEntry*
  %51 = load i32, i32* %template.addr, align 4
  %call52 = call i8* @gimp_unit_get_symbol(i32 %51)
  call void @gtk_entry_set_text(%struct._GtkEntry* %50, i8* %call52)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %cond.end.38
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call54)
  %54 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0)) #5
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call57 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %54, i32 0, i32 3, i8* %call56, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %55, i32 1, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %57 = load i8*, i8** getelementptr inbounds ([8 x %struct.UnitColumn], [8 x %struct.UnitColumn]* @columns, i32 0, i64 4, i32 1), align 8
  %call58 = call i8* @gettext(i8* %57) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %56, i8* %call58, i8* null)
  %call59 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %abbreviation_entry, align 8
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %entry1, align 8
  %58 = load i32, i32* %template.addr, align 4
  %cmp60 = icmp ne i32 %58, 0
  br i1 %cmp60, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %if.end.53
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_entry_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call63)
  %61 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkEntry*
  %62 = load i32, i32* %template.addr, align 4
  %call65 = call i8* @gimp_unit_get_abbreviation(i32 %62)
  call void @gtk_entry_set_text(%struct._GtkEntry* %61, i8* %call65)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %if.end.53
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_table_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call67)
  %65 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkTable*
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0)) #5
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call70 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %65, i32 0, i32 4, i8* %call69, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %66, i32 1, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %68 = load i8*, i8** getelementptr inbounds ([8 x %struct.UnitColumn], [8 x %struct.UnitColumn]* @columns, i32 0, i64 5, i32 1), align 8
  %call71 = call i8* @gettext(i8* %68) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %67, i8* %call71, i8* null)
  %call72 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %singular_entry, align 8
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %entry1, align 8
  %69 = load i32, i32* %template.addr, align 4
  %cmp73 = icmp ne i32 %69, 0
  br i1 %cmp73, label %if.then.75, label %if.end.79

if.then.75:                                       ; preds = %if.end.66
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_entry_get_type() #6
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call76)
  %72 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkEntry*
  %73 = load i32, i32* %template.addr, align 4
  %call78 = call i8* @gimp_unit_get_singular(i32 %73)
  call void @gtk_entry_set_text(%struct._GtkEntry* %72, i8* %call78)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.75, %if.end.66
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_table_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call80)
  %76 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkTable*
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0)) #5
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call83 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %76, i32 0, i32 5, i8* %call82, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %77, i32 1, i32 0)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %79 = load i8*, i8** getelementptr inbounds ([8 x %struct.UnitColumn], [8 x %struct.UnitColumn]* @columns, i32 0, i64 6, i32 1), align 8
  %call84 = call i8* @gettext(i8* %79) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %78, i8* %call84, i8* null)
  %call85 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %plural_entry, align 8
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %entry1, align 8
  %80 = load i32, i32* %template.addr, align 4
  %cmp86 = icmp ne i32 %80, 0
  br i1 %cmp86, label %if.then.88, label %if.end.92

if.then.88:                                       ; preds = %if.end.79
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_entry_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call89)
  %83 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkEntry*
  %84 = load i32, i32* %template.addr, align 4
  %call91 = call i8* @gimp_unit_get_plural(i32 %84)
  call void @gtk_entry_set_text(%struct._GtkEntry* %83, i8* %call91)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.88, %if.end.79
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_table_get_type() #6
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call93)
  %87 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkTable*
  %call95 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0)) #5
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call96 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %87, i32 0, i32 6, i8* %call95, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %88, i32 1, i32 0)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %90 = load i8*, i8** getelementptr inbounds ([8 x %struct.UnitColumn], [8 x %struct.UnitColumn]* @columns, i32 0, i64 7, i32 1), align 8
  %call97 = call i8* @gettext(i8* %90) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %89, i8* %call97, i8* null)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  br label %while.body

while.body:                                       ; preds = %if.end.92, %if.then.163
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call98 = call i64 @gimp_dialog_get_type() #6
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call98)
  %94 = bitcast %struct._GTypeInstance* %call99 to %struct._GimpDialog*
  %call100 = call i32 @gimp_dialog_run(%struct._GimpDialog* %94)
  %cmp101 = icmp ne i32 %call100, -5
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %while.body
  br label %while.end

if.end.104:                                       ; preds = %while.body
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %identifier_entry, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_entry_get_type() #6
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call105)
  %97 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkEntry*
  %call107 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %97)
  %call108 = call noalias i8* @g_strdup(i8* %call107)
  store i8* %call108, i8** %identifier, align 8
  %98 = load %struct._GtkObject*, %struct._GtkObject** %factor_adj, align 8
  %99 = bitcast %struct._GtkObject* %98 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_adjustment_get_type() #6
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call109)
  %100 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkAdjustment*
  %call111 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %100)
  store double %call111, double* %factor, align 8
  %101 = load %struct._GtkObject*, %struct._GtkObject** %digits_adj, align 8
  %102 = bitcast %struct._GtkObject* %101 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_adjustment_get_type() #6
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call112)
  %103 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkAdjustment*
  %call114 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %103)
  %conv115 = fptosi double %call114 to i32
  store i32 %conv115, i32* %digits, align 4
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %symbol_entry, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_entry_get_type() #6
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call116)
  %106 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkEntry*
  %call118 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %106)
  %call119 = call noalias i8* @g_strdup(i8* %call118)
  store i8* %call119, i8** %symbol, align 8
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %abbreviation_entry, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_entry_get_type() #6
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call120)
  %109 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkEntry*
  %call122 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %109)
  %call123 = call noalias i8* @g_strdup(i8* %call122)
  store i8* %call123, i8** %abbreviation, align 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %singular_entry, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_entry_get_type() #6
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call124)
  %112 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkEntry*
  %call126 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %112)
  %call127 = call noalias i8* @g_strdup(i8* %call126)
  store i8* %call127, i8** %singular, align 8
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %plural_entry, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_entry_get_type() #6
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call128)
  %115 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkEntry*
  %call130 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %115)
  %call131 = call noalias i8* @g_strdup(i8* %call130)
  store i8* %call131, i8** %plural, align 8
  %116 = load i8*, i8** %identifier, align 8
  %call132 = call i8* @g_strchug(i8* %116)
  %call133 = call i8* @g_strchomp(i8* %call132)
  store i8* %call133, i8** %identifier, align 8
  %117 = load i8*, i8** %symbol, align 8
  %call134 = call i8* @g_strchug(i8* %117)
  %call135 = call i8* @g_strchomp(i8* %call134)
  store i8* %call135, i8** %symbol, align 8
  %118 = load i8*, i8** %abbreviation, align 8
  %call136 = call i8* @g_strchug(i8* %118)
  %call137 = call i8* @g_strchomp(i8* %call136)
  store i8* %call137, i8** %abbreviation, align 8
  %119 = load i8*, i8** %singular, align 8
  %call138 = call i8* @g_strchug(i8* %119)
  %call139 = call i8* @g_strchomp(i8* %call138)
  store i8* %call139, i8** %singular, align 8
  %120 = load i8*, i8** %plural, align 8
  %call140 = call i8* @g_strchug(i8* %120)
  %call141 = call i8* @g_strchomp(i8* %call140)
  store i8* %call141, i8** %plural, align 8
  %121 = load i8*, i8** %identifier, align 8
  %call142 = call i64 @strlen(i8* %121) #7
  %tobool = icmp ne i64 %call142, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %122 = load i8*, i8** %symbol, align 8
  %call143 = call i64 @strlen(i8* %122) #7
  %tobool144 = icmp ne i64 %call143, 0
  %lnot145 = xor i1 %tobool144, true
  %lnot.ext146 = zext i1 %lnot145 to i32
  %or = or i32 %lnot.ext, %lnot.ext146
  %123 = load i8*, i8** %abbreviation, align 8
  %call147 = call i64 @strlen(i8* %123) #7
  %tobool148 = icmp ne i64 %call147, 0
  %lnot149 = xor i1 %tobool148, true
  %lnot.ext150 = zext i1 %lnot149 to i32
  %or151 = or i32 %or, %lnot.ext150
  %124 = load i8*, i8** %singular, align 8
  %call152 = call i64 @strlen(i8* %124) #7
  %tobool153 = icmp ne i64 %call152, 0
  %lnot154 = xor i1 %tobool153, true
  %lnot.ext155 = zext i1 %lnot154 to i32
  %or156 = or i32 %or151, %lnot.ext155
  %125 = load i8*, i8** %plural, align 8
  %call157 = call i64 @strlen(i8* %125) #7
  %tobool158 = icmp ne i64 %call157, 0
  %lnot159 = xor i1 %tobool158, true
  %lnot.ext160 = zext i1 %lnot159 to i32
  %or161 = or i32 %or156, %lnot.ext160
  %tobool162 = icmp ne i32 %or161, 0
  br i1 %tobool162, label %if.then.163, label %if.end.174

if.then.163:                                      ; preds = %if.end.104
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call164 = call i64 @gtk_window_get_type() #6
  %call165 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call164)
  %128 = bitcast %struct._GTypeInstance* %call165 to %struct._GtkWindow*
  %call166 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0)) #5
  %call167 = call %struct._GtkWidget* (%struct._GtkWindow*, i32, i32, i32, i8*, ...) @gtk_message_dialog_new(%struct._GtkWindow* %128, i32 0, i32 3, i32 1, i8* %call166)
  store %struct._GtkWidget* %call167, %struct._GtkWidget** %msg, align 8
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %msg, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call168 = call i64 @gtk_message_dialog_get_type() #6
  %call169 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call168)
  %131 = bitcast %struct._GTypeInstance* %call169 to %struct._GtkMessageDialog*
  %call170 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i32 0, i32 0)) #5
  call void (%struct._GtkMessageDialog*, i8*, ...) @gtk_message_dialog_format_secondary_text(%struct._GtkMessageDialog* %131, i8* %call170)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %msg, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call171 = call i64 @gtk_dialog_get_type() #6
  %call172 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call171)
  %134 = bitcast %struct._GTypeInstance* %call172 to %struct._GtkDialog*
  %call173 = call i32 @gtk_dialog_run(%struct._GtkDialog* %134)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %msg, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %135)
  br label %while.body

if.end.174:                                       ; preds = %if.end.104
  %136 = load i8*, i8** %identifier, align 8
  %137 = load double, double* %factor, align 8
  %138 = load i32, i32* %digits, align 4
  %139 = load i8*, i8** %symbol, align 8
  %140 = load i8*, i8** %abbreviation, align 8
  %141 = load i8*, i8** %singular, align 8
  %142 = load i8*, i8** %plural, align 8
  %call175 = call i32 @gimp_unit_new(i8* %136, double %137, i32 %138, i8* %139, i8* %140, i8* %141, i8* %142)
  store i32 %call175, i32* %unit, align 4
  %143 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %143)
  %144 = load i8*, i8** %symbol, align 8
  call void @g_free(i8* %144)
  %145 = load i8*, i8** %abbreviation, align 8
  call void @g_free(i8* %145)
  %146 = load i8*, i8** %singular, align 8
  call void @g_free(i8* %146)
  %147 = load i8*, i8** %plural, align 8
  call void @g_free(i8* %147)
  br label %while.end

while.end:                                        ; preds = %if.end.174, %if.then.103
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %148)
  %149 = load i32, i32* %unit, align 4
  ret i32 %149
}

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView*) #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i32) #1

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare %struct._GtkAdjustment* @gtk_tree_view_get_vadjustment(%struct._GtkTreeView*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare i8* @gimp_unit_get_identifier(i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare double @gimp_unit_get_factor(i32) #1

declare i32 @gimp_unit_get_digits(i32) #1

declare i8* @gimp_unit_get_symbol(i32) #1

declare i8* @gimp_unit_get_abbreviation(i32) #1

declare i8* @gimp_unit_get_singular(i32) #1

declare i8* @gimp_unit_get_plural(i32) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare i8* @g_strchomp(i8*) #1

declare i8* @g_strchug(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct._GtkWidget* @gtk_message_dialog_new(%struct._GtkWindow*, i32, i32, i32, i8*, ...) #1

declare void @gtk_message_dialog_format_secondary_text(%struct._GtkMessageDialog*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_message_dialog_get_type() #3

declare i32 @gtk_dialog_run(%struct._GtkDialog*) #1

declare i32 @gimp_unit_new(i8*, double, i32, i8*, i8*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

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

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_unit_get_number_of_built_in_units() #3

declare void @gimp_unit_set_deletion_flag(i32, i32) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @gtk_list_store_clear(%struct._GtkListStore*) #1

declare i32 @gimp_unit_get_number_of_units() #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare i32 @gimp_unit_get_deletion_flag(i32) #1

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
