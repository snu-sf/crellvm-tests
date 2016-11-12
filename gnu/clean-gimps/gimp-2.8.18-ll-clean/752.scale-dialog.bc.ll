; ModuleID = './app/dialogs/scale-dialog.bc'
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
%struct.ScaleDialog = type { %struct._GimpViewable*, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)*, i8* }
%struct._GimpItem = type { %struct._GimpViewable }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpSizeBox = type { %struct._GtkBox, %struct._GtkSizeGroup*, i32, i32, i32, double, double, i32, i32 }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.scale_dialog_new = private unnamed_addr constant [17 x i8] c"scale_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_VIEWABLE (viewable)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"callback != NULL\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Image Size\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Layer Size\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"scale-dialog.c\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"gimp-scale\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"xresolution\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"yresolution\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"resolution-unit\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"keep-aspect\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"edit-resolution\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Quality\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"I_nterpolation:\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"gimp-info\00", align 1
@.str.23 = private unnamed_addr constant [135 x i8] c"Indexed color layers are always scaled without interpolation. The chosen interpolation type will affect channels and layer masks only.\00", align 1
@__func__.scale_dialog_reset = private unnamed_addr constant [19 x i8] c"scale_dialog_reset\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @scale_dialog_new(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i8* %title, i8* %role, %struct._GtkWidget* %parent, void (i8*, i8*)* %help_func, i8* %help_id, i32 %unit, i32 %interpolation, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)* %callback, i8* %user_data) #0 {
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
  %interpolation.addr = alloca i32, align 4
  %callback.addr = alloca void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %private = alloca %struct.ScaleDialog*, align 8
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
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst46 = alloca %struct._GTypeInstance*, align 8
  %__t48 = alloca i64, align 8
  %__r51 = alloca i32, align 4
  %tmp66 = alloca i32, align 4
  %__inst76 = alloca %struct._GTypeInstance*, align 8
  %__t78 = alloca i64, align 8
  %__r81 = alloca i32, align 4
  %tmp96 = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %__inst126 = alloca %struct._GTypeInstance*, align 8
  %__t128 = alloca i64, align 8
  %__r131 = alloca i32, align 4
  %tmp146 = alloca i32, align 4
  %box199 = alloca %struct._GtkWidget*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %role, i8** %role.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)* %callback, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)** %callback.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.scale_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.scale_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)*, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)** %callback.addr, align 8
  %cmp40 = icmp ne void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.scale_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %28 = bitcast %struct._GimpViewable* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst46, align 8
  %call49 = call i64 @gimp_image_get_type() #5
  store i64 %call49, i64* %__t48, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst46, align 8
  %tobool52 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool52, label %if.else.54, label %if.then.53

if.then.53:                                       ; preds = %do.end.44
  store i32 0, i32* %__r51, align 4
  br label %if.end.65

if.else.54:                                       ; preds = %do.end.44
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst46, align 8
  %g_class55 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class55, align 8
  %tobool56 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool56, label %land.lhs.true.57, label %if.else.62

land.lhs.true.57:                                 ; preds = %if.else.54
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst46, align 8
  %g_class58 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class58, align 8
  %g_type59 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type59, align 8
  %35 = load i64, i64* %__t48, align 8
  %cmp60 = icmp eq i64 %34, %35
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %land.lhs.true.57
  store i32 1, i32* %__r51, align 4
  br label %if.end.64

if.else.62:                                       ; preds = %land.lhs.true.57, %if.else.54
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst46, align 8
  %37 = load i64, i64* %__t48, align 8
  %call63 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
  store i32 %call63, i32* %__r51, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62, %if.then.61
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.53
  %38 = load i32, i32* %__r51, align 4
  store i32 %38, i32* %tmp66
  %39 = load i32, i32* %tmp66
  %tobool67 = icmp ne i32 %39, 0
  br i1 %tobool67, label %if.then.68, label %if.else.74

