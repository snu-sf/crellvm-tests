; ModuleID = './app/dialogs/palette-import-dialog.bc'
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct.ImportDialog = type { %struct._GtkWidget*, i32, %struct._GimpContext*, %struct._GimpImage*, %struct._GimpPalette*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpLayer = type opaque
%struct._GtkFileChooser = type opaque
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.palette_import_dialog_new = private unnamed_addr constant [26 x i8] c"palette_import_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Palette Import\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Import a New Palette\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gimp-palette-import\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"_Import\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"gtk-convert\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"palette-import-dialog\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Select Source\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"_Gradient\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"I_mage\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Sample _Merged\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"_Selected Pixels only\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Palette _file\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Select Palette File\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Import Options\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"New import\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Palette _name:\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"N_umber of colors:\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"C_olumns:\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"I_nterval:\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Preview\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"The selected source contains no colors.\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"gradient-changed\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"image-changed\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"selection-changed\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"active-layer-changed\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"mask-changed\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Untitled\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @palette_import_dialog_new(%struct._GimpContext* %context) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %dialog = alloca %struct.ImportDialog*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %main_hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %abox = alloca %struct._GtkWidget*, align 8
  %size_group = alloca %struct._GtkSizeGroup*, align 8
  %group = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.palette_import_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call11 = call %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %13)
  store %struct._GimpGradient* %call11, %struct._GimpGradient** %gradient, align 8
  %call12 = call noalias i8* @g_slice_alloc0(i64 152)
  %14 = bitcast i8* %call12 to %struct.ImportDialog*
  store %struct.ImportDialog* %14, %struct.ImportDialog** %dialog, align 8
  %15 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %import_type = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %15, i32 0, i32 1
  store i32 0, i32* %import_type, align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call13 = call %struct._GimpContext* @gimp_context_new(%struct._Gimp* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._GimpContext* %18)
  %19 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %context14 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %19, i32 0, i32 2
  store %struct._GimpContext* %call13, %struct._GimpContext** %context14, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #7
  %call16 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 -6, i8* null)
  %20 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %dialog17 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %20, i32 0, i32 0
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %dialog17, align 8
  %21 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %dialog18 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %21, i32 0, i32 0
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog18, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_dialog_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkDialog*
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #7
  %call22 = call %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog* %24, i8* %call21, i32 -5)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %button, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_button_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call23)
  %27 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkButton*
  %call25 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 4)
  call void @gtk_button_set_image(%struct._GtkButton* %27, %struct._GtkWidget* %call25)
  %28 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %dialog26 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %28, i32 0, i32 0
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog26, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_dialog_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call27)
  %31 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %31, i32 -5, i32 -6, i32 -1)
  %32 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %dialog29 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %32, i32 0, i32 0
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog29, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call30 to %struct._GObject*
  %36 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %37 = bitcast %struct.ImportDialog* %36 to i8*
  call void @g_object_set_data_full(%struct._GObject* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* %37, void (i8*)* bitcast (void (%struct.ImportDialog*)* @palette_import_free to void (i8*)*))
  %38 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %dialog31 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %38, i32 0, i32 0
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog31, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %41 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %42 = bitcast %struct.ImportDialog* %41 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.ImportDialog*)* @palette_import_response to void ()*), i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %dialog33 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %43, i32 0, i32 0
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog33, align 8
  %call34 = call i64 @gimp_gradient_get_type() #5
  %45 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %46 = bitcast %struct.ImportDialog* %45 to i8*
  %call35 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %44, i64 %call34, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @import_dialog_drop_callback, i8* %46)
  %47 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %dialog36 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %47, i32 0, i32 0
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog36, align 8
  %call37 = call i64 @gimp_image_get_type() #5
  %49 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %50 = bitcast %struct.ImportDialog* %49 to i8*
  %call38 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %48, i64 %call37, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @import_dialog_drop_callback, i8* %50)
  %call39 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %main_hbox, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_container_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call40)
  %53 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %53, i32 12)
  %54 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %dialog42 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %54, i32 0, i32 0
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog42, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_dialog_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call43)
  %57 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkDialog*
  %call45 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %57)
  %58 = bitcast %struct._GtkWidget* %call45 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call46)
  %59 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %59, %struct._GtkWidget* %60, i32 1, i32 1, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %call48 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %vbox, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_box_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call49)
  %64 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkBox*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %64, %struct._GtkWidget* %65, i32 1, i32 1, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0)) #7
  %call52 = call %struct._GtkWidget* @gimp_frame_new(i8* %call51)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %frame, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_box_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call53)
  %69 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkBox*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %69, %struct._GtkWidget* %70, i32 0, i32 0, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %call55 = call %struct._GtkWidget* @gtk_table_new(i32 5, i32 2, i32 0)
  store %struct._GtkWidget* %call55, %struct._GtkWidget** %table, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_table_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call56)
  %74 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %74, i32 6)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_table_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call58)
  %77 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %77, i32 6)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_container_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call60)
  %80 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkContainer*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %80, %struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %83 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)) #7
  %call63 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %83, i8* %call62)
  %84 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %gradient_radio = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %84, i32 0, i32 5
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %gradient_radio, align 8
  %85 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %gradient_radio64 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %85, i32 0, i32 5
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_radio64, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_radio_button_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call65)
  %88 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkRadioButton*
  %call67 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %88)
  store %struct._GSList* %call67, %struct._GSList** %group, align 8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_table_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call68)
  %91 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkTable*
  %92 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %gradient_radio70 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %92, i32 0, i32 5
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_radio70, align 8
  call void @gtk_table_attach(%struct._GtkTable* %91, %struct._GtkWidget* %93, i32 0, i32 1, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %94 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %gradient_radio71 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %94, i32 0, i32 5
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_radio71, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  %96 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %gradient_radio72 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %96, i32 0, i32 5
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_radio72, align 8
  %98 = bitcast %struct._GtkWidget* %97 to i8*
  %99 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %100 = bitcast %struct.ImportDialog* %99 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.ImportDialog*)* @palette_import_grad_callback to void ()*), i8* %100, void (i8*, %struct._GClosure*)* null, i32 0)
  %101 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #7
  %call75 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %101, i8* %call74)
  %102 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %image_radio = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %102, i32 0, i32 6
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %image_radio, align 8
  %103 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %image_radio76 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %103, i32 0, i32 6
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %image_radio76, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_radio_button_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call77)
  %106 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkRadioButton*
  %call79 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %106)
  store %struct._GSList* %call79, %struct._GSList** %group, align 8
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_table_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call80)
  %109 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkTable*
  %110 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %image_radio82 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %110, i32 0, i32 6
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %image_radio82, align 8
  call void @gtk_table_attach(%struct._GtkTable* %109, %struct._GtkWidget* %111, i32 0, i32 1, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %112 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %image_radio83 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %112, i32 0, i32 6
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %image_radio83, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %113)
  %114 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %image_radio84 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %114, i32 0, i32 6
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %image_radio84, align 8
  %116 = bitcast %struct._GtkWidget* %115 to i8*
  %117 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %118 = bitcast %struct.ImportDialog* %117 to i8*
  %call85 = call i64 @g_signal_connect_data(i8* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.ImportDialog*)* @palette_import_image_callback to void ()*), i8* %118, void (i8*, %struct._GClosure*)* null, i32 0)
  %119 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %image_radio86 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %119, i32 0, i32 6
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %image_radio86, align 8
  %121 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp87 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %121, i32 0, i32 1
  %122 = load %struct._Gimp*, %struct._Gimp** %gimp87, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %122, i32 0, i32 26
  %123 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %call88 = call i32 @gimp_container_is_empty(%struct._GimpContainer* %123)
  %tobool89 = icmp ne i32 %call88, 0
  %lnot = xor i1 %tobool89, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %120, i32 %lnot.ext)
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0)) #7
  %call91 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call90)
  %124 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %sample_merged_toggle = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %124, i32 0, i32 11
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %sample_merged_toggle, align 8
  %125 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %sample_merged_toggle92 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %125, i32 0, i32 11
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %sample_merged_toggle92, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_toggle_button_get_type() #5
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call93)
  %128 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %128, i32 1)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_table_get_type() #5
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call95)
  %131 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkTable*
  %132 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %sample_merged_toggle97 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %132, i32 0, i32 11
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %sample_merged_toggle97, align 8
  call void @gtk_table_attach(%struct._GtkTable* %131, %struct._GtkWidget* %133, i32 1, i32 2, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %134 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %sample_merged_toggle98 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %134, i32 0, i32 11
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %sample_merged_toggle98, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %135)
  %136 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %sample_merged_toggle99 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %136, i32 0, i32 11
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %sample_merged_toggle99, align 8
  %138 = bitcast %struct._GtkWidget* %137 to i8*
  %139 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %140 = bitcast %struct.ImportDialog* %139 to i8*
  %call100 = call i64 @g_signal_connect_data(i8* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct.ImportDialog*)* @palette_import_make_palette to void ()*), i8* %140, void (i8*, %struct._GClosure*)* null, i32 2)
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0)) #7
  %call102 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call101)
  %141 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %selection_only_toggle = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %141, i32 0, i32 12
  store %struct._GtkWidget* %call102, %struct._GtkWidget** %selection_only_toggle, align 8
  %142 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %selection_only_toggle103 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %142, i32 0, i32 12
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_only_toggle103, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_toggle_button_get_type() #5
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call104)
  %145 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %145, i32 0)
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_table_get_type() #5
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call106)
  %148 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkTable*
  %149 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %selection_only_toggle108 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %149, i32 0, i32 12
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_only_toggle108, align 8
  call void @gtk_table_attach(%struct._GtkTable* %148, %struct._GtkWidget* %150, i32 1, i32 2, i32 3, i32 4, i32 4, i32 4, i32 0, i32 0)
  %151 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %selection_only_toggle109 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %151, i32 0, i32 12
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_only_toggle109, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %152)
  %153 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %selection_only_toggle110 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %153, i32 0, i32 12
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_only_toggle110, align 8
  %155 = bitcast %struct._GtkWidget* %154 to i8*
  %156 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %157 = bitcast %struct.ImportDialog* %156 to i8*
  %call111 = call i64 @g_signal_connect_data(i8* %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct.ImportDialog*)* @palette_import_make_palette to void ()*), i8* %157, void (i8*, %struct._GClosure*)* null, i32 2)
  %158 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0)) #7
  %call113 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %158, i8* %call112)
  %159 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %file_radio = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %159, i32 0, i32 7
  store %struct._GtkWidget* %call113, %struct._GtkWidget** %file_radio, align 8
  %160 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %image_radio114 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %160, i32 0, i32 6
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %image_radio114, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_radio_button_get_type() #5
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call115)
  %163 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkRadioButton*
  %call117 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %163)
  store %struct._GSList* %call117, %struct._GSList** %group, align 8
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %165 = bitcast %struct._GtkWidget* %164 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_table_get_type() #5
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call118)
  %166 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkTable*
  %167 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %file_radio120 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %167, i32 0, i32 7
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %file_radio120, align 8
  call void @gtk_table_attach(%struct._GtkTable* %166, %struct._GtkWidget* %168, i32 0, i32 1, i32 4, i32 5, i32 4, i32 4, i32 0, i32 0)
  %169 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %file_radio121 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %169, i32 0, i32 7
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %file_radio121, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %170)
  %171 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %file_radio122 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %171, i32 0, i32 7
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %file_radio122, align 8
  %173 = bitcast %struct._GtkWidget* %172 to i8*
  %174 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %175 = bitcast %struct.ImportDialog* %174 to i8*
  %call123 = call i64 @g_signal_connect_data(i8* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.ImportDialog*)* @palette_import_file_callback to void ()*), i8* %175, void (i8*, %struct._GClosure*)* null, i32 0)
  %call124 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 2)
  store %struct._GtkSizeGroup* %call124, %struct._GtkSizeGroup** %size_group, align 8
  %176 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp125 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %176, i32 0, i32 1
  %177 = load %struct._Gimp*, %struct._Gimp** %gimp125, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %177, i32 0, i32 40
  %178 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %call126 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %178)
  %179 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %context127 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %179, i32 0, i32 2
  %180 = load %struct._GimpContext*, %struct._GimpContext** %context127, align 8
  %call128 = call %struct._GtkWidget* @gimp_container_combo_box_new(%struct._GimpContainer* %call126, %struct._GimpContext* %180, i32 24, i32 1)
  %181 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %gradient_combo = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %181, i32 0, i32 8
  store %struct._GtkWidget* %call128, %struct._GtkWidget** %gradient_combo, align 8
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %183 = bitcast %struct._GtkWidget* %182 to %struct._GTypeInstance*
  %call129 = call i64 @gtk_table_get_type() #5
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call129)
  %184 = bitcast %struct._GTypeInstance* %call130 to %struct._GtkTable*
  %185 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %gradient_combo131 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %185, i32 0, i32 8
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_combo131, align 8
  %call132 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %184, i32 0, i32 0, i8* null, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %186, i32 1, i32 0)
  %187 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %188 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %gradient_combo133 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %188, i32 0, i32 8
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_combo133, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %187, %struct._GtkWidget* %189)
  %190 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp134 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %190, i32 0, i32 1
  %191 = load %struct._Gimp*, %struct._Gimp** %gimp134, align 8
  %images135 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %191, i32 0, i32 26
  %192 = load %struct._GimpContainer*, %struct._GimpContainer** %images135, align 8
  %193 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %context136 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %193, i32 0, i32 2
  %194 = load %struct._GimpContext*, %struct._GimpContext** %context136, align 8
  %call137 = call %struct._GtkWidget* @gimp_container_combo_box_new(%struct._GimpContainer* %192, %struct._GimpContext* %194, i32 24, i32 1)
  %195 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %image_combo = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %195, i32 0, i32 9
  store %struct._GtkWidget* %call137, %struct._GtkWidget** %image_combo, align 8
  %196 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %197 = bitcast %struct._GtkWidget* %196 to %struct._GTypeInstance*
  %call138 = call i64 @gtk_table_get_type() #5
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %197, i64 %call138)
  %198 = bitcast %struct._GTypeInstance* %call139 to %struct._GtkTable*
  %199 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %image_combo140 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %199, i32 0, i32 9
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %image_combo140, align 8
  %call141 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %198, i32 0, i32 1, i8* null, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %200, i32 1, i32 0)
  %201 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %202 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %image_combo142 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %202, i32 0, i32 9
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %image_combo142, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %201, %struct._GtkWidget* %203)
  %call143 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)) #7
  %call144 = call %struct._GtkWidget* @gtk_file_chooser_button_new(i8* %call143, i32 0)
  %204 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %file_chooser = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %204, i32 0, i32 10
  store %struct._GtkWidget* %call144, %struct._GtkWidget** %file_chooser, align 8
  %205 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %206 = bitcast %struct._GtkWidget* %205 to %struct._GTypeInstance*
  %call145 = call i64 @gtk_table_get_type() #5
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %206, i64 %call145)
  %207 = bitcast %struct._GTypeInstance* %call146 to %struct._GtkTable*
  %208 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %file_chooser147 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %208, i32 0, i32 10
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %file_chooser147, align 8
  %call148 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %207, i32 0, i32 4, i8* null, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %209, i32 1, i32 0)
  %210 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %211 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %file_chooser149 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %211, i32 0, i32 10
  %212 = load %struct._GtkWidget*, %struct._GtkWidget** %file_chooser149, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %210, %struct._GtkWidget* %212)
  %213 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %214 = bitcast %struct._GtkSizeGroup* %213 to i8*
  call void @g_object_unref(i8* %214)
  %call150 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0)) #7
  %call151 = call %struct._GtkWidget* @gimp_frame_new(i8* %call150)
  store %struct._GtkWidget* %call151, %struct._GtkWidget** %frame, align 8
  %215 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %216 = bitcast %struct._GtkWidget* %215 to %struct._GTypeInstance*
  %call152 = call i64 @gtk_box_get_type() #5
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %216, i64 %call152)
  %217 = bitcast %struct._GTypeInstance* %call153 to %struct._GtkBox*
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %217, %struct._GtkWidget* %218, i32 0, i32 0, i32 0)
  %219 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %219)
  %call154 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 3, i32 0)
  store %struct._GtkWidget* %call154, %struct._GtkWidget** %table, align 8
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %221 = bitcast %struct._GtkWidget* %220 to %struct._GTypeInstance*
  %call155 = call i64 @gtk_table_get_type() #5
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %221, i64 %call155)
  %222 = bitcast %struct._GTypeInstance* %call156 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %222, i32 6)
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %224 = bitcast %struct._GtkWidget* %223 to %struct._GTypeInstance*
  %call157 = call i64 @gtk_table_get_type() #5
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %224, i64 %call157)
  %225 = bitcast %struct._GTypeInstance* %call158 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %225, i32 6)
  %226 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %227 = bitcast %struct._GtkWidget* %226 to %struct._GTypeInstance*
  %call159 = call i64 @gtk_container_get_type() #5
  %call160 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %227, i64 %call159)
  %228 = bitcast %struct._GTypeInstance* %call160 to %struct._GtkContainer*
  %229 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %228, %struct._GtkWidget* %229)
  %230 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %230)
  %call161 = call %struct._GtkWidget* @gtk_entry_new()
  %231 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %entry162 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %231, i32 0, i32 13
  store %struct._GtkWidget* %call161, %struct._GtkWidget** %entry162, align 8
  %232 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %entry163 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %232, i32 0, i32 13
  %233 = load %struct._GtkWidget*, %struct._GtkWidget** %entry163, align 8
  %234 = bitcast %struct._GtkWidget* %233 to %struct._GTypeInstance*
  %call164 = call i64 @gtk_entry_get_type() #5
  %call165 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %234, i64 %call164)
  %235 = bitcast %struct._GTypeInstance* %call165 to %struct._GtkEntry*
  %236 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool166 = icmp ne %struct._GimpGradient* %236, null
  br i1 %tobool166, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %237 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %238 = bitcast %struct._GimpGradient* %237 to i8*
  %call167 = call i8* @gimp_object_get_name(i8* %238)
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %call168 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call167, %cond.true ], [ %call168, %cond.false ]
  call void @gtk_entry_set_text(%struct._GtkEntry* %235, i8* %cond)
  %239 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %240 = bitcast %struct._GtkWidget* %239 to %struct._GTypeInstance*
  %call169 = call i64 @gtk_table_get_type() #5
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %240, i64 %call169)
  %241 = bitcast %struct._GTypeInstance* %call170 to %struct._GtkTable*
  %call171 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)) #7
  %242 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %entry172 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %242, i32 0, i32 13
  %243 = load %struct._GtkWidget*, %struct._GtkWidget** %entry172, align 8
  %call173 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %241, i32 0, i32 0, i8* %call171, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %243, i32 2, i32 0)
  %244 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %245 = bitcast %struct._GtkWidget* %244 to %struct._GTypeInstance*
  %call174 = call i64 @gtk_table_get_type() #5
  %call175 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %245, i64 %call174)
  %246 = bitcast %struct._GTypeInstance* %call175 to %struct._GtkTable*
  %call176 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0)) #7
  %call177 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %246, i32 0, i32 1, i8* %call176, i32 -1, i32 5, double 2.560000e+02, double 2.000000e+00, double 1.000000e+04, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %247 = bitcast %struct._GtkObject* %call177 to %struct._GTypeInstance*
  %call178 = call i64 @gtk_adjustment_get_type() #5
  %call179 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %247, i64 %call178)
  %248 = bitcast %struct._GTypeInstance* %call179 to %struct._GtkAdjustment*
  %249 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %num_colors = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %249, i32 0, i32 14
  store %struct._GtkAdjustment* %248, %struct._GtkAdjustment** %num_colors, align 8
  %250 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %num_colors180 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %250, i32 0, i32 14
  %251 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %num_colors180, align 8
  %252 = bitcast %struct._GtkAdjustment* %251 to i8*
  %253 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %254 = bitcast %struct.ImportDialog* %253 to i8*
  %call181 = call i64 @g_signal_connect_data(i8* %252, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct.ImportDialog*)* @palette_import_make_palette to void ()*), i8* %254, void (i8*, %struct._GClosure*)* null, i32 2)
  %255 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %256 = bitcast %struct._GtkWidget* %255 to %struct._GTypeInstance*
  %call182 = call i64 @gtk_table_get_type() #5
  %call183 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %256, i64 %call182)
  %257 = bitcast %struct._GTypeInstance* %call183 to %struct._GtkTable*
  %call184 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)) #7
  %call185 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %257, i32 0, i32 2, i8* %call184, i32 -1, i32 5, double 1.600000e+01, double 0.000000e+00, double 6.400000e+01, double 1.000000e+00, double 8.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %258 = bitcast %struct._GtkObject* %call185 to %struct._GTypeInstance*
  %call186 = call i64 @gtk_adjustment_get_type() #5
  %call187 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %258, i64 %call186)
  %259 = bitcast %struct._GTypeInstance* %call187 to %struct._GtkAdjustment*
  %260 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %columns = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %260, i32 0, i32 15
  store %struct._GtkAdjustment* %259, %struct._GtkAdjustment** %columns, align 8
  %261 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %columns188 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %261, i32 0, i32 15
  %262 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %columns188, align 8
  %263 = bitcast %struct._GtkAdjustment* %262 to i8*
  %264 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %265 = bitcast %struct.ImportDialog* %264 to i8*
  %call189 = call i64 @g_signal_connect_data(i8* %263, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct.ImportDialog*)* @palette_import_columns_changed to void ()*), i8* %265, void (i8*, %struct._GClosure*)* null, i32 0)
  %266 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %267 = bitcast %struct._GtkWidget* %266 to %struct._GTypeInstance*
  %call190 = call i64 @gtk_table_get_type() #5
  %call191 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %267, i64 %call190)
  %268 = bitcast %struct._GTypeInstance* %call191 to %struct._GtkTable*
  %call192 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0)) #7
  %call193 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %268, i32 0, i32 3, i8* %call192, i32 -1, i32 5, double 1.000000e+00, double 1.000000e+00, double 1.280000e+02, double 1.000000e+00, double 8.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %269 = bitcast %struct._GtkObject* %call193 to %struct._GTypeInstance*
  %call194 = call i64 @gtk_adjustment_get_type() #5
  %call195 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %269, i64 %call194)
  %270 = bitcast %struct._GTypeInstance* %call195 to %struct._GtkAdjustment*
  %271 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %threshold = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %271, i32 0, i32 16
  store %struct._GtkAdjustment* %270, %struct._GtkAdjustment** %threshold, align 8
  %272 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %threshold196 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %272, i32 0, i32 16
  %273 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %threshold196, align 8
  %274 = bitcast %struct._GtkAdjustment* %273 to i8*
  %275 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %276 = bitcast %struct.ImportDialog* %275 to i8*
  %call197 = call i64 @g_signal_connect_data(i8* %274, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct.ImportDialog*)* @palette_import_make_palette to void ()*), i8* %276, void (i8*, %struct._GClosure*)* null, i32 2)
  %call198 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0)) #7
  %call199 = call %struct._GtkWidget* @gimp_frame_new(i8* %call198)
  store %struct._GtkWidget* %call199, %struct._GtkWidget** %frame, align 8
  %277 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %278 = bitcast %struct._GtkWidget* %277 to %struct._GTypeInstance*
  %call200 = call i64 @gtk_box_get_type() #5
  %call201 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %278, i64 %call200)
  %279 = bitcast %struct._GTypeInstance* %call201 to %struct._GtkBox*
  %280 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %279, %struct._GtkWidget* %280, i32 0, i32 0, i32 0)
  %281 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %281)
  %call202 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call202, %struct._GtkWidget** %vbox, align 8
  %282 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %283 = bitcast %struct._GtkWidget* %282 to %struct._GTypeInstance*
  %call203 = call i64 @gtk_container_get_type() #5
  %call204 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %283, i64 %call203)
  %284 = bitcast %struct._GTypeInstance* %call204 to %struct._GtkContainer*
  %285 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %284, %struct._GtkWidget* %285)
  %286 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %286)
  %call205 = call %struct._GtkWidget* @gtk_alignment_new(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call205, %struct._GtkWidget** %abox, align 8
  %287 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %288 = bitcast %struct._GtkWidget* %287 to %struct._GTypeInstance*
  %call206 = call i64 @gtk_box_get_type() #5
  %call207 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %288, i64 %call206)
  %289 = bitcast %struct._GTypeInstance* %call207 to %struct._GtkBox*
  %290 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %289, %struct._GtkWidget* %290, i32 0, i32 0, i32 0)
  %291 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %291)
  %292 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %context208 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %292, i32 0, i32 2
  %293 = load %struct._GimpContext*, %struct._GimpContext** %context208, align 8
  %call209 = call i64 @gimp_view_get_type() #5
  %call210 = call i64 @gimp_palette_get_type() #5
  %call211 = call %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext* %293, i64 %call209, i64 %call210, i32 192, i32 192, i32 1, i32 1, i32 0, i32 0)
  %294 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %preview = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %294, i32 0, i32 17
  store %struct._GtkWidget* %call211, %struct._GtkWidget** %preview, align 8
  %295 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %296 = bitcast %struct._GtkWidget* %295 to %struct._GTypeInstance*
  %call212 = call i64 @gtk_container_get_type() #5
  %call213 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %296, i64 %call212)
  %297 = bitcast %struct._GTypeInstance* %call213 to %struct._GtkContainer*
  %298 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %preview214 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %298, i32 0, i32 17
  %299 = load %struct._GtkWidget*, %struct._GtkWidget** %preview214, align 8
  call void @gtk_container_add(%struct._GtkContainer* %297, %struct._GtkWidget* %299)
  %300 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %preview215 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %300, i32 0, i32 17
  %301 = load %struct._GtkWidget*, %struct._GtkWidget** %preview215, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %301)
  %call216 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0)) #7
  %call217 = call %struct._GtkWidget* @gtk_label_new(i8* %call216)
  %302 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %no_colors_label = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %302, i32 0, i32 18
  store %struct._GtkWidget* %call217, %struct._GtkWidget** %no_colors_label, align 8
  %303 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %no_colors_label218 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %303, i32 0, i32 18
  %304 = load %struct._GtkWidget*, %struct._GtkWidget** %no_colors_label218, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %304, i32 194, i32 -1)
  %305 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %no_colors_label219 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %305, i32 0, i32 18
  %306 = load %struct._GtkWidget*, %struct._GtkWidget** %no_colors_label219, align 8
  %307 = bitcast %struct._GtkWidget* %306 to %struct._GTypeInstance*
  %call220 = call i64 @gtk_label_get_type() #5
  %call221 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %307, i64 %call220)
  %308 = bitcast %struct._GTypeInstance* %call221 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %308, i32 1)
  %309 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %no_colors_label222 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %309, i32 0, i32 18
  %310 = load %struct._GtkWidget*, %struct._GtkWidget** %no_colors_label222, align 8
  %311 = bitcast %struct._GtkWidget* %310 to %struct._GTypeInstance*
  %call223 = call i64 @gtk_label_get_type() #5
  %call224 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %311, i64 %call223)
  %312 = bitcast %struct._GTypeInstance* %call224 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %312, i32 3, i32 2, i32 -1)
  %313 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %314 = bitcast %struct._GtkWidget* %313 to %struct._GTypeInstance*
  %call225 = call i64 @gtk_box_get_type() #5
  %call226 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %314, i64 %call225)
  %315 = bitcast %struct._GTypeInstance* %call226 to %struct._GtkBox*
  %316 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %no_colors_label227 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %316, i32 0, i32 18
  %317 = load %struct._GtkWidget*, %struct._GtkWidget** %no_colors_label227, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %315, %struct._GtkWidget* %317, i32 0, i32 0, i32 0)
  %318 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %no_colors_label228 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %318, i32 0, i32 18
  %319 = load %struct._GtkWidget*, %struct._GtkWidget** %no_colors_label228, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %319)
  %320 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp229 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %320, i32 0, i32 1
  %321 = load %struct._Gimp*, %struct._Gimp** %gimp229, align 8
  %images230 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %321, i32 0, i32 26
  %322 = load %struct._GimpContainer*, %struct._GimpContainer** %images230, align 8
  %323 = bitcast %struct._GimpContainer* %322 to i8*
  %324 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %325 = bitcast %struct.ImportDialog* %324 to i8*
  %call231 = call i64 @g_signal_connect_data(i8* %323, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpImage*, %struct.ImportDialog*)* @palette_import_image_add to void ()*), i8* %325, void (i8*, %struct._GClosure*)* null, i32 0)
  %326 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp232 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %326, i32 0, i32 1
  %327 = load %struct._Gimp*, %struct._Gimp** %gimp232, align 8
  %images233 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %327, i32 0, i32 26
  %328 = load %struct._GimpContainer*, %struct._GimpContainer** %images233, align 8
  %329 = bitcast %struct._GimpContainer* %328 to i8*
  %330 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %331 = bitcast %struct.ImportDialog* %330 to i8*
  %call234 = call i64 @g_signal_connect_data(i8* %329, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpImage*, %struct.ImportDialog*)* @palette_import_image_remove to void ()*), i8* %331, void (i8*, %struct._GClosure*)* null, i32 0)
  %332 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %context235 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %332, i32 0, i32 2
  %333 = load %struct._GimpContext*, %struct._GimpContext** %context235, align 8
  %334 = bitcast %struct._GimpContext* %333 to i8*
  %335 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %336 = bitcast %struct.ImportDialog* %335 to i8*
  %call236 = call i64 @g_signal_connect_data(i8* %334, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpGradient*, %struct.ImportDialog*)* @palette_import_gradient_changed to void ()*), i8* %336, void (i8*, %struct._GClosure*)* null, i32 0)
  %337 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %context237 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %337, i32 0, i32 2
  %338 = load %struct._GimpContext*, %struct._GimpContext** %context237, align 8
  %339 = bitcast %struct._GimpContext* %338 to i8*
  %340 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %341 = bitcast %struct.ImportDialog* %340 to i8*
  %call238 = call i64 @g_signal_connect_data(i8* %339, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpImage*, %struct.ImportDialog*)* @palette_import_image_changed to void ()*), i8* %341, void (i8*, %struct._GClosure*)* null, i32 0)
  %342 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %file_chooser239 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %342, i32 0, i32 10
  %343 = load %struct._GtkWidget*, %struct._GtkWidget** %file_chooser239, align 8
  %344 = bitcast %struct._GtkWidget* %343 to i8*
  %345 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %346 = bitcast %struct.ImportDialog* %345 to i8*
  %call240 = call i64 @g_signal_connect_data(i8* %344, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GtkFileChooser*, %struct.ImportDialog*)* @palette_import_filename_changed to void ()*), i8* %346, void (i8*, %struct._GClosure*)* null, i32 0)
  %347 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %gradient_radio241 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %347, i32 0, i32 5
  %348 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_radio241, align 8
  %349 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  call void @palette_import_grad_callback(%struct._GtkWidget* %348, %struct.ImportDialog* %349)
  %350 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %dialog242 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %350, i32 0, i32 0
  %351 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog242, align 8
  store %struct._GtkWidget* %351, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.9
  %352 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %352
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext*) #3

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GimpContext* @gimp_context_new(%struct._Gimp*, i8*, %struct._GimpContext*) #3

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_standard_help_func(i8*, i8*) #3

