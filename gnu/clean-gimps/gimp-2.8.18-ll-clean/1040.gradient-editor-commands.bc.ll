; ModuleID = './app/actions/gradient-editor-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpGradientEditor = type { %struct._GimpDataEditor, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GtkAdjustment*, %struct._GtkWidget*, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, i32, i32, i32, i32, double, double, i32, i32, [10 x %struct._GimpRGB], %struct._GimpGradientSegment*, i32, %struct._GimpGradientSegment*, i32 }
%struct._GimpDataEditor = type { %struct._GimpEditor, %struct._GimpDataFactory*, %struct._GimpContext*, i32, %struct._GimpData*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
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
%struct._GdkDrawable = type { %struct._GObject }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpEditorPrivate = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpColorDialog = type { %struct._GimpViewableDialog, i32, %struct._GtkWidget*, [12 x %struct._GtkWidget*] }
%struct._GimpViewableDialog = type { %struct._GimpDialog, %struct._GimpContext*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkRadioAction = type { %struct._GtkToggleAction, %struct._GtkRadioActionPrivate* }
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GtkRadioActionPrivate = type opaque
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque

@.str = private unnamed_addr constant [20 x i8] c"Left Endpoint Color\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"gimp-tool-blend\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Gradient Segment's Left Endpoint Color\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"gimp-gradient-editor-color-dialog\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Right Endpoint Color\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Gradient Segment's Right Endpoint Color\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Replicate Segment\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Replicate Gradient Segment\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Replicate Selection\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Replicate Gradient Selection\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"gimp-gradient-segment-replicate\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"gimp-gradient-editor-replicate\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Replicate\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"Select the number of times\0Ato replicate the selected segment.\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"Select the number of times\0Ato replicate the selection.\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Split Segment Uniformly\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Split Gradient Segment Uniformly\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Split Segments Uniformly\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Split Gradient Segments Uniformly\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"gimp-gradient-segment-split-uniformly\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"gimp-gradient-editor-split-uniform\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Split\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c"Select the number of uniform parts\0Ain which to split the selected segment.\00", align 1
@.str.28 = private unnamed_addr constant [84 x i8] c"Select the number of uniform parts\0Ain which to split the segments in the selection.\00", align 1

; Function Attrs: nounwind uwtable
define void @gradient_editor_left_color_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %10 = bitcast %struct._GimpGradient* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_data_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpData*
  %call9 = call i32 @gimp_data_is_dirty(%struct._GimpData* %11)
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %left_saved_dirty = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %12, i32 0, i32 26
  store i32 %call9, i32* %left_saved_dirty, align 4
  %13 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %call10 = call %struct._GimpGradientSegment* @gradient_editor_save_selection(%struct._GimpGradientEditor* %13)
  %14 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %left_saved_segments = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %14, i32 0, i32 25
  store %struct._GimpGradientSegment* %call10, %struct._GimpGradientSegment** %left_saved_segments, align 8
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = bitcast %struct._GimpGradient* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_viewable_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpViewable*
  %18 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %19 = bitcast %struct._GimpGradientEditor* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_data_editor_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDataEditor*
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %20, i32 0, i32 2
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)) #4
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0)) #4
  %22 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %23 = bitcast %struct._GimpGradientEditor* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_widget_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWidget*
  %call19 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %25 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %25, i32 0, i32 14
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %26, i32 0, i32 4
  %call20 = call %struct._GtkWidget* @gimp_color_dialog_new(%struct._GimpViewable* %17, %struct._GimpContext* %21, i8* %call15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %call16, %struct._GtkWidget* %24, %struct._GimpDialogFactory* %call19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), %struct._GimpRGB* %left_color, i32 1, i32 1)
  %27 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %color_dialog = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %27, i32 0, i32 10
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %color_dialog, align 8
  %28 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %color_dialog21 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %28, i32 0, i32 10
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog21, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %31 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %color_dialog22 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %31, i32 0, i32 10
  %32 = bitcast %struct._GtkWidget** %color_dialog22 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 0)
  %33 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %color_dialog24 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %33, i32 0, i32 10
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog24, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %36 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %37 = bitcast %struct._GimpGradientEditor* %36 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDialog*, %struct._GimpRGB*, i32, %struct._GimpGradientEditor*)* @gradient_editor_left_color_update to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %39 = bitcast %struct._GimpGradientEditor* %38 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_widget_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call26)
  %40 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %40, i32 0)
  %41 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %42 = bitcast %struct._GimpGradientEditor* %41 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_editor_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call28)
  %43 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpEditor*
  %call30 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %43)
  %44 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %45 = bitcast %struct._GimpGradientEditor* %44 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_editor_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call31)
  %46 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpEditor*
  %call33 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %46)
  %47 = bitcast i8** %call33 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call30, i8* %47)
  %48 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %color_dialog34 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %48, i32 0, i32 10
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog34, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_window_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call35)
  %51 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %51)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_editor_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_data_editor_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #2

declare i32 @gimp_data_is_dirty(%struct._GimpData*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GimpGradientSegment* @gradient_editor_save_selection(%struct._GimpGradientEditor* %editor) #0 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %prev = alloca %struct._GimpGradientSegment*, align 8
  %tmp = alloca %struct._GimpGradientSegment*, align 8
  %oseg = alloca %struct._GimpGradientSegment*, align 8
  %oaseg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %prev, align 8
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %0, i32 0, i32 14
  %1 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  store %struct._GimpGradientSegment* %1, %struct._GimpGradientSegment** %oseg, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %tmp, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call %struct._GimpGradientSegment* @gimp_gradient_segment_new()
  store %struct._GimpGradientSegment* %call, %struct._GimpGradientSegment** %seg, align 8
  %2 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %3 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %4 = bitcast %struct._GimpGradientSegment* %2 to i8*
  %5 = bitcast %struct._GimpGradientSegment* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 128, i32 8, i1 false)
  %6 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %cmp = icmp eq %struct._GimpGradientSegment* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %7 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %7, %struct._GimpGradientSegment** %tmp, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  %8 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %9, i32 0, i32 10
  store %struct._GimpGradientSegment* %8, %struct._GimpGradientSegment** %next, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %prev3 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %11, i32 0, i32 9
  store %struct._GimpGradientSegment* %10, %struct._GimpGradientSegment** %prev3, align 8
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next4 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %12, i32 0, i32 10
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %next4, align 8
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %13, %struct._GimpGradientSegment** %prev, align 8
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  store %struct._GimpGradientSegment* %14, %struct._GimpGradientSegment** %oaseg, align 8
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %next5 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %15, i32 0, i32 10
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next5, align 8
  store %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment** %oseg, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oaseg, align 8
  %18 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %18, i32 0, i32 15
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %cmp6 = icmp ne %struct._GimpGradientSegment* %17, %19
  br i1 %cmp6, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  ret %struct._GimpGradientSegment* %20
}

