; ModuleID = './app/tools/gimpbucketfilltool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBucketFillToolClass = type { %struct._GimpToolClass }
%struct._GimpToolClass = type { %struct._GimpObjectClass, i32 (%struct._GimpTool*, %struct._GimpDisplay*)*, %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, %struct._GimpUIManager* (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*, i8**)*, void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpToolInfo = type opaque
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpBucketFillTool = type { %struct._GimpTool }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpBucketFillOptions = type { %struct._GimpPaintOptions, i32, i32, i32, i32, double, i32 }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }

@gimp_bucket_fill_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpBucketFillTool\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"gimp-bucket-fill-tool\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Bucket Fill\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Bucket Fill Tool: Fill selected area with a color or pattern\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"_Bucket Fill\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<shift>B\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"gimp-tool-bucket-fill\00", align 1
@gimp_bucket_fill_tool_parent_class = internal global i8* null, align 8
@GimpBucketFillTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Cannot modify the pixels of layer groups.\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"The active layer's pixels are locked.\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"fill-mode\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"fill-selection\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"context/context-opacity-set\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"context/context-pattern-select-set\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_bucket_fill_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_bucket_fill_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_bucket_fill_tool_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_tool_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 280, void (i8*, i8*)* bitcast (void (i8*)* @gimp_bucket_fill_tool_class_intern_init to void (i8*, i8*)*), i32 200, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBucketFillTool*)* @gimp_bucket_fill_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_bucket_fill_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_bucket_fill_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_bucket_fill_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_bucket_fill_tool_parent_class, align 8
  %1 = load i32, i32* @GimpBucketFillTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBucketFillTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBucketFillToolClass*
  call void @gimp_bucket_fill_tool_class_init(%struct._GimpBucketFillToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_bucket_fill_tool_init(%struct._GimpBucketFillTool* %bucket_fill_tool) #3 {
entry:
  %bucket_fill_tool.addr = alloca %struct._GimpBucketFillTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpBucketFillTool* %bucket_fill_tool, %struct._GimpBucketFillTool** %bucket_fill_tool.addr, align 8
  %0 = load %struct._GimpBucketFillTool*, %struct._GimpBucketFillTool** %bucket_fill_tool.addr, align 8
  %1 = bitcast %struct._GimpBucketFillTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl* %4, i32 1)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_wants_click(%struct._GimpToolControl* %6, i32 1)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %8, i32 22)
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_set_action_value_1(%struct._GimpToolControl* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0))
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 3
  %12 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control5, align 8
  call void @gimp_tool_control_set_action_object_1(%struct._GimpToolControl* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0))
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_bucket_fill_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_bucket_fill_tool_get_type() #5
  %call1 = call i64 @gimp_bucket_fill_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_bucket_fill_options_gui, i32 5056, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_bucket_fill_options_get_type() #2