declare %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog*, i8*, i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @gtk_button_set_image(%struct._GtkButton*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define internal void @palette_import_free(%struct.ImportDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  %0 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %0, i32 0, i32 2
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  store %struct._Gimp* %2, %struct._Gimp** %gimp, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 26
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %5 = bitcast %struct._GimpContainer* %4 to i8*
  %6 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %7 = bitcast %struct.ImportDialog* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainer*, %struct._GimpImage*, %struct.ImportDialog*)* @palette_import_image_add to i8*), i8* %7)
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %images2 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 26
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %images2, align 8
  %10 = bitcast %struct._GimpContainer* %9 to i8*
  %11 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %12 = bitcast %struct.ImportDialog* %11 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %10, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainer*, %struct._GimpImage*, %struct.ImportDialog*)* @palette_import_image_remove to i8*), i8* %12)
  %13 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %palette = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %13, i32 0, i32 4
  %14 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool = icmp ne %struct._GimpPalette* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %palette4 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %15, i32 0, i32 4
  %16 = load %struct._GimpPalette*, %struct._GimpPalette** %palette4, align 8
  %17 = bitcast %struct._GimpPalette* %16 to i8*
  call void @g_object_unref(i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context5 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %18, i32 0, i32 2
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context5, align 8
  %20 = bitcast %struct._GimpContext* %19 to i8*
  call void @g_object_unref(i8* %20)
  br label %do.body

do.body:                                          ; preds = %if.end
  %21 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %22 = bitcast %struct.ImportDialog* %21 to i8*
  call void @g_slice_free1(i64 152, i8* %22)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @palette_import_response(%struct._GtkWidget* %widget, i32 %response_id, %struct.ImportDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  %0 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %0, i32 0, i32 2
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  store %struct._Gimp* %2, %struct._Gimp** %gimp, align 8
  %3 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context2 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %3, i32 0, i32 2
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %5 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  call void @palette_import_image_changed(%struct._GimpContext* %4, %struct._GimpImage* null, %struct.ImportDialog* %5)
  %6 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %palette = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %6, i32 0, i32 4
  %7 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool = icmp ne %struct._GimpPalette* %7, null
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %8, -5
  br i1 %cmp, label %if.then.3, label %if.end.18

if.then.3:                                        ; preds = %if.then
  %9 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %entry4 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %9, i32 0, i32 13
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkEntry*
  %call6 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %12)
  store i8* %call6, i8** %name, align 8
  %13 = load i8*, i8** %name, align 8
  %tobool7 = icmp ne i8* %13, null
  br i1 %tobool7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.3
  %14 = load i8*, i8** %name, align 8
  %15 = load i8, i8* %14, align 1
  %conv = sext i8 %15 to i32
  %tobool8 = icmp ne i32 %conv, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true
  %16 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %palette10 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %16, i32 0, i32 4
  %17 = load %struct._GimpPalette*, %struct._GimpPalette** %palette10, align 8
  %18 = bitcast %struct._GimpPalette* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  %20 = load i8*, i8** %name, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %19, i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %if.then.3
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 41
  %22 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %call13 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %22)
  %23 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %palette14 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %23, i32 0, i32 4
  %24 = load %struct._GimpPalette*, %struct._GimpPalette** %palette14, align 8
  %25 = bitcast %struct._GimpPalette* %24 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_object_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call15)
  %26 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpObject*
  %call17 = call i32 @gimp_container_add(%struct._GimpContainer* %call13, %struct._GimpObject* %26)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %27 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %dialog20 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %27, i32 0, i32 0
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog20, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %28)
  ret void
}

