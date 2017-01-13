; ModuleID = './app/dialogs/vectors-options-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._VectorsOptionsDialog = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpImage*, %struct._GimpVectors* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.vectors_options_dialog_new = private unnamed_addr constant [27 x i8] c"vectors_options_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"vectors == NULL || GIMP_IS_VECTORS (vectors)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (parent)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"title != NULL\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"role != NULL\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"stock_id != NULL\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"desc != NULL\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"help_id != NULL\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Path name:\00", align 1

; Function Attrs: nounwind uwtable
define %struct._VectorsOptionsDialog* @vectors_options_dialog_new(%struct._GimpImage* %image, %struct._GimpVectors* %vectors, %struct._GimpContext* %context, %struct._GtkWidget* %parent, i8* %vectors_name, i8* %title, i8* %role, i8* %stock_id, i8* %desc, i8* %help_id) #0 {
entry:
  %retval = alloca %struct._VectorsOptionsDialog*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %vectors_name.addr = alloca i8*, align 8
  %title.addr = alloca i8*, align 8
  %role.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %desc.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %options = alloca %struct._VectorsOptionsDialog*, align 8
  %viewable = alloca %struct._GimpViewable*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
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
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i8* %vectors_name, i8** %vectors_name.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.vectors_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._VectorsOptionsDialog* null, %struct._VectorsOptionsDialog** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %cmp12 = icmp eq %struct._GimpVectors* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %15 = bitcast %struct._GimpVectors* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_vectors_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.vectors_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._VectorsOptionsDialog* null, %struct._VectorsOptionsDialog** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.vectors_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._VectorsOptionsDialog* null, %struct._VectorsOptionsDialog** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.vectors_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  store %struct._VectorsOptionsDialog* null, %struct._VectorsOptionsDialog** %retval
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.end.95
  %53 = load i8*, i8** %title.addr, align 8
  %cmp97 = icmp ne i8* %53, null
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.96
  br label %if.end.100

if.else.99:                                       ; preds = %do.body.96
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.vectors_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  store %struct._VectorsOptionsDialog* null, %struct._VectorsOptionsDialog** %retval
  br label %return

if.end.100:                                       ; preds = %if.then.98
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %do.body.102

do.body.102:                                      ; preds = %do.end.101
  %54 = load i8*, i8** %role.addr, align 8
  %cmp103 = icmp ne i8* %54, null
  br i1 %cmp103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %do.body.102
  br label %if.end.106

if.else.105:                                      ; preds = %do.body.102
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.vectors_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  store %struct._VectorsOptionsDialog* null, %struct._VectorsOptionsDialog** %retval
  br label %return

if.end.106:                                       ; preds = %if.then.104
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  br label %do.body.108

do.body.108:                                      ; preds = %do.end.107
  %55 = load i8*, i8** %stock_id.addr, align 8
  %cmp109 = icmp ne i8* %55, null
  br i1 %cmp109, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %do.body.108
  br label %if.end.112

if.else.111:                                      ; preds = %do.body.108
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.vectors_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  store %struct._VectorsOptionsDialog* null, %struct._VectorsOptionsDialog** %retval
  br label %return

if.end.112:                                       ; preds = %if.then.110
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.112
  br label %do.body.114

do.body.114:                                      ; preds = %do.end.113
  %56 = load i8*, i8** %desc.addr, align 8
  %cmp115 = icmp ne i8* %56, null
  br i1 %cmp115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %do.body.114
  br label %if.end.118

if.else.117:                                      ; preds = %do.body.114
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.vectors_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  store %struct._VectorsOptionsDialog* null, %struct._VectorsOptionsDialog** %retval
  br label %return

if.end.118:                                       ; preds = %if.then.116
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  br label %do.body.120

do.body.120:                                      ; preds = %do.end.119
  %57 = load i8*, i8** %help_id.addr, align 8
  %cmp121 = icmp ne i8* %57, null
  br i1 %cmp121, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %do.body.120
  br label %if.end.124

if.else.123:                                      ; preds = %do.body.120
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.vectors_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  store %struct._VectorsOptionsDialog* null, %struct._VectorsOptionsDialog** %retval
  br label %return

if.end.124:                                       ; preds = %if.then.122
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  %call126 = call noalias i8* @g_slice_alloc0(i64 32)
  %58 = bitcast i8* %call126 to %struct._VectorsOptionsDialog*
  store %struct._VectorsOptionsDialog* %58, %struct._VectorsOptionsDialog** %options, align 8
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %60 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %image127 = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %60, i32 0, i32 2
  store %struct._GimpImage* %59, %struct._GimpImage** %image127, align 8
  %61 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %62 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %vectors128 = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %62, i32 0, i32 3
  store %struct._GimpVectors* %61, %struct._GimpVectors** %vectors128, align 8
  %63 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %tobool129 = icmp ne %struct._GimpVectors* %63, null
  br i1 %tobool129, label %if.then.130, label %if.else.133

if.then.130:                                      ; preds = %do.end.125
  %64 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %65 = bitcast %struct._GimpVectors* %64 to %struct._GTypeInstance*
  %call131 = call i64 @gimp_viewable_get_type() #5
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call131)
  %66 = bitcast %struct._GTypeInstance* %call132 to %struct._GimpViewable*
  store %struct._GimpViewable* %66, %struct._GimpViewable** %viewable, align 8
  br label %if.end.136

