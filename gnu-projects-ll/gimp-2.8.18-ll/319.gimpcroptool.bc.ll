; ModuleID = './app/tools/gimpcroptool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCropToolClass = type { %struct._GimpDrawToolClass }
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
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
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
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpPaintInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpCropTool = type { %struct._GimpDrawTool, %struct._GimpImage* }
%struct._GimpRectangleTool = type opaque
%struct._GimpRectangleToolInterface = type { %struct._GTypeInterface, i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)*, void (%struct._GimpRectangleTool*)*, i32 (%struct._GimpRectangleTool*)* }
%struct._GTypeInterface = type { i64, i64 }
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
%struct._GimpCropOptions = type { %struct._GimpToolOptions, i32, i32 }
%struct._GimpCanvasGroup = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpRectangleOptions = type opaque
%struct._GimpLayer = type opaque
%struct._GimpItem = type { %struct._GimpViewable }

@gimp_crop_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpCropTool\00", align 1
@gimp_crop_tool_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpRectangleToolInterface*)* @gimp_crop_tool_rectangle_tool_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"gimp-crop-tool\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Crop\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Crop Tool: Remove edge areas from image or layer\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"_Crop\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<shift>C\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"gimp-tool-crop\00", align 1
@gimp_crop_tool_parent_class = internal global i8* null, align 8
@GimpCropTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"image-changed\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"notify::layer-only\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"notify::allow-growing\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"size-changed\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"default-aspect-numerator\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"default-aspect-denominator\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"use-string-current\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Click or press Enter to crop\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"There is no active layer to crop.\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"The active layer's pixels are locked.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_crop_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_crop_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_crop_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_crop_tool_class_intern_init to void (i8*, i8*)*), i32 256, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCropTool*)* @gimp_crop_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_rectangle_tool_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_crop_tool_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_crop_tool_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_crop_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_crop_tool_parent_class, align 8
  %1 = load i32, i32* @GimpCropTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCropTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCropToolClass*
  call void @gimp_crop_tool_class_init(%struct._GimpCropToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_init(%struct._GimpCropTool* %crop_tool) #3 {
entry:
  %crop_tool.addr = alloca %struct._GimpCropTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpCropTool* %crop_tool, %struct._GimpCropTool** %crop_tool.addr, align 8
  %0 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool.addr, align 8
  %1 = bitcast %struct._GimpCropTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_wants_click(%struct._GimpToolControl* %4, i32 1)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %6, i32 1)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %8, i32 13)
  %9 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool.addr, align 8
  %10 = bitcast %struct._GimpCropTool* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_rectangle_tool_interface_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpRectangleTool*
  call void @gimp_rectangle_tool_init(%struct._GimpRectangleTool* %11)
  %12 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool.addr, align 8
  %current_image = getelementptr inbounds %struct._GimpCropTool, %struct._GimpCropTool* %12, i32 0, i32 1
  store %struct._GimpImage* null, %struct._GimpImage** %current_image, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_rectangle_tool_iface_init(%struct._GimpRectangleToolInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpRectangleToolInterface*, align 8
  store %struct._GimpRectangleToolInterface* %iface, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %0 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %execute = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %0, i32 0, i32 1
  store i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)* @gimp_crop_tool_execute, i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)** %execute, align 8
  %1 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %cancel = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %1, i32 0, i32 2
  store void (%struct._GimpRectangleTool*)* @gimp_crop_tool_cancel, void (%struct._GimpRectangleTool*)** %cancel, align 8
  %2 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %rectangle_change_complete = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpRectangleTool*)* @gimp_crop_tool_rectangle_change_complete, i32 (%struct._GimpRectangleTool*)** %rectangle_change_complete, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rectangle_tool_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_crop_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_crop_tool_get_type() #5
  %call1 = call i64 @gimp_crop_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_crop_options_gui, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_crop_options_get_type() #2