declare %struct._GtkWidget* @gimp_color_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GimpDialogFactory*, i8*, %struct._GimpRGB*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

; Function Attrs: nounwind uwtable
define internal void @gradient_editor_left_color_update(%struct._GimpColorDialog* %dialog, %struct._GimpRGB* %color, i32 %state, %struct._GimpGradientEditor* %editor) #0 {
entry:
  %dialog.addr = alloca %struct._GimpColorDialog*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %state.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GimpColorDialog* %dialog, %struct._GimpColorDialog** %dialog.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpGradientEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %4 = bitcast %struct._GimpData* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_gradient_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpGradient*
  store %struct._GimpGradient* %5, %struct._GimpGradient** %gradient, align 8
  %6 = load i32, i32* %state.addr, align 4
  switch i32 %6, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.5
    i32 1, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %8 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %8, i32 0, i32 14
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %10, i32 0, i32 15
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %13 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r4 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %13, i32 0, i32 15
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r4, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %14, i32 0, i32 6
  call void @gimp_gradient_segment_range_blend(%struct._GimpGradient* %7, %struct._GimpGradientSegment* %9, %struct._GimpGradientSegment* %11, %struct._GimpRGB* %12, %struct._GimpRGB* %right_color, i32 1, i32 1)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l6 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %16, i32 0, i32 14
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l6, align 8
  %18 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r7 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %18, i32 0, i32 15
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r7, align 8
  %20 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %21 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r8 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %21, i32 0, i32 15
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r8, align 8
  %right_color9 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %22, i32 0, i32 6
  call void @gimp_gradient_segment_range_blend(%struct._GimpGradient* %15, %struct._GimpGradientSegment* %17, %struct._GimpGradientSegment* %19, %struct._GimpRGB* %20, %struct._GimpRGB* %right_color9, i32 1, i32 1)
  %23 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %left_saved_segments = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %23, i32 0, i32 25
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %left_saved_segments, align 8
  call void @gimp_gradient_segments_free(%struct._GimpGradientSegment* %24)
  %25 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %color_dialog = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %25, i32 0, i32 10
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %26)
  %27 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %color_dialog10 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %27, i32 0, i32 10
  store %struct._GtkWidget* null, %struct._GtkWidget** %color_dialog10, align 8
  %28 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %29 = bitcast %struct._GimpGradientEditor* %28 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call11)
  %30 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %30, i32 1)
  %31 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %32 = bitcast %struct._GimpGradientEditor* %31 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_editor_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call13)
  %33 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpEditor*
  %call15 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %33)
  %34 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %35 = bitcast %struct._GimpGradientEditor* %34 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_editor_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call16)
  %36 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpEditor*
  %call18 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %36)
  %37 = bitcast i8** %call18 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call15, i8* %37)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %38 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %39 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %left_saved_segments20 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %39, i32 0, i32 25
  %40 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %left_saved_segments20, align 8
  call void @gradient_editor_replace_selection(%struct._GimpGradientEditor* %38, %struct._GimpGradientSegment* %40)
  %41 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %left_saved_dirty = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %41, i32 0, i32 26
  %42 = load i32, i32* %left_saved_dirty, align 4
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.19
  %43 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %44 = bitcast %struct._GimpGradient* %43 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_data_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call21)
  %45 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpData*
  call void @gimp_data_clean(%struct._GimpData* %45)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.19
  %46 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %47 = bitcast %struct._GimpGradient* %46 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_viewable_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call23)
  %48 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %48)
  %49 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %color_dialog25 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %49, i32 0, i32 10
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog25, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %50)
  %51 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %color_dialog26 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %51, i32 0, i32 10
  store %struct._GtkWidget* null, %struct._GtkWidget** %color_dialog26, align 8
  %52 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %53 = bitcast %struct._GimpGradientEditor* %52 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_widget_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call27)
  %54 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %54, i32 1)
  %55 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %56 = bitcast %struct._GimpGradientEditor* %55 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_editor_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call29)
  %57 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpEditor*
  %call31 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %57)
  %58 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %59 = bitcast %struct._GimpGradientEditor* %58 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_editor_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call32)
  %60 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpEditor*
  %call34 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %60)
  %61 = bitcast i8** %call34 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call31, i8* %61)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb.5, %sw.bb
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare i8** @gimp_editor_get_popup_data(%struct._GimpEditor*) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind uwtable
define void @gradient_editor_left_color_type_cmd_callback(%struct._GtkAction* %action, %struct._GtkAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %current.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %value = alloca i32, align 4
  %color_type = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkAction* %current, %struct._GtkAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %10 = bitcast %struct._GtkAction* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_radio_action_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkRadioAction*
  %call9 = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %11)
  store i32 %call9, i32* %value, align 4
  %12 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool = icmp ne %struct._GimpGradient* %12, null
  br i1 %tobool, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, i32* %value, align 4
  %cmp = icmp sge i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, i32* %value, align 4
  store i32 %14, i32* %color_type, align 4
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %17 = bitcast %struct._GimpGradientEditor* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_data_editor_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpDataEditor*
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %18, i32 0, i32 2
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %20 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %20, i32 0, i32 14
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %22 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l12 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %22, i32 0, i32 14
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l12, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %23, i32 0, i32 0
  %24 = load double, double* %left, align 8
  %call13 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %15, %struct._GimpContext* %19, %struct._GimpGradientSegment* %21, double %24, i32 0, %struct._GimpRGB* %color)
  %25 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %26 = bitcast %struct._GimpGradient* %25 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_data_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call14)
  %27 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %27)
  %28 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %29 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l16 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %29, i32 0, i32 14
  %30 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l16, align 8
  %31 = load i32, i32* %color_type, align 4
  call void @gimp_gradient_segment_set_left_color_type(%struct._GimpGradient* %28, %struct._GimpGradientSegment* %30, i32 %31)
  %32 = load i32, i32* %color_type, align 4
  %cmp17 = icmp eq i32 %32, 0
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then
  %33 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %34 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l19 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %34, i32 0, i32 14
  %35 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l19, align 8
  call void @gimp_gradient_segment_set_left_color(%struct._GimpGradient* %33, %struct._GimpGradientSegment* %35, %struct._GimpRGB* %color)
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then
  %36 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %37 = bitcast %struct._GimpGradient* %36 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_data_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call20)
  %38 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %38)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

