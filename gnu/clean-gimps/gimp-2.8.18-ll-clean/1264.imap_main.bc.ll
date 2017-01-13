; ModuleID = './plug-ins/imagemap/imap_main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
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
%struct.MRU_t = type { %struct._GList*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.MapInfo_t = type { i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.PreferencesData_t = type { i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, %struct.ColorSelData_t }
%struct.ColorSelData_t = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkColor, %struct._GdkColor, %struct._GdkColor, %struct._GdkColor }
%struct.Preview_t = type { %struct._GimpDrawable*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32, i32, %struct._GimpPixelRgn, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.StatusBar_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32 }
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct.Selection_t = type { %struct._GtkListStore*, %struct._GtkTreeSelection*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct.ObjectList_t*, i32, i32, i32, i32, i32, %struct.Command_t* ()*, %struct.Command_t* ()*, %struct.Command_t* ()*, %struct.Command_t* ()* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandClass_t = type { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, void (%struct.Object_t*)*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
%struct.AreaInfoDialog_t = type { %struct.DefaultDialog_t*, %struct.Object_t*, %struct.Object_t*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8* }
%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GdkPoint = type { i32, i32 }
%struct._GtkRadioAction = type { %struct._GtkToggleAction, %struct._GtkRadioActionPrivate* }
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GtkToggleActionPrivate = type opaque
%struct._GtkRadioActionPrivate = type opaque
%struct.ObjectFactory_t = type { %struct.Object_t*, i32 (%struct.Object_t*, i32, i32)*, i32 (%struct._GdkEventButton*, %struct.Object_t*)*, %struct.Object_t* (i32, i32)*, void (%struct.Object_t*, i32, i32, i32)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
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
%struct.Menu_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, [8 x %struct._GtkWidget*], %struct._GtkWidget*, %struct._GtkWidget*, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GtkMessageDialog = type { %struct._GtkDialog, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@_dlg = internal global %struct._GtkWidget* null, align 8
@_mru = internal global %struct.MRU_t* null, align 8
@_map_info = internal global %struct.MapInfo_t zeroinitializer, align 8
@_preferences = internal global %struct.PreferencesData_t { i32 2, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, double 1.000000e+01, i32 4, i32 0, %struct.ColorSelData_t zeroinitializer }, align 8
@_image_width = internal global i32 0, align 4
@_image_height = internal global i32 0, align 4
@_preview = internal global %struct.Preview_t* null, align 8
@_zoom_factor = internal global i32 1, align 4
@_statusbar = internal global %struct.StatusBar_t* null, align 8
@_image_name = internal global i8* null, align 8
@_filename = internal global i8* null, align 8
@_shapes = internal global %struct.ObjectList_t* null, align 8
@_show_url = internal global i32 1, align 4
@_selection = internal global %struct.Selection_t* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"File \22%s\22 saved.\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Couldn't save file:\00", align 1
@load.tmp_filename = internal global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"plug-in-imagemap\00", align 1
@_drawable = internal global %struct._GimpDrawable* null, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"The run mode { RUN-INTERACTIVE (0) }\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@query.return_vals = internal global %struct._GimpParamDef* null, align 8
@query.nreturn_vals = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"Create a clickable imagemap\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Maurits Rijk\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"1998-2005\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"_Image Map...\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"<Image>/Filters/Web\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"imagemap\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"key-press-event\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"key-release-event\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"enter-notify-event\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"leave-notify-event\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@run_flag = internal global i32 0, align 4
@_timeout = internal global i32 0, align 4
@_dx = internal global i32 0, align 4
@_dy = internal global i32 0, align 4
@_keyval = internal global i32 0, align 4
@preview_move.prev_obj = internal global %struct.Object_t* null, align 8
@.str.28 = private unnamed_addr constant [8 x i8] c"URL: %s\00", align 1
@_cursor = internal global i32 132, align 4
@_button_press_func = internal global i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* null, align 8
@_button_press_param = internal global i8* null, align 8
@.str.29 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Some data has been changed!\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"Do you really want to discard your changes?\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"#$-:Image map file created by GIMP Image Map plug-in\0A\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"#$-:GIMP Image Map plug-in by Maurits Rijk\0A\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"#$-:Please do not edit lines starting with \22#$\22\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"#$VERSION:2.3\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"#$TITLE:%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"#$AUTHOR:%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"#$FORMAT:ncsa\0A\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"#$DESCRIPTION:%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"default %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [52 x i8] c"-:Image map file created by GIMP Image Map plug-in\0A\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"-:GIMP Image Map plug-in by Maurits Rijk\0A\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"-:Please do not edit lines starting with \22#$\22\0A\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"VERSION:2.3\0A\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"TITLE:%s\0A\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"AUTHOR:%s\0A\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"FORMAT:cern\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"DESCRIPTION:%s\0A\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"rect (4096,4096) (4096,4096) imap:#$\00", align 1
@.str.51 = private unnamed_addr constant [66 x i8] c"<img src=\22%s\22 width=\22%d\22 height=\22%d\22 border=\220\22 usemap=\22#%s\22 />\0A\0A\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"<map name=\22%s\22>\0A\00", align 1
@.str.53 = private unnamed_addr constant [63 x i8] c"<!-- #$-:Image map file created by GIMP Image Map plug-in -->\0A\00", align 1
@.str.54 = private unnamed_addr constant [53 x i8] c"<!-- #$-:GIMP Image Map plug-in by Maurits Rijk -->\0A\00", align 1
@.str.55 = private unnamed_addr constant [58 x i8] c"<!-- #$-:Please do not edit lines starting with \22#$\22 -->\0A\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"<!-- #$VERSION:2.3 -->\0A\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"<!-- #$AUTHOR:%s -->\0A\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"<!-- #$DESCRIPTION:%s -->\0A\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"<area shape=\22default\22 href=\22%s\22 />\0A\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"</map>\0A\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"<Untitled>\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"%s - Image Map\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"Couldn't read file:\00", align 1
@.str.64 = private unnamed_addr constant [48 x i8] c"<span weight=\22bold\22 size=\22larger\22>%s</span>\0A\0A%s\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"Image size has changed.\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"Resize area's?\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %0 = load i32, i32* @query.nreturn_vals, align 4
  %1 = load %struct._GimpParamDef*, %struct._GimpParamDef** @query.return_vals, align 8
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 3, i32 %0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* %1)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %n_params, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %n_params.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call4 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call4, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  store %struct._GimpDrawable* %4, %struct._GimpDrawable** @_drawable, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data6 to i32*
  %6 = load i32, i32* %d_image, align 4
  %call7 = call i8* @gimp_image_get_name(i32 %6)
  store i8* %call7, i8** @_image_name, align 8
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx8, i32 0, i32 1
  %d_image10 = bitcast %union._GimpParamData* %data9 to i32*
  %8 = load i32, i32* %d_image10, align 4
  %call11 = call i32 @gimp_image_width(i32 %8)
  store i32 %call11, i32* @_image_width, align 4
  %9 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 1
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_image14 = bitcast %union._GimpParamData* %data13 to i32*
  %10 = load i32, i32* %d_image14, align 4
  %call15 = call i32 @gimp_image_height(i32 %10)
  store i32 %call15, i32* @_image_height, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id, align 4
  %call16 = call i32 @gimp_drawable_is_rgb(i32 %12)
  store i32 %call16, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 8), align 4
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 0
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data18 to i32*
  %14 = load i32, i32* %d_int32, align 4
  store i32 %14, i32* %run_mode, align 4
  %15 = load i32, i32* %run_mode, align 4
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end.21

if.then:                                          ; preds = %do.end
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call19 = call i32 @dialog(%struct._GimpDrawable* %16)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.end, label %if.then.20

if.then.20:                                       ; preds = %if.then
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %do.end
  %17 = load i32, i32* %status, align 4
  %cmp22 = icmp eq i32 %17, 3
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %18)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.21
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %19 = load i32, i32* %status, align 4
  store i32 %19, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @get_dialog() #0 {
entry:
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @_dlg, align 8
  ret %struct._GtkWidget* %0
}

; Function Attrs: nounwind uwtable
define %struct.MRU_t* @get_mru() #0 {
entry:
  %0 = load %struct.MRU_t*, %struct.MRU_t** @_mru, align 8
  %tobool = icmp ne %struct.MRU_t* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.MRU_t* @mru_create()
  store %struct.MRU_t* %call, %struct.MRU_t** @_mru, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.MRU_t*, %struct.MRU_t** @_mru, align 8
  ret %struct.MRU_t* %1
}

declare %struct.MRU_t* @mru_create() #1

; Function Attrs: nounwind uwtable
define %struct.MapInfo_t* @get_map_info() #0 {
entry:
  ret %struct.MapInfo_t* @_map_info
}

; Function Attrs: nounwind uwtable
define %struct.PreferencesData_t* @get_preferences() #0 {
entry:
  ret %struct.PreferencesData_t* @_preferences
}

; Function Attrs: nounwind uwtable
define i32 @get_image_width() #0 {
entry:
  %0 = load i32, i32* @_image_width, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @get_image_height() #0 {
entry:
  %0 = load i32, i32* @_image_height, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @set_busy_cursor() #0 {
entry:
  %0 = load %struct.Preview_t*, %struct.Preview_t** @_preview, align 8
  %call = call i32 @preview_set_cursor(%struct.Preview_t* %0, i32 150)
  ret void
}

declare i32 @preview_set_cursor(%struct.Preview_t*, i32) #1

; Function Attrs: nounwind uwtable
define void @remove_busy_cursor() #0 {
entry:
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @_dlg, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %0)
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call, %struct._GdkCursor* null)
  ret void
}

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @set_zoom(i32 %zoom_factor) #0 {
entry:
  %zoom_factor.addr = alloca i32, align 4
  store i32 %zoom_factor, i32* %zoom_factor.addr, align 4
  call void @set_busy_cursor()
  %0 = load i32, i32* %zoom_factor.addr, align 4
  store i32 %0, i32* @_zoom_factor, align 4
  %1 = load %struct.Preview_t*, %struct.Preview_t** @_preview, align 8
  %2 = load i32, i32* %zoom_factor.addr, align 4
  call void @preview_zoom(%struct.Preview_t* %1, i32 %2)
  %3 = load %struct.StatusBar_t*, %struct.StatusBar_t** @_statusbar, align 8
  %4 = load i32, i32* %zoom_factor.addr, align 4
  call void @statusbar_set_zoom(%struct.StatusBar_t* %3, i32 %4)
  call void @remove_busy_cursor()
  ret void
}

declare void @preview_zoom(%struct.Preview_t*, i32) #1

