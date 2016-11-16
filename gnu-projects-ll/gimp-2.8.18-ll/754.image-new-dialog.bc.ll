; ModuleID = './app/dialogs/image-new-dialog.bc'
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
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpTemplate = type { %struct._GimpViewable }
%struct.ImageNewDialog = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpContext*, %struct._GimpTemplate* }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
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
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpTemplateEditor = type { %struct._GtkBox }
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpChainButton = type { %struct._GtkTable, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.image_new_dialog_new = private unnamed_addr constant [21 x i8] c"image_new_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"image-new-dialog\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Create a New Image\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"gimp-image-new\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"gimp-file-new\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"gimp-image-new-dialog\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"_Template:\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"view-size\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"view-border-width\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"focus-on-click\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"template-changed\00", align 1
@__func__.image_new_dialog_set = private unnamed_addr constant [21 x i8] c"image_new_dialog_set\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"image == NULL || GIMP_IS_IMAGE (image)\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"template == NULL || GIMP_IS_TEMPLATE (template)\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"dialog != NULL\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Confirm Image Size\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"You are trying to create an image with a size of %s.\00", align 1
@.str.26 = private unnamed_addr constant [139 x i8] c"An image of the chosen size will use more memory than what is configured as \22Maximum Image Size\22 in the Preferences dialog (currently %s).\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"comment\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @image_new_dialog_new(%struct._GimpContext* %context) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %dialog = alloca %struct.ImageNewDialog*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GimpSizeEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.image_new_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %call12 = call noalias i8* @g_slice_alloc0(i64 48)
  %13 = bitcast i8* %call12 to %struct.ImageNewDialog*
  store %struct.ImageNewDialog* %13, %struct.ImageNewDialog** %dialog, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 1
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call13 = call %struct._GimpContext* @gimp_context_new(%struct._Gimp* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), %struct._GimpContext* %16)
  %17 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %context14 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %17, i32 0, i32 4
  store %struct._GimpContext* %call13, %struct._GimpContext** %context14, align 8
  %call15 = call i64 @gimp_template_get_type() #5
  %call16 = call i8* (i64, i8*, ...) @g_object_new(i64 %call15, i8* null)
  %18 = bitcast i8* %call16 to %struct._GimpTemplate*
  %19 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %template = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %19, i32 0, i32 5
  store %struct._GimpTemplate* %18, %struct._GimpTemplate** %template, align 8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)) #7
  %call18 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 -5, i8* null)
  %20 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %dialog19 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %20, i32 0, i32 0
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %dialog19, align 8
  %21 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %dialog20 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %21, i32 0, i32 0
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog20, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_window_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call21)
  %24 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %24, i32 0)
  %25 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %dialog23 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %25, i32 0, i32 0
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog23, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  %29 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %30 = bitcast %struct.ImageNewDialog* %29 to i8*
  call void @g_object_set_data_full(%struct._GObject* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* %30, void (i8*)* bitcast (void (%struct.ImageNewDialog*)* @image_new_dialog_free to void (i8*)*))
  %31 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %dialog25 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %31, i32 0, i32 0
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog25, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %34 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %35 = bitcast %struct.ImageNewDialog* %34 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.ImageNewDialog*)* @image_new_dialog_response to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 0)
  %36 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %dialog27 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %36, i32 0, i32 0
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog27, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_dialog_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call28)
  %39 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %39, i32 1, i32 -5, i32 -6, i32 -1)
  %call30 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %main_vbox, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_container_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call31)
  %42 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %42, i32 12)
  %43 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %dialog33 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %43, i32 0, i32 0
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog33, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_dialog_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call34)
  %46 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkDialog*
  %call36 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %46)
  %47 = bitcast %struct._GtkWidget* %call36 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_box_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call37)
  %48 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 1, i32 1, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %call39 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %hbox, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call40)
  %53 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %53, %struct._GtkWidget* %54, i32 0, i32 0, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #7
  %call43 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call42)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %label, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_box_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call44)
  %58 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBox*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %58, %struct._GtkWidget* %59, i32 0, i32 0, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %call46 = call i64 @gimp_container_combo_box_get_type() #5
  %61 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp47 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %61, i32 0, i32 1
  %62 = load %struct._Gimp*, %struct._Gimp** %gimp47, align 8
  %templates = getelementptr inbounds %struct._Gimp, %struct._Gimp* %62, i32 0, i32 48
  %63 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %64 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %context48 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %64, i32 0, i32 4
  %65 = load %struct._GimpContext*, %struct._GimpContext** %context48, align 8
  %call49 = call i8* (i64, i8*, ...) @g_object_new(i64 %call46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), %struct._GimpContainer* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._GimpContext* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 0, i8* null)
  %66 = bitcast i8* %call49 to %struct._GtkWidget*
  %67 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %combo = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %67, i32 0, i32 2
  store %struct._GtkWidget* %66, %struct._GtkWidget** %combo, align 8
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_box_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call50)
  %70 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkBox*
  %71 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %combo52 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %71, i32 0, i32 2
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %combo52, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %70, %struct._GtkWidget* %72, i32 1, i32 1, i32 0)
  %73 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %combo53 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %73, i32 0, i32 2
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %combo53, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_label_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call54)
  %77 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkLabel*
  %78 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %combo56 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %78, i32 0, i32 2
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %combo56, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %77, %struct._GtkWidget* %79)
  %80 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %context57 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %80, i32 0, i32 4
  %81 = load %struct._GimpContext*, %struct._GimpContext** %context57, align 8
  %82 = bitcast %struct._GimpContext* %81 to i8*
  %83 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %84 = bitcast %struct.ImageNewDialog* %83 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpTemplate*, %struct.ImageNewDialog*)* @image_new_template_changed to void ()*), i8* %84, void (i8*, %struct._GClosure*)* null, i32 0)
  %85 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %template59 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %85, i32 0, i32 5
  %86 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template59, align 8
  %87 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp60 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %87, i32 0, i32 1
  %88 = load %struct._Gimp*, %struct._Gimp** %gimp60, align 8
  %call61 = call %struct._GtkWidget* @gimp_template_editor_new(%struct._GimpTemplate* %86, %struct._Gimp* %88, i32 0)
  %89 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %editor = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %89, i32 0, i32 3
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %editor, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_box_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call62)
  %92 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkBox*
  %93 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %editor64 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %93, i32 0, i32 3
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %editor64, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %92, %struct._GtkWidget* %94, i32 0, i32 0, i32 0)
  %95 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %editor65 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %95, i32 0, i32 3
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %editor65, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %97 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %editor66 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %97, i32 0, i32 3
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %editor66, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_template_editor_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call67)
  %100 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpTemplateEditor*
  %call69 = call %struct._GtkWidget* @gimp_template_editor_get_size_se(%struct._GimpTemplateEditor* %100)
  %101 = bitcast %struct._GtkWidget* %call69 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_size_entry_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call70)
  %102 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpSizeEntry*
  store %struct._GimpSizeEntry* %102, %struct._GimpSizeEntry** %entry1, align 8
  %103 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry1, align 8
  call void @gimp_size_entry_set_activates_default(%struct._GimpSizeEntry* %103, i32 1)
  %104 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry1, align 8
  call void @gimp_size_entry_grab_focus(%struct._GimpSizeEntry* %104)
  %105 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %context72 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %105, i32 0, i32 4
  %106 = load %struct._GimpContext*, %struct._GimpContext** %context72, align 8
  %107 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %context73 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %107, i32 0, i32 4
  %108 = load %struct._GimpContext*, %struct._GimpContext** %context73, align 8
  %call74 = call %struct._GimpTemplate* @gimp_context_get_template(%struct._GimpContext* %108)
  %109 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  call void @image_new_template_changed(%struct._GimpContext* %106, %struct._GimpTemplate* %call74, %struct.ImageNewDialog* %109)
  %110 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %dialog75 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %110, i32 0, i32 0
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog75, align 8
  store %struct._GtkWidget* %111, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.10
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %112
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GimpContext* @gimp_context_new(%struct._Gimp*, i8*, %struct._GimpContext*) #3