declare i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_action_get_type() #2

declare %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient*, %struct._GimpContext*, %struct._GimpGradientSegment*, double, i32, %struct._GimpRGB*) #1

declare void @gimp_data_freeze(%struct._GimpData*) #1

declare void @gimp_gradient_segment_set_left_color_type(%struct._GimpGradient*, %struct._GimpGradientSegment*, i32) #1

declare void @gimp_gradient_segment_set_left_color(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpRGB*) #1

declare void @gimp_data_thaw(%struct._GimpData*) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_load_left_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %color_type = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %5, %struct._GimpDataEditor** %data_editor, align 8
  store i32 0, i32* %color_type, align 4
  %6 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 4
  %7 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %8 = bitcast %struct._GimpData* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %9, %struct._GimpGradient** %gradient, align 8
  %10 = load i32, i32* %value.addr, align 4
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.15
    i32 3, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %entry
  %11 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %11, i32 0, i32 14
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %12, i32 0, i32 9
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %cmp = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %14 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l7 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %14, i32 0, i32 14
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l7, align 8
  %prev8 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %15, i32 0, i32 9
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev8, align 8
  store %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment** %seg, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %17 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l9 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %17, i32 0, i32 14
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l9, align 8
  %call10 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %18)
  store %struct._GimpGradientSegment* %call10, %struct._GimpGradientSegment** %seg, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %19, i32 0, i32 6
  %20 = bitcast %struct._GimpRGB* %color to i8*
  %21 = bitcast %struct._GimpRGB* %right_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %22, i32 0, i32 5
  %23 = load i32, i32* %right_color_type, align 4
  store i32 %23, i32* %color_type, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %24 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %24, i32 0, i32 15
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %right_color12 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %25, i32 0, i32 6
  %26 = bitcast %struct._GimpRGB* %color to i8*
  %27 = bitcast %struct._GimpRGB* %right_color12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  %28 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l13 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %28, i32 0, i32 14
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l13, align 8
  %right_color_type14 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %29, i32 0, i32 5
  %30 = load i32, i32* %right_color_type14, align 4
  store i32 %30, i32* %color_type, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %31 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %31, i32 0, i32 2
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %32, %struct._GimpRGB* %color)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %33 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context17 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %33, i32 0, i32 2
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context17, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %34, %struct._GimpRGB* %color)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %35 = load i32, i32* %value.addr, align 4
  %sub = sub nsw i32 %35, 4
  %idxprom = sext i32 %sub to i64
  %36 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %36, i32 0, i32 24
  %arrayidx = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors, i32 0, i64 %idxprom
  %37 = bitcast %struct._GimpRGB* %color to i8*
  %38 = bitcast %struct._GimpRGB* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.16, %sw.bb.15, %sw.bb.11, %if.end
  %39 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %40 = bitcast %struct._GimpGradient* %39 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_data_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call18)
  %41 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %41)
  %42 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %43 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l20 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %43, i32 0, i32 14
  %44 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l20, align 8
  %45 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r21 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %45, i32 0, i32 15
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r21, align 8
  %47 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r22 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %47, i32 0, i32 15
  %48 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r22, align 8
  %right_color23 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %48, i32 0, i32 6
  call void @gimp_gradient_segment_range_blend(%struct._GimpGradient* %42, %struct._GimpGradientSegment* %44, %struct._GimpGradientSegment* %46, %struct._GimpRGB* %color, %struct._GimpRGB* %right_color23, i32 1, i32 1)
  %49 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %50 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l24 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %50, i32 0, i32 14
  %51 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l24, align 8
  %52 = load i32, i32* %color_type, align 4
  call void @gimp_gradient_segment_set_left_color_type(%struct._GimpGradient* %49, %struct._GimpGradientSegment* %51, i32 %52)
  %53 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %54 = bitcast %struct._GimpGradient* %53 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_data_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call25)
  %55 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %55)
  ret void
}

declare %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_gradient_segment_range_blend(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, %struct._GimpRGB*, %struct._GimpRGB*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_save_left_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %10, i32 0, i32 14
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %12 = load i32, i32* %value.addr, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %13, i32 0, i32 24
  %arrayidx = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors, i32 0, i64 %idxprom
  call void @gimp_gradient_segment_get_left_color(%struct._GimpGradient* %9, %struct._GimpGradientSegment* %11, %struct._GimpRGB* %arrayidx)
  ret void
}

declare void @gimp_gradient_segment_get_left_color(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_right_color_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %10 = bitcast %struct._GimpGradient* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_data_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpData*
  %call9 = call i32 @gimp_data_is_dirty(%struct._GimpData* %11)
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %right_saved_dirty = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %12, i32 0, i32 28
  store i32 %call9, i32* %right_saved_dirty, align 4
  %13 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %call10 = call %struct._GimpGradientSegment* @gradient_editor_save_selection(%struct._GimpGradientEditor* %13)
  %14 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %right_saved_segments = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %14, i32 0, i32 27
  store %struct._GimpGradientSegment* %call10, %struct._GimpGradientSegment** %right_saved_segments, align 8
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = bitcast %struct._GimpGradient* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_viewable_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpViewable*
  %18 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %19 = bitcast %struct._GimpGradientEditor* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_data_editor_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDataEditor*
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %20, i32 0, i32 2
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #4
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0)) #4
  %22 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %23 = bitcast %struct._GimpGradientEditor* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_widget_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWidget*
  %call19 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %25 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %25, i32 0, i32 14
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %26, i32 0, i32 6
  %call20 = call %struct._GtkWidget* @gimp_color_dialog_new(%struct._GimpViewable* %17, %struct._GimpContext* %21, i8* %call15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %call16, %struct._GtkWidget* %24, %struct._GimpDialogFactory* %call19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), %struct._GimpRGB* %right_color, i32 1, i32 1)
  %27 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %color_dialog = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %27, i32 0, i32 10
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %color_dialog, align 8
  %28 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %color_dialog21 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %28, i32 0, i32 10
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog21, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %31 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %color_dialog22 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %31, i32 0, i32 10
  %32 = bitcast %struct._GtkWidget** %color_dialog22 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 0)
  %33 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %color_dialog24 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %33, i32 0, i32 10
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog24, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %36 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %37 = bitcast %struct._GimpGradientEditor* %36 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDialog*, %struct._GimpRGB*, i32, %struct._GimpGradientEditor*)* @gradient_editor_right_color_update to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %39 = bitcast %struct._GimpGradientEditor* %38 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_widget_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call26)
  %40 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %40, i32 0)
  %41 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %42 = bitcast %struct._GimpGradientEditor* %41 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_editor_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call28)
  %43 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpEditor*
  %call30 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %43)
  %44 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %45 = bitcast %struct._GimpGradientEditor* %44 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_editor_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call31)
  %46 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpEditor*
  %call33 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %46)
  %47 = bitcast i8** %call33 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call30, i8* %47)
  %48 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %color_dialog34 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %48, i32 0, i32 10
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog34, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_window_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call35)
  %51 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %51)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_editor_right_color_update(%struct._GimpColorDialog* %dialog, %struct._GimpRGB* %color, i32 %state, %struct._GimpGradientEditor* %editor) #0 {
