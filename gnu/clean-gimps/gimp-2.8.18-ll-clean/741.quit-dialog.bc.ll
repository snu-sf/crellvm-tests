; ModuleID = './app/dialogs/quit-dialog.bc'
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
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._QuitDialog = type { %struct._Gimp*, %struct._GimpContainer*, %struct._GimpContext*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpMessageBox*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32 }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpContainerTreeView = type { %struct._GimpContainerBox, %struct._GtkTreeModel*, i32, [16 x i64], %struct._GtkTreeView*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._Gimp*, %struct._GimpContainerTreeViewPriv* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpContainerTreeViewPriv = type opaque
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpContainerView = type opaque
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpCanvasItem = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.quit_close_all_dialog_new = private unnamed_addr constant [26 x i8] c"quit_close_all_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"close-all-dialog\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"dialog->images != NULL\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Quit GIMP\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Close All Images\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"gimp-file-quit\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"gimp-file-close-all\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"quit-dialog\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"<Primary>D\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"activate-item\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"If you quit GIMP now, these changes will be lost.\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"If you close these images now, changes will be lost.\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"markup\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Exported to %s\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"%s\0A<i>%s</i>\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"There is one image with unsaved changes:\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"There are %d images with unsaved changes:\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Press %s to quit.\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Press %s to close all images.\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"gtk-quit\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"use-stock\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"Press %s to discard all changes and quit.\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"Press %s to discard all changes and close all images.\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"_Discard Changes\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"<i><small>%s</small></i>\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @quit_dialog_new(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GtkWidget* @quit_close_all_dialog_new(%struct._Gimp* %0, i32 1)
  ret %struct._GtkWidget* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @quit_close_all_dialog_new(%struct._Gimp* %gimp, i32 %do_quit) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %do_quit.addr = alloca i32, align 4
  %dialog = alloca %struct._QuitDialog*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %renderer = alloca %struct._GtkCellRenderer*, align 8
  %dnd_widget = alloca %struct._GtkWidget*, align 8
  %accel_group = alloca %struct._GtkAccelGroup*, align 8
  %closure = alloca %struct._GClosure*, align 8
  %rows = alloca i32, align 4
  %view_size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %do_quit, i32* %do_quit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.quit_close_all_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call noalias i8* @g_malloc0_n(i64 1, i64 80)
  %13 = bitcast i8* %call11 to %struct._QuitDialog*
  store %struct._QuitDialog* %13, %struct._QuitDialog** %dialog, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %15 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %gimp12 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %15, i32 0, i32 0
  store %struct._Gimp* %14, %struct._Gimp** %gimp12, align 8
  %16 = load i32, i32* %do_quit.addr, align 4
  %17 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %do_quit13 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %17, i32 0, i32 3
  store i32 %16, i32* %do_quit13, align 4
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call14 = call %struct._GimpContainer* @gimp_displays_get_dirty_images(%struct._Gimp* %18)
  %19 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %images = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %19, i32 0, i32 1
  store %struct._GimpContainer* %call14, %struct._GimpContainer** %images, align 8
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call15 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %21)
  %call16 = call %struct._GimpContext* @gimp_context_new(%struct._Gimp* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), %struct._GimpContext* %call15)
  %22 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %context = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %22, i32 0, i32 2
  store %struct._GimpContext* %call16, %struct._GimpContext** %context, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %do.end
  %23 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %images18 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %23, i32 0, i32 1
  %24 = load %struct._GimpContainer*, %struct._GimpContainer** %images18, align 8
  %cmp19 = icmp ne %struct._GimpContainer* %24, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.quit_close_all_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %25 = load i32, i32* %do_quit.addr, align 4
  %tobool24 = icmp ne i32 %25, 0
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.23
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)) #7
  br label %cond.end