declare %struct._GtkWidget* @gimp_crop_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_class_init(%struct._GimpCropToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCropToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpCropToolClass* %klass, %struct._GimpCropToolClass** %klass.addr, align 8
  %0 = load %struct._GimpCropToolClass*, %struct._GimpCropToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCropToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCropToolClass*, %struct._GimpCropToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCropToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpCropToolClass*, %struct._GimpCropToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpCropToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_draw_tool_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %8, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_crop_tool_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_rectangle_tool_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_rectangle_tool_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_crop_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_crop_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %14 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_crop_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %15 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_rectangle_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %16 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_rectangle_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %17 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %active_modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %17, i32 0, i32 11
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_crop_tool_active_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %active_modifier_key, align 8
  %18 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %18, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_rectangle_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %19 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %19, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_crop_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %20 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %20, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_crop_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  call void @gimp_rectangle_tool_install_properties(%struct._GObjectClass* %21)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %crop_tool = alloca %struct._GimpCropTool*, align 8
  %options = alloca %struct._GimpCropOptions*, align 8
  %gimp_context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_crop_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCropTool*
  store %struct._GimpCropTool* %2, %struct._GimpCropTool** %crop_tool, align 8
  %3 = load i8*, i8** @gimp_crop_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_crop_tool_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @gimp_rectangle_tool_constructor(%struct._GObject* %12)
  %13 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool, align 8
  %14 = bitcast %struct._GimpCropTool* %13 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_tool_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call5)
  %15 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTool*
  %tool_info7 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 1
  %16 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info7, align 8
  store %struct._GimpToolInfo* %16, %struct._GimpToolInfo** %tool_info, align 8
  %17 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call8 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %18)
  store %struct._GimpContext* %call8, %struct._GimpContext** %gimp_context, align 8
  %19 = load %struct._GimpContext*, %struct._GimpContext** %gimp_context, align 8
  %20 = bitcast %struct._GimpContext* %19 to i8*
  %21 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool, align 8
  %22 = bitcast %struct._GimpCropTool* %21 to i8*
  %call9 = call i64 @g_signal_connect_object(i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCropTool*, %struct._GimpImage*, %struct._GimpContext*)* @gimp_crop_tool_image_changed to void ()*), i8* %22, i32 2)
  %23 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool, align 8
  %24 = load %struct._GimpContext*, %struct._GimpContext** %gimp_context, align 8
  %call10 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %24)
  %25 = load %struct._GimpContext*, %struct._GimpContext** %gimp_context, align 8
  call void @gimp_crop_tool_image_changed(%struct._GimpCropTool* %23, %struct._GimpImage* %call10, %struct._GimpContext* %25)
  %26 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %27 = bitcast %struct._GObject* %26 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_tool_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call11)
  %28 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpTool*
  %call13 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %28)
  %29 = bitcast %struct._GimpToolOptions* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_crop_options_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call14)
  %30 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpCropOptions*
  store %struct._GimpCropOptions* %30, %struct._GimpCropOptions** %options, align 8
  %31 = load %struct._GimpCropOptions*, %struct._GimpCropOptions** %options, align 8
  %32 = bitcast %struct._GimpCropOptions* %31 to i8*
  %33 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %34 = bitcast %struct._GObject* %33 to i8*
  %call16 = call i64 @g_signal_connect_object(i8* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCropOptions*, %struct._GParamSpec*, %struct._GimpCropTool*)* @gimp_crop_tool_options_notify to void ()*), i8* %34, i32 0)
  %35 = load %struct._GimpCropOptions*, %struct._GimpCropOptions** %options, align 8
  %36 = bitcast %struct._GimpCropOptions* %35 to i8*
  %37 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %38 = bitcast %struct._GObject* %37 to i8*
  %call17 = call i64 @g_signal_connect_object(i8* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCropOptions*, %struct._GParamSpec*, %struct._GimpCropTool*)* @gimp_crop_tool_options_notify to void ()*), i8* %38, i32 0)
  %39 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %40 = bitcast %struct._GObject* %39 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_rectangle_tool_interface_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call18)
  %41 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpRectangleTool*
  %42 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool, align 8
  %call20 = call i32 @gimp_crop_tool_get_constraint(%struct._GimpCropTool* %42)
  call void @gimp_rectangle_tool_set_constraint(%struct._GimpRectangleTool* %41, i32 %call20)
  %43 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool, align 8
  call void @gimp_crop_tool_update_option_defaults(%struct._GimpCropTool* %43, i32 0)
  ret void
}

