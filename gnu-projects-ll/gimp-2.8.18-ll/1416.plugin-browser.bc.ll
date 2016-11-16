; ModuleID = './plug-ins/common/plugin-browser.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
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
%struct.PluginBrowser = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkTreeView*, %struct._GtkTreeView* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeStore = type { %struct._GObject, i32, i8*, i8*, i32, i32, %struct._GList*, i32, i64*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreePath = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpBrowser = type { %struct._GtkHPaned, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GtkWidget*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkHPaned = type { %struct._GtkPaned }
%struct._GtkPaned = type { %struct._GtkContainer, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GdkGC*, i32, %struct._GdkRectangle, i32, i32, i32, i32, i16, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkPanedPrivate*, i32, i32 }
%struct._GtkPanedPrivate = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct.PInfo = type { i8*, i8*, i8*, i8*, i8*, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GtkTreeSortable = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"The run mode { RUN-INTERACTIVE (0) }\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"plug-in-plug-in-details\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Display information about plug-ins\00", align 1
@.str.4 = private unnamed_addr constant [255 x i8] c"Allows to browse the plug-in menus system. You can search for plug-in names, sort by name or menu location and you can view a tree representation of the plug-in menus. Can also be of help to find where new plug-ins have installed themselves in the menus.\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Andy Thomas\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"1999\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"_Plug-In Browser\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"<Image>/Help/Programming\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"gimp-plugin\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"plugin-browser\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Plug-In Browser\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"gimp-plugin-browser\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"Menu Path\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Image Types\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Installation Date\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"List View\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Tree View\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Searching by name\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"gimp-plugins-query\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"%d plug-in\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"%d plug-ins\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"No matches for your query\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"%d plug-in matches your query\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"%d plug-ins match your query\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"No matches\00", align 1
@__func__.browser_list_selection_changed = private unnamed_addr constant [31 x i8] c"browser_list_selection_changed\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"browser != NULL\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"Failed to find node in tree\00", align 1
@__func__.browser_show_plugin = private unnamed_addr constant [20 x i8] c"browser_show_plugin\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"pinfo != NULL\00", align 1
@__func__.browser_tree_selection_changed = private unnamed_addr constant [31 x i8] c"browser_tree_selection_changed\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"Failed to find node in list\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([255 x i8], [255 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i32 1, i32 1, i32 0, %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0))
  %call1 = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0))
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
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %3 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %3, align 4
  store i32 3, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %call5 = call %struct._GtkWidget* @browser_dialog_new()
  call void @gtk_main()
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
define internal %struct._GtkWidget* @browser_dialog_new() #0 {
entry:
  %browser = alloca %struct.PluginBrowser*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %scrolled_window = alloca %struct._GtkWidget*, align 8
  %list_store = alloca %struct._GtkListStore*, align 8
  %tree_store = alloca %struct._GtkTreeStore*, align 8
  %list_view = alloca %struct._GtkWidget*, align 8
  %tree_view = alloca %struct._GtkWidget*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  %renderer = alloca %struct._GtkCellRenderer*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 0)
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 32)
  %0 = bitcast i8* %call to %struct.PluginBrowser*
  store %struct.PluginBrowser* %0, %struct.PluginBrowser** %browser, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #5
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 -7, i8* null)
  %1 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %dialog = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %1, i32 0, i32 0
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %2 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %dialog3 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %2, i32 0, i32 0
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog3, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %5 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %6 = bitcast %struct.PluginBrowser* %5 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.PluginBrowser*)* @browser_dialog_response to void ()*), i8* %6, void (i8*, %struct._GClosure*)* null, i32 0)
  %call5 = call %struct._GtkWidget* @gimp_browser_new()
  %7 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %browser6 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %7, i32 0, i32 1
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %browser6, align 8
  %8 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %browser7 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %8, i32 0, i32 1
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %browser7, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %11, i32 12)
  %12 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %dialog10 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %12, i32 0, i32 0
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog10, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  %call13 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %15)
  %16 = bitcast %struct._GtkWidget* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %18 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %browser16 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %18, i32 0, i32 1
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %browser16, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %19, i32 1, i32 1, i32 0)
  %20 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %browser17 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %20, i32 0, i32 1
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %browser17, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %browser18 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %22, i32 0, i32 1
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %browser18, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  %25 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %26 = bitcast %struct.PluginBrowser* %25 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpBrowser*, i8*, i32, %struct.PluginBrowser*)* @browser_search to void ()*), i8* %26, void (i8*, %struct._GClosure*)* null, i32 0)
  %call20 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %notebook, align 8
  %27 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %browser21 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %27, i32 0, i32 1
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %browser21, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_browser_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call22)
  %30 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpBrowser*
  %left_vbox = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %30, i32 0, i32 1
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %left_vbox, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %33, %struct._GtkWidget* %34, i32 1, i32 1, i32 0)
  %call26 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 6, i64 64, i64 40, i64 64, i64 64, i64 64, i64 68)
  store %struct._GtkListStore* %call26, %struct._GtkListStore** %list_store, align 8
  %35 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %36 = bitcast %struct._GtkListStore* %35 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_tree_model_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call27)
  %37 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTreeModel*
  %call29 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %37)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %list_view, align 8
  %38 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %39 = bitcast %struct._GtkListStore* %38 to i8*
  call void @g_object_unref(i8* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %list_view, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_tree_view_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call30)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTreeView*
  %43 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %list_view32 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %43, i32 0, i32 2
  store %struct._GtkTreeView* %42, %struct._GtkTreeView** %list_view32, align 8
  %call33 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call33, %struct._GtkCellRenderer** %renderer, align 8
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #5
  %44 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call35 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* %call34, %struct._GtkCellRenderer* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* null)
  store %struct._GtkTreeViewColumn* %call35, %struct._GtkTreeViewColumn** %column, align 8
  %45 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_sort_column_id(%struct._GtkTreeViewColumn* %45, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %list_view, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_tree_view_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call36)
  %48 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTreeView*
  %49 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call38 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %48, %struct._GtkTreeViewColumn* %49)
  %call39 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call39, %struct._GtkCellRenderer** %renderer, align 8
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0)) #5
  %50 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call41 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* %call40, %struct._GtkCellRenderer* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 3, i8* null)
  store %struct._GtkTreeViewColumn* %call41, %struct._GtkTreeViewColumn** %column, align 8
  %51 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_sort_column_id(%struct._GtkTreeViewColumn* %51, i32 3)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %list_view, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_tree_view_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call42)
  %54 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTreeView*
  %55 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call44 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %54, %struct._GtkTreeViewColumn* %55)
  %call45 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call45, %struct._GtkCellRenderer** %renderer, align 8
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0)) #5
  %56 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call47 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* %call46, %struct._GtkCellRenderer* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 4, i8* null)
  store %struct._GtkTreeViewColumn* %call47, %struct._GtkTreeViewColumn** %column, align 8
  %57 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_sort_column_id(%struct._GtkTreeViewColumn* %57, i32 4)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %list_view, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_tree_view_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call48)
  %60 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTreeView*
  %61 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call50 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %60, %struct._GtkTreeViewColumn* %61)
  %call51 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call51, %struct._GtkCellRenderer** %renderer, align 8
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0)) #5
  %62 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call53 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* %call52, %struct._GtkCellRenderer* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 2, i8* null)
  store %struct._GtkTreeViewColumn* %call53, %struct._GtkTreeViewColumn** %column, align 8
  %63 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_sort_column_id(%struct._GtkTreeViewColumn* %63, i32 1)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %list_view, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_tree_view_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call54)
  %66 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTreeView*
  %67 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call56 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %66, %struct._GtkTreeViewColumn* %67)
  %call57 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %scrolled_window, align 8
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_container_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call58)
  %70 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %70, i32 2)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_scrolled_window_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call60)
  %73 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %73, i32 1)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_scrolled_window_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call62)
  %76 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %76, i32 1, i32 1)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %list_view, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %77, i32 250, i32 250)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %list_view, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_tree_view_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call64)
  %80 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTreeView*
  %call66 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %80)
  store %struct._GtkTreeSelection* %call66, %struct._GtkTreeSelection** %selection, align 8
  %81 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %81, i32 2)
  %82 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %83 = bitcast %struct._GtkTreeSelection* %82 to i8*
  %84 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %85 = bitcast %struct.PluginBrowser* %84 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct.PluginBrowser*)* @browser_list_selection_changed to void ()*), i8* %85, void (i8*, %struct._GClosure*)* null, i32 0)
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0)) #5
  %call69 = call %struct._GtkWidget* @gtk_label_new(i8* %call68)
  store %struct._GtkWidget* %call69, %struct._GtkWidget** %label, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_notebook_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call70)
  %88 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkNotebook*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call72 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %88, %struct._GtkWidget* %89, %struct._GtkWidget* %90)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_container_get_type() #6
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call73)
  %93 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkContainer*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %list_view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %93, %struct._GtkWidget* %94)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %list_view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %call75 = call %struct._GtkTreeStore* (i32, ...) @gtk_tree_store_new(i32 6, i64 64, i64 40, i64 64, i64 64, i64 64, i64 68)
  store %struct._GtkTreeStore* %call75, %struct._GtkTreeStore** %tree_store, align 8
  %97 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree_store, align 8
  %98 = bitcast %struct._GtkTreeStore* %97 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_tree_model_get_type() #6
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call76)
  %99 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkTreeModel*
  %call78 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %99)
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %tree_view, align 8
  %100 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree_store, align 8
  %101 = bitcast %struct._GtkTreeStore* %100 to i8*
  call void @g_object_unref(i8* %101)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_tree_view_get_type() #6
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call79)
  %104 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkTreeView*
  %105 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %tree_view81 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %105, i32 0, i32 3
  store %struct._GtkTreeView* %104, %struct._GtkTreeView** %tree_view81, align 8
  %call82 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call82, %struct._GtkCellRenderer** %renderer, align 8
  %call83 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0)) #5
  %106 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call84 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* %call83, %struct._GtkCellRenderer* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* null)
  store %struct._GtkTreeViewColumn* %call84, %struct._GtkTreeViewColumn** %column, align 8
  %107 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_sort_column_id(%struct._GtkTreeViewColumn* %107, i32 0)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_tree_view_get_type() #6
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call85)
  %110 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkTreeView*
  %111 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call87 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %110, %struct._GtkTreeViewColumn* %111)
  %call88 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call88, %struct._GtkCellRenderer** %renderer, align 8
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0)) #5
  %112 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call90 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* %call89, %struct._GtkCellRenderer* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 3, i8* null)
  store %struct._GtkTreeViewColumn* %call90, %struct._GtkTreeViewColumn** %column, align 8
  %113 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_sort_column_id(%struct._GtkTreeViewColumn* %113, i32 3)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_tree_view_get_type() #6
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call91)
  %116 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkTreeView*
  %117 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call93 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %116, %struct._GtkTreeViewColumn* %117)
  %call94 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call94, %struct._GtkCellRenderer** %renderer, align 8
  %call95 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0)) #5
  %118 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call96 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* %call95, %struct._GtkCellRenderer* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 2, i8* null)
  store %struct._GtkTreeViewColumn* %call96, %struct._GtkTreeViewColumn** %column, align 8
  %119 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_sort_column_id(%struct._GtkTreeViewColumn* %119, i32 1)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_tree_view_get_type() #6
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call97)
  %122 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkTreeView*
  %123 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call99 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %122, %struct._GtkTreeViewColumn* %123)
  %call100 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call100, %struct._GtkWidget** %scrolled_window, align 8
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_container_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call101)
  %126 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %126, i32 2)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_scrolled_window_get_type() #6
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call103)
  %129 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %129, i32 1)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_scrolled_window_get_type() #6
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call105)
  %132 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %132, i32 1, i32 1)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %133, i32 250, i32 250)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_tree_view_get_type() #6
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call107)
  %136 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkTreeView*
  %call109 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %136)
  store %struct._GtkTreeSelection* %call109, %struct._GtkTreeSelection** %selection, align 8
  %137 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %137, i32 2)
  %138 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %139 = bitcast %struct._GtkTreeSelection* %138 to i8*
  %140 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %141 = bitcast %struct.PluginBrowser* %140 to i8*
  %call110 = call i64 @g_signal_connect_data(i8* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct.PluginBrowser*)* @browser_tree_selection_changed to void ()*), i8* %141, void (i8*, %struct._GClosure*)* null, i32 0)
  %call111 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0)) #5
  %call112 = call %struct._GtkWidget* @gtk_label_new(i8* %call111)
  store %struct._GtkWidget* %call112, %struct._GtkWidget** %label, align 8
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_notebook_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call113)
  %144 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkNotebook*
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call115 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %144, %struct._GtkWidget* %145, %struct._GtkWidget* %146)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_container_get_type() #6
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call116)
  %149 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkContainer*
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %149, %struct._GtkWidget* %150)
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %151)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %152)
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %153)
  %154 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %browser118 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %154, i32 0, i32 1
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %browser118, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call119 = call i64 @gimp_browser_get_type() #6
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call119)
  %157 = bitcast %struct._GTypeInstance* %call120 to %struct._GimpBrowser*
  %right_vbox = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %157, i32 0, i32 7
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox, align 8
  %call121 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %158)
  store %struct._GtkWidget* %call121, %struct._GtkWidget** %parent, align 8
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %call122 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %159)
  store %struct._GtkWidget* %call122, %struct._GtkWidget** %parent, align 8
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %160, i32 400, i32 -1)
  %161 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %browser123 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %161, i32 0, i32 1
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %browser123, align 8
  %163 = bitcast %struct._GtkWidget* %162 to %struct._GTypeInstance*
  %call124 = call i64 @gimp_browser_get_type() #6
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 %call124)
  %164 = bitcast %struct._GTypeInstance* %call125 to %struct._GimpBrowser*
  %165 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  call void @browser_search(%struct._GimpBrowser* %164, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i32 0, %struct.PluginBrowser* %165)
  %166 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %dialog126 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %166, i32 0, i32 0
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog126, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %167)
  %168 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %169 = bitcast %struct._GtkListStore* %168 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_tree_model_get_type() #6
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %169, i64 %call127)
  %170 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkTreeModel*
  %call129 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %170, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call129, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %list_view, align 8
  %172 = bitcast %struct._GtkWidget* %171 to %struct._GTypeInstance*
  %call130 = call i64 @gtk_tree_view_get_type() #6
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %172, i64 %call130)
  %173 = bitcast %struct._GTypeInstance* %call131 to %struct._GtkTreeView*
  %call132 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %173)
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %call132, %struct._GtkTreeIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %174 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser, align 8
  %dialog133 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %174, i32 0, i32 0
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog133, align 8
  ret %struct._GtkWidget* %175
}