declare i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget*, i64, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @import_dialog_drop_callback(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct.ImportDialog*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.ImportDialog*
  store %struct.ImportDialog* %1, %struct.ImportDialog** %dialog, align 8
  %2 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %context = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %2, i32 0, i32 2
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %5 = bitcast %struct._GimpViewable* %4 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %9 = bitcast %struct._GimpViewable* %8 to %struct._GTypeInstance*
  %call = call i64 @gimp_object_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call)
  %10 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpObject*
  call void @gimp_context_set_by_type(%struct._GimpContext* %3, i64 %7, %struct._GimpObject* %10)
  %11 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %12 = bitcast %struct._GimpViewable* %11 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %12, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_gradient_get_type() #5
  store i64 %call2, i64* %__t, align 8
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %13, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %entry
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %15, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %17, i32 0, i32 0
  %18 = load i64, i64* %g_type6, align 8
  %19 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %18, %19
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %21 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %20, i64 %21) #6
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %22 = load i32, i32* %__r, align 4
  store i32 %22, i32* %tmp
  %23 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %23, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.else.17

land.lhs.true.12:                                 ; preds = %if.end.10
  %24 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %import_type = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %24, i32 0, i32 1
  %25 = load i32, i32* %import_type, align 4
  %cmp13 = icmp ne i32 %25, 0
  br i1 %cmp13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %land.lhs.true.12
  %26 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %gradient_radio = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %26, i32 0, i32 5
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_radio, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_toggle_button_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call15)
  %29 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %29, i32 1)
  br label %if.end.48