declare void @gimp_rectangle_tool_set_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

declare void @gimp_rectangle_tool_get_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = load i32, i32* %action.addr, align 4
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_control(%struct._GimpTool* %0, i32 %1, %struct._GimpDisplay* %2)
  %3 = load i8*, i8** @gimp_crop_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call)
  %5 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %5, i32 0, i32 4
  %6 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %8 = load i32, i32* %action.addr, align 4
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %6(%struct._GimpTool* %7, i32 %8, %struct._GimpDisplay* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %0, i32 0, i32 4
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %cmp = icmp ne %struct._GimpDisplay* %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %6 = bitcast %struct._GimpTool* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  call void @gimp_rectangle_tool_cancel(%struct._GimpRectangleTool* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 3
  %9 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %9)
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %12 = load i32, i32* %time.addr, align 4
  %13 = load i32, i32* %state.addr, align 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_button_press(%struct._GimpTool* %10, %struct._GimpCoords* %11, i32 %12, i32 %13, %struct._GimpDisplay* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #6
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %0, %struct._GimpDisplay* %1, i8* %call)
  %2 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %4 = load i32, i32* %time.addr, align 4
  %5 = load i32, i32* %state.addr, align 4
  %6 = load i32, i32* %release_type.addr, align 4
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_button_release(%struct._GimpTool* %2, %struct._GimpCoords* %3, i32 %4, i32 %5, i32 %6, %struct._GimpDisplay* %7)
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 3
  %9 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %9)
  ret void
}

declare void @gimp_rectangle_tool_motion(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #1

declare i32 @gimp_rectangle_tool_key_press(%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_active_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load i8*, i8** @gimp_crop_tool_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  %active_modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %2, i32 0, i32 11
  %3 = load void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %active_modifier_key, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %5 = load i32, i32* %key.addr, align 4
  %6 = load i32, i32* %press.addr, align 4
  %7 = load i32, i32* %state.addr, align 4
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %3(%struct._GimpTool* %4, i32 %5, i32 %6, i32 %7, %struct._GimpDisplay* %8)
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %10 = load i32, i32* %key.addr, align 4
  %11 = load i32, i32* %press.addr, align 4
  %12 = load i32, i32* %state.addr, align 4
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_active_modifier_key(%struct._GimpTool* %9, i32 %10, i32 %11, i32 %12, %struct._GimpDisplay* %13)
  ret void
}

declare void @gimp_rectangle_tool_oper_update(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %2 = load i32, i32* %state.addr, align 4
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_cursor_update(%struct._GimpTool* %0, %struct._GimpCoords* %1, i32 %2, %struct._GimpDisplay* %3)
  %4 = load i8*, i8** @gimp_crop_tool_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call)
  %6 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %6, i32 0, i32 13
  %7 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %10 = load i32, i32* %state.addr, align 4
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %7(%struct._GimpTool* %8, %struct._GimpCoords* %9, i32 %10, %struct._GimpDisplay* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_rectangle_tool_draw(%struct._GimpDrawTool* %0, %struct._GimpCanvasGroup* null)
  ret void
}

declare void @gimp_rectangle_tool_install_properties(%struct._GObjectClass*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_rectangle_tool_constructor(%struct._GObject*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_image_changed(%struct._GimpCropTool* %crop_tool, %struct._GimpImage* %image, %struct._GimpContext* %context) #3 {
entry:
  %crop_tool.addr = alloca %struct._GimpCropTool*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpCropTool* %crop_tool, %struct._GimpCropTool** %crop_tool.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool.addr, align 8
  %current_image = getelementptr inbounds %struct._GimpCropTool, %struct._GimpCropTool* %0, i32 0, i32 1
  %1 = load %struct._GimpImage*, %struct._GimpImage** %current_image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool.addr, align 8
  %current_image1 = getelementptr inbounds %struct._GimpCropTool, %struct._GimpCropTool* %2, i32 0, i32 1
  %3 = load %struct._GimpImage*, %struct._GimpImage** %current_image1, align 8
  %4 = bitcast %struct._GimpImage* %3 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpCropTool*)* @gimp_crop_tool_image_size_changed to i8*), i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool2 = icmp ne %struct._GimpImage* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %7 = bitcast %struct._GimpImage* %6 to i8*
  %8 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool.addr, align 8
  %9 = bitcast %struct._GimpCropTool* %8 to i8*
  %call4 = call i64 @g_signal_connect_object(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCropTool*)* @gimp_crop_tool_image_size_changed to void ()*), i8* %9, i32 2)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %11 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool.addr, align 8
  %current_image6 = getelementptr inbounds %struct._GimpCropTool, %struct._GimpCropTool* %11, i32 0, i32 1
  store %struct._GimpImage* %10, %struct._GimpImage** %current_image6, align 8
  %12 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool.addr, align 8
  %13 = bitcast %struct._GimpCropTool* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_crop_tool_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpCropTool*
  call void @gimp_crop_tool_update_option_defaults(%struct._GimpCropTool* %14, i32 0)
  ret void
}

