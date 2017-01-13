; ModuleID = './app/dialogs/resize-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
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
%struct._GdkPixbuf = type opaque
%struct.ResizeDialog = type { %struct._GimpViewable*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)*, i8* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GimpOffsetArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, double, double }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpSizeBox = type { %struct._GtkBox, %struct._GtkSizeGroup*, i32, i32, i32, double, double, i32, i32 }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.resize_dialog_new = private unnamed_addr constant [18 x i8] c"resize_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_VIEWABLE (viewable)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"callback != NULL\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Canvas Size\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Layer Size\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"resize-dialog.c\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"gimp-resize\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"xresolution\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"yresolution\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"keep-aspect\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"edit-resolution\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"_X:\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"_Y:\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"gimp-center\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"offsets-changed\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Layers\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"Resize _layers:\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @resize_dialog_new(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i8* %title, i8* %role, %struct._GtkWidget* %parent, void (i8*, i8*)* %help_func, i8* %help_id, i32 %unit, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)* %callback, i8* %user_data) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %title.addr = alloca i8*, align 8
  %role.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %help_func.addr = alloca void (i8*, i8*)*, align 8
  %help_id.addr = alloca i8*, align 8
  %unit.addr = alloca i32, align 4
  %callback.addr = alloca void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %abox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %private = alloca %struct.ResizeDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %text = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst47 = alloca %struct._GTypeInstance*, align 8
  %__t49 = alloca i64, align 8
  %__r52 = alloca i32, align 4
  %tmp67 = alloca i32, align 4
  %__inst77 = alloca %struct._GTypeInstance*, align 8
  %__t79 = alloca i64, align 8
  %__r82 = alloca i32, align 4
  %tmp97 = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %__inst217 = alloca %struct._GTypeInstance*, align 8
  %__t219 = alloca i64, align 8
  %__r222 = alloca i32, align 4
  %tmp237 = alloca i32, align 4
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %role, i8** %role.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)* %callback, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)** %callback.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  store i8* null, i8** %text, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_viewable_get_type() #5
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.resize_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.resize_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %26 = load void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)*, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)** %callback.addr, align 8
  %cmp41 = icmp ne void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)* %26, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.40
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.resize_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %27 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %28 = bitcast %struct._GimpViewable* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst47, align 8
  %call50 = call i64 @gimp_image_get_type() #5
  store i64 %call50, i64* %__t49, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst47, align 8
  %tobool53 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool53, label %if.else.55, label %if.then.54

if.then.54:                                       ; preds = %do.end.45
  store i32 0, i32* %__r52, align 4
  br label %if.end.66

if.else.55:                                       ; preds = %do.end.45
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst47, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %tobool57 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool57, label %land.lhs.true.58, label %if.else.63

land.lhs.true.58:                                 ; preds = %if.else.55
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst47, align 8
  %g_class59 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class59, align 8
  %g_type60 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type60, align 8
  %35 = load i64, i64* %__t49, align 8
  %cmp61 = icmp eq i64 %34, %35
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %land.lhs.true.58
  store i32 1, i32* %__r52, align 4
  br label %if.end.65

if.else.63:                                       ; preds = %land.lhs.true.58, %if.else.55
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst47, align 8
  %37 = load i64, i64* %__t49, align 8
  %call64 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
  store i32 %call64, i32* %__r52, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.then.62
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.54
  %38 = load i32, i32* %__r52, align 4
  store i32 %38, i32* %tmp67
  %39 = load i32, i32* %tmp67
  %tobool68 = icmp ne i32 %39, 0
  br i1 %tobool68, label %if.then.69, label %if.else.75

if.then.69:                                       ; preds = %if.end.66
  %40 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %41 = bitcast %struct._GimpViewable* %40 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_image_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call70)
  %42 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpImage*
  store %struct._GimpImage* %42, %struct._GimpImage** %image, align 8
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call72 = call i32 @gimp_image_get_width(%struct._GimpImage* %43)
  store i32 %call72, i32* %width, align 4
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call73 = call i32 @gimp_image_get_height(%struct._GimpImage* %44)
  store i32 %call73, i32* %height, align 4
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)) #7
  store i8* %call74, i8** %text, align 8
  br label %if.end.111

if.else.75:                                       ; preds = %if.end.66
  %45 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %46 = bitcast %struct._GimpViewable* %45 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %46, %struct._GTypeInstance** %__inst77, align 8
  %call80 = call i64 @gimp_item_get_type() #5
  store i64 %call80, i64* %__t79, align 8
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst77, align 8
  %tobool83 = icmp ne %struct._GTypeInstance* %47, null
  br i1 %tobool83, label %if.else.85, label %if.then.84

if.then.84:                                       ; preds = %if.else.75
  store i32 0, i32* %__r82, align 4
  br label %if.end.96

if.else.85:                                       ; preds = %if.else.75
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst77, align 8
  %g_class86 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class86, align 8
  %tobool87 = icmp ne %struct._GTypeClass* %49, null
  br i1 %tobool87, label %land.lhs.true.88, label %if.else.93

land.lhs.true.88:                                 ; preds = %if.else.85
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst77, align 8
  %g_class89 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %50, i32 0, i32 0
  %51 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class89, align 8
  %g_type90 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %51, i32 0, i32 0
  %52 = load i64, i64* %g_type90, align 8
  %53 = load i64, i64* %__t79, align 8
  %cmp91 = icmp eq i64 %52, %53
  br i1 %cmp91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %land.lhs.true.88
  store i32 1, i32* %__r82, align 4
  br label %if.end.95

if.else.93:                                       ; preds = %land.lhs.true.88, %if.else.85
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst77, align 8
  %55 = load i64, i64* %__t79, align 8
  %call94 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %54, i64 %55) #6
  store i32 %call94, i32* %__r82, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.93, %if.then.92
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.84
  %56 = load i32, i32* %__r82, align 4
  store i32 %56, i32* %tmp97
  %57 = load i32, i32* %tmp97
  %tobool98 = icmp ne i32 %57, 0
  br i1 %tobool98, label %if.then.99, label %if.else.107

