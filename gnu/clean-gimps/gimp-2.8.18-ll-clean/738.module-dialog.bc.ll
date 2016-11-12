; ModuleID = './app/dialogs/module-dialog.bc'
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
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type { %struct._GObject, %struct._GList*, i8*, i32 }
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
%struct.ModuleDialog = type { %struct._Gimp*, %struct._GimpModule*, %struct._GtkListStore*, %struct._GtkWidget*, %struct._GtkWidget*, [5 x %struct._GtkWidget*], %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpModule = type { %struct._GTypeModule, i8*, i32, i32, i32, i32, %struct._GModule*, %struct._GimpModuleInfo*, i8*, %struct._GimpModuleInfo* (%struct._GTypeModule*)*, i32 (%struct._GTypeModule*)* }
%struct._GTypeModule = type { %struct._GObject, i32, %struct._GSList*, %struct._GSList*, i8* }
%struct._GModule = type opaque
%struct._GimpModuleInfo = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
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
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkCellRendererToggle = type { %struct._GtkCellRenderer, i8 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.module_dialog_new = private unnamed_addr constant [18 x i8] c"module_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Module Manager\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"gimp-modules\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"gimp-module-dialog\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"gtk-refresh\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"You will have to restart GIMP for the changes to take effect.\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Module\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"module-modified\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"%s: bad tree path?\00", align 1
@__func__.dialog_enabled_toggled = private unnamed_addr constant [23 x i8] c"dialog_enabled_toggled\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"%s: Tried to remove a module not in the dialog's list.\00", align 1
@__func__.dialog_info_remove = private unnamed_addr constant [19 x i8] c"dialog_info_remove\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Only in memory\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"No longer available\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@dialog_info_init.text = internal constant [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0)], align 16
@.str.24 = private unnamed_addr constant [8 x i8] c"Author:\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Version:\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Date:\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Copyright:\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Location:\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @module_dialog_new(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %shell = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %sw = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct.ModuleDialog*, align 8
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %col = alloca %struct._GtkTreeViewColumn*, align 8
  %rend = alloca %struct._GtkCellRenderer*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.module_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call noalias i8* @g_slice_alloc0(i64 96)
  %13 = bitcast i8* %call11 to %struct.ModuleDialog*
  store %struct.ModuleDialog* %13, %struct.ModuleDialog** %dialog, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %15 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %gimp12 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %15, i32 0, i32 0
  store %struct._Gimp* %14, %struct._Gimp** %gimp12, align 8
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #5
  %call14 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 -7, i8* null)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %shell, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_dialog_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %18, i32 -7, i32 1, i32 -1)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %22 = bitcast %struct.ModuleDialog* %21 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.ModuleDialog*)* @dialog_response to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %vbox, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call19)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %25, i32 12)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_dialog_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call21)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkDialog*
  %call23 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %28)
  %29 = bitcast %struct._GtkWidget* %call23 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call24)
  %30 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %30, %struct._GtkWidget* %31, i32 1, i32 1, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i32 0, i32 0)) #5
  %call27 = call %struct._GtkWidget* @gimp_hint_box_new(i8* %call26)
  %33 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %hint = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %33, i32 0, i32 3
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %hint, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call28)
  %36 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %37 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %hint30 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %37, i32 0, i32 3
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %hint30, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %38, i32 0, i32 0, i32 0)
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %write_modulerc = getelementptr inbounds %struct._Gimp, %struct._Gimp* %39, i32 0, i32 24
  %40 = load i32, i32* %write_modulerc, align 4
  %tobool31 = icmp ne i32 %40, 0
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %do.end
  %41 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %hint33 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %41, i32 0, i32 3
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %hint33, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %do.end
  %call35 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %sw, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_scrolled_window_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call36)
  %45 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %45, i32 1)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_scrolled_window_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call38)
  %48 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %48, i32 1, i32 1)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call40)
  %51 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %52, i32 1, i32 1, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %53, i32 124, i32 100)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %call42 = call i64 @gimp_module_get_type() #6
  %call43 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 3, i64 64, i64 20, i64 %call42)
  %55 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %list = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %55, i32 0, i32 2
  store %struct._GtkListStore* %call43, %struct._GtkListStore** %list, align 8
  %56 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %list44 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %56, i32 0, i32 2
  %57 = load %struct._GtkListStore*, %struct._GtkListStore** %list44, align 8
  %58 = bitcast %struct._GtkListStore* %57 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_tree_model_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call45)
  %59 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTreeModel*
  %call47 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %59)
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %view, align 8
  %60 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %list48 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %60, i32 0, i32 2
  %61 = load %struct._GtkListStore*, %struct._GtkListStore** %list48, align 8
  %62 = bitcast %struct._GtkListStore* %61 to i8*
  call void @g_object_unref(i8* %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_tree_view_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call49)
  %65 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %65, i32 0)
  %66 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db = getelementptr inbounds %struct._Gimp, %struct._Gimp* %66, i32 0, i32 23
  %67 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db, align 8
  %modules = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %67, i32 0, i32 1
  %68 = load %struct._GList*, %struct._GList** %modules, align 8
  %69 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %70 = bitcast %struct.ModuleDialog* %69 to i8*
  call void @g_list_foreach(%struct._GList* %68, void (i8*, i8*)* @make_list_item, i8* %70)
  %call51 = call %struct._GtkCellRenderer* @gtk_cell_renderer_toggle_new()
  store %struct._GtkCellRenderer* %call51, %struct._GtkCellRenderer** %rend, align 8
  %71 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  %72 = bitcast %struct._GtkCellRenderer* %71 to i8*
  %73 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %74 = bitcast %struct.ModuleDialog* %73 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererToggle*, i8*, %struct.ModuleDialog*)* @dialog_enabled_toggled to void ()*), i8* %74, void (i8*, %struct._GClosure*)* null, i32 0)
  %call53 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call53, %struct._GtkTreeViewColumn** %col, align 8
  %75 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %76 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %75, %struct._GtkCellRenderer* %76, i32 0)
  %77 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %78 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  call void @gtk_tree_view_column_add_attribute(%struct._GtkTreeViewColumn* %77, %struct._GtkCellRenderer* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 1)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_tree_view_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call54)
  %81 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTreeView*
  %82 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %call56 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %81, %struct._GtkTreeViewColumn* %82)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_tree_view_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call57)
  %85 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkTreeView*
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)) #5
  %call60 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call61 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %85, i32 1, i8* %call59, %struct._GtkCellRenderer* %call60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 0, i8* null)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_container_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call62)
  %88 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkContainer*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %88, %struct._GtkWidget* %89)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %call64 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 5, i32 0)
  %91 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %table = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %91, i32 0, i32 4
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %table, align 8
  %92 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %table65 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %92, i32 0, i32 4
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %table65, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_table_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call66)
  %95 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %95, i32 6)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_box_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call68)
  %98 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkBox*
  %99 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %table70 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %99, i32 0, i32 4
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %table70, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %98, %struct._GtkWidget* %100, i32 0, i32 0, i32 0)
  %101 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %table71 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %101, i32 0, i32 4
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %table71, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %102)
  %call72 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  %103 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %error_box = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %103, i32 0, i32 6
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %error_box, align 8
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_box_get_type() #6
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call73)
  %106 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkBox*
  %107 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %error_box75 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %107, i32 0, i32 6
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %error_box75, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %106, %struct._GtkWidget* %108, i32 0, i32 0, i32 0)
  %call76 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %image, align 8
  %109 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %error_box77 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %109, i32 0, i32 6
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %error_box77, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_box_get_type() #6
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call78)
  %112 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkBox*
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %112, %struct._GtkWidget* %113, i32 0, i32 0, i32 0)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %114)
  %call80 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  %115 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %error_label = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %115, i32 0, i32 7
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %error_label, align 8
  %116 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %error_label81 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %116, i32 0, i32 7
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %error_label81, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_misc_get_type() #6
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call82)
  %119 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %119, float 0.000000e+00, float 5.000000e-01)
  %120 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %error_box84 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %120, i32 0, i32 6
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %error_box84, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_box_get_type() #6
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call85)
  %123 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkBox*
  %124 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %error_label87 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %124, i32 0, i32 7
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %error_label87, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %123, %struct._GtkWidget* %125, i32 1, i32 1, i32 0)
  %126 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %error_label88 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %126, i32 0, i32 7
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %error_label88, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %127)
  %128 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %129 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %table89 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %129, i32 0, i32 4
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %table89, align 8
  call void @dialog_info_init(%struct.ModuleDialog* %128, %struct._GtkWidget* %130)
  %131 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db90 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %131, i32 0, i32 23
  %132 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db90, align 8
  %133 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %selected = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %133, i32 0, i32 1
  %134 = load %struct._GimpModule*, %struct._GimpModule** %selected, align 8
  %135 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  call void @dialog_info_update(%struct._GimpModuleDB* %132, %struct._GimpModule* %134, %struct.ModuleDialog* %135)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_tree_view_get_type() #6
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call91)
  %138 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkTreeView*
  %call93 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %138)
  store %struct._GtkTreeSelection* %call93, %struct._GtkTreeSelection** %sel, align 8
  %139 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %140 = bitcast %struct._GtkTreeSelection* %139 to i8*
  %141 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %142 = bitcast %struct.ModuleDialog* %141 to i8*
  %call94 = call i64 @g_signal_connect_data(i8* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct.ModuleDialog*)* @dialog_select_callback to void ()*), i8* %142, void (i8*, %struct._GClosure*)* null, i32 0)
  %143 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %list95 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %143, i32 0, i32 2
  %144 = load %struct._GtkListStore*, %struct._GtkListStore** %list95, align 8
  %145 = bitcast %struct._GtkListStore* %144 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_tree_model_get_type() #6
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call96)
  %146 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkTreeModel*
  %call98 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %146, %struct._GtkTreeIter* %iter)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.34
  %147 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %147, %struct._GtkTreeIter* %iter)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.34
  %148 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db102 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %148, i32 0, i32 23
  %149 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db102, align 8
  %150 = bitcast %struct._GimpModuleDB* %149 to i8*
  %151 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %152 = bitcast %struct.ModuleDialog* %151 to i8*
  %call103 = call i64 @g_signal_connect_data(i8* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpModuleDB*, %struct._GimpModule*, %struct.ModuleDialog*)* @dialog_info_add to void ()*), i8* %152, void (i8*, %struct._GClosure*)* null, i32 0)
  %153 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db104 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %153, i32 0, i32 23
  %154 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db104, align 8
  %155 = bitcast %struct._GimpModuleDB* %154 to i8*
  %156 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %157 = bitcast %struct.ModuleDialog* %156 to i8*
  %call105 = call i64 @g_signal_connect_data(i8* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GimpModuleDB*, %struct._GimpModule*, %struct.ModuleDialog*)* @dialog_info_remove to void ()*), i8* %157, void (i8*, %struct._GClosure*)* null, i32 0)
  %158 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db106 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %158, i32 0, i32 23
  %159 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db106, align 8
  %160 = bitcast %struct._GimpModuleDB* %159 to i8*
  %161 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %162 = bitcast %struct.ModuleDialog* %161 to i8*
  %call107 = call i64 @g_signal_connect_data(i8* %160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpModuleDB*, %struct._GimpModule*, %struct.ModuleDialog*)* @dialog_info_update to void ()*), i8* %162, void (i8*, %struct._GClosure*)* null, i32 0)
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %164 = bitcast %struct._GtkWidget* %163 to i8*
  %165 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %166 = bitcast %struct.ModuleDialog* %165 to i8*
  %call108 = call i64 @g_signal_connect_data(i8* %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.ModuleDialog*)* @dialog_destroy_callback to void ()*), i8* %166, void (i8*, %struct._GClosure*)* null, i32 0)
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  store %struct._GtkWidget* %167, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.101, %if.else.9
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %168
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @dialog_response(%struct._GtkWidget* %widget, i32 %response_id, %struct.ModuleDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct.ModuleDialog*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.ModuleDialog* %dialog, %struct.ModuleDialog** %dialog.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %gimp = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %1, i32 0, i32 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_modules_refresh(%struct._Gimp* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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

declare %struct._GtkWidget* @gimp_hint_box_new(i8*) #3

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #3

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #3

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_module_get_type() #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #1

declare void @g_object_unref(i8*) #3

declare void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #1

declare void @g_list_foreach(%struct._GList*, void (i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @make_list_item(i8* %data, i8* %user_data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %module = alloca %struct._GimpModule*, align 8
  %dialog = alloca %struct.ModuleDialog*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpModule*
  store %struct._GimpModule* %1, %struct._GimpModule** %module, align 8
  %2 = load i8*, i8** %user_data.addr, align 8
  %3 = bitcast i8* %2 to %struct.ModuleDialog*
  store %struct.ModuleDialog* %3, %struct.ModuleDialog** %dialog, align 8
  %4 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %selected = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %4, i32 0, i32 1
  %5 = load %struct._GimpModule*, %struct._GimpModule** %selected, align 8
  %tobool = icmp ne %struct._GimpModule* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %7 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %selected1 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %7, i32 0, i32 1
  store %struct._GimpModule* %6, %struct._GimpModule** %selected1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %list = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %8, i32 0, i32 2
  %9 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %9, %struct._GtkTreeIter* %iter)
  %10 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog, align 8
  %11 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  call void @dialog_list_item_update(%struct.ModuleDialog* %10, %struct._GtkTreeIter* %iter, %struct._GimpModule* %11)
  ret void
}

declare %struct._GtkCellRenderer* @gtk_cell_renderer_toggle_new() #3

; Function Attrs: nounwind uwtable
define internal void @dialog_enabled_toggled(%struct._GtkCellRendererToggle* %celltoggle, i8* %path_string, %struct.ModuleDialog* %dialog) #0 {
entry:
  %celltoggle.addr = alloca %struct._GtkCellRendererToggle*, align 8
  %path_string.addr = alloca i8*, align 8
  %dialog.addr = alloca %struct.ModuleDialog*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %module = alloca %struct._GimpModule*, align 8
  store %struct._GtkCellRendererToggle* %celltoggle, %struct._GtkCellRendererToggle** %celltoggle.addr, align 8
  store i8* %path_string, i8** %path_string.addr, align 8
  store %struct.ModuleDialog* %dialog, %struct.ModuleDialog** %dialog.addr, align 8
  store %struct._GimpModule* null, %struct._GimpModule** %module, align 8
  %0 = load i8*, i8** %path_string.addr, align 8
  %call = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %0)
  store %struct._GtkTreePath* %call, %struct._GtkTreePath** %path, align 8
  %1 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %list = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %1, i32 0, i32 2
  %2 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  %3 = bitcast %struct._GtkListStore* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_tree_model_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTreeModel*
  %5 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call3 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %5)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.dialog_enabled_toggled, i32 0, i32 0))
  br label %if.end.10

