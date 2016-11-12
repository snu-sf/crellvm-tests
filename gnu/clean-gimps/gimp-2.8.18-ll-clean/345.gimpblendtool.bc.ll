; ModuleID = './app/tools/gimpblendtool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBlendToolClass = type { %struct._GimpDrawToolClass }
%struct._GimpDrawToolClass = type { %struct._GimpToolClass, void (%struct._GimpDrawTool*)* }
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
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._Gimp = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpBlendTool = type { %struct._GimpDrawTool, double, double, double, double, double, double, double, double, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem* }
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
%struct._GimpBlendOptions = type { %struct._GimpPaintOptions, double, i32, i32, i32, double, i32 }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
%struct._GimpContainer = type opaque
%struct._GimpProgress = type opaque

@gimp_blend_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpBlendTool\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"gimp-blend-tool\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Blend\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Blend Tool: Fill selected area with a color gradient\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Blen_d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"gimp-tool-blend\00", align 1
@gimp_blend_tool_parent_class = internal global i8* null, align 8
@GimpBlendTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Blend does not operate on indexed layers.\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Cannot modify the pixels of layer groups.\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"The active layer's pixels are locked.\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"No gradient available for use with this tool.\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"%s for constrained angles\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"%s to move the whole line\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Blend: \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Blending\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"context/context-opacity-set\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"context/context-gradient-select-set\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_blend_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_blend_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_blend_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_draw_tool_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_blend_tool_class_intern_init to void (i8*, i8*)*), i32 336, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBlendTool*)* @gimp_blend_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_blend_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_blend_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_blend_tool_parent_class, align 8
  %1 = load i32, i32* @GimpBlendTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBlendTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBlendToolClass*
  call void @gimp_blend_tool_class_init(%struct._GimpBlendToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_tool_init(%struct._GimpBlendTool* %blend_tool) #3 {
entry:
  %blend_tool.addr = alloca %struct._GimpBlendTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpBlendTool* %blend_tool, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %0 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %1 = bitcast %struct._GimpBlendTool* %0 to %struct._GTypeInstance*
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
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %6, i32 2)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %8, i32 23)
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_set_action_value_1(%struct._GimpToolControl* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0))
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 3
  %12 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control5, align 8
  call void @gimp_tool_control_set_action_object_1(%struct._GimpToolControl* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0))
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_blend_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_blend_tool_get_type() #5
  %call1 = call i64 @gimp_blend_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_blend_options_gui, i32 9152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_blend_options_get_type() #2

declare %struct._GtkWidget* @gimp_blend_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_tool_class_init(%struct._GimpBlendToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBlendToolClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpBlendToolClass* %klass, %struct._GimpBlendToolClass** %klass.addr, align 8
  %0 = load %struct._GimpBlendToolClass*, %struct._GimpBlendToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBlendToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %2, %struct._GimpToolClass** %tool_class, align 8
  %3 = load %struct._GimpBlendToolClass*, %struct._GimpBlendToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBlendToolClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_draw_tool_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %5, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %6 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %6, i32 0, i32 3
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)* @gimp_blend_tool_initialize, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %7 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %7, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_blend_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %8 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_blend_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %9 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %9, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_blend_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %active_modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 11
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_blend_tool_active_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %active_modifier_key, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_blend_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %12 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %12, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_blend_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_blend_tool_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %options = alloca %struct._GimpBlendOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %1)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %2 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %3 = bitcast %struct._GimpTool* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %4)
  %5 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_blend_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpBlendOptions*
  store %struct._GimpBlendOptions* %6, %struct._GimpBlendOptions** %options, align 8
  %7 = load i8*, i8** @gimp_blend_tool_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call7 = call i64 @gimp_tool_get_type() #5
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call7)
  %9 = bitcast %struct._GTypeClass* %call8 to %struct._GimpToolClass*
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %9, i32 0, i32 3
  %10 = load i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 %10(%struct._GimpTool* %11, %struct._GimpDisplay* %12, %struct._GError** %13)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call10 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_error_quark() #5
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %15, i32 %call13, i32 0, i8* %call14)
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_viewable_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpViewable*
  %call18 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %18)
  %tobool19 = icmp ne %struct._GimpContainer* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.15
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call21 = call i32 @gimp_error_quark() #5
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %19, i32 %call21, i32 0, i8* %call22)
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.15
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_item_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call24)
  %22 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpItem*
  %call26 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %22)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.23
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call29 = call i32 @gimp_error_quark() #5
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %23, i32 %call29, i32 0, i8* %call30)
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.23
  %24 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %25 = bitcast %struct._GimpBlendOptions* %24 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_context_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call32)
  %26 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpContext*
  %call34 = call %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %26)
  %tobool35 = icmp ne %struct._GimpGradient* %call34, null
  br i1 %tobool35, label %if.end.39, label %if.then.36