if.then.99:                                       ; preds = %if.end.96
  %58 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %59 = bitcast %struct._GimpViewable* %58 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_item_get_type() #5
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call101)
  %60 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpItem*
  store %struct._GimpItem* %60, %struct._GimpItem** %item, align 8
  %61 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call103 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %61)
  store %struct._GimpImage* %call103, %struct._GimpImage** %image, align 8
  %62 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call104 = call i32 @gimp_item_get_width(%struct._GimpItem* %62)
  store i32 %call104, i32* %width, align 4
  %63 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call105 = call i32 @gimp_item_get_height(%struct._GimpItem* %63)
  store i32 %call105, i32* %height, align 4
  %call106 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)) #7
  store i8* %call106, i8** %text, align 8
  br label %if.end.110

if.else.107:                                      ; preds = %if.end.96
  br label %do.body.108

do.body.108:                                      ; preds = %if.else.107
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.resize_dialog_new, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

do.end.109:                                       ; No predecessors!
  br label %if.end.110

if.end.110:                                       ; preds = %do.end.109, %if.then.99
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.69
  %64 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %65 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %66 = load i8*, i8** %title.addr, align 8
  %67 = load i8*, i8** %role.addr, align 8
  %68 = load i8*, i8** %title.addr, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %70 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %71 = load i8*, i8** %help_id.addr, align 8
  %call112 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %64, %struct._GimpContext* %65, i8* %66, i8* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* %68, %struct._GtkWidget* %69, void (i8*, i8*)* %70, i8* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call112, %struct._GtkWidget** %dialog, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_window_get_type() #5
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call113)
  %74 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %74, i32 0)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_dialog_get_type() #5
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call115)
  %77 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %77, i32 1, i32 -5, i32 -6, i32 -1)
  %call117 = call noalias i8* @g_slice_alloc0(i64 72)
  %78 = bitcast i8* %call117 to %struct.ResizeDialog*
  store %struct.ResizeDialog* %78, %struct.ResizeDialog** %private, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 80)
  %81 = bitcast %struct._GTypeInstance* %call118 to %struct._GObject*
  %82 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %83 = bitcast %struct.ResizeDialog* %82 to i8*
  call void @g_object_weak_ref(%struct._GObject* %81, void (i8*, %struct._GObject*)* bitcast (void (%struct.ResizeDialog*)* @resize_dialog_free to void (i8*, %struct._GObject*)*), i8* %83)
  %84 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %85 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %viewable119 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %85, i32 0, i32 0
  store %struct._GimpViewable* %84, %struct._GimpViewable** %viewable119, align 8
  %86 = load i32, i32* %width, align 4
  %87 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %old_width = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %87, i32 0, i32 1
  store i32 %86, i32* %old_width, align 4
  %88 = load i32, i32* %height, align 4
  %89 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %old_height = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %89, i32 0, i32 2
  store i32 %88, i32* %old_height, align 4
  %90 = load i32, i32* %unit.addr, align 4
  %91 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %old_unit = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %91, i32 0, i32 3
  store i32 %90, i32* %old_unit, align 4
  %92 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %layer_set = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %92, i32 0, i32 7
  store i32 0, i32* %layer_set, align 4
  %93 = load void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)*, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)** %callback.addr, align 8
  %94 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %callback120 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %94, i32 0, i32 8
  store void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)* %93, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)** %callback120, align 8
  %95 = load i8*, i8** %user_data.addr, align 8
  %96 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %user_data121 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %96, i32 0, i32 9
  store i8* %95, i8** %user_data121, align 8
  %97 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %97, double* %xres, double* %yres)
  %call122 = call i64 @gimp_size_box_get_type() #5
  %98 = load i32, i32* %width, align 4
  %99 = load i32, i32* %height, align 4
  %100 = load i32, i32* %unit.addr, align 4
  %101 = load double, double* %xres, align 8
  %102 = load double, double* %yres, align 8
  %call123 = call i8* (i64, i8*, ...) @g_object_new(i64 %call122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), double %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), double %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i32 0, i8* null)
  %103 = bitcast i8* %call123 to %struct._GtkWidget*
  %104 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %box = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %104, i32 0, i32 4
  store %struct._GtkWidget* %103, %struct._GtkWidget** %box, align 8
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %106 = bitcast %struct._GtkWidget* %105 to i8*
  %107 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %108 = bitcast %struct.ResizeDialog* %107 to i8*
  %call124 = call i64 @g_signal_connect_data(i8* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.ResizeDialog*)* @resize_dialog_response to void ()*), i8* %108, void (i8*, %struct._GClosure*)* null, i32 0)
  %call125 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call125, %struct._GtkWidget** %main_vbox, align 8
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_container_get_type() #5
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call126)
  %111 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %111, i32 12)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_dialog_get_type() #5
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call128)
  %114 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkDialog*
  %call130 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %114)
  %115 = bitcast %struct._GtkWidget* %call130 to %struct._GTypeInstance*
  %call131 = call i64 @gtk_box_get_type() #5
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call131)
  %116 = bitcast %struct._GTypeInstance* %call132 to %struct._GtkBox*
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %116, %struct._GtkWidget* %117, i32 1, i32 1, i32 0)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %118)
  %119 = load i8*, i8** %text, align 8
  %call133 = call %struct._GtkWidget* @gimp_frame_new(i8* %119)
  store %struct._GtkWidget* %call133, %struct._GtkWidget** %frame, align 8
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_box_get_type() #5
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call134)
  %122 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkBox*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %122, %struct._GtkWidget* %123, i32 0, i32 0, i32 0)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call136 = call i64 @gtk_container_get_type() #5
  %call137 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call136)
  %127 = bitcast %struct._GTypeInstance* %call137 to %struct._GtkContainer*
  %128 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %box138 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %128, i32 0, i32 4
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %box138, align 8
  call void @gtk_container_add(%struct._GtkContainer* %127, %struct._GtkWidget* %129)
  %130 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %box139 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %130, i32 0, i32 4
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %box139, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %131)
  %call140 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #7
  %call141 = call %struct._GtkWidget* @gimp_frame_new(i8* %call140)
  store %struct._GtkWidget* %call141, %struct._GtkWidget** %frame, align 8
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call142 = call i64 @gtk_box_get_type() #5
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call142)
  %134 = bitcast %struct._GTypeInstance* %call143 to %struct._GtkBox*
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %134, %struct._GtkWidget* %135, i32 0, i32 0, i32 0)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %136)
  %call144 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call144, %struct._GtkWidget** %vbox, align 8
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call145 = call i64 @gtk_container_get_type() #5
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call145)
  %139 = bitcast %struct._GTypeInstance* %call146 to %struct._GtkContainer*
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %139, %struct._GtkWidget* %140)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %141)
  %call147 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call147, %struct._GtkWidget** %spinbutton, align 8
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call148 = call i64 @gtk_entry_get_type() #5
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call148)
  %144 = bitcast %struct._GTypeInstance* %call149 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %144, i32 8)
  %145 = load i32, i32* %unit.addr, align 4
  %call150 = call %struct._GtkWidget* @gimp_size_entry_new(i32 1, i32 %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i32 1, i32 0, i32 0, i32 8, i32 1)
  store %struct._GtkWidget* %call150, %struct._GtkWidget** %entry1, align 8
  %146 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %offset = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %146, i32 0, i32 5
  store %struct._GtkWidget* %call150, %struct._GtkWidget** %offset, align 8
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_table_get_type() #5
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call151)
  %149 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %149, i32 0, i32 6)
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %151 = bitcast %struct._GtkWidget* %150 to %struct._GTypeInstance*
  %call153 = call i64 @gtk_table_get_type() #5
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call153)
  %152 = bitcast %struct._GTypeInstance* %call154 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %152, i32 1, i32 6)
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %154 = bitcast %struct._GtkWidget* %153 to %struct._GTypeInstance*
  %call155 = call i64 @gtk_table_get_type() #5
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %154, i64 %call155)
  %155 = bitcast %struct._GTypeInstance* %call156 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %155, i32 3, i32 12)
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %157 = bitcast %struct._GtkWidget* %156 to %struct._GTypeInstance*
  %call157 = call i64 @gtk_table_get_type() #5
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call157)
  %158 = bitcast %struct._GTypeInstance* %call158 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %158, i32 0, i32 2)
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %160 = bitcast %struct._GtkWidget* %159 to %struct._GTypeInstance*
  %call159 = call i64 @gimp_size_entry_get_type() #5
  %call160 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call159)
  %161 = bitcast %struct._GTypeInstance* %call160 to %struct._GimpSizeEntry*
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %163 = bitcast %struct._GtkWidget* %162 to %struct._GTypeInstance*
  %call161 = call i64 @gtk_spin_button_get_type() #5
  %call162 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 %call161)
  %164 = bitcast %struct._GTypeInstance* %call162 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %161, %struct._GtkSpinButton* %164, %struct._GtkSpinButton* null)
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %166 = bitcast %struct._GtkWidget* %165 to %struct._GTypeInstance*
  %call163 = call i64 @gtk_table_get_type() #5
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call163)
  %167 = bitcast %struct._GTypeInstance* %call164 to %struct._GtkTable*
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %167, %struct._GtkWidget* %168, i32 1, i32 2, i32 0, i32 1)
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %169)
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call165 = call i64 @gimp_size_entry_get_type() #5
  %call166 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call165)
  %172 = bitcast %struct._GTypeInstance* %call166 to %struct._GimpSizeEntry*
  %call167 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0)) #7
  %call168 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %172, i8* %call167, i32 0, i32 0, float 0.000000e+00)
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %174 = bitcast %struct._GtkWidget* %173 to %struct._GTypeInstance*
  %call169 = call i64 @gimp_size_entry_get_type() #5
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %174, i64 %call169)
  %175 = bitcast %struct._GTypeInstance* %call170 to %struct._GimpSizeEntry*
  %call171 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0)) #7
  %call172 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %175, i8* %call171, i32 1, i32 0, float 0.000000e+00)
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %177 = bitcast %struct._GtkWidget* %176 to %struct._GTypeInstance*
  %call173 = call i64 @gtk_box_get_type() #5
  %call174 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %177, i64 %call173)
  %178 = bitcast %struct._GTypeInstance* %call174 to %struct._GtkBox*
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %178, %struct._GtkWidget* %179, i32 0, i32 0, i32 0)
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %180)
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %182 = bitcast %struct._GtkWidget* %181 to %struct._GTypeInstance*
  %call175 = call i64 @gimp_size_entry_get_type() #5
  %call176 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %182, i64 %call175)
  %183 = bitcast %struct._GTypeInstance* %call176 to %struct._GimpSizeEntry*
  %184 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %183, i32 0, double %184, i32 0)
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %186 = bitcast %struct._GtkWidget* %185 to %struct._GTypeInstance*
  %call177 = call i64 @gimp_size_entry_get_type() #5
  %call178 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %186, i64 %call177)
  %187 = bitcast %struct._GTypeInstance* %call178 to %struct._GimpSizeEntry*
  %188 = load double, double* %yres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %187, i32 1, double %188, i32 0)
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %190 = bitcast %struct._GtkWidget* %189 to %struct._GTypeInstance*
  %call179 = call i64 @gimp_size_entry_get_type() #5
  %call180 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 %call179)
  %191 = bitcast %struct._GTypeInstance* %call180 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %191, i32 0, double 0.000000e+00, double 0.000000e+00)
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %193 = bitcast %struct._GtkWidget* %192 to %struct._GTypeInstance*
  %call181 = call i64 @gimp_size_entry_get_type() #5
  %call182 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %193, i64 %call181)
  %194 = bitcast %struct._GTypeInstance* %call182 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %194, i32 1, double 0.000000e+00, double 0.000000e+00)
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %196 = bitcast %struct._GtkWidget* %195 to %struct._GTypeInstance*
  %call183 = call i64 @gimp_size_entry_get_type() #5
  %call184 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %196, i64 %call183)
  %197 = bitcast %struct._GTypeInstance* %call184 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %197, i32 0, double 0.000000e+00)
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %199 = bitcast %struct._GtkWidget* %198 to %struct._GTypeInstance*
  %call185 = call i64 @gimp_size_entry_get_type() #5
  %call186 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %199, i64 %call185)
  %200 = bitcast %struct._GTypeInstance* %call186 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %200, i32 1, double 0.000000e+00)
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %202 = bitcast %struct._GtkWidget* %201 to i8*
  %203 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %204 = bitcast %struct.ResizeDialog* %203 to i8*
  %call187 = call i64 @g_signal_connect_data(i8* %202, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.ResizeDialog*)* @offset_update to void ()*), i8* %204, void (i8*, %struct._GClosure*)* null, i32 0)
  %call188 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0))
  store %struct._GtkWidget* %call188, %struct._GtkWidget** %button, align 8
  %205 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %206 = bitcast %struct._GtkWidget* %205 to %struct._GTypeInstance*
  %call189 = call i64 @gtk_table_get_type() #5
  %call190 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %206, i64 %call189)
  %207 = bitcast %struct._GTypeInstance* %call190 to %struct._GtkTable*
  %208 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %207, %struct._GtkWidget* %208, i32 4, i32 5, i32 1, i32 2)
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %209)
  %210 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %211 = bitcast %struct._GtkWidget* %210 to i8*
  %212 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %213 = bitcast %struct.ResizeDialog* %212 to i8*
  %call191 = call i64 @g_signal_connect_data(i8* %211, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.ResizeDialog*)* @offset_center_clicked to void ()*), i8* %213, void (i8*, %struct._GClosure*)* null, i32 0)
  %call192 = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call192, %struct._GtkWidget** %abox, align 8
  %214 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %215 = bitcast %struct._GtkWidget* %214 to %struct._GTypeInstance*
  %call193 = call i64 @gtk_box_get_type() #5
  %call194 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %215, i64 %call193)
  %216 = bitcast %struct._GTypeInstance* %call194 to %struct._GtkBox*
  %217 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %216, %struct._GtkWidget* %217, i32 0, i32 0, i32 0)
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %218)
  %call195 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call195, %struct._GtkWidget** %frame, align 8
  %219 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %220 = bitcast %struct._GtkWidget* %219 to %struct._GTypeInstance*
  %call196 = call i64 @gtk_frame_get_type() #5
  %call197 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %220, i64 %call196)
  %221 = bitcast %struct._GTypeInstance* %call197 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %221, i32 1)
  %222 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %223 = bitcast %struct._GtkWidget* %222 to %struct._GTypeInstance*
  %call198 = call i64 @gtk_container_get_type() #5
  %call199 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %223, i64 %call198)
  %224 = bitcast %struct._GTypeInstance* %call199 to %struct._GtkContainer*
  %225 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %224, %struct._GtkWidget* %225)
  %226 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %226)
  %227 = load i32, i32* %width, align 4
  %228 = load i32, i32* %height, align 4
  %call200 = call %struct._GtkWidget* @gimp_offset_area_new(i32 %227, i32 %228)
  %229 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %area = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %229, i32 0, i32 6
  store %struct._GtkWidget* %call200, %struct._GtkWidget** %area, align 8
  %230 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %231 = bitcast %struct._GtkWidget* %230 to %struct._GTypeInstance*
  %call201 = call i64 @gtk_container_get_type() #5
  %call202 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %231, i64 %call201)
  %232 = bitcast %struct._GTypeInstance* %call202 to %struct._GtkContainer*
  %233 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %area203 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %233, i32 0, i32 6
  %234 = load %struct._GtkWidget*, %struct._GtkWidget** %area203, align 8
  call void @gtk_container_add(%struct._GtkContainer* %232, %struct._GtkWidget* %234)
  %235 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %area204 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %235, i32 0, i32 6
  %236 = load %struct._GtkWidget*, %struct._GtkWidget** %area204, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %236)
  %237 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void @gimp_viewable_get_preview_size(%struct._GimpViewable* %237, i32 200, i32 0, i32 1, i32* %width, i32* %height)
  %238 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %239 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %240 = load i32, i32* %width, align 4
  %241 = load i32, i32* %height, align 4
  %call205 = call %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable* %238, %struct._GimpContext* %239, i32 %240, i32 %241)
  store %struct._GdkPixbuf* %call205, %struct._GdkPixbuf** %pixbuf, align 8
  %242 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool206 = icmp ne %struct._GdkPixbuf* %242, null
  br i1 %tobool206, label %if.then.207, label %if.end.211

