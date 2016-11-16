; ModuleID = './app/actions/vectors-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
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
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct._GimpItem = type { %struct._GimpViewable }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpToolControl = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpVectorTool = type { %struct._GimpDrawTool, i32, i32, i32, i32, double, double, i32, i32, %struct._GimpAnchor*, %struct._GimpAnchor*, %struct._GimpStroke*, double, %struct._GimpVectors*, %struct._GimpVectors*, i32, %struct._GimpAnchor*, %struct._GimpStroke*, i32 }
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpAnchor = type opaque
%struct._GimpStroke = type opaque
%struct._VectorsOptionsDialog = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpImage*, %struct._GimpVectors* }
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
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GimpStrokeOptions = type { %struct._GimpFillOptions }
%struct._GimpFillOptions = type { %struct._GimpContext }
%struct._GimpPaintOptions = type opaque
%struct._VectorsExportDialog = type { %struct._GtkWidget*, %struct._GimpImage*, i32 }
%struct._GtkFileChooser = type opaque
%struct._VectorsImportDialog = type { %struct._GtkWidget*, %struct._GimpImage*, i32, i32 }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }

@.str = private unnamed_addr constant [17 x i8] c"gimp-vector-tool\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Path Attributes\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"gimp-vectors-edit\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Edit Path Attributes\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"gimp-path-edit\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@vectors_name = internal global i8* null, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"New Path\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"gimp-vectors-new\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"gimp-path\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"New Path Options\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"gimp-path-new\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"plug-in-sel2path-advanced\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"plug-in-sel2path\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Selection to path procedure lookup failed.\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"There is no active layer or channel to stroke to.\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Stroke Path\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"gimp-path-stroke\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"saved-stroke-options\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@vectors_export_active_only = internal global i32 1, align 4
@.str.21 = private unnamed_addr constant [27 x i8] c"gimp-vectors-export-folder\00", align 1
@vectors_import_merge = internal global i32 0, align 4
@vectors_import_scale = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [27 x i8] c"gimp-vectors-import-folder\00", align 1

; Function Attrs: nounwind uwtable
define void @vectors_vectors_tool_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %active_tool = alloca %struct._GimpTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %__inst51 = alloca %struct._GTypeInstance*, align 8
  %__t53 = alloca i64, align 8
  %__r56 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.76

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.76

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call5 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %5)
  store %struct._GimpTool* %call5, %struct._GimpTool** %active_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %7, %struct._GTypeInstance** %__inst, align 8
  %call6 = call i64 @gimp_vector_tool_get_type() #5
  store i64 %call6, i64* %__t, align 8
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool7 = icmp ne %struct._GTypeInstance* %8, null
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %if.end.4
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.end.4
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool9 = icmp ne %struct._GTypeClass* %10, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %13, %14
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.14

if.else.12:                                       ; preds = %land.lhs.true, %if.else
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %16 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %15, i64 %16) #6
  store i32 %call13, i32* %__r, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.8
  %17 = load i32, i32* %__r, align 4
  store i32 %17, i32* %tmp
  %18 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %18, 0
  br i1 %tobool16, label %if.end.49, label %if.then.17

if.then.17:                                       ; preds = %if.end.15
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp19 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %call20 = call %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  store %struct._GimpToolInfo* %call20, %struct._GimpToolInfo** %tool_info, align 8
  %21 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %22 = bitcast %struct._GimpToolInfo* %21 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %22, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_tool_info_get_type() #5
  store i64 %call25, i64* %__t24, align 8
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %23, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.17
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %if.then.17
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %25, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type35, align 8
  %29 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %28, %29
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %31 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %30, i64 %31) #6
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %32 = load i32, i32* %__r27, align 4
  store i32 %32, i32* %tmp42
  %33 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %33, 0
  br i1 %tobool43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %if.end.41
  %34 = load i8*, i8** %data.addr, align 8
  %call45 = call %struct._GimpContext* @action_data_get_context(i8* %34)
  %35 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  call void @gimp_context_set_tool(%struct._GimpContext* %call45, %struct._GimpToolInfo* %35)
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp46 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %36, i32 0, i32 1
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp46, align 8
  %call47 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %37)
  store %struct._GimpTool* %call47, %struct._GimpTool** %active_tool, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %if.end.41
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.15
  %38 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %39 = bitcast %struct._GimpTool* %38 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %39, %struct._GTypeInstance** %__inst51, align 8
  %call54 = call i64 @gimp_vector_tool_get_type() #5
  store i64 %call54, i64* %__t53, align 8
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %tobool57 = icmp ne %struct._GTypeInstance* %40, null
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %if.end.49
  store i32 0, i32* %__r56, align 4
  br label %if.end.70

if.else.59:                                       ; preds = %if.end.49
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %tobool61 = icmp ne %struct._GTypeClass* %42, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.else.67