if.then.68:                                       ; preds = %if.end.65
  %40 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %41 = bitcast %struct._GimpViewable* %40 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_image_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call69)
  %42 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpImage*
  store %struct._GimpImage* %42, %struct._GimpImage** %image, align 8
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call71 = call i32 @gimp_image_get_width(%struct._GimpImage* %43)
  store i32 %call71, i32* %width, align 4
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call72 = call i32 @gimp_image_get_height(%struct._GimpImage* %44)
  store i32 %call72, i32* %height, align 4
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #7
  store i8* %call73, i8** %text, align 8
  br label %if.end.110

if.else.74:                                       ; preds = %if.end.65
  %45 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %46 = bitcast %struct._GimpViewable* %45 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %46, %struct._GTypeInstance** %__inst76, align 8
  %call79 = call i64 @gimp_item_get_type() #5
  store i64 %call79, i64* %__t78, align 8
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %tobool82 = icmp ne %struct._GTypeInstance* %47, null
  br i1 %tobool82, label %if.else.84, label %if.then.83

if.then.83:                                       ; preds = %if.else.74
  store i32 0, i32* %__r81, align 4
  br label %if.end.95

if.else.84:                                       ; preds = %if.else.74
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %g_class85 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class85, align 8
  %tobool86 = icmp ne %struct._GTypeClass* %49, null
  br i1 %tobool86, label %land.lhs.true.87, label %if.else.92

land.lhs.true.87:                                 ; preds = %if.else.84
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %g_class88 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %50, i32 0, i32 0
  %51 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class88, align 8
  %g_type89 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %51, i32 0, i32 0
  %52 = load i64, i64* %g_type89, align 8
  %53 = load i64, i64* %__t78, align 8
  %cmp90 = icmp eq i64 %52, %53
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %land.lhs.true.87
  store i32 1, i32* %__r81, align 4
  br label %if.end.94

if.else.92:                                       ; preds = %land.lhs.true.87, %if.else.84
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %55 = load i64, i64* %__t78, align 8
  %call93 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %54, i64 %55) #6
  store i32 %call93, i32* %__r81, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.92, %if.then.91
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.83
  %56 = load i32, i32* %__r81, align 4
  store i32 %56, i32* %tmp96
  %57 = load i32, i32* %tmp96
  %tobool97 = icmp ne i32 %57, 0
  br i1 %tobool97, label %if.then.98, label %if.else.106

if.then.98:                                       ; preds = %if.end.95
  %58 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %59 = bitcast %struct._GimpViewable* %58 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_item_get_type() #5
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call100)
  %60 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpItem*
  store %struct._GimpItem* %60, %struct._GimpItem** %item, align 8
  %61 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call102 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %61)
  store %struct._GimpImage* %call102, %struct._GimpImage** %image, align 8
  %62 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call103 = call i32 @gimp_item_get_width(%struct._GimpItem* %62)
  store i32 %call103, i32* %width, align 4
  %63 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call104 = call i32 @gimp_item_get_height(%struct._GimpItem* %63)
  store i32 %call104, i32* %height, align 4
  %call105 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)) #7
  store i8* %call105, i8** %text, align 8
  br label %if.end.109

if.else.106:                                      ; preds = %if.end.95
  br label %do.body.107

do.body.107:                                      ; preds = %if.else.106
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.scale_dialog_new, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

