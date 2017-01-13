; ModuleID = './app/dialogs/image-scale-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
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
%struct._GimpContainer = type opaque
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
%struct.ImageScaleDialog = type { %struct._GtkWidget*, %struct._GimpImage*, i32, i32, i32, i32, double, double, i32, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)*, i8* }
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.image_scale_dialog_new = private unnamed_addr constant [23 x i8] c"image_scale_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"callback != NULL\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"dialog-title\04Scale Image\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"gimp-image-scale\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"scale-dialog-unit\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"You are trying to create an image with a size of %s.\00", align 1
@.str.8 = private unnamed_addr constant [156 x i8] c"Scaling the image to the chosen size will make it use more memory than what is configured as \22Maximum Image Size\22 in the Preferences dialog (currently %s).\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Confirm Scaling\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"gimp-image-scale-warning\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"gimp-scale\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.15 = private unnamed_addr constant [78 x i8] c"Scaling the image to the chosen size will shrink some layers completely away.\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Is this what you want to do?\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @image_scale_dialog_new(%struct._GimpImage* %image, %struct._GimpContext* %context, %struct._GtkWidget* %parent, i32 %unit, i32 %interpolation, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)* %callback, i8* %user_data) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %unit.addr = alloca i32, align 4
  %interpolation.addr = alloca i32, align 4
  %callback.addr = alloca void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %dialog = alloca %struct.ImageScaleDialog*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)* %callback, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)** %callback.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.image_scale_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.image_scale_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.image_scale_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %call45 = call noalias i8* @g_slice_alloc0(i64 72)
  %27 = bitcast i8* %call45 to %struct.ImageScaleDialog*
  store %struct.ImageScaleDialog* %27, %struct.ImageScaleDialog** %dialog, align 8
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %29 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %image46 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %29, i32 0, i32 1
  store %struct._GimpImage* %28, %struct._GimpImage** %image46, align 8
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %31 = bitcast %struct._GimpImage* %30 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_viewable_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call47)
  %32 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpViewable*
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call49 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i64 13)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %35 = load i32, i32* %unit.addr, align 4
  %36 = load i32, i32* %interpolation.addr, align 4
  %37 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %38 = bitcast %struct.ImageScaleDialog* %37 to i8*
  %call50 = call %struct._GtkWidget* @scale_dialog_new(%struct._GimpViewable* %32, %struct._GimpContext* %33, i8* %call49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), %struct._GtkWidget* %34, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %35, i32 %36, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)* @image_scale_callback, i8* %38)
  %39 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %dialog51 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %39, i32 0, i32 0
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %dialog51, align 8
  %40 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %dialog52 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %40, i32 0, i32 0
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog52, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call53 to %struct._GObject*
  %44 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %45 = bitcast %struct.ImageScaleDialog* %44 to i8*
  call void @g_object_weak_ref(%struct._GObject* %43, void (i8*, %struct._GObject*)* bitcast (void (%struct.ImageScaleDialog*)* @image_scale_dialog_free to void (i8*, %struct._GObject*)*), i8* %45)
  %46 = load void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)*, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)** %callback.addr, align 8
  %47 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %callback54 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %47, i32 0, i32 9
  store void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)* %46, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)** %callback54, align 8
  %48 = load i8*, i8** %user_data.addr, align 8
  %49 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %user_data55 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %49, i32 0, i32 10
  store i8* %48, i8** %user_data55, align 8
  %50 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %dialog56 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %50, i32 0, i32 0
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog56, align 8
  store %struct._GtkWidget* %51, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.44, %if.else.42, %if.else.36, %if.else.9
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %52
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GtkWidget* @scale_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, i32, i32, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare void @gimp_standard_help_func(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @image_scale_callback(%struct._GtkWidget* %widget, %struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %unit, i32 %interpolation, double %xresolution, double %yresolution, i32 %resolution_unit, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %unit.addr = alloca i32, align 4
  %interpolation.addr = alloca i32, align 4
  %xresolution.addr = alloca double, align 8
  %yresolution.addr = alloca double, align 8
  %resolution_unit.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct.ImageScaleDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %scale_check = alloca i32, align 4
  %max_memsize = alloca i64, align 8
  %new_memsize = alloca i64, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store double %xresolution, double* %xresolution.addr, align 8
  store double %yresolution, double* %yresolution.addr, align 8
  store i32 %resolution_unit, i32* %resolution_unit.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.ImageScaleDialog*
  store %struct.ImageScaleDialog* %1, %struct.ImageScaleDialog** %dialog, align 8
  %2 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %3 = bitcast %struct._GimpViewable* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %4, %struct._GimpImage** %image, align 8
  %5 = load i32, i32* %width.addr, align 4
  %6 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %width2 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %6, i32 0, i32 2
  store i32 %5, i32* %width2, align 4
  %7 = load i32, i32* %height.addr, align 4
  %8 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %height3 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %8, i32 0, i32 3
  store i32 %7, i32* %height3, align 4
  %9 = load i32, i32* %unit.addr, align 4
  %10 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %unit4 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %10, i32 0, i32 4
  store i32 %9, i32* %unit4, align 4
  %11 = load i32, i32* %interpolation.addr, align 4
  %12 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %interpolation5 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %12, i32 0, i32 5
  store i32 %11, i32* %interpolation5, align 4
  %13 = load double, double* %xresolution.addr, align 8
  %14 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %xresolution6 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %14, i32 0, i32 6
  store double %13, double* %xresolution6, align 8
  %15 = load double, double* %yresolution.addr, align 8
  %16 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %yresolution7 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %16, i32 0, i32 7
  store double %15, double* %yresolution7, align 8
  %17 = load i32, i32* %resolution_unit.addr, align 4
  %18 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %resolution_unit8 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %18, i32 0, i32 8
  store i32 %17, i32* %resolution_unit8, align 4
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %19, i32 0)
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %20, i32 0, i32 1
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 1
  %22 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %23 = bitcast %struct._GimpCoreConfig* %22 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_gui_config_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call9)
  %24 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpGuiConfig*
  %max_new_image_size = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %24, i32 0, i32 14
  %25 = load i64, i64* %max_new_image_size, align 8
  store i64 %25, i64* %max_memsize, align 8
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %27 = load i32, i32* %width.addr, align 4
  %28 = load i32, i32* %height.addr, align 4
  %29 = load i64, i64* %max_memsize, align 8
  %call11 = call i32 @gimp_image_scale_check(%struct._GimpImage* %26, i32 %27, i32 %28, i64 %29, i64* %new_memsize)
  store i32 %call11, i32* %scale_check, align 4
  %30 = load i32, i32* %scale_check, align 4
  switch i32 %30, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.12
    i32 0, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %31 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %32 = load i64, i64* %new_memsize, align 8
  %33 = load i64, i64* %max_memsize, align 8
  call void @image_scale_confirm_large(%struct.ImageScaleDialog* %31, i64 %32, i64 %33)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %34 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  call void @image_scale_confirm_small(%struct.ImageScaleDialog* %34)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %35)
  %36 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %callback = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %36, i32 0, i32 9
  %37 = load void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)*, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)** %callback, align 8
  %38 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %dialog14 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %38, i32 0, i32 0
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog14, align 8
  %40 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %image15 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %40, i32 0, i32 1
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image15, align 8
  %42 = bitcast %struct._GimpImage* %41 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_viewable_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call16)
  %43 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpViewable*
  %44 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %width18 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %44, i32 0, i32 2
  %45 = load i32, i32* %width18, align 4
  %46 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %height19 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %46, i32 0, i32 3
  %47 = load i32, i32* %height19, align 4
  %48 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %unit20 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %48, i32 0, i32 4
  %49 = load i32, i32* %unit20, align 4
  %50 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %interpolation21 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %50, i32 0, i32 5
  %51 = load i32, i32* %interpolation21, align 4
  %52 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %xresolution22 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %52, i32 0, i32 6
  %53 = load double, double* %xresolution22, align 8
  %54 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %yresolution23 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %54, i32 0, i32 7
  %55 = load double, double* %yresolution23, align 8
  %56 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %resolution_unit24 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %56, i32 0, i32 8
  %57 = load i32, i32* %resolution_unit24, align 4
  %58 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog, align 8
  %user_data = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %58, i32 0, i32 10
  %59 = load i8*, i8** %user_data, align 8
  call void %37(%struct._GtkWidget* %39, %struct._GimpViewable* %43, i32 %45, i32 %47, i32 %49, i32 %51, double %53, double %55, i32 %57, i8* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %60)
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %62 = bitcast %struct._GimpImage* %61 to %struct._GTypeInstance*
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 80)
  %63 = bitcast %struct._GTypeInstance* %call25 to %struct._GObject*
  %64 = load i32, i32* %unit.addr, align 4
  %conv = zext i32 %64 to i64
  %65 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* %65)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.13, %sw.bb.12, %sw.bb
  ret void
}

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @image_scale_dialog_free(%struct.ImageScaleDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.ImageScaleDialog*, align 8
  store %struct.ImageScaleDialog* %dialog, %struct.ImageScaleDialog** %dialog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %1 = bitcast %struct.ImageScaleDialog* %0 to i8*
  call void @g_slice_free1(i64 72, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #1

declare i32 @gimp_image_scale_check(%struct._GimpImage*, i32, i32, i64, i64*) #3

; Function Attrs: nounwind uwtable
define internal void @image_scale_confirm_large(%struct.ImageScaleDialog* %dialog, i64 %new_memsize, i64 %max_memsize) #0 {
entry:
  %dialog.addr = alloca %struct.ImageScaleDialog*, align 8
  %new_memsize.addr = alloca i64, align 8
  %max_memsize.addr = alloca i64, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %size = alloca i8*, align 8
  store %struct.ImageScaleDialog* %dialog, %struct.ImageScaleDialog** %dialog.addr, align 8
  store i64 %new_memsize, i64* %new_memsize.addr, align 8
  store i64 %max_memsize, i64* %max_memsize.addr, align 8
  %0 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %call = call %struct._GtkWidget* @image_scale_confirm_dialog(%struct.ImageScaleDialog* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %widget, align 8
  %1 = load i64, i64* %new_memsize.addr, align 8
  %call1 = call i8* @g_format_size(i64 %1)
  store i8* %call1, i8** %size, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_message_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %4, i32 0, i32 1
  %5 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i32 0, i32 0)) #7
  %6 = load i8*, i8** %size, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %5, i8* %call4, i8* %6)
  %7 = load i8*, i8** %size, align 8
  call void @g_free(i8* %7)
  %8 = load i64, i64* %max_memsize.addr, align 8
  %call5 = call i8* @g_format_size(i64 %8)
  store i8* %call5, i8** %size, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_message_dialog_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpMessageDialog*
  %box8 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %11, i32 0, i32 1
  %12 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box8, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.8, i32 0, i32 0)) #7
  %13 = load i8*, i8** %size, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %12, i8* %call9, i8* %13)
  %14 = load i8*, i8** %size, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @image_scale_confirm_small(%struct.ImageScaleDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.ImageScaleDialog*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct.ImageScaleDialog* %dialog, %struct.ImageScaleDialog** %dialog.addr, align 8
  %0 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %call = call %struct._GtkWidget* @image_scale_confirm_dialog(%struct.ImageScaleDialog* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %widget, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_message_dialog_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %3, i32 0, i32 1
  %4 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.15, i32 0, i32 0)) #7
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %4, i8* %call3)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_message_dialog_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpMessageDialog*
  %box6 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %7, i32 0, i32 1
  %8 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box6, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0)) #7
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %8, i8* %call7)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  ret void
}