declare void @statusbar_set_zoom(%struct.StatusBar_t*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @get_real_coord(i32 %coord) #0 {
entry:
  %coord.addr = alloca i32, align 4
  store i32 %coord, i32* %coord.addr, align 4
  %0 = load i32, i32* %coord.addr, align 4
  %1 = load i32, i32* @_zoom_factor, align 4
  %div = sdiv i32 %0, %1
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define void @draw_line(%struct._cairo* %cr, i32 %x1, i32 %y1, i32 %x2, i32 %y2) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load i32, i32* @_zoom_factor, align 4
  %2 = load i32, i32* %x1.addr, align 4
  %mul = mul nsw i32 %1, %2
  %conv = sitofp i32 %mul to double
  %add = fadd double %conv, 5.000000e-01
  %3 = load i32, i32* @_zoom_factor, align 4
  %4 = load i32, i32* %y1.addr, align 4
  %mul1 = mul nsw i32 %3, %4
  %conv2 = sitofp i32 %mul1 to double
  %add3 = fadd double %conv2, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %0, double %add, double %add3)
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %6 = load i32, i32* @_zoom_factor, align 4
  %7 = load i32, i32* %x2.addr, align 4
  %mul4 = mul nsw i32 %6, %7
  %conv5 = sitofp i32 %mul4 to double
  %add6 = fadd double %conv5, 5.000000e-01
  %8 = load i32, i32* @_zoom_factor, align 4
  %9 = load i32, i32* %y2.addr, align 4
  %mul7 = mul nsw i32 %8, %9
  %conv8 = sitofp i32 %mul7 to double
  %add9 = fadd double %conv8, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %5, double %add6, double %add9)
  %10 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %10)
  ret void
}

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define void @draw_rectangle(%struct._cairo* %cr, i32 %filled, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %filled.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %filled, i32* %filled.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load i32, i32* @_zoom_factor, align 4
  %2 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %1, %2
  %conv = sitofp i32 %mul to double
  %3 = load i32, i32* %filled.addr, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, double 0.000000e+00, double 5.000000e-01
  %add = fadd double %conv, %cond
  %4 = load i32, i32* @_zoom_factor, align 4
  %5 = load i32, i32* %y.addr, align 4
  %mul1 = mul nsw i32 %4, %5
  %conv2 = sitofp i32 %mul1 to double
  %6 = load i32, i32* %filled.addr, align 4
  %tobool3 = icmp ne i32 %6, 0
  %cond4 = select i1 %tobool3, double 0.000000e+00, double 5.000000e-01
  %add5 = fadd double %conv2, %cond4
  %7 = load i32, i32* @_zoom_factor, align 4
  %8 = load i32, i32* %width.addr, align 4
  %mul6 = mul nsw i32 %7, %8
  %conv7 = sitofp i32 %mul6 to double
  %9 = load i32, i32* @_zoom_factor, align 4
  %10 = load i32, i32* %height.addr, align 4
  %mul8 = mul nsw i32 %9, %10
  %conv9 = sitofp i32 %mul8 to double
  call void @cairo_rectangle(%struct._cairo* %0, double %add, double %add5, double %conv7, double %conv9)
  %11 = load i32, i32* %filled.addr, align 4
  %tobool10 = icmp ne i32 %11, 0
  br i1 %tobool10, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %12)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_fill(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define void @draw_circle(%struct._cairo* %cr, i32 %x, i32 %y, i32 %r) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load i32, i32* @_zoom_factor, align 4
  %2 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %1, %2
  %conv = sitofp i32 %mul to double
  %3 = load i32, i32* @_zoom_factor, align 4
  %4 = load i32, i32* %y.addr, align 4
  %mul1 = mul nsw i32 %3, %4
  %conv2 = sitofp i32 %mul1 to double
  %5 = load i32, i32* @_zoom_factor, align 4
  %6 = load i32, i32* %r.addr, align 4
  %mul3 = mul nsw i32 %5, %6
  %conv4 = sitofp i32 %mul3 to double
  call void @cairo_arc(%struct._cairo* %0, double %conv, double %conv2, double %conv4, double 0.000000e+00, double 0x401921FB54442D18)
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %7)
  ret void
}

declare void @cairo_arc(%struct._cairo*, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define void @draw_polygon(%struct._cairo* %cr, %struct._GList* %list) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %list.addr = alloca %struct._GList*, align 8
  %p = alloca %struct._GList*, align 8
  %src = alloca %struct._GdkPoint*, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GList* %list, %struct._GList** %list.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %list.addr, align 8
  store %struct._GList* %0, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GdkPoint*
  store %struct._GdkPoint* %4, %struct._GdkPoint** %src, align 8
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %6 = load i32, i32* @_zoom_factor, align 4
  %7 = load %struct._GdkPoint*, %struct._GdkPoint** %src, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %7, i32 0, i32 0
  %8 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %6, %8
  %conv = sitofp i32 %mul to double
  %add = fadd double %conv, 5.000000e-01
  %9 = load i32, i32* @_zoom_factor, align 4
  %10 = load %struct._GdkPoint*, %struct._GdkPoint** %src, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %10, i32 0, i32 1
  %11 = load i32, i32* %y, align 4
  %mul1 = mul nsw i32 %9, %11
  %conv2 = sitofp i32 %mul1 to double
  %add3 = fadd double %conv2, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %5, double %add, double %add3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %13, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_close_path(%struct._cairo* %14)
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %15)
  ret void
}

declare void @cairo_close_path(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define void @set_preview_color(%struct._GtkRadioAction* %action, %struct._GtkRadioAction* %current, i8* %user_data) #0 {
entry:
  %action.addr = alloca %struct._GtkRadioAction*, align 8
  %current.addr = alloca %struct._GtkRadioAction*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GtkRadioAction* %action, %struct._GtkRadioAction** %action.addr, align 8
  store %struct._GtkRadioAction* %current, %struct._GtkRadioAction** %current.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %current.addr, align 8
  %call = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %0)
  %cmp = icmp eq i32 %call, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 9), align 4
  %1 = load i32, i32* @_zoom_factor, align 4
  call void @set_zoom(i32 %1)
  ret void
}

declare i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction*) #1

; Function Attrs: nounwind uwtable
define void @preview_redraw() #0 {
entry:
  %0 = load %struct.Preview_t*, %struct.Preview_t** @_preview, align 8
  %preview = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %1)
  ret void
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @set_zoom_factor(%struct._GtkRadioAction* %action, %struct._GtkRadioAction* %current, i8* %user_data) #0 {
entry:
  %action.addr = alloca %struct._GtkRadioAction*, align 8
  %current.addr = alloca %struct._GtkRadioAction*, align 8
  %user_data.addr = alloca i8*, align 8
  %factor = alloca i32, align 4
  store %struct._GtkRadioAction* %action, %struct._GtkRadioAction** %action.addr, align 8
  store %struct._GtkRadioAction* %current, %struct._GtkRadioAction** %current.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %current.addr, align 8
  %call = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %0)
  store i32 %call, i32* %factor, align 4
  %1 = load i32, i32* %factor, align 4
  %add = add nsw i32 %1, 1
  call void @set_zoom(i32 %add)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @get_image_name() #0 {
entry:
  %0 = load i8*, i8** @_image_name, align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define i8* @get_filename() #0 {
entry:
  %0 = load i8*, i8** @_filename, align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define void @set_func(%struct._GtkRadioAction* %action, %struct._GtkRadioAction* %current, i8* %user_data) #0 {
entry:
  %action.addr = alloca %struct._GtkRadioAction*, align 8
  %current.addr = alloca %struct._GtkRadioAction*, align 8
  %user_data.addr = alloca i8*, align 8
  %value = alloca i32, align 4
  store %struct._GtkRadioAction* %action, %struct._GtkRadioAction** %action.addr, align 8
  store %struct._GtkRadioAction* %current, %struct._GtkRadioAction** %current.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %current.addr, align 8
  %call = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %0)
  store i32 %call, i32* %value, align 4
  %1 = load i32, i32* %value, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  call void @set_arrow_func()
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  call void @set_object_func(i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* @object_on_button_press, i8* bitcast (%struct.ObjectFactory_t* (i32)* @get_rectangle_factory to i8*))
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  call void @set_object_func(i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* @object_on_button_press, i8* bitcast (%struct.ObjectFactory_t* (i32)* @get_circle_factory to i8*))
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  call void @set_object_func(i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* @object_on_button_press, i8* bitcast (%struct.ObjectFactory_t* (i32)* @get_polygon_factory to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_arrow_func() #0 {
entry:
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* @arrow_on_button_press, i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)** @_button_press_func, align 8
  store i32 132, i32* @_cursor, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_object_func(i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* %func, i8* %param) #0 {
entry:
  %func.addr = alloca i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)*, align 8
  %param.addr = alloca i8*, align 8
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* %func, i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)** %func.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  %0 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)** %func.addr, align 8
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* %0, i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)** @_button_press_func, align 8
  %1 = load i8*, i8** %param.addr, align 8
  store i8* %1, i8** @_button_press_param, align 8
  store i32 34, i32* @_cursor, align 4
  ret void
}

declare i32 @object_on_button_press(%struct._GtkWidget*, %struct._GdkEventButton*, i8*) #1

declare %struct.ObjectFactory_t* @get_rectangle_factory(i32) #1

declare %struct.ObjectFactory_t* @get_circle_factory(i32) #1

declare %struct.ObjectFactory_t* @get_polygon_factory(i32) #1

; Function Attrs: nounwind uwtable
define void @add_shape(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %1 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_list_append(%struct.ObjectList_t* %0, %struct.Object_t* %1)
  ret void
}

declare void @object_list_append(%struct.ObjectList_t*, %struct.Object_t*) #1

; Function Attrs: nounwind uwtable
define %struct.ObjectList_t* @get_shapes() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  ret %struct.ObjectList_t* %0
}

; Function Attrs: nounwind uwtable
define void @update_shape(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %1 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @object_list_update(%struct.ObjectList_t* %0, %struct.Object_t* %1)
  ret void
}

declare void @object_list_update(%struct.ObjectList_t*, %struct.Object_t*) #1

; Function Attrs: nounwind uwtable
define void @do_edit_selected_shape() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  call void @object_list_edit_selected(%struct.ObjectList_t* %0)
  ret void
}

declare void @object_list_edit_selected(%struct.ObjectList_t*) #1