if.end:                                           ; preds = %entry
  %6 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %6)
  %7 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %list4 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %7, i32 0, i32 2
  %8 = load %struct._GtkListStore*, %struct._GtkListStore** %list4, align 8
  %9 = bitcast %struct._GtkListStore* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_tree_model_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %10, %struct._GtkTreeIter* %iter, i32 2, %struct._GimpModule** %module, i32 -1)
  %11 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %tobool7 = icmp ne %struct._GimpModule* %11, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %12 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %13 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %load_inhibit = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %13, i32 0, i32 5
  %14 = load i32, i32* %load_inhibit, align 4
  %tobool9 = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool9, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gimp_module_set_load_inhibit(%struct._GimpModule* %12, i32 %lnot.ext)
  %15 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %16 = bitcast %struct._GimpModule* %15 to i8*
  call void @g_object_unref(i8* %16)
  %17 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %gimp = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %17, i32 0, i32 0
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %write_modulerc = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 24
  store i32 1, i32* %write_modulerc, align 4
  %19 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %hint = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %19, i32 0, i32 3
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hint, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then, %if.then.8, %if.end
  ret void
}

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new() #3

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #3

declare void @gtk_tree_view_column_add_attribute(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i8*, i32) #3

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #3

declare i32 @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) #3

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #3

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @dialog_info_init(%struct.ModuleDialog* %dialog, %struct._GtkWidget* %table) #0 {
entry:
  %dialog.addr = alloca %struct.ModuleDialog*, align 8
  %table.addr = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  store %struct.ModuleDialog* %dialog, %struct.ModuleDialog** %dialog.addr, align 8
  store %struct._GtkWidget* %table, %struct._GtkWidget** %table.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* @dialog_info_init.text, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i8* @gettext(i8* %2) #5
  %call2 = call %struct._GtkWidget* @gtk_label_new(i8* %call)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %label, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_misc_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %5, float 0.000000e+00, float 5.000000e-01)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_table_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTable*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  call void @gtk_table_attach(%struct._GtkTable* %8, %struct._GtkWidget* %9, i32 0, i32 1, i32 %10, i32 %add, i32 6, i32 6, i32 0, i32 2)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call7 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0))
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %label9 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %14, i32 0, i32 5
  %arrayidx10 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %label9, i32 0, i64 %idxprom8
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %arrayidx10, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %label12 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %16, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %label12, i32 0, i64 %idxprom11
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx13, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_misc_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %19, float 0.000000e+00, float 5.000000e-01)
  %20 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %label17 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %21, i32 0, i32 5
  %arrayidx18 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %label17, i32 0, i64 %idxprom16
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx18, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_label_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkLabel*
  call void @gtk_label_set_ellipsize(%struct._GtkLabel* %24, i32 3)
  %25 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %table21 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %25, i32 0, i32 4
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table21, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call22)
  %28 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  %29 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %29 to i64
  %30 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %label25 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %30, i32 0, i32 5
  %arrayidx26 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %label25, i32 0, i64 %idxprom24
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx26, align 8
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %33, 1
  call void @gtk_table_attach(%struct._GtkTable* %28, %struct._GtkWidget* %31, i32 1, i32 2, i32 %32, i32 %add27, i32 5, i32 6, i32 0, i32 2)
  %34 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %label29 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %35, i32 0, i32 5
  %arrayidx30 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %label29, i32 0, i64 %idxprom28
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx30, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_info_update(%struct._GimpModuleDB* %db, %struct._GimpModule* %module, %struct.ModuleDialog* %dialog) #0 {
entry:
  %db.addr = alloca %struct._GimpModuleDB*, align 8
  %module.addr = alloca %struct._GimpModule*, align 8
  %dialog.addr = alloca %struct.ModuleDialog*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %text = alloca [5 x i8*], align 16
  %location = alloca i8*, align 8
  %iter_valid = alloca i32, align 4
  %i = alloca i32, align 4
  %show_error = alloca i32, align 4
  %this = alloca %struct._GimpModule*, align 8
  store %struct._GimpModuleDB* %db, %struct._GimpModuleDB** %db.addr, align 8
  store %struct._GimpModule* %module, %struct._GimpModule** %module.addr, align 8
  store %struct.ModuleDialog* %dialog, %struct.ModuleDialog** %dialog.addr, align 8
  %0 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %list = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %0, i32 0, i32 2
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  %2 = bitcast %struct._GtkListStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %3, %struct._GtkTreeModel** %model, align 8
  %4 = bitcast [5 x i8*]* %text to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 40, i32 16, i1 false)
  store i8* null, i8** %location, align 8
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call2 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %5, %struct._GtkTreeIter* %iter)
  store i32 %call2, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %iter_valid, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter, i32 2, %struct._GimpModule** %this, i32 -1)
  %8 = load %struct._GimpModule*, %struct._GimpModule** %this, align 8
  %tobool3 = icmp ne %struct._GimpModule* %8, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct._GimpModule*, %struct._GimpModule** %this, align 8
  %10 = bitcast %struct._GimpModule* %9 to i8*
  call void @g_object_unref(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load %struct._GimpModule*, %struct._GimpModule** %this, align 8
  %12 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %cmp = icmp eq %struct._GimpModule* %11, %12
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %for.end

if.end.5:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %13 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call6 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %13, %struct._GtkTreeIter* %iter)
  store i32 %call6, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.4, %for.cond
  %14 = load i32, i32* %iter_valid, align 4
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  %15 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %16 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  call void @dialog_list_item_update(%struct.ModuleDialog* %15, %struct._GtkTreeIter* %iter, %struct._GimpModule* %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.end
  %17 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %18 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %selected = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %18, i32 0, i32 1
  %19 = load %struct._GimpModule*, %struct._GimpModule** %selected, align 8
  %cmp10 = icmp ne %struct._GimpModule* %17, %19
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  br label %return

if.end.12:                                        ; preds = %if.end.9
  %20 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %tobool13 = icmp ne %struct._GimpModule* %20, null
  br i1 %tobool13, label %if.end.24, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.20, %if.then.14
  %21 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %21, 5
  br i1 %cmp16, label %for.body.17, label %for.end.21

for.body.17:                                      ; preds = %for.cond.15
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %label = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %23, i32 0, i32 5
  %arrayidx = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %label, i32 0, i64 %idxprom
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_label_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %26, i8* null)
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.17
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.15

