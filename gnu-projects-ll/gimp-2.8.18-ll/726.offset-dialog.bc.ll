; ModuleID = './app/dialogs/offset-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
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
%struct.OffsetDialog = type { %struct._GimpContext*, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GimpImage* }
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
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.offset_dialog_new = private unnamed_addr constant [18 x i8] c"offset_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (parent)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Offset Layer\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Offset Layer Mask\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Offset Channel\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%s: unexpected drawable type\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"gimp-drawable-offset\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"gimp-tool-move\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"gimp-layer-offset\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"_Offset\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"_X:\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"_Y:\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Offset by  x/_2, y/2\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Edge Behavior\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"_Wrap around\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Fill with _background color\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Make _transparent\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @offset_dialog_new(%struct._GimpDrawable* %drawable, %struct._GimpContext* %context, %struct._GtkWidget* %parent) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %dialog = alloca %struct.OffsetDialog*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %radio_button = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %title = alloca i8*, align 8
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
  %__inst75 = alloca %struct._GTypeInstance*, align 8
  %__t77 = alloca i64, align 8
  %__r80 = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  %__inst101 = alloca %struct._GTypeInstance*, align 8
  %__t103 = alloca i64, align 8
  %__r106 = alloca i32, align 4
  %tmp121 = alloca i32, align 4
  %__inst127 = alloca %struct._GTypeInstance*, align 8
  %__t129 = alloca i64, align 8
  %__r132 = alloca i32, align 4
  %tmp147 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i8* null, i8** %title, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.offset_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
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
  %call16 = call i64 @gimp_context_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.offset_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
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
  %call44 = call i64 @gtk_widget_get_type() #6
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
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.offset_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %call67 = call noalias i8* @g_slice_alloc0(i64 40)
  %39 = bitcast i8* %call67 to %struct.OffsetDialog*
  store %struct.OffsetDialog* %39, %struct.OffsetDialog** %dialog, align 8
  %40 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %41 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %context68 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %41, i32 0, i32 0
  store %struct._GimpContext* %40, %struct._GimpContext** %context68, align 8
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call69 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %42)
  %or = or i32 %call69, 8
  %43 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %fill_type = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %43, i32 0, i32 3
  store i32 %or, i32* %fill_type, align 4
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %45 = bitcast %struct._GimpDrawable* %44 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_item_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call70)
  %46 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpItem*
  store %struct._GimpItem* %46, %struct._GimpItem** %item, align 8
  %47 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call72 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %47)
  %48 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %image = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %48, i32 0, i32 4
  store %struct._GimpImage* %call72, %struct._GimpImage** %image, align 8
  %49 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %image73 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %49, i32 0, i32 4
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image73, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %50, double* %xres, double* %yres)
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %52 = bitcast %struct._GimpDrawable* %51 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %52, %struct._GTypeInstance** %__inst75, align 8
  %call78 = call i64 @gimp_layer_get_type() #6
  store i64 %call78, i64* %__t77, align 8
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %tobool81 = icmp ne %struct._GTypeInstance* %53, null
  br i1 %tobool81, label %if.else.83, label %if.then.82

if.then.82:                                       ; preds = %do.end.66
  store i32 0, i32* %__r80, align 4
  br label %if.end.94

if.else.83:                                       ; preds = %do.end.66
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %g_class84 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class84, align 8
  %tobool85 = icmp ne %struct._GTypeClass* %55, null
  br i1 %tobool85, label %land.lhs.true.86, label %if.else.91

land.lhs.true.86:                                 ; preds = %if.else.83
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %g_class87 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %56, i32 0, i32 0
  %57 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class87, align 8
  %g_type88 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %57, i32 0, i32 0
  %58 = load i64, i64* %g_type88, align 8
  %59 = load i64, i64* %__t77, align 8
  %cmp89 = icmp eq i64 %58, %59
  br i1 %cmp89, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %land.lhs.true.86
  store i32 1, i32* %__r80, align 4
  br label %if.end.93