; Function Attrs: nounwind uwtable
define void @do_popup_menu(%struct._GdkEventButton* %event) #0 {
entry:
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %obj = alloca %struct.Object_t*, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 4
  %1 = load double, double* %x1, align 8
  %conv = fptosi double %1 to i32
  %2 = load i32, i32* @_zoom_factor, align 4
  %div = sdiv i32 %conv, %2
  store i32 %div, i32* %x, align 4
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y2 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 5
  %4 = load double, double* %y2, align 8
  %conv3 = fptosi double %4 to i32
  %5 = load i32, i32* @_zoom_factor, align 4
  %div4 = sdiv i32 %conv3, %5
  store i32 %div4, i32* %y, align 4
  %6 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %y, align 4
  %call = call %struct.Object_t* @object_list_find(%struct.ObjectList_t* %6, i32 %7, i32 %8)
  store %struct.Object_t* %call, %struct.Object_t** %obj, align 8
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %tobool = icmp ne %struct.Object_t* %9, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %10, i32 0, i32 0
  %11 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %do_popup = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %11, i32 0, i32 24
  %12 = load void (%struct.Object_t*, %struct._GdkEventButton*)*, void (%struct.Object_t*, %struct._GdkEventButton*)** %do_popup, align 8
  %13 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %14 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  call void %12(%struct.Object_t* %13, %struct._GdkEventButton* %14)
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  call void @do_main_popup_menu(%struct._GdkEventButton* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct.Object_t* @object_list_find(%struct.ObjectList_t*, i32, i32) #1

declare void @do_main_popup_menu(%struct._GdkEventButton*) #1

; Function Attrs: nounwind uwtable
define void @main_set_dimension(i32 %width, i32 %height) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct.StatusBar_t*, %struct.StatusBar_t** @_statusbar, align 8
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* @_zoom_factor, align 4
  %div = sdiv i32 %1, %2
  %3 = load i32, i32* %height.addr, align 4
  %4 = load i32, i32* @_zoom_factor, align 4
  %div1 = sdiv i32 %3, %4
  call void @statusbar_set_dimension(%struct.StatusBar_t* %0, i32 %div, i32 %div1)
  ret void
}

declare void @statusbar_set_dimension(%struct.StatusBar_t*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @main_clear_dimension() #0 {
entry:
  %0 = load %struct.StatusBar_t*, %struct.StatusBar_t** @_statusbar, align 8
  call void @statusbar_clear_dimension(%struct.StatusBar_t* %0)
  ret void
}

declare void @statusbar_clear_dimension(%struct.StatusBar_t*) #1

; Function Attrs: nounwind uwtable
define void @show_url() #0 {
entry:
  store i32 1, i32* @_show_url, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @hide_url() #0 {
entry:
  store i32 0, i32* @_show_url, align 4
  %0 = load %struct.StatusBar_t*, %struct.StatusBar_t** @_statusbar, align 8
  call void @statusbar_clear_status(%struct.StatusBar_t* %0)
  ret void
}

declare void @statusbar_clear_status(%struct.StatusBar_t*) #1

; Function Attrs: nounwind uwtable
define void @select_shape(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %sash_func = alloca void (%struct.Object_t*, i32, i32)*, align 8
  %command = alloca %struct.Command_t*, align 8
  %command6 = alloca %struct.Command_t*, align 8
  %sub_command = alloca %struct.Command_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 4
  %1 = load double, double* %x1, align 8
  %conv = fptosi double %1 to i32
  %2 = load i32, i32* @_zoom_factor, align 4
  %div = sdiv i32 %conv, %2
  store i32 %div, i32* %x, align 4
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y2 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 5
  %4 = load double, double* %y2, align 8
  %conv3 = fptosi double %4 to i32
  %5 = load i32, i32* @_zoom_factor, align 4
  %div4 = sdiv i32 %conv3, %5
  store i32 %div4, i32* %y, align 4
  %6 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %y, align 4
  %call = call %struct.Object_t* @object_list_near_sash(%struct.ObjectList_t* %6, i32 %7, i32 %8, void (%struct.Object_t*, i32, i32)** %sash_func)
  store %struct.Object_t* %call, %struct.Object_t** %obj, align 8
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %tobool = icmp ne %struct.Object_t* %9, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %y, align 4
  %14 = load void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)** %sash_func, align 8
  %call5 = call %struct.Command_t* @move_sash_command_new(%struct._GtkWidget* %10, %struct.Object_t* %11, i32 %12, i32 %13, void (%struct.Object_t*, i32, i32)* %14)
  store %struct.Command_t* %call5, %struct.Command_t** %command, align 8
  %15 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  call void @command_execute(%struct.Command_t* %15)
  br label %if.end.32

if.else:                                          ; preds = %entry
  %16 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %17 = load i32, i32* %x, align 4
  %18 = load i32, i32* %y, align 4
  %call7 = call %struct.Object_t* @object_list_find(%struct.ObjectList_t* %16, i32 %17, i32 %18)
  store %struct.Object_t* %call7, %struct.Object_t** %obj, align 8
  %19 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %tobool8 = icmp ne %struct.Object_t* %19, null
  br i1 %tobool8, label %if.then.9, label %if.else.29

if.then.9:                                        ; preds = %if.else
  %20 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %20, i32 0, i32 7
  %21 = load i32, i32* %state, align 4
  %and = and i32 %21, 1
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then.11, label %if.else.17

if.then.11:                                       ; preds = %if.then.9
  %22 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %22, i32 0, i32 3
  %23 = load i32, i32* %selected, align 4
  %tobool12 = icmp ne i32 %23, 0
  br i1 %tobool12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.then.11
  %24 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %call14 = call %struct.Command_t* @unselect_command_new(%struct.Object_t* %24)
  store %struct.Command_t* %call14, %struct.Command_t** %command6, align 8
  br label %if.end

if.else.15:                                       ; preds = %if.then.11
  %25 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %call16 = call %struct.Command_t* @select_command_new(%struct.Object_t* %25)
  store %struct.Command_t* %call16, %struct.Command_t** %command6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.13
  br label %if.end.27

if.else.17:                                       ; preds = %if.then.9
  %26 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected18 = getelementptr inbounds %struct.Object_t, %struct.Object_t* %26, i32 0, i32 3
  %27 = load i32, i32* %selected18, align 4
  %tobool19 = icmp ne i32 %27, 0
  br i1 %tobool19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else.17
  %28 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %29 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %call21 = call %struct.Command_t* @unselect_all_command_new(%struct.ObjectList_t* %28, %struct.Object_t* %29)
  store %struct.Command_t* %call21, %struct.Command_t** %command6, align 8
  br label %if.end.26

if.else.22:                                       ; preds = %if.else.17
  %call23 = call %struct.Command_t* @subcommand_start(i8* null)
  store %struct.Command_t* %call23, %struct.Command_t** %command6, align 8
  %30 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call24 = call %struct.Command_t* @unselect_all_command_new(%struct.ObjectList_t* %30, %struct.Object_t* null)
  store %struct.Command_t* %call24, %struct.Command_t** %sub_command, align 8
  %31 = load %struct.Command_t*, %struct.Command_t** %command6, align 8
  %32 = load %struct.Command_t*, %struct.Command_t** %sub_command, align 8
  call void @command_add_subcommand(%struct.Command_t* %31, %struct.Command_t* %32)
  %33 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %call25 = call %struct.Command_t* @select_command_new(%struct.Object_t* %33)
  store %struct.Command_t* %call25, %struct.Command_t** %sub_command, align 8
  %34 = load %struct.Command_t*, %struct.Command_t** %command6, align 8
  %35 = load %struct.Command_t*, %struct.Command_t** %sub_command, align 8
  call void @command_add_subcommand(%struct.Command_t* %34, %struct.Command_t* %35)
  %36 = load %struct.Command_t*, %struct.Command_t** %command6, align 8
  %37 = load %struct.Command_t*, %struct.Command_t** %sub_command, align 8
  %name = getelementptr inbounds %struct.Command_t, %struct.Command_t* %37, i32 0, i32 2
  %38 = load i8*, i8** %name, align 8
  call void @command_set_name(%struct.Command_t* %36, i8* %38)
  call void @subcommand_end()
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.22, %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end
  %39 = load %struct.Command_t*, %struct.Command_t** %command6, align 8
  call void @command_execute(%struct.Command_t* %39)
  %40 = load %struct.Preview_t*, %struct.Preview_t** @_preview, align 8
  %41 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %y, align 4
  %call28 = call %struct.Command_t* @move_command_new(%struct.Preview_t* %40, %struct.Object_t* %41, i32 %42, i32 %43)
  store %struct.Command_t* %call28, %struct.Command_t** %command6, align 8
  %44 = load %struct.Command_t*, %struct.Command_t** %command6, align 8
  call void @command_execute(%struct.Command_t* %44)
  br label %if.end.31

if.else.29:                                       ; preds = %if.else
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %46 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %47 = load i32, i32* %x, align 4
  %48 = load i32, i32* %y, align 4
  %call30 = call %struct.Command_t* @select_region_command_new(%struct._GtkWidget* %45, %struct.ObjectList_t* %46, i32 %47, i32 %48)
  store %struct.Command_t* %call30, %struct.Command_t** %command6, align 8
  %49 = load %struct.Command_t*, %struct.Command_t** %command6, align 8
  call void @command_execute(%struct.Command_t* %49)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.end.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then
  ret void
}

declare %struct.Object_t* @object_list_near_sash(%struct.ObjectList_t*, i32, i32, void (%struct.Object_t*, i32, i32)**) #1

declare %struct.Command_t* @move_sash_command_new(%struct._GtkWidget*, %struct.Object_t*, i32, i32, void (%struct.Object_t*, i32, i32)*) #1

declare void @command_execute(%struct.Command_t*) #1

declare %struct.Command_t* @unselect_command_new(%struct.Object_t*) #1

declare %struct.Command_t* @select_command_new(%struct.Object_t*) #1

declare %struct.Command_t* @unselect_all_command_new(%struct.ObjectList_t*, %struct.Object_t*) #1

declare %struct.Command_t* @subcommand_start(i8*) #1

declare void @command_add_subcommand(%struct.Command_t*, %struct.Command_t*) #1

declare void @command_set_name(%struct.Command_t*, i8*) #1

declare void @subcommand_end() #1

declare %struct.Command_t* @move_command_new(%struct.Preview_t*, %struct.Object_t*, i32, i32) #1