entry:
  %dialog.addr = alloca %struct._GimpColorDialog*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %state.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GimpColorDialog* %dialog, %struct._GimpColorDialog** %dialog.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpGradientEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %4 = bitcast %struct._GimpData* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_gradient_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpGradient*
  store %struct._GimpGradient* %5, %struct._GimpGradient** %gradient, align 8
  %6 = load i32, i32* %state.addr, align 4
  switch i32 %6, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.5
    i32 1, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %8 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %8, i32 0, i32 14
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %10, i32 0, i32 15
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l4 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %12, i32 0, i32 14
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l4, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %13, i32 0, i32 4
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_gradient_segment_range_blend(%struct._GimpGradient* %7, %struct._GimpGradientSegment* %9, %struct._GimpGradientSegment* %11, %struct._GimpRGB* %left_color, %struct._GimpRGB* %14, i32 1, i32 1)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l6 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %16, i32 0, i32 14
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l6, align 8
  %18 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r7 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %18, i32 0, i32 15
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r7, align 8
  %20 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l8 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %20, i32 0, i32 14
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l8, align 8
  %left_color9 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %21, i32 0, i32 4
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_gradient_segment_range_blend(%struct._GimpGradient* %15, %struct._GimpGradientSegment* %17, %struct._GimpGradientSegment* %19, %struct._GimpRGB* %left_color9, %struct._GimpRGB* %22, i32 1, i32 1)
  %23 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %right_saved_segments = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %23, i32 0, i32 27
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %right_saved_segments, align 8
  call void @gimp_gradient_segments_free(%struct._GimpGradientSegment* %24)
  %25 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %color_dialog = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %25, i32 0, i32 10
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %26)
  %27 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %color_dialog10 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %27, i32 0, i32 10
  store %struct._GtkWidget* null, %struct._GtkWidget** %color_dialog10, align 8
  %28 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %29 = bitcast %struct._GimpGradientEditor* %28 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call11)
  %30 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %30, i32 1)
  %31 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %32 = bitcast %struct._GimpGradientEditor* %31 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_editor_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call13)
  %33 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpEditor*
  %call15 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %33)
  %34 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %35 = bitcast %struct._GimpGradientEditor* %34 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_editor_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call16)
  %36 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpEditor*
  %call18 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %36)
  %37 = bitcast i8** %call18 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call15, i8* %37)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %38 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %39 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %right_saved_segments20 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %39, i32 0, i32 27
  %40 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %right_saved_segments20, align 8
  call void @gradient_editor_replace_selection(%struct._GimpGradientEditor* %38, %struct._GimpGradientSegment* %40)
  %41 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %right_saved_dirty = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %41, i32 0, i32 28
  %42 = load i32, i32* %right_saved_dirty, align 4
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.19
  %43 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %44 = bitcast %struct._GimpGradient* %43 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_data_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call21)
  %45 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpData*
  call void @gimp_data_clean(%struct._GimpData* %45)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.19
  %46 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %47 = bitcast %struct._GimpGradient* %46 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_viewable_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call23)
  %48 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %48)
  %49 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %color_dialog25 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %49, i32 0, i32 10
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog25, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %50)
  %51 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %color_dialog26 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %51, i32 0, i32 10
  store %struct._GtkWidget* null, %struct._GtkWidget** %color_dialog26, align 8
  %52 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %53 = bitcast %struct._GimpGradientEditor* %52 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_widget_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call27)
  %54 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %54, i32 1)
  %55 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %56 = bitcast %struct._GimpGradientEditor* %55 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_editor_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call29)
  %57 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpEditor*
  %call31 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %57)
  %58 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %59 = bitcast %struct._GimpGradientEditor* %58 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_editor_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call32)
  %60 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpEditor*
  %call34 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %60)
  %61 = bitcast i8** %call34 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call31, i8* %61)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @gradient_editor_right_color_type_cmd_callback(%struct._GtkAction* %action, %struct._GtkAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %current.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %value = alloca i32, align 4
  %color_type = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkAction* %current, %struct._GtkAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %10 = bitcast %struct._GtkAction* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_radio_action_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkRadioAction*
  %call9 = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %11)
  store i32 %call9, i32* %value, align 4
  %12 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool = icmp ne %struct._GimpGradient* %12, null
  br i1 %tobool, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, i32* %value, align 4
  %cmp = icmp sge i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, i32* %value, align 4
  store i32 %14, i32* %color_type, align 4
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %17 = bitcast %struct._GimpGradientEditor* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_data_editor_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpDataEditor*
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %18, i32 0, i32 2
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %20 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %20, i32 0, i32 15
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %22 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r12 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %22, i32 0, i32 15
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r12, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %23, i32 0, i32 2
  %24 = load double, double* %right, align 8
  %call13 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %15, %struct._GimpContext* %19, %struct._GimpGradientSegment* %21, double %24, i32 0, %struct._GimpRGB* %color)
  %25 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %26 = bitcast %struct._GimpGradient* %25 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_data_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call14)
  %27 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %27)
  %28 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %29 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r16 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %29, i32 0, i32 15
  %30 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r16, align 8
  %31 = load i32, i32* %color_type, align 4
  call void @gimp_gradient_segment_set_right_color_type(%struct._GimpGradient* %28, %struct._GimpGradientSegment* %30, i32 %31)
  %32 = load i32, i32* %color_type, align 4
  %cmp17 = icmp eq i32 %32, 0
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then
  %33 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %34 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r19 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %34, i32 0, i32 15
  %35 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r19, align 8
  call void @gimp_gradient_segment_set_right_color(%struct._GimpGradient* %33, %struct._GimpGradientSegment* %35, %struct._GimpRGB* %color)
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then
  %36 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %37 = bitcast %struct._GimpGradient* %36 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_data_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call20)
  %38 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %38)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

