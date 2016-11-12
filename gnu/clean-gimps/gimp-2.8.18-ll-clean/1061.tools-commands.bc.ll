; ModuleID = './app/actions/tools-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
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
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpCanvasItem = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpEnumAction = type { %struct._GimpAction, i32, i32 }
%struct._GimpAction = type { %struct._GtkAction, %struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewable*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"gimp-rotate-layer\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"gimp-rotate-tool\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"average-radius\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"brush-size\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"brush-angle\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"brush-aspect-ratio\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"blob-aspect\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"blob-angle\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"stroke-width\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"preview-opacity\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"<Image>\00", align 1

; Function Attrs: nounwind uwtable
define void @tools_select_cmd_callback(%struct._GtkAction* %action, i8* %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %rotate_layer = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %rotate_layer, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._Gimp* @action_data_get_gimp(i8* %0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %value.addr, align 8
  %call1 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #4
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %rotate_layer, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8** %value.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %4 = load i8*, i8** %value.addr, align 8
  %call4 = call %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp* %3, i8* %4)
  store %struct._GimpToolInfo* %call4, %struct._GimpToolInfo** %tool_info, align 8
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call5 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %5)
  store %struct._GimpContext* %call5, %struct._GimpContext** %context, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call6 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %6)
  %7 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %cmp7 = icmp ne %struct._GimpToolInfo* %call6, %7
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.3
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %9 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  call void @gimp_context_set_tool(%struct._GimpContext* %8, %struct._GimpToolInfo* %9)
  %10 = load i32, i32* %rotate_layer, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.8
  %11 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %11, i32 0, i32 12
  %12 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %13 = bitcast %struct._GimpToolOptions* %12 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* null)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.8
  br label %if.end.12

if.else:                                          ; preds = %if.end.3
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_tool_changed(%struct._GimpContext* %14)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end.11
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call13 = call i8* @gimp_context_get_display(%struct._GimpContext* %15)
  %16 = bitcast i8* %call13 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %16, %struct._GimpDisplay** %display, align 8
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool14 = icmp ne %struct._GimpDisplay* %17, null
  br i1 %tobool14, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.12
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call15 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %18)
  %tobool16 = icmp ne %struct._GimpImage* %call15, null
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %land.lhs.true
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call18 = call i32 @tool_manager_initialize_active(%struct._Gimp* %19, %struct._GimpDisplay* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.then.17, %land.lhs.true, %if.end.12
  ret void
}

declare %struct._Gimp* @action_data_get_gimp(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp*, i8*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext*) #1