if.else.91:                                       ; preds = %land.lhs.true.86, %if.else.83
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %61 = load i64, i64* %__t77, align 8
  %call92 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %60, i64 %61) #7
  store i32 %call92, i32* %__r80, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.90
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.82
  %62 = load i32, i32* %__r80, align 4
  store i32 %62, i32* %tmp95
  %63 = load i32, i32* %tmp95
  %tobool96 = icmp ne i32 %63, 0
  br i1 %tobool96, label %if.then.97, label %if.else.99

if.then.97:                                       ; preds = %if.end.94
  %call98 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call98, i8** %title, align 8
  br label %if.end.154

if.else.99:                                       ; preds = %if.end.94
  %64 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %65 = bitcast %struct._GimpDrawable* %64 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %65, %struct._GTypeInstance** %__inst101, align 8
  %call104 = call i64 @gimp_layer_mask_get_type() #6
  store i64 %call104, i64* %__t103, align 8
  %66 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst101, align 8
  %tobool107 = icmp ne %struct._GTypeInstance* %66, null
  br i1 %tobool107, label %if.else.109, label %if.then.108

if.then.108:                                      ; preds = %if.else.99
  store i32 0, i32* %__r106, align 4
  br label %if.end.120

if.else.109:                                      ; preds = %if.else.99
  %67 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst101, align 8
  %g_class110 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %67, i32 0, i32 0
  %68 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class110, align 8
  %tobool111 = icmp ne %struct._GTypeClass* %68, null
  br i1 %tobool111, label %land.lhs.true.112, label %if.else.117

land.lhs.true.112:                                ; preds = %if.else.109
  %69 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst101, align 8
  %g_class113 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %69, i32 0, i32 0
  %70 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class113, align 8
  %g_type114 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %70, i32 0, i32 0
  %71 = load i64, i64* %g_type114, align 8
  %72 = load i64, i64* %__t103, align 8
  %cmp115 = icmp eq i64 %71, %72
  br i1 %cmp115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %land.lhs.true.112
  store i32 1, i32* %__r106, align 4
  br label %if.end.119

if.else.117:                                      ; preds = %land.lhs.true.112, %if.else.109
  %73 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst101, align 8
  %74 = load i64, i64* %__t103, align 8
  %call118 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %73, i64 %74) #7
  store i32 %call118, i32* %__r106, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.117, %if.then.116
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.108
  %75 = load i32, i32* %__r106, align 4
  store i32 %75, i32* %tmp121
  %76 = load i32, i32* %tmp121
  %tobool122 = icmp ne i32 %76, 0
  br i1 %tobool122, label %if.then.123, label %if.else.125

if.then.123:                                      ; preds = %if.end.120
  %call124 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)) #5
  store i8* %call124, i8** %title, align 8
  br label %if.end.153

if.else.125:                                      ; preds = %if.end.120
  %77 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %78 = bitcast %struct._GimpDrawable* %77 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %78, %struct._GTypeInstance** %__inst127, align 8
  %call130 = call i64 @gimp_channel_get_type() #6
  store i64 %call130, i64* %__t129, align 8
  %79 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst127, align 8
  %tobool133 = icmp ne %struct._GTypeInstance* %79, null
  br i1 %tobool133, label %if.else.135, label %if.then.134

if.then.134:                                      ; preds = %if.else.125
  store i32 0, i32* %__r132, align 4
  br label %if.end.146

if.else.135:                                      ; preds = %if.else.125
  %80 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst127, align 8
  %g_class136 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %80, i32 0, i32 0
  %81 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class136, align 8
  %tobool137 = icmp ne %struct._GTypeClass* %81, null
  br i1 %tobool137, label %land.lhs.true.138, label %if.else.143

land.lhs.true.138:                                ; preds = %if.else.135
  %82 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst127, align 8
  %g_class139 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %82, i32 0, i32 0
  %83 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class139, align 8
  %g_type140 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %83, i32 0, i32 0
  %84 = load i64, i64* %g_type140, align 8
  %85 = load i64, i64* %__t129, align 8
  %cmp141 = icmp eq i64 %84, %85
  br i1 %cmp141, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %land.lhs.true.138
  store i32 1, i32* %__r132, align 4
  br label %if.end.145