do.end.108:                                       ; No predecessors!
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.108, %if.then.98
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.68
  %64 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %65 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %66 = load i8*, i8** %title.addr, align 8
  %67 = load i8*, i8** %role.addr, align 8
  %68 = load i8*, i8** %title.addr, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %70 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %71 = load i8*, i8** %help_id.addr, align 8
  %call111 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %64, %struct._GimpContext* %65, i8* %66, i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* %68, %struct._GtkWidget* %69, void (i8*, i8*)* %70, i8* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call111, %struct._GtkWidget** %dialog, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_dialog_get_type() #5
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call112)
  %74 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %74, i32 1, i32 -5, i32 -6, i32 -1)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_window_get_type() #5
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call114)
  %77 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %77, i32 0)
  %call116 = call noalias i8* @g_slice_alloc0(i64 48)
  %78 = bitcast i8* %call116 to %struct.ScaleDialog*
  store %struct.ScaleDialog* %78, %struct.ScaleDialog** %private, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 80)
  %81 = bitcast %struct._GTypeInstance* %call117 to %struct._GObject*
  %82 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %83 = bitcast %struct.ScaleDialog* %82 to i8*
  call void @g_object_weak_ref(%struct._GObject* %81, void (i8*, %struct._GObject*)* bitcast (void (%struct.ScaleDialog*)* @scale_dialog_free to void (i8*, %struct._GObject*)*), i8* %83)
  %84 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %85 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %viewable118 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %85, i32 0, i32 0
  store %struct._GimpViewable* %84, %struct._GimpViewable** %viewable118, align 8
  %86 = load i32, i32* %interpolation.addr, align 4
  %87 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %interpolation119 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %87, i32 0, i32 2
  store i32 %86, i32* %interpolation119, align 4
  %88 = load i32, i32* %unit.addr, align 4
  %89 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %unit120 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %89, i32 0, i32 1
  store i32 %88, i32* %unit120, align 4
  %90 = load void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)*, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)** %callback.addr, align 8
  %91 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %callback121 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %91, i32 0, i32 5
  store void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)* %90, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)** %callback121, align 8
  %92 = load i8*, i8** %user_data.addr, align 8
  %93 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %user_data122 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %93, i32 0, i32 6
  store i8* %92, i8** %user_data122, align 8
  %94 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %94, double* %xres, double* %yres)
  %call123 = call i64 @gimp_size_box_get_type() #5
  %95 = load i32, i32* %width, align 4
  %96 = load i32, i32* %height, align 4
  %97 = load i32, i32* %unit.addr, align 4
  %98 = load double, double* %xres, align 8
  %99 = load double, double* %yres, align 8
  %100 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call124 = call i32 @gimp_image_get_unit(%struct._GimpImage* %100)
  %101 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %102 = bitcast %struct._GimpViewable* %101 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %102, %struct._GTypeInstance** %__inst126, align 8
  %call129 = call i64 @gimp_image_get_type() #5
  store i64 %call129, i64* %__t128, align 8
  %103 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst126, align 8
  %tobool132 = icmp ne %struct._GTypeInstance* %103, null
  br i1 %tobool132, label %if.else.134, label %if.then.133

if.then.133:                                      ; preds = %if.end.110
  store i32 0, i32* %__r131, align 4
  br label %if.end.145

if.else.134:                                      ; preds = %if.end.110
  %104 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst126, align 8
  %g_class135 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %104, i32 0, i32 0
  %105 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class135, align 8
  %tobool136 = icmp ne %struct._GTypeClass* %105, null
  br i1 %tobool136, label %land.lhs.true.137, label %if.else.142

land.lhs.true.137:                                ; preds = %if.else.134
  %106 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst126, align 8
  %g_class138 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %106, i32 0, i32 0
  %107 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class138, align 8
  %g_type139 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %107, i32 0, i32 0
  %108 = load i64, i64* %g_type139, align 8
  %109 = load i64, i64* %__t128, align 8
  %cmp140 = icmp eq i64 %108, %109
  br i1 %cmp140, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %land.lhs.true.137
  store i32 1, i32* %__r131, align 4
  br label %if.end.144