land.lhs.true.62:                                 ; preds = %if.else.59
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class63 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class63, align 8
  %g_type64 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type64, align 8
  %46 = load i64, i64* %__t53, align 8
  %cmp65 = icmp eq i64 %45, %46
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %land.lhs.true.62
  store i32 1, i32* %__r56, align 4
  br label %if.end.69

if.else.67:                                       ; preds = %land.lhs.true.62, %if.else.59
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %48 = load i64, i64* %__t53, align 8
  %call68 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %47, i64 %48) #6
  store i32 %call68, i32* %__r56, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.58
  %49 = load i32, i32* %__r56, align 4
  store i32 %49, i32* %tmp71
  %50 = load i32, i32* %tmp71
  %tobool72 = icmp ne i32 %50, 0
  br i1 %tobool72, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.end.70
  %51 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %52 = bitcast %struct._GimpTool* %51 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_vector_tool_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call74)
  %53 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpVectorTool*
  %54 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vector_tool_set_vectors(%struct._GimpVectorTool* %53, %struct._GimpVectors* %54)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then, %if.then.3, %if.then.73, %if.end.70
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #1

declare %struct._GimpTool* @tool_manager_get_active(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_vector_tool_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_info_get_type() #2

declare void @gimp_context_set_tool(%struct._GimpContext*, %struct._GimpToolInfo*) #1

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare void @gimp_vector_tool_set_vectors(%struct._GimpVectorTool*, %struct._GimpVectors*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @vectors_edit_attributes_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %options = alloca %struct._VectorsOptionsDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GtkWidget* @action_data_get_widget(i8* %4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %8 = load i8*, i8** %data.addr, align 8
  %call9 = call %struct._GimpContext* @action_data_get_context(i8* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %11 = bitcast %struct._GimpVectors* %10 to i8*
  %call10 = call i8* @gimp_object_get_name(i8* %11)
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #7
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #7
  %call13 = call %struct._VectorsOptionsDialog* @vectors_options_dialog_new(%struct._GimpImage* %6, %struct._GimpVectors* %7, %struct._GimpContext* %call9, %struct._GtkWidget* %9, i8* %call10, i8* %call11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %call12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  store %struct._VectorsOptionsDialog* %call13, %struct._VectorsOptionsDialog** %options, align 8
  %12 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %dialog = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %12, i32 0, i32 0
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %15 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %16 = bitcast %struct._VectorsOptionsDialog* %15 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._VectorsOptionsDialog*)* @vectors_edit_vectors_response to void ()*), i8* %16, void (i8*, %struct._GClosure*)* null, i32 0)
  %17 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %dialog15 = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %17, i32 0, i32 0
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog15, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._GtkWidget* @action_data_get_widget(i8*) #1

declare %struct._VectorsOptionsDialog* @vectors_options_dialog_new(%struct._GimpImage*, %struct._GimpVectors*, %struct._GimpContext*, %struct._GtkWidget*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @vectors_edit_vectors_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._VectorsOptionsDialog* %options) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %options.addr = alloca %struct._VectorsOptionsDialog*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %new_name = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._VectorsOptionsDialog* %options, %struct._VectorsOptionsDialog** %options.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options.addr, align 8
  %vectors1 = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %1, i32 0, i32 3
  %2 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors1, align 8
  store %struct._GimpVectors* %2, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options.addr, align 8
  %name_entry = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %6)
  store i8* %call3, i8** %new_name, align 8
  %7 = load i8*, i8** %new_name, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %9 = bitcast %struct._GimpVectors* %8 to i8*
  %call4 = call i8* @gimp_object_get_name(i8* %9)
  %call5 = call i32 @strcmp(i8* %7, i8* %call4) #6
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %11 = bitcast %struct._GimpVectors* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %13 = load i8*, i8** %new_name, align 8
  %call9 = call i32 @gimp_item_rename(%struct._GimpItem* %12, i8* %13, %struct._GError** null)
  %14 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options.addr, align 8
  %image = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %14, i32 0, i32 2
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %15)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %16 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options.addr, align 8
  %dialog = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %16, i32 0, i32 0
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %17)
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @vectors_new_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %options = alloca %struct._VectorsOptionsDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %7 = load i8*, i8** @vectors_name, align 8
  %tobool6 = icmp ne i8* %7, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %8 = load i8*, i8** @vectors_name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %8, %cond.true ], [ %call7, %cond.false ]
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)) #7
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0)) #7
  %call10 = call %struct._VectorsOptionsDialog* @vectors_options_dialog_new(%struct._GimpImage* %4, %struct._GimpVectors* null, %struct._GimpContext* %call5, %struct._GtkWidget* %6, i8* %cond, i8* %call8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* %call9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  store %struct._VectorsOptionsDialog* %call10, %struct._VectorsOptionsDialog** %options, align 8
  %9 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %dialog = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %9, i32 0, i32 0
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %12 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %13 = bitcast %struct._VectorsOptionsDialog* %12 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._VectorsOptionsDialog*)* @vectors_new_vectors_response to void ()*), i8* %13, void (i8*, %struct._GClosure*)* null, i32 0)
  %14 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options, align 8
  %dialog12 = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %14, i32 0, i32 0
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog12, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  br label %return