if.then.36:                                       ; preds = %if.end.31
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call37 = call i32 @gimp_error_quark() #5
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %27, i32 %call37, i32 0, i8* %call38)
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.31
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.36, %if.then.28, %if.then.20, %if.then.12, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %blend_tool = alloca %struct._GimpBlendTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_blend_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBlendTool*
  store %struct._GimpBlendTool* %2, %struct._GimpBlendTool** %blend_tool, align 8
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %3, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %5 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %5, i32 0, i32 3
  store double %4, double* %end_x, align 8
  %6 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %6, i32 0, i32 1
  store double %4, double* %start_x, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %7, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %9 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %9, i32 0, i32 4
  store double %8, double* %end_y, align 8
  %10 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %10, i32 0, i32 2
  store double %8, double* %start_y, align 8
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %11, i32 0, i32 0
  %12 = load double, double* %x2, align 8
  %13 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %mouse_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %13, i32 0, i32 7
  store double %12, double* %mouse_x, align 8
  %14 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %last_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %14, i32 0, i32 5
  store double %12, double* %last_x, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 1
  %16 = load double, double* %y3, align 8
  %17 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %mouse_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %17, i32 0, i32 8
  store double %16, double* %mouse_y, align 8
  %18 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %last_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %18, i32 0, i32 6
  store double %16, double* %last_y, align 8
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %20, i32 0, i32 4
  store %struct._GimpDisplay* %19, %struct._GimpDisplay** %display4, align 8
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %21, i32 0, i32 3
  %22 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %22)
  %23 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %24 = load i32, i32* %state.addr, align 4
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_blend_tool_push_status(%struct._GimpBlendTool* %23, i32 %24, %struct._GimpDisplay* %25)
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %27 = bitcast %struct._GimpTool* %26 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_draw_tool_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call5)
  %28 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawTool*
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %28, %struct._GimpDisplay* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %blend_tool = alloca %struct._GimpBlendTool*, align 8
  %options = alloca %struct._GimpBlendOptions*, align 8
  %paint_options = alloca %struct._GimpPaintOptions*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %progress = alloca %struct._GimpProgress*, align 8
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
  %call = call i64 @gimp_blend_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBlendTool*
  store %struct._GimpBlendTool* %2, %struct._GimpBlendTool** %blend_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_blend_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpBlendOptions*
  store %struct._GimpBlendOptions* %7, %struct._GimpBlendOptions** %options, align 8
  %8 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %9 = bitcast %struct._GimpBlendOptions* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_paint_options_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %10, %struct._GimpPaintOptions** %paint_options, align 8
  %11 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %12 = bitcast %struct._GimpBlendOptions* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_context_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpContext*
  store %struct._GimpContext* %13, %struct._GimpContext** %context, align 8
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %15, %struct._GimpDisplay* %16)
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %18 = bitcast %struct._GimpTool* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_draw_tool_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %19)
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %20, i32 0, i32 3
  %21 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %21)
  %22 = load i32, i32* %release_type.addr, align 4
  %cmp = icmp ne i32 %22, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %entry
  %23 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %23, i32 0, i32 1
  %24 = load double, double* %start_x, align 8
  %25 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %25, i32 0, i32 3
  %26 = load double, double* %end_x, align 8
  %cmp14 = fcmp une double %24, %26
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %27, i32 0, i32 2
  %28 = load double, double* %start_y, align 8
  %29 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %29, i32 0, i32 4
  %30 = load double, double* %end_y, align 8
  %cmp15 = fcmp une double %28, %30
  br i1 %cmp15, label %if.then, label %if.end.37

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %31)
  store %struct._GimpDrawable* %call16, %struct._GimpDrawable** %drawable, align 8
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %33 = bitcast %struct._GimpTool* %32 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_progress_interface_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call17)
  %34 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpProgress*
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #6
  %call20 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %34, i8* %call19, i32 0)
  store %struct._GimpProgress* %call20, %struct._GimpProgress** %progress, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %36 = bitcast %struct._GimpDrawable* %35 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call21)
  %37 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %37, i32* %off_x, i32* %off_y)
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %40 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call23 = call i32 @gimp_context_get_paint_mode(%struct._GimpContext* %40)
  %41 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %gradient_type = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %41, i32 0, i32 2
  %42 = load i32, i32* %gradient_type, align 4
  %43 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call24 = call double @gimp_context_get_opacity(%struct._GimpContext* %43)
  %44 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %offset = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %44, i32 0, i32 1
  %45 = load double, double* %offset, align 8
  %46 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %gradient_options = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %46, i32 0, i32 11
  %47 = load %struct._GimpGradientOptions*, %struct._GimpGradientOptions** %gradient_options, align 8
  %gradient_repeat = getelementptr inbounds %struct._GimpGradientOptions, %struct._GimpGradientOptions* %47, i32 0, i32 1
  %48 = load i32, i32* %gradient_repeat, align 4
  %49 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %gradient_options25 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %49, i32 0, i32 11
  %50 = load %struct._GimpGradientOptions*, %struct._GimpGradientOptions** %gradient_options25, align 8
  %gradient_reverse = getelementptr inbounds %struct._GimpGradientOptions, %struct._GimpGradientOptions* %50, i32 0, i32 0
  %51 = load i32, i32* %gradient_reverse, align 4
  %52 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %supersample = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %52, i32 0, i32 3
  %53 = load i32, i32* %supersample, align 4
  %54 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %supersample_depth = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %54, i32 0, i32 4
  %55 = load i32, i32* %supersample_depth, align 4
  %56 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %supersample_threshold = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %56, i32 0, i32 5
  %57 = load double, double* %supersample_threshold, align 8
  %58 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %dither = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %58, i32 0, i32 6
  %59 = load i32, i32* %dither, align 4
  %60 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_x26 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %60, i32 0, i32 1
  %61 = load double, double* %start_x26, align 8
  %62 = load i32, i32* %off_x, align 4
  %conv = sitofp i32 %62 to double
  %sub = fsub double %61, %conv
  %63 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_y27 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %63, i32 0, i32 2
  %64 = load double, double* %start_y27, align 8
  %65 = load i32, i32* %off_y, align 4
  %conv28 = sitofp i32 %65 to double
  %sub29 = fsub double %64, %conv28
  %66 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_x30 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %66, i32 0, i32 3
  %67 = load double, double* %end_x30, align 8
  %68 = load i32, i32* %off_x, align 4
  %conv31 = sitofp i32 %68 to double
  %sub32 = fsub double %67, %conv31
  %69 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_y33 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %69, i32 0, i32 4
  %70 = load double, double* %end_y33, align 8
  %71 = load i32, i32* %off_y, align 4
  %conv34 = sitofp i32 %71 to double
  %sub35 = fsub double %70, %conv34
  %72 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_drawable_blend(%struct._GimpDrawable* %38, %struct._GimpContext* %39, i32 3, i32 %call23, i32 %42, double %call24, double %45, i32 %48, i32 %51, i32 %53, i32 %55, double %57, i32 %59, double %sub, double %sub29, double %sub32, double %sub35, %struct._GimpProgress* %72)
  %73 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool = icmp ne %struct._GimpProgress* %73, null
  br i1 %tobool, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %if.then
  %74 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %74)
  br label %if.end

