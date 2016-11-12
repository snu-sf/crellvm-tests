; ModuleID = './app/tools/gimpdodgeburntool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDodgeBurnToolClass = type { %struct._GimpBrushToolClass }
%struct._GimpBrushToolClass = type { %struct._GimpPaintToolClass }
%struct._GimpPaintToolClass = type { %struct._GimpColorToolClass }
%struct._GimpColorToolClass = type { %struct._GimpDrawToolClass, i32 (%struct._GimpColorTool*, i32, i32, i32*, %struct._GimpRGB*, i32*)*, void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)* }
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
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type opaque
%struct._GimpImage = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type opaque
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
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpColorTool = type { %struct._GimpDrawTool, i32, i32, i32, i32, %struct._GimpColorOptions*, %struct._GimpSamplePoint*, i32, i32, i32 }
%struct._GimpColorOptions = type opaque
%struct._GimpSamplePoint = type opaque
%struct._GimpDodgeBurnTool = type { %struct._GimpBrushTool, i32 }
%struct._GimpBrushTool = type { %struct._GimpPaintTool, i32, i32, double, double }
%struct._GimpPaintTool = type { %struct._GimpColorTool, i32, i32, i8*, i8*, i8*, %struct._GimpPaintCore* }
%struct._GimpPaintCore = type opaque
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
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpDodgeBurnOptions = type { %struct._GimpPaintOptions, i32, i32, double }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }

@gimp_dodge_burn_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpDodgeBurnTool\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"gimp-dodge-burn-tool\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Dodge / Burn\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Dodge / Burn Tool: Selectively lighten or darken using a brush\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Dod_ge / Burn\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<shift>D\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"gimp-tool-dodge-burn\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"gimp-tool-dodge\00", align 1
@gimp_dodge_burn_tool_parent_class = internal global i8* null, align 8
@GimpDodgeBurnTool_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Click to dodge\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Click to dodge the line\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%s to burn\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Click to burn\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Click to burn the line\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"%s to dodge\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Type  (%s)\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Range\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"exposure\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Exposure\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dodge_burn_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_dodge_burn_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_dodge_burn_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_brush_tool_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 304, void (i8*, i8*)* bitcast (void (i8*)* @gimp_dodge_burn_tool_class_intern_init to void (i8*, i8*)*), i32 368, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDodgeBurnTool*)* @gimp_dodge_burn_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_dodge_burn_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_dodge_burn_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dodge_burn_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_dodge_burn_tool_parent_class, align 8
  %1 = load i32, i32* @GimpDodgeBurnTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDodgeBurnTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDodgeBurnToolClass*
  call void @gimp_dodge_burn_tool_class_init(%struct._GimpDodgeBurnToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dodge_burn_tool_init(%struct._GimpDodgeBurnTool* %dodgeburn) #3 {
entry:
  %dodgeburn.addr = alloca %struct._GimpDodgeBurnTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpDodgeBurnTool* %dodgeburn, %struct._GimpDodgeBurnTool** %dodgeburn.addr, align 8
  %0 = load %struct._GimpDodgeBurnTool*, %struct._GimpDodgeBurnTool** %dodgeburn.addr, align 8
  %1 = bitcast %struct._GimpDodgeBurnTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %4, i32 33)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_toggle_tool_cursor(%struct._GimpToolControl* %6, i32 34)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  call void @gimp_dodge_burn_tool_status_update(%struct._GimpTool* %7, i32 1)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_dodge_burn_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_dodge_burn_tool_get_type() #5
  %call1 = call i64 @gimp_dodge_burn_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_dodge_burn_options_gui, i32 20416, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dodge_burn_options_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_dodge_burn_options_gui(%struct._GimpToolOptions* %tool_options) #3 {