return:                                           ; preds = %cond.end, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @vectors_new_vectors_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._VectorsOptionsDialog* %options) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %options.addr = alloca %struct._VectorsOptionsDialog*, align 8
  %new_vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._VectorsOptionsDialog* %options, %struct._VectorsOptionsDialog** %options.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @vectors_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %2 = load i8*, i8** @vectors_name, align 8
  call void @g_free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %3 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options.addr, align 8
  %name_entry = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %6)
  %call4 = call noalias i8* @g_strdup(i8* %call3)
  store i8* %call4, i8** @vectors_name, align 8
  %7 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options.addr, align 8
  %image = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %7, i32 0, i32 2
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load i8*, i8** @vectors_name, align 8
  %call5 = call %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage* %8, i8* %9)
  store %struct._GimpVectors* %call5, %struct._GimpVectors** %new_vectors, align 8
  %10 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options.addr, align 8
  %image6 = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %10, i32 0, i32 2
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image6, align 8
  %12 = load %struct._GimpVectors*, %struct._GimpVectors** %new_vectors, align 8
  %call7 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %11, %struct._GimpVectors* %12, %struct._GimpVectors* inttoptr (i64 1 to %struct._GimpVectors*), i32 -1, i32 1)
  %13 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options.addr, align 8
  %image8 = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %13, i32 0, i32 2
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image8, align 8
  call void @gimp_image_flush(%struct._GimpImage* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %15 = load %struct._VectorsOptionsDialog*, %struct._VectorsOptionsDialog** %options.addr, align 8
  %dialog = getelementptr inbounds %struct._VectorsOptionsDialog, %struct._VectorsOptionsDialog* %15, i32 0, i32 0
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define void @vectors_new_last_vals_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %new_vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %3 = load i8*, i8** @vectors_name, align 8
  %call1 = call %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage* %2, i8* %3)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %new_vectors, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %new_vectors, align 8
  %call2 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %4, %struct._GimpVectors* %5, %struct._GimpVectors* inttoptr (i64 1 to %struct._GimpVectors*), i32 -1, i32 1)
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %6)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage*, i8*) #1

declare i32 @gimp_image_add_vectors(%struct._GimpImage*, %struct._GimpVectors*, %struct._GimpVectors*, i32, i32) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @vectors_raise_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %6 = bitcast %struct._GimpVectors* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_image_raise_item(%struct._GimpImage* %4, %struct._GimpItem* %7, %struct._GError** null)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_image_raise_item(%struct._GimpImage*, %struct._GimpItem*, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

; Function Attrs: nounwind uwtable
define void @vectors_raise_to_top_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %6 = bitcast %struct._GimpVectors* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_image_raise_item_to_top(%struct._GimpImage* %4, %struct._GimpItem* %7)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_image_raise_item_to_top(%struct._GimpImage*, %struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define void @vectors_lower_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %6 = bitcast %struct._GimpVectors* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_image_lower_item(%struct._GimpImage* %4, %struct._GimpItem* %7, %struct._GError** null)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_image_lower_item(%struct._GimpImage*, %struct._GimpItem*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @vectors_lower_to_bottom_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %6 = bitcast %struct._GimpVectors* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_image_lower_item_to_bottom(%struct._GimpImage* %4, %struct._GimpItem* %7)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_image_lower_item_to_bottom(%struct._GimpImage*, %struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define void @vectors_duplicate_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %new_vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %5 = bitcast %struct._GimpVectors* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %8 = bitcast %struct._GimpVectors* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call7 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %6, i64 %10)
  %11 = bitcast %struct._GimpItem* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_vectors_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpVectors*
  store %struct._GimpVectors* %12, %struct._GimpVectors** %new_vectors, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %new_vectors, align 8
  %15 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call10 = call %struct._GimpVectors* @gimp_vectors_get_parent(%struct._GimpVectors* %15)
  %call11 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %13, %struct._GimpVectors* %14, %struct._GimpVectors* %call10, i32 -1, i32 1)
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %16)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #2

declare %struct._GimpVectors* @gimp_vectors_get_parent(%struct._GimpVectors*) #1

; Function Attrs: nounwind uwtable
define void @vectors_delete_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_image_remove_vectors(%struct._GimpImage* %4, %struct._GimpVectors* %5, i32 1, %struct._GimpVectors* null)
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %6)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare void @gimp_image_remove_vectors(%struct._GimpImage*, %struct._GimpVectors*, i32, %struct._GimpVectors*) #1