if.end:                                           ; preds = %if.then.36, %if.then
  %75 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %75)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %lor.lhs.false, %entry
  %76 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display38 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %76, i32 0, i32 4
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display38, align 8
  %77 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %drawable39 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %77, i32 0, i32 5
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable39, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %blend_tool = alloca %struct._GimpBlendTool*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_blend_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBlendTool*
  store %struct._GimpBlendTool* %2, %struct._GimpBlendTool** %blend_tool, align 8
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %3, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %5 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %mouse_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %5, i32 0, i32 7
  store double %4, double* %mouse_x, align 8
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i32 0, i32 1
  %7 = load double, double* %y, align 8
  %8 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %mouse_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %8, i32 0, i32 8
  store double %7, double* %mouse_y, align 8
  %9 = load i32, i32* %state.addr, align 4
  %and = and i32 %9, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %last_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %10, i32 0, i32 5
  %11 = load double, double* %last_x, align 8
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i32 0, i32 0
  %13 = load double, double* %x2, align 8
  %sub = fsub double %11, %13
  store double %sub, double* %dx, align 8
  %14 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %last_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %14, i32 0, i32 6
  %15 = load double, double* %last_y, align 8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %16, i32 0, i32 1
  %17 = load double, double* %y3, align 8
  %sub4 = fsub double %15, %17
  store double %sub4, double* %dy, align 8
  %18 = load double, double* %dx, align 8
  %19 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %19, i32 0, i32 1
  %20 = load double, double* %start_x, align 8
  %sub5 = fsub double %20, %18
  store double %sub5, double* %start_x, align 8
  %21 = load double, double* %dy, align 8
  %22 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %22, i32 0, i32 2
  %23 = load double, double* %start_y, align 8
  %sub6 = fsub double %23, %21
  store double %sub6, double* %start_y, align 8
  %24 = load double, double* %dx, align 8
  %25 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %25, i32 0, i32 3
  %26 = load double, double* %end_x, align 8
  %sub7 = fsub double %26, %24
  store double %sub7, double* %end_x, align 8
  %27 = load double, double* %dy, align 8
  %28 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %28, i32 0, i32 4
  %29 = load double, double* %end_y, align 8
  %sub8 = fsub double %29, %27
  store double %sub8, double* %end_y, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x9 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %30, i32 0, i32 0
  %31 = load double, double* %x9, align 8
  %32 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_x10 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %32, i32 0, i32 3
  store double %31, double* %end_x10, align 8
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y11 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %33, i32 0, i32 1
  %34 = load double, double* %y11, align 8
  %35 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_y12 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %35, i32 0, i32 4
  store double %34, double* %end_y12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %36 = load i32, i32* %state.addr, align 4
  %call13 = call i32 @gimp_get_constrain_behavior_mask()
  %and14 = and i32 %36, %call13
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end
  %37 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_x17 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %37, i32 0, i32 1
  %38 = load double, double* %start_x17, align 8
  %39 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_y18 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %39, i32 0, i32 2
  %40 = load double, double* %start_y18, align 8
  %41 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_x19 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %41, i32 0, i32 3
  %42 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_y20 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %42, i32 0, i32 4
  call void @gimp_constrain_line(double %38, double %40, double* %end_x19, double* %end_y20, i32 12)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end
  %43 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %44 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %43, %struct._GimpDisplay* %44)
  %45 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %46 = load i32, i32* %state.addr, align 4
  %47 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_blend_tool_push_status(%struct._GimpBlendTool* %45, i32 %46, %struct._GimpDisplay* %47)
  %48 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x22 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %48, i32 0, i32 0
  %49 = load double, double* %x22, align 8
  %50 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %last_x23 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %50, i32 0, i32 5
  store double %49, double* %last_x23, align 8
  %51 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y24 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %51, i32 0, i32 1
  %52 = load double, double* %y24, align 8
  %53 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %last_y25 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %53, i32 0, i32 6
  store double %52, double* %last_y25, align 8
  %54 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  call void @gimp_blend_tool_update_items(%struct._GimpBlendTool* %54)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_tool_active_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %blend_tool = alloca %struct._GimpBlendTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_blend_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBlendTool*
  store %struct._GimpBlendTool* %2, %struct._GimpBlendTool** %blend_tool, align 8
  %3 = load i32, i32* %key.addr, align 4
  %call2 = call i32 @gimp_get_constrain_behavior_mask()
  %cmp = icmp eq i32 %3, %call2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %mouse_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %4, i32 0, i32 7
  %5 = load double, double* %mouse_x, align 8
  %6 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %6, i32 0, i32 3
  store double %5, double* %end_x, align 8
  %7 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %mouse_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %7, i32 0, i32 8
  %8 = load double, double* %mouse_y, align 8
  %9 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %9, i32 0, i32 4
  store double %8, double* %end_y, align 8
  %10 = load i32, i32* %press.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %11 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %11, i32 0, i32 1
  %12 = load double, double* %start_x, align 8
  %13 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %13, i32 0, i32 2
  %14 = load double, double* %start_y, align 8
  %15 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_x4 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %15, i32 0, i32 3
  %16 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_y5 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %16, i32 0, i32 4
  call void @gimp_constrain_line(double %12, double %14, double* %end_x4, double* %end_y5, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %17, %struct._GimpDisplay* %18)
  %19 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %20 = load i32, i32* %state.addr, align 4
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_blend_tool_push_status(%struct._GimpBlendTool* %19, i32 %20, %struct._GimpDisplay* %21)
  %22 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  call void @gimp_blend_tool_update_items(%struct._GimpBlendTool* %22)
  br label %if.end.9