declare %struct._GtkWidget* @gimp_bucket_fill_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_bucket_fill_tool_class_init(%struct._GimpBucketFillToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBucketFillToolClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  store %struct._GimpBucketFillToolClass* %klass, %struct._GimpBucketFillToolClass** %klass.addr, align 8
  %0 = load %struct._GimpBucketFillToolClass*, %struct._GimpBucketFillToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBucketFillToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %2, %struct._GimpToolClass** %tool_class, align 8
  %3 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %3, i32 0, i32 3
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)* @gimp_bucket_fill_tool_initialize, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %4 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %4, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_bucket_fill_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %5 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %5, i32 0, i32 10
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_bucket_fill_tool_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %6 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %6, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_bucket_fill_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_bucket_fill_tool_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %1)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %2 = load i8*, i8** @gimp_bucket_fill_tool_parent_class, align 8
  %3 = bitcast i8* %2 to %struct._GTypeClass*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %3, i64 %call2)
  %4 = bitcast %struct._GTypeClass* %call3 to %struct._GimpToolClass*
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %4, i32 0, i32 3
  %5 = load i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 %5(%struct._GimpTool* %6, %struct._GimpDisplay* %7, %struct._GError** %8)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %10 = bitcast %struct._GimpDrawable* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_viewable_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpViewable*
  %call7 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %11)
  %tobool8 = icmp ne %struct._GimpContainer* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_error_quark() #5
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %12, i32 %call10, i32 0, i8* %call11)
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call13)
  %15 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %15)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.12
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_error_quark() #5
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %16, i32 %call18, i32 0, i8* %call19)
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.12
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.17, %if.then.9, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @gimp_bucket_fill_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpBucketFillOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_bucket_fill_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpBucketFillOptions*
  store %struct._GimpBucketFillOptions* %4, %struct._GimpBucketFillOptions** %options, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call5 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %5)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %6 = load i32, i32* %release_type.addr, align 4
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %release_type.addr, align 4
  %cmp6 = icmp eq i32 %7, 3
  br i1 %cmp6, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %10 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpBucketFillOptions, %struct._GimpBucketFillOptions* %10, i32 0, i32 4
  %11 = load i32, i32* %sample_merged, align 4
  %call7 = call i32 @gimp_image_coords_in_active_pickable(%struct._GimpImage* %8, %struct._GimpCoords* %9, i32 %11, i32 1)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %12)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** %drawable, align 8
  %13 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %14 = bitcast %struct._GimpBucketFillOptions* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_context_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpContext*
  store %struct._GimpContext* %15, %struct._GimpContext** %context, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x11 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %16, i32 0, i32 0
  %17 = load double, double* %x11, align 8
  %conv = fptosi double %17 to i32
  store i32 %conv, i32* %x, align 4
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y12 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %18, i32 0, i32 1
  %19 = load double, double* %y12, align 8
  %conv13 = fptosi double %19 to i32
  store i32 %conv13, i32* %y, align 4
  %20 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %sample_merged14 = getelementptr inbounds %struct._GimpBucketFillOptions, %struct._GimpBucketFillOptions* %20, i32 0, i32 4
  %21 = load i32, i32* %sample_merged14, align 4
  %tobool15 = icmp ne i32 %21, 0
  br i1 %tobool15, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %if.then
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = bitcast %struct._GimpDrawable* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %24, i32* %off_x, i32* %off_y)
  %25 = load i32, i32* %off_x, align 4
  %26 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %26, %25
  store i32 %sub, i32* %x, align 4
  %27 = load i32, i32* %off_y, align 4
  %28 = load i32, i32* %y, align 4
  %sub19 = sub nsw i32 %28, %27
  store i32 %sub19, i32* %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %31 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %fill_mode = getelementptr inbounds %struct._GimpBucketFillOptions, %struct._GimpBucketFillOptions* %31, i32 0, i32 1
  %32 = load i32, i32* %fill_mode, align 4
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call20 = call i32 @gimp_context_get_paint_mode(%struct._GimpContext* %33)
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call21 = call double @gimp_context_get_opacity(%struct._GimpContext* %34)
  %35 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %fill_selection = getelementptr inbounds %struct._GimpBucketFillOptions, %struct._GimpBucketFillOptions* %35, i32 0, i32 2
  %36 = load i32, i32* %fill_selection, align 4
  %tobool22 = icmp ne i32 %36, 0
  %lnot = xor i1 %tobool22, true
  %lnot.ext = zext i1 %lnot to i32
  %37 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %fill_transparent = getelementptr inbounds %struct._GimpBucketFillOptions, %struct._GimpBucketFillOptions* %37, i32 0, i32 3
  %38 = load i32, i32* %fill_transparent, align 4
  %39 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %fill_criterion = getelementptr inbounds %struct._GimpBucketFillOptions, %struct._GimpBucketFillOptions* %39, i32 0, i32 6
  %40 = load i32, i32* %fill_criterion, align 4
  %41 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %threshold = getelementptr inbounds %struct._GimpBucketFillOptions, %struct._GimpBucketFillOptions* %41, i32 0, i32 5
  %42 = load double, double* %threshold, align 8
  %43 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %sample_merged23 = getelementptr inbounds %struct._GimpBucketFillOptions, %struct._GimpBucketFillOptions* %43, i32 0, i32 4
  %44 = load i32, i32* %sample_merged23, align 4
  %45 = load i32, i32* %x, align 4
  %conv24 = sitofp i32 %45 to double
  %46 = load i32, i32* %y, align 4
  %conv25 = sitofp i32 %46 to double
  %call26 = call i32 @gimp_drawable_bucket_fill(%struct._GimpDrawable* %29, %struct._GimpContext* %30, i32 %32, i32 %call20, double %call21, i32 %lnot.ext, i32 %38, i32 %40, double %42, i32 %44, double %conv24, double %conv25, %struct._GError** %error)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.else, label %if.then.28

if.then.28:                                       ; preds = %if.end
  %47 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %47, i32 0, i32 1
  %48 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %49 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %50 = bitcast %struct._GimpDisplay* %49 to %struct._GTypeInstance*
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 80)
  %51 = bitcast %struct._GTypeInstance* %call29 to %struct._GObject*
  %52 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %52, i32 0, i32 2
  %53 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %48, %struct._GObject* %51, i32 1, i8* %53)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.30