declare void @gtk_main() #1

declare void @gimp_ui_init(i8*, i32) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_standard_help_func(i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @browser_dialog_response(%struct._GtkWidget* %widget, i32 %response_id, %struct.PluginBrowser* %browser) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %browser.addr = alloca %struct.PluginBrowser*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.PluginBrowser* %browser, %struct.PluginBrowser** %browser.addr, align 8
  %0 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %dialog = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %1)
  call void @gtk_main_quit()
  ret void
}

declare %struct._GtkWidget* @gimp_browser_new() #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @browser_search(%struct._GimpBrowser* %gimp_browser, i8* %search_text, i32 %search_type, %struct.PluginBrowser* %browser) #0 {
entry:
  %gimp_browser.addr = alloca %struct._GimpBrowser*, align 8
  %search_text.addr = alloca i8*, align 8
  %search_type.addr = alloca i32, align 4
  %browser.addr = alloca %struct.PluginBrowser*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %num_plugins = alloca i32, align 4
  %str = alloca i8*, align 8
  %list_store = alloca %struct._GtkListStore*, align 8
  %tree_store = alloca %struct._GtkTreeStore*, align 8
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %menu_strs = alloca i8**, align 8
  %accel_strs = alloca i8**, align 8
  %prog_strs = alloca i8**, align 8
  %types_strs = alloca i8**, align 8
  %realname_strs = alloca i8**, align 8
  %time_ints = alloca i32*, align 8
  %i = alloca i32, align 4
  %pinfo = alloca %struct.PInfo*, align 8
  %name = alloca i8*, align 8
  %xtimestr = alloca [50 x i8], align 16
  %x = alloca %struct.tm*, align 8
  %tx = alloca i64, align 8
  %ret = alloca i32, align 4
  %format = alloca i8*, align 8
  %utf8 = alloca i8*, align 8
  store %struct._GimpBrowser* %gimp_browser, %struct._GimpBrowser** %gimp_browser.addr, align 8
  store i8* %search_text, i8** %search_text.addr, align 8
  store i32 %search_type, i32* %search_type.addr, align 4
  store %struct.PluginBrowser* %browser, %struct.PluginBrowser** %browser.addr, align 8
  %0 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %browser1 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %0, i32 0, i32 1
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %browser1, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_browser_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpBrowser*
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0)) #5
  call void @gimp_browser_show_message(%struct._GimpBrowser* %3, i8* %call3)
  %4 = load i8*, i8** %search_text.addr, align 8
  %call4 = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %4, i32 22)
  store %struct._GimpParam* %call4, %struct._GimpParam** %return_vals, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %6 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data6 to i32*
  %8 = load i32, i32* %d_int32, align 4
  store i32 %8, i32* %num_plugins, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %num_plugins, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i8*, i8** %search_text.addr, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.9

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i8*, i8** %search_text.addr, align 8
  %call7 = call i64 @strlen(i8* %10) #7
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %lor.lhs.false, %if.end
  %11 = load i32, i32* %num_plugins, align 4
  %conv = sext i32 %11 to i64
  %call10 = call i8* @ngettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i64 %conv) #5
  %12 = load i32, i32* %num_plugins, align 4
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call10, i32 %12)
  store i8* %call11, i8** %str, align 8
  br label %if.end.18

