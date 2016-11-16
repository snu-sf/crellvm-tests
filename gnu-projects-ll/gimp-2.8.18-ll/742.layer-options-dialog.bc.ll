; ModuleID = './app/dialogs/layer-options-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._LayerOptionsDialog = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32, %struct._GimpImage*, %struct._GimpContext*, %struct._GimpLayer* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
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
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.layer_options_dialog_new = private unnamed_addr constant [25 x i8] c"layer_options_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"layer == NULL || GIMP_IS_LAYER (layer)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (parent)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Layer _name:\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Width:\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Height:\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Layer Fill Type\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Set name from _text\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1

; Function Attrs: nounwind uwtable
define %struct._LayerOptionsDialog* @layer_options_dialog_new(%struct._GimpImage* %image, %struct._GimpLayer* %layer, %struct._GimpContext* %context, %struct._GtkWidget* %parent, i8* %layer_name, i32 %layer_fill_type, i8* %title, i8* %role, i8* %stock_id, i8* %desc, i8* %help_id) #0 {
entry:
  %retval = alloca %struct._LayerOptionsDialog*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %layer_name.addr = alloca i8*, align 8
  %layer_fill_type.addr = alloca i32, align 4
  %title.addr = alloca i8*, align 8
  %role.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %desc.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %options = alloca %struct._LayerOptionsDialog*, align 8
  %viewable = alloca %struct._GimpViewable*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %__inst70 = alloca %struct._GTypeInstance*, align 8
  %__t72 = alloca i64, align 8
  %__r75 = alloca i32, align 4
  %tmp90 = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i8* %layer_name, i8** %layer_name.addr, align 8
  store i32 %layer_fill_type, i32* %layer_fill_type.addr, align 4
  store i8* %title, i8** %title.addr, align 8
  store i8* %role, i8** %role.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %desc, i8** %desc.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.layer_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._LayerOptionsDialog* null, %struct._LayerOptionsDialog** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %cmp12 = icmp eq %struct._GimpLayer* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %15 = bitcast %struct._GimpLayer* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_layer_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.layer_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0))
  store %struct._LayerOptionsDialog* null, %struct._LayerOptionsDialog** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = bitcast %struct._GimpContext* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_context_get_type() #5
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %do.body.40
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %do.body.40
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.layer_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._LayerOptionsDialog* null, %struct._LayerOptionsDialog** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst70, align 8
  %call73 = call i64 @gtk_widget_get_type() #5
  store i64 %call73, i64* %__t72, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %tobool76 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool76, label %if.else.78, label %if.then.77

if.then.77:                                       ; preds = %do.body.68
  store i32 0, i32* %__r75, align 4
  br label %if.end.89

if.else.78:                                       ; preds = %do.body.68
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

if.then.92:                                       ; preds = %if.end.89
  br label %if.end.94

if.else.93:                                       ; preds = %if.end.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.layer_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  store %struct._LayerOptionsDialog* null, %struct._LayerOptionsDialog** %retval
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  %call96 = call noalias i8* @g_slice_alloc0(i64 72)
  %53 = bitcast i8* %call96 to %struct._LayerOptionsDialog*
  store %struct._LayerOptionsDialog* %53, %struct._LayerOptionsDialog** %options, align 8
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %55 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %image97 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %55, i32 0, i32 7
  store %struct._GimpImage* %54, %struct._GimpImage** %image97, align 8
  %56 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %57 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %context98 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %57, i32 0, i32 8
  store %struct._GimpContext* %56, %struct._GimpContext** %context98, align 8
  %58 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %59 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %layer99 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %59, i32 0, i32 9
  store %struct._GimpLayer* %58, %struct._GimpLayer** %layer99, align 8
  %60 = load i32, i32* %layer_fill_type.addr, align 4
  %61 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %fill_type = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %61, i32 0, i32 4
  store i32 %60, i32* %fill_type, align 4
  %62 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %tobool100 = icmp ne %struct._GimpLayer* %62, null
  br i1 %tobool100, label %if.then.101, label %if.else.104

if.then.101:                                      ; preds = %do.end.95
  %63 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %64 = bitcast %struct._GimpLayer* %63 to %struct._GTypeInstance*
  %call102 = call i64 @gimp_viewable_get_type() #5
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call102)
  %65 = bitcast %struct._GTypeInstance* %call103 to %struct._GimpViewable*
  store %struct._GimpViewable* %65, %struct._GimpViewable** %viewable, align 8
  br label %if.end.107