if.else.142:                                      ; preds = %land.lhs.true.137, %if.else.134
  %110 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst126, align 8
  %111 = load i64, i64* %__t128, align 8
  %call143 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %110, i64 %111) #6
  store i32 %call143, i32* %__r131, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.142, %if.then.141
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.then.133
  %112 = load i32, i32* %__r131, align 4
  store i32 %112, i32* %tmp146
  %113 = load i32, i32* %tmp146
  %call147 = call i8* (i64, i8*, ...) @g_object_new(i64 %call123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), double %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), double %99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32 %call124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i32 %113, i8* null)
  %114 = bitcast i8* %call147 to %struct._GtkWidget*
  %115 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %box = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %115, i32 0, i32 3
  store %struct._GtkWidget* %114, %struct._GtkWidget** %box, align 8
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %117 = bitcast %struct._GtkWidget* %116 to i8*
  %118 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %119 = bitcast %struct.ScaleDialog* %118 to i8*
  %call148 = call i64 @g_signal_connect_data(i8* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.ScaleDialog*)* @scale_dialog_response to void ()*), i8* %119, void (i8*, %struct._GClosure*)* null, i32 0)
  %call149 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call149, %struct._GtkWidget** %vbox, align 8
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call150 = call i64 @gtk_container_get_type() #5
  %call151 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call150)
  %122 = bitcast %struct._GTypeInstance* %call151 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %122, i32 12)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call152 = call i64 @gtk_dialog_get_type() #5
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call152)
  %125 = bitcast %struct._GTypeInstance* %call153 to %struct._GtkDialog*
  %call154 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %125)
  %126 = bitcast %struct._GtkWidget* %call154 to %struct._GTypeInstance*
  %call155 = call i64 @gtk_box_get_type() #5
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call155)
  %127 = bitcast %struct._GTypeInstance* %call156 to %struct._GtkBox*
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %127, %struct._GtkWidget* %128, i32 1, i32 1, i32 0)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %129)
  %130 = load i8*, i8** %text, align 8
  %call157 = call %struct._GtkWidget* @gimp_frame_new(i8* %130)
  store %struct._GtkWidget* %call157, %struct._GtkWidget** %frame, align 8
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call158 = call i64 @gtk_box_get_type() #5
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call158)
  %133 = bitcast %struct._GTypeInstance* %call159 to %struct._GtkBox*
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %133, %struct._GtkWidget* %134, i32 0, i32 0, i32 0)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %135)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call160 = call i64 @gtk_container_get_type() #5
  %call161 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call160)
  %138 = bitcast %struct._GTypeInstance* %call161 to %struct._GtkContainer*
  %139 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %box162 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %139, i32 0, i32 3
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %box162, align 8
  call void @gtk_container_add(%struct._GtkContainer* %138, %struct._GtkWidget* %140)
  %141 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %box163 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %141, i32 0, i32 3
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %box163, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %142)
  %call164 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)) #7
  %call165 = call %struct._GtkWidget* @gimp_frame_new(i8* %call164)
  store %struct._GtkWidget* %call165, %struct._GtkWidget** %frame, align 8
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call166 = call i64 @gtk_box_get_type() #5
  %call167 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call166)
  %145 = bitcast %struct._GTypeInstance* %call167 to %struct._GtkBox*
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %145, %struct._GtkWidget* %146, i32 0, i32 0, i32 0)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %147)
  %call168 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call168, %struct._GtkWidget** %vbox, align 8
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %149 = bitcast %struct._GtkWidget* %148 to %struct._GTypeInstance*
  %call169 = call i64 @gtk_container_get_type() #5
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call169)
  %150 = bitcast %struct._GTypeInstance* %call170 to %struct._GtkContainer*
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %150, %struct._GtkWidget* %151)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %152)
  %call171 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call171, %struct._GtkWidget** %hbox, align 8
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %154 = bitcast %struct._GtkWidget* %153 to %struct._GTypeInstance*
  %call172 = call i64 @gtk_box_get_type() #5
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %154, i64 %call172)
  %155 = bitcast %struct._GTypeInstance* %call173 to %struct._GtkBox*
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %155, %struct._GtkWidget* %156, i32 0, i32 0, i32 0)
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %157)
  %call174 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0)) #7
  %call175 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call174)
  store %struct._GtkWidget* %call175, %struct._GtkWidget** %label, align 8
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call176 = call i64 @gtk_box_get_type() #5
  %call177 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call176)
  %160 = bitcast %struct._GTypeInstance* %call177 to %struct._GtkBox*
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %160, %struct._GtkWidget* %161, i32 0, i32 0, i32 0)
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %162)
  %163 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %box178 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %163, i32 0, i32 3
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %box178, align 8
  %165 = bitcast %struct._GtkWidget* %164 to %struct._GTypeInstance*
  %call179 = call i64 @gimp_size_box_get_type() #5
  %call180 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call179)
  %166 = bitcast %struct._GTypeInstance* %call180 to %struct._GimpSizeBox*
  %size_group = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %166, i32 0, i32 1
  %167 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %167, %struct._GtkWidget* %168)
  %call181 = call i64 @gimp_interpolation_type_get_type() #5
  %call182 = call %struct._GtkWidget* @gimp_enum_combo_box_new(i64 %call181)
  %169 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %combo = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %169, i32 0, i32 4
  store %struct._GtkWidget* %call182, %struct._GtkWidget** %combo, align 8
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call183 = call i64 @gtk_label_get_type() #5
  %call184 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call183)
  %172 = bitcast %struct._GTypeInstance* %call184 to %struct._GtkLabel*
  %173 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %combo185 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %173, i32 0, i32 4
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %combo185, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %172, %struct._GtkWidget* %174)
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %176 = bitcast %struct._GtkWidget* %175 to %struct._GTypeInstance*
  %call186 = call i64 @gtk_box_get_type() #5
  %call187 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call186)
  %177 = bitcast %struct._GTypeInstance* %call187 to %struct._GtkBox*
  %178 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %combo188 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %178, i32 0, i32 4
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %combo188, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %177, %struct._GtkWidget* %179, i32 1, i32 1, i32 0)
  %180 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %combo189 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %180, i32 0, i32 4
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %combo189, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %181)
  %182 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %combo190 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %182, i32 0, i32 4
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %combo190, align 8
  %184 = bitcast %struct._GtkWidget* %183 to %struct._GTypeInstance*
  %call191 = call i64 @gimp_int_combo_box_get_type() #5
  %call192 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %184, i64 %call191)
  %185 = bitcast %struct._GTypeInstance* %call192 to %struct._GimpIntComboBox*
  %186 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private, align 8
  %interpolation193 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %186, i32 0, i32 2
  %187 = load i32, i32* %interpolation193, align 4
  %call194 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %185, i32 %187)
  %188 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call195 = call i32 @gimp_image_base_type(%struct._GimpImage* %188)
  %cmp196 = icmp eq i32 %call195, 2
  br i1 %cmp196, label %if.then.197, label %if.end.208