if.else.12:                                       ; preds = %lor.lhs.false
  %13 = load i32, i32* %num_plugins, align 4
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.else.12
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0)) #5
  %call14 = call noalias i8* @g_strdup(i8* %call13)
  store i8* %call14, i8** %str, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.12
  %14 = load i32, i32* %num_plugins, align 4
  %conv15 = sext i32 %14 to i64
  %call16 = call i8* @ngettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0), i64 %conv15) #5
  %15 = load i32, i32* %num_plugins, align 4
  %call17 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call16, i32 %15)
  store i8* %call17, i8** %str, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end.18

if.end.18:                                        ; preds = %sw.epilog, %if.then.9
  %16 = load %struct._GimpBrowser*, %struct._GimpBrowser** %gimp_browser.addr, align 8
  %count_label = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %16, i32 0, i32 6
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_label_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call19)
  %19 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkLabel*
  %20 = load i8*, i8** %str, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %19, i8* %20)
  %21 = load i8*, i8** %str, align 8
  call void @g_free(i8* %21)
  %22 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %list_view = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %22, i32 0, i32 2
  %23 = load %struct._GtkTreeView*, %struct._GtkTreeView** %list_view, align 8
  %call21 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %23)
  %24 = bitcast %struct._GtkTreeModel* %call21 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_list_store_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call22)
  %25 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkListStore*
  store %struct._GtkListStore* %25, %struct._GtkListStore** %list_store, align 8
  %26 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  call void @gtk_list_store_clear(%struct._GtkListStore* %26)
  %27 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %tree_view = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %27, i32 0, i32 3
  %28 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view, align 8
  %call24 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %28)
  %29 = bitcast %struct._GtkTreeModel* %call24 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_tree_store_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call25)
  %30 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTreeStore*
  store %struct._GtkTreeStore* %30, %struct._GtkTreeStore** %tree_store, align 8
  %31 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree_store, align 8
  call void @gtk_tree_store_clear(%struct._GtkTreeStore* %31)
  %32 = load i32, i32* %num_plugins, align 4
  %cmp27 = icmp sgt i32 %32, 0
  br i1 %cmp27, label %if.then.29, label %if.else.138

if.then.29:                                       ; preds = %if.end.18
  %33 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 2
  %data31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 1
  %d_stringarray = bitcast %union._GimpParamData* %data31 to i8***
  %34 = load i8**, i8*** %d_stringarray, align 8
  store i8** %34, i8*** %menu_strs, align 8
  %35 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %35, i64 4
  %data33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx32, i32 0, i32 1
  %d_stringarray34 = bitcast %union._GimpParamData* %data33 to i8***
  %36 = load i8**, i8*** %d_stringarray34, align 8
  store i8** %36, i8*** %accel_strs, align 8
  %37 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %37, i64 6
  %data36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx35, i32 0, i32 1
  %d_stringarray37 = bitcast %union._GimpParamData* %data36 to i8***
  %38 = load i8**, i8*** %d_stringarray37, align 8
  store i8** %38, i8*** %prog_strs, align 8
  %39 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %39, i64 8
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_stringarray40 = bitcast %union._GimpParamData* %data39 to i8***
  %40 = load i8**, i8*** %d_stringarray40, align 8
  store i8** %40, i8*** %types_strs, align 8
  %41 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %41, i64 10
  %data42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx41, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data42 to i32**
  %42 = load i32*, i32** %d_int32array, align 8
  store i32* %42, i32** %time_ints, align 8
  %43 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %43, i64 12
  %data44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx43, i32 0, i32 1
  %d_stringarray45 = bitcast %union._GimpParamData* %data44 to i8***
  %44 = load i8**, i8*** %d_stringarray45, align 8
  store i8** %44, i8*** %realname_strs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.29
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %num_plugins, align 4
  %cmp46 = icmp slt i32 %45, %46
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %i, align 4
  %idxprom = sext i32 %47 to i64
  %48 = load i8**, i8*** %menu_strs, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %48, i64 %idxprom
  %49 = load i8*, i8** %arrayidx48, align 8
  %call49 = call i8* @strstr(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0)) #7
  store i8* %call49, i8** %name, align 8
  %50 = load i8*, i8** %name, align 8
  %tobool50 = icmp ne i8* %50, null
  br i1 %tobool50, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %for.body
  %51 = load i8*, i8** %name, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %52 to i64
  %53 = load i8**, i8*** %menu_strs, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %53, i64 %idxprom51
  %54 = load i8*, i8** %arrayidx52, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %55 to i64
  %56 = load i8**, i8*** %menu_strs, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %56, i64 %idxprom53
  %57 = load i8*, i8** %arrayidx54, align 8
  %call55 = call i64 @strlen(i8* %57) #7
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %call55
  %add.ptr56 = getelementptr inbounds i8, i8* %add.ptr, i64 -3
  %cmp57 = icmp eq i8* %51, %add.ptr56
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %land.lhs.true
  %58 = load i8*, i8** %name, align 8
  store i8 0, i8* %58, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %land.lhs.true, %for.body
  %59 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %59 to i64
  %60 = load i8**, i8*** %menu_strs, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %60, i64 %idxprom61
  %61 = load i8*, i8** %arrayidx62, align 8
  %call63 = call i8* @strrchr(i8* %61, i32 47) #7
  store i8* %call63, i8** %name, align 8
  %62 = load i8*, i8** %name, align 8
  %tobool64 = icmp ne i8* %62, null
  br i1 %tobool64, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.end.60
  %63 = load i8*, i8** %name, align 8
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %name, align 8
  %add.ptr66 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %add.ptr66, i8** %name, align 8
  br label %if.end.70