; Function Attrs: nounwind uwtable
define void @vectors_merge_visible_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GtkWidget* @action_data_get_widget(i8* %4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call %struct._GimpVectors* @gimp_image_merge_visible_vectors(%struct._GimpImage* %6, %struct._GError** %error)
  %tobool10 = icmp ne %struct._GimpVectors* %call9, null
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %12 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %12, i32 0, i32 2
  %13 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %8, %struct._GObject* %11, i32 1, i8* %13)
  call void @g_clear_error(%struct._GError** %error)
  br label %return

if.end.13:                                        ; preds = %if.end.8
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %14)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.11, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._GimpVectors* @gimp_image_merge_visible_vectors(%struct._GimpImage*, %struct._GError**) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @vectors_to_selection_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %5 = bitcast %struct._GimpVectors* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %7 = load i32, i32* %value.addr, align 4
  call void @gimp_item_to_selection(%struct._GimpItem* %6, i32 %7, i32 1, i32 0, double 0.000000e+00, double 0.000000e+00)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare void @gimp_item_to_selection(%struct._GimpItem*, i32, i32, i32, double, double) #1

; Function Attrs: nounwind uwtable
define void @vectors_selection_to_vectors_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %args = alloca %struct._GValueArray*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.32

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.32

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %value.addr, align 4
  %tobool5 = icmp ne i32 %4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 44
  %7 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %call7 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpProcedure* %call7, %struct._GimpProcedure** %procedure, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end.4
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp8 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %8, i32 0, i32 1
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp8, align 8
  %pdb9 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %9, i32 0, i32 44
  %10 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb9, align 8
  %call10 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpProcedure* %call10, %struct._GimpProcedure** %procedure, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.6
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool12 = icmp ne %struct._GimpProcedure* %11, null
  br i1 %tobool12, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %if.end.11
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp14 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp14, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  call void @gimp_message_literal(%struct._Gimp* %13, %struct._GObject* %16, i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.32

if.end.16:                                        ; preds = %if.end.11
  %17 = load i8*, i8** %data.addr, align 8
  %call17 = call %struct._GimpContext* @action_data_get_context(i8* %17)
  %call18 = call i8* @gimp_context_get_display(%struct._GimpContext* %call17)
  %18 = bitcast i8* %call18 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %18, %struct._GimpDisplay** %display, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure* %19)
  store %struct._GValueArray* %call19, %struct._GValueArray** %args, align 8
  %20 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @gimp_value_array_truncate(%struct._GValueArray* %20, i32 2)
  %21 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 0
  call void @g_value_set_int(%struct._GValue* %arrayidx, i32 0)
  %23 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values20 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values20, align 8
  %arrayidx21 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_value_set_image(%struct._GValue* %arrayidx21, %struct._GimpImage* %25)
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp22 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %27, i32 0, i32 1
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp22, align 8
  %29 = load i8*, i8** %data.addr, align 8
  %call23 = call %struct._GimpContext* @action_data_get_context(i8* %29)
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %31 = bitcast %struct._GimpDisplay* %30 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_progress_interface_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call24)
  %32 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpProgress*
  %33 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %34 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %35 = bitcast %struct._GimpDisplay* %34 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_object_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call26)
  %36 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpObject*
  call void @gimp_procedure_execute_async(%struct._GimpProcedure* %26, %struct._Gimp* %28, %struct._GimpContext* %call23, %struct._GimpProgress* %32, %struct._GValueArray* %33, %struct._GimpObject* %36, %struct._GError** %error)
  %37 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @g_value_array_free(%struct._GValueArray* %37)
  %38 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool28 = icmp ne %struct._GError* %38, null
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.16
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp30 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %39, i32 0, i32 1
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp30, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  %44 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %44, i32 0, i32 2
  %45 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %40, %struct._GObject* %43, i32 2, i8* %45)
  %46 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %46)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then, %if.then.3, %if.then.13, %if.then.29, %if.end.16
  ret void
}

declare %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB*, i8*) #1

declare i8* @gimp_context_get_display(%struct._GimpContext*) #1

declare %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure*) #1