declare %struct.Command_t* @select_region_command_new(%struct._GtkWidget*, %struct.ObjectList_t*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @edit_shape(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %obj = alloca %struct.Object_t*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* @_zoom_factor, align 4
  %div = sdiv i32 %0, %1
  store i32 %div, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* @_zoom_factor, align 4
  %div1 = sdiv i32 %2, %3
  store i32 %div1, i32* %y.addr, align 4
  %4 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  %call = call %struct.Object_t* @object_list_find(%struct.ObjectList_t* %4, i32 %5, i32 %6)
  store %struct.Object_t* %call, %struct.Object_t** %obj, align 8
  %7 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %tobool = icmp ne %struct.Object_t* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_select(%struct.Object_t* %8)
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_edit(%struct.Object_t* %9, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @object_select(%struct.Object_t*) #1

declare void @object_edit(%struct.Object_t*, i32) #1

; Function Attrs: nounwind uwtable
define void @do_zoom_in() #0 {
entry:
  %factor = alloca i32, align 4
  %call = call i32 @zoom_in()
  store i32 %call, i32* %factor, align 4
  %0 = load i32, i32* %factor, align 4
  call void @menu_set_zoom_sensitivity(i32 %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @zoom_in() #0 {
entry:
  %0 = load i32, i32* @_zoom_factor, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @_zoom_factor, align 4
  %add = add nsw i32 %1, 1
  call void @set_zoom(i32 %add)
  %2 = load i32, i32* @_zoom_factor, align 4
  call void @menu_set_zoom(i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @_zoom_factor, align 4
  ret i32 %3
}

declare void @menu_set_zoom_sensitivity(i32) #1

; Function Attrs: nounwind uwtable
define void @do_zoom_out() #0 {
entry:
  %factor = alloca i32, align 4
  %call = call i32 @zoom_out()
  store i32 %call, i32* %factor, align 4
  %0 = load i32, i32* %factor, align 4
  call void @menu_set_zoom_sensitivity(i32 %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @zoom_out() #0 {
entry:
  %0 = load i32, i32* @_zoom_factor, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @_zoom_factor, align 4
  %sub = sub nsw i32 %1, 1
  call void @set_zoom(i32 %sub)
  %2 = load i32, i32* @_zoom_factor, align 4
  call void @menu_set_zoom(i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @_zoom_factor, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define void @draw_shapes(%struct._cairo* %cr) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %1 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @object_list_draw(%struct.ObjectList_t* %0, %struct._cairo* %1)
  ret void
}

declare void @object_list_draw(%struct.ObjectList_t*, %struct._cairo*) #1

; Function Attrs: nounwind uwtable
define void @do_close() #0 {
entry:
  call void @check_if_changed(void (i8*)* @really_close, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_if_changed(void (i8*)* %func, i8* %param) #0 {
entry:
  %func.addr = alloca void (i8*)*, align 8
  %param.addr = alloca i8*, align 8
  store void (i8*)* %func, void (i8*)** %func.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %changed = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %0, i32 0, i32 1
  %1 = load i32, i32* %changed, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load void (i8*)*, void (i8*)** %func.addr, align 8
  %3 = load i8*, i8** %param.addr, align 8
  call void @do_data_changed_dialog(void (i8*)* %2, i8* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load void (i8*)*, void (i8*)** %func.addr, align 8
  %5 = load i8*, i8** %param.addr, align 8
  call void %4(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @really_close(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @close_current()
  ret void
}

; Function Attrs: nounwind uwtable
define void @do_quit() #0 {
entry:
  call void @check_if_changed(void (i8*)* @really_quit, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @really_quit(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @preferences_save(%struct.PreferencesData_t* @_preferences)
  store i32 1, i32* @run_flag, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @_dlg, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @do_undo() #0 {
entry:
  %0 = load %struct.Selection_t*, %struct.Selection_t** @_selection, align 8
  call void @selection_freeze(%struct.Selection_t* %0)
  call void @last_command_undo()
  %1 = load %struct.Selection_t*, %struct.Selection_t** @_selection, align 8
  call void @selection_thaw(%struct.Selection_t* %1)
  call void @preview_redraw()
  ret void
}

declare void @selection_freeze(%struct.Selection_t*) #1

declare void @last_command_undo() #1

declare void @selection_thaw(%struct.Selection_t*) #1

; Function Attrs: nounwind uwtable
define void @do_redo() #0 {
entry:
  %0 = load %struct.Selection_t*, %struct.Selection_t** @_selection, align 8
  call void @selection_freeze(%struct.Selection_t* %0)
  call void @last_command_redo()
  %1 = load %struct.Selection_t*, %struct.Selection_t** @_selection, align 8
  call void @selection_thaw(%struct.Selection_t* %1)
  call void @preview_redraw()
  ret void
}

declare void @last_command_redo() #1

; Function Attrs: nounwind uwtable
define void @save() #0 {
entry:
  %0 = load i8*, i8** @_filename, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @_filename, align 8
  call void @save_as(i8* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @do_file_save_as_dialog()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @save_as(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %out, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %3 = bitcast %struct._IO_FILE* %2 to i8*
  call void @dump_output(i8* %3, void (i8*, i8*, ...)* @save_to_file)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call1 = call i32 @fclose(%struct._IO_FILE* %4)
  %5 = load %struct.StatusBar_t*, %struct.StatusBar_t** @_statusbar, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #4
  %6 = load i8*, i8** %filename.addr, align 8
  call void (%struct.StatusBar_t*, i8*, ...) @statusbar_set_status(%struct.StatusBar_t* %5, i8* %call2, i8* %6)
  %7 = load i8*, i8** %filename.addr, align 8
  call void @main_set_title(i8* %7)
  %8 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %changed = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %8, i32 0, i32 1
  store i32 0, i32* %changed, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #4
  %9 = load i8*, i8** %filename.addr, align 8
  call void @do_file_error_dialog(i8* %call3, i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @do_file_save_as_dialog() #1

; Function Attrs: nounwind uwtable
define void @dump_output(i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 0), align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %param.addr, align 8
  %2 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @save_as_ncsa(i8* %1, void (i8*, i8*, ...)* %2)
  br label %if.end.7

if.else:                                          ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 0), align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %4 = load i8*, i8** %param.addr, align 8
  %5 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @save_as_cern(i8* %4, void (i8*, i8*, ...)* %5)
  br label %if.end.6

if.else.3:                                        ; preds = %if.else
  %6 = load i32, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 0), align 4
  %cmp4 = icmp eq i32 %6, 2
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else.3
  %7 = load i8*, i8** %param.addr, align 8
  %8 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @save_as_csim(i8* %7, void (i8*, i8*, ...)* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @save_as_ncsa(i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %p = alloca i8*, align 8
  %description = alloca i8*, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %1 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %0(i8* %1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.32, i32 0, i32 0))
  %2 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %3 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %2(i8* %3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i32 0, i32 0))
  %4 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %5 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %4(i8* %5, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i32 0, i32 0))
  %6 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %7 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %6(i8* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0))
  %8 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %9 = load i8*, i8** %param.addr, align 8
  %10 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 2), align 8
  call void (i8*, i8*, ...) %8(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* %10)
  %11 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %12 = load i8*, i8** %param.addr, align 8
  %13 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 3), align 8
  call void (i8*, i8*, ...) %11(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i8* %13)
  %14 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %15 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %14(i8* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0))
  %16 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 5), align 8
  %call = call noalias i8* @g_strdup(i8* %16)
  store i8* %call, i8** %description, align 8
  %17 = load i8*, i8** %description, align 8
  %call1 = call i8* @strtok(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)) #4
  store i8* %call1, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %18, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %20 = load i8*, i8** %param.addr, align 8
  %21 = load i8*, i8** %p, align 8
  call void (i8*, i8*, ...) %19(i8* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i8* %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call2 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)) #4
  store i8* %call2, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i8*, i8** %description, align 8
  call void @g_free(i8* %22)
  %23 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 4), align 8
  %24 = load i8, i8* %23, align 1
  %tobool3 = icmp ne i8 %24, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %25 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %26 = load i8*, i8** %param.addr, align 8
  %27 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 4), align 8
  call void (i8*, i8*, ...) %25(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %28 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %29 = load i8*, i8** %param.addr, align 8
  %30 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @object_list_write_ncsa(%struct.ObjectList_t* %28, i8* %29, void (i8*, i8*, ...)* %30)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @save_as_cern(i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %p = alloca i8*, align 8
  %description = alloca i8*, align 8
  %next_token = alloca i8*, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load i8*, i8** %param.addr, align 8
  %1 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_cern_comment(i8* %0, void (i8*, i8*, ...)* %1)
  %2 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %3 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %2(i8* %3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.42, i32 0, i32 0))
  %4 = load i8*, i8** %param.addr, align 8
  %5 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_cern_comment(i8* %4, void (i8*, i8*, ...)* %5)
  %6 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %7 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %6(i8* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i32 0, i32 0))
  %8 = load i8*, i8** %param.addr, align 8
  %9 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_cern_comment(i8* %8, void (i8*, i8*, ...)* %9)
  %10 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %11 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %10(i8* %11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.44, i32 0, i32 0))
  %12 = load i8*, i8** %param.addr, align 8
  %13 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_cern_comment(i8* %12, void (i8*, i8*, ...)* %13)
  %14 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %15 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %14(i8* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0))
  %16 = load i8*, i8** %param.addr, align 8
  %17 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_cern_comment(i8* %16, void (i8*, i8*, ...)* %17)
  %18 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %19 = load i8*, i8** %param.addr, align 8
  %20 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 2), align 8
  call void (i8*, i8*, ...) %18(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* %20)
  %21 = load i8*, i8** %param.addr, align 8
  %22 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_cern_comment(i8* %21, void (i8*, i8*, ...)* %22)
  %23 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %24 = load i8*, i8** %param.addr, align 8
  %25 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 3), align 8
  call void (i8*, i8*, ...) %23(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i8* %25)
  %26 = load i8*, i8** %param.addr, align 8
  %27 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_cern_comment(i8* %26, void (i8*, i8*, ...)* %27)
  %28 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %29 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %28(i8* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0))
  %30 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 5), align 8
  %call = call noalias i8* @g_strdup(i8* %30)
  store i8* %call, i8** %description, align 8
  %31 = load i8*, i8** %description, align 8
  store i8* %31, i8** %next_token, align 8
  %32 = load i8*, i8** %next_token, align 8
  %call1 = call i8* @strtok(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)) #4
  store i8* %call1, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %33 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %33, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i8*, i8** %param.addr, align 8
  %35 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @write_cern_comment(i8* %34, void (i8*, i8*, ...)* %35)
  %36 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %37 = load i8*, i8** %param.addr, align 8
  %38 = load i8*, i8** %p, align 8
  call void (i8*, i8*, ...) %36(i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), i8* %38)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call2 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)) #4
  store i8* %call2, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i8*, i8** %description, align 8
  call void @g_free(i8* %39)
  %40 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 4), align 8
  %41 = load i8, i8* %40, align 1
  %tobool3 = icmp ne i8 %41, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %42 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %43 = load i8*, i8** %param.addr, align 8
  %44 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 4), align 8
  call void (i8*, i8*, ...) %42(i8* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* %44)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %45 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %46 = load i8*, i8** %param.addr, align 8
  %47 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @object_list_write_cern(%struct.ObjectList_t* %45, i8* %46, void (i8*, i8*, ...)* %47)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @save_as_csim(i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %p = alloca i8*, align 8
  %description = alloca i8*, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %1 = load i8*, i8** %param.addr, align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 1), align 8
  %3 = load i32, i32* @_image_width, align 4
  %4 = load i32, i32* @_image_height, align 4
  %5 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 2), align 8
  call void (i8*, i8*, ...) %0(i8* %1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.51, i32 0, i32 0), i8* %2, i32 %3, i32 %4, i8* %5)
  %6 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %7 = load i8*, i8** %param.addr, align 8
  %8 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 2), align 8
  call void (i8*, i8*, ...) %6(i8* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0), i8* %8)
  %9 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %10 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %9(i8* %10, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.53, i32 0, i32 0))
  %11 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %12 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %11(i8* %12, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.54, i32 0, i32 0))
  %13 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %14 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %13(i8* %14, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.55, i32 0, i32 0))
  %15 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %16 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %15(i8* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i32 0, i32 0))
  %17 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %18 = load i8*, i8** %param.addr, align 8
  %19 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 3), align 8
  call void (i8*, i8*, ...) %17(i8* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0), i8* %19)
  %20 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 5), align 8
  %call = call noalias i8* @g_strdup(i8* %20)
  store i8* %call, i8** %description, align 8
  %21 = load i8*, i8** %description, align 8
  %call1 = call i8* @strtok(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)) #4
  store i8* %call1, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %22, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %24 = load i8*, i8** %param.addr, align 8
  %25 = load i8*, i8** %p, align 8
  call void (i8*, i8*, ...) %23(i8* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i32 0, i32 0), i8* %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call2 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)) #4
  store i8* %call2, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i8*, i8** %description, align 8
  call void @g_free(i8* %26)
  %27 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %28 = load i8*, i8** %param.addr, align 8
  %29 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  call void @object_list_write_csim(%struct.ObjectList_t* %27, i8* %28, void (i8*, i8*, ...)* %29)
  %30 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 4), align 8
  %31 = load i8, i8* %30, align 1
  %tobool3 = icmp ne i8 %31, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %32 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %33 = load i8*, i8** %param.addr, align 8
  %34 = load i8*, i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 4), align 8
  call void (i8*, i8*, ...) %32(i8* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.59, i32 0, i32 0), i8* %34)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %35 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %36 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %35(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0))
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @save_to_file(i8* %param, i8* %format, ...) #0 {
entry:
  %param.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %param, i8** %param.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %param.addr, align 8
  %1 = bitcast i8* %0 to %struct._IO_FILE*
  %2 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @vfprintf(%struct._IO_FILE* %1, i8* %2, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @statusbar_set_status(%struct.StatusBar_t*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @main_set_title(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %title = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @g_strreplace(i8** @_filename, i8* %0)
  %1 = load i8*, i8** %filename.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %call1 = call noalias i8* @g_filename_display_basename(i8* %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0)) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call1, %cond.true ], [ %call2, %cond.false ]
  store i8* %cond, i8** %p, align 8
  %3 = load i8*, i8** %p, align 8
  %call3 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), i8* %3)
  store i8* %call3, i8** %title, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %tobool4 = icmp ne i8* %4, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %5 = load i8*, i8** %p, align 8
  call void @g_free(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @_dlg, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  %9 = load i8*, i8** %title, align 8
  call void @gtk_window_set_title(%struct._GtkWindow* %8, i8* %9)
  %10 = load i8*, i8** %title, align 8
  call void @g_free(i8* %10)
  ret void
}