if.else.67:                                       ; preds = %if.end.60
  %65 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %65 to i64
  %66 = load i8**, i8*** %menu_strs, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %66, i64 %idxprom68
  %67 = load i8*, i8** %arrayidx69, align 8
  store i8* %67, i8** %name, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.65
  %68 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %68 to i64
  %69 = load i32*, i32** %time_ints, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %69, i64 %idxprom71
  %70 = load i32, i32* %arrayidx72, align 4
  %conv73 = sext i32 %70 to i64
  store i64 %conv73, i64* %tx, align 8
  %71 = load i64, i64* %tx, align 8
  %tobool74 = icmp ne i64 %71, 0
  br i1 %tobool74, label %if.then.75, label %if.else.89

if.then.75:                                       ; preds = %if.end.70
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8** %format, align 8
  %call76 = call %struct.tm* @localtime(i64* %tx) #5
  store %struct.tm* %call76, %struct.tm** %x, align 8
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %xtimestr, i32 0, i32 0
  %72 = load i8*, i8** %format, align 8
  %73 = load %struct.tm*, %struct.tm** %x, align 8
  %call77 = call i64 @strftime(i8* %arraydecay, i64 50, i8* %72, %struct.tm* %73) #5
  %conv78 = trunc i64 %call77 to i32
  store i32 %conv78, i32* %ret, align 4
  %74 = load i32, i32* %ret, align 4
  %idxprom79 = sext i32 %74 to i64
  %arrayidx80 = getelementptr inbounds [50 x i8], [50 x i8]* %xtimestr, i32 0, i64 %idxprom79
  store i8 0, i8* %arrayidx80, align 1
  %arraydecay81 = getelementptr inbounds [50 x i8], [50 x i8]* %xtimestr, i32 0, i32 0
  %call82 = call noalias i8* @g_locale_to_utf8(i8* %arraydecay81, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call82, i8** %utf8, align 8
  %tobool83 = icmp ne i8* %call82, null
  br i1 %tobool83, label %if.then.84, label %if.end.88

if.then.84:                                       ; preds = %if.then.75
  %arraydecay85 = getelementptr inbounds [50 x i8], [50 x i8]* %xtimestr, i32 0, i32 0
  %75 = load i8*, i8** %utf8, align 8
  %call86 = call i8* @strncpy(i8* %arraydecay85, i8* %75, i64 50) #5
  %arrayidx87 = getelementptr inbounds [50 x i8], [50 x i8]* %xtimestr, i32 0, i64 49
  store i8 0, i8* %arrayidx87, align 1
  %76 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %76)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.84, %if.then.75
  br label %if.end.92

if.else.89:                                       ; preds = %if.end.70
  %arraydecay90 = getelementptr inbounds [50 x i8], [50 x i8]* %xtimestr, i32 0, i32 0
  %call91 = call i8* @strcpy(i8* %arraydecay90, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.89, %if.end.88
  %call93 = call noalias i8* @g_malloc0_n(i64 1, i64 48)
  %77 = bitcast i8* %call93 to %struct.PInfo*
  store %struct.PInfo* %77, %struct.PInfo** %pinfo, align 8
  %78 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %78 to i64
  %79 = load i8**, i8*** %menu_strs, align 8
  %arrayidx95 = getelementptr inbounds i8*, i8** %79, i64 %idxprom94
  %80 = load i8*, i8** %arrayidx95, align 8
  %call96 = call noalias i8* @g_strdup(i8* %80)
  %81 = load %struct.PInfo*, %struct.PInfo** %pinfo, align 8
  %menu = getelementptr inbounds %struct.PInfo, %struct.PInfo* %81, i32 0, i32 0
  store i8* %call96, i8** %menu, align 8
  %82 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %82 to i64
  %83 = load i8**, i8*** %accel_strs, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %83, i64 %idxprom97
  %84 = load i8*, i8** %arrayidx98, align 8
  %call99 = call noalias i8* @g_strdup(i8* %84)
  %85 = load %struct.PInfo*, %struct.PInfo** %pinfo, align 8
  %accel = getelementptr inbounds %struct.PInfo, %struct.PInfo* %85, i32 0, i32 1
  store i8* %call99, i8** %accel, align 8
  %86 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %86 to i64
  %87 = load i8**, i8*** %prog_strs, align 8
  %arrayidx101 = getelementptr inbounds i8*, i8** %87, i64 %idxprom100
  %88 = load i8*, i8** %arrayidx101, align 8
  %call102 = call noalias i8* @g_strdup(i8* %88)
  %89 = load %struct.PInfo*, %struct.PInfo** %pinfo, align 8
  %prog = getelementptr inbounds %struct.PInfo, %struct.PInfo* %89, i32 0, i32 2
  store i8* %call102, i8** %prog, align 8
  %90 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %90 to i64
  %91 = load i8**, i8*** %types_strs, align 8
  %arrayidx104 = getelementptr inbounds i8*, i8** %91, i64 %idxprom103
  %92 = load i8*, i8** %arrayidx104, align 8
  %call105 = call noalias i8* @g_strdup(i8* %92)
  %93 = load %struct.PInfo*, %struct.PInfo** %pinfo, align 8
  %types = getelementptr inbounds %struct.PInfo, %struct.PInfo* %93, i32 0, i32 3
  store i8* %call105, i8** %types, align 8
  %94 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %94 to i64
  %95 = load i32*, i32** %time_ints, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %95, i64 %idxprom106
  %96 = load i32, i32* %arrayidx107, align 4
  %97 = load %struct.PInfo*, %struct.PInfo** %pinfo, align 8
  %instime = getelementptr inbounds %struct.PInfo, %struct.PInfo* %97, i32 0, i32 5
  store i32 %96, i32* %instime, align 4
  %98 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %98 to i64
  %99 = load i8**, i8*** %realname_strs, align 8
  %arrayidx109 = getelementptr inbounds i8*, i8** %99, i64 %idxprom108
  %100 = load i8*, i8** %arrayidx109, align 8
  %call110 = call noalias i8* @g_strdup(i8* %100)
  %101 = load %struct.PInfo*, %struct.PInfo** %pinfo, align 8
  %realname = getelementptr inbounds %struct.PInfo, %struct.PInfo* %101, i32 0, i32 4
  store i8* %call110, i8** %realname, align 8
  %102 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %102, %struct._GtkTreeIter* %iter)
  %103 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %104 = load i8*, i8** %name, align 8
  %105 = load i64, i64* %tx, align 8
  %arraydecay111 = getelementptr inbounds [50 x i8], [50 x i8]* %xtimestr, i32 0, i32 0
  %106 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %106 to i64
  %107 = load i8**, i8*** %menu_strs, align 8
  %arrayidx113 = getelementptr inbounds i8*, i8** %107, i64 %idxprom112
  %108 = load i8*, i8** %arrayidx113, align 8
  %109 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %109 to i64
  %110 = load i8**, i8*** %types_strs, align 8
  %arrayidx115 = getelementptr inbounds i8*, i8** %110, i64 %idxprom114
  %111 = load i8*, i8** %arrayidx115, align 8
  %112 = load %struct.PInfo*, %struct.PInfo** %pinfo, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %103, %struct._GtkTreeIter* %iter, i32 0, i8* %104, i32 1, i64 %105, i32 2, i8* %arraydecay111, i32 3, i8* %108, i32 4, i8* %111, i32 5, %struct.PInfo* %112, i32 -1)
  %113 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %114 = load i8*, i8** %name, align 8
  %115 = load i64, i64* %tx, align 8
  %arraydecay116 = getelementptr inbounds [50 x i8], [50 x i8]* %xtimestr, i32 0, i32 0
  %116 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %116 to i64
  %117 = load i8**, i8*** %menu_strs, align 8
  %arrayidx118 = getelementptr inbounds i8*, i8** %117, i64 %idxprom117
  %118 = load i8*, i8** %arrayidx118, align 8
  %119 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %119 to i64
  %120 = load i8**, i8*** %types_strs, align 8
  %arrayidx120 = getelementptr inbounds i8*, i8** %120, i64 %idxprom119
  %121 = load i8*, i8** %arrayidx120, align 8
  %122 = load %struct.PInfo*, %struct.PInfo** %pinfo, align 8
  call void @insert_into_tree_view(%struct.PluginBrowser* %113, i8* %114, i64 %115, i8* %arraydecay116, i8* %118, i8* %121, %struct.PInfo* %122)
  br label %for.inc