if.else.17:                                       ; preds = %land.lhs.true.12, %if.end.10
  %30 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %31 = bitcast %struct._GimpViewable* %30 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %31, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_image_get_type() #5
  store i64 %call22, i64* %__t21, align 8
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %32, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %if.else.17
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %if.else.17
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %34, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type32, align 8
  %38 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %37, %38
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %40 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %39, i64 %40) #6
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %41 = load i32, i32* %__r24, align 4
  store i32 %41, i32* %tmp39
  %42 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %42, 0
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.47

land.lhs.true.41:                                 ; preds = %if.end.38
  %43 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %import_type42 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %43, i32 0, i32 1
  %44 = load i32, i32* %import_type42, align 4
  %cmp43 = icmp ne i32 %44, 1
  br i1 %cmp43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %land.lhs.true.41
  %45 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog, align 8
  %image_radio = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %45, i32 0, i32 6
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %image_radio, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_toggle_button_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call45)
  %48 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %48, i32 1)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %land.lhs.true.41, %if.end.38
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.14
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

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

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #3

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal void @palette_import_grad_callback(%struct._GtkWidget* %widget, %struct.ImportDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %import_type = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %3, i32 0, i32 1
  store i32 0, i32* %import_type, align 4
  %4 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %4, i32 0, i32 2
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call3 = call %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %5)
  store %struct._GimpGradient* %call3, %struct._GimpGradient** %gradient, align 8
  %6 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %entry4 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %6, i32 0, i32 13
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_entry_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkEntry*
  %10 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %11 = bitcast %struct._GimpGradient* %10 to i8*
  %call7 = call i8* @gimp_object_get_name(i8* %11)
  call void @gtk_entry_set_text(%struct._GtkEntry* %9, i8* %call7)
  %12 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  call void @palette_import_set_sensitive(%struct.ImportDialog* %12)
  %13 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  call void @palette_import_make_palette(%struct.ImportDialog* %13)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @palette_import_image_callback(%struct._GtkWidget* %widget, %struct.ImportDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %images = alloca %struct._GimpContainer*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %import_type = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %3, i32 0, i32 1
  store i32 1, i32* %import_type, align 4
  %4 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %4, i32 0, i32 2
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call3 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %5)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool4 = icmp ne %struct._GimpImage* %6, null
  br i1 %tobool4, label %if.end.11, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %7 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context6 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %7, i32 0, i32 2
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context6, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %8, i32 0, i32 1
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %images7 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %9, i32 0, i32 26
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %images7, align 8
  store %struct._GimpContainer* %10, %struct._GimpContainer** %images, align 8
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %call8 = call %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer* %11)
  %12 = bitcast %struct._GimpObject* %call8 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_image_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpImage*
  store %struct._GimpImage* %13, %struct._GimpImage** %image, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.5, %if.end
  %14 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  call void @palette_import_set_sensitive(%struct.ImportDialog* %14)
  %15 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context12 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context12, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  call void @palette_import_image_changed(%struct._GimpContext* %16, %struct._GimpImage* %17, %struct.ImportDialog* %18)
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #3