if.then.207:                                      ; preds = %if.end.111
  %243 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %area208 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %243, i32 0, i32 6
  %244 = load %struct._GtkWidget*, %struct._GtkWidget** %area208, align 8
  %245 = bitcast %struct._GtkWidget* %244 to %struct._GTypeInstance*
  %call209 = call i64 @gimp_offset_area_get_type() #5
  %call210 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %245, i64 %call209)
  %246 = bitcast %struct._GTypeInstance* %call210 to %struct._GimpOffsetArea*
  %247 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void @gimp_offset_area_set_pixbuf(%struct._GimpOffsetArea* %246, %struct._GdkPixbuf* %247)
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.207, %if.end.111
  %248 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %area212 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %248, i32 0, i32 6
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** %area212, align 8
  %250 = bitcast %struct._GtkWidget* %249 to i8*
  %251 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %252 = bitcast %struct.ResizeDialog* %251 to i8*
  %call213 = call i64 @g_signal_connect_data(i8* %250, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i32, %struct.ResizeDialog*)* @offsets_changed to void ()*), i8* %252, void (i8*, %struct._GClosure*)* null, i32 0)
  %253 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %box214 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %253, i32 0, i32 4
  %254 = load %struct._GtkWidget*, %struct._GtkWidget** %box214, align 8
  %255 = bitcast %struct._GtkWidget* %254 to i8*
  %256 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %257 = bitcast %struct.ResizeDialog* %256 to i8*
  %call215 = call i64 @g_signal_connect_data(i8* %255, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeBox*, %struct._GParamSpec*, %struct.ResizeDialog*)* @size_notify to void ()*), i8* %257, void (i8*, %struct._GClosure*)* null, i32 0)
  %258 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %259 = bitcast %struct._GimpViewable* %258 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %259, %struct._GTypeInstance** %__inst217, align 8
  %call220 = call i64 @gimp_image_get_type() #5
  store i64 %call220, i64* %__t219, align 8
  %260 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst217, align 8
  %tobool223 = icmp ne %struct._GTypeInstance* %260, null
  br i1 %tobool223, label %if.else.225, label %if.then.224