if.else:                                          ; preds = %entry
  %23 = load i32, i32* %key.addr, align 4
  %cmp6 = icmp eq i32 %23, 8
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %24, %struct._GimpDisplay* %25)
  %26 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %27 = load i32, i32* %state.addr, align 4
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_blend_tool_push_status(%struct._GimpBlendTool* %26, i32 %27, %struct._GimpDisplay* %28)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %modifier = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %1)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  store i32 0, i32* %modifier, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call2 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %4 = bitcast %struct._GimpDrawable* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_viewable_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpViewable*
  %call5 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %5)
  %tobool6 = icmp ne %struct._GimpContainer* %call5, null
  br i1 %tobool6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call8)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %8)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false, %entry
  store i32 1, i32* %modifier, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.7
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %11 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %10, i32 %11)
  %12 = load i8*, i8** @gimp_blend_tool_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call12 = call i64 @gimp_tool_get_type() #5
  %call13 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 %call12)
  %14 = bitcast %struct._GTypeClass* %call13 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 13
  %15 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %18 = load i32, i32* %state.addr, align 4
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %15(%struct._GimpTool* %16, %struct._GimpCoords* %17, i32 %18, %struct._GimpDisplay* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %blend_tool = alloca %struct._GimpBlendTool*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_blend_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBlendTool*
  store %struct._GimpBlendTool* %2, %struct._GimpBlendTool** %blend_tool, align 8
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %4 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %4, i32 0, i32 1
  %5 = load double, double* %start_x, align 8
  %6 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %6, i32 0, i32 2
  %7 = load double, double* %start_y, align 8
  %call2 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %3, i32 4, double %5, double %7, i32 15, i32 15, i32 0)
  %8 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_handle = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %8, i32 0, i32 9
  store %struct._GimpCanvasItem* %call2, %struct._GimpCanvasItem** %start_handle, align 8
  %9 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %10 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_x3 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %10, i32 0, i32 1
  %11 = load double, double* %start_x3, align 8
  %12 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %start_y4 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %12, i32 0, i32 2
  %13 = load double, double* %start_y4, align 8
  %14 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %14, i32 0, i32 3
  %15 = load double, double* %end_x, align 8
  %16 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %16, i32 0, i32 4
  %17 = load double, double* %end_y, align 8
  %call5 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool* %9, double %11, double %13, double %15, double %17)
  %18 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %line = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %18, i32 0, i32 10
  store %struct._GimpCanvasItem* %call5, %struct._GimpCanvasItem** %line, align 8
  %19 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %20 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_x6 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %20, i32 0, i32 3
  %21 = load double, double* %end_x6, align 8
  %22 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_y7 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %22, i32 0, i32 4
  %23 = load double, double* %end_y7, align 8
  %call8 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool* %19, i32 4, double %21, double %23, i32 15, i32 15, i32 0)
  %24 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool, align 8
  %end_handle = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %24, i32 0, i32 11
  store %struct._GimpCanvasItem* %call8, %struct._GimpCanvasItem** %end_handle, align 8
  ret void
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_tool_push_status(%struct._GimpBlendTool* %blend_tool, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %blend_tool.addr = alloca %struct._GimpBlendTool*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %status_help = alloca i8*, align 8
  store %struct._GimpBlendTool* %blend_tool, %struct._GimpBlendTool** %blend_tool.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %1 = bitcast %struct._GimpBlendTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %call2 = call i32 @gimp_get_constrain_behavior_mask()
  %or = or i32 %call2, 8
  %3 = load i32, i32* %state.addr, align 4
  %neg = xor i32 %3, -1
  %and = and i32 %or, %neg
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #6
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0)) #6
  %call5 = call i8* @gimp_suggest_modifiers(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i32 %and, i8* null, i8* %call3, i8* %call4)
  store i8* %call5, i8** %status_help, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 3
  %7 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call6 = call i32 @gimp_tool_control_get_precision(%struct._GimpToolControl* %7)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #6
  %8 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %end_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %8, i32 0, i32 3
  %9 = load double, double* %end_x, align 8
  %10 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %start_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %10, i32 0, i32 1
  %11 = load double, double* %start_x, align 8
  %sub = fsub double %9, %11
  %12 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %end_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %12, i32 0, i32 4
  %13 = load double, double* %end_y, align 8
  %14 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %start_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %14, i32 0, i32 2
  %15 = load double, double* %start_y, align 8
  %sub8 = fsub double %13, %15
  %16 = load i8*, i8** %status_help, align 8
  call void @gimp_tool_push_status_coords(%struct._GimpTool* %4, %struct._GimpDisplay* %5, i32 %call6, i8* %call7, double %sub, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), double %sub8, i8* %16)
  %17 = load i8*, i8** %status_help, align 8
  call void @g_free(i8* %17)
  ret void
}

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