for.end.21:                                       ; preds = %for.cond.15
  %28 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %error_label = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %28, i32 0, i32 7
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %error_label, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_label_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call22)
  %31 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %31, i8* null)
  %32 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %error_box = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %32, i32 0, i32 6
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %error_box, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %33)
  br label %return

if.end.24:                                        ; preds = %if.end.12
  %34 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %on_disk = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %34, i32 0, i32 4
  %35 = load i32, i32* %on_disk, align 4
  %tobool25 = icmp ne i32 %35, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %36 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %filename = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %36, i32 0, i32 1
  %37 = load i8*, i8** %filename, align 8
  %call27 = call noalias i8* @g_filename_display_name(i8* %37)
  store i8* %call27, i8** %location, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %38 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %info = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %38, i32 0, i32 7
  %39 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info, align 8
  %tobool29 = icmp ne %struct._GimpModuleInfo* %39, null
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.28
  %40 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %info31 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %40, i32 0, i32 7
  %41 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info31, align 8
  %author = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %41, i32 0, i32 2
  %42 = load i8*, i8** %author, align 8
  %arrayidx32 = getelementptr inbounds [5 x i8*], [5 x i8*]* %text, i32 0, i64 0
  store i8* %42, i8** %arrayidx32, align 8
  %43 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %info33 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %43, i32 0, i32 7
  %44 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info33, align 8
  %version = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %44, i32 0, i32 3
  %45 = load i8*, i8** %version, align 8
  %arrayidx34 = getelementptr inbounds [5 x i8*], [5 x i8*]* %text, i32 0, i64 1
  store i8* %45, i8** %arrayidx34, align 8
  %46 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %info35 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %46, i32 0, i32 7
  %47 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info35, align 8
  %date = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %47, i32 0, i32 5
  %48 = load i8*, i8** %date, align 8
  %arrayidx36 = getelementptr inbounds [5 x i8*], [5 x i8*]* %text, i32 0, i64 2
  store i8* %48, i8** %arrayidx36, align 8
  %49 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %info37 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %49, i32 0, i32 7
  %50 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info37, align 8
  %copyright = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %50, i32 0, i32 4
  %51 = load i8*, i8** %copyright, align 8
  %arrayidx38 = getelementptr inbounds [5 x i8*], [5 x i8*]* %text, i32 0, i64 3
  store i8* %51, i8** %arrayidx38, align 8
  %52 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %on_disk39 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %52, i32 0, i32 4
  %53 = load i32, i32* %on_disk39, align 4
  %tobool40 = icmp ne i32 %53, 0
  br i1 %tobool40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %54 = load i8*, i8** %location, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.30
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %54, %cond.true ], [ %call41, %cond.false ]
  %arrayidx42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %text, i32 0, i64 4
  store i8* %cond, i8** %arrayidx42, align 8
  br label %if.end.51