cond.false:                                       ; preds = %do.end.23
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call25, %cond.true ], [ %call26, %cond.false ]
  %26 = load i32, i32* %do_quit.addr, align 4
  %tobool27 = icmp ne i32 %26, 0
  %cond28 = select i1 %tobool27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)
  %call29 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %cond, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* %cond28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 -6, i8* null)
  %27 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %dialog30 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %27, i32 0, i32 4
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %dialog30, align 8
  %28 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %dialog31 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %28, i32 0, i32 4
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog31, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  %32 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %33 = bitcast %struct._QuitDialog* %32 to i8*
  call void @g_object_set_data_full(%struct._GObject* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* %33, void (i8*)* bitcast (void (%struct._QuitDialog*)* @quit_close_all_dialog_free to void (i8*)*))
  %34 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %dialog33 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %34, i32 0, i32 4
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog33, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_dialog_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call34)
  %37 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkDialog*
  %call36 = call %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i32 -5)
  %38 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %ok_button = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %38, i32 0, i32 5
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %ok_button, align 8
  %39 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %dialog37 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %39, i32 0, i32 4
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog37, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_dialog_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call38)
  %42 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %42, i32 -5, i32 -6, i32 -1)
  %43 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %dialog40 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %43, i32 0, i32 4
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog40, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %46 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %47 = bitcast %struct._QuitDialog* %46 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._QuitDialog*)* @quit_close_all_dialog_response to void ()*), i8* %47, void (i8*, %struct._GClosure*)* null, i32 0)
  %call42 = call %struct._GtkAccelGroup* @gtk_accel_group_new()
  store %struct._GtkAccelGroup* %call42, %struct._GtkAccelGroup** %accel_group, align 8
  %48 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %dialog43 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %48, i32 0, i32 4
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog43, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_window_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call44)
  %51 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkWindow*
  %52 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group, align 8
  call void @gtk_window_add_accel_group(%struct._GtkWindow* %51, %struct._GtkAccelGroup* %52)
  %53 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group, align 8
  %54 = bitcast %struct._GtkAccelGroup* %53 to i8*
  call void @g_object_unref(i8* %54)
  %55 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %dialog46 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %55, i32 0, i32 4
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog46, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 80)
  %58 = bitcast %struct._GTypeInstance* %call47 to %struct._GObject*
  %call48 = call %struct._GClosure* @g_closure_new_object(i32 32, %struct._GObject* %58)
  store %struct._GClosure* %call48, %struct._GClosure** %closure, align 8
  %59 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  call void @g_closure_set_marshal(%struct._GClosure* %59, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @quit_close_all_dialog_accel_marshal)
  %60 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %accel_key = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %60, i32 0, i32 9
  %61 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %accel_mods = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %61, i32 0, i32 10
  call void @gtk_accelerator_parse(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32* %accel_key, i32* %accel_mods)
  %62 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group, align 8
  %63 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %accel_key49 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %63, i32 0, i32 9
  %64 = load i32, i32* %accel_key49, align 4
  %65 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %accel_mods50 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %65, i32 0, i32 10
  %66 = load i32, i32* %accel_mods50, align 4
  %67 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  call void @gtk_accel_group_connect(%struct._GtkAccelGroup* %62, i32 %64, i32 %66, i32 0, %struct._GClosure* %67)
  %68 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %dialog51 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %68, i32 0, i32 4
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog51, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_message_dialog_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call52)
  %71 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %71, i32 0, i32 1
  %72 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %73 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %box54 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %73, i32 0, i32 6
  store %struct._GimpMessageBox* %72, %struct._GimpMessageBox** %box54, align 8
  %74 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %74, i32 0, i32 1
  %75 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %layer_preview_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %75, i32 0, i32 43
  %76 = load i32, i32* %layer_preview_size, align 4
  store i32 %76, i32* %view_size, align 4
  %77 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %images55 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %77, i32 0, i32 1
  %78 = load %struct._GimpContainer*, %struct._GimpContainer** %images55, align 8
  %call56 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %78)
  %cmp57 = icmp sgt i32 %call56, 6
  br i1 %cmp57, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.end
  br label %cond.end.69