if.then.197:                                      ; preds = %if.end.145
  %call200 = call %struct._GtkWidget* @gimp_message_box_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GtkWidget* %call200, %struct._GtkWidget** %box199, align 8
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %box199, align 8
  %190 = bitcast %struct._GtkWidget* %189 to %struct._GTypeInstance*
  %call201 = call i64 @gimp_message_box_get_type() #5
  %call202 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 %call201)
  %191 = bitcast %struct._GTypeInstance* %call202 to %struct._GimpMessageBox*
  %call203 = call i8* @gettext(i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.23, i32 0, i32 0)) #7
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %191, i8* %call203)
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %box199, align 8
  %193 = bitcast %struct._GtkWidget* %192 to %struct._GTypeInstance*
  %call204 = call i64 @gtk_container_get_type() #5
  %call205 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %193, i64 %call204)
  %194 = bitcast %struct._GTypeInstance* %call205 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %194, i32 0)
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %196 = bitcast %struct._GtkWidget* %195 to %struct._GTypeInstance*
  %call206 = call i64 @gtk_box_get_type() #5
  %call207 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %196, i64 %call206)
  %197 = bitcast %struct._GTypeInstance* %call207 to %struct._GtkBox*
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %box199, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %197, %struct._GtkWidget* %198, i32 0, i32 0, i32 0)
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %box199, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %199)
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.197, %if.end.145
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %200, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.208, %do.body.107, %if.else.42, %if.else.36, %if.else.9
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %201
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

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @scale_dialog_free(%struct.ScaleDialog* %private) #0 {
entry:
  %private.addr = alloca %struct.ScaleDialog*, align 8
  store %struct.ScaleDialog* %private, %struct.ScaleDialog** %private.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %1 = bitcast %struct.ScaleDialog* %0 to i8*
  call void @g_slice_free1(i64 48, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

declare i8* @g_object_new(i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_size_box_get_type() #1

declare i32 @gimp_image_get_unit(%struct._GimpImage*) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @scale_dialog_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct.ScaleDialog* %private) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %private.addr = alloca %struct.ScaleDialog*, align 8
  %unit = alloca i32, align 4
  %interpolation = alloca i32, align 4
  %resolution_unit = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.ScaleDialog* %private, %struct.ScaleDialog** %private.addr, align 8
  %0 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %unit1 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %0, i32 0, i32 1
  %1 = load i32, i32* %unit1, align 4
  store i32 %1, i32* %unit, align 4
  %2 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %interpolation2 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %2, i32 0, i32 2
  %3 = load i32, i32* %interpolation2, align 4
  store i32 %3, i32* %interpolation, align 4
  %4 = load i32, i32* %response_id.addr, align 4
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  call void @scale_dialog_reset(%struct.ScaleDialog* %5)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %box = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32* %width, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32* %height, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* %unit, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), double* %xres, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), double* %yres, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32* %resolution_unit, i8* null)
  %9 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %combo = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %9, i32 0, i32 4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpIntComboBox*
  %call5 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %12, i32* %interpolation)
  %13 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %callback = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %13, i32 0, i32 5
  %14 = load void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)*, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)** %callback, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %16 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %viewable = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %16, i32 0, i32 0
  %17 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  %20 = load i32, i32* %unit, align 4
  %21 = load i32, i32* %interpolation, align 4
  %22 = load double, double* %xres, align 8
  %23 = load double, double* %yres, align 8
  %24 = load i32, i32* %resolution_unit, align 4
  %25 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %user_data = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %25, i32 0, i32 6
  %26 = load i8*, i8** %user_data, align 8
  call void %14(%struct._GtkWidget* %15, %struct._GimpViewable* %17, i32 %18, i32 %19, i32 %20, i32 %21, double %22, double %23, i32 %24, i8* %26)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %27)
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

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #3

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #3

