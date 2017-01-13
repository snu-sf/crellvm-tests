; ModuleID = './app/dialogs/convert-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
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
%struct._GimpProgress = type opaque
%struct.IndexedDialog = type { %struct._GtkWidget*, %struct._GimpImage*, %struct._GimpProgress*, %struct._GimpContext*, %struct._GimpContainer*, %struct._GimpPalette*, i32, i32, i32, i32, i32 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GBinding = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.convert_dialog_new = private unnamed_addr constant [19 x i8] c"convert_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (parent)\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@saved_dither_type = internal global i32 0, align 4
@saved_alpha_dither = internal global i32 0, align 4
@saved_remove_dups = internal global i32 1, align 4
@saved_num_colors = internal global i32 256, align 4
@saved_palette_type = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Indexed Color Conversion\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"gimp-image-convert-indexed\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"gimp-convert-indexed\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Convert Image to Indexed Colors\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"C_onvert\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Colormap\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"_Maximum number of colors:\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"_Remove unused colors from colormap\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Dithering\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Color _dithering:\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Enable dithering of _transparency\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Converting to indexed colors\00", align 1
@saved_palette = internal global %struct._GimpPalette* null, align 8
@.str.23 = private unnamed_addr constant [15 x i8] c"convert-dialog\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"Web\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"palette-changed\00", align 1
@.str.26 = private unnamed_addr constant [55 x i8] c"Cannot convert to a palette with more than 256 colors.\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @convert_dialog_new(%struct._GimpImage* %image, %struct._GimpContext* %context, %struct._GtkWidget* %parent, %struct._GimpProgress* %progress) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %dialog = alloca %struct.IndexedDialog*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %palette_box = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %__inst70 = alloca %struct._GTypeInstance*, align 8
  %__t72 = alloca i64, align 8
  %__r75 = alloca i32, align 4
  %tmp90 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.convert_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.convert_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gtk_widget_get_type() #5
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #6
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.convert_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %39 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp68 = icmp eq %struct._GimpProgress* %39, null
  br i1 %cmp68, label %if.then.92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.67
  %40 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %41 = bitcast %struct._GimpProgress* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst70, align 8
  %call73 = call i64 @gimp_progress_interface_get_type() #5
  store i64 %call73, i64* %__t72, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %tobool76 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool76, label %if.else.78, label %if.then.77

if.then.77:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r75, align 4
  br label %if.end.89

if.else.78:                                       ; preds = %lor.lhs.false
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class79 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class79, align 8
  %tobool80 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool80, label %land.lhs.true.81, label %if.else.86

land.lhs.true.81:                                 ; preds = %if.else.78
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class82 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class82, align 8
  %g_type83 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type83, align 8
  %48 = load i64, i64* %__t72, align 8
  %cmp84 = icmp eq i64 %47, %48
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %land.lhs.true.81
  store i32 1, i32* %__r75, align 4
  br label %if.end.88

if.else.86:                                       ; preds = %land.lhs.true.81, %if.else.78
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %50 = load i64, i64* %__t72, align 8
  %call87 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #6
  store i32 %call87, i32* %__r75, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.86, %if.then.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.77
  %51 = load i32, i32* %__r75, align 4
  store i32 %51, i32* %tmp90
  %52 = load i32, i32* %tmp90
  %tobool91 = icmp ne i32 %52, 0
  br i1 %tobool91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %if.end.89, %do.body.67
  br label %if.end.94

if.else.93:                                       ; preds = %if.end.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.convert_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  %call96 = call noalias i8* @g_slice_alloc0(i64 72)
  %53 = bitcast i8* %call96 to %struct.IndexedDialog*
  store %struct.IndexedDialog* %53, %struct.IndexedDialog** %dialog, align 8
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %55 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %image97 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %55, i32 0, i32 1
  store %struct._GimpImage* %54, %struct._GimpImage** %image97, align 8
  %56 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %57 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %progress98 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %57, i32 0, i32 2
  store %struct._GimpProgress* %56, %struct._GimpProgress** %progress98, align 8
  %58 = load i32, i32* @saved_dither_type, align 4
  %59 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %dither_type = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %59, i32 0, i32 6
  store i32 %58, i32* %dither_type, align 4
  %60 = load i32, i32* @saved_alpha_dither, align 4
  %61 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %alpha_dither = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %61, i32 0, i32 7
  store i32 %60, i32* %alpha_dither, align 4
  %62 = load i32, i32* @saved_remove_dups, align 4
  %63 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %remove_dups = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %63, i32 0, i32 8
  store i32 %62, i32* %remove_dups, align 4
  %64 = load i32, i32* @saved_num_colors, align 4
  %65 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %num_colors = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %65, i32 0, i32 9
  store i32 %64, i32* %num_colors, align 4
  %66 = load i32, i32* @saved_palette_type, align 4
  %67 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %palette_type = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %67, i32 0, i32 10
  store i32 %66, i32* %palette_type, align 4
  %68 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %69 = bitcast %struct._GimpImage* %68 to %struct._GTypeInstance*
  %call99 = call i64 @gimp_viewable_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call99)
  %70 = bitcast %struct._GTypeInstance* %call100 to %struct._GimpViewable*
  %71 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0)) #7
  %call102 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0)) #7
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call103 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %70, %struct._GimpContext* %71, i8* %call101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* %call102, %struct._GtkWidget* %72, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 -6, i8* null)
  %73 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %dialog104 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %73, i32 0, i32 0
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %dialog104, align 8
  %74 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %dialog105 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %74, i32 0, i32 0
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog105, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_dialog_get_type() #5
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call106)
  %77 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkDialog*
  %call108 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)) #7
  %call109 = call %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog* %77, i8* %call108, i32 -5)
  store %struct._GtkWidget* %call109, %struct._GtkWidget** %button, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_button_get_type() #5
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call110)
  %80 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkButton*
  %call112 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 4)
  call void @gtk_button_set_image(%struct._GtkButton* %80, %struct._GtkWidget* %call112)
  %81 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %dialog113 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %81, i32 0, i32 0
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog113, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_dialog_get_type() #5
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call114)
  %84 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %84, i32 -5, i32 -6, i32 -1)
  %85 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %dialog116 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %85, i32 0, i32 0
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog116, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call117 = call i64 @gtk_window_get_type() #5
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call117)
  %88 = bitcast %struct._GTypeInstance* %call118 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %88, i32 0)
  %89 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %dialog119 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %89, i32 0, i32 0
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog119, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 80)
  %92 = bitcast %struct._GTypeInstance* %call120 to %struct._GObject*
  %93 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %94 = bitcast %struct.IndexedDialog* %93 to i8*
  call void @g_object_weak_ref(%struct._GObject* %92, void (i8*, %struct._GObject*)* bitcast (void (%struct.IndexedDialog*)* @convert_dialog_free to void (i8*, %struct._GObject*)*), i8* %94)
  %95 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %dialog121 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %95, i32 0, i32 0
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog121, align 8
  %97 = bitcast %struct._GtkWidget* %96 to i8*
  %98 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %99 = bitcast %struct.IndexedDialog* %98 to i8*
  %call122 = call i64 @g_signal_connect_data(i8* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.IndexedDialog*)* @convert_dialog_response to void ()*), i8* %99, void (i8*, %struct._GClosure*)* null, i32 0)
  %100 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %call123 = call %struct._GtkWidget* @convert_dialog_palette_box(%struct.IndexedDialog* %100)
  store %struct._GtkWidget* %call123, %struct._GtkWidget** %palette_box, align 8
  %call124 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call124, %struct._GtkWidget** %main_vbox, align 8
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_container_get_type() #5
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call125)
  %103 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %103, i32 12)
  %104 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %dialog127 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %104, i32 0, i32 0
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog127, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_dialog_get_type() #5
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call128)
  %107 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkDialog*
  %call130 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %107)
  %108 = bitcast %struct._GtkWidget* %call130 to %struct._GTypeInstance*
  %call131 = call i64 @gtk_box_get_type() #5
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call131)
  %109 = bitcast %struct._GTypeInstance* %call132 to %struct._GtkBox*
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %109, %struct._GtkWidget* %110, i32 1, i32 1, i32 0)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %111)
  %call133 = call i64 @gimp_convert_palette_type_get_type() #5
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %palette_box, align 8
  %tobool134 = icmp ne %struct._GtkWidget* %112, null
  %cond = select i1 %tobool134, i32 4, i32 3
  %call135 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)) #7
  %call136 = call %struct._GtkWidget* @gtk_label_new(i8* %call135)
  %113 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %palette_type137 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %113, i32 0, i32 10
  %114 = bitcast i32* %palette_type137 to i8*
  %call138 = call %struct._GtkWidget* @gimp_enum_radio_frame_new_with_range(i64 %call133, i32 0, i32 %cond, %struct._GtkWidget* %call136, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* %114, %struct._GtkWidget** %button)
  store %struct._GtkWidget* %call138, %struct._GtkWidget** %frame, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call139 = call i64 @gtk_radio_button_get_type() #5
  %call140 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call139)
  %117 = bitcast %struct._GTypeInstance* %call140 to %struct._GtkRadioButton*
  %118 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %palette_type141 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %118, i32 0, i32 10
  %119 = load i32, i32* %palette_type141, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %117, i32 %119)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call142 = call i64 @gtk_box_get_type() #5
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call142)
  %122 = bitcast %struct._GTypeInstance* %call143 to %struct._GtkBox*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %122, %struct._GtkWidget* %123, i32 0, i32 0, i32 0)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %call144 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call144, %struct._GtkWidget** %hbox, align 8
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call145 = call i64 @gtk_frame_get_type() #5
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call145)
  %127 = bitcast %struct._GTypeInstance* %call146 to %struct._GtkFrame*
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gimp_enum_radio_frame_add(%struct._GtkFrame* %127, %struct._GtkWidget* %128, i32 0, i32 1)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %129)
  %call147 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0)) #7
  %call148 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call147)
  store %struct._GtkWidget* %call148, %struct._GtkWidget** %label, align 8
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call149 = call i64 @gtk_box_get_type() #5
  %call150 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call149)
  %132 = bitcast %struct._GTypeInstance* %call150 to %struct._GtkBox*
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %132, %struct._GtkWidget* %133, i32 0, i32 0, i32 0)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %134)
  %135 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %num_colors151 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %135, i32 0, i32 9
  %136 = load i32, i32* %num_colors151, align 4
  %cmp152 = icmp eq i32 %136, 256
  br i1 %cmp152, label %land.lhs.true.153, label %if.end.158