if.else:                                          ; preds = %if.end.28
  %55 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %on_disk43 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %55, i32 0, i32 4
  %56 = load i32, i32* %on_disk43, align 4
  %tobool44 = icmp ne i32 %56, 0
  br i1 %tobool44, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %if.else
  %57 = load i8*, i8** %location, align 8
  br label %cond.end.48

cond.false.46:                                    ; preds = %if.else
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0)) #5
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.46, %cond.true.45
  %cond49 = phi i8* [ %57, %cond.true.45 ], [ %call47, %cond.false.46 ]
  %arrayidx50 = getelementptr inbounds [5 x i8*], [5 x i8*]* %text, i32 0, i64 4
  store i8* %cond49, i8** %arrayidx50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %cond.end.48, %cond.end
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.69, %if.end.51
  %58 = load i32, i32* %i, align 4
  %cmp53 = icmp slt i32 %58, 5
  br i1 %cmp53, label %for.body.54, label %for.end.71

for.body.54:                                      ; preds = %for.cond.52
  %59 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %59 to i64
  %60 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %label56 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %60, i32 0, i32 5
  %arrayidx57 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %label56, i32 0, i64 %idxprom55
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx57, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_label_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call58)
  %63 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkLabel*
  %64 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %64 to i64
  %arrayidx61 = getelementptr inbounds [5 x i8*], [5 x i8*]* %text, i32 0, i64 %idxprom60
  %65 = load i8*, i8** %arrayidx61, align 8
  %tobool62 = icmp ne i8* %65, null
  br i1 %tobool62, label %cond.true.63, label %cond.false.66