if.then.224:                                      ; preds = %if.end.211
  store i32 0, i32* %__r222, align 4
  br label %if.end.236

if.else.225:                                      ; preds = %if.end.211
  %261 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst217, align 8
  %g_class226 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %261, i32 0, i32 0
  %262 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class226, align 8
  %tobool227 = icmp ne %struct._GTypeClass* %262, null
  br i1 %tobool227, label %land.lhs.true.228, label %if.else.233

land.lhs.true.228:                                ; preds = %if.else.225
  %263 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst217, align 8
  %g_class229 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %263, i32 0, i32 0
  %264 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class229, align 8
  %g_type230 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %264, i32 0, i32 0
  %265 = load i64, i64* %g_type230, align 8
  %266 = load i64, i64* %__t219, align 8
  %cmp231 = icmp eq i64 %265, %266
  br i1 %cmp231, label %if.then.232, label %if.else.233

if.then.232:                                      ; preds = %land.lhs.true.228
  store i32 1, i32* %__r222, align 4
  br label %if.end.235

if.else.233:                                      ; preds = %land.lhs.true.228, %if.else.225
  %267 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst217, align 8
  %268 = load i64, i64* %__t219, align 8
  %call234 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %267, i64 %268) #6
  store i32 %call234, i32* %__r222, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.233, %if.then.232
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.then.224
  %269 = load i32, i32* %__r222, align 4
  store i32 %269, i32* %tmp237
  %270 = load i32, i32* %tmp237
  %tobool238 = icmp ne i32 %270, 0
  br i1 %tobool238, label %if.then.239, label %if.end.265

