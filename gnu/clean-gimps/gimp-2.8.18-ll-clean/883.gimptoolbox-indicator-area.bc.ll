; ModuleID = './app/widgets/gimptoolbox-indicator-area.bc'
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
%struct._GimpToolbox = type { %struct._GimpDock, %struct._GimpToolboxPrivate* }
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpDockPrivate = type opaque
%struct._GimpToolboxPrivate = type opaque
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
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type opaque
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpWindowStrategy = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_toolbox_indicator_area_create = private unnamed_addr constant [35 x i8] c"gimp_toolbox_indicator_area_create\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_IS_TOOLBOX (toolbox)\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"The active brush.\0AClick to open the Brush Dialog.\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"brush-changed\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"The active pattern.\0AClick to open the Pattern Dialog.\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"pattern-changed\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"The active gradient.\0AClick to open the Gradient Dialog.\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"gradient-changed\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"gimp-brush-grid|gimp-brush-list\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"gimp-pattern-grid|gimp-pattern-list\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"gimp-gradient-list|gimp-gradient-grid\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_toolbox_indicator_area_create(%struct._GimpToolbox* %toolbox) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %indicator_table = alloca %struct._GtkWidget*, align 8
  %brush_view = alloca %struct._GtkWidget*, align 8
  %pattern_view = alloca %struct._GtkWidget*, align 8
  %gradient_view = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %1 = bitcast %struct._GimpToolbox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_toolbox_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_toolbox_indicator_area_create, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %call11 = call %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %13)
  store %struct._GimpContext* %call11, %struct._GimpContext** %context, align 8
  %call12 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %indicator_table, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %indicator_table, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_table_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %16, i32 2)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %indicator_table, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_table_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %19, i32 2)
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call17 = call i64 @gimp_view_get_type() #5
  %call18 = call i64 @gimp_brush_get_type() #5
  %call19 = call %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext* %20, i64 %call17, i64 %call18, i32 24, i32 24, i32 1, i32 0, i32 1, i32 1)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %brush_view, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %brush_view, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_view_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call20)
  %23 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpView*
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call22 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %24)
  %25 = bitcast %struct._GimpBrush* %call22 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_viewable_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call23)
  %26 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %23, %struct._GimpViewable* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %indicator_table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call25)
  %29 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %brush_view, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %29, %struct._GtkWidget* %30, i32 0, i32 1, i32 0, i32 1)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %brush_view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %brush_view, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %32, i8* %call27, i8* null)
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %34 = bitcast %struct._GimpContext* %33 to i8*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %brush_view, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %call28 = call i64 @g_signal_connect_object(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GimpView*, %struct._GimpViewable*)* @gimp_view_set_viewable to void ()*), i8* %36, i32 2)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %brush_view, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  %39 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %40 = bitcast %struct._GimpToolbox* %39 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpToolbox*)* @brush_preview_clicked to void ()*), i8* %40, void (i8*, %struct._GClosure*)* null, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %brush_view, align 8
  %call30 = call i64 @gimp_brush_get_type() #5
  %42 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %43 = bitcast %struct._GimpContext* %42 to i8*
  %call31 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %41, i64 %call30, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @brush_preview_drop_brush, i8* %43)
  %44 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call32 = call i64 @gimp_view_get_type() #5
  %call33 = call i64 @gimp_pattern_get_type() #5
  %call34 = call %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext* %44, i64 %call32, i64 %call33, i32 24, i32 24, i32 1, i32 0, i32 1, i32 1)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %pattern_view, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern_view, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_view_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call35)
  %47 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpView*
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call37 = call %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %48)
  %49 = bitcast %struct._GimpPattern* %call37 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_viewable_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call38)
  %50 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %47, %struct._GimpViewable* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %indicator_table, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call40)
  %53 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern_view, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %53, %struct._GtkWidget* %54, i32 1, i32 2, i32 0, i32 1)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern_view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern_view, align 8
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %56, i8* %call42, i8* null)
  %57 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %58 = bitcast %struct._GimpContext* %57 to i8*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern_view, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %call43 = call i64 @g_signal_connect_object(i8* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpView*, %struct._GimpViewable*)* @gimp_view_set_viewable to void ()*), i8* %60, i32 2)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern_view, align 8
  %62 = bitcast %struct._GtkWidget* %61 to i8*
  %63 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %64 = bitcast %struct._GimpToolbox* %63 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpToolbox*)* @pattern_preview_clicked to void ()*), i8* %64, void (i8*, %struct._GClosure*)* null, i32 0)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern_view, align 8
  %call45 = call i64 @gimp_pattern_get_type() #5
  %66 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %67 = bitcast %struct._GimpContext* %66 to i8*
  %call46 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %65, i64 %call45, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @pattern_preview_drop_pattern, i8* %67)
  %68 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call47 = call i64 @gimp_view_get_type() #5
  %call48 = call i64 @gimp_gradient_get_type() #5
  %call49 = call %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext* %68, i64 %call47, i64 %call48, i32 52, i32 12, i32 1, i32 0, i32 1, i32 1)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %gradient_view, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_view, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_view_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call50)
  %71 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpView*
  %72 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call52 = call %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %72)
  %73 = bitcast %struct._GimpGradient* %call52 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_viewable_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call53)
  %74 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %71, %struct._GimpViewable* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %indicator_table, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_table_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call55)
  %77 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTable*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_view, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %77, %struct._GtkWidget* %78, i32 0, i32 2, i32 1, i32 2)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_view, align 8
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %80, i8* %call57, i8* null)
  %81 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %82 = bitcast %struct._GimpContext* %81 to i8*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_view, align 8
  %84 = bitcast %struct._GtkWidget* %83 to i8*
  %call58 = call i64 @g_signal_connect_object(i8* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpView*, %struct._GimpViewable*)* @gimp_view_set_viewable to void ()*), i8* %84, i32 2)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_view, align 8
  %86 = bitcast %struct._GtkWidget* %85 to i8*
  %87 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %88 = bitcast %struct._GimpToolbox* %87 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpToolbox*)* @gradient_preview_clicked to void ()*), i8* %88, void (i8*, %struct._GClosure*)* null, i32 0)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_view, align 8
  %call60 = call i64 @gimp_gradient_get_type() #5
  %90 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %91 = bitcast %struct._GimpContext* %90 to i8*
  %call61 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %89, i64 %call60, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gradient_preview_drop_gradient, i8* %91)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %indicator_table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %92)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %indicator_table, align 8
  store %struct._GtkWidget* %93, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %94
}