declare void @gimp_value_array_truncate(%struct._GValueArray*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @gimp_value_set_image(%struct._GValue*, %struct._GimpImage*) #1

declare void @gimp_procedure_execute_async(%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GimpObject*, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @g_value_array_free(%struct._GValueArray*) #1

declare void @g_error_free(%struct._GError*) #1

; Function Attrs: nounwind uwtable
define void @vectors_stroke_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GtkWidget* @action_data_get_widget(i8* %4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %6)
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool10 = icmp ne %struct._GimpDrawable* %7, null
  br i1 %tobool10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %8, i32 0, i32 1
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i32 0, i32 0)) #7
  call void @gimp_message_literal(%struct._Gimp* %9, %struct._GObject* %12, i32 1, i8* %call13)
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %14 = bitcast %struct._GimpVectors* %13 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call15)
  %15 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItem*
  %16 = load i8*, i8** %data.addr, align 8
  %call17 = call %struct._GimpContext* @action_data_get_context(i8* %16)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #7
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call19 = call %struct._GtkWidget* @stroke_dialog_new(%struct._GimpItem* %15, %struct._GimpContext* %call17, i8* %call18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), %struct._GtkWidget* %17)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %dialog, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  br label %return

return:                                           ; preds = %if.end.14, %if.then.11, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare %struct._GtkWidget* @stroke_dialog_new(%struct._GimpItem*, %struct._GimpContext*, i8*, i8*, i8*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @vectors_stroke_last_vals_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %options = alloca %struct._GimpStrokeOptions*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %4)
  store %struct._GimpContext* %call5, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool6 = icmp ne %struct._GimpContext* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load i8*, i8** %data.addr, align 8
  %call9 = call %struct._GtkWidget* @action_data_get_widget(i8* %6)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %widget, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool10 = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call13 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %8)
  store %struct._GimpDrawable* %call13, %struct._GimpDrawable** %drawable, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool14 = icmp ne %struct._GimpDrawable* %9, null
  br i1 %tobool14, label %if.end.18, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i32 0, i32 0)) #7
  call void @gimp_message_literal(%struct._Gimp* %11, %struct._GObject* %14, i32 1, i8* %call17)
  br label %return

if.end.18:                                        ; preds = %if.end.12
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp19 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %17 = bitcast %struct._Gimp* %16 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %call21 = call i8* @g_object_get_data(%struct._GObject* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0))
  %19 = bitcast i8* %call21 to %struct._GimpStrokeOptions*
  store %struct._GimpStrokeOptions* %19, %struct._GimpStrokeOptions** %options, align 8
  %20 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %tobool22 = icmp ne %struct._GimpStrokeOptions* %20, null
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.18
  %21 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %22 = bitcast %struct._GimpStrokeOptions* %21 to i8*
  %call24 = call i8* @g_object_ref(i8* %22)
  br label %if.end.27

if.else:                                          ; preds = %if.end.18
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp25 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %23, i32 0, i32 1
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp25, align 8
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call26 = call %struct._GimpStrokeOptions* @gimp_stroke_options_new(%struct._Gimp* %24, %struct._GimpContext* %25, i32 1)
  store %struct._GimpStrokeOptions* %call26, %struct._GimpStrokeOptions** %options, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.23
  %26 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %27 = bitcast %struct._GimpVectors* %26 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call28)
  %28 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %31 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %call30 = call i32 @gimp_item_stroke(%struct._GimpItem* %28, %struct._GimpDrawable* %29, %struct._GimpContext* %30, %struct._GimpStrokeOptions* %31, %struct._GimpPaintOptions* null, i32 1, %struct._GimpProgress* null, %struct._GError** %error)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.else.35, label %if.then.32

if.then.32:                                       ; preds = %if.end.27
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp33 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %32, i32 0, i32 1
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp33, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 80)
  %36 = bitcast %struct._GTypeInstance* %call34 to %struct._GObject*
  %37 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %37, i32 0, i32 2
  %38 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %33, %struct._GObject* %36, i32 1, i8* %38)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.36

if.else.35:                                       ; preds = %if.end.27
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %39)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.32
  %40 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %41 = bitcast %struct._GimpStrokeOptions* %40 to i8*
  call void @g_object_unref(i8* %41)
  br label %return

return:                                           ; preds = %if.end.36, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i8* @g_object_ref(i8*) #1

declare %struct._GimpStrokeOptions* @gimp_stroke_options_new(%struct._Gimp*, %struct._GimpContext*, i32) #1

declare i32 @gimp_item_stroke(%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpContext*, %struct._GimpStrokeOptions*, %struct._GimpPaintOptions*, i32, %struct._GimpProgress*, %struct._GError**) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @vectors_copy_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %svg = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.8

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call5 = call i8* @gimp_vectors_export_string(%struct._GimpImage* %4, %struct._GimpVectors* %5)
  store i8* %call5, i8** %svg, align 8
  %6 = load i8*, i8** %svg, align 8
  %tobool6 = icmp ne i8* %6, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %9 = load i8*, i8** %svg, align 8
  call void @gimp_clipboard_set_svg(%struct._Gimp* %8, i8* %9)
  %10 = load i8*, i8** %svg, align 8
  call void @g_free(i8* %10)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.then.3, %if.then.7, %if.end.4
  ret void
}

declare i8* @gimp_vectors_export_string(%struct._GimpImage*, %struct._GimpVectors*) #1