declare i32 @gimp_container_is_empty(%struct._GimpContainer*) #3

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #3

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @palette_import_make_palette(%struct.ImportDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %palette_name = alloca i8*, align 8
  %n_colors = alloca i32, align 4
  %n_columns = alloca i32, align 4
  %threshold = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %sample_merged = alloca i32, align 4
  %selection_only = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  store %struct._GimpPalette* null, %struct._GimpPalette** %palette, align 8
  %0 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %entry1 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %0, i32 0, i32 13
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %3)
  store i8* %call3, i8** %palette_name, align 8
  %4 = load i8*, i8** %palette_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load i8*, i8** %palette_name, align 8
  %call4 = call i64 @strlen(i8* %5) #6
  %tobool5 = icmp ne i64 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)) #7
  store i8* %call6, i8** %palette_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %num_colors = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %6, i32 0, i32 14
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %num_colors, align 8
  %call7 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %7)
  %add = fadd double %call7, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %n_colors, align 4
  %8 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %columns = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %8, i32 0, i32 15
  %9 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %columns, align 8
  %call8 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %9)
  %add9 = fadd double %call8, 5.000000e-01
  %conv10 = fptosi double %add9 to i32
  store i32 %conv10, i32* %n_columns, align 4
  %10 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %threshold11 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %10, i32 0, i32 16
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %threshold11, align 8
  %call12 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %11)
  %add13 = fadd double %call12, 5.000000e-01
  %conv14 = fptosi double %add13 to i32
  store i32 %conv14, i32* %threshold, align 4
  %12 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %import_type = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %12, i32 0, i32 1
  %13 = load i32, i32* %import_type, align 4
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.18
    i32 2, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %if.end
  %14 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %14, i32 0, i32 2
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call15 = call %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %15)
  store %struct._GimpGradient* %call15, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %17 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context16 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %17, i32 0, i32 2
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context16, align 8
  %19 = load i8*, i8** %palette_name, align 8
  %20 = load i32, i32* %n_colors, align 4
  %call17 = call %struct._GimpPalette* @gimp_palette_import_from_gradient(%struct._GimpGradient* %16, %struct._GimpContext* %18, i32 0, i8* %19, i32 %20)
  store %struct._GimpPalette* %call17, %struct._GimpPalette** %palette, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  %21 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context19 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %21, i32 0, i32 2
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context19, align 8
  %call20 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %22)
  store %struct._GimpImage* %call20, %struct._GimpImage** %image, align 8
  %23 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %sample_merged_toggle = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %23, i32 0, i32 11
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %sample_merged_toggle, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_toggle_button_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call21)
  %26 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkToggleButton*
  %call23 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %26)
  store i32 %call23, i32* %sample_merged, align 4
  %27 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %selection_only_toggle = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %27, i32 0, i32 12
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_only_toggle, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_toggle_button_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call24)
  %30 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkToggleButton*
  %call26 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %30)
  store i32 %call26, i32* %selection_only, align 4
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call27 = call i32 @gimp_image_base_type(%struct._GimpImage* %31)
  %cmp = icmp eq i32 %call27, 2
  br i1 %cmp, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %sw.bb.18
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %33 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context30 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %33, i32 0, i32 2
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context30, align 8
  %35 = load i8*, i8** %palette_name, align 8
  %call31 = call %struct._GimpPalette* @gimp_palette_import_from_indexed_image(%struct._GimpImage* %32, %struct._GimpContext* %34, i8* %35)
  store %struct._GimpPalette* %call31, %struct._GimpPalette** %palette, align 8
  br label %if.end.43