for.inc:                                          ; preds = %if.end.92
  %123 = load i32, i32* %i, align 4
  %inc = add nsw i32 %123, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %124 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %list_view121 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %124, i32 0, i32 2
  %125 = load %struct._GtkTreeView*, %struct._GtkTreeView** %list_view121, align 8
  %126 = bitcast %struct._GtkTreeView* %125 to %struct._GTypeInstance*
  %call122 = call i64 @gtk_tree_view_get_type() #6
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call122)
  %127 = bitcast %struct._GTypeInstance* %call123 to %struct._GtkTreeView*
  call void @gtk_tree_view_columns_autosize(%struct._GtkTreeView* %127)
  %128 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %tree_view124 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %128, i32 0, i32 3
  %129 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view124, align 8
  %130 = bitcast %struct._GtkTreeView* %129 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_tree_view_get_type() #6
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call125)
  %131 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkTreeView*
  call void @gtk_tree_view_columns_autosize(%struct._GtkTreeView* %131)
  %132 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %133 = bitcast %struct._GtkListStore* %132 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_tree_sortable_get_type() #6
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call127)
  %134 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkTreeSortable*
  call void @gtk_tree_sortable_set_sort_column_id(%struct._GtkTreeSortable* %134, i32 0, i32 0)
  %135 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree_store, align 8
  %136 = bitcast %struct._GtkTreeStore* %135 to %struct._GTypeInstance*
  %call129 = call i64 @gtk_tree_sortable_get_type() #6
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call129)
  %137 = bitcast %struct._GTypeInstance* %call130 to %struct._GtkTreeSortable*
  call void @gtk_tree_sortable_set_sort_column_id(%struct._GtkTreeSortable* %137, i32 0, i32 0)
  %138 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %list_view131 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %138, i32 0, i32 2
  %139 = load %struct._GtkTreeView*, %struct._GtkTreeView** %list_view131, align 8
  %140 = bitcast %struct._GtkTreeView* %139 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_tree_view_get_type() #6
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call132)
  %141 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkTreeView*
  %call134 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %141)
  store %struct._GtkTreeSelection* %call134, %struct._GtkTreeSelection** %sel, align 8
  %142 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %143 = bitcast %struct._GtkListStore* %142 to %struct._GTypeInstance*
  %call135 = call i64 @gtk_tree_model_get_type() #6
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call135)
  %144 = bitcast %struct._GTypeInstance* %call136 to %struct._GtkTreeModel*
  %call137 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %144, %struct._GtkTreeIter* %iter)
  %145 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %145, %struct._GtkTreeIter* %iter)
  br label %if.end.143

if.else.138:                                      ; preds = %if.end.18
  %146 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %browser139 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %146, i32 0, i32 1
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %browser139, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call140 = call i64 @gimp_browser_get_type() #6
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call140)
  %149 = bitcast %struct._GTypeInstance* %call141 to %struct._GimpBrowser*
  %call142 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0)) #5
  call void @gimp_browser_show_message(%struct._GimpBrowser* %149, i8* %call142)
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.138, %for.end
  %150 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %151 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %150, i32 %151)
  ret void
}

declare %struct._GtkWidget* @gtk_notebook_new() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_browser_get_type() #3

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #3

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #3

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new_with_attributes(i8*, %struct._GtkCellRenderer*, ...) #1

declare void @gtk_tree_view_column_set_sort_column_id(%struct._GtkTreeViewColumn*, i32) #1

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #3

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @browser_list_selection_changed(%struct._GtkTreeSelection* %selection, %struct.PluginBrowser* %browser) #0 {
entry:
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %browser.addr = alloca %struct.PluginBrowser*, align 8
  %pinfo = alloca %struct.PInfo*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %mpath = alloca i8*, align 8
  %tree_selection = alloca %struct._GtkTreeSelection*, align 8
  %tree_path = alloca %struct._GtkTreePath*, align 8
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  store %struct.PluginBrowser* %browser, %struct.PluginBrowser** %browser.addr, align 8
  store %struct.PInfo* null, %struct.PInfo** %pinfo, align 8
  store i8* null, i8** %mpath, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %cmp = icmp ne %struct.PluginBrowser* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.browser_list_selection_changed, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %1, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %iter, i32 5, %struct.PInfo** %pinfo, i32 3, i8** %mpath, i32 -1)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %do.end
  %3 = load %struct.PInfo*, %struct.PInfo** %pinfo, align 8
  %tobool3 = icmp ne %struct.PInfo* %3, null
  br i1 %tobool3, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end.2
  %4 = load i8*, i8** %mpath, align 8
  %tobool4 = icmp ne i8* %4, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %lor.lhs.false, %if.end.2
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %5 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %tree_view = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %5, i32 0, i32 3
  %6 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view, align 8
  %call7 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %6)
  store %struct._GtkTreeModel* %call7, %struct._GtkTreeModel** %model, align 8
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %8 = load i8*, i8** %mpath, align 8
  %call8 = call i32 @find_existing_mpath(%struct._GtkTreeModel* %7, i8* %8, %struct._GtkTreeIter* %iter)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.18

if.then.10:                                       ; preds = %if.end.6
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call11 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call11, %struct._GtkTreePath** %tree_path, align 8
  %10 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %tree_view12 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %10, i32 0, i32 3
  %11 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view12, align 8
  %12 = load %struct._GtkTreePath*, %struct._GtkTreePath** %tree_path, align 8
  call void @gtk_tree_view_expand_to_path(%struct._GtkTreeView* %11, %struct._GtkTreePath* %12)
  %13 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %tree_view13 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %13, i32 0, i32 3
  %14 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view13, align 8
  %call14 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %14)
  store %struct._GtkTreeSelection* %call14, %struct._GtkTreeSelection** %tree_selection, align 8
  %15 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %tree_selection, align 8
  %16 = bitcast %struct._GtkTreeSelection* %15 to i8*
  %17 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %18 = bitcast %struct.PluginBrowser* %17 to i8*
  %call15 = call i32 @g_signal_handlers_block_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTreeSelection*, %struct.PluginBrowser*)* @browser_tree_selection_changed to i8*), i8* %18)
  %19 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %tree_selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %19, %struct._GtkTreeIter* %iter)
  %20 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %tree_selection, align 8
  %21 = bitcast %struct._GtkTreeSelection* %20 to i8*
  %22 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %23 = bitcast %struct.PluginBrowser* %22 to i8*
  %call16 = call i32 @g_signal_handlers_unblock_matched(i8* %21, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTreeSelection*, %struct.PluginBrowser*)* @browser_tree_selection_changed to i8*), i8* %23)
  %24 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %tree_view17 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %24, i32 0, i32 3
  %25 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view17, align 8
  %26 = load %struct._GtkTreePath*, %struct._GtkTreePath** %tree_path, align 8
  call void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView* %25, %struct._GtkTreePath* %26, %struct._GtkTreeViewColumn* null, i32 1, float 5.000000e-01, float 0.000000e+00)
  br label %if.end.19