if.else.104:                                      ; preds = %do.end.95
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %67 = bitcast %struct._GimpImage* %66 to %struct._GTypeInstance*
  %call105 = call i64 @gimp_viewable_get_type() #5
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call105)
  %68 = bitcast %struct._GTypeInstance* %call106 to %struct._GimpViewable*
  store %struct._GimpViewable* %68, %struct._GimpViewable** %viewable, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.101
  %69 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %70 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %71 = load i8*, i8** %title.addr, align 8
  %72 = load i8*, i8** %role.addr, align 8
  %73 = load i8*, i8** %stock_id.addr, align 8
  %74 = load i8*, i8** %desc.addr, align 8
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %76 = load i8*, i8** %help_id.addr, align 8
  %call108 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %69, %struct._GimpContext* %70, i8* %71, i8* %72, i8* %73, i8* %74, %struct._GtkWidget* %75, void (i8*, i8*)* @gimp_standard_help_func, i8* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 -5, i8* null)
  %77 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %dialog = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %77, i32 0, i32 0
  store %struct._GtkWidget* %call108, %struct._GtkWidget** %dialog, align 8
  %78 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %dialog109 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %78, i32 0, i32 0
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog109, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 80)
  %81 = bitcast %struct._GTypeInstance* %call110 to %struct._GObject*
  %82 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %83 = bitcast %struct._LayerOptionsDialog* %82 to i8*
  call void @g_object_weak_ref(%struct._GObject* %81, void (i8*, %struct._GObject*)* bitcast (void (%struct._LayerOptionsDialog*)* @layer_options_dialog_free to void (i8*, %struct._GObject*)*), i8* %83)
  %84 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %dialog111 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %84, i32 0, i32 0
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog111, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_dialog_get_type() #5
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call112)
  %87 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %87, i32 -5, i32 -6, i32 -1)
  %call114 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call114, %struct._GtkWidget** %vbox, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_container_get_type() #5
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call115)
  %90 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %90, i32 12)
  %91 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %dialog117 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %91, i32 0, i32 0
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog117, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_dialog_get_type() #5
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call118)
  %94 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkDialog*
  %call120 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %94)
  %95 = bitcast %struct._GtkWidget* %call120 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_box_get_type() #5
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call121)
  %96 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkBox*
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %96, %struct._GtkWidget* %97, i32 1, i32 1, i32 0)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  %99 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %tobool123 = icmp ne %struct._GimpLayer* %99, null
  %cond = select i1 %tobool123, i32 1, i32 3
  %call124 = call %struct._GtkWidget* @gtk_table_new(i32 %cond, i32 2, i32 0)
  store %struct._GtkWidget* %call124, %struct._GtkWidget** %table, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_table_get_type() #5
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call125)
  %102 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %102, i32 0, i32 6)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_table_get_type() #5
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call127)
  %105 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %105, i32 0, i32 6)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call129 = call i64 @gtk_box_get_type() #5
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call129)
  %108 = bitcast %struct._GTypeInstance* %call130 to %struct._GtkBox*
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %108, %struct._GtkWidget* %109, i32 0, i32 0, i32 0)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %110)
  %call131 = call %struct._GtkWidget* @gtk_entry_new()
  %111 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %name_entry = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %111, i32 0, i32 1
  store %struct._GtkWidget* %call131, %struct._GtkWidget** %name_entry, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_table_get_type() #5
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call132)
  %114 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkTable*
  %call134 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)) #7
  %115 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %name_entry135 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %115, i32 0, i32 1
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry135, align 8
  %call136 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %114, i32 0, i32 0, i8* %call134, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %116, i32 1, i32 0)
  %117 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %name_entry137 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %117, i32 0, i32 1
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry137, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call138 = call i64 @gtk_entry_get_type() #5
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call138)
  %120 = bitcast %struct._GTypeInstance* %call139 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %120, i32 1)
  %121 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %name_entry140 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %121, i32 0, i32 1
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry140, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call141 = call i64 @gtk_entry_get_type() #5
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call141)
  %124 = bitcast %struct._GTypeInstance* %call142 to %struct._GtkEntry*
  %125 = load i8*, i8** %layer_name.addr, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %124, i8* %125)
  %126 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %tobool143 = icmp ne %struct._GimpLayer* %126, null
  br i1 %tobool143, label %if.else.225, label %if.then.144