declare %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext*) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_options_notify(%struct._GimpCropOptions* %options, %struct._GParamSpec* %pspec, %struct._GimpCropTool* %crop_tool) #3 {
entry:
  %options.addr = alloca %struct._GimpCropOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %crop_tool.addr = alloca %struct._GimpCropTool*, align 8
  store %struct._GimpCropOptions* %options, %struct._GimpCropOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpCropTool* %crop_tool, %struct._GimpCropTool** %crop_tool.addr, align 8
  %0 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool.addr, align 8
  %1 = bitcast %struct._GimpCropTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  %3 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool.addr, align 8
  %call2 = call i32 @gimp_crop_tool_get_constraint(%struct._GimpCropTool* %3)
  call void @gimp_rectangle_tool_set_constraint(%struct._GimpRectangleTool* %2, i32 %call2)
  ret void
}

declare void @gimp_rectangle_tool_set_constraint(%struct._GimpRectangleTool*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_crop_tool_get_constraint(%struct._GimpCropTool* %crop_tool) #3 {
entry:
  %retval = alloca i32, align 4
  %crop_tool.addr = alloca %struct._GimpCropTool*, align 8
  %crop_options = alloca %struct._GimpCropOptions*, align 8
  store %struct._GimpCropTool* %crop_tool, %struct._GimpCropTool** %crop_tool.addr, align 8
  %0 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool.addr, align 8
  %1 = bitcast %struct._GimpCropTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_crop_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpCropOptions*
  store %struct._GimpCropOptions* %4, %struct._GimpCropOptions** %crop_options, align 8
  %5 = load %struct._GimpCropOptions*, %struct._GimpCropOptions** %crop_options, align 8
  %allow_growing = getelementptr inbounds %struct._GimpCropOptions, %struct._GimpCropOptions* %5, i32 0, i32 2
  %6 = load i32, i32* %allow_growing, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpCropOptions*, %struct._GimpCropOptions** %crop_options, align 8
  %layer_only = getelementptr inbounds %struct._GimpCropOptions, %struct._GimpCropOptions* %7, i32 0, i32 1
  %8 = load i32, i32* %layer_only, align 4
  %tobool5 = icmp ne i32 %8, 0
  %cond = select i1 %tobool5, i32 2, i32 1
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_update_option_defaults(%struct._GimpCropTool* %crop_tool, i32 %ignore_pending) #3 {
entry:
  %crop_tool.addr = alloca %struct._GimpCropTool*, align 8
  %ignore_pending.addr = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  %rectangle_tool = alloca %struct._GimpRectangleTool*, align 8
  %rectangle_options = alloca %struct._GimpRectangleOptions*, align 8
  store %struct._GimpCropTool* %crop_tool, %struct._GimpCropTool** %crop_tool.addr, align 8
  store i32 %ignore_pending, i32* %ignore_pending.addr, align 4
  %0 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool.addr, align 8
  %1 = bitcast %struct._GimpCropTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %5, %struct._GimpRectangleTool** %rectangle_tool, align 8
  %6 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle_tool, align 8
  %7 = bitcast %struct._GimpRectangleTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %call6 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %8)
  %9 = bitcast %struct._GimpToolOptions* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_rectangle_options_interface_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpRectangleOptions*
  store %struct._GimpRectangleOptions* %10, %struct._GimpRectangleOptions** %rectangle_options, align 8
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %cmp = icmp ne %struct._GimpDisplay* %12, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, i32* %ignore_pending.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle_tool, align 8
  %15 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %rectangle_options, align 8
  %16 = bitcast %struct._GimpRectangleOptions* %15 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  call void @gimp_rectangle_tool_pending_size_set(%struct._GimpRectangleTool* %14, %struct._GObject* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0))
  %18 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %rectangle_options, align 8
  %19 = bitcast %struct._GimpRectangleOptions* %18 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %21 = bitcast %struct._GObject* %20 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i32 1, i8* null)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %22 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle_tool, align 8
  %23 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %rectangle_options, align 8
  %24 = bitcast %struct._GimpRectangleOptions* %23 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  call void @gimp_rectangle_tool_constraint_size_set(%struct._GimpRectangleTool* %22, %struct._GObject* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0))
  %26 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %rectangle_options, align 8
  %27 = bitcast %struct._GimpRectangleOptions* %26 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %29 = bitcast %struct._GObject* %28 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_image_size_changed(%struct._GimpCropTool* %crop_tool) #3 {