declare %struct._GtkWidget* @gimp_enum_combo_box_new(i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_interpolation_type_get_type() #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #3

declare %struct._GtkWidget* @gimp_message_box_new(i8*) #3

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_message_box_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @scale_dialog_reset(%struct.ScaleDialog* %private) #0 {
entry:
  %private.addr = alloca %struct.ScaleDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t19 = alloca i64, align 8
  %__r22 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  store %struct.ScaleDialog* %private, %struct.ScaleDialog** %private.addr, align 8
  %0 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %viewable = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %0, i32 0, i32 0
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %2 = bitcast %struct._GimpViewable* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.14

if.then.8:                                        ; preds = %if.end.6
  %14 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %viewable9 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %14, i32 0, i32 0
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable9, align 8
  %16 = bitcast %struct._GimpViewable* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_image_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpImage*
  store %struct._GimpImage* %17, %struct._GimpImage** %image, align 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i32 @gimp_image_get_width(%struct._GimpImage* %18)
  store i32 %call12, i32* %width, align 4
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call13 = call i32 @gimp_image_get_height(%struct._GimpImage* %19)
  store i32 %call13, i32* %height, align 4
  br label %if.end.49

if.else.14:                                       ; preds = %if.end.6
  %20 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %viewable17 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %20, i32 0, i32 0
  %21 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable17, align 8
  %22 = bitcast %struct._GimpViewable* %21 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %22, %struct._GTypeInstance** %__inst16, align 8
  %call20 = call i64 @gimp_item_get_type() #5
  store i64 %call20, i64* %__t19, align 8
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool23 = icmp ne %struct._GTypeInstance* %23, null
  br i1 %tobool23, label %if.else.25, label %if.then.24

if.then.24:                                       ; preds = %if.else.14
  store i32 0, i32* %__r22, align 4
  br label %if.end.36

if.else.25:                                       ; preds = %if.else.14
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %tobool27 = icmp ne %struct._GTypeClass* %25, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.else.33

land.lhs.true.28:                                 ; preds = %if.else.25
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %g_type30 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type30, align 8
  %29 = load i64, i64* %__t19, align 8
  %cmp31 = icmp eq i64 %28, %29
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.28
  store i32 1, i32* %__r22, align 4
  br label %if.end.35

if.else.33:                                       ; preds = %land.lhs.true.28, %if.else.25
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %31 = load i64, i64* %__t19, align 8
  %call34 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %30, i64 %31) #6
  store i32 %call34, i32* %__r22, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.24
  %32 = load i32, i32* %__r22, align 4
  store i32 %32, i32* %tmp37
  %33 = load i32, i32* %tmp37
  %tobool38 = icmp ne i32 %33, 0
  br i1 %tobool38, label %if.then.39, label %if.else.47