declare void @gimp_context_set_tool(%struct._GimpContext*, %struct._GimpToolInfo*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_context_tool_changed(%struct._GimpContext*) #1

declare i8* @gimp_context_get_display(%struct._GimpContext*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare i32 @tool_manager_initialize_active(%struct._Gimp*, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define void @tools_color_average_radius_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %2)
  store %struct._GimpToolInfo* %call1, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool2 = icmp ne %struct._GimpToolInfo* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %4, i32 0, i32 12
  %5 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %6 = bitcast %struct._GimpToolOptions* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_color_options_get_type() #5
  store i64 %call3, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.else.10

land.lhs.true.7:                                  ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true.7
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true.7, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #4
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  %18 = load i32, i32* %value.addr, align 4
  %19 = load i8*, i8** %data.addr, align 8
  %call16 = call %struct._GimpDisplay* @action_data_get_display(i8* %19)
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options17 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %20, i32 0, i32 12
  %21 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options17, align 8
  %22 = bitcast %struct._GimpToolOptions* %21 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @action_select_property(i32 %18, %struct._GimpDisplay* %call16, %struct._GObject* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 1.000000e-01, i32 0)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.then.15, %if.end.13, %if.end
  ret void
}

declare %struct._GimpContext* @action_data_get_context(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_options_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @action_select_property(i32, %struct._GimpDisplay*, %struct._GObject*, i8*, double, double, double, double, i32) #1

declare %struct._GimpDisplay* @action_data_get_display(i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @tools_paint_brush_size_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %2)
  store %struct._GimpToolInfo* %call1, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool2 = icmp ne %struct._GimpToolInfo* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %4, i32 0, i32 12
  %5 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %6 = bitcast %struct._GimpToolOptions* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_paint_options_get_type() #5
  store i64 %call3, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.else.10

land.lhs.true.7:                                  ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true.7
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true.7, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #4
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  %18 = load i32, i32* %value.addr, align 4
  %19 = load i8*, i8** %data.addr, align 8
  %call16 = call %struct._GimpDisplay* @action_data_get_display(i8* %19)
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options17 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %20, i32 0, i32 12
  %21 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options17, align 8
  %22 = bitcast %struct._GimpToolOptions* %21 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @action_select_property(i32 %18, %struct._GimpDisplay* %call16, %struct._GObject* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), double 1.000000e-01, double 1.000000e+00, double 1.000000e+01, double 1.000000e+00, i32 0)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.then.15, %if.end.13, %if.end
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_options_get_type() #3

; Function Attrs: nounwind uwtable
define void @tools_paint_brush_angle_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %2)
  store %struct._GimpToolInfo* %call1, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool2 = icmp ne %struct._GimpToolInfo* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %4, i32 0, i32 12
  %5 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %6 = bitcast %struct._GimpToolOptions* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_paint_options_get_type() #5
  store i64 %call3, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.else.10

land.lhs.true.7:                                  ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true.7
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true.7, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #4
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  %18 = load i32, i32* %value.addr, align 4
  %19 = load i8*, i8** %data.addr, align 8
  %call16 = call %struct._GimpDisplay* @action_data_get_display(i8* %19)
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options17 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %20, i32 0, i32 12
  %21 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options17, align 8
  %22 = bitcast %struct._GimpToolOptions* %21 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @action_select_property(i32 %18, %struct._GimpDisplay* %call16, %struct._GObject* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), double 1.000000e-01, double 1.000000e+00, double 1.500000e+01, double 1.000000e-01, i32 1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.then.15, %if.end.13, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @tools_paint_brush_aspect_ratio_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %2)
  store %struct._GimpToolInfo* %call1, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool2 = icmp ne %struct._GimpToolInfo* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %4, i32 0, i32 12
  %5 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %6 = bitcast %struct._GimpToolOptions* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_paint_options_get_type() #5
  store i64 %call3, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.else.10

land.lhs.true.7:                                  ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true.7
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true.7, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #4
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  %18 = load i32, i32* %value.addr, align 4
  %19 = load i8*, i8** %data.addr, align 8
  %call16 = call %struct._GimpDisplay* @action_data_get_display(i8* %19)
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options17 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %20, i32 0, i32 12
  %21 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options17, align 8
  %22 = bitcast %struct._GimpToolOptions* %21 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @action_select_property(i32 %18, %struct._GimpDisplay* %call16, %struct._GObject* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), double 1.000000e-02, double 1.000000e-01, double 1.000000e+00, double 1.000000e-01, i32 1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.then.15, %if.end.13, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @tools_ink_blob_size_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %2)
  store %struct._GimpToolInfo* %call1, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool2 = icmp ne %struct._GimpToolInfo* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %4, i32 0, i32 12
  %5 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %6 = bitcast %struct._GimpToolOptions* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_ink_options_get_type() #5
  store i64 %call3, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.else.10

land.lhs.true.7:                                  ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true.7
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true.7, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #4
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  %18 = load i32, i32* %value.addr, align 4
  %19 = load i8*, i8** %data.addr, align 8
  %call16 = call %struct._GimpDisplay* @action_data_get_display(i8* %19)
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options17 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %20, i32 0, i32 12
  %21 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options17, align 8
  %22 = bitcast %struct._GimpToolOptions* %21 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @action_select_property(i32 %18, %struct._GimpDisplay* %call16, %struct._GObject* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 1.000000e-01, i32 0)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.then.15, %if.end.13, %if.end
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_ink_options_get_type() #3