declare void @gimp_clipboard_set_svg(%struct._Gimp*, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @vectors_paste_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %svg = alloca i8*, align 8
  %svg_size = alloca i64, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.14

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.14

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call5 = call i8* @gimp_clipboard_get_svg(%struct._Gimp* %5, i64* %svg_size)
  store i8* %call5, i8** %svg, align 8
  %6 = load i8*, i8** %svg, align 8
  %tobool6 = icmp ne i8* %6, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end.4
  store %struct._GError* null, %struct._GError** %error, align 8
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = load i8*, i8** %svg, align 8
  %9 = load i64, i64* %svg_size, align 8
  %call8 = call i32 @gimp_vectors_import_buffer(%struct._GimpImage* %7, i8* %8, i64 %9, i32 1, i32 0, %struct._GimpVectors* inttoptr (i64 1 to %struct._GimpVectors*), i32 -1, %struct._GList** null, %struct._GError** %error)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp11 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp11, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %15 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %15, i32 0, i32 2
  %16 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %11, %struct._GObject* %14, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %16)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.13

if.else:                                          ; preds = %if.then.7
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %17)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.10
  %18 = load i8*, i8** %svg, align 8
  call void @g_free(i8* %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.then.3, %if.end.13, %if.end.4
  ret void
}

declare i8* @gimp_clipboard_get_svg(%struct._Gimp*, i64*) #1

declare i32 @gimp_vectors_import_buffer(%struct._GimpImage*, i8*, i64, i32, i32, %struct._GimpVectors*, i32, %struct._GList**, %struct._GError**) #1

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @vectors_export_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct._VectorsExportDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %folder = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GtkWidget* @action_data_get_widget(i8* %4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %8 = load i32, i32* @vectors_export_active_only, align 4
  %call9 = call %struct._VectorsExportDialog* @vectors_export_dialog_new(%struct._GimpImage* %6, %struct._GtkWidget* %7, i32 %8)
  store %struct._VectorsExportDialog* %call9, %struct._VectorsExportDialog** %dialog, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %11 = bitcast %struct._Gimp* %10 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %call11 = call i8* @g_object_get_data(%struct._GObject* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0))
  store i8* %call11, i8** %folder, align 8
  %13 = load i8*, i8** %folder, align 8
  %tobool12 = icmp ne i8* %13, null
  br i1 %tobool12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.8
  %14 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %dialog14 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %14, i32 0, i32 0
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog14, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_file_chooser_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkFileChooser*
  %18 = load i8*, i8** %folder, align 8
  %call17 = call i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser* %17, i8* %18)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %if.end.8
  %19 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %dialog19 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %19, i32 0, i32 0
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog19, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %22 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %23 = bitcast %struct._VectorsExportDialog* %22 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._VectorsExportDialog*)* @vectors_export_response to void ()*), i8* %23, void (i8*, %struct._GClosure*)* null, i32 0)
  %24 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %dialog21 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %24, i32 0, i32 0
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog21, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  br label %return

return:                                           ; preds = %if.end.18, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._VectorsExportDialog* @vectors_export_dialog_new(%struct._GimpImage*, %struct._GtkWidget*, i32) #1

declare i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @vectors_export_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._VectorsExportDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct._VectorsExportDialog*, align 8
  %chooser = alloca %struct._GtkFileChooser*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._VectorsExportDialog* %dialog, %struct._VectorsExportDialog** %dialog.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  store %struct._GtkFileChooser* %3, %struct._GtkFileChooser** %chooser, align 8
  store %struct._GimpVectors* null, %struct._GimpVectors** %vectors, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %4 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog.addr, align 8
  %active_only = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %4, i32 0, i32 2
  %5 = load i32, i32* %active_only, align 4
  store i32 %5, i32* @vectors_export_active_only, align 4
  %6 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %6)
  store i8* %call2, i8** %filename, align 8
  %7 = load i32, i32* @vectors_export_active_only, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog.addr, align 8
  %image = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %8, i32 0, i32 1
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %9)
  store %struct._GimpVectors* %call4, %struct._GimpVectors** %vectors, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %10 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog.addr, align 8
  %image5 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %10, i32 0, i32 1
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image5, align 8
  %12 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %13 = load i8*, i8** %filename, align 8
  %call6 = call i32 @gimp_vectors_export_file(%struct._GimpImage* %11, %struct._GimpVectors* %12, i8* %13, %struct._GError** %error)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.11, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %14 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog.addr, align 8
  %image9 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %14, i32 0, i32 1
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image9, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %20 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %20, i32 0, i32 2
  %21 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %16, %struct._GObject* %19, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %21)
  %22 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %22)
  br label %return