cond.false.59:                                    ; preds = %cond.end
  %79 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %images60 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %79, i32 0, i32 1
  %80 = load %struct._GimpContainer*, %struct._GimpContainer** %images60, align 8
  %call61 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %80)
  %cmp62 = icmp slt i32 %call61, 3
  br i1 %cmp62, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.false.59
  br label %cond.end.67

cond.false.64:                                    ; preds = %cond.false.59
  %81 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %images65 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %81, i32 0, i32 1
  %82 = load %struct._GimpContainer*, %struct._GimpContainer** %images65, align 8
  %call66 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %82)
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.64, %cond.true.63
  %cond68 = phi i32 [ 3, %cond.true.63 ], [ %call66, %cond.false.64 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %cond.true.58
  %cond70 = phi i32 [ 6, %cond.true.58 ], [ %cond68, %cond.end.67 ]
  store i32 %cond70, i32* %rows, align 4
  %83 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %images71 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %83, i32 0, i32 1
  %84 = load %struct._GimpContainer*, %struct._GimpContainer** %images71, align 8
  %85 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %context72 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %85, i32 0, i32 2
  %86 = load %struct._GimpContext*, %struct._GimpContext** %context72, align 8
  %87 = load i32, i32* %view_size, align 4
  %call73 = call %struct._GtkWidget* @gimp_container_tree_view_new(%struct._GimpContainer* %84, %struct._GimpContext* %86, i32 %87, i32 1)
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %view, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_container_tree_view_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call74)
  %90 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %90, %struct._GimpContainerTreeView** %tree_view, align 8
  %91 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %call76 = call %struct._GtkCellRenderer* @gimp_container_tree_view_get_name_cell(%struct._GimpContainerTreeView* %91)
  store %struct._GtkCellRenderer* %call76, %struct._GtkCellRenderer** %renderer, align 8
  %92 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %main_column = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %92, i32 0, i32 5
  %93 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %main_column, align 8
  %94 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  call void @gtk_tree_view_column_set_cell_data_func(%struct._GtkTreeViewColumn* %93, %struct._GtkCellRenderer* %94, void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @quit_close_all_dialog_name_cell_func, i8* null, void (i8*)* null)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_container_box_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call77)
  %97 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpContainerBox*
  %98 = load i32, i32* %rows, align 4
  %99 = load i32, i32* %view_size, align 4
  %add = add nsw i32 %99, 2
  %mul = mul nsw i32 %98, %add
  call void @gimp_container_box_set_size_request(%struct._GimpContainerBox* %97, i32 -1, i32 %mul)
  %100 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %box79 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %100, i32 0, i32 6
  %101 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box79, align 8
  %102 = bitcast %struct._GimpMessageBox* %101 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_box_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call80)
  %103 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkBox*
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %103, %struct._GtkWidget* %104, i32 1, i32 1, i32 0)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %105)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %107 = bitcast %struct._GtkWidget* %106 to i8*
  %108 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %109 = bitcast %struct._QuitDialog* %108 to i8*
  %call82 = call i64 @g_signal_connect_data(i8* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GimpImage*, i8*, %struct._QuitDialog*)* @quit_close_all_dialog_image_activated to void ()*), i8* %109, void (i8*, %struct._GClosure*)* null, i32 0)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call83 = call i64 @gimp_container_view_interface_get_type() #5
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call83)
  %112 = bitcast %struct._GTypeInstance* %call84 to %struct._GimpContainerView*
  %call85 = call %struct._GtkWidget* @gimp_container_view_get_dnd_widget(%struct._GimpContainerView* %112)
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %dnd_widget, align 8
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %dnd_widget, align 8
  call void @gimp_dnd_xds_source_add(%struct._GtkWidget* %113, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)* bitcast (%struct._GimpViewable* (%struct._GtkWidget*)* @gimp_dnd_get_drag_data to %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*), i8* null)
  %114 = load i32, i32* %do_quit.addr, align 4
  %tobool86 = icmp ne i32 %114, 0
  br i1 %tobool86, label %if.then.87, label %if.else.90

