; ModuleID = './app/dialogs/stroke-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type opaque
%struct._GimpPaintInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i8*, %struct._GimpPaintOptions* }
%struct._GimpPaintOptions = type opaque
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
%struct._GimpStrokeOptions = type { %struct._GimpFillOptions }
%struct._GimpFillOptions = type { %struct._GimpContext }
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
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GBinding = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpViewableDialog = type { %struct._GimpDialog, %struct._GimpContext*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpConfig = type opaque
%struct._GimpContainerView = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.stroke_dialog_new = private unnamed_addr constant [18 x i8] c"stroke_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_ITEM (item)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"stock_id != NULL\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"help_id != NULL\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"parent == NULL || GTK_IS_WIDGET (parent)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"saved-stroke-options\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"gimp-stroke-options\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Choose Stroke Style\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"gimp-item\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"radio-button\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Paint tool:\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"gimp-tool-menu\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"emulate-brush-dynamics\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"_Emulate brush dynamics\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"There is no active layer or channel to stroke to.\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @stroke_dialog_new(%struct._GimpItem* %item, %struct._GimpContext* %context, i8* %title, i8* %stock_id, i8* %help_id, %struct._GtkWidget* %parent) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %title.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %options = alloca %struct._GimpStrokeOptions*, align 8
  %saved_options = alloca %struct._GimpStrokeOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %radio_box = alloca %struct._GtkWidget*, align 8
  %cairo_radio = alloca %struct._GtkWidget*, align 8
  %paint_radio = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GSList*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst54 = alloca %struct._GTypeInstance*, align 8
  %__t56 = alloca i64, align 8
  %__r59 = alloca i32, align 4
  %tmp74 = alloca i32, align 4
  %font_desc = alloca %struct._PangoFontDescription*, align 8
  %stroke_editor = alloca %struct._GtkWidget*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.stroke_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #5
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.stroke_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i8*, i8** %stock_id.addr, align 8
  %cmp40 = icmp ne i8* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.stroke_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load i8*, i8** %help_id.addr, align 8
  %cmp46 = icmp ne i8* %27, null
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.45
  br label %if.end.49

if.else.48:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.stroke_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %cmp52 = icmp eq %struct._GtkWidget* %28, null
  br i1 %cmp52, label %if.then.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.51
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst54, align 8
  %call57 = call i64 @gtk_widget_get_type() #5
  store i64 %call57, i64* %__t56, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst54, align 8
  %tobool60 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool60, label %if.else.62, label %if.then.61

if.then.61:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r59, align 4
  br label %if.end.73

if.else.62:                                       ; preds = %lor.lhs.false
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst54, align 8
  %g_class63 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class63, align 8
  %tobool64 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool64, label %land.lhs.true.65, label %if.else.70

land.lhs.true.65:                                 ; preds = %if.else.62
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst54, align 8
  %g_class66 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class66, align 8
  %g_type67 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type67, align 8
  %37 = load i64, i64* %__t56, align 8
  %cmp68 = icmp eq i64 %36, %37
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %land.lhs.true.65
  store i32 1, i32* %__r59, align 4
  br label %if.end.72

if.else.70:                                       ; preds = %land.lhs.true.65, %if.else.62
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst54, align 8
  %39 = load i64, i64* %__t56, align 8
  %call71 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #6
  store i32 %call71, i32* %__r59, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.70, %if.then.69
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.61
  %40 = load i32, i32* %__r59, align 4
  store i32 %40, i32* %tmp74
  %41 = load i32, i32* %tmp74
  %tobool75 = icmp ne i32 %41, 0
  br i1 %tobool75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.end.73, %do.body.51
  br label %if.end.78

if.else.77:                                       ; preds = %if.end.73
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.stroke_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.78:                                        ; preds = %if.then.76
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  %42 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call80 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %42)
  store %struct._GimpImage* %call80, %struct._GimpImage** %image, align 8
  %43 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %43, i32 0, i32 1
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %45 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call81 = call %struct._GimpStrokeOptions* @gimp_stroke_options_new(%struct._Gimp* %44, %struct._GimpContext* %45, i32 1)
  store %struct._GimpStrokeOptions* %call81, %struct._GimpStrokeOptions** %options, align 8
  %46 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp82 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %46, i32 0, i32 1
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp82, align 8
  %48 = bitcast %struct._Gimp* %47 to %struct._GTypeInstance*
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 80)
  %49 = bitcast %struct._GTypeInstance* %call83 to %struct._GObject*
  %call84 = call i8* @g_object_get_data(%struct._GObject* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0))
  %50 = bitcast i8* %call84 to %struct._GimpStrokeOptions*
  store %struct._GimpStrokeOptions* %50, %struct._GimpStrokeOptions** %saved_options, align 8
  %51 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %saved_options, align 8
  %tobool85 = icmp ne %struct._GimpStrokeOptions* %51, null
  br i1 %tobool85, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %do.end.79
  %52 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %saved_options, align 8
  %53 = bitcast %struct._GimpStrokeOptions* %52 to %struct._GTypeInstance*
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 80)
  %54 = bitcast %struct._GTypeInstance* %call87 to %struct._GObject*
  %55 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %56 = bitcast %struct._GimpStrokeOptions* %55 to %struct._GTypeInstance*
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 80)
  %57 = bitcast %struct._GTypeInstance* %call88 to %struct._GObject*
  %call89 = call i32 @gimp_config_sync(%struct._GObject* %54, %struct._GObject* %57, i32 0)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.86, %do.end.79
  %58 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %59 = bitcast %struct._GimpItem* %58 to %struct._GTypeInstance*
  %call91 = call i64 @gimp_viewable_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call91)
  %60 = bitcast %struct._GTypeInstance* %call92 to %struct._GimpViewable*
  %61 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %62 = load i8*, i8** %title.addr, align 8
  %63 = load i8*, i8** %stock_id.addr, align 8
  %call93 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)) #7
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %65 = load i8*, i8** %help_id.addr, align 8
  %66 = load i8*, i8** %stock_id.addr, align 8
  %call94 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %60, %struct._GimpContext* %61, i8* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* %63, i8* %call93, %struct._GtkWidget* %64, void (i8*, i8*)* @gimp_standard_help_func, i8* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 -6, i8* %66, i32 -5, i8* null)
  store %struct._GtkWidget* %call94, %struct._GtkWidget** %dialog, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_dialog_get_type() #5
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call95)
  %69 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %69, i32 1, i32 -5, i32 -6, i32 -1)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_window_get_type() #5
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call97)
  %72 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %72, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %74 = bitcast %struct._GtkWidget* %73 to i8*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %call99 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GtkWidget*)* @stroke_dialog_response to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 0)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 80)
  %79 = bitcast %struct._GTypeInstance* %call100 to %struct._GObject*
  %80 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %81 = bitcast %struct._GimpItem* %80 to i8*
  call void @g_object_set_data(%struct._GObject* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 80)
  %84 = bitcast %struct._GTypeInstance* %call101 to %struct._GObject*
  %85 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %86 = bitcast %struct._GimpStrokeOptions* %85 to i8*
  call void @g_object_set_data_full(%struct._GObject* %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* %86, void (i8*)* @g_object_unref)
  %call102 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call102, %struct._GtkWidget** %main_vbox, align 8
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_container_get_type() #5
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call103)
  %89 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %89, i32 12)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_dialog_get_type() #5
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call105)
  %92 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkDialog*
  %call107 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %92)
  %93 = bitcast %struct._GtkWidget* %call107 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_box_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call108)
  %94 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkBox*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %94, %struct._GtkWidget* %95, i32 1, i32 1, i32 0)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %97 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %98 = bitcast %struct._GimpStrokeOptions* %97 to %struct._GTypeInstance*
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 80)
  %99 = bitcast %struct._GTypeInstance* %call110 to %struct._GObject*
  %call111 = call %struct._GtkWidget* @gimp_prop_enum_radio_box_new(%struct._GObject* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 -1, i32 -1)
  store %struct._GtkWidget* %call111, %struct._GtkWidget** %radio_box, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %radio_box, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 80)
  %102 = bitcast %struct._GTypeInstance* %call112 to %struct._GObject*
  %call113 = call i8* @g_object_get_data(%struct._GObject* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  %103 = bitcast i8* %call113 to %struct._GtkRadioButton*
  %call114 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %103)
  store %struct._GSList* %call114, %struct._GSList** %group, align 8
  %104 = load %struct._GSList*, %struct._GSList** %group, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %104, i32 0, i32 1
  %105 = load %struct._GSList*, %struct._GSList** %next, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %105, i32 0, i32 0
  %106 = load i8*, i8** %data, align 8
  %call115 = call i8* @g_object_ref(i8* %106)
  %107 = bitcast i8* %call115 to %struct._GtkWidget*
  store %struct._GtkWidget* %107, %struct._GtkWidget** %cairo_radio, align 8
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %radio_box, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_container_get_type() #5
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call116)
  %110 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkContainer*
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %cairo_radio, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %110, %struct._GtkWidget* %111)
  %112 = load %struct._GSList*, %struct._GSList** %group, align 8
  %data118 = getelementptr inbounds %struct._GSList, %struct._GSList* %112, i32 0, i32 0
  %113 = load i8*, i8** %data118, align 8
  %call119 = call i8* @g_object_ref(i8* %113)
  %114 = bitcast i8* %call119 to %struct._GtkWidget*
  store %struct._GtkWidget* %114, %struct._GtkWidget** %paint_radio, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %radio_box, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_container_get_type() #5
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call120)
  %117 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkContainer*
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_radio, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %117, %struct._GtkWidget* %118)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %radio_box, align 8
  %120 = bitcast %struct._GtkWidget* %119 to i8*
  %call122 = call i8* @g_object_ref_sink(i8* %120)
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %radio_box, align 8
  %122 = bitcast %struct._GtkWidget* %121 to i8*
  call void @g_object_unref(i8* %122)
  %call124 = call %struct._PangoFontDescription* @pango_font_description_new()
  store %struct._PangoFontDescription* %call124, %struct._PangoFontDescription** %font_desc, align 8
  %123 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @pango_font_description_set_weight(%struct._PangoFontDescription* %123, i32 700)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %cairo_radio, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_bin_get_type() #5
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call125)
  %126 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkBin*
  %call127 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %126)
  %127 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @gtk_widget_modify_font(%struct._GtkWidget* %call127, %struct._PangoFontDescription* %127)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_radio, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_bin_get_type() #5
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call128)
  %130 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkBin*
  %call130 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %130)
  %131 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @gtk_widget_modify_font(%struct._GtkWidget* %call130, %struct._PangoFontDescription* %131)
  %132 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @pango_font_description_free(%struct._PangoFontDescription* %132)
  %call131 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  store %struct._GtkWidget* %call131, %struct._GtkWidget** %frame, align 8
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_box_get_type() #5
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call132)
  %135 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkBox*
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %135, %struct._GtkWidget* %136, i32 0, i32 0, i32 0)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %137)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_frame_get_type() #5
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call134)
  %140 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkFrame*
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %cairo_radio, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %140, %struct._GtkWidget* %141)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %cairo_radio, align 8
  %143 = bitcast %struct._GtkWidget* %142 to i8*
  call void @g_object_unref(i8* %143)
  %144 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %144, double* %xres, double* %yres)
  %145 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %146 = load double, double* %yres, align 8
  %call139 = call %struct._GtkWidget* @gimp_stroke_editor_new(%struct._GimpStrokeOptions* %145, double %146, i32 0)
  store %struct._GtkWidget* %call139, %struct._GtkWidget** %stroke_editor, align 8
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_container_get_type() #5
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call140)
  %149 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkContainer*
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %stroke_editor, align 8
  call void @gtk_container_add(%struct._GtkContainer* %149, %struct._GtkWidget* %150)
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %stroke_editor, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %151)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %cairo_radio, align 8
  %153 = bitcast %struct._GtkWidget* %152 to i8*
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %stroke_editor, align 8
  %155 = bitcast %struct._GtkWidget* %154 to i8*
  %call142 = call %struct._GBinding* @g_object_bind_property(i8* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* %155, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 2)
  %call143 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  store %struct._GtkWidget* %call143, %struct._GtkWidget** %frame, align 8
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %157 = bitcast %struct._GtkWidget* %156 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_box_get_type() #5
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call144)
  %158 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkBox*
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %158, %struct._GtkWidget* %159, i32 0, i32 0, i32 0)
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %160)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call146 = call i64 @gtk_frame_get_type() #5
  %call147 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call146)
  %163 = bitcast %struct._GTypeInstance* %call147 to %struct._GtkFrame*
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_radio, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %163, %struct._GtkWidget* %164)
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_radio, align 8
  %166 = bitcast %struct._GtkWidget* %165 to i8*
  call void @g_object_unref(i8* %166)
  %call153 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call153, %struct._GtkWidget** %vbox, align 8
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %168 = bitcast %struct._GtkWidget* %167 to %struct._GTypeInstance*
  %call154 = call i64 @gtk_container_get_type() #5
  %call155 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 %call154)
  %169 = bitcast %struct._GTypeInstance* %call155 to %struct._GtkContainer*
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %169, %struct._GtkWidget* %170)
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %171)
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_radio, align 8
  %173 = bitcast %struct._GtkWidget* %172 to i8*
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %175 = bitcast %struct._GtkWidget* %174 to i8*
  %call156 = call %struct._GBinding* @g_object_bind_property(i8* %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 2)
  %call157 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call157, %struct._GtkWidget** %hbox, align 8
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %177 = bitcast %struct._GtkWidget* %176 to %struct._GTypeInstance*
  %call158 = call i64 @gtk_box_get_type() #5
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %177, i64 %call158)
  %178 = bitcast %struct._GTypeInstance* %call159 to %struct._GtkBox*
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %178, %struct._GtkWidget* %179, i32 0, i32 0, i32 0)
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %180)
  %call160 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #7
  %call161 = call %struct._GtkWidget* @gtk_label_new(i8* %call160)
  store %struct._GtkWidget* %call161, %struct._GtkWidget** %label, align 8
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %182 = bitcast %struct._GtkWidget* %181 to %struct._GTypeInstance*
  %call162 = call i64 @gtk_box_get_type() #5
  %call163 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %182, i64 %call162)
  %183 = bitcast %struct._GTypeInstance* %call163 to %struct._GtkBox*
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %183, %struct._GtkWidget* %184, i32 0, i32 0, i32 0)
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %185)
  %186 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp164 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %186, i32 0, i32 1
  %187 = load %struct._Gimp*, %struct._Gimp** %gimp164, align 8
  %paint_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %187, i32 0, i32 21
  %188 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list, align 8
  %189 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %190 = bitcast %struct._GimpStrokeOptions* %189 to %struct._GTypeInstance*
  %call165 = call i64 @gimp_context_get_type() #5
  %call166 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 %call165)
  %191 = bitcast %struct._GTypeInstance* %call166 to %struct._GimpContext*
  %call167 = call %struct._GtkWidget* @gimp_container_combo_box_new(%struct._GimpContainer* %188, %struct._GimpContext* %191, i32 16, i32 0)
  store %struct._GtkWidget* %call167, %struct._GtkWidget** %combo, align 8
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %193 = bitcast %struct._GtkWidget* %192 to %struct._GTypeInstance*
  %call168 = call i64 @gtk_box_get_type() #5
  %call169 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %193, i64 %call168)
  %194 = bitcast %struct._GTypeInstance* %call169 to %struct._GtkBox*
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %194, %struct._GtkWidget* %195, i32 1, i32 1, i32 0)
  %196 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %196)
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %198 = bitcast %struct._GtkWidget* %197 to %struct._GTypeInstance*
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %198, i64 80)
  %199 = bitcast %struct._GTypeInstance* %call170 to %struct._GObject*
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %201 = bitcast %struct._GtkWidget* %200 to i8*
  call void @g_object_set_data(%struct._GObject* %199, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* %201)
  %202 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %203 = bitcast %struct._GimpStrokeOptions* %202 to %struct._GTypeInstance*
  %call171 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %203, i64 80)
  %204 = bitcast %struct._GTypeInstance* %call171 to %struct._GObject*
  %call172 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0)) #7
  %call173 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %204, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i8* %call172)
  store %struct._GtkWidget* %call173, %struct._GtkWidget** %button, align 8
  %205 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %206 = bitcast %struct._GtkWidget* %205 to %struct._GTypeInstance*
  %call174 = call i64 @gtk_box_get_type() #5
  %call175 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %206, i64 %call174)
  %207 = bitcast %struct._GTypeInstance* %call175 to %struct._GtkBox*
  %208 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %207, %struct._GtkWidget* %208, i32 0, i32 0, i32 0)
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %209)
  %210 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %210, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.else.77, %if.else.48, %if.else.42, %if.else.36, %if.else.9
  %211 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %211
}

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare %struct._GimpStrokeOptions* @gimp_stroke_options_new(%struct._Gimp*, %struct._GimpContext*, i32) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #3

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @stroke_dialog_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._GtkWidget* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %options = alloca %struct._GimpStrokeOptions*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %saved_options = alloca %struct._GimpStrokeOptions*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpItem*
  store %struct._GimpItem* %3, %struct._GimpItem** %item, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  %7 = bitcast i8* %call3 to %struct._GimpStrokeOptions*
  store %struct._GimpStrokeOptions* %7, %struct._GimpStrokeOptions** %options, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @g_object_get_data(%struct._GObject* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0))
  %11 = bitcast i8* %call5 to %struct._GtkWidget*
  store %struct._GtkWidget* %11, %struct._GtkWidget** %combo, align 8
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call6 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %12)
  store %struct._GimpImage* %call6, %struct._GimpImage** %image, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_viewable_dialog_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call7)
  %15 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpViewableDialog*
  %context9 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %15, i32 0, i32 1
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context9, align 8
  store %struct._GimpContext* %16, %struct._GimpContext** %context, align 8
  %17 = load i32, i32* %response_id.addr, align 4
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %entry
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call10 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %18)
  store %struct._GimpToolInfo* %call10, %struct._GimpToolInfo** %tool_info, align 8
  %19 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %20 = bitcast %struct._GimpStrokeOptions* %19 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_config_interface_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call11)
  %21 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_container_view_interface_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpContainerView*
  %25 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %paint_info = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %25, i32 0, i32 13
  %26 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %27 = bitcast %struct._GimpPaintInfo* %26 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_viewable_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call15)
  %28 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpViewable*
  %call17 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %24, %struct._GimpViewable* %28)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call19 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %29)
  store %struct._GimpDrawable* %call19, %struct._GimpDrawable** %drawable, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %30, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.18
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %31, i32 0, i32 1
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i32 0, i32 0)) #7
  call void @gimp_message_literal(%struct._Gimp* %32, %struct._GObject* %35, i32 1, i8* %call21)
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.18
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp22 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %36, i32 0, i32 1
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp22, align 8
  %38 = bitcast %struct._Gimp* %37 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 80)
  %39 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  %call24 = call i8* @g_object_get_data(%struct._GObject* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0))
  %40 = bitcast i8* %call24 to %struct._GimpStrokeOptions*
  store %struct._GimpStrokeOptions* %40, %struct._GimpStrokeOptions** %saved_options, align 8
  %41 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %saved_options, align 8
  %tobool25 = icmp ne %struct._GimpStrokeOptions* %41, null
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end
  %42 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %saved_options, align 8
  %43 = bitcast %struct._GimpStrokeOptions* %42 to i8*
  %call27 = call i8* @g_object_ref(i8* %43)
  br label %if.end.30