if.else:                                          ; preds = %sw.bb.18
  %36 = load i32, i32* %sample_merged, align 4
  %tobool32 = icmp ne i32 %36, 0
  br i1 %tobool32, label %if.then.33, label %if.else.36

if.then.33:                                       ; preds = %if.else
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %38 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context34 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %38, i32 0, i32 2
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context34, align 8
  %40 = load i8*, i8** %palette_name, align 8
  %41 = load i32, i32* %n_colors, align 4
  %42 = load i32, i32* %threshold, align 4
  %43 = load i32, i32* %selection_only, align 4
  %call35 = call %struct._GimpPalette* @gimp_palette_import_from_image(%struct._GimpImage* %37, %struct._GimpContext* %39, i8* %40, i32 %41, i32 %42, i32 %43)
  store %struct._GimpPalette* %call35, %struct._GimpPalette** %palette, align 8
  br label %if.end.42

if.else.36:                                       ; preds = %if.else
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call37 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %44)
  %45 = bitcast %struct._GimpLayer* %call37 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_drawable_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call38)
  %46 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %46, %struct._GimpDrawable** %drawable, align 8
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %48 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context40 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %48, i32 0, i32 2
  %49 = load %struct._GimpContext*, %struct._GimpContext** %context40, align 8
  %50 = load i8*, i8** %palette_name, align 8
  %51 = load i32, i32* %n_colors, align 4
  %52 = load i32, i32* %threshold, align 4
  %53 = load i32, i32* %selection_only, align 4
  %call41 = call %struct._GimpPalette* @gimp_palette_import_from_drawable(%struct._GimpDrawable* %47, %struct._GimpContext* %49, i8* %50, i32 %51, i32 %52, i32 %53)
  store %struct._GimpPalette* %call41, %struct._GimpPalette** %palette, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.36, %if.then.33
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.29
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end
  store %struct._GError* null, %struct._GError** %error, align 8
  %54 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %file_chooser = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %54, i32 0, i32 10
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %file_chooser, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_file_chooser_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call45)
  %57 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkFileChooser*
  %call47 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %57)
  store i8* %call47, i8** %filename, align 8
  %58 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context48 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %58, i32 0, i32 2
  %59 = load %struct._GimpContext*, %struct._GimpContext** %context48, align 8
  %60 = load i8*, i8** %filename, align 8
  %61 = load i8*, i8** %palette_name, align 8
  %call49 = call %struct._GimpPalette* @gimp_palette_import_from_file(%struct._GimpContext* %59, i8* %60, i8* %61, %struct._GError** %error)
  store %struct._GimpPalette* %call49, %struct._GimpPalette** %palette, align 8
  %62 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %62)
  %63 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool50 = icmp ne %struct._GimpPalette* %63, null
  br i1 %tobool50, label %if.end.55, label %if.then.51

if.then.51:                                       ; preds = %sw.bb.44
  %64 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context52 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %64, i32 0, i32 2
  %65 = load %struct._GimpContext*, %struct._GimpContext** %context52, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %65, i32 0, i32 1
  %66 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %67 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %dialog53 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %67, i32 0, i32 0
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog53, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 80)
  %70 = bitcast %struct._GTypeInstance* %call54 to %struct._GObject*
  %71 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %71, i32 0, i32 2
  %72 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %66, %struct._GObject* %70, i32 2, i8* %72)
  %73 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %73)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %sw.bb.44
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end.55, %if.end.43, %sw.bb
  %74 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool56 = icmp ne %struct._GimpPalette* %74, null
  br i1 %tobool56, label %if.then.57, label %if.end.68