declare void @gimp_gradient_segment_set_right_color_type(%struct._GimpGradient*, %struct._GimpGradientSegment*, i32) #1

declare void @gimp_gradient_segment_set_right_color(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_load_right_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %color_type = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %5, %struct._GimpDataEditor** %data_editor, align 8
  store i32 0, i32* %color_type, align 4
  %6 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 4
  %7 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %8 = bitcast %struct._GimpData* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %9, %struct._GimpGradient** %gradient, align 8
  %10 = load i32, i32* %value.addr, align 4
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.15
    i32 3, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %entry
  %11 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %11, i32 0, i32 15
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %12, i32 0, i32 10
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  %cmp = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %14 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r7 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %14, i32 0, i32 15
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r7, align 8
  %next8 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %15, i32 0, i32 10
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next8, align 8
  store %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment** %seg, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %17 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r9 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %17, i32 0, i32 15
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r9, align 8
  %call10 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_first(%struct._GimpGradientSegment* %18)
  store %struct._GimpGradientSegment* %call10, %struct._GimpGradientSegment** %seg, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %19, i32 0, i32 4
  %20 = bitcast %struct._GimpRGB* %color to i8*
  %21 = bitcast %struct._GimpRGB* %left_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %22, i32 0, i32 3
  %23 = load i32, i32* %left_color_type, align 4
  store i32 %23, i32* %color_type, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %24 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %24, i32 0, i32 14
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %left_color12 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %25, i32 0, i32 4
  %26 = bitcast %struct._GimpRGB* %color to i8*
  %27 = bitcast %struct._GimpRGB* %left_color12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  %28 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l13 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %28, i32 0, i32 14
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l13, align 8
  %left_color_type14 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %29, i32 0, i32 3
  %30 = load i32, i32* %left_color_type14, align 4
  store i32 %30, i32* %color_type, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %31 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %31, i32 0, i32 2
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %32, %struct._GimpRGB* %color)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %33 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context17 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %33, i32 0, i32 2
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context17, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %34, %struct._GimpRGB* %color)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %35 = load i32, i32* %value.addr, align 4
  %sub = sub nsw i32 %35, 4
  %idxprom = sext i32 %sub to i64
  %36 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %36, i32 0, i32 24
  %arrayidx = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors, i32 0, i64 %idxprom
  %37 = bitcast %struct._GimpRGB* %color to i8*
  %38 = bitcast %struct._GimpRGB* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.16, %sw.bb.15, %sw.bb.11, %if.end
  %39 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %40 = bitcast %struct._GimpGradient* %39 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_data_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call18)
  %41 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %41)
  %42 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %43 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l20 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %43, i32 0, i32 14
  %44 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l20, align 8
  %45 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r21 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %45, i32 0, i32 15
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r21, align 8
  %47 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l22 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %47, i32 0, i32 14
  %48 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l22, align 8
  %left_color23 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %48, i32 0, i32 4
  call void @gimp_gradient_segment_range_blend(%struct._GimpGradient* %42, %struct._GimpGradientSegment* %44, %struct._GimpGradientSegment* %46, %struct._GimpRGB* %left_color23, %struct._GimpRGB* %color, i32 1, i32 1)
  %49 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %50 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l24 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %50, i32 0, i32 14
  %51 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l24, align 8
  %52 = load i32, i32* %color_type, align 4
  call void @gimp_gradient_segment_set_right_color_type(%struct._GimpGradient* %49, %struct._GimpGradientSegment* %51, i32 %52)
  %53 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %54 = bitcast %struct._GimpGradient* %53 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_data_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call25)
  %55 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %55)
  ret void
}

declare %struct._GimpGradientSegment* @gimp_gradient_segment_get_first(%struct._GimpGradientSegment*) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_save_right_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %10, i32 0, i32 15
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %12 = load i32, i32* %value.addr, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %13, i32 0, i32 24
  %arrayidx = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors, i32 0, i64 %idxprom
  call void @gimp_gradient_segment_get_right_color(%struct._GimpGradient* %9, %struct._GimpGradientSegment* %11, %struct._GimpRGB* %arrayidx)
  ret void
}