declare i8* @g_object_new(i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_template_get_type() #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define internal void @image_new_dialog_free(%struct.ImageNewDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.ImageNewDialog*, align 8
  store %struct.ImageNewDialog* %dialog, %struct.ImageNewDialog** %dialog.addr, align 8
  %0 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %0, i32 0, i32 4
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %2 = bitcast %struct._GimpContext* %1 to i8*
  call void @g_object_unref(i8* %2)
  %3 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %template = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %3, i32 0, i32 5
  %4 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %5 = bitcast %struct._GimpTemplate* %4 to i8*
  call void @g_object_unref(i8* %5)
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %7 = bitcast %struct.ImageNewDialog* %6 to i8*
  call void @g_slice_free1(i64 48, i8* %7)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @image_new_dialog_response(%struct._GtkWidget* %widget, i32 %response_id, %struct.ImageNewDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct.ImageNewDialog*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.ImageNewDialog* %dialog, %struct.ImageNewDialog** %dialog.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %1, i32 0, i32 4
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 1
  %4 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_image = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %4, i32 0, i32 35
  %5 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image, align 8
  %6 = bitcast %struct._GimpTemplate* %5 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %8 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %template = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %8, i32 0, i32 5
  %9 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %10 = bitcast %struct._GimpTemplate* %9 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %call2 = call i32 @gimp_config_sync(%struct._GObject* %7, %struct._GObject* %11, i32 0)
  %12 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %context3 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %12, i32 0, i32 4
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context3, align 8
  call void @gimp_context_set_template(%struct._GimpContext* %13, %struct._GimpTemplate* null)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %template5 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %14, i32 0, i32 5
  %15 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template5, align 8
  %call6 = call i64 @gimp_template_get_initial_size(%struct._GimpTemplate* %15)
  %16 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %context7 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %16, i32 0, i32 4
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context7, align 8
  %gimp8 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp8, align 8
  %config9 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 1
  %19 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config9, align 8
  %20 = bitcast %struct._GimpCoreConfig* %19 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_gui_config_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call10)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpGuiConfig*
  %max_new_image_size = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %21, i32 0, i32 14
  %22 = load i64, i64* %max_new_image_size, align 8
  %cmp = icmp ugt i64 %call6, %22
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.4
  %23 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  call void @image_new_confirm_dialog(%struct.ImageNewDialog* %23)
  br label %if.end

if.else:                                          ; preds = %sw.bb.4
  %24 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  call void @image_new_create_image(%struct.ImageNewDialog* %24)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %25 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %dialog12 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %25, i32 0, i32 0
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog12, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %26)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb
  ret void
}

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_container_combo_box_get_type() #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @image_new_template_changed(%struct._GimpContext* %context, %struct._GimpTemplate* %template, %struct.ImageNewDialog* %dialog) #0 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %dialog.addr = alloca %struct.ImageNewDialog*, align 8
  %editor = alloca %struct._GimpTemplateEditor*, align 8
  %chain = alloca %struct._GtkWidget*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %comment = alloca i8*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  store %struct.ImageNewDialog* %dialog, %struct.ImageNewDialog** %dialog.addr, align 8
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %tobool = icmp ne %struct._GimpTemplate* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.32