if.then.87:                                       ; preds = %cond.end.69
  %call88 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0)) #7
  %call89 = call %struct._GtkWidget* @gtk_label_new(i8* %call88)
  %115 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %lost_label = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %115, i32 0, i32 7
  store %struct._GtkWidget* %call89, %struct._GtkWidget** %lost_label, align 8
  br label %if.end.94

if.else.90:                                       ; preds = %cond.end.69
  %call91 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i32 0, i32 0)) #7
  %call92 = call %struct._GtkWidget* @gtk_label_new(i8* %call91)
  %116 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %lost_label93 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %116, i32 0, i32 7
  store %struct._GtkWidget* %call92, %struct._GtkWidget** %lost_label93, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.90, %if.then.87
  %117 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %lost_label95 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %117, i32 0, i32 7
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %lost_label95, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_misc_get_type() #5
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call96)
  %120 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %120, float 0.000000e+00, float 5.000000e-01)
  %121 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %lost_label98 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %121, i32 0, i32 7
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %lost_label98, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_label_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call99)
  %124 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %124, i32 1)
  %125 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %box101 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %125, i32 0, i32 6
  %126 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box101, align 8
  %127 = bitcast %struct._GimpMessageBox* %126 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_box_get_type() #5
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call102)
  %128 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkBox*
  %129 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %lost_label104 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %129, i32 0, i32 7
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %lost_label104, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %128, %struct._GtkWidget* %130, i32 0, i32 0, i32 0)
  %131 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %lost_label105 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %131, i32 0, i32 7
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %lost_label105, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %132)
  %call106 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  %133 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %hint_label = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %133, i32 0, i32 8
  store %struct._GtkWidget* %call106, %struct._GtkWidget** %hint_label, align 8
  %134 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %hint_label107 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %134, i32 0, i32 8
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_label107, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_misc_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call108)
  %137 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %137, float 0.000000e+00, float 5.000000e-01)
  %138 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %hint_label110 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %138, i32 0, i32 8
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_label110, align 8
  %140 = bitcast %struct._GtkWidget* %139 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_label_get_type() #5
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call111)
  %141 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %141, i32 1)
  %142 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %box113 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %142, i32 0, i32 6
  %143 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box113, align 8
  %144 = bitcast %struct._GimpMessageBox* %143 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_box_get_type() #5
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call114)
  %145 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkBox*
  %146 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %hint_label116 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %146, i32 0, i32 8
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_label116, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %145, %struct._GtkWidget* %147, i32 0, i32 0, i32 0)
  %148 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %hint_label117 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %148, i32 0, i32 8
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_label117, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %149)
  %150 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %images118 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %150, i32 0, i32 1
  %151 = load %struct._GimpContainer*, %struct._GimpContainer** %images118, align 8
  %152 = bitcast %struct._GimpContainer* %151 to i8*
  %153 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %dialog119 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %153, i32 0, i32 4
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog119, align 8
  %155 = bitcast %struct._GtkWidget* %154 to i8*
  %call120 = call i64 @g_signal_connect_object(i8* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpObject*, %struct._GtkWidget*)* @quit_close_all_dialog_container_changed to void ()*), i8* %155, i32 0)
  %156 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %images121 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %156, i32 0, i32 1
  %157 = load %struct._GimpContainer*, %struct._GimpContainer** %images121, align 8
  %158 = bitcast %struct._GimpContainer* %157 to i8*
  %159 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %dialog122 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %159, i32 0, i32 4
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog122, align 8
  %161 = bitcast %struct._GtkWidget* %160 to i8*
  %call123 = call i64 @g_signal_connect_object(i8* %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpObject*, %struct._GtkWidget*)* @quit_close_all_dialog_container_changed to void ()*), i8* %161, i32 0)
  %162 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %images124 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %162, i32 0, i32 1
  %163 = load %struct._GimpContainer*, %struct._GimpContainer** %images124, align 8
  %164 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %dialog125 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %164, i32 0, i32 4
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog125, align 8
  call void @quit_close_all_dialog_container_changed(%struct._GimpContainer* %163, %struct._GimpObject* null, %struct._GtkWidget* %165)
  %166 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %dialog126 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %166, i32 0, i32 4
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog126, align 8
  store %struct._GtkWidget* %167, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.94, %if.else.21, %if.else.9
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %168
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @close_all_dialog_new(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GtkWidget* @quit_close_all_dialog_new(%struct._Gimp* %0, i32 0)
  ret %struct._GtkWidget* %call
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare noalias i8* @g_malloc0_n(i64, i64) #3

declare %struct._GimpContainer* @gimp_displays_get_dirty_images(%struct._Gimp*) #3

declare %struct._GimpContext* @gimp_context_new(%struct._Gimp*, i8*, %struct._GimpContext*) #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @quit_close_all_dialog_free(%struct._QuitDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct._QuitDialog*, align 8
  store %struct._QuitDialog* %dialog, %struct._QuitDialog** %dialog.addr, align 8
  %0 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog.addr, align 8
  %images = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %0, i32 0, i32 1
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %2 = bitcast %struct._GimpContainer* %1 to i8*
  call void @g_object_unref(i8* %2)
  %3 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %3, i32 0, i32 2
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %5 = bitcast %struct._GimpContext* %4 to i8*
  call void @g_object_unref(i8* %5)
  %6 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog.addr, align 8
  %7 = bitcast %struct._QuitDialog* %6 to i8*
  call void @g_free(i8* %7)
  ret void
}