declare void @gimp_gradient_segment_get_right_color(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_blending_func_cmd_callback(%struct._GtkAction* %action, %struct._GtkAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %current.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %value = alloca i32, align 4
  %type = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkAction* %current, %struct._GtkAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %10 = bitcast %struct._GtkAction* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_radio_action_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkRadioAction*
  %call9 = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %11)
  store i32 %call9, i32* %value, align 4
  %12 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool = icmp ne %struct._GimpGradient* %12, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, i32* %value, align 4
  %cmp = icmp sge i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, i32* %value, align 4
  store i32 %14, i32* %type, align 4
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %16, i32 0, i32 14
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %18 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %18, i32 0, i32 15
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %20 = load i32, i32* %type, align 4
  call void @gimp_gradient_segment_range_set_blending_function(%struct._GimpGradient* %15, %struct._GimpGradientSegment* %17, %struct._GimpGradientSegment* %19, i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @gimp_gradient_segment_range_set_blending_function(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, i32) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_coloring_type_cmd_callback(%struct._GtkAction* %action, %struct._GtkAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %current.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %value = alloca i32, align 4
  %color = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkAction* %current, %struct._GtkAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %10 = bitcast %struct._GtkAction* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_radio_action_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkRadioAction*
  %call9 = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %11)
  store i32 %call9, i32* %value, align 4
  %12 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool = icmp ne %struct._GimpGradient* %12, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, i32* %value, align 4
  %cmp = icmp sge i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, i32* %value, align 4
  store i32 %14, i32* %color, align 4
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %16, i32 0, i32 14
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %18 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %18, i32 0, i32 15
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %20 = load i32, i32* %color, align 4
  call void @gimp_gradient_segment_range_set_coloring_type(%struct._GimpGradient* %15, %struct._GimpGradientSegment* %17, %struct._GimpGradientSegment* %19, i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @gimp_gradient_segment_range_set_coloring_type(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, i32) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_flip_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %10, i32 0, i32 14
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %12, i32 0, i32 15
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %14 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l7 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %14, i32 0, i32 14
  %15 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r8 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %15, i32 0, i32 15
  call void @gimp_gradient_segment_range_flip(%struct._GimpGradient* %9, %struct._GimpGradientSegment* %11, %struct._GimpGradientSegment* %13, %struct._GimpGradientSegment** %control_sel_l7, %struct._GimpGradientSegment** %control_sel_r8)
  ret void
}

declare void @gimp_gradient_segment_range_flip(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment**, %struct._GimpGradientSegment**) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_replicate_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkAdjustment*, align 8
  %title = alloca i8*, align 8
  %desc = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %5, %struct._GimpDataEditor** %data_editor, align 8
  %6 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %6, i32 0, i32 14
  %7 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %8 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %8, i32 0, i32 15
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %cmp = icmp eq %struct._GimpGradientSegment* %7, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0)) #4
  store i8* %call4, i8** %title, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %call5, i8** %desc, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0)) #4
  store i8* %call6, i8** %title, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0)) #4
  store i8* %call7, i8** %desc, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data8 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %10, i32 0, i32 4
  %11 = load %struct._GimpData*, %struct._GimpData** %data8, align 8
  %12 = bitcast %struct._GimpData* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_viewable_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpViewable*
  %14 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %14, i32 0, i32 2
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %16 = load i8*, i8** %title, align 8
  %17 = load i8*, i8** %desc, align 8
  %18 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %19 = bitcast %struct._GimpGradientEditor* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)) #4
  %call14 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %13, %struct._GimpContext* %15, i8* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %17, %struct._GtkWidget* %20, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 -6, i8* %call13, i32 -5, i8* null)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %dialog, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_dialog_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %23, i32 -5, i32 -6, i32 -1)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %26 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %27 = bitcast %struct._GimpGradientEditor* %26 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpGradientEditor*)* @gradient_editor_replicate_response to void ()*), i8* %27, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %vbox, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call19)
  %30 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %30, i32 12)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_dialog_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call21)
  %33 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkDialog*
  %call23 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %33)
  %34 = bitcast %struct._GtkWidget* %call23 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call24)
  %35 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 1, i32 1, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l26 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %38, i32 0, i32 14
  %39 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l26, align 8
  %40 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r27 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %40, i32 0, i32 15
  %41 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r27, align 8
  %cmp28 = icmp eq %struct._GimpGradientSegment* %39, %41
  br i1 %cmp28, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %if.end
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i32 0, i32 0)) #4
  %call31 = call %struct._GtkWidget* @gtk_label_new(i8* %call30)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %label, align 8
  br label %if.end.35

if.else.32:                                       ; preds = %if.end
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i32 0, i32 0)) #4
  %call34 = call %struct._GtkWidget* @gtk_label_new(i8* %call33)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %label, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.29
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call36)
  %44 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %44, %struct._GtkWidget* %45, i32 0, i32 0, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %47 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %replicate_times = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %47, i32 0, i32 23
  store i32 2, i32* %replicate_times, align 4
  %call38 = call %struct._GtkObject* @gtk_adjustment_new(double 2.000000e+00, double 2.000000e+00, double 2.100000e+01, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %48 = bitcast %struct._GtkObject* %call38 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_adjustment_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call39)
  %49 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %49, %struct._GtkAdjustment** %scale_data, align 8
  %50 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_data, align 8
  %call41 = call %struct._GtkWidget* @gtk_scale_new(i32 0, %struct._GtkAdjustment* %50)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %scale, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_scale_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call42)
  %53 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkScale*
  call void @gtk_scale_set_digits(%struct._GtkScale* %53, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_scale_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call44)
  %56 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkScale*
  call void @gtk_scale_set_value_pos(%struct._GtkScale* %56, i32 2)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call46)
  %59 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %59, %struct._GtkWidget* %60, i32 0, i32 1, i32 4)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %62 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_data, align 8
  %63 = bitcast %struct._GtkAdjustment* %62 to i8*
  %64 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %replicate_times48 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %64, i32 0, i32 23
  %65 = bitcast i32* %replicate_times48 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* %65, void (i8*, %struct._GClosure*)* null, i32 0)
  %66 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %67 = bitcast %struct._GimpGradientEditor* %66 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_widget_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call50)
  %68 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %68, i32 0)
  %69 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %70 = bitcast %struct._GimpGradientEditor* %69 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_editor_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call52)
  %71 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpEditor*
  %call54 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %71)
  %72 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %73 = bitcast %struct._GimpGradientEditor* %72 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_editor_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call55)
  %74 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpEditor*
  %call57 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %74)
  %75 = bitcast i8** %call57 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call54, i8* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  ret void
}

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gradient_editor_replicate_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._GimpGradientEditor* %editor) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %0)
  %1 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %2 = bitcast %struct._GimpGradientEditor* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %3, i32 1)
  %4 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpGradientEditor* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpEditor*
  %call4 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %6)
  %7 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpGradientEditor* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_editor_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpEditor*
  %call7 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %9)
  %10 = bitcast i8** %call7 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call4, i8* %10)
  %11 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %11, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %13 = bitcast %struct._GimpGradientEditor* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_data_editor_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %14, i32 0, i32 4
  %15 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %16 = bitcast %struct._GimpData* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_gradient_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpGradient*
  store %struct._GimpGradient* %17, %struct._GimpGradient** %gradient, align 8
  %18 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %19 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %19, i32 0, i32 14
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %21 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %21, i32 0, i32 15
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %23 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %replicate_times = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %23, i32 0, i32 23
  %24 = load i32, i32* %replicate_times, align 4
  %25 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l12 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %25, i32 0, i32 14
  %26 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r13 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %26, i32 0, i32 15
  call void @gimp_gradient_segment_range_replicate(%struct._GimpGradient* %18, %struct._GimpGradientSegment* %20, %struct._GimpGradientSegment* %22, i32 %24, %struct._GimpGradientSegment** %control_sel_l12, %struct._GimpGradientSegment** %control_sel_r13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare %struct._GtkWidget* @gtk_scale_new(i32, %struct._GtkAdjustment*) #1

declare void @gtk_scale_set_digits(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #2

declare void @gtk_scale_set_value_pos(%struct._GtkScale*, i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_split_midpoint_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %5, %struct._GimpDataEditor** %data_editor, align 8
  %6 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 4
  %7 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %8 = bitcast %struct._GimpData* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %9, %struct._GimpGradient** %gradient, align 8
  %10 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %11 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %11, i32 0, i32 2
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %13 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %13, i32 0, i32 14
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %15 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %15, i32 0, i32 15
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %17 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l7 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %17, i32 0, i32 14
  %18 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r8 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %18, i32 0, i32 15
  call void @gimp_gradient_segment_range_split_midpoint(%struct._GimpGradient* %10, %struct._GimpContext* %12, %struct._GimpGradientSegment* %14, %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment** %control_sel_l7, %struct._GimpGradientSegment** %control_sel_r8)
  ret void
}

declare void @gimp_gradient_segment_range_split_midpoint(%struct._GimpGradient*, %struct._GimpContext*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment**, %struct._GimpGradientSegment**) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_split_uniformly_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkAdjustment*, align 8
  %title = alloca i8*, align 8
  %desc = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %5, %struct._GimpDataEditor** %data_editor, align 8
  %6 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %6, i32 0, i32 14
  %7 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %8 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %8, i32 0, i32 15
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %cmp = icmp eq %struct._GimpGradientSegment* %7, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0)) #4
  store i8* %call4, i8** %title, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0)) #4
  store i8* %call5, i8** %desc, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0)) #4
  store i8* %call6, i8** %title, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0)) #4
  store i8* %call7, i8** %desc, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data8 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %10, i32 0, i32 4
  %11 = load %struct._GimpData*, %struct._GimpData** %data8, align 8
  %12 = bitcast %struct._GimpData* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_viewable_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpViewable*
  %14 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %14, i32 0, i32 2
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %16 = load i8*, i8** %title, align 8
  %17 = load i8*, i8** %desc, align 8
  %18 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %19 = bitcast %struct._GimpGradientEditor* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)) #4
  %call14 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %13, %struct._GimpContext* %15, i8* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %17, %struct._GtkWidget* %20, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 -6, i8* %call13, i32 -5, i8* null)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %dialog, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_dialog_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %23, i32 -5, i32 -6, i32 -1)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %26 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %27 = bitcast %struct._GimpGradientEditor* %26 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpGradientEditor*)* @gradient_editor_split_uniform_response to void ()*), i8* %27, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %vbox, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call19)
  %30 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %30, i32 12)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_dialog_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call21)
  %33 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkDialog*
  %call23 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %33)
  %34 = bitcast %struct._GtkWidget* %call23 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call24)
  %35 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 1, i32 1, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l26 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %38, i32 0, i32 14
  %39 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l26, align 8
  %40 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r27 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %40, i32 0, i32 15
  %41 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r27, align 8
  %cmp28 = icmp eq %struct._GimpGradientSegment* %39, %41
  br i1 %cmp28, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %if.end
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.27, i32 0, i32 0)) #4
  %call31 = call %struct._GtkWidget* @gtk_label_new(i8* %call30)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %label, align 8
  br label %if.end.35