if.else:                                          ; preds = %if.end
  %44 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp28 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %44, i32 0, i32 1
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp28, align 8
  %46 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call29 = call %struct._GimpStrokeOptions* @gimp_stroke_options_new(%struct._Gimp* %45, %struct._GimpContext* %46, i32 1)
  store %struct._GimpStrokeOptions* %call29, %struct._GimpStrokeOptions** %saved_options, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.26
  %47 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %48 = bitcast %struct._GimpStrokeOptions* %47 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 80)
  %49 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  %50 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %saved_options, align 8
  %51 = bitcast %struct._GimpStrokeOptions* %50 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 80)
  %52 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  %call33 = call i32 @gimp_config_sync(%struct._GObject* %49, %struct._GObject* %52, i32 0)
  %53 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp34 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %53, i32 0, i32 1
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp34, align 8
  %55 = bitcast %struct._Gimp* %54 to %struct._GTypeInstance*
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 80)
  %56 = bitcast %struct._GTypeInstance* %call35 to %struct._GObject*
  %57 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %saved_options, align 8
  %58 = bitcast %struct._GimpStrokeOptions* %57 to i8*
  call void @g_object_set_data_full(%struct._GObject* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* %58, void (i8*)* @g_object_unref)
  %59 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %61 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %62 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %call36 = call i32 @gimp_item_stroke(%struct._GimpItem* %59, %struct._GimpDrawable* %60, %struct._GimpContext* %61, %struct._GimpStrokeOptions* %62, %struct._GimpPaintOptions* null, i32 1, %struct._GimpProgress* null, %struct._GError** %error)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.42, label %if.then.38