if.then.144:                                      ; preds = %if.end.107
  %127 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %127, double* %xres, double* %yres)
  %call147 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)) #7
  %call148 = call %struct._GtkWidget* @gtk_label_new(i8* %call147)
  store %struct._GtkWidget* %call148, %struct._GtkWidget** %label, align 8
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call149 = call i64 @gtk_misc_get_type() #5
  %call150 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call149)
  %130 = bitcast %struct._GTypeInstance* %call150 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %130, float 0.000000e+00, float 5.000000e-01)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_table_get_type() #5
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call151)
  %133 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkTable*
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %133, %struct._GtkWidget* %134, i32 0, i32 1, i32 1, i32 2, i32 6, i32 2, i32 0, i32 0)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %135)
  %call153 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #7
  %call154 = call %struct._GtkWidget* @gtk_label_new(i8* %call153)
  store %struct._GtkWidget* %call154, %struct._GtkWidget** %label, align 8
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call155 = call i64 @gtk_misc_get_type() #5
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call155)
  %138 = bitcast %struct._GTypeInstance* %call156 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %138, float 0.000000e+00, float 5.000000e-01)
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %140 = bitcast %struct._GtkWidget* %139 to %struct._GTypeInstance*
  %call157 = call i64 @gtk_table_get_type() #5
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call157)
  %141 = bitcast %struct._GTypeInstance* %call158 to %struct._GtkTable*
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %141, %struct._GtkWidget* %142, i32 0, i32 1, i32 2, i32 3, i32 6, i32 2, i32 0, i32 0)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %143)
  %call159 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call159, %struct._GtkWidget** %spinbutton, align 8
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %145 = bitcast %struct._GtkWidget* %144 to %struct._GTypeInstance*
  %call160 = call i64 @gtk_entry_get_type() #5
  %call161 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call160)
  %146 = bitcast %struct._GTypeInstance* %call161 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %146, i32 10)
  %call162 = call %struct._GtkWidget* @gimp_size_entry_new(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 1, i32 1, i32 0, i32 10, i32 1)
  %147 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %147, i32 0, i32 2
  store %struct._GtkWidget* %call162, %struct._GtkWidget** %size_se, align 8
  %148 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se163 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %148, i32 0, i32 2
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se163, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call164 = call i64 @gtk_table_get_type() #5
  %call165 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call164)
  %151 = bitcast %struct._GTypeInstance* %call165 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %151, i32 1, i32 4)
  %152 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se166 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %152, i32 0, i32 2
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se166, align 8
  %154 = bitcast %struct._GtkWidget* %153 to %struct._GTypeInstance*
  %call167 = call i64 @gtk_table_get_type() #5
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %154, i64 %call167)
  %155 = bitcast %struct._GTypeInstance* %call168 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %155, i32 0, i32 2)
  %156 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se169 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %156, i32 0, i32 2
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se169, align 8
  %158 = bitcast %struct._GtkWidget* %157 to %struct._GTypeInstance*
  %call170 = call i64 @gimp_size_entry_get_type() #5
  %call171 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call170)
  %159 = bitcast %struct._GTypeInstance* %call171 to %struct._GimpSizeEntry*
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %161 = bitcast %struct._GtkWidget* %160 to %struct._GTypeInstance*
  %call172 = call i64 @gtk_spin_button_get_type() #5
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %161, i64 %call172)
  %162 = bitcast %struct._GTypeInstance* %call173 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %159, %struct._GtkSpinButton* %162, %struct._GtkSpinButton* null)
  %163 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se174 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %163, i32 0, i32 2
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se174, align 8
  %165 = bitcast %struct._GtkWidget* %164 to %struct._GTypeInstance*
  %call175 = call i64 @gtk_table_get_type() #5
  %call176 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call175)
  %166 = bitcast %struct._GTypeInstance* %call176 to %struct._GtkTable*
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %166, %struct._GtkWidget* %167, i32 1, i32 2, i32 0, i32 1)
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %168)
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %170 = bitcast %struct._GtkWidget* %169 to %struct._GTypeInstance*
  %call177 = call i64 @gtk_table_get_type() #5
  %call178 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %170, i64 %call177)
  %171 = bitcast %struct._GTypeInstance* %call178 to %struct._GtkTable*
  %172 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se179 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %172, i32 0, i32 2
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se179, align 8
  call void @gtk_table_attach(%struct._GtkTable* %171, %struct._GtkWidget* %173, i32 1, i32 2, i32 1, i32 3, i32 6, i32 6, i32 0, i32 0)
  %174 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se180 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %174, i32 0, i32 2
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se180, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %175)
  %176 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se181 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %176, i32 0, i32 2
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se181, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call182 = call i64 @gimp_size_entry_get_type() #5
  %call183 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call182)
  %179 = bitcast %struct._GTypeInstance* %call183 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %179, i32 0)
  %180 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se184 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %180, i32 0, i32 2
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se184, align 8
  %182 = bitcast %struct._GtkWidget* %181 to %struct._GTypeInstance*
  %call185 = call i64 @gimp_size_entry_get_type() #5
  %call186 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %182, i64 %call185)
  %183 = bitcast %struct._GTypeInstance* %call186 to %struct._GimpSizeEntry*
  %184 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %183, i32 0, double %184, i32 0)
  %185 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se187 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %185, i32 0, i32 2
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se187, align 8
  %187 = bitcast %struct._GtkWidget* %186 to %struct._GTypeInstance*
  %call188 = call i64 @gimp_size_entry_get_type() #5
  %call189 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call188)
  %188 = bitcast %struct._GTypeInstance* %call189 to %struct._GimpSizeEntry*
  %189 = load double, double* %yres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %188, i32 1, double %189, i32 0)
  %190 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se190 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %190, i32 0, i32 2
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se190, align 8
  %192 = bitcast %struct._GtkWidget* %191 to %struct._GTypeInstance*
  %call191 = call i64 @gimp_size_entry_get_type() #5
  %call192 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %192, i64 %call191)
  %193 = bitcast %struct._GTypeInstance* %call192 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %193, i32 0, double 1.000000e+00, double 2.621440e+05)
  %194 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se193 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %194, i32 0, i32 2
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se193, align 8
  %196 = bitcast %struct._GtkWidget* %195 to %struct._GTypeInstance*
  %call194 = call i64 @gimp_size_entry_get_type() #5
  %call195 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %196, i64 %call194)
  %197 = bitcast %struct._GTypeInstance* %call195 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %197, i32 1, double 1.000000e+00, double 2.621440e+05)
  %198 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se196 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %198, i32 0, i32 2
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se196, align 8
  %200 = bitcast %struct._GtkWidget* %199 to %struct._GTypeInstance*
  %call197 = call i64 @gimp_size_entry_get_type() #5
  %call198 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %200, i64 %call197)
  %201 = bitcast %struct._GTypeInstance* %call198 to %struct._GimpSizeEntry*
  %202 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call199 = call i32 @gimp_image_get_width(%struct._GimpImage* %202)
  %conv = sitofp i32 %call199 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %201, i32 0, double 0.000000e+00, double %conv)
  %203 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se200 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %203, i32 0, i32 2
  %204 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se200, align 8
  %205 = bitcast %struct._GtkWidget* %204 to %struct._GTypeInstance*
  %call201 = call i64 @gimp_size_entry_get_type() #5
  %call202 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %205, i64 %call201)
  %206 = bitcast %struct._GTypeInstance* %call202 to %struct._GimpSizeEntry*
  %207 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call203 = call i32 @gimp_image_get_height(%struct._GimpImage* %207)
  %conv204 = sitofp i32 %call203 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %206, i32 1, double 0.000000e+00, double %conv204)
  %208 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se205 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %208, i32 0, i32 2
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se205, align 8
  %210 = bitcast %struct._GtkWidget* %209 to %struct._GTypeInstance*
  %call206 = call i64 @gimp_size_entry_get_type() #5
  %call207 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %210, i64 %call206)
  %211 = bitcast %struct._GTypeInstance* %call207 to %struct._GimpSizeEntry*
  %212 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call208 = call i32 @gimp_image_get_width(%struct._GimpImage* %212)
  %conv209 = sitofp i32 %call208 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %211, i32 0, double %conv209)
  %213 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %size_se210 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %213, i32 0, i32 2
  %214 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se210, align 8
  %215 = bitcast %struct._GtkWidget* %214 to %struct._GTypeInstance*
  %call211 = call i64 @gimp_size_entry_get_type() #5
  %call212 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %215, i64 %call211)
  %216 = bitcast %struct._GTypeInstance* %call212 to %struct._GimpSizeEntry*
  %217 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call213 = call i32 @gimp_image_get_height(%struct._GimpImage* %217)
  %conv214 = sitofp i32 %call213 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %216, i32 1, double %conv214)
  %call215 = call i64 @gimp_fill_type_get_type() #5
  %call216 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0)) #7
  %call217 = call %struct._GtkWidget* @gtk_label_new(i8* %call216)
  %218 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %fill_type218 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %218, i32 0, i32 4
  %219 = bitcast i32* %fill_type218 to i8*
  %call219 = call %struct._GtkWidget* @gimp_enum_radio_frame_new_with_range(i64 %call215, i32 0, i32 3, %struct._GtkWidget* %call217, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* %219, %struct._GtkWidget** %button)
  store %struct._GtkWidget* %call219, %struct._GtkWidget** %frame, align 8
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %221 = bitcast %struct._GtkWidget* %220 to %struct._GTypeInstance*
  %call220 = call i64 @gtk_radio_button_get_type() #5
  %call221 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %221, i64 %call220)
  %222 = bitcast %struct._GTypeInstance* %call221 to %struct._GtkRadioButton*
  %223 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %fill_type222 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %223, i32 0, i32 4
  %224 = load i32, i32* %fill_type222, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %222, i32 %224)
  %225 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %226 = bitcast %struct._GtkWidget* %225 to %struct._GTypeInstance*
  %call223 = call i64 @gtk_box_get_type() #5
  %call224 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %226, i64 %call223)
  %227 = bitcast %struct._GTypeInstance* %call224 to %struct._GtkBox*
  %228 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %227, %struct._GtkWidget* %228, i32 0, i32 0, i32 0)
  %229 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %229)
  br label %if.end.245