if.else.32:                                       ; preds = %if.end
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.28, i32 0, i32 0)) #4
  %call34 = call %struct._GtkWidget* @gtk_label_new(i8* %call33)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %label, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.29
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call36)
  %44 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %44, %struct._GtkWidget* %45, i32 0, i32 0, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %47 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %split_parts = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %47, i32 0, i32 22
  store i32 2, i32* %split_parts, align 4
  %call38 = call %struct._GtkObject* @gtk_adjustment_new(double 2.000000e+00, double 2.000000e+00, double 2.100000e+01, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %48 = bitcast %struct._GtkObject* %call38 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_adjustment_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call39)
  %49 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %49, %struct._GtkAdjustment** %scale_data, align 8
  %50 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_data, align 8
  %call41 = call %struct._GtkWidget* @gtk_scale_new(i32 0, %struct._GtkAdjustment* %50)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %scale, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_scale_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call42)
  %53 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkScale*
  call void @gtk_scale_set_digits(%struct._GtkScale* %53, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_scale_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call44)
  %56 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkScale*
  call void @gtk_scale_set_value_pos(%struct._GtkScale* %56, i32 2)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call46)
  %59 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %59, %struct._GtkWidget* %60, i32 0, i32 0, i32 4)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %62 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_data, align 8
  %63 = bitcast %struct._GtkAdjustment* %62 to i8*
  %64 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %split_parts48 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %64, i32 0, i32 22
  %65 = bitcast i32* %split_parts48 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* %65, void (i8*, %struct._GClosure*)* null, i32 0)
  %66 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %67 = bitcast %struct._GimpGradientEditor* %66 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_widget_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call50)
  %68 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %68, i32 0)
  %69 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %70 = bitcast %struct._GimpGradientEditor* %69 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_editor_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call52)
  %71 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpEditor*
  %call54 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %71)
  %72 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %73 = bitcast %struct._GimpGradientEditor* %72 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_editor_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call55)
  %74 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpEditor*
  %call57 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %74)
  %75 = bitcast i8** %call57 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call54, i8* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_editor_split_uniform_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._GimpGradientEditor* %editor) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %0)
  %1 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %2 = bitcast %struct._GimpGradientEditor* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %3, i32 1)
  %4 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpGradientEditor* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpEditor*
  %call4 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %6)
  %7 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpGradientEditor* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_editor_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpEditor*
  %call7 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %9)
  %10 = bitcast i8** %call7 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call4, i8* %10)
  %11 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %11, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %13 = bitcast %struct._GimpGradientEditor* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_data_editor_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %14, %struct._GimpDataEditor** %data_editor, align 8
  %15 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %15, i32 0, i32 4
  %16 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %17 = bitcast %struct._GimpData* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_gradient_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpGradient*
  store %struct._GimpGradient* %18, %struct._GimpGradient** %gradient, align 8
  %19 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %20 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %20, i32 0, i32 2
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %22 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %22, i32 0, i32 14
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %24 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %24, i32 0, i32 15
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %26 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %split_parts = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %26, i32 0, i32 22
  %27 = load i32, i32* %split_parts, align 4
  %28 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l12 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %28, i32 0, i32 14
  %29 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r13 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %29, i32 0, i32 15
  call void @gimp_gradient_segment_range_split_uniform(%struct._GimpGradient* %19, %struct._GimpContext* %21, %struct._GimpGradientSegment* %23, %struct._GimpGradientSegment* %25, i32 %27, %struct._GimpGradientSegment** %control_sel_l12, %struct._GimpGradientSegment** %control_sel_r13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gradient_editor_delete_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %10, i32 0, i32 14
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %12, i32 0, i32 15
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %14 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l7 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %14, i32 0, i32 14
  %15 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r8 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %15, i32 0, i32 15
  call void @gimp_gradient_segment_range_delete(%struct._GimpGradient* %9, %struct._GimpGradientSegment* %11, %struct._GimpGradientSegment* %13, %struct._GimpGradientSegment** %control_sel_l7, %struct._GimpGradientSegment** %control_sel_r8)
  ret void
}