entry:
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %config = alloca %struct._GObject*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %str = alloca i8*, align 8
  %toggle_mask = alloca i32, align 4
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  store %struct._GObject* %2, %struct._GObject** %config, align 8
  %3 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %call1 = call %struct._GtkWidget* @gimp_paint_options_gui(%struct._GimpToolOptions* %3)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %vbox, align 8
  %call2 = call i32 @gimp_get_toggle_behavior_mask()
  store i32 %call2, i32* %toggle_mask, align 4
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #6
  %4 = load i32, i32* %toggle_mask, align 4
  %call4 = call i8* @gimp_get_mod_string(i32 %4)
  %call5 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call3, i8* %call4)
  store i8* %call5, i8** %str, align 8
  %5 = load %struct._GObject*, %struct._GObject** %config, align 8
  %6 = load i8*, i8** %str, align 8
  %call6 = call %struct._GtkWidget* @gimp_prop_enum_radio_frame_new(%struct._GObject* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* %6, i32 0, i32 0)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %frame, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %10, i32 0, i32 0, i32 0)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %12 = load i8*, i8** %str, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)) #6
  %call10 = call %struct._GtkWidget* @gimp_prop_enum_radio_frame_new(%struct._GObject* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* %call9, i32 0, i32 0)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %frame, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %17, i32 0, i32 0, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %19 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #6
  %call14 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* %call13, double 1.000000e+00, double 1.000000e+01, i32 1)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %scale, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 0, i32 0, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %25
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dodge_burn_tool_class_init(%struct._GimpDodgeBurnToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDodgeBurnToolClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  store %struct._GimpDodgeBurnToolClass* %klass, %struct._GimpDodgeBurnToolClass** %klass.addr, align 8
  %0 = load %struct._GimpDodgeBurnToolClass*, %struct._GimpDodgeBurnToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDodgeBurnToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %2, %struct._GimpToolClass** %tool_class, align 8
  %3 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %3, i32 0, i32 10
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_dodge_burn_tool_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %4 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %4, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_dodge_burn_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %5 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %5, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_dodge_burn_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_dodge_burn_tool_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %dodgeburn = alloca %struct._GimpDodgeBurnTool*, align 8
  %options = alloca %struct._GimpDodgeBurnOptions*, align 8
  %toggle_mask = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dodge_burn_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDodgeBurnTool*
  store %struct._GimpDodgeBurnTool* %2, %struct._GimpDodgeBurnTool** %dodgeburn, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_dodge_burn_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDodgeBurnOptions*
  store %struct._GimpDodgeBurnOptions* %7, %struct._GimpDodgeBurnOptions** %options, align 8
  %call7 = call i32 @gimp_get_toggle_behavior_mask()
  store i32 %call7, i32* %toggle_mask, align 4
  %8 = load i32, i32* %key.addr, align 4
  %9 = load i32, i32* %toggle_mask, align 4
  %cmp = icmp eq i32 %8, %9
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %state.addr, align 4
  %and = and i32 %10, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %11 = load i32, i32* %press.addr, align 4
  %12 = load %struct._GimpDodgeBurnTool*, %struct._GimpDodgeBurnTool** %dodgeburn, align 8
  %toggled = getelementptr inbounds %struct._GimpDodgeBurnTool, %struct._GimpDodgeBurnTool* %12, i32 0, i32 1
  %13 = load i32, i32* %toggled, align 4
  %cmp9 = icmp ne i32 %11, %13
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.8, %land.lhs.true, %entry
  %14 = load i32, i32* %key.addr, align 4
  %cmp10 = icmp eq i32 %14, 1
  br i1 %cmp10, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %15 = load i32, i32* %press.addr, align 4
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %if.end, label %land.lhs.true.13

land.lhs.true.13:                                 ; preds = %land.lhs.true.11
  %16 = load %struct._GimpDodgeBurnTool*, %struct._GimpDodgeBurnTool** %dodgeburn, align 8
  %toggled14 = getelementptr inbounds %struct._GimpDodgeBurnTool, %struct._GimpDodgeBurnTool* %16, i32 0, i32 1
  %17 = load i32, i32* %toggled14, align 4
  %tobool15 = icmp ne i32 %17, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true.13
  %18 = load i32, i32* %state.addr, align 4
  %19 = load i32, i32* %toggle_mask, align 4
  %and17 = and i32 %18, %19
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.16, %land.lhs.true.8
  %20 = load i32, i32* %press.addr, align 4
  %21 = load %struct._GimpDodgeBurnTool*, %struct._GimpDodgeBurnTool** %dodgeburn, align 8
  %toggled19 = getelementptr inbounds %struct._GimpDodgeBurnTool, %struct._GimpDodgeBurnTool* %21, i32 0, i32 1
  store i32 %20, i32* %toggled19, align 4
  %22 = load %struct._GimpDodgeBurnOptions*, %struct._GimpDodgeBurnOptions** %options, align 8
  %type = getelementptr inbounds %struct._GimpDodgeBurnOptions, %struct._GimpDodgeBurnOptions* %22, i32 0, i32 1
  %23 = load i32, i32* %type, align 4
  switch i32 %23, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.then
  %24 = load %struct._GimpDodgeBurnOptions*, %struct._GimpDodgeBurnOptions** %options, align 8
  %25 = bitcast %struct._GimpDodgeBurnOptions* %24 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 1, i8* null)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then
  %26 = load %struct._GimpDodgeBurnOptions*, %struct._GimpDodgeBurnOptions** %options, align 8
  %27 = bitcast %struct._GimpDodgeBurnOptions* %26 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* null)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.20, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %land.lhs.true.16, %land.lhs.true.13, %land.lhs.true.11, %lor.lhs.false
  %28 = load i8*, i8** @gimp_dodge_burn_tool_parent_class, align 8
  %29 = bitcast i8* %28 to %struct._GTypeClass*
  %call21 = call i64 @gimp_tool_get_type() #5
  %call22 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %29, i64 %call21)
  %30 = bitcast %struct._GTypeClass* %call22 to %struct._GimpToolClass*
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %30, i32 0, i32 10
  %31 = load void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %33 = load i32, i32* %key.addr, align 4
  %34 = load i32, i32* %press.addr, align 4
  %35 = load i32, i32* %state.addr, align 4
  %36 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %31(%struct._GimpTool* %32, i32 %33, i32 %34, i32 %35, %struct._GimpDisplay* %36)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dodge_burn_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpDodgeBurnOptions*, align 8
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
  %call3 = call i64 @gimp_dodge_burn_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDodgeBurnOptions*
  store %struct._GimpDodgeBurnOptions* %4, %struct._GimpDodgeBurnOptions** %options, align 8
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %7 = load %struct._GimpDodgeBurnOptions*, %struct._GimpDodgeBurnOptions** %options, align 8
  %type = getelementptr inbounds %struct._GimpDodgeBurnOptions, %struct._GimpDodgeBurnOptions* %7, i32 0, i32 1
  %8 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %8, 1
  %conv = zext i1 %cmp to i32
  call void @gimp_tool_control_set_toggled(%struct._GimpToolControl* %6, i32 %conv)
  %9 = load i8*, i8** @gimp_dodge_burn_tool_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_tool_get_type() #5
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 13
  %12 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %15 = load i32, i32* %state.addr, align 4
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %12(%struct._GimpTool* %13, %struct._GimpCoords* %14, i32 %15, %struct._GimpDisplay* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dodge_burn_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpDodgeBurnOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_dodge_burn_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDodgeBurnOptions*
  store %struct._GimpDodgeBurnOptions* %4, %struct._GimpDodgeBurnOptions** %options, align 8
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %6 = load %struct._GimpDodgeBurnOptions*, %struct._GimpDodgeBurnOptions** %options, align 8
  %type = getelementptr inbounds %struct._GimpDodgeBurnOptions, %struct._GimpDodgeBurnOptions* %6, i32 0, i32 1
  %7 = load i32, i32* %type, align 4
  call void @gimp_dodge_burn_tool_status_update(%struct._GimpTool* %5, i32 %7)
  %8 = load i8*, i8** @gimp_dodge_burn_tool_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call5 = call i64 @gimp_tool_get_type() #5
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call5)
  %10 = bitcast %struct._GTypeClass* %call6 to %struct._GimpToolClass*
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 12
  %11 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %14 = load i32, i32* %state.addr, align 4
  %15 = load i32, i32* %proximity.addr, align 4
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %11(%struct._GimpTool* %12, %struct._GimpCoords* %13, i32 %14, i32 %15, %struct._GimpDisplay* %16)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_tool_control_set_toggled(%struct._GimpToolControl*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dodge_burn_tool_status_update(%struct._GimpTool* %tool, i32 %type) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %type.addr = alloca i32, align 4
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %2, %struct._GimpPaintTool** %paint_tool, align 8
  %3 = load i32, i32* %type.addr, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0)) #6
  %4 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %status = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %4, i32 0, i32 3
  store i8* %call2, i8** %status, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0)) #6
  %5 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %status_line = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %5, i32 0, i32 4
  store i8* %call3, i8** %status_line, align 8
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #6
  %6 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %status_ctrl = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %6, i32 0, i32 5
  store i8* %call4, i8** %status_ctrl, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0)) #6
  %7 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %status7 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %7, i32 0, i32 3
  store i8* %call6, i8** %status7, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0)) #6
  %8 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %status_line9 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %8, i32 0, i32 4
  store i8* %call8, i8** %status_line9, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #6
  %9 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %status_ctrl11 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %9, i32 0, i32 5
  store i8* %call10, i8** %status_ctrl11, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_tool_get_type() #2

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_toggle_tool_cursor(%struct._GimpToolControl*, i32) #1

declare %struct._GtkWidget* @gimp_paint_options_gui(%struct._GimpToolOptions*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gimp_get_mod_string(i32) #1

declare %struct._GtkWidget* @gimp_prop_enum_radio_frame_new(%struct._GObject*, i8*, i8*, i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @g_free(i8*) #1

declare %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject*, i8*, i8*, double, double, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