land.lhs.true.153:                                ; preds = %do.end.95
  %137 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call154 = call i32 @gimp_image_has_alpha(%struct._GimpImage* %137)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %land.lhs.true.153
  %138 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %num_colors157 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %138, i32 0, i32 9
  store i32 255, i32* %num_colors157, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %land.lhs.true.153, %do.end.95
  %139 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %num_colors159 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %139, i32 0, i32 9
  %140 = load i32, i32* %num_colors159, align 4
  %conv = sitofp i32 %140 to double
  %call160 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %conv, double 2.000000e+00, double 2.560000e+02, double 1.000000e+00, double 8.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call160, %struct._GtkWidget** %spinbutton, align 8
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call161 = call i64 @gtk_label_get_type() #5
  %call162 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call161)
  %143 = bitcast %struct._GTypeInstance* %call162 to %struct._GtkLabel*
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %143, %struct._GtkWidget* %144)
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %146 = bitcast %struct._GtkWidget* %145 to %struct._GTypeInstance*
  %call163 = call i64 @gtk_box_get_type() #5
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %146, i64 %call163)
  %147 = bitcast %struct._GTypeInstance* %call164 to %struct._GtkBox*
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %147, %struct._GtkWidget* %148, i32 0, i32 0, i32 0)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %149)
  %150 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %151 = bitcast %struct._GtkObject* %150 to i8*
  %152 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %num_colors165 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %152, i32 0, i32 9
  %153 = bitcast i32* %num_colors165 to i8*
  %call166 = call i64 @g_signal_connect_data(i8* %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* %153, void (i8*, %struct._GClosure*)* null, i32 0)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %palette_box, align 8
  %tobool167 = icmp ne %struct._GtkWidget* %154, null
  br i1 %tobool167, label %if.then.168, label %if.end.171