; Function Attrs: nounwind readnone
declare i64 @gimp_toolbox_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox*) #3

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #3

declare %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext*, i64, i64, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #1

declare void @gimp_view_set_viewable(%struct._GimpView*, %struct._GimpViewable*) #3

declare %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #3

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @brush_preview_clicked(%struct._GtkWidget* %widget, i32 %state, %struct._GimpToolbox* %toolbox) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %state.addr = alloca i32, align 4
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  %0 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %call = call %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %2)
  %3 = bitcast %struct._GimpObject* %call1 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_window_strategy_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpWindowStrategy*
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp4 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp4, align 8
  %7 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %8 = bitcast %struct._GimpToolbox* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_dock_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDock*
  %call7 = call %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call8 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %10)
  %call9 = call %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %4, %struct._Gimp* %6, %struct._GimpDialogFactory* %call7, %struct._GdkScreen* %call8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  ret void
}

declare i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget*, i64, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @brush_preview_drop_brush(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %5 = bitcast %struct._GimpViewable* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_brush_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpBrush*
  call void @gimp_context_set_brush(%struct._GimpContext* %3, %struct._GimpBrush* %6)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_get_type() #1

declare %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext*) #3

; Function Attrs: nounwind uwtable
define internal void @pattern_preview_clicked(%struct._GtkWidget* %widget, i32 %state, %struct._GimpToolbox* %toolbox) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %state.addr = alloca i32, align 4
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  %0 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %call = call %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %2)
  %3 = bitcast %struct._GimpObject* %call1 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_window_strategy_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpWindowStrategy*
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp4 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp4, align 8
  %7 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %8 = bitcast %struct._GimpToolbox* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_dock_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDock*
  %call7 = call %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call8 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %10)
  %call9 = call %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %4, %struct._Gimp* %6, %struct._GimpDialogFactory* %call7, %struct._GdkScreen* %call8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pattern_preview_drop_pattern(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %5 = bitcast %struct._GimpViewable* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_pattern_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPattern*
  call void @gimp_context_set_pattern(%struct._GimpContext* %3, %struct._GimpPattern* %6)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #1

declare %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext*) #3

; Function Attrs: nounwind uwtable
define internal void @gradient_preview_clicked(%struct._GtkWidget* %widget, i32 %state, %struct._GimpToolbox* %toolbox) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %state.addr = alloca i32, align 4
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  %0 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %call = call %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %2)
  %3 = bitcast %struct._GimpObject* %call1 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_window_strategy_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpWindowStrategy*
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp4 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp4, align 8
  %7 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %8 = bitcast %struct._GimpToolbox* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_dock_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDock*
  %call7 = call %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call8 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %10)
  %call9 = call %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %4, %struct._Gimp* %6, %struct._GimpDialogFactory* %call7, %struct._GdkScreen* %call8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_preview_drop_gradient(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %5 = bitcast %struct._GimpViewable* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_gradient_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpGradient*
  call void @gimp_context_set_gradient(%struct._GimpContext* %3, %struct._GimpGradient* %6)
  ret void
}

declare %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*) #3

declare %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_window_strategy_interface_get_type() #1

declare %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare void @gimp_context_set_brush(%struct._GimpContext*, %struct._GimpBrush*) #3

declare void @gimp_context_set_pattern(%struct._GimpContext*, %struct._GimpPattern*) #3

declare void @gimp_context_set_gradient(%struct._GimpContext*, %struct._GimpGradient*) #3

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