if.else.143:                                      ; preds = %land.lhs.true.138, %if.else.135
  %86 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst127, align 8
  %87 = load i64, i64* %__t129, align 8
  %call144 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %86, i64 %87) #7
  store i32 %call144, i32* %__r132, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.143, %if.then.142
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.134
  %88 = load i32, i32* %__r132, align 4
  store i32 %88, i32* %tmp147
  %89 = load i32, i32* %tmp147
  %tobool148 = icmp ne i32 %89, 0
  br i1 %tobool148, label %if.then.149, label %if.else.151

if.then.149:                                      ; preds = %if.end.146
  %call150 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #5
  store i8* %call150, i8** %title, align 8
  br label %if.end.152

if.else.151:                                      ; preds = %if.end.146
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.offset_dialog_new, i32 0, i32 0))
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.151, %if.then.149
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.123
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.97
  %90 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %91 = bitcast %struct._GimpDrawable* %90 to %struct._GTypeInstance*
  %call155 = call i64 @gimp_viewable_get_type() #6
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call155)
  %92 = bitcast %struct._GTypeInstance* %call156 to %struct._GimpViewable*
  %93 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call157 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)) #5
  %94 = load i8*, i8** %title, align 8
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call158 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)) #5
  %call159 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %92, %struct._GimpContext* %93, i8* %call157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* %94, %struct._GtkWidget* %95, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 -6, i8* %call158, i32 -5, i8* null)
  %96 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %dialog160 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %96, i32 0, i32 1
  store %struct._GtkWidget* %call159, %struct._GtkWidget** %dialog160, align 8
  %97 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %dialog161 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %97, i32 0, i32 1
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog161, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call162 = call i64 @gtk_dialog_get_type() #6
  %call163 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call162)
  %100 = bitcast %struct._GTypeInstance* %call163 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %100, i32 -5, i32 -6, i32 -1)
  %101 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %dialog164 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %101, i32 0, i32 1
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog164, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call165 = call i64 @gtk_window_get_type() #6
  %call166 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call165)
  %104 = bitcast %struct._GTypeInstance* %call166 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %104, i32 0)
  %105 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %dialog167 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %105, i32 0, i32 1
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog167, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 80)
  %108 = bitcast %struct._GTypeInstance* %call168 to %struct._GObject*
  %109 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %110 = bitcast %struct.OffsetDialog* %109 to i8*
  call void @g_object_weak_ref(%struct._GObject* %108, void (i8*, %struct._GObject*)* bitcast (void (%struct.OffsetDialog*)* @offset_dialog_free to void (i8*, %struct._GObject*)*), i8* %110)
  %111 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %dialog169 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %111, i32 0, i32 1
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog169, align 8
  %113 = bitcast %struct._GtkWidget* %112 to i8*
  %114 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %115 = bitcast %struct.OffsetDialog* %114 to i8*
  %call170 = call i64 @g_signal_connect_data(i8* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.OffsetDialog*)* @offset_response to void ()*), i8* %115, void (i8*, %struct._GClosure*)* null, i32 0)
  %call171 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call171, %struct._GtkWidget** %main_vbox, align 8
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call172 = call i64 @gtk_container_get_type() #6
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call172)
  %118 = bitcast %struct._GTypeInstance* %call173 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %118, i32 12)
  %119 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %dialog174 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %119, i32 0, i32 1
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog174, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call175 = call i64 @gtk_dialog_get_type() #6
  %call176 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call175)
  %122 = bitcast %struct._GTypeInstance* %call176 to %struct._GtkDialog*
  %call177 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %122)
  %123 = bitcast %struct._GtkWidget* %call177 to %struct._GTypeInstance*
  %call178 = call i64 @gtk_box_get_type() #6
  %call179 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call178)
  %124 = bitcast %struct._GTypeInstance* %call179 to %struct._GtkBox*
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %124, %struct._GtkWidget* %125, i32 1, i32 1, i32 0)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %126)
  %call180 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)) #5
  %call181 = call %struct._GtkWidget* @gimp_frame_new(i8* %call180)
  store %struct._GtkWidget* %call181, %struct._GtkWidget** %frame, align 8
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call182 = call i64 @gtk_box_get_type() #6
  %call183 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call182)
  %129 = bitcast %struct._GTypeInstance* %call183 to %struct._GtkBox*
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %129, %struct._GtkWidget* %130, i32 0, i32 0, i32 0)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %131)
  %call184 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call184, %struct._GtkWidget** %hbox, align 8
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call185 = call i64 @gtk_container_get_type() #6
  %call186 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call185)
  %134 = bitcast %struct._GTypeInstance* %call186 to %struct._GtkContainer*
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %134, %struct._GtkWidget* %135)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %136)
  %call187 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call187, %struct._GtkWidget** %vbox, align 8
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call188 = call i64 @gtk_box_get_type() #6
  %call189 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call188)
  %139 = bitcast %struct._GTypeInstance* %call189 to %struct._GtkBox*
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %139, %struct._GtkWidget* %140, i32 0, i32 0, i32 0)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %141)
  %call190 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call190, %struct._GtkWidget** %spinbutton, align 8
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call191 = call i64 @gtk_entry_get_type() #6
  %call192 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call191)
  %144 = bitcast %struct._GTypeInstance* %call192 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %144, i32 10)
  %call193 = call %struct._GtkWidget* @gimp_size_entry_new(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 1, i32 0, i32 10, i32 1)
  %145 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %145, i32 0, i32 2
  store %struct._GtkWidget* %call193, %struct._GtkWidget** %off_se, align 8
  %146 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se194 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %146, i32 0, i32 2
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se194, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call195 = call i64 @gtk_table_get_type() #6
  %call196 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call195)
  %149 = bitcast %struct._GTypeInstance* %call196 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %149, i32 0, i32 4)
  %150 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se197 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %150, i32 0, i32 2
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se197, align 8
  %152 = bitcast %struct._GtkWidget* %151 to %struct._GTypeInstance*
  %call198 = call i64 @gtk_table_get_type() #6
  %call199 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %152, i64 %call198)
  %153 = bitcast %struct._GTypeInstance* %call199 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %153, i32 1, i32 4)
  %154 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se200 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %154, i32 0, i32 2
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se200, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call201 = call i64 @gtk_table_get_type() #6
  %call202 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call201)
  %157 = bitcast %struct._GTypeInstance* %call202 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %157, i32 0, i32 2)
  %158 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se203 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %158, i32 0, i32 2
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se203, align 8
  %160 = bitcast %struct._GtkWidget* %159 to %struct._GTypeInstance*
  %call204 = call i64 @gimp_size_entry_get_type() #6
  %call205 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call204)
  %161 = bitcast %struct._GTypeInstance* %call205 to %struct._GimpSizeEntry*
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %163 = bitcast %struct._GtkWidget* %162 to %struct._GTypeInstance*
  %call206 = call i64 @gtk_spin_button_get_type() #6
  %call207 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 %call206)
  %164 = bitcast %struct._GTypeInstance* %call207 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %161, %struct._GtkSpinButton* %164, %struct._GtkSpinButton* null)
  %165 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se208 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %165, i32 0, i32 2
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se208, align 8
  %167 = bitcast %struct._GtkWidget* %166 to %struct._GTypeInstance*
  %call209 = call i64 @gtk_table_get_type() #6
  %call210 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %167, i64 %call209)
  %168 = bitcast %struct._GTypeInstance* %call210 to %struct._GtkTable*
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %168, %struct._GtkWidget* %169, i32 1, i32 2, i32 0, i32 1)
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %170)
  %171 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se211 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %171, i32 0, i32 2
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se211, align 8
  %173 = bitcast %struct._GtkWidget* %172 to %struct._GTypeInstance*
  %call212 = call i64 @gimp_size_entry_get_type() #6
  %call213 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 %call212)
  %174 = bitcast %struct._GTypeInstance* %call213 to %struct._GimpSizeEntry*
  %call214 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #5
  %call215 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %174, i8* %call214, i32 0, i32 0, float 0.000000e+00)
  %175 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se216 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %175, i32 0, i32 2
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se216, align 8
  %177 = bitcast %struct._GtkWidget* %176 to %struct._GTypeInstance*
  %call217 = call i64 @gimp_size_entry_get_type() #6
  %call218 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %177, i64 %call217)
  %178 = bitcast %struct._GTypeInstance* %call218 to %struct._GimpSizeEntry*
  %call219 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)) #5
  %call220 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %178, i8* %call219, i32 1, i32 0, float 0.000000e+00)
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %180 = bitcast %struct._GtkWidget* %179 to %struct._GTypeInstance*
  %call221 = call i64 @gtk_box_get_type() #6
  %call222 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %180, i64 %call221)
  %181 = bitcast %struct._GTypeInstance* %call222 to %struct._GtkBox*
  %182 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se223 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %182, i32 0, i32 2
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se223, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %181, %struct._GtkWidget* %183, i32 0, i32 0, i32 0)
  %184 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se224 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %184, i32 0, i32 2
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se224, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %185)
  %186 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se225 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %186, i32 0, i32 2
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se225, align 8
  %188 = bitcast %struct._GtkWidget* %187 to %struct._GTypeInstance*
  %call226 = call i64 @gimp_size_entry_get_type() #6
  %call227 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call226)
  %189 = bitcast %struct._GTypeInstance* %call227 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %189, i32 0)
  %190 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se228 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %190, i32 0, i32 2
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se228, align 8
  %192 = bitcast %struct._GtkWidget* %191 to %struct._GTypeInstance*
  %call229 = call i64 @gimp_size_entry_get_type() #6
  %call230 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %192, i64 %call229)
  %193 = bitcast %struct._GTypeInstance* %call230 to %struct._GimpSizeEntry*
  %194 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %193, i32 0, double %194, i32 0)
  %195 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se231 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %195, i32 0, i32 2
  %196 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se231, align 8
  %197 = bitcast %struct._GtkWidget* %196 to %struct._GTypeInstance*
  %call232 = call i64 @gimp_size_entry_get_type() #6
  %call233 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %197, i64 %call232)
  %198 = bitcast %struct._GTypeInstance* %call233 to %struct._GimpSizeEntry*
  %199 = load double, double* %yres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %198, i32 1, double %199, i32 0)
  %200 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se234 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %200, i32 0, i32 2
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se234, align 8
  %202 = bitcast %struct._GtkWidget* %201 to %struct._GTypeInstance*
  %call235 = call i64 @gimp_size_entry_get_type() #6
  %call236 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %202, i64 %call235)
  %203 = bitcast %struct._GTypeInstance* %call236 to %struct._GimpSizeEntry*
  %204 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call237 = call i32 @gimp_item_get_width(%struct._GimpItem* %204)
  %sub = sub nsw i32 0, %call237
  %conv = sitofp i32 %sub to double
  %205 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call238 = call i32 @gimp_item_get_width(%struct._GimpItem* %205)
  %conv239 = sitofp i32 %call238 to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %203, i32 0, double %conv, double %conv239)
  %206 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se240 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %206, i32 0, i32 2
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se240, align 8
  %208 = bitcast %struct._GtkWidget* %207 to %struct._GTypeInstance*
  %call241 = call i64 @gimp_size_entry_get_type() #6
  %call242 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %208, i64 %call241)
  %209 = bitcast %struct._GTypeInstance* %call242 to %struct._GimpSizeEntry*
  %210 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call243 = call i32 @gimp_item_get_height(%struct._GimpItem* %210)
  %sub244 = sub nsw i32 0, %call243
  %conv245 = sitofp i32 %sub244 to double
  %211 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call246 = call i32 @gimp_item_get_height(%struct._GimpItem* %211)
  %conv247 = sitofp i32 %call246 to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %209, i32 1, double %conv245, double %conv247)
  %212 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se248 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %212, i32 0, i32 2
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se248, align 8
  %214 = bitcast %struct._GtkWidget* %213 to %struct._GTypeInstance*
  %call249 = call i64 @gimp_size_entry_get_type() #6
  %call250 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %214, i64 %call249)
  %215 = bitcast %struct._GTypeInstance* %call250 to %struct._GimpSizeEntry*
  %216 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call251 = call i32 @gimp_item_get_width(%struct._GimpItem* %216)
  %conv252 = sitofp i32 %call251 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %215, i32 0, double 0.000000e+00, double %conv252)
  %217 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se253 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %217, i32 0, i32 2
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se253, align 8
  %219 = bitcast %struct._GtkWidget* %218 to %struct._GTypeInstance*
  %call254 = call i64 @gimp_size_entry_get_type() #6
  %call255 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %219, i64 %call254)
  %220 = bitcast %struct._GTypeInstance* %call255 to %struct._GimpSizeEntry*
  %221 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call256 = call i32 @gimp_item_get_height(%struct._GimpItem* %221)
  %conv257 = sitofp i32 %call256 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %220, i32 1, double 0.000000e+00, double %conv257)
  %222 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se258 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %222, i32 0, i32 2
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se258, align 8
  %224 = bitcast %struct._GtkWidget* %223 to %struct._GTypeInstance*
  %call259 = call i64 @gimp_size_entry_get_type() #6
  %call260 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %224, i64 %call259)
  %225 = bitcast %struct._GTypeInstance* %call260 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %225, i32 0, double 0.000000e+00)
  %226 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %off_se261 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %226, i32 0, i32 2
  %227 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se261, align 8
  %228 = bitcast %struct._GtkWidget* %227 to %struct._GTypeInstance*
  %call262 = call i64 @gimp_size_entry_get_type() #6
  %call263 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %228, i64 %call262)
  %229 = bitcast %struct._GTypeInstance* %call263 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %229, i32 1, double 0.000000e+00)
  %call264 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0)) #5
  %call265 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call264)
  store %struct._GtkWidget* %call265, %struct._GtkWidget** %button, align 8
  %230 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %231 = bitcast %struct._GtkWidget* %230 to %struct._GTypeInstance*
  %call266 = call i64 @gtk_box_get_type() #6
  %call267 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %231, i64 %call266)
  %232 = bitcast %struct._GTypeInstance* %call267 to %struct._GtkBox*
  %233 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %232, %struct._GtkWidget* %233, i32 0, i32 0, i32 0)
  %234 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %234)
  %235 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %236 = bitcast %struct._GtkWidget* %235 to i8*
  %237 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %238 = bitcast %struct.OffsetDialog* %237 to i8*
  %call268 = call i64 @g_signal_connect_data(i8* %236, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.OffsetDialog*)* @offset_halfheight_callback to void ()*), i8* %238, void (i8*, %struct._GClosure*)* null, i32 0)
  %call269 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0)) #5
  %239 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %fill_type270 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %239, i32 0, i32 3
  %240 = bitcast i32* %fill_type270 to i8*
  %241 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %fill_type271 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %241, i32 0, i32 3
  %242 = load i32, i32* %fill_type271, align 4
  %call272 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0)) #5
  %call273 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0)) #5
  %call274 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0)) #5
  %call275 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call269, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* %240, i32 %242, i8* %call272, i32 8, i8* null, i8* %call273, i32 0, i8* null, i8* %call274, i32 1, %struct._GtkWidget** %radio_button, i8* null)
  store %struct._GtkWidget* %call275, %struct._GtkWidget** %frame, align 8
  %243 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call276 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %243)
  %tobool277 = icmp ne i32 %call276, 0
  br i1 %tobool277, label %if.end.279, label %if.then.278

