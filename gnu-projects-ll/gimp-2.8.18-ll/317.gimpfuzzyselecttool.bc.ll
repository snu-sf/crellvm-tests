; ModuleID = './app/tools/gimpfuzzyselecttool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpFuzzySelectToolClass = type { %struct._GimpRegionSelectToolClass }
%struct._GimpRegionSelectToolClass = type { %struct._GimpSelectionToolClass, i8*, %struct._GimpChannel* (%struct._GimpRegionSelectTool*, %struct._GimpDisplay*)* }
%struct._GimpSelectionToolClass = type { %struct._GimpDrawToolClass }
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
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._Gimp = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpChannel = type opaque
%struct._GimpRegionSelectTool = type { %struct._GimpSelectionTool, i32, i32, double, %struct._GimpChannel*, %struct._BoundSeg*, i32 }
%struct._GimpSelectionTool = type { %struct._GimpDrawTool, i32, i32, i32 }
%struct._BoundSeg = type opaque
%struct._GimpFuzzySelectTool = type { %struct._GimpRegionSelectTool }
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
%struct._GimpSelectionOptions = type { %struct._GimpToolOptions, i32, i32, i32, double, %struct._GtkWidget* }
%struct._GimpRegionSelectOptions = type { %struct._GimpSelectionOptions, i32, i32, double, i32 }
%struct._GimpItem = type { %struct._GimpViewable }

@gimp_fuzzy_select_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpFuzzySelectTool\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"gimp-fuzzy-select-tool\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Fuzzy Select\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"Fuzzy Select Tool: Select a contiguous region on the basis of color\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Fu_zzy Select\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"gimp-tool-fuzzy-select\00", align 1
@gimp_fuzzy_select_tool_parent_class = internal global i8* null, align 8
@GimpFuzzySelectTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"command\04Fuzzy Select\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_fuzzy_select_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_fuzzy_select_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_fuzzy_select_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_region_select_tool_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 304, void (i8*, i8*)* bitcast (void (i8*)* @gimp_fuzzy_select_tool_class_intern_init to void (i8*, i8*)*), i32 304, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpFuzzySelectTool*)* @gimp_fuzzy_select_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_fuzzy_select_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_fuzzy_select_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_region_select_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_fuzzy_select_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_fuzzy_select_tool_parent_class, align 8
  %1 = load i32, i32* @GimpFuzzySelectTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpFuzzySelectTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpFuzzySelectToolClass*
  call void @gimp_fuzzy_select_tool_class_init(%struct._GimpFuzzySelectToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_fuzzy_select_tool_init(%struct._GimpFuzzySelectTool* %fuzzy_select) #3 {
entry:
  %fuzzy_select.addr = alloca %struct._GimpFuzzySelectTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpFuzzySelectTool* %fuzzy_select, %struct._GimpFuzzySelectTool** %fuzzy_select.addr, align 8
  %0 = load %struct._GimpFuzzySelectTool*, %struct._GimpFuzzySelectTool** %fuzzy_select.addr, align 8
  %1 = bitcast %struct._GimpFuzzySelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %4, i32 5)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_fuzzy_select_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_fuzzy_select_tool_get_type() #5
  %call1 = call i64 @gimp_region_select_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_region_select_options_gui, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_region_select_options_get_type() #2