if.then.57:                                       ; preds = %sw.epilog
  %75 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %palette58 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %75, i32 0, i32 4
  %76 = load %struct._GimpPalette*, %struct._GimpPalette** %palette58, align 8
  %tobool59 = icmp ne %struct._GimpPalette* %76, null
  br i1 %tobool59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.then.57
  %77 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %palette61 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %77, i32 0, i32 4
  %78 = load %struct._GimpPalette*, %struct._GimpPalette** %palette61, align 8
  %79 = bitcast %struct._GimpPalette* %78 to i8*
  call void @g_object_unref(i8* %79)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.then.57
  %80 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %81 = load i32, i32* %n_columns, align 4
  call void @gimp_palette_set_columns(%struct._GimpPalette* %80, i32 %81)
  %82 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %preview = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %82, i32 0, i32 17
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_view_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call63)
  %85 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpView*
  %86 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %87 = bitcast %struct._GimpPalette* %86 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_viewable_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call65)
  %88 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %85, %struct._GimpViewable* %88)
  %89 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %90 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %palette67 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %90, i32 0, i32 4
  store %struct._GimpPalette* %89, %struct._GimpPalette** %palette67, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.62, %sw.epilog
  %91 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %no_colors_label = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %91, i32 0, i32 18
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %no_colors_label, align 8
  %93 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %palette69 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %93, i32 0, i32 4
  %94 = load %struct._GimpPalette*, %struct._GimpPalette** %palette69, align 8
  %tobool70 = icmp ne %struct._GimpPalette* %94, null
  br i1 %tobool70, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.68
  %95 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %palette71 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %95, i32 0, i32 4
  %96 = load %struct._GimpPalette*, %struct._GimpPalette** %palette71, align 8
  %call72 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %96)
  %cmp73 = icmp sgt i32 %call72, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.68
  %97 = phi i1 [ false, %if.end.68 ], [ %cmp73, %land.rhs ]
  %land.ext = zext i1 %97 to i32
  call void @gtk_widget_set_visible(%struct._GtkWidget* %92, i32 %land.ext)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @palette_import_file_callback(%struct._GtkWidget* %widget, %struct.ImportDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  %filename = alloca i8*, align 8
  %basename = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %import_type = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %3, i32 0, i32 1
  store i32 2, i32* %import_type, align 4
  %4 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %file_chooser = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %4, i32 0, i32 10
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %file_chooser, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_file_chooser_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkFileChooser*
  %call5 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %7)
  store i8* %call5, i8** %filename, align 8
  %8 = load i8*, i8** %filename, align 8
  %tobool6 = icmp ne i8* %8, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %9 = load i8*, i8** %filename, align 8
  %call8 = call noalias i8* @g_filename_display_basename(i8* %9)
  store i8* %call8, i8** %basename, align 8
  %10 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %entry9 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %10, i32 0, i32 13
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %entry9, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_entry_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkEntry*
  %14 = load i8*, i8** %basename, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %13, i8* %14)
  %15 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %15)
  %16 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %16)
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %17 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %entry12 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %17, i32 0, i32 13
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %entry12, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_entry_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.7
  %21 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  call void @palette_import_set_sensitive(%struct.ImportDialog* %21)
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  ret void
}

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #3

declare %struct._GtkWidget* @gimp_container_combo_box_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #3

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #3

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #3

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_file_chooser_button_new(i8*, i32) #3

declare void @g_object_unref(i8*) #3

declare %struct._GtkWidget* @gtk_entry_new() #3

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #1

declare i8* @gimp_object_get_name(i8*) #3

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @palette_import_columns_changed(%struct._GtkAdjustment* %adj, %struct.ImportDialog* %dialog) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  %0 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %palette = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %0, i32 0, i32 4
  %1 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool = icmp ne %struct._GimpPalette* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %palette1 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %2, i32 0, i32 4
  %3 = load %struct._GimpPalette*, %struct._GimpPalette** %palette1, align 8
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %4)
  %add = fadd double %call, 5.000000e-01
  %conv = fptosi double %add to i32
  call void @gimp_palette_set_columns(%struct._GimpPalette* %3, i32 %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #3

declare %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext*, i64, i64, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #3

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @palette_import_image_add(%struct._GimpContainer* %container, %struct._GimpImage* %image, %struct.ImportDialog* %dialog) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  %0 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %image_radio = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %0, i32 0, i32 6
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %image_radio, align 8
  %call = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %image_radio1 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %2, i32 0, i32 6
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %image_radio1, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %3, i32 1)
  %4 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %4, i32 0, i32 2
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_context_set_image(%struct._GimpContext* %5, %struct._GimpImage* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @palette_import_image_remove(%struct._GimpContainer* %container, %struct._GimpImage* %image, %struct.ImportDialog* %dialog) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  %0 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %0, i32 0, i32 2
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 26
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %call = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %image_radio = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %4, i32 0, i32 6
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %image_radio, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_toggle_button_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkToggleButton*
  %call3 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %8 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %gradient_radio = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %8, i32 0, i32 5
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_radio, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_toggle_button_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %11, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %12 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %image_radio8 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %12, i32 0, i32 6
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %image_radio8, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %13, i32 0)
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @palette_import_gradient_changed(%struct._GimpContext* %context, %struct._GimpGradient* %gradient, %struct.ImportDialog* %dialog) #0 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %tobool = icmp ne %struct._GimpGradient* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %import_type = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %1, i32 0, i32 1
  %2 = load i32, i32* %import_type, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %entry1 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %3, i32 0, i32 13
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %7 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %8 = bitcast %struct._GimpGradient* %7 to i8*
  %call3 = call i8* @gimp_object_get_name(i8* %8)
  call void @gtk_entry_set_text(%struct._GtkEntry* %6, i8* %call3)
  %9 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  call void @palette_import_make_palette(%struct.ImportDialog* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @palette_import_image_changed(%struct._GimpContext* %context, %struct._GimpImage* %image, %struct.ImportDialog* %dialog) #0 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  %sensitive = alloca i32, align 4
  %label = alloca i8*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  %0 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %image1 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %0, i32 0, i32 3
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %image2 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %2, i32 0, i32 3
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  %4 = bitcast %struct._GimpImage* %3 to i8*
  %5 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %6 = bitcast %struct.ImportDialog* %5 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct.ImportDialog*)* @palette_import_layer_changed to i8*), i8* %6)
  %7 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %image3 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %7, i32 0, i32 3
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image3, align 8
  %9 = bitcast %struct._GimpImage* %8 to i8*
  %10 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %11 = bitcast %struct.ImportDialog* %10 to i8*
  %call4 = call i32 @g_signal_handlers_disconnect_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct.ImportDialog*)* @palette_import_mask_changed to i8*), i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %13 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %image5 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %13, i32 0, i32 3
  store %struct._GimpImage* %12, %struct._GimpImage** %image5, align 8
  %14 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %import_type = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %14, i32 0, i32 1
  %15 = load i32, i32* %import_type, align 4
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then.6, label %if.end.24

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %sensitive, align 4
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool7 = icmp ne %struct._GimpImage* %16, null
  br i1 %tobool7, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %if.then.6
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call9 = call i8* @gimp_image_get_display_name(%struct._GimpImage* %17)
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call10 = call i32 @gimp_image_get_ID(%struct._GimpImage* %18)
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* %call9, i32 %call10)
  store i8* %call11, i8** %label, align 8
  %19 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %entry12 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %19, i32 0, i32 13
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %entry12, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_entry_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call13)
  %22 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkEntry*
  %23 = load i8*, i8** %label, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %22, i8* %23)
  %24 = load i8*, i8** %label, align 8
  call void @g_free(i8* %24)
  %25 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  call void @palette_import_make_palette(%struct.ImportDialog* %25)
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call15 = call i32 @gimp_image_base_type(%struct._GimpImage* %26)
  %cmp16 = icmp ne i32 %call15, 2
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.8
  store i32 1, i32* %sensitive, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.6
  %27 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %sample_merged_toggle = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %27, i32 0, i32 11
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %sample_merged_toggle, align 8
  %29 = load i32, i32* %sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %28, i32 %29)
  %30 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %selection_only_toggle = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %30, i32 0, i32 12
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_only_toggle, align 8
  %32 = load i32, i32* %sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %31, i32 %32)
  %33 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %threshold = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %33, i32 0, i32 16
  %34 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %threshold, align 8
  %35 = bitcast %struct._GtkAdjustment* %34 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_object_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call20)
  %36 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkObject*
  %37 = load i32, i32* %sensitive, align 4
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %36, i32 %37)
  %38 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %num_colors = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %38, i32 0, i32 14
  %39 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %num_colors, align 8
  %40 = bitcast %struct._GtkAdjustment* %39 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_object_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call22)
  %41 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkObject*
  %42 = load i32, i32* %sensitive, align 4
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %41, i32 %42)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.19, %if.end
  %43 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %image25 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %43, i32 0, i32 3
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image25, align 8
  %tobool26 = icmp ne %struct._GimpImage* %44, null
  br i1 %tobool26, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %if.end.24
  %45 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %image28 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %45, i32 0, i32 3
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image28, align 8
  %47 = bitcast %struct._GimpImage* %46 to i8*
  %48 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %49 = bitcast %struct.ImportDialog* %48 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct.ImportDialog*)* @palette_import_layer_changed to void ()*), i8* %49, void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %image30 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %50, i32 0, i32 3
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image30, align 8
  %52 = bitcast %struct._GimpImage* %51 to i8*
  %53 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %54 = bitcast %struct.ImportDialog* %53 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct.ImportDialog*)* @palette_import_mask_changed to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.27, %if.end.24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @palette_import_filename_changed(%struct._GtkFileChooser* %button, %struct.ImportDialog* %dialog) #0 {