declare %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog*, i8*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @quit_close_all_dialog_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._QuitDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct._QuitDialog*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %do_quit = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._QuitDialog* %dialog, %struct._QuitDialog** %dialog.addr, align 8
  %0 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog.addr, align 8
  %gimp1 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %0, i32 0, i32 0
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  store %struct._Gimp* %1, %struct._Gimp** %gimp, align 8
  %2 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog.addr, align 8
  %do_quit2 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %2, i32 0, i32 3
  %3 = load i32, i32* %do_quit2, align 4
  store i32 %3, i32* %do_quit, align 4
  %4 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog.addr, align 8
  %dialog3 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %4, i32 0, i32 4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog3, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %5)
  %6 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %6, -5
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %do_quit, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_exit(%struct._Gimp* %8, i32 1)
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_displays_close(%struct._Gimp* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

declare %struct._GtkAccelGroup* @gtk_accel_group_new() #3

declare void @gtk_window_add_accel_group(%struct._GtkWindow*, %struct._GtkAccelGroup*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @g_object_unref(i8*) #3

declare %struct._GClosure* @g_closure_new_object(i32, %struct._GObject*) #3

declare void @g_closure_set_marshal(%struct._GClosure*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal void @quit_close_all_dialog_accel_marshal(%struct._GClosure* %closure, %struct._GValue* %return_value, i32 %n_param_values, %struct._GValue* %param_values, i8* %invocation_hint, i8* %marshal_data) #0 {
entry:
  %closure.addr = alloca %struct._GClosure*, align 8
  %return_value.addr = alloca %struct._GValue*, align 8
  %n_param_values.addr = alloca i32, align 4
  %param_values.addr = alloca %struct._GValue*, align 8
  %invocation_hint.addr = alloca i8*, align 8
  %marshal_data.addr = alloca i8*, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store %struct._GValue* %return_value, %struct._GValue** %return_value.addr, align 8
  store i32 %n_param_values, i32* %n_param_values.addr, align 4
  store %struct._GValue* %param_values, %struct._GValue** %param_values.addr, align 8
  store i8* %invocation_hint, i8** %invocation_hint.addr, align 8
  store i8* %marshal_data, i8** %marshal_data.addr, align 8
  %0 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %data = getelementptr inbounds %struct._GClosure, %struct._GClosure* %0, i32 0, i32 2
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkDialog*
  call void @gtk_dialog_response(%struct._GtkDialog* %3, i32 -5)
  %4 = load %struct._GValue*, %struct._GValue** %return_value.addr, align 8
  call void @g_value_set_boolean(%struct._GValue* %4, i32 1)
  ret void
}

declare void @gtk_accelerator_parse(i8*, i32*, i32*) #3

declare void @gtk_accel_group_connect(%struct._GtkAccelGroup*, i32, i32, i32, %struct._GClosure*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #1

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #3

declare %struct._GtkWidget* @gimp_container_tree_view_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_view_get_type() #1

declare %struct._GtkCellRenderer* @gimp_container_tree_view_get_name_cell(%struct._GimpContainerTreeView*) #3

declare void @gtk_tree_view_column_set_cell_data_func(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define internal void @quit_close_all_dialog_name_cell_func(%struct._GtkTreeViewColumn* %tree_column, %struct._GtkCellRenderer* %cell, %struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter, i8* %data) #0 {
entry:
  %tree_column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %name = alloca i8*, align 8
  %uri = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %escaped_name = alloca i8*, align 8
  %escaped_filename = alloca i8*, align 8
  %exported = alloca i8*, align 8
  %markup = alloca i8*, align 8
  store %struct._GtkTreeViewColumn* %tree_column, %struct._GtkTreeViewColumn** %tree_column.addr, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1, i32 0, %struct._GimpViewRenderer** %renderer, i32 1, i8** %name, i32 -1)
  %2 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %2, i32 0, i32 3
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %4 = bitcast %struct._GimpViewable* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %5, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call i32 @gimp_image_is_export_dirty(%struct._GimpImage* %6)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %8 = bitcast %struct._GtkCellRenderer* %7 to i8*
  %9 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* %9, i8* null)
  br label %if.end.13

if.else:                                          ; preds = %entry
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call i8* @gimp_image_get_exported_uri(%struct._GimpImage* %10)
  store i8* %call3, i8** %uri, align 8
  %11 = load i8*, i8** %uri, align 8
  %tobool4 = icmp ne i8* %11, null
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call i8* @gimp_image_get_imported_uri(%struct._GimpImage* %12)
  store i8* %call6, i8** %uri, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  %13 = load i8*, i8** %uri, align 8
  %call7 = call i8* @file_utils_uri_to_utf8_filename(i8* %13)
  store i8* %call7, i8** %filename, align 8
  %14 = load i8*, i8** %name, align 8
  %call8 = call i8* @g_markup_escape_text(i8* %14, i64 -1)
  store i8* %call8, i8** %escaped_name, align 8
  %15 = load i8*, i8** %filename, align 8
  %call9 = call i8* @g_markup_escape_text(i8* %15, i64 -1)
  store i8* %call9, i8** %escaped_filename, align 8
  %16 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %16)
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0)) #7
  %17 = load i8*, i8** %escaped_filename, align 8
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call10, i8* %17)
  store i8* %call11, i8** %exported, align 8
  %18 = load i8*, i8** %escaped_name, align 8
  %19 = load i8*, i8** %exported, align 8
  %call12 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* %18, i8* %19)
  store i8* %call12, i8** %markup, align 8
  %20 = load i8*, i8** %exported, align 8
  call void @g_free(i8* %20)
  %21 = load i8*, i8** %escaped_name, align 8
  call void @g_free(i8* %21)
  %22 = load i8*, i8** %escaped_filename, align 8
  call void @g_free(i8* %22)
  %23 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %24 = bitcast %struct._GtkCellRenderer* %23 to i8*
  %25 = load i8*, i8** %markup, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* %25, i8* null)
  %26 = load i8*, i8** %markup, align 8
  call void @g_free(i8* %26)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %27 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %28 = bitcast %struct._GimpViewRenderer* %27 to i8*
  call void @g_object_unref(i8* %28)
  %29 = load i8*, i8** %name, align 8
  call void @g_free(i8* %29)
  ret void
}