if.then.239:                                      ; preds = %if.end.236
  %call243 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0)) #7
  %call244 = call %struct._GtkWidget* @gimp_frame_new(i8* %call243)
  store %struct._GtkWidget* %call244, %struct._GtkWidget** %frame, align 8
  %271 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %272 = bitcast %struct._GtkWidget* %271 to %struct._GTypeInstance*
  %call245 = call i64 @gtk_box_get_type() #5
  %call246 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %272, i64 %call245)
  %273 = bitcast %struct._GTypeInstance* %call246 to %struct._GtkBox*
  %274 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %273, %struct._GtkWidget* %274, i32 0, i32 0, i32 0)
  %275 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %275)
  %call247 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call247, %struct._GtkWidget** %hbox, align 8
  %276 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %277 = bitcast %struct._GtkWidget* %276 to %struct._GTypeInstance*
  %call248 = call i64 @gtk_container_get_type() #5
  %call249 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %277, i64 %call248)
  %278 = bitcast %struct._GTypeInstance* %call249 to %struct._GtkContainer*
  %279 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %278, %struct._GtkWidget* %279)
  %280 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %280)
  %call250 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0)) #7
  %call251 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call250)
  store %struct._GtkWidget* %call251, %struct._GtkWidget** %label, align 8
  %281 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %282 = bitcast %struct._GtkWidget* %281 to %struct._GTypeInstance*
  %call252 = call i64 @gtk_box_get_type() #5
  %call253 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %282, i64 %call252)
  %283 = bitcast %struct._GTypeInstance* %call253 to %struct._GtkBox*
  %284 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %283, %struct._GtkWidget* %284, i32 0, i32 0, i32 0)
  %285 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %285)
  %call254 = call i64 @gimp_item_set_get_type() #5
  %call255 = call %struct._GtkWidget* @gimp_enum_combo_box_new(i64 %call254)
  store %struct._GtkWidget* %call255, %struct._GtkWidget** %combo, align 8
  %286 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %287 = bitcast %struct._GtkWidget* %286 to %struct._GTypeInstance*
  %call256 = call i64 @gtk_box_get_type() #5
  %call257 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %287, i64 %call256)
  %288 = bitcast %struct._GTypeInstance* %call257 to %struct._GtkBox*
  %289 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %288, %struct._GtkWidget* %289, i32 1, i32 1, i32 0)
  %290 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %290)
  %291 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %292 = bitcast %struct._GtkWidget* %291 to %struct._GTypeInstance*
  %call258 = call i64 @gtk_label_get_type() #5
  %call259 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %292, i64 %call258)
  %293 = bitcast %struct._GTypeInstance* %call259 to %struct._GtkLabel*
  %294 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %293, %struct._GtkWidget* %294)
  %295 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %296 = bitcast %struct._GtkWidget* %295 to %struct._GTypeInstance*
  %call260 = call i64 @gimp_int_combo_box_get_type() #5
  %call261 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %296, i64 %call260)
  %297 = bitcast %struct._GTypeInstance* %call261 to %struct._GimpIntComboBox*
  %298 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %layer_set262 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %298, i32 0, i32 7
  %299 = load i32, i32* %layer_set262, align 4
  %300 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private, align 8
  %layer_set263 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %300, i32 0, i32 7
  %301 = bitcast i32* %layer_set263 to i8*
  %call264 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %297, i32 %299, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* %301)
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.239, %if.end.236
  %302 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %302, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.265, %do.body.108, %if.else.43, %if.else.37, %if.else.10
  %303 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %303
}

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare void @g_log(i8*, i32, i8*, ...) #3

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #3

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @resize_dialog_free(%struct.ResizeDialog* %private) #0 {
entry:
  %private.addr = alloca %struct.ResizeDialog*, align 8
  store %struct.ResizeDialog* %private, %struct.ResizeDialog** %private.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %1 = bitcast %struct.ResizeDialog* %0 to i8*
  call void @g_slice_free1(i64 72, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

declare i8* @g_object_new(i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_size_box_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @resize_dialog_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct.ResizeDialog* %private) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %private.addr = alloca %struct.ResizeDialog*, align 8
  %entry1 = alloca %struct._GimpSizeEntry*, align 8
  %unit = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.ResizeDialog* %private, %struct.ResizeDialog** %private.addr, align 8
  %0 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %offset = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %0, i32 0, i32 5
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_entry_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpSizeEntry*
  store %struct._GimpSizeEntry* %3, %struct._GimpSizeEntry** %entry1, align 8
  %4 = load i32, i32* %response_id.addr, align 4
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  call void @resize_dialog_reset(%struct.ResizeDialog* %5)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %box = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %6, i32 0, i32 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32* %width, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32* %height, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* %unit, i8* null)
  %9 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %callback = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %9, i32 0, i32 8
  %10 = load void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)*, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32, i8*)** %callback, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %12 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %viewable = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %12, i32 0, i32 0
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %height, align 4
  %16 = load i32, i32* %unit, align 4
  %17 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry1, align 8
  %call4 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %17, i32 0)
  %conv = fptosi double %call4 to i32
  %18 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry1, align 8
  %call5 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %18, i32 1)
  %conv6 = fptosi double %call5 to i32
  %19 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %layer_set = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %19, i32 0, i32 7
  %20 = load i32, i32* %layer_set, align 4
  %21 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %user_data = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %21, i32 0, i32 9
  %22 = load i8*, i8** %user_data, align 8
  call void %10(%struct._GtkWidget* %11, %struct._GimpViewable* %13, i32 %14, i32 %15, i32 %16, i32 %conv, i32 %conv6, i32 %20, i8* %22)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %23)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb
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