if.then.39:                                       ; preds = %if.end.36
  %34 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %viewable41 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %34, i32 0, i32 0
  %35 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable41, align 8
  %36 = bitcast %struct._GimpViewable* %35 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_item_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call42)
  %37 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpItem*
  store %struct._GimpItem* %37, %struct._GimpItem** %item, align 8
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call44 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %38)
  store %struct._GimpImage* %call44, %struct._GimpImage** %image, align 8
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call45 = call i32 @gimp_item_get_width(%struct._GimpItem* %39)
  store i32 %call45, i32* %width, align 4
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call46 = call i32 @gimp_item_get_height(%struct._GimpItem* %40)
  store i32 %call46, i32* %height, align 4
  br label %if.end.48

if.else.47:                                       ; preds = %if.end.36
  br label %do.body

do.body:                                          ; preds = %if.else.47
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.scale_dialog_reset, i32 0, i32 0))
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end.48

if.end.48:                                        ; preds = %do.end, %if.then.39
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.8
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %41, double* %xres, double* %yres)
  %42 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %box = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %42, i32 0, i32 3
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 0, i8* null)
  %45 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %box50 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %45, i32 0, i32 3
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %box50, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %48 = load i32, i32* %width, align 4
  %49 = load i32, i32* %height, align 4
  %50 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %unit = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %50, i32 0, i32 1
  %51 = load i32, i32* %unit, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %51, i8* null)
  %52 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %box51 = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %52, i32 0, i32 3
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %box51, align 8
  %54 = bitcast %struct._GtkWidget* %53 to i8*
  %55 = load double, double* %xres, align 8
  %56 = load double, double* %yres, align 8
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call52 = call i32 @gimp_image_get_unit(%struct._GimpImage* %57)
  call void (i8*, i8*, ...) @g_object_set(i8* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), double %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), double %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32 %call52, i8* null)
  %58 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %combo = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %58, i32 0, i32 4
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_int_combo_box_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call53)
  %61 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpIntComboBox*
  %62 = load %struct.ScaleDialog*, %struct.ScaleDialog** %private.addr, align 8
  %interpolation = getelementptr inbounds %struct.ScaleDialog, %struct.ScaleDialog* %62, i32 0, i32 2
  %63 = load i32, i32* %interpolation, align 4
  %call55 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %61, i32 %63)
  br label %return

return:                                           ; preds = %if.end.49, %do.body
  ret void
}

declare void @g_object_get(i8*, i8*, ...) #3

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare void @g_slice_free1(i64, i8*) #3

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