if.end:                                           ; preds = %entry
  %1 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %editor1 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %1, i32 0, i32 3
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %editor1, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_template_editor_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTemplateEditor*
  store %struct._GimpTemplateEditor* %4, %struct._GimpTemplateEditor** %editor, align 8
  %5 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor, align 8
  %call3 = call %struct._GtkWidget* @gimp_template_editor_get_resolution_chain(%struct._GimpTemplateEditor* %5)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %chain, align 8
  %6 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call4 = call double @gimp_template_get_resolution_x(%struct._GimpTemplate* %6)
  store double %call4, double* %xres, align 8
  %7 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call5 = call double @gimp_template_get_resolution_y(%struct._GimpTemplate* %7)
  store double %call5, double* %yres, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %chain, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_chain_button_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpChainButton*
  %11 = load double, double* %xres, align 8
  %12 = load double, double* %yres, align 8
  %sub = fsub double %11, %12
  %cmp = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load double, double* %xres, align 8
  %14 = load double, double* %yres, align 8
  %sub8 = fsub double %13, %14
  %sub9 = fsub double -0.000000e+00, %sub8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %15 = load double, double* %xres, align 8
  %16 = load double, double* %yres, align 8
  %sub10 = fsub double %15, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub9, %cond.true ], [ %sub10, %cond.false ]
  %cmp11 = fcmp olt double %cond, 5.000000e-03
  %conv = zext i1 %cmp11 to i32
  call void @gimp_chain_button_set_active(%struct._GimpChainButton* %10, i32 %conv)
  %17 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call12 = call i8* @gimp_template_get_comment(%struct._GimpTemplate* %17)
  store i8* %call12, i8** %comment, align 8
  %18 = load i8*, i8** %comment, align 8
  %tobool13 = icmp ne i8* %18, null
  br i1 %tobool13, label %lor.lhs.false, label %if.then.16