entry:
  %crop_tool.addr = alloca %struct._GimpCropTool*, align 8
  store %struct._GimpCropTool* %crop_tool, %struct._GimpCropTool** %crop_tool.addr, align 8
  %0 = load %struct._GimpCropTool*, %struct._GimpCropTool** %crop_tool.addr, align 8
  call void @gimp_crop_tool_update_option_defaults(%struct._GimpCropTool* %0, i32 0)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_rectangle_options_interface_get_type() #2

declare void @gimp_rectangle_tool_pending_size_set(%struct._GimpRectangleTool*, %struct._GObject*, i8*, i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_rectangle_tool_constraint_size_set(%struct._GimpRectangleTool*, %struct._GObject*, i8*, i8*) #1

declare void @gimp_rectangle_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #1

declare void @gimp_rectangle_tool_cancel(%struct._GimpRectangleTool*) #1

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

declare void @gimp_rectangle_tool_button_press(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #1

declare void @gimp_tool_push_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare void @gimp_rectangle_tool_button_release(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare void @gimp_rectangle_tool_active_modifier_key(%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*) #1

declare void @gimp_rectangle_tool_cursor_update(%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*) #1

declare void @gimp_rectangle_tool_draw(%struct._GimpDrawTool*, %struct._GimpCanvasGroup*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_crop_tool_execute(%struct._GimpRectangleTool* %rectangle, i32 %x, i32 %y, i32 %w, i32 %h) #3 {
entry:
  %retval = alloca i32, align 4
  %rectangle.addr = alloca %struct._GimpRectangleTool*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  %options = alloca %struct._GimpCropOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpRectangleTool* %rectangle, %struct._GimpRectangleTool** %rectangle.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
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
  %call5 = call i64 @gimp_crop_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpCropOptions*
  store %struct._GimpCropOptions* %7, %struct._GimpCropOptions** %options, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 4
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call7 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %9)
  store %struct._GimpImage* %call7, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 4
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display8, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %10, %struct._GimpDisplay* %12)
  %13 = load i32, i32* %w.addr, align 4
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %entry
  %14 = load i32, i32* %h.addr, align 4
  %cmp9 = icmp sgt i32 %14, 0
  br i1 %cmp9, label %if.then, label %if.end.29

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct._GimpCropOptions*, %struct._GimpCropOptions** %options, align 8
  %layer_only = getelementptr inbounds %struct._GimpCropOptions, %struct._GimpCropOptions* %15, i32 0, i32 1
  %16 = load i32, i32* %layer_only, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.10, label %if.end.24

if.then.10:                                       ; preds = %if.then
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call11 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %17)
  store %struct._GimpLayer* %call11, %struct._GimpLayer** %layer, align 8
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool12 = icmp ne %struct._GimpLayer* %18, null
  br i1 %tobool12, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %if.then.10
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display14 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %20, i32 0, i32 4
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display14, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0)) #6
  call void @gimp_tool_message_literal(%struct._GimpTool* %19, %struct._GimpDisplay* %21, i8* %call15)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.10
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %23 = bitcast %struct._GimpLayer* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %call18 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %24)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end
  %25 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display21 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %26, i32 0, i32 4
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display21, align 8
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0)) #6
  call void @gimp_tool_message_literal(%struct._GimpTool* %25, %struct._GimpDisplay* %27, i8* %call22)
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %29 = load %struct._GimpCropOptions*, %struct._GimpCropOptions** %options, align 8
  %30 = bitcast %struct._GimpCropOptions* %29 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_context_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call25)
  %31 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpContext*
  %32 = load i32, i32* %x.addr, align 4
  %33 = load i32, i32* %y.addr, align 4
  %34 = load i32, i32* %w.addr, align 4
  %35 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %34, %35
  %36 = load i32, i32* %h.addr, align 4
  %37 = load i32, i32* %y.addr, align 4
  %add27 = add nsw i32 %36, %37
  %38 = load %struct._GimpCropOptions*, %struct._GimpCropOptions** %options, align 8
  %layer_only28 = getelementptr inbounds %struct._GimpCropOptions, %struct._GimpCropOptions* %38, i32 0, i32 1
  %39 = load i32, i32* %layer_only28, align 4
  call void @gimp_image_crop(%struct._GimpImage* %28, %struct._GimpContext* %31, i32 %32, i32 %33, i32 %add, i32 %add27, i32 %39, i32 1)
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %40)
  store i32 1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.end.24, %if.then.20, %if.then.13
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal void @gimp_crop_tool_cancel(%struct._GimpRectangleTool* %rect_tool) #3 {
entry:
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_crop_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCropTool*
  call void @gimp_crop_tool_update_option_defaults(%struct._GimpCropTool* %2, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_crop_tool_rectangle_change_complete(%struct._GimpRectangleTool* %rectangle) #3 {
entry:
  %rectangle.addr = alloca %struct._GimpRectangleTool*, align 8
  store %struct._GimpRectangleTool* %rectangle, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rectangle.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_crop_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCropTool*
  call void @gimp_crop_tool_update_option_defaults(%struct._GimpCropTool* %2, i32 0)
  ret i32 1
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

declare void @gimp_tool_message_literal(%struct._GimpTool*, %struct._GimpDisplay*, i8*) #1

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @gimp_image_crop(%struct._GimpImage*, %struct._GimpContext*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare void @gimp_tool_control_set_wants_click(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_precision(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_rectangle_tool_init(%struct._GimpRectangleTool*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