if.then.168:                                      ; preds = %if.end.158
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call169 = call i64 @gtk_frame_get_type() #5
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call169)
  %157 = bitcast %struct._GTypeInstance* %call170 to %struct._GtkFrame*
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %palette_box, align 8
  call void @gimp_enum_radio_frame_add(%struct._GtkFrame* %157, %struct._GtkWidget* %158, i32 4, i32 1)
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %palette_box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %159)
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.168, %if.end.158
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %161 = bitcast %struct._GtkWidget* %160 to %struct._GTypeInstance*
  %call172 = call i64 @gtk_bin_get_type() #5
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %161, i64 %call172)
  %162 = bitcast %struct._GTypeInstance* %call173 to %struct._GtkBin*
  %call174 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %162)
  store %struct._GtkWidget* %call174, %struct._GtkWidget** %vbox, align 8
  %call175 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0)) #7
  %call176 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call175)
  store %struct._GtkWidget* %call176, %struct._GtkWidget** %toggle, align 8
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %164 = bitcast %struct._GtkWidget* %163 to %struct._GTypeInstance*
  %call177 = call i64 @gtk_toggle_button_get_type() #5
  %call178 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call177)
  %165 = bitcast %struct._GTypeInstance* %call178 to %struct._GtkToggleButton*
  %166 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %remove_dups179 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %166, i32 0, i32 8
  %167 = load i32, i32* %remove_dups179, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %165, i32 %167)
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %169 = bitcast %struct._GtkWidget* %168 to %struct._GTypeInstance*
  %call180 = call i64 @gtk_box_get_type() #5
  %call181 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %169, i64 %call180)
  %170 = bitcast %struct._GTypeInstance* %call181 to %struct._GtkBox*
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %170, %struct._GtkWidget* %171, i32 0, i32 0, i32 3)
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %172)
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %174 = bitcast %struct._GtkWidget* %173 to i8*
  %175 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %remove_dups182 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %175, i32 0, i32 8
  %176 = bitcast i32* %remove_dups182 to i8*
  %call183 = call i64 @g_signal_connect_data(i8* %174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %176, void (i8*, %struct._GClosure*)* null, i32 0)
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %178 = bitcast %struct._GtkWidget* %177 to i8*
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %180 = bitcast %struct._GtkWidget* %179 to i8*
  %call184 = call %struct._GBinding* @g_object_bind_property(i8* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* %180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 6)
  %call185 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #7
  %call186 = call %struct._GtkWidget* @gimp_frame_new(i8* %call185)
  store %struct._GtkWidget* %call186, %struct._GtkWidget** %frame, align 8
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %182 = bitcast %struct._GtkWidget* %181 to %struct._GTypeInstance*
  %call187 = call i64 @gtk_box_get_type() #5
  %call188 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %182, i64 %call187)
  %183 = bitcast %struct._GTypeInstance* %call188 to %struct._GtkBox*
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %183, %struct._GtkWidget* %184, i32 0, i32 0, i32 0)
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %185)
  %call189 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call189, %struct._GtkWidget** %vbox, align 8
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %187 = bitcast %struct._GtkWidget* %186 to %struct._GTypeInstance*
  %call190 = call i64 @gtk_container_get_type() #5
  %call191 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call190)
  %188 = bitcast %struct._GTypeInstance* %call191 to %struct._GtkContainer*
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %188, %struct._GtkWidget* %189)
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %190)
  %call192 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call192, %struct._GtkWidget** %hbox, align 8
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %192 = bitcast %struct._GtkWidget* %191 to %struct._GTypeInstance*
  %call193 = call i64 @gtk_box_get_type() #5
  %call194 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %192, i64 %call193)
  %193 = bitcast %struct._GTypeInstance* %call194 to %struct._GtkBox*
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %193, %struct._GtkWidget* %194, i32 0, i32 0, i32 0)
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %195)
  %call195 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0)) #7
  %call196 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call195)
  store %struct._GtkWidget* %call196, %struct._GtkWidget** %label, align 8
  %196 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %197 = bitcast %struct._GtkWidget* %196 to %struct._GTypeInstance*
  %call197 = call i64 @gtk_box_get_type() #5
  %call198 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %197, i64 %call197)
  %198 = bitcast %struct._GTypeInstance* %call198 to %struct._GtkBox*
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %198, %struct._GtkWidget* %199, i32 0, i32 0, i32 0)
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %200)
  %call199 = call i64 @gimp_convert_dither_type_get_type() #5
  %call200 = call %struct._GtkWidget* @gimp_enum_combo_box_new(i64 %call199)
  store %struct._GtkWidget* %call200, %struct._GtkWidget** %combo, align 8
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %202 = bitcast %struct._GtkWidget* %201 to %struct._GTypeInstance*
  %call201 = call i64 @gtk_label_get_type() #5
  %call202 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %202, i64 %call201)
  %203 = bitcast %struct._GTypeInstance* %call202 to %struct._GtkLabel*
  %204 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %203, %struct._GtkWidget* %204)
  %205 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %206 = bitcast %struct._GtkWidget* %205 to %struct._GTypeInstance*
  %call203 = call i64 @gtk_box_get_type() #5
  %call204 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %206, i64 %call203)
  %207 = bitcast %struct._GTypeInstance* %call204 to %struct._GtkBox*
  %208 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %207, %struct._GtkWidget* %208, i32 1, i32 1, i32 0)
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %209)
  %210 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %211 = bitcast %struct._GtkWidget* %210 to %struct._GTypeInstance*
  %call205 = call i64 @gimp_int_combo_box_get_type() #5
  %call206 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %211, i64 %call205)
  %212 = bitcast %struct._GTypeInstance* %call206 to %struct._GimpIntComboBox*
  %213 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %dither_type207 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %213, i32 0, i32 6
  %214 = load i32, i32* %dither_type207, align 4
  %215 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %dither_type208 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %215, i32 0, i32 6
  %216 = bitcast i32* %dither_type208 to i8*
  %call209 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %212, i32 %214, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* %216)
  %call210 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0)) #7
  %call211 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call210)
  store %struct._GtkWidget* %call211, %struct._GtkWidget** %toggle, align 8
  %217 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %218 = bitcast %struct._GtkWidget* %217 to %struct._GTypeInstance*
  %call212 = call i64 @gtk_toggle_button_get_type() #5
  %call213 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %218, i64 %call212)
  %219 = bitcast %struct._GTypeInstance* %call213 to %struct._GtkToggleButton*
  %220 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %alpha_dither214 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %220, i32 0, i32 7
  %221 = load i32, i32* %alpha_dither214, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %219, i32 %221)
  %222 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %223 = bitcast %struct._GtkWidget* %222 to %struct._GTypeInstance*
  %call215 = call i64 @gtk_box_get_type() #5
  %call216 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %223, i64 %call215)
  %224 = bitcast %struct._GTypeInstance* %call216 to %struct._GtkBox*
  %225 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %224, %struct._GtkWidget* %225, i32 0, i32 0, i32 0)
  %226 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %226)
  %227 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %228 = bitcast %struct._GtkWidget* %227 to i8*
  %229 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %alpha_dither217 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %229, i32 0, i32 7
  %230 = bitcast i32* %alpha_dither217 to i8*
  %call218 = call i64 @g_signal_connect_data(i8* %228, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %230, void (i8*, %struct._GClosure*)* null, i32 0)
  %231 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog, align 8
  %dialog219 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %231, i32 0, i32 0
  %232 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog219, align 8
  store %struct._GtkWidget* %232, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.171, %if.else.93, %if.else.64, %if.else.36, %if.else.9
  %233 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %233
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_standard_help_func(i8*, i8*) #3