lor.lhs.false:                                    ; preds = %cond.end
  %19 = load i8*, i8** %comment, align 8
  %call14 = call i64 @strlen(i8* %19) #6
  %tobool15 = icmp ne i64 %call14, 0
  br i1 %tobool15, label %if.else, label %if.then.16

if.then.16:                                       ; preds = %lor.lhs.false, %cond.end
  %20 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %template17 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %20, i32 0, i32 5
  %21 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template17, align 8
  %call18 = call i8* @gimp_template_get_comment(%struct._GimpTemplate* %21)
  %call19 = call noalias i8* @g_strdup(i8* %call18)
  store i8* %call19, i8** %comment, align 8
  br label %if.end.20

if.else:                                          ; preds = %lor.lhs.false
  store i8* null, i8** %comment, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.16
  %22 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %23 = bitcast %struct._GimpTemplate* %22 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  %25 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %template22 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %25, i32 0, i32 5
  %26 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template22, align 8
  %27 = bitcast %struct._GimpTemplate* %26 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  %call24 = call i32 @gimp_config_sync(%struct._GObject* %24, %struct._GObject* %28, i32 65536)
  %29 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %30 = bitcast %struct._GimpTemplate* %29 to %struct._GTypeInstance*
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call25 to %struct._GObject*
  %32 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %template26 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %32, i32 0, i32 5
  %33 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template26, align 8
  %34 = bitcast %struct._GimpTemplate* %33 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  %call28 = call i32 @gimp_config_sync(%struct._GObject* %31, %struct._GObject* %35, i32 0)
  %36 = load i8*, i8** %comment, align 8
  %tobool29 = icmp ne i8* %36, null
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.20
  %37 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %template31 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %37, i32 0, i32 5
  %38 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template31, align 8
  %39 = bitcast %struct._GimpTemplate* %38 to i8*
  %40 = load i8*, i8** %comment, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* %40, i8* null)
  %41 = load i8*, i8** %comment, align 8
  call void @g_free(i8* %41)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then, %if.then.30, %if.end.20
  ret void
}

declare %struct._GtkWidget* @gimp_template_editor_new(%struct._GimpTemplate*, %struct._Gimp*, i32) #3