declare void @gimp_container_box_set_size_request(%struct._GimpContainerBox*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_container_box_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

; Function Attrs: nounwind uwtable
define internal void @quit_close_all_dialog_image_activated(%struct._GimpContainerView* %view, %struct._GimpImage* %image, i8* %insert_data, %struct._QuitDialog* %dialog) #0 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %insert_data.addr = alloca i8*, align 8
  %dialog.addr = alloca %struct._QuitDialog*, align 8
  %list = alloca %struct._GList*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  store %struct._QuitDialog* %dialog, %struct._QuitDialog** %dialog.addr, align 8
  %0 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog.addr, align 8
  %gimp = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %0, i32 0, i32 0
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %1)
  store %struct._GList* %call, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %5, %struct._GimpDisplay** %display, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %6)
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp eq %struct._GimpImage* %call1, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  call void @gimp_display_shell_present(%struct._GimpDisplayShell* %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %9, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %11, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GtkWidget* @gimp_container_view_get_dnd_widget(%struct._GimpContainerView*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #1

declare void @gimp_dnd_xds_source_add(%struct._GtkWidget*, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*, i8*) #3

declare %struct._GimpViewable* @gimp_dnd_get_drag_data(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #1

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @quit_close_all_dialog_container_changed(%struct._GimpContainer* %images, %struct._GimpObject* %image, %struct._GtkWidget* %widget) #0 {
entry:
  %images.addr = alloca %struct._GimpContainer*, align 8
  %image.addr = alloca %struct._GimpObject*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._QuitDialog*, align 8
  %num_images = alloca i32, align 4
  %accel_string = alloca i8*, align 8
  %hint = alloca i8*, align 8
  %markup = alloca i8*, align 8
  %icon = alloca %struct._GtkWidget*, align 8
  store %struct._GimpContainer* %images, %struct._GimpContainer** %images.addr, align 8
  store %struct._GimpObject* %image, %struct._GimpObject** %image.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._QuitDialog*
  store %struct._QuitDialog* %3, %struct._QuitDialog** %dialog, align 8
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %images.addr, align 8
  %call2 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %4)
  store i32 %call2, i32* %num_images, align 4
  %5 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %accel_key = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %5, i32 0, i32 9
  %6 = load i32, i32* %accel_key, align 4
  %7 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %accel_mods = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %7, i32 0, i32 10
  %8 = load i32, i32* %accel_mods, align 4
  %call3 = call i8* @gtk_accelerator_get_label(i32 %6, i32 %8)
  store i8* %call3, i8** %accel_string, align 8
  %9 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %box = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %9, i32 0, i32 6
  %10 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %11 = load i32, i32* %num_images, align 4
  %conv = sext i32 %11 to i64
  %call4 = call i8* @ngettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i32 0, i32 0), i64 %conv) #7
  %12 = load i32, i32* %num_images, align 4
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %10, i8* %call4, i32 %12)
  %13 = load i32, i32* %num_images, align 4
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then, label %if.else.14