cond.true.63:                                     ; preds = %for.body.54
  %66 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %66 to i64
  %arrayidx65 = getelementptr inbounds [5 x i8*], [5 x i8*]* %text, i32 0, i64 %idxprom64
  %67 = load i8*, i8** %arrayidx65, align 8
  br label %cond.end.67

cond.false.66:                                    ; preds = %for.body.54
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.63
  %cond68 = phi i8* [ %67, %cond.true.63 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), %cond.false.66 ]
  call void @gtk_label_set_text(%struct._GtkLabel* %63, i8* %cond68)
  br label %for.inc.69

for.inc.69:                                       ; preds = %cond.end.67
  %68 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %68, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond.52

for.end.71:                                       ; preds = %for.cond.52
  %69 = load i8*, i8** %location, align 8
  call void @g_free(i8* %69)
  %70 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %state = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %70, i32 0, i32 3
  %71 = load i32, i32* %state, align 4
  %cmp72 = icmp eq i32 %71, 0
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end.71
  %72 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %last_module_error = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %72, i32 0, i32 8
  %73 = load i8*, i8** %last_module_error, align 8
  %tobool73 = icmp ne i8* %73, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end.71
  %74 = phi i1 [ false, %for.end.71 ], [ %tobool73, %land.rhs ]
  %land.ext = zext i1 %74 to i32
  store i32 %land.ext, i32* %show_error, align 4
  %75 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %error_label74 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %75, i32 0, i32 7
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %error_label74, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_label_get_type() #6
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call75)
  %78 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkLabel*
  %79 = load i32, i32* %show_error, align 4
  %tobool77 = icmp ne i32 %79, 0
  br i1 %tobool77, label %cond.true.78, label %cond.false.80