declare void @do_file_error_dialog(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @load(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @g_strreplace(i8** @load.tmp_filename, i8* %0)
  %1 = load i8*, i8** @load.tmp_filename, align 8
  call void @check_if_changed(void (i8*)* @really_load, i8* %1)
  ret void
}

declare i8* @g_strreplace(i8**, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @really_load(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %filename, align 8
  call void @close_current()
  %1 = load %struct.Selection_t*, %struct.Selection_t** @_selection, align 8
  call void @selection_freeze(%struct.Selection_t* %1)
  %2 = load i32, i32* @_image_width, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 6), align 4
  %3 = load i32, i32* @_image_height, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 7), align 4
  %4 = load i8*, i8** %filename, align 8
  %call = call i32 @load_csim(i8* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 0), align 4
  %5 = load i32, i32* @_image_width, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 6), align 4
  %cmp = icmp ne i32 %5, %6
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i32, i32* @_image_height, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 7), align 4
  %cmp1 = icmp ne i32 %7, %8
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  call void @do_image_size_changed_dialog()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %lor.lhs.false
  br label %if.end.14

if.else:                                          ; preds = %entry
  %9 = load i8*, i8** %filename, align 8
  %call3 = call i32 @load_ncsa(i8* %9)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 0, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 0), align 4
  br label %if.end.13

if.else.6:                                        ; preds = %if.else
  %10 = load i8*, i8** %filename, align 8
  %call7 = call i32 @load_cern(i8* %10)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else.6
  store i32 1, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 0), align 4
  br label %if.end.12

if.else.10:                                       ; preds = %if.else.6
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #4
  %11 = load i8*, i8** %filename, align 8
  call void @do_file_error_dialog(i8* %call11, i8* %11)
  %12 = load %struct.Selection_t*, %struct.Selection_t** @_selection, align 8
  call void @selection_thaw(%struct.Selection_t* %12)
  call void @close_current()
  br label %return

if.end.12:                                        ; preds = %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %13 = load %struct.MRU_t*, %struct.MRU_t** @_mru, align 8
  %14 = load i8*, i8** %filename, align 8
  call void @mru_set_first(%struct.MRU_t* %13, i8* %14)
  %15 = load %struct.MRU_t*, %struct.MRU_t** @_mru, align 8
  call void @menu_build_mru_items(%struct.MRU_t* %15)
  %16 = load %struct.Selection_t*, %struct.Selection_t** @_selection, align 8
  call void @selection_thaw(%struct.Selection_t* %16)
  %17 = load i8*, i8** %filename, align 8
  call void @main_set_title(i8* %17)
  %18 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %changed = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %18, i32 0, i32 1
  store i32 0, i32* %changed, align 4
  call void @preview_redraw()
  br label %return

return:                                           ; preds = %if.end.14, %if.else.10
  ret void
}

; Function Attrs: nounwind uwtable
define void @toggle_area_list() #0 {
entry:
  %0 = load %struct.Selection_t*, %struct.Selection_t** @_selection, align 8
  call void @selection_toggle_visibility(%struct.Selection_t* %0)
  ret void
}

declare void @selection_toggle_visibility(%struct.Selection_t*) #1

; Function Attrs: nounwind uwtable
define void @imap_help() #0 {
entry:
  call void @gimp_standard_help_func(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* null)
  ret void
}

declare void @gimp_standard_help_func(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @do_cut() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call = call %struct.Command_t* @cut_command_new(%struct.ObjectList_t* %0)
  call void @command_execute(%struct.Command_t* %call)
  ret void
}

declare %struct.Command_t* @cut_command_new(%struct.ObjectList_t*) #1

; Function Attrs: nounwind uwtable
define void @do_copy() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call = call %struct.Command_t* @copy_command_new(%struct.ObjectList_t* %0)
  call void @command_execute(%struct.Command_t* %call)
  ret void
}

declare %struct.Command_t* @copy_command_new(%struct.ObjectList_t*) #1

; Function Attrs: nounwind uwtable
define void @do_paste() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call = call %struct.Command_t* @paste_command_new(%struct.ObjectList_t* %0)
  call void @command_execute(%struct.Command_t* %call)
  ret void
}

declare %struct.Command_t* @paste_command_new(%struct.ObjectList_t*) #1

; Function Attrs: nounwind uwtable
define void @do_select_all() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call = call %struct.Command_t* @select_all_command_new(%struct.ObjectList_t* %0)
  call void @command_execute(%struct.Command_t* %call)
  ret void
}

declare %struct.Command_t* @select_all_command_new(%struct.ObjectList_t*) #1

; Function Attrs: nounwind uwtable
define void @do_deselect_all() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call = call %struct.Command_t* @unselect_all_command_new(%struct.ObjectList_t* %0, %struct.Object_t* null)
  call void @command_execute(%struct.Command_t* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define void @do_clear() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call = call %struct.Command_t* @clear_command_new(%struct.ObjectList_t* %0)
  call void @command_execute(%struct.Command_t* %call)
  ret void
}

declare %struct.Command_t* @clear_command_new(%struct.ObjectList_t*) #1

; Function Attrs: nounwind uwtable
define void @do_move_up() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @do_move_down() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @do_move_to_front() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call = call %struct.Command_t* @move_to_front_command_new(%struct.ObjectList_t* %0)
  call void @command_execute(%struct.Command_t* %call)
  ret void
}

declare %struct.Command_t* @move_to_front_command_new(%struct.ObjectList_t*) #1

; Function Attrs: nounwind uwtable
define void @do_send_to_back() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call = call %struct.Command_t* @send_to_back_command_new(%struct.ObjectList_t* %0)
  call void @command_execute(%struct.Command_t* %call)
  ret void
}

declare %struct.Command_t* @send_to_back_command_new(%struct.ObjectList_t*) #1

; Function Attrs: nounwind uwtable
define void @do_use_gimp_guides_dialog() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** @_drawable, align 8
  %call = call %struct.Command_t* @gimp_guides_command_new(%struct.ObjectList_t* %0, %struct._GimpDrawable* %1)
  call void @command_execute(%struct.Command_t* %call)
  ret void
}

declare %struct.Command_t* @gimp_guides_command_new(%struct.ObjectList_t*, %struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define void @do_create_guides_dialog() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call = call %struct.Command_t* @guides_command_new(%struct.ObjectList_t* %0)
  call void @command_execute(%struct.Command_t* %call)
  ret void
}

declare %struct.Command_t* @guides_command_new(%struct.ObjectList_t*) #1

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