if.then:                                          ; preds = %entry
  %14 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %lost_label = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %14, i32 0, i32 7
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %lost_label, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %15)
  %16 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %do_quit = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %16, i32 0, i32 3
  %17 = load i32, i32* %do_quit, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0)) #7
  %18 = load i8*, i8** %accel_string, align 8
  %call8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call7, i8* %18)
  store i8* %call8, i8** %hint, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0)) #7
  %19 = load i8*, i8** %accel_string, align 8
  %call10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call9, i8* %19)
  store i8* %call10, i8** %hint, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %20 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %ok_button = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %20, i32 0, i32 5
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %ok_button, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %do_quit11 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %23, i32 0, i32 3
  %24 = load i32, i32* %do_quit11, align 4
  %tobool12 = icmp ne i32 %24, 0
  %cond = select i1 %tobool12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0)
  call void (i8*, i8*, ...) @g_object_set(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* %cond, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* null)
  %25 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %ok_button13 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %25, i32 0, i32 5
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %ok_button13, align 8
  call void @gtk_widget_grab_default(%struct._GtkWidget* %26)
  br label %if.end.31

if.else.14:                                       ; preds = %entry
  %27 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %do_quit15 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %27, i32 0, i32 3
  %28 = load i32, i32* %do_quit15, align 4
  %tobool16 = icmp ne i32 %28, 0
  br i1 %tobool16, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.else.14
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0)) #7
  %29 = load i8*, i8** %accel_string, align 8
  %call19 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call18, i8* %29)
  store i8* %call19, i8** %hint, align 8
  br label %if.end.23

