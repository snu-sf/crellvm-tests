; ModuleID = './app/dialogs/layer-add-mask-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._LayerAddMaskDialog = type { %struct._GtkWidget*, %struct._GimpLayer*, i32, %struct._GimpChannel*, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
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
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpContainerView = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.layer_add_mask_dialog_new = private unnamed_addr constant [26 x i8] c"layer_add_mask_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_LAYER (layer)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (parent)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Add Layer Mask\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"gimp-layer-add-mask\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"gimp-layer-mask\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Add a Mask to the Layer\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"gimp-layer-mask-add\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"gtk-add\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Initialize Layer Mask to:\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"select-item\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"In_vert mask\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1

; Function Attrs: nounwind uwtable
define %struct._LayerAddMaskDialog* @layer_add_mask_dialog_new(%struct._GimpLayer* %layer, %struct._GimpContext* %context, %struct._GtkWidget* %parent, i32 %add_mask_type, i32 %invert) #0 {
entry:
  %retval = alloca %struct._LayerAddMaskDialog*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %add_mask_type.addr = alloca i32, align 4
  %invert.addr = alloca i32, align 4
  %dialog = alloca %struct._LayerAddMaskDialog*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
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
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i32 %add_mask_type, i32* %add_mask_type.addr, align 4
  store i32 %invert, i32* %invert.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.layer_add_mask_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._LayerAddMaskDialog* null, %struct._LayerAddMaskDialog** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.layer_add_mask_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store %struct._LayerAddMaskDialog* null, %struct._LayerAddMaskDialog** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %27 = bitcast %struct._GimpContext* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_context_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.layer_add_mask_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._LayerAddMaskDialog* null, %struct._LayerAddMaskDialog** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %call67 = call noalias i8* @g_slice_alloc0(i64 40)
  %39 = bitcast i8* %call67 to %struct._LayerAddMaskDialog*
  store %struct._LayerAddMaskDialog* %39, %struct._LayerAddMaskDialog** %dialog, align 8
  %40 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %41 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %layer68 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %41, i32 0, i32 1
  store %struct._GimpLayer* %40, %struct._GimpLayer** %layer68, align 8
  %42 = load i32, i32* %add_mask_type.addr, align 4
  %43 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %add_mask_type69 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %43, i32 0, i32 2
  store i32 %42, i32* %add_mask_type69, align 4
  %44 = load i32, i32* %invert.addr, align 4
  %45 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %invert70 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %45, i32 0, i32 4
  store i32 %44, i32* %invert70, align 4
  %46 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %47 = bitcast %struct._GimpLayer* %46 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_viewable_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call71)
  %48 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpViewable*
  %49 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #7
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0)) #7
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call75 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %48, %struct._GimpContext* %49, i8* %call73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* %call74, %struct._GtkWidget* %50, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 -5, i8* null)
  %51 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %dialog76 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %51, i32 0, i32 0
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %dialog76, align 8
  %52 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %dialog77 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %52, i32 0, i32 0
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog77, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_window_get_type() #5
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call78)
  %55 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %55, i32 0)
  %56 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %dialog80 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %56, i32 0, i32 0
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog80, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 80)
  %59 = bitcast %struct._GTypeInstance* %call81 to %struct._GObject*
  %60 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %61 = bitcast %struct._LayerAddMaskDialog* %60 to i8*
  call void @g_object_weak_ref(%struct._GObject* %59, void (i8*, %struct._GObject*)* bitcast (void (%struct._LayerAddMaskDialog*)* @layer_add_mask_dialog_free to void (i8*, %struct._GObject*)*), i8* %61)
  %62 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %dialog82 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %62, i32 0, i32 0
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog82, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_dialog_get_type() #5
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call83)
  %65 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %65, i32 -5, i32 -6, i32 -1)
  %call85 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %vbox, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_container_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call86)
  %68 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %68, i32 12)
  %69 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %dialog88 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %69, i32 0, i32 0
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog88, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_dialog_get_type() #5
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call89)
  %72 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkDialog*
  %call91 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %72)
  %73 = bitcast %struct._GtkWidget* %call91 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_box_get_type() #5
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call92)
  %74 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkBox*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %74, %struct._GtkWidget* %75, i32 1, i32 1, i32 0)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %call94 = call i64 @gimp_add_mask_type_get_type() #5
  %call95 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0)) #7
  %call96 = call %struct._GtkWidget* @gtk_label_new(i8* %call95)
  %77 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %add_mask_type97 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %77, i32 0, i32 2
  %78 = bitcast i32* %add_mask_type97 to i8*
  %call98 = call %struct._GtkWidget* @gimp_enum_radio_frame_new(i64 %call94, %struct._GtkWidget* %call96, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* %78, %struct._GtkWidget** %button)
  store %struct._GtkWidget* %call98, %struct._GtkWidget** %frame, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_radio_button_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call99)
  %81 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkRadioButton*
  %82 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %add_mask_type101 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %82, i32 0, i32 2
  %83 = load i32, i32* %add_mask_type101, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %81, i32 %83)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_box_get_type() #5
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call102)
  %86 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkBox*
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %86, %struct._GtkWidget* %87, i32 0, i32 0, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %88)
  %89 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %90 = bitcast %struct._GimpLayer* %89 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_item_get_type() #5
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call104)
  %91 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpItem*
  %call106 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %91)
  store %struct._GimpImage* %call106, %struct._GimpImage** %image, align 8
  %92 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call107 = call %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage* %92)
  %93 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call108 = call %struct._GtkWidget* @gimp_container_combo_box_new(%struct._GimpContainer* %call107, %struct._GimpContext* %93, i32 24, i32 1)
  store %struct._GtkWidget* %call108, %struct._GtkWidget** %combo, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_frame_get_type() #5
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call109)
  %96 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkFrame*
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gimp_enum_radio_frame_add(%struct._GtkFrame* %96, %struct._GtkWidget* %97, i32 6, i32 1)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %100 = bitcast %struct._GtkWidget* %99 to i8*
  %101 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %102 = bitcast %struct._LayerAddMaskDialog* %101 to i8*
  %call111 = call i64 @g_signal_connect_data(i8* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, %struct._LayerAddMaskDialog*)* @layer_add_mask_dialog_channel_selected to void ()*), i8* %102, void (i8*, %struct._GClosure*)* null, i32 0)
  %103 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call112 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %103)
  store %struct._GimpChannel* %call112, %struct._GimpChannel** %channel, align 8
  %104 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool113 = icmp ne %struct._GimpChannel* %104, null
  br i1 %tobool113, label %if.end.119, label %if.then.114