declare %struct._GtkWidget* @gimp_frame_new(i8*) #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #3

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #3

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #1

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #3

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #3

declare void @gimp_size_entry_add_field(%struct._GimpSizeEntry*, %struct._GtkSpinButton*, %struct._GtkSpinButton*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #3

declare %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry*, i8*, i32, i32, float) #3

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #3

declare void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry*, i32, double, double) #3

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #3

; Function Attrs: nounwind uwtable
define internal void @offset_update(%struct._GtkWidget* %widget, %struct.ResizeDialog* %private) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %private.addr = alloca %struct.ResizeDialog*, align 8
  %entry1 = alloca %struct._GimpSizeEntry*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.ResizeDialog* %private, %struct.ResizeDialog** %private.addr, align 8
  %0 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %offset = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %0, i32 0, i32 5
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_entry_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpSizeEntry*
  store %struct._GimpSizeEntry* %3, %struct._GimpSizeEntry** %entry1, align 8
  %4 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %5 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry1, align 8
  %call3 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %5, i32 0)
  %call4 = call double @rint(double %call3) #5
  %conv = fptosi double %call4 to i32
  %call5 = call i32 @resize_bound_off_x(%struct.ResizeDialog* %4, i32 %conv)
  store i32 %call5, i32* %off_x, align 4
  %6 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %7 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry1, align 8
  %call6 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %7, i32 1)
  %call7 = call double @rint(double %call6) #5
  %conv8 = fptosi double %call7 to i32
  %call9 = call i32 @resize_bound_off_y(%struct.ResizeDialog* %6, i32 %conv8)
  store i32 %call9, i32* %off_y, align 4
  %8 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %area = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %8, i32 0, i32 6
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_offset_area_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpOffsetArea*
  %12 = load i32, i32* %off_x, align 4
  %13 = load i32, i32* %off_y, align 4
  call void @gimp_offset_area_set_offsets(%struct._GimpOffsetArea* %11, i32 %12, i32 %13)
  ret void
}

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @offset_center_clicked(%struct._GtkWidget* %widget, %struct.ResizeDialog* %private) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %private.addr = alloca %struct.ResizeDialog*, align 8
  %box = alloca %struct._GimpSizeBox*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.ResizeDialog* %private, %struct.ResizeDialog** %private.addr, align 8
  %0 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %box1 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %0, i32 0, i32 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_box_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpSizeBox*
  store %struct._GimpSizeBox* %3, %struct._GimpSizeBox** %box, align 8
  %4 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %5 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %width = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %5, i32 0, i32 2
  %6 = load i32, i32* %width, align 4
  %7 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_width = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %7, i32 0, i32 1
  %8 = load i32, i32* %old_width, align 4
  %sub = sub nsw i32 %6, %8
  %div = sdiv i32 %sub, 2
  %call3 = call i32 @resize_bound_off_x(%struct.ResizeDialog* %4, i32 %div)
  store i32 %call3, i32* %off_x, align 4
  %9 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %10 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %height = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %10, i32 0, i32 3
  %11 = load i32, i32* %height, align 4
  %12 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_height = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %12, i32 0, i32 2
  %13 = load i32, i32* %old_height, align 4
  %sub4 = sub nsw i32 %11, %13
  %div5 = sdiv i32 %sub4, 2
  %call6 = call i32 @resize_bound_off_y(%struct.ResizeDialog* %9, i32 %div5)
  store i32 %call6, i32* %off_y, align 4
  %14 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %offset = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %14, i32 0, i32 5
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_size_entry_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpSizeEntry*
  %18 = load i32, i32* %off_x, align 4
  %conv = sitofp i32 %18 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %17, i32 0, double %conv)
  %19 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %offset9 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %19, i32 0, i32 5
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %offset9, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_size_entry_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call10)
  %22 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpSizeEntry*
  %23 = load i32, i32* %off_y, align 4
  %conv12 = sitofp i32 %23 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %22, i32 1, double %conv12)
  %24 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %offset13 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %24, i32 0, i32 5
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %offset13, align 8
  %26 = bitcast %struct._GtkWidget* %25 to i8*
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i32 0)
  ret void
}

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #3

declare %struct._GtkWidget* @gtk_frame_new(i8*) #3

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #1

declare %struct._GtkWidget* @gimp_offset_area_new(i32, i32) #3

declare void @gimp_viewable_get_preview_size(%struct._GimpViewable*, i32, i32, i32, i32*, i32*) #3

declare %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #3