declare %struct._GtkWidget* @gimp_region_select_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_fuzzy_select_tool_class_init(%struct._GimpFuzzySelectToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpFuzzySelectToolClass*, align 8
  %region_class = alloca %struct._GimpRegionSelectToolClass*, align 8
  store %struct._GimpFuzzySelectToolClass* %klass, %struct._GimpFuzzySelectToolClass** %klass.addr, align 8
  %0 = load %struct._GimpFuzzySelectToolClass*, %struct._GimpFuzzySelectToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpFuzzySelectToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_region_select_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpRegionSelectToolClass*
  store %struct._GimpRegionSelectToolClass* %2, %struct._GimpRegionSelectToolClass** %region_class, align 8
  %call2 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i64 8)
  %3 = load %struct._GimpRegionSelectToolClass*, %struct._GimpRegionSelectToolClass** %region_class, align 8
  %undo_desc = getelementptr inbounds %struct._GimpRegionSelectToolClass, %struct._GimpRegionSelectToolClass* %3, i32 0, i32 1
  store i8* %call2, i8** %undo_desc, align 8
  %4 = load %struct._GimpRegionSelectToolClass*, %struct._GimpRegionSelectToolClass** %region_class, align 8
  %get_mask = getelementptr inbounds %struct._GimpRegionSelectToolClass, %struct._GimpRegionSelectToolClass* %4, i32 0, i32 2
  store %struct._GimpChannel* (%struct._GimpRegionSelectTool*, %struct._GimpDisplay*)* @gimp_fuzzy_select_tool_get_mask, %struct._GimpChannel* (%struct._GimpRegionSelectTool*, %struct._GimpDisplay*)** %get_mask, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpChannel* @gimp_fuzzy_select_tool_get_mask(%struct._GimpRegionSelectTool* %region_select, %struct._GimpDisplay* %display) #3 {
entry:
  %region_select.addr = alloca %struct._GimpRegionSelectTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %sel_options = alloca %struct._GimpSelectionOptions*, align 8
  %options = alloca %struct._GimpRegionSelectOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpRegionSelectTool* %region_select, %struct._GimpRegionSelectTool** %region_select.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_select.addr, align 8
  %1 = bitcast %struct._GimpRegionSelectTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_selection_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %7, %struct._GimpSelectionOptions** %sel_options, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %9 = bitcast %struct._GimpTool* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_tool_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTool*
  %call9 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %10)
  %11 = bitcast %struct._GimpToolOptions* %call9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_region_select_options_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpRegionSelectOptions*
  store %struct._GimpRegionSelectOptions* %12, %struct._GimpRegionSelectOptions** %options, align 8
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call12 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %13)
  store %struct._GimpImage* %call12, %struct._GimpImage** %image, align 8
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call13 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %14)
  store %struct._GimpDrawable* %call13, %struct._GimpDrawable** %drawable, align 8
  %15 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_select.addr, align 8
  %x14 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %15, i32 0, i32 1
  %16 = load i32, i32* %x14, align 4
  store i32 %16, i32* %x, align 4
  %17 = load %struct._GimpRegionSelectTool*, %struct._GimpRegionSelectTool** %region_select.addr, align 8
  %y15 = getelementptr inbounds %struct._GimpRegionSelectTool, %struct._GimpRegionSelectTool* %17, i32 0, i32 2
  %18 = load i32, i32* %y15, align 4
  store i32 %18, i32* %y, align 4
  %19 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %19, i32 0, i32 2
  %20 = load i32, i32* %sample_merged, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %22 = bitcast %struct._GimpDrawable* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %23, i32* %off_x, i32* %off_y)
  %24 = load i32, i32* %off_x, align 4
  %25 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %25, %24
  store i32 %sub, i32* %x, align 4
  %26 = load i32, i32* %off_y, align 4
  %27 = load i32, i32* %y, align 4
  %sub18 = sub nsw i32 %27, %26
  store i32 %sub18, i32* %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %sample_merged19 = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %30, i32 0, i32 2
  %31 = load i32, i32* %sample_merged19, align 4
  %32 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %sel_options, align 8
  %antialias = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %32, i32 0, i32 2
  %33 = load i32, i32* %antialias, align 4
  %34 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %threshold = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %34, i32 0, i32 3
  %35 = load double, double* %threshold, align 8
  %conv = fptosi double %35 to i32
  %36 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %select_transparent = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %36, i32 0, i32 1
  %37 = load i32, i32* %select_transparent, align 4
  %38 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %select_criterion = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %38, i32 0, i32 4
  %39 = load i32, i32* %select_criterion, align 4
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* %y, align 4
  %call20 = call %struct._GimpChannel* @gimp_image_contiguous_region_by_seed(%struct._GimpImage* %28, %struct._GimpDrawable* %29, i32 %31, i32 %33, i32 %conv, i32 %37, i32 %39, i32 %40, i32 %41)
  ret %struct._GimpChannel* %call20
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_options_get_type() #2

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpChannel* @gimp_image_contiguous_region_by_seed(%struct._GimpImage*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