if.then.278:                                      ; preds = %if.end.154
  %244 = load %struct._GtkWidget*, %struct._GtkWidget** %radio_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %244, i32 0)
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.278, %if.end.154
  %245 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %246 = bitcast %struct._GtkWidget* %245 to %struct._GTypeInstance*
  %call280 = call i64 @gtk_box_get_type() #6
  %call281 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %246, i64 %call280)
  %247 = bitcast %struct._GTypeInstance* %call281 to %struct._GtkBox*
  %248 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %247, %struct._GtkWidget* %248, i32 0, i32 0, i32 0)
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %249)
  %250 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog, align 8
  %dialog282 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %250, i32 0, i32 1
  %251 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog282, align 8
  store %struct._GtkWidget* %251, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.279, %if.else.64, %if.else.36, %if.else.9
  %252 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %252
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @offset_dialog_free(%struct.OffsetDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.OffsetDialog*, align 8
  store %struct.OffsetDialog* %dialog, %struct.OffsetDialog** %dialog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog.addr, align 8
  %1 = bitcast %struct.OffsetDialog* %0 to i8*
  call void @g_slice_free1(i64 40, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @offset_response(%struct._GtkWidget* %widget, i32 %response_id, %struct.OffsetDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct.OffsetDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.OffsetDialog* %dialog, %struct.OffsetDialog** %dialog.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %1 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog.addr, align 8
  %image1 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %1, i32 0, i32 4
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  store %struct._GimpImage* %2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %3, null
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %4)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog.addr, align 8
  %off_se = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %5, i32 0, i32 2
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_size_entry_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpSizeEntry*
  %call5 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %8, i32 0)
  %call6 = call double @rint(double %call5) #6
  %conv = fptosi double %call6 to i32
  store i32 %conv, i32* %offset_x, align 4
  %9 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog.addr, align 8
  %off_se7 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %9, i32 0, i32 2
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se7, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_size_entry_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpSizeEntry*
  %call10 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %12, i32 1)
  %call11 = call double @rint(double %call10) #6
  %conv12 = fptosi double %call11 to i32
  store i32 %conv12, i32* %offset_y, align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %14 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %14, i32 0, i32 0
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %16 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog.addr, align 8
  %fill_type = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %16, i32 0, i32 3
  %17 = load i32, i32* %fill_type, align 4
  %and = and i32 %17, 8
  %tobool13 = icmp ne i32 %and, 0
  %cond = select i1 %tobool13, i32 1, i32 0
  %18 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog.addr, align 8
  %fill_type14 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %18, i32 0, i32 3
  %19 = load i32, i32* %fill_type14, align 4
  %and15 = and i32 %19, 1
  %20 = load i32, i32* %offset_x, align 4
  %21 = load i32, i32* %offset_y, align 4
  call void @gimp_drawable_offset(%struct._GimpDrawable* %13, %struct._GimpContext* %15, i32 %cond, i32 %and15, i32 %20, i32 %21)
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %22)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  %23 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog.addr, align 8
  %dialog17 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %23, i32 0, i32 1
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog17, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %24)
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

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #3

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #1

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #3

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #3