declare i8* @gimp_suggest_modifiers(i8*, i32, i8*, i8*, i8*) #1

declare i32 @gimp_get_constrain_behavior_mask() #1

declare void @gimp_tool_push_status_coords(%struct._GimpTool*, %struct._GimpDisplay*, i32, i8*, double, i8*, double, i8*) #1

declare i32 @gimp_tool_control_get_precision(%struct._GimpToolControl*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_options_get_type() #2

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare void @gimp_drawable_blend(%struct._GimpDrawable*, %struct._GimpContext*, i32, i32, i32, double, double, i32, i32, i32, i32, double, i32, double, double, double, double, %struct._GimpProgress*) #1

declare i32 @gimp_context_get_paint_mode(%struct._GimpContext*) #1

declare double @gimp_context_get_opacity(%struct._GimpContext*) #1

declare void @gimp_progress_end(%struct._GimpProgress*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare void @gimp_constrain_line(double, double, double*, double*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_tool_update_items(%struct._GimpBlendTool* %blend_tool) #3 {
entry:
  %blend_tool.addr = alloca %struct._GimpBlendTool*, align 8
  store %struct._GimpBlendTool* %blend_tool, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %0 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %1 = bitcast %struct._GimpBlendTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  %call2 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %start_handle = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %3, i32 0, i32 9
  %4 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %start_handle, align 8
  %5 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %start_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %5, i32 0, i32 1
  %6 = load double, double* %start_x, align 8
  %7 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %start_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %7, i32 0, i32 2
  %8 = load double, double* %start_y, align 8
  call void @gimp_canvas_handle_set_position(%struct._GimpCanvasItem* %4, double %6, double %8)
  %9 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %line = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %9, i32 0, i32 10
  %10 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %line, align 8
  %11 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %start_x3 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %11, i32 0, i32 1
  %12 = load double, double* %start_x3, align 8
  %13 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %start_y4 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %13, i32 0, i32 2
  %14 = load double, double* %start_y4, align 8
  %15 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %end_x = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %15, i32 0, i32 3
  %16 = load double, double* %end_x, align 8
  %17 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %end_y = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %17, i32 0, i32 4
  %18 = load double, double* %end_y, align 8
  call void @gimp_canvas_line_set(%struct._GimpCanvasItem* %10, double %12, double %14, double %16, double %18)
  %19 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %end_handle = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %19, i32 0, i32 11
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %end_handle, align 8
  %21 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %end_x5 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %21, i32 0, i32 3
  %22 = load double, double* %end_x5, align 8
  %23 = load %struct._GimpBlendTool*, %struct._GimpBlendTool** %blend_tool.addr, align 8
  %end_y6 = getelementptr inbounds %struct._GimpBlendTool, %struct._GimpBlendTool* %23, i32 0, i32 4
  %24 = load double, double* %end_y6, align 8
  call void @gimp_canvas_handle_set_position(%struct._GimpCanvasItem* %20, double %22, double %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool*) #1

declare void @gimp_canvas_handle_set_position(%struct._GimpCanvasItem*, double, double) #1

declare void @gimp_canvas_line_set(%struct._GimpCanvasItem*, double, double, double, double) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_handle(%struct._GimpDrawTool*, i32, double, double, i32, i32, i32) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_line(%struct._GimpDrawTool*, double, double, double, double) #1

declare void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_precision(%struct._GimpToolControl*, i32) #1

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