declare void @gimp_offset_area_set_pixbuf(%struct._GimpOffsetArea*, %struct._GdkPixbuf*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_offset_area_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @offsets_changed(%struct._GtkWidget* %area, i32 %off_x, i32 %off_y, %struct.ResizeDialog* %private) #0 {
entry:
  %area.addr = alloca %struct._GtkWidget*, align 8
  %off_x.addr = alloca i32, align 4
  %off_y.addr = alloca i32, align 4
  %private.addr = alloca %struct.ResizeDialog*, align 8
  store %struct._GtkWidget* %area, %struct._GtkWidget** %area.addr, align 8
  store i32 %off_x, i32* %off_x.addr, align 4
  store i32 %off_y, i32* %off_y.addr, align 4
  store %struct.ResizeDialog* %private, %struct.ResizeDialog** %private.addr, align 8
  %0 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %offset = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %0, i32 0, i32 5
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_entry_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSizeEntry*
  %4 = load i32, i32* %off_x.addr, align 4
  %conv = sitofp i32 %4 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %3, i32 0, double %conv)
  %5 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %offset2 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %5, i32 0, i32 5
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %offset2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_size_entry_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpSizeEntry*
  %9 = load i32, i32* %off_y.addr, align 4
  %conv5 = sitofp i32 %9 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %8, i32 1, double %conv5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @size_notify(%struct._GimpSizeBox* %box, %struct._GParamSpec* %pspec, %struct.ResizeDialog* %private) #0 {
entry:
  %box.addr = alloca %struct._GimpSizeBox*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private.addr = alloca %struct.ResizeDialog*, align 8
  %diff_x = alloca i32, align 4
  %diff_y = alloca i32, align 4
  store %struct._GimpSizeBox* %box, %struct._GimpSizeBox** %box.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct.ResizeDialog* %private, %struct.ResizeDialog** %private.addr, align 8
  %0 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %width = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %0, i32 0, i32 2
  %1 = load i32, i32* %width, align 4
  %2 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_width = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %2, i32 0, i32 1
  %3 = load i32, i32* %old_width, align 4
  %sub = sub nsw i32 %1, %3
  store i32 %sub, i32* %diff_x, align 4
  %4 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %height = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %4, i32 0, i32 3
  %5 = load i32, i32* %height, align 4
  %6 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_height = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %6, i32 0, i32 2
  %7 = load i32, i32* %old_height, align 4
  %sub1 = sub nsw i32 %5, %7
  store i32 %sub1, i32* %diff_y, align 4
  %8 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %area = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %8, i32 0, i32 6
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call = call i64 @gimp_offset_area_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call)
  %11 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpOffsetArea*
  %12 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %width3 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %12, i32 0, i32 2
  %13 = load i32, i32* %width3, align 4
  %14 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %height4 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %14, i32 0, i32 3
  %15 = load i32, i32* %height4, align 4
  call void @gimp_offset_area_set_size(%struct._GimpOffsetArea* %11, i32 %13, i32 %15)
  %16 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %offset = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %16, i32 0, i32 5
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_size_entry_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call5)
  %19 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSizeEntry*
  %20 = load i32, i32* %diff_x, align 4
  %cmp = icmp slt i32 0, %20
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %21 = load i32, i32* %diff_x, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %21, %cond.false ]
  %conv = sitofp i32 %cond to double
  %22 = load i32, i32* %diff_x, align 4
  %cmp7 = icmp sgt i32 0, %22
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end
  %23 = load i32, i32* %diff_x, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.9
  %cond12 = phi i32 [ 0, %cond.true.9 ], [ %23, %cond.false.10 ]
  %conv13 = sitofp i32 %cond12 to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %19, i32 0, double %conv, double %conv13)
  %24 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %offset14 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %24, i32 0, i32 5
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %offset14, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_size_entry_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call15)
  %27 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpSizeEntry*
  %28 = load i32, i32* %diff_y, align 4
  %cmp17 = icmp slt i32 0, %28
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end.11
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end.11
  %29 = load i32, i32* %diff_y, align 4
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi i32 [ 0, %cond.true.19 ], [ %29, %cond.false.20 ]
  %conv23 = sitofp i32 %cond22 to double
  %30 = load i32, i32* %diff_y, align 4
  %cmp24 = icmp sgt i32 0, %30
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.end.21
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.end.21
  %31 = load i32, i32* %diff_y, align 4
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.26
  %cond29 = phi i32 [ 0, %cond.true.26 ], [ %31, %cond.false.27 ]
  %conv30 = sitofp i32 %cond29 to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %27, i32 1, double %conv23, double %conv30)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #3

declare %struct._GtkWidget* @gimp_enum_combo_box_new(i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_set_get_type() #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #3

; Function Attrs: nounwind uwtable
define internal void @resize_dialog_reset(%struct.ResizeDialog* %private) #0 {
entry:
  %private.addr = alloca %struct.ResizeDialog*, align 8
  store %struct.ResizeDialog* %private, %struct.ResizeDialog** %private.addr, align 8
  %0 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %box = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %0, i32 0, i32 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %2 = bitcast %struct._GtkWidget* %1 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* null)
  %3 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %box1 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_width = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %6, i32 0, i32 1
  %7 = load i32, i32* %old_width, align 4
  %8 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_height = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %8, i32 0, i32 2
  %9 = load i32, i32* %old_height, align 4
  %10 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_unit = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %10, i32 0, i32 3
  %11 = load i32, i32* %old_unit, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %11, i8* null)
  ret void
}

declare void @g_object_get(i8*, i8*, ...) #3

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare void @g_slice_free1(i64, i8*) #3