cond.true.78:                                     ; preds = %land.end
  %80 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %last_module_error79 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %80, i32 0, i32 8
  %81 = load i8*, i8** %last_module_error79, align 8
  br label %cond.end.81

cond.false.80:                                    ; preds = %land.end
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.80, %cond.true.78
  %cond82 = phi i8* [ %81, %cond.true.78 ], [ null, %cond.false.80 ]
  call void @gtk_label_set_text(%struct._GtkLabel* %78, i8* %cond82)
  %82 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %error_box83 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %82, i32 0, i32 6
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %error_box83, align 8
  %84 = load i32, i32* %show_error, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %83, i32 %84)
  br label %return

return:                                           ; preds = %cond.end.81, %for.end.21, %if.then.11
  ret void
}

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #3

; Function Attrs: nounwind uwtable
define internal void @dialog_select_callback(%struct._GtkTreeSelection* %sel, %struct.ModuleDialog* %dialog) #0 {
entry:
  %sel.addr = alloca %struct._GtkTreeSelection*, align 8
  %dialog.addr = alloca %struct.ModuleDialog*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %module = alloca %struct._GimpModule*, align 8
  store %struct._GtkTreeSelection* %sel, %struct._GtkTreeSelection** %sel.addr, align 8
  store %struct.ModuleDialog* %dialog, %struct.ModuleDialog** %dialog.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** null, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %list = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %1, i32 0, i32 2
  %2 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  %3 = bitcast %struct._GtkListStore* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_tree_model_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %iter, i32 2, %struct._GimpModule** %module, i32 -1)
  %5 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %tobool3 = icmp ne %struct._GimpModule* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %7 = bitcast %struct._GimpModule* %6 to i8*
  call void @g_object_unref(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %8 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %selected = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %8, i32 0, i32 1
  %9 = load %struct._GimpModule*, %struct._GimpModule** %selected, align 8
  %10 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %cmp = icmp eq %struct._GimpModule* %9, %10
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %if.end.9

if.end.6:                                         ; preds = %if.end
  %11 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %12 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %selected7 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %12, i32 0, i32 1
  store %struct._GimpModule* %11, %struct._GimpModule** %selected7, align 8
  %13 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %gimp = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %13, i32 0, i32 0
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %module_db = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 23
  %15 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db, align 8
  %16 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %selected8 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %16, i32 0, i32 1
  %17 = load %struct._GimpModule*, %struct._GimpModule** %selected8, align 8
  %18 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  call void @dialog_info_update(%struct._GimpModuleDB* %15, %struct._GimpModule* %17, %struct.ModuleDialog* %18)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end.6, %entry
  ret void
}

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #3

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #3