if.then.38:                                       ; preds = %if.end.30
  %63 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp39 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %63, i32 0, i32 1
  %64 = load %struct._Gimp*, %struct._Gimp** %gimp39, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 80)
  %67 = bitcast %struct._GTypeInstance* %call40 to %struct._GObject*
  %68 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool41 = icmp ne %struct._GError* %68, null
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.38
  %69 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %69, i32 0, i32 2
  %70 = load i8*, i8** %message, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.38
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %70, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), %cond.false ]
  call void @gimp_message_literal(%struct._Gimp* %64, %struct._GObject* %67, i32 1, i8* %cond)
  call void @g_clear_error(%struct._GError** %error)
  br label %sw.epilog

if.end.42:                                        ; preds = %if.end.30
  %71 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %71)
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end.42
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %72)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %cond.end, %sw.default, %sw.bb
  ret void
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

declare void @g_object_unref(i8*) #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gimp_prop_enum_radio_box_new(%struct._GObject*, i8*, i32, i32) #3

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #3

declare i8* @g_object_ref(i8*) #3

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #3

declare i8* @g_object_ref_sink(i8*) #3

declare %struct._PangoFontDescription* @pango_font_description_new() #3

declare void @pango_font_description_set_weight(%struct._PangoFontDescription*, i32) #3

declare void @gtk_widget_modify_font(%struct._GtkWidget*, %struct._PangoFontDescription*) #3

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #1

declare void @pango_font_description_free(%struct._PangoFontDescription*) #3

declare %struct._GtkWidget* @gimp_frame_new(i8*) #3

declare void @gtk_frame_set_label_widget(%struct._GtkFrame*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

declare %struct._GtkWidget* @gimp_stroke_editor_new(%struct._GimpStrokeOptions*, double, i32) #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #3

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #3

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare %struct._GtkWidget* @gimp_container_combo_box_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #3

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_dialog_get_type() #1

declare %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext*) #3

declare void @gimp_config_reset(%struct._GimpConfig*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #1

declare i32 @gimp_container_view_select_item(%struct._GimpContainerView*, %struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #3

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare i32 @gimp_item_stroke(%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpContext*, %struct._GimpStrokeOptions*, %struct._GimpPaintOptions*, i32, %struct._GimpProgress*, %struct._GError**) #3

declare void @g_clear_error(%struct._GError**) #3

declare void @gimp_image_flush(%struct._GimpImage*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

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