if.else.20:                                       ; preds = %if.else.14
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.33, i32 0, i32 0)) #7
  %30 = load i8*, i8** %accel_string, align 8
  %call22 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call21, i8* %30)
  store i8* %call22, i8** %hint, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.17
  %31 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %lost_label24 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %31, i32 0, i32 7
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %lost_label24, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %call25 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %icon, align 8
  %33 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %ok_button26 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %33, i32 0, i32 5
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %ok_button26, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0)) #7
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %icon, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* %call27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), %struct._GtkWidget* %36, i8* null)
  %37 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %dialog28 = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %37, i32 0, i32 4
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog28, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_dialog_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call29)
  %40 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %40, i32 -6)
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.23, %if.end
  %41 = load i8*, i8** %hint, align 8
  %call32 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0), i8* %41)
  store i8* %call32, i8** %markup, align 8
  %42 = load %struct._QuitDialog*, %struct._QuitDialog** %dialog, align 8
  %hint_label = getelementptr inbounds %struct._QuitDialog, %struct._QuitDialog* %42, i32 0, i32 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_label, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_label_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call33)
  %45 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkLabel*
  %46 = load i8*, i8** %markup, align 8
  call void @gtk_label_set_markup(%struct._GtkLabel* %45, i8* %46)
  %47 = load i8*, i8** %markup, align 8
  call void @g_free(i8* %47)
  %48 = load i8*, i8** %hint, align 8
  call void @g_free(i8* %48)
  %49 = load i8*, i8** %accel_string, align 8
  call void @g_free(i8* %49)
  ret void
}

declare void @g_free(i8*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @gimp_exit(%struct._Gimp*, i32) #3

declare void @gimp_displays_close(%struct._Gimp*) #3

declare void @gtk_dialog_response(%struct._GtkDialog*, i32) #3

declare void @g_value_set_boolean(%struct._GValue*, i32) #3

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

declare i32 @gimp_image_is_export_dirty(%struct._GimpImage*) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare i8* @gimp_image_get_exported_uri(%struct._GimpImage*) #3

declare i8* @gimp_image_get_imported_uri(%struct._GimpImage*) #3

declare i8* @file_utils_uri_to_utf8_filename(i8*) #3

declare i8* @g_markup_escape_text(i8*, i64) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare %struct._GList* @gimp_get_display_iter(%struct._Gimp*) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare void @gimp_display_shell_present(%struct._GimpDisplayShell*) #3

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare i8* @gtk_accelerator_get_label(i32, i32) #3

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #4

declare void @gtk_widget_hide(%struct._GtkWidget*) #3

declare void @gtk_widget_grab_default(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #3

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #3

declare void @gtk_label_set_markup(%struct._GtkLabel*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