if.else:                                          ; preds = %if.end
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %54)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.28
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %land.lhs.true, %lor.lhs.false
  %55 = load i8*, i8** @gimp_bucket_fill_tool_parent_class, align 8
  %56 = bitcast i8* %55 to %struct._GTypeClass*
  %call32 = call i64 @gimp_tool_get_type() #5
  %call33 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %56, i64 %call32)
  %57 = bitcast %struct._GTypeClass* %call33 to %struct._GimpToolClass*
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %57, i32 0, i32 6
  %58 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %59 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %60 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %61 = load i32, i32* %time.addr, align 4
  %62 = load i32, i32* %state.addr, align 4
  %63 = load i32, i32* %release_type.addr, align 4
  %64 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %58(%struct._GimpTool* %59, %struct._GimpCoords* %60, i32 %61, i32 %62, i32 %63, %struct._GimpDisplay* %64)
  %65 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display34 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %65, i32 0, i32 4
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display34, align 8
  %66 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %drawable35 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %66, i32 0, i32 5
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable35, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_bucket_fill_tool_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpBucketFillOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_bucket_fill_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpBucketFillOptions*
  store %struct._GimpBucketFillOptions* %4, %struct._GimpBucketFillOptions** %options, align 8
  %5 = load i32, i32* %key.addr, align 4
  %call5 = call i32 @gimp_get_toggle_behavior_mask()
  %cmp = icmp eq i32 %5, %call5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %fill_mode = getelementptr inbounds %struct._GimpBucketFillOptions, %struct._GimpBucketFillOptions* %6, i32 0, i32 1
  %7 = load i32, i32* %fill_mode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.then
  %8 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %9 = bitcast %struct._GimpBucketFillOptions* %8 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 1, i8* null)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then
  %10 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %11 = bitcast %struct._GimpBucketFillOptions* %10 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* null)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %sw.bb
  br label %if.end.9

if.else:                                          ; preds = %entry
  %12 = load i32, i32* %key.addr, align 4
  %cmp7 = icmp eq i32 %12, 1
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %13 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %14 = bitcast %struct._GimpBucketFillOptions* %13 to i8*
  %15 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %fill_selection = getelementptr inbounds %struct._GimpBucketFillOptions, %struct._GimpBucketFillOptions* %15, i32 0, i32 2
  %16 = load i32, i32* %fill_selection, align 4
  %tobool = icmp ne i32 %16, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 %lnot.ext, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_bucket_fill_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpBucketFillOptions*, align 8
  %modifier = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_bucket_fill_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpBucketFillOptions*
  store %struct._GimpBucketFillOptions* %4, %struct._GimpBucketFillOptions** %options, align 8
  store i32 1, i32* %modifier, align 4
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call5 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %5)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %8 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpBucketFillOptions, %struct._GimpBucketFillOptions* %8, i32 0, i32 4
  %9 = load i32, i32* %sample_merged, align 4
  %call6 = call i32 @gimp_image_coords_in_active_pickable(%struct._GimpImage* %6, %struct._GimpCoords* %7, i32 %9, i32 1)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %10)
  store %struct._GimpDrawable* %call7, %struct._GimpDrawable** %drawable, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %12 = bitcast %struct._GimpDrawable* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_viewable_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpViewable*
  %call10 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %13)
  %tobool11 = icmp ne %struct._GimpContainer* %call10, null
  br i1 %tobool11, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %16)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true
  %17 = load %struct._GimpBucketFillOptions*, %struct._GimpBucketFillOptions** %options, align 8
  %fill_mode = getelementptr inbounds %struct._GimpBucketFillOptions, %struct._GimpBucketFillOptions* %17, i32 0, i32 1
  %18 = load i32, i32* %fill_mode, align 4
  switch i32 %18, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.17
    i32 2, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.then.16
  store i32 9, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then.16
  store i32 10, i32* %modifier, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then.16
  store i32 11, i32* %modifier, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.16, %sw.bb.18, %sw.bb.17, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %land.lhs.true, %if.then
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %entry
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %19, i32 0, i32 3
  %20 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %21 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %20, i32 %21)
  %22 = load i8*, i8** @gimp_bucket_fill_tool_parent_class, align 8
  %23 = bitcast i8* %22 to %struct._GTypeClass*
  %call20 = call i64 @gimp_tool_get_type() #5
  %call21 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %23, i64 %call20)
  %24 = bitcast %struct._GTypeClass* %call21 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %24, i32 0, i32 13
  %25 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %27 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %28 = load i32, i32* %state.addr, align 4
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %25(%struct._GimpTool* %26, %struct._GimpCoords* %27, i32 %28, %struct._GimpDisplay* %29)
  ret void
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare i32 @gimp_image_coords_in_active_pickable(%struct._GimpImage*, %struct._GimpCoords*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare i32 @gimp_drawable_bucket_fill(%struct._GimpDrawable*, %struct._GimpContext*, i32, i32, double, i32, i32, i32, double, i32, double, double, %struct._GError**) #1

declare i32 @gimp_context_get_paint_mode(%struct._GimpContext*) #1

declare double @gimp_context_get_opacity(%struct._GimpContext*) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_wants_click(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_action_value_1(%struct._GimpToolControl*, i8*) #1

declare void @gimp_tool_control_set_action_object_1(%struct._GimpToolControl*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