declare void @gtk_widget_hide(%struct._GtkWidget*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @image_scale_confirm_dialog(%struct.ImageScaleDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.ImageScaleDialog*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct.ImageScaleDialog* %dialog, %struct.ImageScaleDialog** %dialog.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0)) #7
  %0 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %dialog1 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog1, align 8
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct._GtkWidget* %1, i32 2, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %widget, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %4, i32 -5, i32 -6, i32 -1)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  %7 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %8 = bitcast %struct.ImageScaleDialog* %7 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.ImageScaleDialog*)* @image_scale_confirm_response to void ()*), i8* %8, void (i8*, %struct._GClosure*)* null, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  ret %struct._GtkWidget* %9
}

declare i8* @g_format_size(i64) #3

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @g_free(i8*) #3

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #3

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @image_scale_confirm_response(%struct._GtkWidget* %widget, i32 %response_id, %struct.ImageScaleDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct.ImageScaleDialog*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.ImageScaleDialog* %dialog, %struct.ImageScaleDialog** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %0)
  %1 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %1, -5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %dialog1 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %2, i32 0, i32 0
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog1, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %3)
  %4 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %callback = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %4, i32 0, i32 9
  %5 = load void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)*, void (%struct._GtkWidget*, %struct._GimpViewable*, i32, i32, i32, i32, double, double, i32, i8*)** %callback, align 8
  %6 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %dialog2 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %6, i32 0, i32 0
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog2, align 8
  %8 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %image = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %8, i32 0, i32 1
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = bitcast %struct._GimpImage* %9 to %struct._GTypeInstance*
  %call = call i64 @gimp_viewable_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call)
  %11 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpViewable*
  %12 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %width = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %12, i32 0, i32 2
  %13 = load i32, i32* %width, align 4
  %14 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %height = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %14, i32 0, i32 3
  %15 = load i32, i32* %height, align 4
  %16 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %unit = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %16, i32 0, i32 4
  %17 = load i32, i32* %unit, align 4
  %18 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %interpolation = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %18, i32 0, i32 5
  %19 = load i32, i32* %interpolation, align 4
  %20 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %xresolution = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %20, i32 0, i32 6
  %21 = load double, double* %xresolution, align 8
  %22 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %yresolution = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %22, i32 0, i32 7
  %23 = load double, double* %yresolution, align 8
  %24 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %resolution_unit = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %24, i32 0, i32 8
  %25 = load i32, i32* %resolution_unit, align 4
  %26 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %user_data = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %26, i32 0, i32 10
  %27 = load i8*, i8** %user_data, align 8
  call void %5(%struct._GtkWidget* %7, %struct._GimpViewable* %11, i32 %13, i32 %15, i32 %17, i32 %19, double %21, double %23, i32 %25, i8* %27)
  %28 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %dialog4 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %28, i32 0, i32 0
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog4, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %29)
  br label %if.end

if.else:                                          ; preds = %entry
  %30 = load %struct.ImageScaleDialog*, %struct.ImageScaleDialog** %dialog.addr, align 8
  %dialog5 = getelementptr inbounds %struct.ImageScaleDialog, %struct.ImageScaleDialog* %30, i32 0, i32 0
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog5, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %31, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

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