if.end.11:                                        ; preds = %if.end
  %23 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %23)
  %24 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog.addr, align 8
  %image12 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %24, i32 0, i32 1
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image12, align 8
  %gimp13 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %25, i32 0, i32 1
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp13, align 8
  %27 = bitcast %struct._Gimp* %26 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  %29 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %call15 = call i8* @gtk_file_chooser_get_current_folder(%struct._GtkFileChooser* %29)
  call void @g_object_set_data_full(%struct._GObject* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0), i8* %call15, void (i8*)* @g_free)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.11, %entry
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %30)
  br label %return

return:                                           ; preds = %if.end.16, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @vectors_import_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct._VectorsImportDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %folder = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %6 = load i32, i32* @vectors_import_merge, align 4
  %7 = load i32, i32* @vectors_import_scale, align 4
  %call5 = call %struct._VectorsImportDialog* @vectors_import_dialog_new(%struct._GimpImage* %4, %struct._GtkWidget* %5, i32 %6, i32 %7)
  store %struct._VectorsImportDialog* %call5, %struct._VectorsImportDialog** %dialog, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %8, i32 0, i32 1
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %10 = bitcast %struct._Gimp* %9 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %call7 = call i8* @g_object_get_data(%struct._GObject* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0))
  store i8* %call7, i8** %folder, align 8
  %12 = load i8*, i8** %folder, align 8
  %tobool8 = icmp ne i8* %12, null
  br i1 %tobool8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.4
  %13 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog10 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %13, i32 0, i32 0
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog10, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_file_chooser_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkFileChooser*
  %17 = load i8*, i8** %folder, align 8
  %call13 = call i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser* %16, i8* %17)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.9, %if.end.4
  %18 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog15 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %18, i32 0, i32 0
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog15, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %22 = bitcast %struct._VectorsImportDialog* %21 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._VectorsImportDialog*)* @vectors_import_response to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 0)
  %23 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog17 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %23, i32 0, i32 0
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog17, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  br label %return

return:                                           ; preds = %if.end.14, %if.then.3, %if.then
  ret void
}

declare %struct._VectorsImportDialog* @vectors_import_dialog_new(%struct._GimpImage*, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @vectors_import_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._VectorsImportDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %dialog.addr = alloca %struct._VectorsImportDialog*, align 8
  %chooser = alloca %struct._GtkFileChooser*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._VectorsImportDialog* %dialog, %struct._VectorsImportDialog** %dialog.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  store %struct._GtkFileChooser* %3, %struct._GtkFileChooser** %chooser, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %4 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog.addr, align 8
  %merge_vectors = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %4, i32 0, i32 2
  %5 = load i32, i32* %merge_vectors, align 4
  store i32 %5, i32* @vectors_import_merge, align 4
  %6 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog.addr, align 8
  %scale_vectors = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %6, i32 0, i32 3
  %7 = load i32, i32* %scale_vectors, align 4
  store i32 %7, i32* @vectors_import_scale, align 4
  %8 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %8)
  store i8* %call2, i8** %filename, align 8
  %9 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog.addr, align 8
  %image = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %9, i32 0, i32 1
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load i8*, i8** %filename, align 8
  %12 = load i32, i32* @vectors_import_merge, align 4
  %13 = load i32, i32* @vectors_import_scale, align 4
  %call3 = call i32 @gimp_vectors_import_file(%struct._GimpImage* %10, i8* %11, i32 %12, i32 %13, %struct._GimpVectors* inttoptr (i64 1 to %struct._GimpVectors*), i32 -1, %struct._GList** null, %struct._GError** %error)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %14 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog.addr, align 8
  %image5 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %14, i32 0, i32 1
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image5, align 8
  call void @gimp_image_flush(%struct._GimpImage* %15)
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog.addr, align 8
  %image6 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %16, i32 0, i32 1
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image6, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %22 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %22, i32 0, i32 2
  %23 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %18, %struct._GObject* %21, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %23)
  %24 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %24)
  br label %return

if.end:                                           ; preds = %if.then.4
  %25 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %25)
  %26 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog.addr, align 8
  %image8 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %26, i32 0, i32 1
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image8, align 8
  %gimp9 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %27, i32 0, i32 1
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp9, align 8
  %29 = bitcast %struct._Gimp* %28 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %31 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %call11 = call i8* @gtk_file_chooser_get_current_folder(%struct._GtkFileChooser* %31)
  call void @g_object_set_data_full(%struct._GObject* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i8* %call11, void (i8*)* @g_free)
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %32)
  br label %return

return:                                           ; preds = %if.end.12, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @vectors_visible_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %visible = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  %push_undo = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.24

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.24

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %5 = bitcast %struct._GtkAction* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_toggle_action_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToggleAction*
  %call7 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %6)
  store i32 %call7, i32* %visible, align 4
  %7 = load i32, i32* %visible, align 4
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %9 = bitcast %struct._GimpVectors* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call i32 @gimp_item_get_visible(%struct._GimpItem* %10)
  %cmp = icmp ne i32 %7, %call10
  br i1 %cmp, label %if.then.11, label %if.end.24