declare %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog*, i8*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @gtk_button_set_image(%struct._GtkButton*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @convert_dialog_free(%struct.IndexedDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.IndexedDialog*, align 8
  store %struct.IndexedDialog* %dialog, %struct.IndexedDialog** %dialog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %1 = bitcast %struct.IndexedDialog* %0 to i8*
  call void @g_slice_free1(i64 72, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @convert_dialog_response(%struct._GtkWidget* %widget, i32 %response_id, %struct.IndexedDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct.IndexedDialog*, align 8
  %progress = alloca %struct._GimpProgress*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.IndexedDialog* %dialog, %struct.IndexedDialog** %dialog.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %error, align 8
  %1 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %progress1 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %1, i32 0, i32 2
  %2 = load %struct._GimpProgress*, %struct._GimpProgress** %progress1, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0)) #7
  %call2 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %2, i8* %call, i32 0)
  store %struct._GimpProgress* %call2, %struct._GimpProgress** %progress, align 8
  %3 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %image = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %3, i32 0, i32 1
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %num_colors = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %5, i32 0, i32 9
  %6 = load i32, i32* %num_colors, align 4
  %7 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %dither_type = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %7, i32 0, i32 6
  %8 = load i32, i32* %dither_type, align 4
  %9 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %alpha_dither = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %9, i32 0, i32 7
  %10 = load i32, i32* %alpha_dither, align 4
  %11 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %remove_dups = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %11, i32 0, i32 8
  %12 = load i32, i32* %remove_dups, align 4
  %13 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %palette_type = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %13, i32 0, i32 10
  %14 = load i32, i32* %palette_type, align 4
  %15 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %custom_palette = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %15, i32 0, i32 5
  %16 = load %struct._GimpPalette*, %struct._GimpPalette** %custom_palette, align 8
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %call3 = call i32 @gimp_image_convert(%struct._GimpImage* %4, i32 2, i32 %6, i32 %8, i32 %10, i32 %12, i32 %14, %struct._GimpPalette* %16, %struct._GimpProgress* %17, %struct._GError** %error)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.10, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %18 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %image5 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %18, i32 0, i32 1
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image5, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %21 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %dialog6 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %21, i32 0, i32 0
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog6, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %25 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %25, i32 0, i32 2
  %26 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %20, %struct._GObject* %24, i32 1, i8* %26)
  call void @g_clear_error(%struct._GError** %error)
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool8 = icmp ne %struct._GimpProgress* %27, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.4
  %28 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %28)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.4
  br label %return