; Function Attrs: nounwind uwtable
define internal void @dialog_info_add(%struct._GimpModuleDB* %db, %struct._GimpModule* %module, %struct.ModuleDialog* %dialog) #0 {
entry:
  %db.addr = alloca %struct._GimpModuleDB*, align 8
  %module.addr = alloca %struct._GimpModule*, align 8
  %dialog.addr = alloca %struct.ModuleDialog*, align 8
  store %struct._GimpModuleDB* %db, %struct._GimpModuleDB** %db.addr, align 8
  store %struct._GimpModule* %module, %struct._GimpModule** %module.addr, align 8
  store %struct.ModuleDialog* %dialog, %struct.ModuleDialog** %dialog.addr, align 8
  %0 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %1 = bitcast %struct._GimpModule* %0 to i8*
  %2 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %3 = bitcast %struct.ModuleDialog* %2 to i8*
  call void @make_list_item(i8* %1, i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_info_remove(%struct._GimpModuleDB* %db, %struct._GimpModule* %module, %struct.ModuleDialog* %dialog) #0 {
entry:
  %db.addr = alloca %struct._GimpModuleDB*, align 8
  %module.addr = alloca %struct._GimpModule*, align 8
  %dialog.addr = alloca %struct.ModuleDialog*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %this = alloca %struct._GimpModule*, align 8
  store %struct._GimpModuleDB* %db, %struct._GimpModuleDB** %db.addr, align 8
  store %struct._GimpModule* %module, %struct._GimpModule** %module.addr, align 8
  store %struct.ModuleDialog* %dialog, %struct.ModuleDialog** %dialog.addr, align 8
  %0 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %list = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %0, i32 0, i32 2
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  %2 = bitcast %struct._GtkListStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeModel*
  %call2 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %4 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %list3 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %4, i32 0, i32 2
  %5 = load %struct._GtkListStore*, %struct._GtkListStore** %list3, align 8
  %6 = bitcast %struct._GtkListStore* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_tree_model_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter, i32 2, %struct._GimpModule** %this, i32 -1)
  %8 = load %struct._GimpModule*, %struct._GimpModule** %this, align 8
  %tobool6 = icmp ne %struct._GimpModule* %8, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.body
  %9 = load %struct._GimpModule*, %struct._GimpModule** %this, align 8
  %10 = bitcast %struct._GimpModule* %9 to i8*
  call void @g_object_unref(i8* %10)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.body
  %11 = load %struct._GimpModule*, %struct._GimpModule** %this, align 8
  %12 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %cmp = icmp eq %struct._GimpModule* %11, %12
  br i1 %cmp, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.8
  %13 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %list10 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %13, i32 0, i32 2
  %14 = load %struct._GtkListStore*, %struct._GtkListStore** %list10, align 8
  %call11 = call i32 @gtk_list_store_remove(%struct._GtkListStore* %14, %struct._GtkTreeIter* %iter)
  br label %return