; Function Attrs: nounwind uwtable
define void @tools_ink_blob_aspect_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %2)
  store %struct._GimpToolInfo* %call1, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool2 = icmp ne %struct._GimpToolInfo* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %4, i32 0, i32 12
  %5 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %6 = bitcast %struct._GimpToolOptions* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_ink_options_get_type() #5
  store i64 %call3, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.else.10

land.lhs.true.7:                                  ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true.7
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true.7, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #4
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  %18 = load i32, i32* %value.addr, align 4
  %19 = load i8*, i8** %data.addr, align 8
  %call16 = call %struct._GimpDisplay* @action_data_get_display(i8* %19)
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options17 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %20, i32 0, i32 12
  %21 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options17, align 8
  %22 = bitcast %struct._GimpToolOptions* %21 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @action_select_property(i32 %18, %struct._GimpDisplay* %call16, %struct._GObject* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), double 1.000000e+00, double 1.000000e-01, double 1.000000e+00, double 1.000000e-01, i32 0)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.then.15, %if.end.13, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @tools_ink_blob_angle_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %2)
  store %struct._GimpToolInfo* %call1, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool2 = icmp ne %struct._GimpToolInfo* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %4, i32 0, i32 12
  %5 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %6 = bitcast %struct._GimpToolOptions* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_ink_options_get_type() #5
  store i64 %call3, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.else.10

land.lhs.true.7:                                  ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true.7
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true.7, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #4
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  %18 = load i32, i32* %value.addr, align 4
  %19 = load i8*, i8** %data.addr, align 8
  %call16 = call %struct._GimpDisplay* @action_data_get_display(i8* %19)
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options17 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %20, i32 0, i32 12
  %21 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options17, align 8
  %22 = bitcast %struct._GimpToolOptions* %21 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @action_select_property(i32 %18, %struct._GimpDisplay* %call16, %struct._GObject* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), double 1.000000e+00, double 1.000000e+00, double 1.500000e+01, double 1.000000e-01, i32 1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.then.15, %if.end.13, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @tools_fg_select_brush_size_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %2)
  store %struct._GimpToolInfo* %call1, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool2 = icmp ne %struct._GimpToolInfo* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %4, i32 0, i32 12
  %5 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %6 = bitcast %struct._GimpToolOptions* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_foreground_select_options_get_type() #5
  store i64 %call3, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.else.10

land.lhs.true.7:                                  ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true.7
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true.7, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #4
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  %18 = load i32, i32* %value.addr, align 4
  %19 = load i8*, i8** %data.addr, align 8
  %call16 = call %struct._GimpDisplay* @action_data_get_display(i8* %19)
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options17 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %20, i32 0, i32 12
  %21 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options17, align 8
  %22 = bitcast %struct._GimpToolOptions* %21 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @action_select_property(i32 %18, %struct._GimpDisplay* %call16, %struct._GObject* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), double 1.000000e+00, double 4.000000e+00, double 1.600000e+01, double 1.000000e-01, i32 0)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.then.15, %if.end.13, %if.end
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_foreground_select_options_get_type() #3

; Function Attrs: nounwind uwtable
define void @tools_transform_preview_opacity_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %2)
  store %struct._GimpToolInfo* %call1, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool2 = icmp ne %struct._GimpToolInfo* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %4, i32 0, i32 12
  %5 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %6 = bitcast %struct._GimpToolOptions* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_transform_options_get_type() #5
  store i64 %call3, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.else.10