if.else.225:                                      ; preds = %if.end.107
  %230 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %231 = bitcast %struct._GimpLayer* %230 to %struct._GTypeInstance*
  %call226 = call i64 @gimp_item_get_type() #5
  %call227 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %231, i64 %call226)
  %232 = bitcast %struct._GTypeInstance* %call227 to %struct._GimpItem*
  %call228 = call i32 @gimp_item_is_text_layer(%struct._GimpItem* %232)
  %tobool229 = icmp ne i32 %call228, 0
  br i1 %tobool229, label %if.then.230, label %if.end.244

if.then.230:                                      ; preds = %if.else.225
  %call231 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #7
  %call232 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call231)
  %233 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %rename_toggle = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %233, i32 0, i32 3
  store %struct._GtkWidget* %call232, %struct._GtkWidget** %rename_toggle, align 8
  %234 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %rename_toggle233 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %234, i32 0, i32 3
  %235 = load %struct._GtkWidget*, %struct._GtkWidget** %rename_toggle233, align 8
  %236 = bitcast %struct._GtkWidget* %235 to %struct._GTypeInstance*
  %call234 = call i64 @gtk_toggle_button_get_type() #5
  %call235 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %236, i64 %call234)
  %237 = bitcast %struct._GTypeInstance* %call235 to %struct._GtkToggleButton*
  %238 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %239 = bitcast %struct._GimpLayer* %238 to %struct._GTypeInstance*
  %call236 = call i64 @gimp_text_layer_get_type() #5
  %call237 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %239, i64 %call236)
  %240 = bitcast %struct._GTypeInstance* %call237 to %struct._GimpTextLayer*
  %auto_rename = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %240, i32 0, i32 3
  %241 = load i32, i32* %auto_rename, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %237, i32 %241)
  %242 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %243 = bitcast %struct._GtkWidget* %242 to %struct._GTypeInstance*
  %call238 = call i64 @gtk_table_get_type() #5
  %call239 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %243, i64 %call238)
  %244 = bitcast %struct._GTypeInstance* %call239 to %struct._GtkTable*
  %245 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %rename_toggle240 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %245, i32 0, i32 3
  %246 = load %struct._GtkWidget*, %struct._GtkWidget** %rename_toggle240, align 8
  call void @gtk_table_attach(%struct._GtkTable* %244, %struct._GtkWidget* %246, i32 1, i32 2, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %247 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %rename_toggle241 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %247, i32 0, i32 3
  %248 = load %struct._GtkWidget*, %struct._GtkWidget** %rename_toggle241, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %248)
  %249 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %rename_toggle242 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %249, i32 0, i32 3
  %250 = load %struct._GtkWidget*, %struct._GtkWidget** %rename_toggle242, align 8
  %251 = bitcast %struct._GtkWidget* %250 to i8*
  %252 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  %253 = bitcast %struct._LayerOptionsDialog* %252 to i8*
  %call243 = call i64 @g_signal_connect_data(i8* %251, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._LayerOptionsDialog*)* @layer_options_dialog_toggle_rename to void ()*), i8* %253, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.230, %if.else.225
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %if.then.144
  %254 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options, align 8
  store %struct._LayerOptionsDialog* %254, %struct._LayerOptionsDialog** %retval
  br label %return