if.else.133:                                      ; preds = %do.end.125
  %67 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %68 = bitcast %struct._GimpImage* %67 to %struct._GTypeInstance*
  %call134 = call i64 @gimp_viewable_get_type() #5
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call134)
  %69 = bitcast %struct._GTypeInstance* %call135 to %struct._GimpViewable*
  store %struct._GimpViewable* %69, %struct._GimpViewable** %viewable, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.133, %if.then.130
  %70 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %71 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %72 = load i8*, i8** %title.addr, align 8
  %73 = load i8*, i8** %role.addr, align 8
  %74 = load i8*, i8** %stock_id.addr, align 8
  %75 = load i8*, i8** %desc.addr, align 8
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %77 = load i8*, i8** %help_id.addr, align 8
  %call137 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %70, %struct._GimpContext* %71, i8* %72, i8* %73, i8* %74, i8* %75, %struct._GtkWidget* %76, void (i8*, i8*)* @gimp_standard_help_func, i8* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 -5, i8* null)
  %78 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %dialog = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %78, i32 0, i32 0
  store %struct._GtkWidget* %call137, %struct._GtkWidget** %dialog, align 8
  %79 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %dialog138 = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %79, i32 0, i32 0
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog138, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call139 = call i64 @gtk_dialog_get_type() #5
  %call140 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call139)
  %82 = bitcast %struct._GTypeInstance* %call140 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %82, i32 -5, i32 -6, i32 -1)
  %83 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %dialog141 = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %83, i32 0, i32 0
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog141, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 80)
  %86 = bitcast %struct._GTypeInstance* %call142 to %struct._GObject*
  %87 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %88 = bitcast %struct._VectorsOptionsDialog* %87 to i8*
  call void @g_object_weak_ref(%struct._GObject* %86, void (i8*, %struct._GObject*)* bitcast (void (%struct._VectorsOptionsDialog*)* @vectors_options_dialog_free to void (i8*, %struct._GObject*)*), i8* %88)
  %call143 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call143, %struct._GtkWidget** %hbox, align 8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_container_get_type() #5
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call144)
  %91 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %91, i32 12)
  %92 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %dialog146 = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %92, i32 0, i32 0
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog146, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call147 = call i64 @gtk_dialog_get_type() #5
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call147)
  %95 = bitcast %struct._GTypeInstance* %call148 to %struct._GtkDialog*
  %call149 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %95)
  %96 = bitcast %struct._GtkWidget* %call149 to %struct._GTypeInstance*
  %call150 = call i64 @gtk_box_get_type() #5
  %call151 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call150)
  %97 = bitcast %struct._GTypeInstance* %call151 to %struct._GtkBox*
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %97, %struct._GtkWidget* %98, i32 1, i32 1, i32 0)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %99)
  %call152 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call152, %struct._GtkWidget** %vbox, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call153 = call i64 @gtk_box_get_type() #5
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call153)
  %102 = bitcast %struct._GTypeInstance* %call154 to %struct._GtkBox*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %102, %struct._GtkWidget* %103, i32 1, i32 1, i32 0)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %call155 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 2, i32 0)
  store %struct._GtkWidget* %call155, %struct._GtkWidget** %table, align 8
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call156 = call i64 @gtk_table_get_type() #5
  %call157 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call156)
  %107 = bitcast %struct._GTypeInstance* %call157 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %107, i32 6)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call158 = call i64 @gtk_table_get_type() #5
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call158)
  %110 = bitcast %struct._GTypeInstance* %call159 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %110, i32 6)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call160 = call i64 @gtk_box_get_type() #5
  %call161 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call160)
  %113 = bitcast %struct._GTypeInstance* %call161 to %struct._GtkBox*
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %113, %struct._GtkWidget* %114, i32 0, i32 0, i32 0)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %115)
  %call162 = call %struct._GtkWidget* @gtk_entry_new()
  %116 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %name_entry = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %116, i32 0, i32 1
  store %struct._GtkWidget* %call162, %struct._GtkWidget** %name_entry, align 8
  %117 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %name_entry163 = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %117, i32 0, i32 1
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry163, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %118, i32 150, i32 -1)
  %119 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %name_entry164 = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %119, i32 0, i32 1
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry164, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call165 = call i64 @gtk_entry_get_type() #5
  %call166 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call165)
  %122 = bitcast %struct._GTypeInstance* %call166 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %122, i32 1)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call167 = call i64 @gtk_table_get_type() #5
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call167)
  %125 = bitcast %struct._GTypeInstance* %call168 to %struct._GtkTable*
  %call169 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)) #7
  %126 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %name_entry170 = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %126, i32 0, i32 1
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry170, align 8
  %call171 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %125, i32 0, i32 0, i8* %call169, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %127, i32 1, i32 0)
  %128 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %name_entry172 = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %128, i32 0, i32 1
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry172, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call173 = call i64 @gtk_entry_get_type() #5
  %call174 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call173)
  %131 = bitcast %struct._GTypeInstance* %call174 to %struct._GtkEntry*
  %132 = load i8*, i8** %vectors_name.addr, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %131, i8* %132)
  %133 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  store %struct._VectorsOptionsDialog* %133, %struct._VectorsOptionsDialog** %retval
  br label %return

return:                                           ; preds = %if.end.136, %if.else.123, %if.else.117, %if.else.111, %if.else.105, %if.else.99, %if.else.93, %if.else.65, %if.else.37, %if.else.9
  %134 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %retval
  ret %struct._VectorsOptionsDialog* %134
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #1

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

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @vectors_options_dialog_free(%struct._VectorsOptionsDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct._VectorsOptionsDialog*, align 8
  store %struct._VectorsOptionsDialog* %dialog, %struct._VectorsOptionsDialog** %dialog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %dialog.addr, align 8
  %1 = bitcast %struct._VectorsOptionsDialog* %0 to i8*
  call void @g_slice_free1(i64 32, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
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

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #3

declare %struct._GtkWidget* @gtk_entry_new() #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #3

declare void @gtk_entry_set_activates_default(%struct._GtkEntry*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #3

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