declare i8* @gimp_image_get_name(i32) #1

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_image_height(i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dlg = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %tools = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 1)
  call void @set_arrow_func()
  %call = call %struct.ObjectList_t* @make_object_list()
  store %struct.ObjectList_t* %call, %struct.ObjectList_t** @_shapes, align 8
  %call1 = call %struct._GtkWidget* @gtk_window_new(i32 0)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dlg, align 8
  store %struct._GtkWidget* %call1, %struct._GtkWidget** @_dlg, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %2, i32 1)
  call void @main_set_title(i8* null)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gimp_help_connect(%struct._GtkWidget* %3, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gtk_window_set_position(%struct._GtkWindow* %6, i32 2)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_window_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, i8*)* @close_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventKey*)* @key_press_cb to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventKey*)* @key_release_cb to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void ()* @gtk_main_quit, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call12 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %main_vbox, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %20, %struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  call void @init_stock_icons()
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %call15 = call %struct.Menu_t* @make_menu(%struct._GtkWidget* %23, %struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %call16 = call %struct._GtkWidget* @make_toolbar(%struct._GtkWidget* %25, %struct._GtkWidget* %26)
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 1)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %hbox, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call18)
  %29 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 1, i32 1, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %call20 = call %struct._GtkWidget* @make_tools(%struct._GtkWidget* %32)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %tools, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call21)
  %35 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %tools, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call23 = call %struct.Preview_t* @make_preview(%struct._GimpDrawable* %37)
  store %struct.Preview_t* %call23, %struct.Preview_t** @_preview, align 8
  %38 = load %struct.Preview_t*, %struct.Preview_t** @_preview, align 8
  %preview = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %38, i32 0, i32 2
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* @preview_move to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %41 = load %struct.Preview_t*, %struct.Preview_t** @_preview, align 8
  %preview25 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %41, i32 0, i32 2
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %preview25, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkEventCrossing*)* @preview_enter to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %44 = load %struct.Preview_t*, %struct.Preview_t** @_preview, align 8
  %preview27 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %44, i32 0, i32 2
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %preview27, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkEventCrossing*)* @preview_leave to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct.Preview_t*, %struct.Preview_t** @_preview, align 8
  %preview29 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %47, i32 0, i32 2
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %preview29, align 8
  %49 = bitcast %struct._GtkWidget* %48 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* @button_press to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call31)
  %52 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %53 = load %struct.Preview_t*, %struct.Preview_t** @_preview, align 8
  %window = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %53, i32 0, i32 1
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %52, %struct._GtkWidget* %54, i32 1, i32 1, i32 0)
  %55 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call33 = call i8* @object_list_add_geometry_cb(%struct.ObjectList_t* %55, void (%struct.Object_t*, i8*)* @geometry_changed, i8* null)
  %56 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call34 = call i8* @object_list_add_update_cb(%struct.ObjectList_t* %56, void (%struct.Object_t*, i8*)* @data_changed, i8* null)
  %57 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call35 = call i8* @object_list_add_add_cb(%struct.ObjectList_t* %57, void (%struct.Object_t*, i8*)* @data_changed, i8* null)
  %58 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call36 = call i8* @object_list_add_remove_cb(%struct.ObjectList_t* %58, void (%struct.Object_t*, i8*)* @data_changed, i8* null)
  %59 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call37 = call i8* @object_list_add_move_cb(%struct.ObjectList_t* %59, void (%struct.Object_t*, i8*)* @data_changed, i8* null)
  %60 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call38 = call i8* @object_list_add_select_cb(%struct.ObjectList_t* %60, void (%struct.Object_t*, i8*)* @data_selected, i8* null)
  %61 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call39 = call %struct.Selection_t* @make_selection(%struct.ObjectList_t* %61)
  store %struct.Selection_t* %call39, %struct.Selection_t** @_selection, align 8
  %62 = load %struct.Selection_t*, %struct.Selection_t** @_selection, align 8
  %cmd_move_up = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %62, i32 0, i32 11
  store %struct.Command_t* ()* @factory_move_up, %struct.Command_t* ()** %cmd_move_up, align 8
  %63 = load %struct.Selection_t*, %struct.Selection_t** @_selection, align 8
  %cmd_move_down = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %63, i32 0, i32 12
  store %struct.Command_t* ()* @factory_move_down, %struct.Command_t* ()** %cmd_move_down, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call40)
  %66 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %67 = load %struct.Selection_t*, %struct.Selection_t** @_selection, align 8
  %container = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %67, i32 0, i32 2
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %container, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %66, %struct._GtkWidget* %68, i32 0, i32 0, i32 0)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %call42 = call %struct.StatusBar_t* @make_statusbar(%struct._GtkWidget* %69, %struct._GtkWidget* %70)
  store %struct.StatusBar_t* %call42, %struct.StatusBar_t** @_statusbar, align 8
  %71 = load %struct.StatusBar_t*, %struct.StatusBar_t** @_statusbar, align 8
  call void @statusbar_set_zoom(%struct.StatusBar_t* %71, i32 1)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %call43 = call %struct.MRU_t* @mru_create()
  store %struct.MRU_t* %call43, %struct.MRU_t** @_mru, align 8
  call void @init_preferences()
  call void @clear_map_info()
  %73 = load %struct.MRU_t*, %struct.MRU_t** @_mru, align 8
  %list = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %73, i32 0, i32 0
  %74 = load %struct._GList*, %struct._GList** %list, align 8
  %cmp = icmp eq %struct._GList* %74, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %75 = load %struct.MRU_t*, %struct.MRU_t** @_mru, align 8
  call void @menu_build_mru_items(%struct.MRU_t* %75)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @gtk_main()
  %76 = load i32, i32* @run_flag, align 4
  ret i32 %76
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @gimp_ui_init(i8*, i32) #1

declare %struct.ObjectList_t* @make_object_list() #1

declare %struct._GtkWidget* @gtk_window_new(i32) #1

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare void @gimp_help_connect(%struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*) #1