if.then.114:                                      ; preds = %do.end.66
  %105 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call115 = call %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage* %105)
  %call116 = call %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer* %call115)
  %106 = bitcast %struct._GimpObject* %call116 to %struct._GTypeInstance*
  %call117 = call i64 @gimp_channel_get_type() #5
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call117)
  %107 = bitcast %struct._GTypeInstance* %call118 to %struct._GimpChannel*
  store %struct._GimpChannel* %107, %struct._GimpChannel** %channel, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.114, %do.end.66
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call120 = call i64 @gimp_container_view_interface_get_type() #5
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call120)
  %110 = bitcast %struct._GTypeInstance* %call121 to %struct._GimpContainerView*
  %111 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %112 = bitcast %struct._GimpChannel* %111 to %struct._GTypeInstance*
  %call122 = call i64 @gimp_viewable_get_type() #5
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call122)
  %113 = bitcast %struct._GTypeInstance* %call123 to %struct._GimpViewable*
  %call124 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %110, %struct._GimpViewable* %113)
  %call125 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)) #7
  %call126 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call125)
  store %struct._GtkWidget* %call126, %struct._GtkWidget** %button, align 8
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_toggle_button_get_type() #5
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call127)
  %116 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkToggleButton*
  %117 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %invert129 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %117, i32 0, i32 4
  %118 = load i32, i32* %invert129, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %116, i32 %118)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %120 = bitcast %struct._GtkWidget* %119 to %struct._GTypeInstance*
  %call130 = call i64 @gtk_box_get_type() #5
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call130)
  %121 = bitcast %struct._GTypeInstance* %call131 to %struct._GtkBox*
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %121, %struct._GtkWidget* %122, i32 0, i32 0, i32 0)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %123)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %125 = bitcast %struct._GtkWidget* %124 to i8*
  %126 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  %invert132 = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %126, i32 0, i32 4
  %127 = bitcast i32* %invert132 to i8*
  %call133 = call i64 @g_signal_connect_data(i8* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %127, void (i8*, %struct._GClosure*)* null, i32 0)
  %128 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog, align 8
  store %struct._LayerAddMaskDialog* %128, %struct._LayerAddMaskDialog** %retval
  br label %return

return:                                           ; preds = %if.end.119, %if.else.64, %if.else.36, %if.else.9
  %129 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %retval
  ret %struct._LayerAddMaskDialog* %129
}

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @layer_add_mask_dialog_free(%struct._LayerAddMaskDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct._LayerAddMaskDialog*, align 8
  store %struct._LayerAddMaskDialog* %dialog, %struct._LayerAddMaskDialog** %dialog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog.addr, align 8
  %1 = bitcast %struct._LayerAddMaskDialog* %0 to i8*
  call void @g_slice_free1(i64 40, i8* %1)
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

declare %struct._GtkWidget* @gimp_enum_radio_frame_new(i64, %struct._GtkWidget*, void ()*, i8*, %struct._GtkWidget**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_add_mask_type_get_type() #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #3

declare void @gimp_int_radio_group_set_active(%struct._GtkRadioButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GtkWidget* @gimp_container_combo_box_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #3

declare %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage*) #3

declare void @gimp_enum_radio_frame_add(%struct._GtkFrame*, %struct._GtkWidget*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @layer_add_mask_dialog_channel_selected(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data, %struct._LayerAddMaskDialog* %dialog) #0 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %dialog.addr = alloca %struct._LayerAddMaskDialog*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  store %struct._LayerAddMaskDialog* %dialog, %struct._LayerAddMaskDialog** %dialog.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannel*
  %3 = load %struct._LayerAddMaskDialog*, %struct._LayerAddMaskDialog** %dialog.addr, align 8
  %channel = getelementptr inbounds %struct._LayerAddMaskDialog, %struct._LayerAddMaskDialog* %3, i32 0, i32 3
  store %struct._GimpChannel* %2, %struct._GimpChannel** %channel, align 8
  ret i32 1
}

declare %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage*) #3

declare %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

declare i32 @gimp_container_view_select_item(%struct._GimpContainerView*, %struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #3

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #3

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