entry:
  %button.addr = alloca %struct._GtkFileChooser*, align 8
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  %filename = alloca i8*, align 8
  %basename = alloca i8*, align 8
  store %struct._GtkFileChooser* %button, %struct._GtkFileChooser** %button.addr, align 8
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  %0 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %import_type = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %0, i32 0, i32 1
  %1 = load i32, i32* %import_type, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %button.addr, align 8
  %call = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %2)
  store i8* %call, i8** %filename, align 8
  %3 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load i8*, i8** %filename, align 8
  %call2 = call noalias i8* @g_filename_display_basename(i8* %4)
  store i8* %call2, i8** %basename, align 8
  %5 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %entry3 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %5, i32 0, i32 13
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %entry3, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_entry_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkEntry*
  %9 = load i8*, i8** %basename, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %8, i8* %9)
  %10 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %10)
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %11 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %entry6 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %11, i32 0, i32 13
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %entry6, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_entry_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.1
  %15 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %15)
  %16 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  call void @palette_import_make_palette(%struct.ImportDialog* %16)
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @g_slice_free1(i64, i8*) #3

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #3

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

; Function Attrs: nounwind uwtable
define internal void @palette_import_layer_changed(%struct._GimpImage* %image, %struct.ImportDialog* %dialog) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  %0 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %import_type = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %0, i32 0, i32 1
  %1 = load i32, i32* %import_type, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %sample_merged_toggle = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %2, i32 0, i32 11
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %sample_merged_toggle, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %5)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  call void @palette_import_make_palette(%struct.ImportDialog* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @palette_import_mask_changed(%struct._GimpImage* %image, %struct.ImportDialog* %dialog) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  %0 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %import_type = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %0, i32 0, i32 1
  %1 = load i32, i32* %import_type, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %selection_only_toggle = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %2, i32 0, i32 12
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_only_toggle, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %5)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  call void @palette_import_make_palette(%struct.ImportDialog* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare i8* @gimp_image_get_display_name(%struct._GimpImage*) #3

declare i32 @gimp_image_get_ID(%struct._GimpImage*) #3

declare void @g_free(i8*) #3

declare i32 @gimp_image_base_type(%struct._GimpImage*) #3

declare void @gimp_scale_entry_set_sensitive(%struct._GtkObject*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_object_get_type() #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #3

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #3

declare noalias i8* @g_filename_display_basename(i8*) #3

declare void @gimp_context_set_by_type(%struct._GimpContext*, i64, %struct._GimpObject*) #3

; Function Attrs: nounwind uwtable
define internal void @palette_import_set_sensitive(%struct.ImportDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.ImportDialog*, align 8
  %gradient = alloca i32, align 4
  %image = alloca i32, align 4
  %file = alloca i32, align 4
  store %struct.ImportDialog* %dialog, %struct.ImportDialog** %dialog.addr, align 8
  %0 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %import_type = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %0, i32 0, i32 1
  %1 = load i32, i32* %import_type, align 4
  %cmp = icmp eq i32 %1, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %gradient, align 4
  %2 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %import_type1 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %2, i32 0, i32 1
  %3 = load i32, i32* %import_type1, align 4
  %cmp2 = icmp eq i32 %3, 1
  %conv3 = zext i1 %cmp2 to i32
  store i32 %conv3, i32* %image, align 4
  %4 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %import_type4 = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %4, i32 0, i32 1
  %5 = load i32, i32* %import_type4, align 4
  %cmp5 = icmp eq i32 %5, 2
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %file, align 4
  %6 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %gradient_combo = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %6, i32 0, i32 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_combo, align 8
  %8 = load i32, i32* %gradient, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %7, i32 %8)
  %9 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %image_combo = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %9, i32 0, i32 9
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %image_combo, align 8
  %11 = load i32, i32* %image, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %10, i32 %11)
  %12 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %sample_merged_toggle = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %12, i32 0, i32 11
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %sample_merged_toggle, align 8
  %14 = load i32, i32* %image, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %13, i32 %14)
  %15 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %selection_only_toggle = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %15, i32 0, i32 12
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_only_toggle, align 8
  %17 = load i32, i32* %image, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %16, i32 %17)
  %18 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %file_chooser = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %18, i32 0, i32 10
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %file_chooser, align 8
  %20 = load i32, i32* %file, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %19, i32 %20)
  %21 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %num_colors = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %21, i32 0, i32 14
  %22 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %num_colors, align 8
  %23 = bitcast %struct._GtkAdjustment* %22 to %struct._GTypeInstance*
  %call = call i64 @gtk_object_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call)
  %24 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkObject*
  %25 = load i32, i32* %file, align 4
  %tobool = icmp ne i32 %25, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %24, i32 %lnot.ext)
  %26 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %columns = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %26, i32 0, i32 15
  %27 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %columns, align 8
  %28 = bitcast %struct._GtkAdjustment* %27 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_object_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call8)
  %29 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkObject*
  %30 = load i32, i32* %file, align 4
  %tobool10 = icmp ne i32 %30, 0
  %lnot11 = xor i1 %tobool10, true
  %lnot.ext12 = zext i1 %lnot11 to i32
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %29, i32 %lnot.ext12)
  %31 = load %struct.ImportDialog*, %struct.ImportDialog** %dialog.addr, align 8
  %threshold = getelementptr inbounds %struct.ImportDialog, %struct.ImportDialog* %31, i32 0, i32 16
  %32 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %threshold, align 8
  %33 = bitcast %struct._GtkAdjustment* %32 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_object_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call13)
  %34 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkObject*
  %35 = load i32, i32* %image, align 4
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %34, i32 %35)
  ret void
}

declare %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext*) #3

declare %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #1

declare void @gimp_palette_set_columns(%struct._GimpPalette*, i32) #3

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #3

declare i32 @gtk_widget_is_sensitive(%struct._GtkWidget*) #3

declare void @gimp_context_set_image(%struct._GimpContext*, %struct._GimpImage*) #3

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare %struct._GimpPalette* @gimp_palette_import_from_gradient(%struct._GimpGradient*, %struct._GimpContext*, i32, i8*, i32) #3

declare %struct._GimpPalette* @gimp_palette_import_from_indexed_image(%struct._GimpImage*, %struct._GimpContext*, i8*) #3

declare %struct._GimpPalette* @gimp_palette_import_from_image(%struct._GimpImage*, %struct._GimpContext*, i8*, i32, i32, i32) #3

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare %struct._GimpPalette* @gimp_palette_import_from_drawable(%struct._GimpDrawable*, %struct._GimpContext*, i8*, i32, i32, i32) #3

declare %struct._GimpPalette* @gimp_palette_import_from_file(%struct._GimpContext*, i8*, i8*, %struct._GError**) #3

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare void @g_error_free(%struct._GError*) #3

declare void @gimp_view_set_viewable(%struct._GimpView*, %struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #3

declare i32 @gimp_palette_get_n_colors(%struct._GimpPalette*) #3

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