if.end.12:                                        ; preds = %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  %15 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %list13 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %15, i32 0, i32 2
  %16 = load %struct._GtkListStore*, %struct._GtkListStore** %list13, align 8
  %17 = bitcast %struct._GtkListStore* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_tree_model_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTreeModel*
  %call16 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %18, %struct._GtkTreeIter* %iter)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.dialog_info_remove, i32 0, i32 0))
  br label %return

return:                                           ; preds = %do.end, %if.then.9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_destroy_callback(%struct._GtkWidget* %widget, %struct.ModuleDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct.ModuleDialog*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.ModuleDialog* %dialog, %struct.ModuleDialog** %dialog.addr, align 8
  %0 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %gimp = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %0, i32 0, i32 0
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %module_db = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 23
  %2 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db, align 8
  %3 = bitcast %struct._GimpModuleDB* %2 to i8*
  %4 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %5 = bitcast %struct.ModuleDialog* %4 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %3, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpModuleDB*, %struct._GimpModule*, %struct.ModuleDialog*)* @dialog_info_add to i8*), i8* %5)
  %6 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %gimp1 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %6, i32 0, i32 0
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  %module_db2 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 23
  %8 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db2, align 8
  %9 = bitcast %struct._GimpModuleDB* %8 to i8*
  %10 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %11 = bitcast %struct.ModuleDialog* %10 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpModuleDB*, %struct._GimpModule*, %struct.ModuleDialog*)* @dialog_info_remove to i8*), i8* %11)
  %12 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %gimp4 = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %12, i32 0, i32 0
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp4, align 8
  %module_db5 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 23
  %14 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db5, align 8
  %15 = bitcast %struct._GimpModuleDB* %14 to i8*
  %16 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %17 = bitcast %struct.ModuleDialog* %16 to i8*
  %call6 = call i32 @g_signal_handlers_disconnect_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpModuleDB*, %struct._GimpModule*, %struct.ModuleDialog*)* @dialog_info_update to i8*), i8* %17)
  br label %do.body

do.body:                                          ; preds = %entry
  %18 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %19 = bitcast %struct.ModuleDialog* %18 to i8*
  call void @g_slice_free1(i64 96, i8* %19)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @gimp_modules_refresh(%struct._Gimp*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @g_slice_free1(i64, i8*) #3

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #3

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #3

declare %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8*) #3

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #3

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #3

declare void @gimp_module_set_load_inhibit(%struct._GimpModule*, i32) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #3

; Function Attrs: nounwind uwtable
define internal void @dialog_list_item_update(%struct.ModuleDialog* %dialog, %struct._GtkTreeIter* %iter, %struct._GimpModule* %module) #0 {
entry:
  %dialog.addr = alloca %struct.ModuleDialog*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %module.addr = alloca %struct._GimpModule*, align 8
  store %struct.ModuleDialog* %dialog, %struct.ModuleDialog** %dialog.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GimpModule* %module, %struct._GimpModule** %module.addr, align 8
  %0 = load %struct.ModuleDialog*, %struct.ModuleDialog** %dialog.addr, align 8
  %list = getelementptr inbounds %struct.ModuleDialog, %struct.ModuleDialog* %0, i32 0, i32 2
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  %2 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %3 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %info = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %3, i32 0, i32 7
  %4 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info, align 8
  %tobool = icmp ne %struct._GimpModuleInfo* %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %info1 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %5, i32 0, i32 7
  %6 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info1, align 8
  %purpose = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %6, i32 0, i32 1
  %7 = load i8*, i8** %purpose, align 8
  %call = call i8* @gettext(i8* %7) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %filename = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %8, i32 0, i32 1
  %9 = load i8*, i8** %filename, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call2, %cond.false ]
  %10 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %load_inhibit = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %10, i32 0, i32 5
  %11 = load i32, i32* %load_inhibit, align 4
  %tobool3 = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool3, true
  %lnot.ext = zext i1 %lnot to i32
  %12 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %1, %struct._GtkTreeIter* %2, i32 0, i8* %cond, i32 1, i32 %lnot.ext, i32 2, %struct._GimpModule* %12, i32 -1)
  ret void
}

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare i32 @gtk_list_store_remove(%struct._GtkListStore*, %struct._GtkTreeIter*) #3

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #3

declare noalias i8* @g_filename_display_name(i8*) #3

declare void @g_free(i8*) #3

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #3

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #3

declare void @gtk_label_set_ellipsize(%struct._GtkLabel*, i32) #3

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