if.end.10:                                        ; preds = %if.then
  %29 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool11 = icmp ne %struct._GimpProgress* %29, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %30 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %30)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %31 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %image14 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %31, i32 0, i32 1
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image14, align 8
  call void @gimp_image_flush(%struct._GimpImage* %32)
  %33 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %dither_type15 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %33, i32 0, i32 6
  %34 = load i32, i32* %dither_type15, align 4
  store i32 %34, i32* @saved_dither_type, align 4
  %35 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %alpha_dither16 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %35, i32 0, i32 7
  %36 = load i32, i32* %alpha_dither16, align 4
  store i32 %36, i32* @saved_alpha_dither, align 4
  %37 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %remove_dups17 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %37, i32 0, i32 8
  %38 = load i32, i32* %remove_dups17, align 4
  store i32 %38, i32* @saved_remove_dups, align 4
  %39 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %num_colors18 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %39, i32 0, i32 9
  %40 = load i32, i32* %num_colors18, align 4
  store i32 %40, i32* @saved_num_colors, align 4
  %41 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %palette_type19 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %41, i32 0, i32 10
  %42 = load i32, i32* %palette_type19, align 4
  store i32 %42, i32* @saved_palette_type, align 4
  %43 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %custom_palette20 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %43, i32 0, i32 5
  %44 = load %struct._GimpPalette*, %struct._GimpPalette** %custom_palette20, align 8
  store %struct._GimpPalette* %44, %struct._GimpPalette** @saved_palette, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.13, %entry
  %45 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %dialog22 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %45, i32 0, i32 0
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog22, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %46)
  br label %return