if.else.18:                                       ; preds = %if.end.6
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.10
  %27 = load i8*, i8** %mpath, align 8
  call void @g_free(i8* %27)
  %28 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %29 = load %struct.PInfo*, %struct.PInfo** %pinfo, align 8
  call void @browser_show_plugin(%struct.PluginBrowser* %28, %struct.PInfo* %29)
  br label %return

return:                                           ; preds = %if.end.19, %if.then.5, %if.else
  ret void
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkTreeStore* @gtk_tree_store_new(i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @browser_tree_selection_changed(%struct._GtkTreeSelection* %selection, %struct.PluginBrowser* %browser) #0 {
entry:
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %browser.addr = alloca %struct.PluginBrowser*, align 8
  %pinfo = alloca %struct.PInfo*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %mpath = alloca i8*, align 8
  %valid = alloca i32, align 4
  %found = alloca i32, align 4
  %picked_mpath = alloca i8*, align 8
  %list_selection = alloca %struct._GtkTreeSelection*, align 8
  %tree_path = alloca %struct._GtkTreePath*, align 8
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  store %struct.PluginBrowser* %browser, %struct.PluginBrowser** %browser.addr, align 8
  store %struct.PInfo* null, %struct.PInfo** %pinfo, align 8
  store i8* null, i8** %mpath, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %cmp = icmp ne %struct.PluginBrowser* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.browser_tree_selection_changed, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %1, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %iter, i32 5, %struct.PInfo** %pinfo, i32 4, i8** %mpath, i32 -1)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %do.end
  %3 = load %struct.PInfo*, %struct.PInfo** %pinfo, align 8
  %tobool3 = icmp ne %struct.PInfo* %3, null
  br i1 %tobool3, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end.2
  %4 = load i8*, i8** %mpath, align 8
  %tobool4 = icmp ne i8* %4, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %lor.lhs.false, %if.end.2
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %5 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %list_view = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %5, i32 0, i32 2
  %6 = load %struct._GtkTreeView*, %struct._GtkTreeView** %list_view, align 8
  %call7 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %6)
  store %struct._GtkTreeModel* %call7, %struct._GtkTreeModel** %model, align 8
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call8 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter)
  store i32 %call8, i32* %valid, align 4
  store i32 0, i32* %found, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %if.end.6
  %8 = load i32, i32* %valid, align 4
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter, i32 3, i8** %picked_mpath, i32 -1)
  %10 = load i8*, i8** %picked_mpath, align 8
  %tobool10 = icmp ne i8* %10, null
  br i1 %tobool10, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %while.body
  %11 = load i8*, i8** %mpath, align 8
  %12 = load i8*, i8** %picked_mpath, align 8
  %call11 = call i32 @strcmp(i8* %11, i8* %12) #7
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true
  store i32 1, i32* %found, align 4
  br label %while.end

if.end.14:                                        ; preds = %land.lhs.true, %while.body
  %13 = load i8*, i8** %picked_mpath, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call15 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %14, %struct._GtkTreeIter* %iter)
  store i32 %call15, i32* %valid, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.13, %while.cond
  %15 = load i8*, i8** %mpath, align 8
  call void @g_free(i8* %15)
  %16 = load i32, i32* %found, align 4
  %tobool16 = icmp ne i32 %16, 0
  br i1 %tobool16, label %if.then.17, label %if.else.24

if.then.17:                                       ; preds = %while.end
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call18 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call18, %struct._GtkTreePath** %tree_path, align 8
  %18 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %list_view19 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %18, i32 0, i32 2
  %19 = load %struct._GtkTreeView*, %struct._GtkTreeView** %list_view19, align 8
  %call20 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %19)
  store %struct._GtkTreeSelection* %call20, %struct._GtkTreeSelection** %list_selection, align 8
  %20 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %list_selection, align 8
  %21 = bitcast %struct._GtkTreeSelection* %20 to i8*
  %22 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %23 = bitcast %struct.PluginBrowser* %22 to i8*
  %call21 = call i32 @g_signal_handlers_block_matched(i8* %21, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTreeSelection*, %struct.PluginBrowser*)* @browser_list_selection_changed to i8*), i8* %23)
  %24 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %list_selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %24, %struct._GtkTreeIter* %iter)
  %25 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %list_selection, align 8
  %26 = bitcast %struct._GtkTreeSelection* %25 to i8*
  %27 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %28 = bitcast %struct.PluginBrowser* %27 to i8*
  %call22 = call i32 @g_signal_handlers_unblock_matched(i8* %26, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTreeSelection*, %struct.PluginBrowser*)* @browser_list_selection_changed to i8*), i8* %28)
  %29 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %list_view23 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %29, i32 0, i32 2
  %30 = load %struct._GtkTreeView*, %struct._GtkTreeView** %list_view23, align 8
  %31 = load %struct._GtkTreePath*, %struct._GtkTreePath** %tree_path, align 8
  call void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView* %30, %struct._GtkTreePath* %31, %struct._GtkTreeViewColumn* null, i32 1, float 5.000000e-01, float 0.000000e+00)
  br label %if.end.25

if.else.24:                                       ; preds = %while.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.17
  %32 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %33 = load %struct.PInfo*, %struct.PInfo** %pinfo, align 8
  call void @browser_show_plugin(%struct.PluginBrowser* %32, %struct.PInfo* %33)
  br label %return

return:                                           ; preds = %if.end.25, %if.then.5, %if.else
  ret void
}

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_main_quit() #1

declare void @gimp_browser_show_message(%struct._GimpBrowser*, i8*) #1

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #2

declare noalias i8* @g_strdup(i8*) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @g_free(i8*) #1

declare %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #3

declare void @gtk_list_store_clear(%struct._GtkListStore*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_store_get_type() #3

declare void @gtk_tree_store_clear(%struct._GtkTreeStore*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #2

declare noalias i8* @g_locale_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @insert_into_tree_view(%struct.PluginBrowser* %browser, i8* %name, i64 %xtime, i8* %xtimestr, i8* %menu_str, i8* %types_str, %struct.PInfo* %pinfo) #0 {
entry:
  %browser.addr = alloca %struct.PluginBrowser*, align 8
  %name.addr = alloca i8*, align 8
  %xtime.addr = alloca i64, align 8
  %xtimestr.addr = alloca i8*, align 8
  %menu_str.addr = alloca i8*, align 8
  %types_str.addr = alloca i8*, align 8
  %pinfo.addr = alloca %struct.PInfo*, align 8
  %str_ptr = alloca i8*, align 8
  %tmp_ptr = alloca i8*, align 8
  %parent = alloca %struct._GtkTreeIter, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %tree_store = alloca %struct._GtkTreeStore*, align 8
  store %struct.PluginBrowser* %browser, %struct.PluginBrowser** %browser.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %xtime, i64* %xtime.addr, align 8
  store i8* %xtimestr, i8** %xtimestr.addr, align 8
  store i8* %menu_str, i8** %menu_str.addr, align 8
  store i8* %types_str, i8** %types_str.addr, align 8
  store %struct.PInfo* %pinfo, %struct.PInfo** %pinfo.addr, align 8
  %0 = load i8*, i8** %menu_str.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %0)
  store i8* %call, i8** %tmp_ptr, align 8
  %1 = load i8*, i8** %tmp_ptr, align 8
  %call1 = call i8* @strrchr(i8* %1, i32 47) #7
  store i8* %call1, i8** %str_ptr, align 8
  %2 = load i8*, i8** %str_ptr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %tmp_ptr, align 8
  call void @g_free(i8* %3)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %str_ptr, align 8
  store i8 0, i8* %4, align 1
  %5 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %6 = load i8*, i8** %tmp_ptr, align 8
  call void @get_parent(%struct.PluginBrowser* %5, i8* %6, %struct._GtkTreeIter* %parent)
  %7 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %tree_view = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %7, i32 0, i32 3
  %8 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view, align 8
  %call2 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %8)
  %9 = bitcast %struct._GtkTreeModel* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_store_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeStore*
  store %struct._GtkTreeStore* %10, %struct._GtkTreeStore** %tree_store, align 8
  %11 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree_store, align 8
  call void @gtk_tree_store_append(%struct._GtkTreeStore* %11, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* %parent)
  %12 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree_store, align 8
  %13 = load i8*, i8** %menu_str.addr, align 8
  %14 = load i8*, i8** %name.addr, align 8
  %15 = load i8*, i8** %types_str.addr, align 8
  %16 = load i64, i64* %xtime.addr, align 8
  %17 = load i8*, i8** %xtimestr.addr, align 8
  %18 = load %struct.PInfo*, %struct.PInfo** %pinfo.addr, align 8
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %12, %struct._GtkTreeIter* %iter, i32 4, i8* %13, i32 0, i8* %14, i32 3, i8* %15, i32 1, i64 %16, i32 2, i8* %17, i32 5, %struct.PInfo* %18, i32 -1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gtk_tree_view_columns_autosize(%struct._GtkTreeView*) #1