declare void @gimp_gradient_segment_range_delete(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment**, %struct._GimpGradientSegment**) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_recenter_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %10, i32 0, i32 14
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %12, i32 0, i32 15
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  call void @gimp_gradient_segment_range_recenter_handles(%struct._GimpGradient* %9, %struct._GimpGradientSegment* %11, %struct._GimpGradientSegment* %13)
  ret void
}

declare void @gimp_gradient_segment_range_recenter_handles(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_redistribute_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %10, i32 0, i32 14
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %12, i32 0, i32 15
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  call void @gimp_gradient_segment_range_redistribute_handles(%struct._GimpGradient* %9, %struct._GimpGradientSegment* %11, %struct._GimpGradientSegment* %13)
  ret void
}

declare void @gimp_gradient_segment_range_redistribute_handles(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_blend_color_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %10, i32 0, i32 14
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %12, i32 0, i32 15
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %14 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l7 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %14, i32 0, i32 14
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l7, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %15, i32 0, i32 4
  %16 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r8 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %16, i32 0, i32 15
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r8, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %17, i32 0, i32 6
  call void @gimp_gradient_segment_range_blend(%struct._GimpGradient* %9, %struct._GimpGradientSegment* %11, %struct._GimpGradientSegment* %13, %struct._GimpRGB* %left_color, %struct._GimpRGB* %right_color, i32 1, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gradient_editor_blend_opacity_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %10, i32 0, i32 14
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %12, i32 0, i32 15
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %14 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l7 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %14, i32 0, i32 14
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l7, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %15, i32 0, i32 4
  %16 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r8 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %16, i32 0, i32 15
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r8, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %17, i32 0, i32 6
  call void @gimp_gradient_segment_range_blend(%struct._GimpGradient* %9, %struct._GimpGradientSegment* %11, %struct._GimpGradientSegment* %13, %struct._GimpRGB* %left_color, %struct._GimpRGB* %right_color, i32 0, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gradient_editor_zoom_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = load i32, i32* %value.addr, align 4
  call void @gimp_gradient_editor_zoom(%struct._GimpGradientEditor* %3, i32 %4)
  ret void
}

declare void @gimp_gradient_editor_zoom(%struct._GimpGradientEditor*, i32) #1

declare void @gimp_gradient_segments_free(%struct._GimpGradientSegment*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gradient_editor_replace_selection(%struct._GimpGradientEditor* %editor, %struct._GimpGradientSegment* %replace_seg) #0 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %replace_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %lseg = alloca %struct._GimpGradientSegment*, align 8
  %rseg = alloca %struct._GimpGradientSegment*, align 8
  %replace_last = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store %struct._GimpGradientSegment* %replace_seg, %struct._GimpGradientSegment** %replace_seg.addr, align 8
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpGradientEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %4 = bitcast %struct._GimpData* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_gradient_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpGradient*
  store %struct._GimpGradient* %5, %struct._GimpGradient** %gradient, align 8
  %6 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %6, i32 0, i32 14
  %7 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %7, i32 0, i32 9
  %8 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  store %struct._GimpGradientSegment* %8, %struct._GimpGradientSegment** %lseg, align 8
  %9 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %9, i32 0, i32 15
  %10 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %10, i32 0, i32 10
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %11, %struct._GimpGradientSegment** %rseg, align 8
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %replace_seg.addr, align 8
  %call4 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %12)
  store %struct._GimpGradientSegment* %call4, %struct._GimpGradientSegment** %replace_last, align 8
  %13 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r5 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %13, i32 0, i32 15
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r5, align 8
  %next6 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %14, i32 0, i32 10
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %next6, align 8
  %15 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l7 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %15, i32 0, i32 14
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l7, align 8
  call void @gimp_gradient_segments_free(%struct._GimpGradientSegment* %16)
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %17, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %replace_seg.addr, align 8
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %next8 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %19, i32 0, i32 10
  store %struct._GimpGradientSegment* %18, %struct._GimpGradientSegment** %next8, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %replace_seg.addr, align 8
  %21 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %21, i32 0, i32 1
  store %struct._GimpGradientSegment* %20, %struct._GimpGradientSegment** %segments, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %replace_seg.addr, align 8
  %prev9 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %23, i32 0, i32 9
  store %struct._GimpGradientSegment* %22, %struct._GimpGradientSegment** %prev9, align 8
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %tobool10 = icmp ne %struct._GimpGradientSegment* %24, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %replace_last, align 8
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %prev12 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %26, i32 0, i32 9
  store %struct._GimpGradientSegment* %25, %struct._GimpGradientSegment** %prev12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %28 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %replace_last, align 8
  %next14 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %28, i32 0, i32 10
  store %struct._GimpGradientSegment* %27, %struct._GimpGradientSegment** %next14, align 8
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %replace_seg.addr, align 8
  %30 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l15 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %30, i32 0, i32 14
  store %struct._GimpGradientSegment* %29, %struct._GimpGradientSegment** %control_sel_l15, align 8
  %31 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %replace_last, align 8
  %32 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r16 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %32, i32 0, i32 15
  store %struct._GimpGradientSegment* %31, %struct._GimpGradientSegment** %control_sel_r16, align 8
  ret void
}

declare void @gimp_data_clean(%struct._GimpData*) #1

declare void @gimp_viewable_invalidate_preview(%struct._GimpViewable*) #1

declare %struct._GimpGradientSegment* @gimp_gradient_segment_new() #1

declare void @gimp_gradient_segment_range_split_uniform(%struct._GimpGradient*, %struct._GimpContext*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, i32, %struct._GimpGradientSegment**, %struct._GimpGradientSegment**) #1

declare void @gimp_gradient_segment_range_replicate(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, i32, %struct._GimpGradientSegment**, %struct._GimpGradientSegment**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