return:                                           ; preds = %if.end.21, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @convert_dialog_palette_box(%struct.IndexedDialog* %dialog) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct.IndexedDialog*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %list = alloca %struct._GList*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %web_palette = alloca %struct._GimpPalette*, align 8
  %default_found = alloca i32, align 4
  store %struct.IndexedDialog* %dialog, %struct.IndexedDialog** %dialog.addr, align 8
  %0 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %image = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %0, i32 0, i32 1
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp1 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  store %struct._Gimp* %2, %struct._Gimp** %gimp, align 8
  store %struct._GimpPalette* null, %struct._GimpPalette** %web_palette, align 8
  store i32 0, i32* %default_found, align 4
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 41
  %4 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %call = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %4)
  %call2 = call %struct._GimpContainer* @gimp_container_filter(%struct._GimpContainer* %call, i32 (%struct._GimpObject*, i8*)* @convert_dialog_palette_filter, i8* null)
  %5 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %container = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %5, i32 0, i32 4
  store %struct._GimpContainer* %call2, %struct._GimpContainer** %container, align 8
  %6 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %container3 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %6, i32 0, i32 4
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container3, align 8
  %call4 = call i32 @gimp_container_is_empty(%struct._GimpContainer* %7)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %container5 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %8, i32 0, i32 4
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container5, align 8
  %10 = bitcast %struct._GimpContainer* %9 to i8*
  call void @g_object_unref(i8* %10)
  %11 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %container6 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %11, i32 0, i32 4
  store %struct._GimpContainer* null, %struct._GimpContainer** %container6, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call7 = call %struct._GimpContext* @gimp_context_new(%struct._Gimp* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), %struct._GimpContext* null)
  %13 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %13, i32 0, i32 3
  store %struct._GimpContext* %call7, %struct._GimpContext** %context, align 8
  %14 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %dialog8 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %14, i32 0, i32 0
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog8, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %18 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %context10 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %18, i32 0, i32 3
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context10, align 8
  %20 = bitcast %struct._GimpContext* %19 to i8*
  call void @g_object_weak_ref(%struct._GObject* %17, void (i8*, %struct._GObject*)* bitcast (void (i8*)* @g_object_unref to void (i8*, %struct._GObject*)*), i8* %20)
  %21 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %dialog11 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %21, i32 0, i32 0
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog11, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %25 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %container13 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %25, i32 0, i32 4
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** %container13, align 8
  %27 = bitcast %struct._GimpContainer* %26 to i8*
  call void @g_object_weak_ref(%struct._GObject* %24, void (i8*, %struct._GObject*)* bitcast (void (i8*)* @g_object_unref to void (i8*, %struct._GObject*)*), i8* %27)
  %28 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %container14 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %28, i32 0, i32 4
  %29 = load %struct._GimpContainer*, %struct._GimpContainer** %container14, align 8
  %30 = bitcast %struct._GimpContainer* %29 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_list_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call15)
  %31 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpList*
  %list17 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %list17, align 8
  store %struct._GList* %32, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool18 = icmp ne %struct._GList* %33, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 0
  %35 = load i8*, i8** %data, align 8
  %36 = bitcast i8* %35 to %struct._GimpPalette*
  store %struct._GimpPalette* %36, %struct._GimpPalette** %palette, align 8
  %37 = load %struct._GimpPalette*, %struct._GimpPalette** %web_palette, align 8
  %cmp = icmp eq %struct._GimpPalette* %37, null
  br i1 %cmp, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %for.body
  %38 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %39 = bitcast %struct._GimpPalette* %38 to i8*
  %call19 = call i8* @gimp_object_get_name(i8* %39)
  %call20 = call i32 @g_ascii_strcasecmp(i8* %call19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true
  %40 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  store %struct._GimpPalette* %40, %struct._GimpPalette** %web_palette, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %land.lhs.true, %for.body
  %41 = load %struct._GimpPalette*, %struct._GimpPalette** @saved_palette, align 8
  %42 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %cmp24 = icmp eq %struct._GimpPalette* %41, %42
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %43 = load %struct._GimpPalette*, %struct._GimpPalette** @saved_palette, align 8
  %44 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %custom_palette = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %44, i32 0, i32 5
  store %struct._GimpPalette* %43, %struct._GimpPalette** %custom_palette, align 8
  store i32 1, i32* %default_found, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %45 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool27 = icmp ne %struct._GList* %45, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %46 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 1
  %47 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %47, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load i32, i32* %default_found, align 4
  %tobool28 = icmp ne i32 %48, 0
  br i1 %tobool28, label %if.end.40, label %if.then.29

if.then.29:                                       ; preds = %for.end
  %49 = load %struct._GimpPalette*, %struct._GimpPalette** %web_palette, align 8
  %tobool30 = icmp ne %struct._GimpPalette* %49, null
  br i1 %tobool30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.then.29
  %50 = load %struct._GimpPalette*, %struct._GimpPalette** %web_palette, align 8
  %51 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %custom_palette32 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %51, i32 0, i32 5
  store %struct._GimpPalette* %50, %struct._GimpPalette** %custom_palette32, align 8
  br label %if.end.39

if.else:                                          ; preds = %if.then.29
  %52 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %container33 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %52, i32 0, i32 4
  %53 = load %struct._GimpContainer*, %struct._GimpContainer** %container33, align 8
  %54 = bitcast %struct._GimpContainer* %53 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_list_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call34)
  %55 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpList*
  %list36 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %55, i32 0, i32 1
  %56 = load %struct._GList*, %struct._GList** %list36, align 8
  %data37 = getelementptr inbounds %struct._GList, %struct._GList* %56, i32 0, i32 0
  %57 = load i8*, i8** %data37, align 8
  %58 = bitcast i8* %57 to %struct._GimpPalette*
  %59 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %custom_palette38 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %59, i32 0, i32 5
  store %struct._GimpPalette* %58, %struct._GimpPalette** %custom_palette38, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.31
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %for.end
  %60 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %context41 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %60, i32 0, i32 3
  %61 = load %struct._GimpContext*, %struct._GimpContext** %context41, align 8
  %62 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %custom_palette42 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %62, i32 0, i32 5
  %63 = load %struct._GimpPalette*, %struct._GimpPalette** %custom_palette42, align 8
  call void @gimp_context_set_palette(%struct._GimpContext* %61, %struct._GimpPalette* %63)
  %64 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %context43 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %64, i32 0, i32 3
  %65 = load %struct._GimpContext*, %struct._GimpContext** %context43, align 8
  %66 = bitcast %struct._GimpContext* %65 to i8*
  %67 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %68 = bitcast %struct.IndexedDialog* %67 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpPalette*, %struct.IndexedDialog*)* @convert_dialog_palette_changed to void ()*), i8* %68, void (i8*, %struct._GClosure*)* null, i32 0)
  %69 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %container45 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %69, i32 0, i32 4
  %70 = load %struct._GimpContainer*, %struct._GimpContainer** %container45, align 8
  %71 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %context46 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %71, i32 0, i32 3
  %72 = load %struct._GimpContext*, %struct._GimpContext** %context46, align 8
  %call47 = call %struct._GtkWidget* @gimp_palette_box_new(%struct._GimpContainer* %70, %struct._GimpContext* %72, i8* null, i32 4)
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %73
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