declare void @gtk_tree_sortable_set_sort_column_id(%struct._GtkTreeSortable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_sortable_get_type() #3

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @get_parent(%struct.PluginBrowser* %browser, i8* %mpath, %struct._GtkTreeIter* %parent) #0 {
entry:
  %browser.addr = alloca %struct.PluginBrowser*, align 8
  %mpath.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkTreeIter*, align 8
  %last_parent = alloca %struct._GtkTreeIter, align 8
  %tmp_ptr = alloca i8*, align 8
  %str_ptr = alloca i8*, align 8
  %tree_store = alloca %struct._GtkTreeStore*, align 8
  %leaf_ptr = alloca i8*, align 8
  store %struct.PluginBrowser* %browser, %struct.PluginBrowser** %browser.addr, align 8
  store i8* %mpath, i8** %mpath.addr, align 8
  store %struct._GtkTreeIter* %parent, %struct._GtkTreeIter** %parent.addr, align 8
  %0 = load i8*, i8** %mpath.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.21

if.end:                                           ; preds = %entry
  %1 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %tree_view = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %1, i32 0, i32 3
  %2 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view, align 8
  %call = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %2)
  %3 = bitcast %struct._GtkTreeModel* %call to %struct._GTypeInstance*
  %call1 = call i64 @gtk_tree_store_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTreeStore*
  store %struct._GtkTreeStore* %4, %struct._GtkTreeStore** %tree_store, align 8
  %5 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree_store, align 8
  %6 = bitcast %struct._GtkTreeStore* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_model_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeModel*
  %8 = load i8*, i8** %mpath.addr, align 8
  %9 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %parent.addr, align 8
  %call5 = call i32 @find_existing_mpath(%struct._GtkTreeModel* %7, i8* %8, %struct._GtkTreeIter* %9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %if.end.21

if.end.8:                                         ; preds = %if.end
  %10 = load i8*, i8** %mpath.addr, align 8
  %call9 = call noalias i8* @g_strdup(i8* %10)
  store i8* %call9, i8** %tmp_ptr, align 8
  %11 = load i8*, i8** %mpath.addr, align 8
  %call10 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0)) #7
  store i8* %call10, i8** %str_ptr, align 8
  %12 = load i8*, i8** %str_ptr, align 8
  %tobool11 = icmp ne i8* %12, null
  br i1 %tobool11, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.8
  %13 = load i8*, i8** %str_ptr, align 8
  %14 = load i8*, i8** %mpath.addr, align 8
  %15 = load i8*, i8** %mpath.addr, align 8
  %call12 = call i64 @strlen(i8* %15) #7
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %call12
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr, i64 -3
  %cmp = icmp eq i8* %13, %add.ptr13
  br i1 %cmp, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  %16 = load i8*, i8** %str_ptr, align 8
  store i8 0, i8* %16, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true, %if.end.8
  %17 = load i8*, i8** %tmp_ptr, align 8
  %call16 = call i8* @strrchr(i8* %17, i32 47) #7
  store i8* %call16, i8** %str_ptr, align 8
  %18 = load i8*, i8** %str_ptr, align 8
  %cmp17 = icmp eq i8* %18, null
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.15
  %19 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree_store, align 8
  %20 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %parent.addr, align 8
  call void @gtk_tree_store_append(%struct._GtkTreeStore* %19, %struct._GtkTreeIter* %20, %struct._GtkTreeIter* null)
  %21 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree_store, align 8
  %22 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %parent.addr, align 8
  %23 = load i8*, i8** %mpath.addr, align 8
  %24 = load i8*, i8** %mpath.addr, align 8
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %21, %struct._GtkTreeIter* %22, i32 4, i8* %23, i32 0, i8* %24, i32 -1)
  br label %if.end.21

if.else:                                          ; preds = %if.end.15
  %25 = load i8*, i8** %str_ptr, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %25, i64 1
  %call20 = call noalias i8* @g_strdup(i8* %add.ptr19)
  store i8* %call20, i8** %leaf_ptr, align 8
  %26 = load i8*, i8** %str_ptr, align 8
  store i8 0, i8* %26, align 1
  %27 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %28 = load i8*, i8** %tmp_ptr, align 8
  call void @get_parent(%struct.PluginBrowser* %27, i8* %28, %struct._GtkTreeIter* %last_parent)
  %29 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree_store, align 8
  %30 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %parent.addr, align 8
  call void @gtk_tree_store_append(%struct._GtkTreeStore* %29, %struct._GtkTreeIter* %30, %struct._GtkTreeIter* %last_parent)
  %31 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %tree_store, align 8
  %32 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %parent.addr, align 8
  %33 = load i8*, i8** %mpath.addr, align 8
  %34 = load i8*, i8** %leaf_ptr, align 8
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %31, %struct._GtkTreeIter* %32, i32 4, i8* %33, i32 0, i8* %34, i32 -1)
  %35 = load i8*, i8** %leaf_ptr, align 8
  call void @g_free(i8* %35)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then, %if.then.7, %if.else, %if.then.18
  ret void
}

declare void @gtk_tree_store_append(%struct._GtkTreeStore*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_store_set(%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_existing_mpath(%struct._GtkTreeModel* %model, i8* %mpath, %struct._GtkTreeIter* %return_iter) #0 {
entry:
  %retval = alloca i32, align 4
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %mpath.addr = alloca i8*, align 8
  %return_iter.addr = alloca %struct._GtkTreeIter*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %parent = alloca %struct._GtkTreeIter, align 8
  %found = alloca i32, align 4
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store i8* %mpath, i8** %mpath.addr, align 8
  store %struct._GtkTreeIter* %return_iter, %struct._GtkTreeIter** %return_iter.addr, align 8
  %call = call %struct._GtkTreePath* @gtk_tree_path_new_first()
  store %struct._GtkTreePath* %call, %struct._GtkTreePath** %path, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %1 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call1 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %parent, %struct._GtkTreePath* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %2)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %4 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %5 = load i8*, i8** %mpath.addr, align 8
  %6 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %return_iter.addr, align 8
  %call2 = call i32 @find_existing_mpath_helper(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %parent, %struct._GtkTreePath* %4, i8* %5, %struct._GtkTreeIter* %6)
  store i32 %call2, i32* %found, align 4
  %7 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %7)
  %8 = load i32, i32* %found, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare %struct._GtkTreePath* @gtk_tree_path_new_first() #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_existing_mpath_helper(%struct._GtkTreeModel* %model, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %path, i8* %mpath, %struct._GtkTreeIter* %return_iter) #0 {
