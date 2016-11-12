; ModuleID = './app/dialogs/grid-dialog.bc'
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
%struct._GimpGrid = type { %struct._GimpObject, i32, %struct._GimpRGB, %struct._GimpRGB, double, double, i32, double, double, i32 }
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpConfig = type opaque
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
%struct._GimpUndo = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.grid_dialog_new = private unnamed_addr constant [16 x i8] c"grid_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"parent == NULL || GTK_IS_WIDGET (parent)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Configure Grid\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"gimp-grid-configure\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"gimp-grid\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Configure Image Grid\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"gimp-image-grid\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"grid-backup\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Grid\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @grid_dialog_new(%struct._GimpImage* %image, %struct._GimpContext* %context, %struct._GtkWidget* %parent) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %grid = alloca %struct._GimpGrid*, align 8
  %grid_backup = alloca %struct._GimpGrid*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %editor = alloca %struct._GtkWidget*, align 8
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
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.grid_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.grid_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %cmp40 = icmp eq %struct._GtkWidget* %26, null
  br i1 %cmp40, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gtk_widget_get_type() #5
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %lor.lhs.false
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

if.then.64:                                       ; preds = %if.end.61, %do.body.39
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.grid_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %40, double* %xres, double* %yres)
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %42 = bitcast %struct._GimpImage* %41 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_image_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call68)
  %43 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpImage*
  %call70 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %43)
  store %struct._GimpGrid* %call70, %struct._GimpGrid** %grid, align 8
  %44 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %45 = bitcast %struct._GimpGrid* %44 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_config_interface_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call71)
  %46 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpConfig*
  %call73 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %46)
  %47 = bitcast i8* %call73 to %struct._GimpGrid*
  store %struct._GimpGrid* %47, %struct._GimpGrid** %grid_backup, align 8
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %49 = bitcast %struct._GimpImage* %48 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_viewable_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call74)
  %50 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpViewable*
  %51 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #7
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)) #7
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call78 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %50, %struct._GimpContext* %51, i8* %call76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* %call77, %struct._GtkWidget* %52, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %dialog, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_window_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call79)
  %55 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %55, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_dialog_get_type() #5
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call81)
  %58 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %58, i32 1, i32 -5, i32 -6, i32 -1)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %62 = bitcast %struct._GtkWidget* %61 to i8*
  %call83 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GtkWidget*)* @grid_dialog_response to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %64 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %65 = load double, double* %xres, align 8
  %66 = load double, double* %yres, align 8
  %call84 = call %struct._GtkWidget* @gimp_grid_editor_new(%struct._GimpGrid* %63, %struct._GimpContext* %64, double %65, double %66)
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %editor, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_container_get_type() #5
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call85)
  %69 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %69, i32 12)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_dialog_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call87)
  %72 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkDialog*
  %call89 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %72)
  %73 = bitcast %struct._GtkWidget* %call89 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_box_get_type() #5
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call90)
  %74 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkBox*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %74, %struct._GtkWidget* %75, i32 1, i32 1, i32 0)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 80)
  %79 = bitcast %struct._GTypeInstance* %call92 to %struct._GObject*
  %80 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %81 = bitcast %struct._GimpImage* %80 to i8*
  call void @g_object_set_data(%struct._GObject* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 80)
  %84 = bitcast %struct._GTypeInstance* %call93 to %struct._GObject*
  %85 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %86 = bitcast %struct._GimpGrid* %85 to i8*
  call void @g_object_set_data(%struct._GObject* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %86)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 80)
  %89 = bitcast %struct._GTypeInstance* %call94 to %struct._GObject*
  %90 = load %struct._GimpGrid*, %struct._GimpGrid** %grid_backup, align 8
  %91 = bitcast %struct._GimpGrid* %90 to i8*
  call void @g_object_set_data_full(%struct._GObject* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* %91, void (i8*)* @g_object_unref)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %92, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.67, %if.else.65, %if.else.36, %if.else.9
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %93
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

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

declare %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #1

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @grid_dialog_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._GtkWidget* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %grid = alloca %struct._GimpImage*, align 8
  %grid_backup = alloca %struct._GimpGrid*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %3, %struct._GimpImage** %image, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0))
  %7 = bitcast i8* %call3 to %struct._GimpImage*
  store %struct._GimpImage* %7, %struct._GimpImage** %grid, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @g_object_get_data(%struct._GObject* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  %11 = bitcast i8* %call5 to %struct._GimpGrid*
  store %struct._GimpGrid* %11, %struct._GimpGrid** %grid_backup, align 8
  %12 = load i32, i32* %response_id.addr, align 4
  switch i32 %12, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 1
  %15 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_grid = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %15, i32 0, i32 36
  %16 = load %struct._GimpGrid*, %struct._GimpGrid** %default_grid, align 8
  %17 = bitcast %struct._GimpGrid* %16 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %19 = load %struct._GimpImage*, %struct._GimpImage** %grid, align 8
  %20 = bitcast %struct._GimpImage* %19 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %call8 = call i32 @gimp_config_sync(%struct._GObject* %18, %struct._GObject* %21, i32 0)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %22 = load %struct._GimpGrid*, %struct._GimpGrid** %grid_backup, align 8
  %23 = bitcast %struct._GimpGrid* %22 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_config_interface_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call10)
  %24 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpConfig*
  %25 = load %struct._GimpImage*, %struct._GimpImage** %grid, align 8
  %26 = bitcast %struct._GimpImage* %25 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_config_interface_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call12)
  %27 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpConfig*
  %call14 = call i32 @gimp_config_is_equal_to(%struct._GimpConfig* %24, %struct._GimpConfig* %27)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.9
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #7
  %29 = load %struct._GimpGrid*, %struct._GimpGrid** %grid_backup, align 8
  %call16 = call %struct._GimpUndo* @gimp_image_undo_push_image_grid(%struct._GimpImage* %28, i8* %call15, %struct._GimpGrid* %29)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.9
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %30)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %32 = bitcast %struct._GimpImage* %31 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_image_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call17)
  %33 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpImage*
  %34 = load %struct._GimpGrid*, %struct._GimpGrid** %grid_backup, align 8
  call void @gimp_image_set_grid(%struct._GimpImage* %33, %struct._GimpGrid* %34, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %35)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb
  ret void
}

declare %struct._GtkWidget* @gimp_grid_editor_new(%struct._GimpGrid*, %struct._GimpContext*, double, double) #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

declare void @g_object_unref(i8*) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #3

declare i32 @gimp_config_is_equal_to(%struct._GimpConfig*, %struct._GimpConfig*) #3

declare %struct._GimpUndo* @gimp_image_undo_push_image_grid(%struct._GimpImage*, i8*, %struct._GimpGrid*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @gimp_image_set_grid(%struct._GimpImage*, %struct._GimpGrid*, i32) #3

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