declare %struct._GtkWidget* @gimp_enum_radio_frame_new_with_range(i64, i32, i32, %struct._GtkWidget*, void ()*, i8*, %struct._GtkWidget**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_convert_palette_type_get_type() #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #3

declare void @gimp_int_radio_group_set_active(%struct._GtkRadioButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #1

declare void @gimp_enum_radio_frame_add(%struct._GtkFrame*, %struct._GtkWidget*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #3

declare i32 @gimp_image_has_alpha(%struct._GimpImage*) #3

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #3

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #3

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #3

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #3

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #3

declare %struct._GtkWidget* @gimp_frame_new(i8*) #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #3

declare %struct._GtkWidget* @gimp_enum_combo_box_new(i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_convert_dither_type_get_type() #1

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #3

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #3

declare i32 @gimp_image_convert(%struct._GimpImage*, i32, i32, i32, i32, i32, i32, %struct._GimpPalette*, %struct._GimpProgress*, %struct._GError**) #3

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare void @g_clear_error(%struct._GError**) #3

declare void @gimp_progress_end(%struct._GimpProgress*) #3

declare void @gimp_image_flush(%struct._GimpImage*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare %struct._GimpContainer* @gimp_container_filter(%struct._GimpContainer*, i32 (%struct._GimpObject*, i8*)*, i8*) #3

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #3

; Function Attrs: nounwind uwtable
define internal i32 @convert_dialog_palette_filter(%struct._GimpObject* %object, i8* %user_data) #0 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %user_data.addr = alloca i8*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPalette*
  store %struct._GimpPalette* %2, %struct._GimpPalette** %palette, align 8
  %3 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call2 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %3)
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call3 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %4)
  %cmp4 = icmp sle i32 %call3, 256
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  ret i32 %land.ext
}

declare i32 @gimp_container_is_empty(%struct._GimpContainer*) #3

declare void @g_object_unref(i8*) #3

declare %struct._GimpContext* @gimp_context_new(%struct._Gimp*, i8*, %struct._GimpContext*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #3

declare i8* @gimp_object_get_name(i8*) #3

declare void @gimp_context_set_palette(%struct._GimpContext*, %struct._GimpPalette*) #3

; Function Attrs: nounwind uwtable
define internal void @convert_dialog_palette_changed(%struct._GimpContext* %context, %struct._GimpPalette* %palette, %struct.IndexedDialog* %dialog) #0 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %dialog.addr = alloca %struct.IndexedDialog*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  store %struct.IndexedDialog* %dialog, %struct.IndexedDialog** %dialog.addr, align 8
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %tobool = icmp ne %struct._GimpPalette* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.5

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %call = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %1)
  %cmp = icmp sgt i32 %call, 256
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %2 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %image = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %2, i32 0, i32 1
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %5 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %dialog2 = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %5, i32 0, i32 0
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.26, i32 0, i32 0)) #7
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %4, %struct._GObject* %8, i32 1, i8* %call4)
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %9 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %10 = load %struct.IndexedDialog*, %struct.IndexedDialog** %dialog.addr, align 8
  %custom_palette = getelementptr inbounds %struct.IndexedDialog, %struct.IndexedDialog* %10, i32 0, i32 5
  store %struct._GimpPalette* %9, %struct._GimpPalette** %custom_palette, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then, %if.else, %if.then.1
  ret void
}

declare %struct._GtkWidget* @gimp_palette_box_new(%struct._GimpContainer*, %struct._GimpContext*, i8*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #1

declare i32 @gimp_palette_get_n_colors(%struct._GimpPalette*) #3

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #3

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