land.lhs.true.7:                                  ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true.7
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true.7, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #4
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  %18 = load i32, i32* %value.addr, align 4
  %19 = load i8*, i8** %data.addr, align 8
  %call16 = call %struct._GimpDisplay* @action_data_get_display(i8* %19)
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options17 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %20, i32 0, i32 12
  %21 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options17, align 8
  %22 = bitcast %struct._GimpToolOptions* %21 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @action_select_property(i32 %18, %struct._GimpDisplay* %call16, %struct._GObject* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), double 1.000000e-02, double 1.000000e-01, double 5.000000e-01, double 1.000000e-01, i32 0)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.then.15, %if.end.13, %if.end
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_options_get_type() #3

; Function Attrs: nounwind uwtable
define void @tools_value_1_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %action_desc = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %3)
  store %struct._GimpTool* %call1, %struct._GimpTool** %tool, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tobool2 = icmp ne %struct._GimpTool* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call4 = call i8* @gimp_tool_control_get_action_value_1(%struct._GimpToolControl* %6)
  store i8* %call4, i8** %action_desc, align 8
  %7 = load i8*, i8** %action_desc, align 8
  %tobool5 = icmp ne i8* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  %8 = load i8*, i8** %action_desc, align 8
  %9 = load i32, i32* %value.addr, align 4
  call void @tools_activate_enum_action(i8* %8, i32 %9)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.end.7, %if.end
  ret void
}

declare %struct._GimpTool* @tool_manager_get_active(%struct._Gimp*) #1

declare i8* @gimp_tool_control_get_action_value_1(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define internal void @tools_activate_enum_action(i8* %action_desc, i32 %value) #0 {
entry:
  %action_desc.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  %group_name = alloca i8*, align 8
  %action_name = alloca i8*, align 8
  %managers = alloca %struct._GList*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %action_desc, i8** %action_desc.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load i8*, i8** %action_desc.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %0)
  store i8* %call, i8** %group_name, align 8
  %1 = load i8*, i8** %group_name, align 8
  %call1 = call i8* @strchr(i8* %1, i32 47) #4
  store i8* %call1, i8** %action_name, align 8
  %2 = load i8*, i8** %action_name, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %action_name, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %action_name, align 8
  store i8 0, i8* %3, align 1
  %call2 = call %struct._GList* @gimp_ui_managers_from_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GList* %call2, %struct._GList** %managers, align 8
  %4 = load %struct._GList*, %struct._GList** %managers, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GimpUIManager*
  %7 = load i8*, i8** %group_name, align 8
  %8 = load i8*, i8** %action_name, align 8
  %call3 = call %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager* %6, i8* %7, i8* %8)
  store %struct._GtkAction* %call3, %struct._GtkAction** %action, align 8
  %9 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %10 = bitcast %struct._GtkAction* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call4 = call i64 @gimp_enum_action_get_type() #5
  store i64 %call4, i64* %__t, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool5 = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool7 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool7, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %17 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %16, %17
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.10:                                       ; preds = %land.lhs.true, %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #4
  store i32 %call11, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.6
  %20 = load i32, i32* %__r, align 4
  store i32 %20, i32* %tmp
  %21 = load i32, i32* %tmp
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.21

land.lhs.true.14:                                 ; preds = %if.end.12
  %22 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %23 = bitcast %struct._GtkAction* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_enum_action_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpEnumAction*
  %value_variable = getelementptr inbounds %struct._GimpEnumAction, %struct._GimpEnumAction* %24, i32 0, i32 2
  %25 = load i32, i32* %value_variable, align 4
  %tobool17 = icmp ne i32 %25, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %land.lhs.true.14
  %26 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %27 = bitcast %struct._GtkAction* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_enum_action_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpEnumAction*
  %29 = load i32, i32* %value.addr, align 4
  call void @gimp_enum_action_selected(%struct._GimpEnumAction* %28, i32 %29)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %land.lhs.true.14, %if.end.12
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %entry
  %30 = load i8*, i8** %group_name, align 8
  call void @g_free(i8* %30)
  ret void
}