declare void @gtk_window_set_position(%struct._GtkWindow*, i32) #1

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @close_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @do_quit()
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @key_press_cb(%struct._GtkWidget* %widget, %struct._GdkEventKey* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventKey*, align 8
  %handled = alloca i32, align 4
  %shift = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %command = alloca %struct.Command_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventKey* %event, %struct._GdkEventKey** %event.addr, align 8
  store i32 0, i32* %handled, align 4
  %0 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %0, i32 0, i32 4
  %1 = load i32, i32* %state, align 4
  %and = and i32 %1, 1
  store i32 %and, i32* %shift, align 4
  %2 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %state1 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %2, i32 0, i32 4
  %3 = load i32, i32* %state1, align 4
  %and2 = and i32 %3, 4
  store i32 %and2, i32* %ctrl, align 4
  %4 = load i32, i32* @_timeout, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @_timeout, align 4
  %call = call i32 @g_source_remove(i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @_timeout, align 4
  %6 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %6, i32 0, i32 5
  %7 = load i32, i32* %keyval, align 4
  switch i32 %7, label %sw.epilog [
    i32 65361, label %sw.bb
    i32 65363, label %sw.bb.6
    i32 65362, label %sw.bb.11
    i32 65364, label %sw.bb.16
    i32 65289, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %if.end
  %8 = load i32, i32* %ctrl, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %sw.bb
  %9 = load i32, i32* %shift, align 4
  call void @move_sash_selected_objects(i32 -1, i32 0, i32 %9)
  br label %if.end.5

if.else:                                          ; preds = %sw.bb
  %10 = load i32, i32* %shift, align 4
  call void @move_selected_objects(i32 -1, i32 0, i32 %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  store i32 1, i32* %handled, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %11 = load i32, i32* %ctrl, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %sw.bb.6
  %12 = load i32, i32* %shift, align 4
  call void @move_sash_selected_objects(i32 1, i32 0, i32 %12)
  br label %if.end.10

if.else.9:                                        ; preds = %sw.bb.6
  %13 = load i32, i32* %shift, align 4
  call void @move_selected_objects(i32 1, i32 0, i32 %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.8
  store i32 1, i32* %handled, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %14 = load i32, i32* %ctrl, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %sw.bb.11
  %15 = load i32, i32* %shift, align 4
  call void @move_sash_selected_objects(i32 0, i32 -1, i32 %15)
  br label %if.end.15

if.else.14:                                       ; preds = %sw.bb.11
  %16 = load i32, i32* %shift, align 4
  call void @move_selected_objects(i32 0, i32 -1, i32 %16)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.13
  store i32 1, i32* %handled, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %17 = load i32, i32* %ctrl, align 4
  %tobool17 = icmp ne i32 %17, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %sw.bb.16
  %18 = load i32, i32* %shift, align 4
  call void @move_sash_selected_objects(i32 0, i32 1, i32 %18)
  br label %if.end.20

if.else.19:                                       ; preds = %sw.bb.16
  %19 = load i32, i32* %shift, align 4
  call void @move_selected_objects(i32 0, i32 1, i32 %19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  store i32 1, i32* %handled, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end
  %20 = load i32, i32* %shift, align 4
  %tobool22 = icmp ne i32 %20, 0
  br i1 %tobool22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %sw.bb.21
  %21 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call24 = call %struct.Command_t* @select_prev_command_new(%struct.ObjectList_t* %21)
  store %struct.Command_t* %call24, %struct.Command_t** %command, align 8
  br label %if.end.27

if.else.25:                                       ; preds = %sw.bb.21
  %22 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call26 = call %struct.Command_t* @select_next_command_new(%struct.ObjectList_t* %22)
  store %struct.Command_t* %call26, %struct.Command_t** %command, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.23
  %23 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  call void @command_execute(%struct.Command_t* %23)
  store i32 1, i32* %handled, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end.27, %if.end.20, %if.end.15, %if.end.10, %if.end.5
  %24 = load i32, i32* %handled, align 4
  %tobool28 = icmp ne i32 %24, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %sw.epilog
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %26 = bitcast %struct._GtkWidget* %25 to i8*
  call void @g_signal_stop_emission_by_name(i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %sw.epilog
  %27 = load i32, i32* %handled, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @key_release_cb(%struct._GtkWidget* %widget, %struct._GdkEventKey* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventKey*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventKey* %event, %struct._GdkEventKey** %event.addr, align 8
  %0 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %0, i32 0, i32 5
  %1 = load i32, i32* %keyval, align 4
  store i32 %1, i32* @_keyval, align 4
  %call = call i32 @g_timeout_add(i32 250, i32 (i8*)* @key_timeout_cb, i8* null)
  store i32 %call, i32* @_timeout, align 4
  ret i32 0
}

declare void @gtk_main_quit() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @init_stock_icons() #1

declare %struct.Menu_t* @make_menu(%struct._GtkWidget*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @make_toolbar(%struct._GtkWidget*, %struct._GtkWidget*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare %struct._GtkWidget* @make_tools(%struct._GtkWidget*) #1

declare %struct.Preview_t* @make_preview(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal i32 @preview_move(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %obj = alloca %struct.Object_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  %0 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %0, i32 0, i32 4
  %1 = load double, double* %x1, align 8
  %conv = fptosi double %1 to i32
  %2 = load i32, i32* @_zoom_factor, align 4
  %div = sdiv i32 %conv, %2
  store i32 %div, i32* %x, align 4
  %3 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y2 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %3, i32 0, i32 5
  %4 = load double, double* %y2, align 8
  %conv3 = fptosi double %4 to i32
  %5 = load i32, i32* @_zoom_factor, align 4
  %div4 = sdiv i32 %conv3, %5
  store i32 %div4, i32* %y, align 4
  %6 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %y, align 4
  %call = call %struct.Object_t* @object_list_find(%struct.ObjectList_t* %6, i32 %7, i32 %8)
  store %struct.Object_t* %call, %struct.Object_t** %obj, align 8
  %9 = load %struct.StatusBar_t*, %struct.StatusBar_t** @_statusbar, align 8
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %y, align 4
  call void @statusbar_set_xy(%struct.StatusBar_t* %9, i32 %10, i32 %11)
  %12 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %13 = load %struct.Object_t*, %struct.Object_t** @preview_move.prev_obj, align 8
  %cmp = icmp ne %struct.Object_t* %12, %13
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %14 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  store %struct.Object_t* %14, %struct.Object_t** @preview_move.prev_obj, align 8
  %15 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %tobool = icmp ne %struct.Object_t* %15, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %16 = load i32, i32* @_show_url, align 4
  %tobool6 = icmp ne i32 %16, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %17 = load %struct.StatusBar_t*, %struct.StatusBar_t** @_statusbar, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)) #4
  %18 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %url = getelementptr inbounds %struct.Object_t, %struct.Object_t* %18, i32 0, i32 5
  %19 = load i8*, i8** %url, align 8
  call void (%struct.StatusBar_t*, i8*, ...) @statusbar_set_status(%struct.StatusBar_t* %17, i8* %call8, i8* %19)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %20 = load %struct.StatusBar_t*, %struct.StatusBar_t** @_statusbar, align 8
  call void @statusbar_clear_status(%struct.StatusBar_t* %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @preview_enter(%struct._GtkWidget* %widget, %struct._GdkEventCrossing* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventCrossing*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventCrossing* %event, %struct._GdkEventCrossing** %event.addr, align 8
  %0 = load %struct.Preview_t*, %struct.Preview_t** @_preview, align 8
  %1 = load i32, i32* @_cursor, align 4
  %call = call i32 @preview_set_cursor(%struct.Preview_t* %0, i32 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @preview_leave(%struct._GtkWidget* %widget, %struct._GdkEventCrossing* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventCrossing*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventCrossing* %event, %struct._GdkEventCrossing** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @_dlg, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %0)
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call, %struct._GdkCursor* null)
  %1 = load %struct.StatusBar_t*, %struct.StatusBar_t** @_statusbar, align 8
  call void @statusbar_clear_xy(%struct.StatusBar_t* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)** @_button_press_func, align 8
  %tobool = icmp ne i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)** @_button_press_func, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %4 = load i8*, i8** @_button_press_param, align 8
  %call = call i32 %1(%struct._GtkWidget* %2, %struct._GdkEventButton* %3, i8* %4)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i8* @object_list_add_geometry_cb(%struct.ObjectList_t*, void (%struct.Object_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @geometry_changed(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @preview_redraw()
  ret void
}

declare i8* @object_list_add_update_cb(%struct.ObjectList_t*, void (%struct.Object_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @data_changed(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @preview_redraw()
  call void @set_all_sensitivities()
  ret void
}

declare i8* @object_list_add_add_cb(%struct.ObjectList_t*, void (%struct.Object_t*, i8*)*, i8*) #1

declare i8* @object_list_add_remove_cb(%struct.ObjectList_t*, void (%struct.Object_t*, i8*)*, i8*) #1

declare i8* @object_list_add_move_cb(%struct.ObjectList_t*, void (%struct.Object_t*, i8*)*, i8*) #1

declare i8* @object_list_add_select_cb(%struct.ObjectList_t*, void (%struct.Object_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @data_selected(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @set_all_sensitivities()
  ret void
}

declare %struct.Selection_t* @make_selection(%struct.ObjectList_t*) #1

; Function Attrs: nounwind uwtable
define internal %struct.Command_t* @factory_move_up() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call = call %struct.Command_t* @move_up_command_new(%struct.ObjectList_t* %0)
  ret %struct.Command_t* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.Command_t* @factory_move_down() #0 {
entry:
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call = call %struct.Command_t* @move_down_command_new(%struct.ObjectList_t* %0)
  ret %struct.Command_t* %call
}

declare %struct.StatusBar_t* @make_statusbar(%struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @init_preferences() #0 {
entry:
  %colormap = alloca %struct._GdkColormap*, align 8
  %colors = alloca %struct.ColorSelData_t*, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @_dlg, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %0)
  %call1 = call %struct._GdkColormap* @gdk_drawable_get_colormap(%struct._GdkDrawable* %call)
  store %struct._GdkColormap* %call1, %struct._GdkColormap** %colormap, align 8
  store %struct.ColorSelData_t* getelementptr inbounds (%struct.PreferencesData_t, %struct.PreferencesData_t* @_preferences, i32 0, i32 11), %struct.ColorSelData_t** %colors, align 8
  %1 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_fg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %1, i32 0, i32 0
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %normal_fg, i32 0, i32 1
  store i16 0, i16* %red, align 2
  %2 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_fg2 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %2, i32 0, i32 0
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %normal_fg2, i32 0, i32 2
  store i16 -1, i16* %green, align 2
  %3 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_fg3 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %3, i32 0, i32 0
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %normal_fg3, i32 0, i32 3
  store i16 0, i16* %blue, align 2
  %4 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_bg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %4, i32 0, i32 1
  %red4 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %normal_bg, i32 0, i32 1
  store i16 0, i16* %red4, align 2
  %5 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_bg5 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %5, i32 0, i32 1
  %green6 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %normal_bg5, i32 0, i32 2
  store i16 0, i16* %green6, align 2
  %6 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_bg7 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %6, i32 0, i32 1
  %blue8 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %normal_bg7, i32 0, i32 3
  store i16 -1, i16* %blue8, align 2
  %7 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_fg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %7, i32 0, i32 2
  %red9 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %selected_fg, i32 0, i32 1
  store i16 -1, i16* %red9, align 2
  %8 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_fg10 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %8, i32 0, i32 2
  %green11 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %selected_fg10, i32 0, i32 2
  store i16 0, i16* %green11, align 2
  %9 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_fg12 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %9, i32 0, i32 2
  %blue13 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %selected_fg12, i32 0, i32 3
  store i16 0, i16* %blue13, align 2
  %10 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_bg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %10, i32 0, i32 3
  %red14 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %selected_bg, i32 0, i32 1
  store i16 0, i16* %red14, align 2
  %11 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_bg15 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %11, i32 0, i32 3
  %green16 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %selected_bg15, i32 0, i32 2
  store i16 0, i16* %green16, align 2
  %12 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_bg17 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %12, i32 0, i32 3
  %blue18 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %selected_bg17, i32 0, i32 3
  store i16 -1, i16* %blue18, align 2
  %13 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_fg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %13, i32 0, i32 5
  %red19 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %interactive_fg, i32 0, i32 1
  store i16 -1, i16* %red19, align 2
  %14 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_fg20 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %14, i32 0, i32 5
  %green21 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %interactive_fg20, i32 0, i32 2
  store i16 0, i16* %green21, align 2
  %15 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_fg22 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %15, i32 0, i32 5
  %blue23 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %interactive_fg22, i32 0, i32 3
  store i16 -1, i16* %blue23, align 2
  %16 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_bg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %16, i32 0, i32 4
  %red24 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %interactive_bg, i32 0, i32 1
  store i16 -1, i16* %red24, align 2
  %17 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_bg25 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %17, i32 0, i32 4
  %green26 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %interactive_bg25, i32 0, i32 2
  store i16 -1, i16* %green26, align 2
  %18 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_bg27 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %18, i32 0, i32 4
  %blue28 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %interactive_bg27, i32 0, i32 3
  store i16 0, i16* %blue28, align 2
  %call29 = call i32 @preferences_load(%struct.PreferencesData_t* @_preferences)
  %19 = load %struct._GdkColormap*, %struct._GdkColormap** %colormap, align 8
  %20 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_fg30 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %20, i32 0, i32 0
  %call31 = call i32 @gdk_colormap_alloc_color(%struct._GdkColormap* %19, %struct._GdkColor* %normal_fg30, i32 0, i32 1)
  %21 = load %struct._GdkColormap*, %struct._GdkColormap** %colormap, align 8
  %22 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_bg32 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %22, i32 0, i32 1
  %call33 = call i32 @gdk_colormap_alloc_color(%struct._GdkColormap* %21, %struct._GdkColor* %normal_bg32, i32 0, i32 1)
  %23 = load %struct._GdkColormap*, %struct._GdkColormap** %colormap, align 8
  %24 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_fg34 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %24, i32 0, i32 2
  %call35 = call i32 @gdk_colormap_alloc_color(%struct._GdkColormap* %23, %struct._GdkColor* %selected_fg34, i32 0, i32 1)
  %25 = load %struct._GdkColormap*, %struct._GdkColormap** %colormap, align 8
  %26 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_bg36 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %26, i32 0, i32 3
  %call37 = call i32 @gdk_colormap_alloc_color(%struct._GdkColormap* %25, %struct._GdkColor* %selected_bg36, i32 0, i32 1)
  %27 = load %struct.MRU_t*, %struct.MRU_t** @_mru, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.PreferencesData_t, %struct.PreferencesData_t* @_preferences, i32 0, i32 10), align 4
  call void @mru_set_size(%struct.MRU_t* %27, i32 %28)
  %29 = load i32, i32* getelementptr inbounds (%struct.PreferencesData_t, %struct.PreferencesData_t* @_preferences, i32 0, i32 9), align 4
  call void @command_list_set_undo_level(i32 %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clear_map_info() #0 {
entry:
  %author = alloca i8*, align 8
  %call = call i8* @g_get_real_name()
  store i8* %call, i8** %author, align 8
  %0 = load i8*, i8** %author, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @g_get_user_name()
  store i8* %call1, i8** %author, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** @_image_name, align 8
  %call2 = call i8* @g_strreplace(i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 1), i8* %2)
  %call3 = call i8* @g_strreplace(i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 2), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0))
  %3 = load i8*, i8** %author, align 8
  %call4 = call i8* @g_strreplace(i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 3), i8* %3)
  %call5 = call i8* @g_strreplace(i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 4), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0))
  %call6 = call i8* @g_strreplace(i8** getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 5), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0))
  %4 = load i32, i32* getelementptr inbounds (%struct.PreferencesData_t, %struct.PreferencesData_t* @_preferences, i32 0, i32 0), align 4
  store i32 %4, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 9), align 4
  ret void
}

declare void @menu_build_mru_items(%struct.MRU_t*) #1

declare void @gtk_main() #1

declare i32 @g_source_remove(i32) #1

; Function Attrs: nounwind uwtable
define internal void @move_sash_selected_objects(i32 %dx, i32 %dy, i32 %fast) #0 {
entry:
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %fast.addr = alloca i32, align 4
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  store i32 %fast, i32* %fast.addr, align 4
  %0 = load i32, i32* %fast.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dx.addr, align 4
  %mul = mul nsw i32 %1, 5
  store i32 %mul, i32* %dx.addr, align 4
  %2 = load i32, i32* %dy.addr, align 4
  %mul1 = mul nsw i32 %2, 5
  store i32 %mul1, i32* %dy.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %4 = load i32, i32* %dx.addr, align 4
  %5 = load i32, i32* %dy.addr, align 4
  call void @object_list_move_sash_selected(%struct.ObjectList_t* %3, i32 %4, i32 %5)
  call void @preview_redraw()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @move_selected_objects(i32 %dx, i32 %dy, i32 %fast) #0 {
entry:
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %fast.addr = alloca i32, align 4
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  store i32 %fast, i32* %fast.addr, align 4
  %0 = load i32, i32* %fast.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dx.addr, align 4
  %mul = mul nsw i32 %1, 5
  store i32 %mul, i32* %dx.addr, align 4
  %2 = load i32, i32* %dy.addr, align 4
  %mul1 = mul nsw i32 %2, 5
  store i32 %mul1, i32* %dy.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %dx.addr, align 4
  %4 = load i32, i32* @_dx, align 4
  %add = add nsw i32 %4, %3
  store i32 %add, i32* @_dx, align 4
  %5 = load i32, i32* %dy.addr, align 4
  %6 = load i32, i32* @_dy, align 4
  %add2 = add nsw i32 %6, %5
  store i32 %add2, i32* @_dy, align 4
  %7 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %8 = load i32, i32* %dx.addr, align 4
  %9 = load i32, i32* %dy.addr, align 4
  call void @object_list_move_selected(%struct.ObjectList_t* %7, i32 %8, i32 %9)
  call void @preview_redraw()
  ret void
}

declare %struct.Command_t* @select_prev_command_new(%struct.ObjectList_t*) #1

declare %struct.Command_t* @select_next_command_new(%struct.ObjectList_t*) #1

declare void @g_signal_stop_emission_by_name(i8*, i8*) #1

declare void @object_list_move_sash_selected(%struct.ObjectList_t*, i32, i32) #1

declare void @object_list_move_selected(%struct.ObjectList_t*, i32, i32) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @key_timeout_cb(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @_keyval, align 4
  switch i32 %0, label %sw.epilog [
    i32 65361, label %sw.bb
    i32 65363, label %sw.bb
    i32 65362, label %sw.bb
    i32 65364, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %2 = load i32, i32* @_dx, align 4
  %3 = load i32, i32* @_dy, align 4
  %call = call %struct.Command_t* @move_selected_command_new(%struct.ObjectList_t* %1, i32 %2, i32 %3)
  call void @command_list_add(%struct.Command_t* %call)
  store i32 0, i32* @_dy, align 4
  store i32 0, i32* @_dx, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb
  call void @preview_redraw()
  ret i32 0
}

declare void @command_list_add(%struct.Command_t*) #1

declare %struct.Command_t* @move_selected_command_new(%struct.ObjectList_t*, i32, i32) #1

declare void @statusbar_set_xy(%struct.StatusBar_t*, i32, i32) #1

declare void @statusbar_clear_xy(%struct.StatusBar_t*) #1

; Function Attrs: nounwind uwtable
define internal void @set_all_sensitivities() #0 {
entry:
  %count = alloca i32, align 4
  %0 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %call = call i32 @object_list_nr_selected(%struct.ObjectList_t* %0)
  store i32 %call, i32* %count, align 4
  %1 = load i32, i32* %count, align 4
  call void @menu_shapes_selected(i32 %1)
  ret void
}

declare i32 @object_list_nr_selected(%struct.ObjectList_t*) #1

declare void @menu_shapes_selected(i32) #1

declare %struct.Command_t* @move_up_command_new(%struct.ObjectList_t*) #1

declare %struct.Command_t* @move_down_command_new(%struct.ObjectList_t*) #1

declare %struct._GdkColormap* @gdk_drawable_get_colormap(%struct._GdkDrawable*) #1

declare i32 @preferences_load(%struct.PreferencesData_t*) #1

declare i32 @gdk_colormap_alloc_color(%struct._GdkColormap*, %struct._GdkColor*, i32, i32) #1

declare void @mru_set_size(%struct.MRU_t*, i32) #1

declare void @command_list_set_undo_level(i32) #1

declare i8* @g_get_real_name() #1

declare i8* @g_get_user_name() #1

; Function Attrs: nounwind uwtable
define internal i32 @arrow_on_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %1 = bitcast %struct._GdkEventButton* %0 to %union._GdkEvent*
  %call = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  call void @do_popup_menu(%struct._GdkEventButton* %2)
  br label %if.end.7

if.else:                                          ; preds = %entry
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 8
  %4 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.else
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 4
  %cmp2 = icmp eq i32 %6, 5
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.then.1
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 4
  %8 = load double, double* %x, align 8
  %conv = fptosi double %8 to i32
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %9, i32 0, i32 5
  %10 = load double, double* %y, align 8
  %conv4 = fptosi double %10 to i32
  call void @edit_shape(i32 %conv, i32 %conv4)
  br label %if.end

if.else.5:                                        ; preds = %if.then.1
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  call void @select_shape(%struct._GtkWidget* %11, %struct._GdkEventButton* %12)
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.then
  ret i32 0
}

declare i32 @gdk_event_triggers_context_menu(%union._GdkEvent*) #1

declare void @menu_set_zoom(i32) #1

; Function Attrs: nounwind uwtable
define internal void @do_data_changed_dialog(void (i8*)* %continue_cb, i8* %param) #0 {
entry:
  %continue_cb.addr = alloca void (i8*)*, align 8
  %param.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store void (i8*)* %continue_cb, void (i8*)** %continue_cb.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (%struct._GtkWindow*, i32, i32, i32, i8*, ...) @gtk_message_dialog_new(%struct._GtkWindow* null, i32 2, i32 2, i32 4, i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_message_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkMessageDialog*
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i32 0, i32 0)) #4
  call void (%struct._GtkMessageDialog*, i8*, ...) @gtk_message_dialog_format_secondary_text(%struct._GtkMessageDialog* %2, i8* %call4)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  %call7 = call i32 @gtk_dialog_run(%struct._GtkDialog* %5)
  %cmp = icmp eq i32 %call7, -8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** %continue_cb.addr, align 8
  %7 = load i8*, i8** %param.addr, align 8
  call void %6(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %8)
  ret void
}

declare %struct._GtkWidget* @gtk_message_dialog_new(%struct._GtkWindow*, i32, i32, i32, i8*, ...) #1

declare void @gtk_message_dialog_format_secondary_text(%struct._GtkMessageDialog*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_message_dialog_get_type() #3

declare i32 @gtk_dialog_run(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @close_current() #0 {
entry:
  %0 = load %struct.Selection_t*, %struct.Selection_t** @_selection, align 8
  call void @selection_freeze(%struct.Selection_t* %0)
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  call void @object_list_remove_all(%struct.ObjectList_t* %1)
  %2 = load %struct.Selection_t*, %struct.Selection_t** @_selection, align 8
  call void @selection_thaw(%struct.Selection_t* %2)
  call void @clear_map_info()
  call void @main_set_title(i8* null)
  call void @set_all_sensitivities()
  call void @preview_redraw()
  %3 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %changed = getelementptr inbounds %struct.ObjectList_t, %struct.ObjectList_t* %3, i32 0, i32 1
  store i32 0, i32* %changed, align 4
  call void @command_list_remove_all()
  ret void
}

declare void @object_list_remove_all(%struct.ObjectList_t*) #1

declare void @command_list_remove_all() #1

declare void @preferences_save(%struct.PreferencesData_t*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

declare void @g_free(i8*) #1

declare void @object_list_write_ncsa(%struct.ObjectList_t*, i8*, void (i8*, i8*, ...)*) #1

; Function Attrs: nounwind uwtable
define internal void @write_cern_comment(i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %1 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %0(i8* %1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i32 0, i32 0))
  ret void
}

declare void @object_list_write_cern(%struct.ObjectList_t*, i8*, void (i8*, i8*, ...)*) #1

declare void @object_list_write_csim(%struct.ObjectList_t*, i8*, void (i8*, i8*, ...)*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare noalias i8* @g_filename_display_basename(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gtk_window_set_title(%struct._GtkWindow*, i8*) #1

declare i32 @load_csim(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @do_image_size_changed_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %per_x = alloca i32, align 4
  %per_y = alloca i32, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i32 0, i32 0)) #4
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0)) #4
  %call2 = call %struct._GtkWidget* (%struct._GtkWindow*, i32, i32, i32, i8*, ...) @gtk_message_dialog_new_with_markup(%struct._GtkWindow* null, i32 2, i32 2, i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.64, i32 0, i32 0), i8* %call, i8* %call1)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  %call5 = call i32 @gtk_dialog_run(%struct._GtkDialog* %2)
  %cmp = icmp eq i32 %call5, -8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @_image_width, align 4
  %mul = mul nsw i32 %3, 100
  %4 = load i32, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 6), align 4
  %div = sdiv i32 %mul, %4
  store i32 %div, i32* %per_x, align 4
  %5 = load i32, i32* @_image_height, align 4
  %mul6 = mul nsw i32 %5, 100
  %6 = load i32, i32* getelementptr inbounds (%struct.MapInfo_t, %struct.MapInfo_t* @_map_info, i32 0, i32 7), align 4
  %div7 = sdiv i32 %mul6, %6
  store i32 %div7, i32* %per_y, align 4
  %7 = load %struct.ObjectList_t*, %struct.ObjectList_t** @_shapes, align 8
  %8 = load i32, i32* %per_x, align 4
  %9 = load i32, i32* %per_y, align 4
  call void @object_list_resize(%struct.ObjectList_t* %7, i32 %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @preview_redraw()
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %10)
  ret void
}

declare i32 @load_ncsa(i8*) #1

declare i32 @load_cern(i8*) #1

declare void @mru_set_first(%struct.MRU_t*, i8*) #1

declare %struct._GtkWidget* @gtk_message_dialog_new_with_markup(%struct._GtkWindow*, i32, i32, i32, i8*, ...) #1

declare void @object_list_resize(%struct.ObjectList_t*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