return:                                           ; preds = %if.end.245, %if.else.93, %if.else.65, %if.else.37, %if.else.9
  %255 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %retval
  ret %struct._LayerOptionsDialog* %255
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #3

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @layer_options_dialog_free(%struct._LayerOptionsDialog* %options) #0 {
entry:
  %options.addr = alloca %struct._LayerOptionsDialog*, align 8
  store %struct._LayerOptionsDialog* %options, %struct._LayerOptionsDialog** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options.addr, align 8
  %1 = bitcast %struct._LayerOptionsDialog* %0 to i8*
  call void @g_slice_free1(i64 72, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
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

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #3

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #3

declare %struct._GtkWidget* @gtk_entry_new() #3

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gtk_entry_set_activates_default(%struct._GtkEntry*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #3

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #3

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #3

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #3

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #3

declare void @gimp_size_entry_add_field(%struct._GimpSizeEntry*, %struct._GtkSpinButton*, %struct._GtkSpinButton*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #3

declare void @gimp_size_entry_set_unit(%struct._GimpSizeEntry*, i32) #3

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #3

declare void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry*, i32, double, double) #3

declare void @gimp_size_entry_set_size(%struct._GimpSizeEntry*, i32, double, double) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #3

declare %struct._GtkWidget* @gimp_enum_radio_frame_new_with_range(i64, i32, i32, %struct._GtkWidget*, void ()*, i8*, %struct._GtkWidget**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_fill_type_get_type() #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #3

declare void @gimp_int_radio_group_set_active(%struct._GtkRadioButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #1

declare i32 @gimp_item_is_text_layer(%struct._GimpItem*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #3

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_layer_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @layer_options_dialog_toggle_rename(%struct._GtkWidget* %widget, %struct._LayerOptionsDialog* %options) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %options.addr = alloca %struct._LayerOptionsDialog*, align 8
  %text_layer = alloca %struct._GimpTextLayer*, align 8
  %text = alloca %struct._GimpText*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._LayerOptionsDialog* %options, %struct._LayerOptionsDialog** %options.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options.addr, align 8
  %layer = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %3, i32 0, i32 9
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = bitcast %struct._GimpLayer* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  %call5 = call i32 @gimp_item_is_text_layer(%struct._GimpItem* %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end.20

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options.addr, align 8
  %layer7 = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %7, i32 0, i32 9
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer7, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_text_layer_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %10, %struct._GimpTextLayer** %text_layer, align 8
  %11 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %call10 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %11)
  store %struct._GimpText* %call10, %struct._GimpText** %text, align 8
  %12 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool11 = icmp ne %struct._GimpText* %12, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %if.then
  %13 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text13 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %13, i32 0, i32 1
  %14 = load i8*, i8** %text13, align 8
  %tobool14 = icmp ne i8* %14, null
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true.12
  %15 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text16 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %15, i32 0, i32 1
  %16 = load i8*, i8** %text16, align 8
  %call17 = call noalias i8* @gimp_utf8_strtrim(i8* %16, i32 30)
  store i8* %call17, i8** %name, align 8
  %17 = load %struct._LayerOptionsDialog*, %struct._LayerOptionsDialog** %options.addr, align 8
  %name_entry = getelementptr inbounds %struct._LayerOptionsDialog, %struct._LayerOptionsDialog* %17, i32 0, i32 1
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_entry_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call18)
  %20 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkEntry*
  %21 = load i8*, i8** %name, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %20, i8* %21)
  %22 = load i8*, i8** %name, align 8
  call void @g_free(i8* %22)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %land.lhs.true.12, %if.then
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #3

declare %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer*) #3

declare noalias i8* @gimp_utf8_strtrim(i8*, i32) #3

declare void @g_free(i8*) #3

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