; Function Attrs: nounwind uwtable
define void @tools_value_2_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %action_desc = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %3)
  store %struct._GimpTool* %call1, %struct._GimpTool** %tool, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tobool2 = icmp ne %struct._GimpTool* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call4 = call i8* @gimp_tool_control_get_action_value_2(%struct._GimpToolControl* %6)
  store i8* %call4, i8** %action_desc, align 8
  %7 = load i8*, i8** %action_desc, align 8
  %tobool5 = icmp ne i8* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  %8 = load i8*, i8** %action_desc, align 8
  %9 = load i32, i32* %value.addr, align 4
  call void @tools_activate_enum_action(i8* %8, i32 %9)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.end.7, %if.end
  ret void
}

declare i8* @gimp_tool_control_get_action_value_2(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define void @tools_value_3_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %action_desc = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %3)
  store %struct._GimpTool* %call1, %struct._GimpTool** %tool, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tobool2 = icmp ne %struct._GimpTool* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call4 = call i8* @gimp_tool_control_get_action_value_3(%struct._GimpToolControl* %6)
  store i8* %call4, i8** %action_desc, align 8
  %7 = load i8*, i8** %action_desc, align 8
  %tobool5 = icmp ne i8* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  %8 = load i8*, i8** %action_desc, align 8
  %9 = load i32, i32* %value.addr, align 4
  call void @tools_activate_enum_action(i8* %8, i32 %9)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.end.7, %if.end
  ret void
}

declare i8* @gimp_tool_control_get_action_value_3(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define void @tools_value_4_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %action_desc = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %3)
  store %struct._GimpTool* %call1, %struct._GimpTool** %tool, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tobool2 = icmp ne %struct._GimpTool* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call4 = call i8* @gimp_tool_control_get_action_value_4(%struct._GimpToolControl* %6)
  store i8* %call4, i8** %action_desc, align 8
  %7 = load i8*, i8** %action_desc, align 8
  %tobool5 = icmp ne i8* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  %8 = load i8*, i8** %action_desc, align 8
  %9 = load i32, i32* %value.addr, align 4
  call void @tools_activate_enum_action(i8* %8, i32 %9)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.end.7, %if.end
  ret void
}

declare i8* @gimp_tool_control_get_action_value_4(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define void @tools_object_1_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %action_desc = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %3)
  store %struct._GimpTool* %call1, %struct._GimpTool** %tool, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tobool2 = icmp ne %struct._GimpTool* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call4 = call i8* @gimp_tool_control_get_action_object_1(%struct._GimpToolControl* %6)
  store i8* %call4, i8** %action_desc, align 8
  %7 = load i8*, i8** %action_desc, align 8
  %tobool5 = icmp ne i8* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  %8 = load i8*, i8** %action_desc, align 8
  %9 = load i32, i32* %value.addr, align 4
  call void @tools_activate_enum_action(i8* %8, i32 %9)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.end.7, %if.end
  ret void
}

declare i8* @gimp_tool_control_get_action_object_1(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define void @tools_object_2_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %action_desc = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %3)
  store %struct._GimpTool* %call1, %struct._GimpTool** %tool, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tobool2 = icmp ne %struct._GimpTool* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call4 = call i8* @gimp_tool_control_get_action_object_2(%struct._GimpToolControl* %6)
  store i8* %call4, i8** %action_desc, align 8
  %7 = load i8*, i8** %action_desc, align 8
  %tobool5 = icmp ne i8* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  %8 = load i8*, i8** %action_desc, align 8
  %9 = load i32, i32* %value.addr, align 4
  call void @tools_activate_enum_action(i8* %8, i32 %9)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.end.7, %if.end
  ret void
}

declare i8* @gimp_tool_control_get_action_object_2(%struct._GimpToolControl*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare %struct._GList* @gimp_ui_managers_from_name(i8*) #1

declare %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_enum_action_get_type() #3

declare void @gimp_enum_action_selected(%struct._GimpEnumAction*, i32) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