declare %struct._GtkWidget* @gimp_template_editor_get_size_se(%struct._GimpTemplateEditor*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_template_editor_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #1

declare void @gimp_size_entry_set_activates_default(%struct._GimpSizeEntry*, i32) #3

declare void @gimp_size_entry_grab_focus(%struct._GimpSizeEntry*) #3

declare %struct._GimpTemplate* @gimp_context_get_template(%struct._GimpContext*) #3

; Function Attrs: nounwind uwtable
define void @image_new_dialog_set(%struct._GtkWidget* %widget, %struct._GimpImage* %image, %struct._GimpTemplate* %template) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %dialog = alloca %struct.ImageNewDialog*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst44 = alloca %struct._GTypeInstance*, align 8
  %__t46 = alloca i64, align 8
  %__r49 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.image_new_dialog_set, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.83

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp12 = icmp eq %struct._GimpImage* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.image_new_dialog_set, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.83

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %cmp41 = icmp eq %struct._GimpTemplate* %27, null
  br i1 %cmp41, label %if.then.66, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %do.body.40
  %28 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %29 = bitcast %struct._GimpTemplate* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst44, align 8
  %call47 = call i64 @gimp_template_get_type() #5
  store i64 %call47, i64* %__t46, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %tobool50 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %lor.lhs.false.42
  store i32 0, i32* %__r49, align 4
  br label %if.end.63

if.else.52:                                       ; preds = %lor.lhs.false.42
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %tobool54 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.60

land.lhs.true.55:                                 ; preds = %if.else.52
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %g_type57 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type57, align 8
  %36 = load i64, i64* %__t46, align 8
  %cmp58 = icmp eq i64 %35, %36
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %__r49, align 4
  br label %if.end.62

if.else.60:                                       ; preds = %land.lhs.true.55, %if.else.52
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %38 = load i64, i64* %__t46, align 8
  %call61 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #6
  store i32 %call61, i32* %__r49, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.51
  %39 = load i32, i32* %__r49, align 4
  store i32 %39, i32* %tmp64
  %40 = load i32, i32* %tmp64
  %tobool65 = icmp ne i32 %40, 0
  br i1 %tobool65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.end.63, %do.body.40
  br label %if.end.68

if.else.67:                                       ; preds = %if.end.63
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.image_new_dialog_set, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.83

if.end.68:                                        ; preds = %if.then.66
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call70 to %struct._GObject*
  %call71 = call i8* @g_object_get_data(%struct._GObject* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  %44 = bitcast i8* %call71 to %struct.ImageNewDialog*
  store %struct.ImageNewDialog* %44, %struct.ImageNewDialog** %dialog, align 8
  br label %do.body.72

do.body.72:                                       ; preds = %do.end.69
  %45 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %cmp73 = icmp ne %struct.ImageNewDialog* %45, null
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %do.body.72
  br label %if.end.76

if.else.75:                                       ; preds = %do.body.72
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.image_new_dialog_set, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.83

if.end.76:                                        ; preds = %if.then.74
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  %46 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %context = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %46, i32 0, i32 4
  %47 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %48 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  call void @gimp_context_set_template(%struct._GimpContext* %47, %struct._GimpTemplate* %48)
  %49 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %tobool78 = icmp ne %struct._GimpTemplate* %49, null
  br i1 %tobool78, label %if.end.83, label %if.then.79

if.then.79:                                       ; preds = %do.end.77
  %50 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %context80 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %50, i32 0, i32 4
  %51 = load %struct._GimpContext*, %struct._GimpContext** %context80, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %51, i32 0, i32 1
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call81 = call %struct._GimpTemplate* @gimp_image_new_get_last_template(%struct._Gimp* %52, %struct._GimpImage* %53)
  store %struct._GimpTemplate* %call81, %struct._GimpTemplate** %template.addr, align 8
  %54 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  %context82 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %54, i32 0, i32 4
  %55 = load %struct._GimpContext*, %struct._GimpContext** %context82, align 8
  %56 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %57 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog, align 8
  call void @image_new_template_changed(%struct._GimpContext* %55, %struct._GimpTemplate* %56, %struct.ImageNewDialog* %57)
  %58 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %59 = bitcast %struct._GimpTemplate* %58 to i8*
  call void @g_object_unref(i8* %59)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.9, %if.else.37, %if.else.67, %if.else.75, %if.then.79, %do.end.77
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare void @gimp_context_set_template(%struct._GimpContext*, %struct._GimpTemplate*) #3

declare %struct._GimpTemplate* @gimp_image_new_get_last_template(%struct._Gimp*, %struct._GimpImage*) #3

declare void @g_object_unref(i8*) #3

declare void @g_slice_free1(i64, i8*) #3

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #3

declare i64 @gimp_template_get_initial_size(%struct._GimpTemplate*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @image_new_confirm_dialog(%struct.ImageNewDialog* %data) #0 {
entry:
  %data.addr = alloca %struct.ImageNewDialog*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %size = alloca i8*, align 8
  store %struct.ImageNewDialog* %data, %struct.ImageNewDialog** %data.addr, align 8
  %0 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %data.addr, align 8
  %confirm_dialog = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %0, i32 0, i32 1
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %confirm_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %data.addr, align 8
  %confirm_dialog1 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %2, i32 0, i32 1
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %confirm_dialog1, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %5)
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0)) #7
  %6 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %data.addr, align 8
  %dialog4 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %6, i32 0, i32 0
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog4, align 8
  %call5 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), %struct._GtkWidget* %7, i32 2, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %dialog, align 8
  %8 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %data.addr, align 8
  %confirm_dialog6 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %8, i32 0, i32 1
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %confirm_dialog6, align 8
  %9 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %data.addr, align 8
  %confirm_dialog7 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %9, i32 0, i32 1
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %confirm_dialog7, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_dialog_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %12, i32 -5, i32 -6, i32 -1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %15 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %data.addr, align 8
  %16 = bitcast %struct.ImageNewDialog* %15 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.ImageNewDialog*)* @image_new_confirm_response to void ()*), i8* %16, void (i8*, %struct._GClosure*)* null, i32 0)
  %17 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %data.addr, align 8
  %template = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %17, i32 0, i32 5
  %18 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %call11 = call i64 @gimp_template_get_initial_size(%struct._GimpTemplate* %18)
  %call12 = call i8* @g_format_size(i64 %call11)
  store i8* %call12, i8** %size, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_message_dialog_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %21, i32 0, i32 1
  %22 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i32 0, i32 0)) #7
  %23 = load i8*, i8** %size, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %22, i8* %call15, i8* %23)
  %24 = load i8*, i8** %size, align 8
  call void @g_free(i8* %24)
  %25 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %data.addr, align 8
  %context = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %25, i32 0, i32 4
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %26, i32 0, i32 1
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config16 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 1
  %28 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config16, align 8
  %29 = bitcast %struct._GimpCoreConfig* %28 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_gui_config_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call17)
  %30 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %30, %struct._GimpGuiConfig** %config, align 8
  %31 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %max_new_image_size = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %31, i32 0, i32 14
  %32 = load i64, i64* %max_new_image_size, align 8
  %call19 = call i8* @g_format_size(i64 %32)
  store i8* %call19, i8** %size, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_message_dialog_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call20)
  %35 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpMessageDialog*
  %box22 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %35, i32 0, i32 1
  %36 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box22, align 8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.26, i32 0, i32 0)) #7
  %37 = load i8*, i8** %size, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %36, i8* %call23, i8* %37)
  %38 = load i8*, i8** %size, align 8
  call void @g_free(i8* %38)
  %39 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %data.addr, align 8
  %dialog24 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %39, i32 0, i32 0
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog24, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %40, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @image_new_create_image(%struct.ImageNewDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.ImageNewDialog*, align 8
  %template = alloca %struct._GimpTemplate*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  store %struct.ImageNewDialog* %dialog, %struct.ImageNewDialog** %dialog.addr, align 8
  %0 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %template1 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %0, i32 0, i32 5
  %1 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template1, align 8
  %2 = bitcast %struct._GimpTemplate* %1 to i8*
  %call = call i8* @g_object_ref(i8* %2)
  %3 = bitcast i8* %call to %struct._GimpTemplate*
  store %struct._GimpTemplate* %3, %struct._GimpTemplate** %template, align 8
  %4 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %4, i32 0, i32 4
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp2, align 8
  store %struct._Gimp* %6, %struct._Gimp** %gimp, align 8
  %7 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %dialog.addr, align 8
  %dialog3 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %7, i32 0, i32 0
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog3, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %8)
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %10 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call4 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %11)
  %call5 = call %struct._GimpImage* @gimp_image_new_from_template(%struct._Gimp* %9, %struct._GimpTemplate* %10, %struct._GimpContext* %call4)
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  call void @gimp_image_new_set_last_template(%struct._Gimp* %12, %struct._GimpTemplate* %13)
  %14 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %15 = bitcast %struct._GimpTemplate* %14 to i8*
  call void @g_object_unref(i8* %15)
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @gtk_window_present(%struct._GtkWindow*) #3

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @image_new_confirm_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct.ImageNewDialog* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca %struct.ImageNewDialog*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.ImageNewDialog* %data, %struct.ImageNewDialog** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %0)
  %1 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %data.addr, align 8
  %confirm_dialog = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %1, i32 0, i32 1
  store %struct._GtkWidget* null, %struct._GtkWidget** %confirm_dialog, align 8
  %2 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %2, -5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %data.addr, align 8
  call void @image_new_create_image(%struct.ImageNewDialog* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.ImageNewDialog*, %struct.ImageNewDialog** %data.addr, align 8
  %dialog1 = getelementptr inbounds %struct.ImageNewDialog, %struct.ImageNewDialog* %4, i32 0, i32 0
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog1, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %5, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i8* @g_format_size(i64) #3

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #1

declare void @g_free(i8*) #3

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #3

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #3

declare i8* @g_object_ref(i8*) #3

declare %struct._GimpImage* @gimp_image_new_from_template(%struct._Gimp*, %struct._GimpTemplate*, %struct._GimpContext*) #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

declare void @gimp_image_new_set_last_template(%struct._Gimp*, %struct._GimpTemplate*) #3

declare %struct._GtkWidget* @gimp_template_editor_get_resolution_chain(%struct._GimpTemplateEditor*) #3

declare double @gimp_template_get_resolution_x(%struct._GimpTemplate*) #3

declare double @gimp_template_get_resolution_y(%struct._GimpTemplate*) #3

declare void @gimp_chain_button_set_active(%struct._GimpChainButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_chain_button_get_type() #1

declare i8* @gimp_template_get_comment(%struct._GimpTemplate*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare noalias i8* @g_strdup(i8*) #3

declare void @g_object_set(i8*, i8*, ...) #3

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