if.then.11:                                       ; preds = %if.end.4
  store i32 1, i32* %push_undo, align 4
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i64 @gimp_item_undo_get_type() #5
  %call13 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %11, i64 %call12, i32 51)
  store %struct._GimpUndo* %call13, %struct._GimpUndo** %undo, align 8
  %12 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool14 = icmp ne %struct._GimpUndo* %12, null
  br i1 %tobool14, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.then.11
  %13 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %14 = bitcast %struct._GimpUndo* %13 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_undo_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call15)
  %15 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %15, i32 0, i32 1
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %18 = bitcast %struct._GimpVectors* %17 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call17)
  %19 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %cmp19 = icmp eq %struct._GimpItem* %16, %19
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true
  store i32 0, i32* %push_undo, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true, %if.then.11
  %20 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %21 = bitcast %struct._GimpVectors* %20 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call22)
  %22 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %23 = load i32, i32* %visible, align 4
  %24 = load i32, i32* %push_undo, align 4
  call void @gimp_item_set_visible(%struct._GimpItem* %22, i32 %23, i32 %24)
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %25)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then, %if.then.3, %if.end.21, %if.end.4
  ret void
}

declare i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_action_get_type() #2

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #1

declare %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #2

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @vectors_linked_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %linked = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  %push_undo = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.24

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.24

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %5 = bitcast %struct._GtkAction* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_toggle_action_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToggleAction*
  %call7 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %6)
  store i32 %call7, i32* %linked, align 4
  %7 = load i32, i32* %linked, align 4
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %9 = bitcast %struct._GimpVectors* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call i32 @gimp_item_get_linked(%struct._GimpItem* %10)
  %cmp = icmp ne i32 %7, %call10
  br i1 %cmp, label %if.then.11, label %if.end.24

if.then.11:                                       ; preds = %if.end.4
  store i32 1, i32* %push_undo, align 4
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i64 @gimp_item_undo_get_type() #5
  %call13 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %11, i64 %call12, i32 52)
  store %struct._GimpUndo* %call13, %struct._GimpUndo** %undo, align 8
  %12 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool14 = icmp ne %struct._GimpUndo* %12, null
  br i1 %tobool14, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.then.11
  %13 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %14 = bitcast %struct._GimpUndo* %13 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_undo_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call15)
  %15 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %15, i32 0, i32 1
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %18 = bitcast %struct._GimpVectors* %17 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call17)
  %19 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %cmp19 = icmp eq %struct._GimpItem* %16, %19
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true
  store i32 0, i32* %push_undo, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true, %if.then.11
  %20 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %21 = bitcast %struct._GimpVectors* %20 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call22)
  %22 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %23 = load i32, i32* %linked, align 4
  %24 = load i32, i32* %push_undo, align 4
  call void @gimp_item_set_linked(%struct._GimpItem* %22, i32 %23, i32 %24)
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %25)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then, %if.then.3, %if.end.21, %if.end.4
  ret void
}

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #1

declare void @gimp_item_set_linked(%struct._GimpItem*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @vectors_lock_content_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %locked = alloca i32, align 4
  %push_undo = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.14

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %2)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.14

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %5 = bitcast %struct._GtkAction* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_toggle_action_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToggleAction*
  %call7 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %6)
  store i32 %call7, i32* %locked, align 4
  %7 = load i32, i32* %locked, align 4
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %9 = bitcast %struct._GimpVectors* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call i32 @gimp_item_get_lock_content(%struct._GimpItem* %10)
  %cmp = icmp ne i32 %7, %call10
  br i1 %cmp, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.4
  store i32 1, i32* %push_undo, align 4
  %11 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %12 = bitcast %struct._GimpVectors* %11 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %14 = load i32, i32* %locked, align 4
  %15 = load i32, i32* %push_undo, align 4
  call void @gimp_item_set_lock_content(%struct._GimpItem* %13, i32 %14, i32 %15)
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.then.3, %if.then.11, %if.end.4
  ret void
}

declare i32 @gimp_item_get_lock_content(%struct._GimpItem*) #1

declare void @gimp_item_set_lock_content(%struct._GimpItem*, i32, i32) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @gimp_item_rename(%struct._GimpItem*, i8*, %struct._GError**) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare i32 @gimp_vectors_import_file(%struct._GimpImage*, i8*, i32, i32, %struct._GimpVectors*, i32, %struct._GList**, %struct._GError**) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare i8* @gtk_file_chooser_get_current_folder(%struct._GtkFileChooser*) #1

declare i32 @gimp_vectors_export_file(%struct._GimpImage*, %struct._GimpVectors*, i8*, %struct._GError**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