declare void @gimp_size_entry_add_field(%struct._GimpSizeEntry*, %struct._GtkSpinButton*, %struct._GtkSpinButton*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #3

declare %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry*, i8*, i32, i32, float) #3

declare void @gimp_size_entry_set_unit(%struct._GimpSizeEntry*, i32) #3

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #3

declare void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry*, i32, double, double) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare void @gimp_size_entry_set_size(%struct._GimpSizeEntry*, i32, double, double) #3

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #3

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @offset_halfheight_callback(%struct._GtkWidget* %widget, %struct.OffsetDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct.OffsetDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.OffsetDialog* %dialog, %struct.OffsetDialog** %dialog.addr, align 8
  %0 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog.addr, align 8
  %image1 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %0, i32 0, i32 4
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  store %struct._GimpImage* %1, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %3)
  %4 = bitcast %struct._GimpDrawable* %call to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  store %struct._GimpItem* %5, %struct._GimpItem** %item, align 8
  %6 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog.addr, align 8
  %off_se = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %6, i32 0, i32 2
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_size_entry_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSizeEntry*
  %10 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call6 = call i32 @gimp_item_get_width(%struct._GimpItem* %10)
  %div = sdiv i32 %call6, 2
  %conv = sitofp i32 %div to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %9, i32 0, double %conv)
  %11 = load %struct.OffsetDialog*, %struct.OffsetDialog** %dialog.addr, align 8
  %off_se7 = getelementptr inbounds %struct.OffsetDialog, %struct.OffsetDialog* %11, i32 0, i32 2
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %off_se7, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_size_entry_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpSizeEntry*
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call10 = call i32 @gimp_item_get_height(%struct._GimpItem* %15)
  %div11 = sdiv i32 %call10, 2
  %conv12 = sitofp i32 %div11 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %14, i32 1, double %conv12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #3

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #3

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare double @rint(double) #1

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #3

declare void @gimp_drawable_offset(%struct._GimpDrawable*, %struct._GimpContext*, i32, i32, i32, i32) #3

declare void @gimp_image_flush(%struct._GimpImage*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @g_slice_free1(i64, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