entry:
  %retval = alloca i32, align 4
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %mpath.addr = alloca i8*, align 8
  %return_iter.addr = alloca %struct._GtkTreeIter*, align 8
  %child = alloca %struct._GtkTreeIter, align 8
  %picked_mpath = alloca i8*, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store i8* %mpath, i8** %mpath.addr, align 8
  store %struct._GtkTreeIter* %return_iter, %struct._GtkTreeIter** %return_iter.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1, i32 4, i8** %picked_mpath, i32 -1)
  %2 = load i8*, i8** %mpath.addr, align 8
  %3 = load i8*, i8** %picked_mpath, align 8
  %call = call i32 @strcmp(i8* %2, i8* %3) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %4 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %return_iter.addr, align 8
  %5 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %6 = bitcast %struct._GtkTreeIter* %4 to i8*
  %7 = bitcast %struct._GtkTreeIter* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = load i8*, i8** %picked_mpath, align 8
  call void @g_free(i8* %8)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %10 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call1 = call i32 @gtk_tree_model_iter_children(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %child, %struct._GtkTreeIter* %10)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %if.end
  %11 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  call void @gtk_tree_path_down(%struct._GtkTreePath* %11)
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %13 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  %14 = load i8*, i8** %mpath.addr, align 8
  %15 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %return_iter.addr, align 8
  %call4 = call i32 @find_existing_mpath_helper(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %child, %struct._GtkTreePath* %13, i8* %14, %struct._GtkTreeIter* %15)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  %16 = load i8*, i8** %picked_mpath, align 8
  call void @g_free(i8* %16)
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  %17 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  %call8 = call i32 @gtk_tree_path_up(%struct._GtkTreePath* %17)
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.7, %if.end
  %18 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  call void @gtk_tree_path_next(%struct._GtkTreePath* %18)
  %19 = load i8*, i8** %picked_mpath, align 8
  call void @g_free(i8* %19)
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  %20 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %21 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call10 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %20, %struct._GtkTreeIter* %21)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.6, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @gtk_tree_model_iter_children(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_path_down(%struct._GtkTreePath*) #1

declare i32 @gtk_tree_path_up(%struct._GtkTreePath*) #1

declare void @gtk_tree_path_next(%struct._GtkTreePath*) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_view_expand_to_path(%struct._GtkTreeView*, %struct._GtkTreePath*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32, float, float) #1

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
define internal void @browser_show_plugin(%struct.PluginBrowser* %browser, %struct.PInfo* %pinfo) #0 {
entry:
  %browser.addr = alloca %struct.PluginBrowser*, align 8
  %pinfo.addr = alloca %struct.PInfo*, align 8
  %blurb = alloca i8*, align 8
  %help = alloca i8*, align 8
  %author = alloca i8*, align 8
  %copyright = alloca i8*, align 8
  %date = alloca i8*, align 8
  %type = alloca i32, align 4
  %n_params = alloca i32, align 4
  %n_return_vals = alloca i32, align 4
  %params = alloca %struct._GimpParamDef*, align 8
  %return_vals = alloca %struct._GimpParamDef*, align 8
  store %struct.PluginBrowser* %browser, %struct.PluginBrowser** %browser.addr, align 8
  store %struct.PInfo* %pinfo, %struct.PInfo** %pinfo.addr, align 8
  store i8* null, i8** %blurb, align 8
  store i8* null, i8** %help, align 8
  store i8* null, i8** %author, align 8
  store i8* null, i8** %copyright, align 8
  store i8* null, i8** %date, align 8
  store i32 0, i32* %type, align 4
  store i32 0, i32* %n_params, align 4
  store i32 0, i32* %n_return_vals, align 4
  store %struct._GimpParamDef* null, %struct._GimpParamDef** %params, align 8
  store %struct._GimpParamDef* null, %struct._GimpParamDef** %return_vals, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %cmp = icmp ne %struct.PluginBrowser* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.browser_show_plugin, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct.PInfo*, %struct.PInfo** %pinfo.addr, align 8
  %cmp2 = icmp ne %struct.PInfo* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.browser_show_plugin, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct.PInfo*, %struct.PInfo** %pinfo.addr, align 8
  %realname = getelementptr inbounds %struct.PInfo, %struct.PInfo* %2, i32 0, i32 4
  %3 = load i8*, i8** %realname, align 8
  %call = call i32 @gimp_procedural_db_proc_info(i8* %3, i8** %blurb, i8** %help, i8** %author, i8** %copyright, i8** %date, i32* %type, i32* %n_params, i32* %n_return_vals, %struct._GimpParamDef** %params, %struct._GimpParamDef** %return_vals)
  %4 = load %struct.PluginBrowser*, %struct.PluginBrowser** %browser.addr, align 8
  %browser7 = getelementptr inbounds %struct.PluginBrowser, %struct.PluginBrowser* %4, i32 0, i32 1
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %browser7, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_browser_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call8)
  %7 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpBrowser*
  %8 = load %struct.PInfo*, %struct.PInfo** %pinfo.addr, align 8
  %realname10 = getelementptr inbounds %struct.PInfo, %struct.PInfo* %8, i32 0, i32 4
  %9 = load i8*, i8** %realname10, align 8
  %10 = load %struct.PInfo*, %struct.PInfo** %pinfo.addr, align 8
  %menu = getelementptr inbounds %struct.PInfo, %struct.PInfo* %10, i32 0, i32 0
  %11 = load i8*, i8** %menu, align 8
  %12 = load i8*, i8** %blurb, align 8
  %13 = load i8*, i8** %help, align 8
  %14 = load i8*, i8** %author, align 8
  %15 = load i8*, i8** %copyright, align 8
  %16 = load i8*, i8** %date, align 8
  %17 = load i32, i32* %type, align 4
  %18 = load i32, i32* %n_params, align 4
  %19 = load i32, i32* %n_return_vals, align 4
  %20 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params, align 8
  %21 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals, align 8
  %call11 = call %struct._GtkWidget* @gimp_proc_view_new(i8* %9, i8* %11, i8* %12, i8* %13, i8* %14, i8* %15, i8* %16, i32 %17, i32 %18, i32 %19, %struct._GimpParamDef* %20, %struct._GimpParamDef* %21)
  call void @gimp_browser_set_widget(%struct._GimpBrowser* %7, %struct._GtkWidget* %call11)
  %22 = load i8*, i8** %blurb, align 8
  call void @g_free(i8* %22)
  %23 = load i8*, i8** %help, align 8
  call void @g_free(i8* %23)
  %24 = load i8*, i8** %author, align 8
  call void @g_free(i8* %24)
  %25 = load i8*, i8** %copyright, align 8
  call void @g_free(i8* %25)
  %26 = load i8*, i8** %date, align 8
  call void @g_free(i8* %26)
  %27 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params, align 8
  %28 = load i32, i32* %n_params, align 4
  call void @gimp_destroy_paramdefs(%struct._GimpParamDef* %27, i32 %28)
  %29 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals, align 8
  %30 = load i32, i32* %n_return_vals, align 4
  call void @gimp_destroy_paramdefs(%struct._GimpParamDef* %29, i32 %30)
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @gimp_procedural_db_proc_info(i8*, i8**, i8**, i8**, i8**, i8**, i32*, i32*, i32*, %struct._GimpParamDef**, %struct._GimpParamDef**) #1

declare void @gimp_browser_set_widget(%struct._GimpBrowser*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_proc_view_new(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare void @gimp_destroy_paramdefs(%struct._GimpParamDef*, i32) #1

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