declare void @gimp_offset_area_set_size(%struct._GimpOffsetArea*, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @resize_bound_off_x(%struct.ResizeDialog* %private, i32 %offset_x) #0 {
entry:
  %retval = alloca i32, align 4
  %private.addr = alloca %struct.ResizeDialog*, align 8
  %offset_x.addr = alloca i32, align 4
  %box = alloca %struct._GimpSizeBox*, align 8
  store %struct.ResizeDialog* %private, %struct.ResizeDialog** %private.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  %0 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %box1 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %0, i32 0, i32 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_box_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpSizeBox*
  store %struct._GimpSizeBox* %3, %struct._GimpSizeBox** %box, align 8
  %4 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_width = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %4, i32 0, i32 1
  %5 = load i32, i32* %old_width, align 4
  %6 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %width = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %6, i32 0, i32 2
  %7 = load i32, i32* %width, align 4
  %cmp = icmp sle i32 %5, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %offset_x.addr, align 4
  %9 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %width3 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %9, i32 0, i32 2
  %10 = load i32, i32* %width3, align 4
  %11 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_width4 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %11, i32 0, i32 1
  %12 = load i32, i32* %old_width4, align 4
  %sub = sub nsw i32 %10, %12
  %cmp5 = icmp sgt i32 %8, %sub
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %13 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %width6 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %13, i32 0, i32 2
  %14 = load i32, i32* %width6, align 4
  %15 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_width7 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %15, i32 0, i32 1
  %16 = load i32, i32* %old_width7, align 4
  %sub8 = sub nsw i32 %14, %16
  br label %cond.end.12

cond.false:                                       ; preds = %if.then
  %17 = load i32, i32* %offset_x.addr, align 4
  %cmp9 = icmp slt i32 %17, 0
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.false
  br label %cond.end

cond.false.11:                                    ; preds = %cond.false
  %18 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.10
  %cond = phi i32 [ 0, %cond.true.10 ], [ %18, %cond.false.11 ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end, %cond.true
  %cond13 = phi i32 [ %sub8, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond13, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %19 = load i32, i32* %offset_x.addr, align 4
  %cmp14 = icmp sgt i32 %19, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.else
  br label %cond.end.28

cond.false.16:                                    ; preds = %if.else
  %20 = load i32, i32* %offset_x.addr, align 4
  %21 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %width17 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %21, i32 0, i32 2
  %22 = load i32, i32* %width17, align 4
  %23 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_width18 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %23, i32 0, i32 1
  %24 = load i32, i32* %old_width18, align 4
  %sub19 = sub nsw i32 %22, %24
  %cmp20 = icmp slt i32 %20, %sub19
  br i1 %cmp20, label %cond.true.21, label %cond.false.25

cond.true.21:                                     ; preds = %cond.false.16
  %25 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %width22 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %25, i32 0, i32 2
  %26 = load i32, i32* %width22, align 4
  %27 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_width23 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %27, i32 0, i32 1
  %28 = load i32, i32* %old_width23, align 4
  %sub24 = sub nsw i32 %26, %28
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.false.16
  %29 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.21
  %cond27 = phi i32 [ %sub24, %cond.true.21 ], [ %29, %cond.false.25 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end.26, %cond.true.15
  %cond29 = phi i32 [ 0, %cond.true.15 ], [ %cond27, %cond.end.26 ]
  store i32 %cond29, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.28, %cond.end.12
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind readnone
declare double @rint(double) #1

; Function Attrs: nounwind uwtable
define internal i32 @resize_bound_off_y(%struct.ResizeDialog* %private, i32 %off_y) #0 {
entry:
  %retval = alloca i32, align 4
  %private.addr = alloca %struct.ResizeDialog*, align 8
  %off_y.addr = alloca i32, align 4
  %box = alloca %struct._GimpSizeBox*, align 8
  store %struct.ResizeDialog* %private, %struct.ResizeDialog** %private.addr, align 8
  store i32 %off_y, i32* %off_y.addr, align 4
  %0 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %box1 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %0, i32 0, i32 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_box_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpSizeBox*
  store %struct._GimpSizeBox* %3, %struct._GimpSizeBox** %box, align 8
  %4 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_height = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %4, i32 0, i32 2
  %5 = load i32, i32* %old_height, align 4
  %6 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %height = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %6, i32 0, i32 3
  %7 = load i32, i32* %height, align 4
  %cmp = icmp sle i32 %5, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %off_y.addr, align 4
  %9 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %height3 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %9, i32 0, i32 3
  %10 = load i32, i32* %height3, align 4
  %11 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_height4 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %11, i32 0, i32 2
  %12 = load i32, i32* %old_height4, align 4
  %sub = sub nsw i32 %10, %12
  %cmp5 = icmp sgt i32 %8, %sub
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %13 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %height6 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %13, i32 0, i32 3
  %14 = load i32, i32* %height6, align 4
  %15 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_height7 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %15, i32 0, i32 2
  %16 = load i32, i32* %old_height7, align 4
  %sub8 = sub nsw i32 %14, %16
  br label %cond.end.12

cond.false:                                       ; preds = %if.then
  %17 = load i32, i32* %off_y.addr, align 4
  %cmp9 = icmp slt i32 %17, 0
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.false
  br label %cond.end

cond.false.11:                                    ; preds = %cond.false
  %18 = load i32, i32* %off_y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.10
  %cond = phi i32 [ 0, %cond.true.10 ], [ %18, %cond.false.11 ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end, %cond.true
  %cond13 = phi i32 [ %sub8, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond13, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %19 = load i32, i32* %off_y.addr, align 4
  %cmp14 = icmp sgt i32 %19, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.else
  br label %cond.end.28

cond.false.16:                                    ; preds = %if.else
  %20 = load i32, i32* %off_y.addr, align 4
  %21 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %height17 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %21, i32 0, i32 3
  %22 = load i32, i32* %height17, align 4
  %23 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_height18 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %23, i32 0, i32 2
  %24 = load i32, i32* %old_height18, align 4
  %sub19 = sub nsw i32 %22, %24
  %cmp20 = icmp slt i32 %20, %sub19
  br i1 %cmp20, label %cond.true.21, label %cond.false.25

cond.true.21:                                     ; preds = %cond.false.16
  %25 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %height22 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %25, i32 0, i32 3
  %26 = load i32, i32* %height22, align 4
  %27 = load %struct.ResizeDialog*, %struct.ResizeDialog** %private.addr, align 8
  %old_height23 = getelementptr inbounds %struct.ResizeDialog, %struct.ResizeDialog* %27, i32 0, i32 2
  %28 = load i32, i32* %old_height23, align 4
  %sub24 = sub nsw i32 %26, %28
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.false.16
  %29 = load i32, i32* %off_y.addr, align 4
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.21
  %cond27 = phi i32 [ %sub24, %cond.true.21 ], [ %29, %cond.false.25 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end.26, %cond.true.15
  %cond29 = phi i32 [ 0, %cond.true.15 ], [ %cond27, %cond.end.26 ]
  store i32 %cond29, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.28, %cond.end.12
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare void @gimp_offset_area_set_offsets(%struct._GimpOffsetArea*, i32, i32) #3

declare void @g_signal_emit_by_name(i8*, i8*, ...) #3

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
