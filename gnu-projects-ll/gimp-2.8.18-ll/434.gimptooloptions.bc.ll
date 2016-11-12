; ModuleID = './app/core/gimptooloptions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpToolOptionsClass = type { %struct._GimpContextClass, void (%struct._GimpToolOptions*)* }
%struct._GimpContextClass = type { %struct._GimpViewableClass, void (%struct._GimpContext*, %struct._GimpImage*)*, void (%struct._GimpContext*, i8*)*, void (%struct._GimpContext*, %struct._GimpToolInfo*)*, void (%struct._GimpContext*, %struct._GimpPaintInfo*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, double)*, void (%struct._GimpContext*, i32)*, void (%struct._GimpContext*, %struct._GimpBrush*)*, void (%struct._GimpContext*, %struct._GimpDynamics*)*, void (%struct._GimpContext*, %struct._GimpPattern*)*, void (%struct._GimpContext*, %struct._GimpGradient*)*, void (%struct._GimpContext*, %struct._GimpPalette*)*, void (%struct._GimpContext*, %struct._GimpToolPreset*)*, void (%struct._GimpContext*, %struct._GimpFont*)*, void (%struct._GimpContext*, %struct._GimpBuffer*)*, void (%struct._GimpContext*, %struct._GimpImagefile*)*, void (%struct._GimpContext*, %struct._GimpTemplate*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
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
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
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
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
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
%struct._GdkPixbuf = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfig = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GError = type { i32, i32, i8* }

@gimp_tool_options_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpToolOptions\00", align 1
@gimp_tool_options_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpConfigInterface*)* @gimp_tool_options_config_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_tool_options_reset = private unnamed_addr constant [24 x i8] c"gimp_tool_options_reset\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GIMP_IS_TOOL_OPTIONS (tool_options)\00", align 1
@__func__.gimp_tool_options_serialize = private unnamed_addr constant [28 x i8] c"gimp_tool_options_serialize\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"GIMP %s options\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"end of %s options\00", align 1
@__func__.gimp_tool_options_deserialize = private unnamed_addr constant [30 x i8] c"gimp_tool_options_deserialize\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@__func__.gimp_tool_options_delete = private unnamed_addr constant [25 x i8] c"gimp_tool_options_delete\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Deleting \22%s\22 failed: %s\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"tool-options\00", align 1
@gimp_tool_options_parent_class = internal global i8* null, align 8
@GimpToolOptions_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"tool\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"tool-info\00", align 1
@__func__.gimp_tool_options_set_property = private unnamed_addr constant [31 x i8] c"gimp_tool_options_set_property\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"context_tool == NULL || context_tool == tool_info\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"options->tool_info == NULL || options->tool_info == tool_info\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"gimptooloptions.c\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.17 = private unnamed_addr constant [71 x i8] c"%s: correcting bogus deserialized tool type '%s' with right type '%s'\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@__func__.gimp_tool_options_check_tool_info = private unnamed_addr constant [34 x i8] c"gimp_tool_options_check_tool_info\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"notify::tool\00", align 1
@.str.21 = private unnamed_addr constant [72 x i8] c"%s: 'tool' property on %s was set to bogus value '%s', it MUST be '%s'.\00", align 1
@__func__.gimp_tool_options_tool_notify = private unnamed_addr constant [30 x i8] c"gimp_tool_options_tool_notify\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tool_options_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tool_options_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tool_options_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_context_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 432, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tool_options_class_intern_init to void (i8*, i8*)*), i32 352, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpToolOptions*)* @gimp_tool_options_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_tool_options_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tool_options_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_tool_options_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tool_options_parent_class, align 8
  %1 = load i32, i32* @GimpToolOptions_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpToolOptions_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpToolOptionsClass*
  call void @gimp_tool_options_class_init(%struct._GimpToolOptionsClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_init(%struct._GimpToolOptions* %options) #3 {
entry:
  %options.addr = alloca %struct._GimpToolOptions*, align 8
  store %struct._GimpToolOptions* %options, %struct._GimpToolOptions** %options.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %0, i32 0, i32 1
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %tool_info, align 8
  %1 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %2 = bitcast %struct._GimpToolOptions* %1 to i8*
  %call = call i64 @g_signal_connect_data(i8* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GimpToolOptions*, %struct._GParamSpec*)* @gimp_tool_options_tool_notify to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_config_iface_init(%struct._GimpConfigInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpConfigInterface*, align 8
  store %struct._GimpConfigInterface* %iface, %struct._GimpConfigInterface** %iface.addr, align 8
  %0 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %reset = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %0, i32 0, i32 7
  store void (%struct._GimpConfig*)* @gimp_tool_options_config_reset, void (%struct._GimpConfig*)** %reset, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_tool_options_reset(%struct._GimpToolOptions* %tool_options) #3 {
entry:
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_options_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_tool_options_reset, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %14 = bitcast %struct._GimpToolOptions* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpToolOptionsClass*
  %reset = getelementptr inbounds %struct._GimpToolOptionsClass, %struct._GimpToolOptionsClass* %16, i32 0, i32 1
  %17 = load void (%struct._GimpToolOptions*)*, void (%struct._GimpToolOptions*)** %reset, align 8
  %18 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  call void %17(%struct._GimpToolOptions* %18)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_tool_options_serialize(%struct._GimpToolOptions* %tool_options, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %filename = alloca i8*, align 8
  %header = alloca i8*, align 8
  %footer = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_options_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_tool_options_serialize, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp13 = icmp eq %struct._GError** %13, null
  br i1 %cmp13, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.12
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp14 = icmp eq %struct._GError* %15, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %lor.lhs.false, %do.body.12
  br label %if.end.17

if.else.16:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_tool_options_serialize, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %16 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %16, i32 0, i32 1
  %17 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %call19 = call i8* @gimp_tool_info_build_options_filename(%struct._GimpToolInfo* %17, i8* null)
  store i8* %call19, i8** %filename, align 8
  %18 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %tool_info20 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %18, i32 0, i32 1
  %19 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info20, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 4
  %21 = load i32, i32* %be_verbose, align 4
  %tobool21 = icmp ne i32 %21, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %do.end.18
  %22 = load i8*, i8** %filename, align 8
  %call23 = call i8* @gimp_filename_to_utf8(i8* %22)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* %call23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %do.end.18
  %23 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %tool_info25 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %23, i32 0, i32 1
  %24 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info25, align 8
  %25 = bitcast %struct._GimpToolInfo* %24 to i8*
  %call26 = call i8* @gimp_object_get_name(i8* %25)
  %call27 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* %call26)
  store i8* %call27, i8** %header, align 8
  %26 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %tool_info28 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %26, i32 0, i32 1
  %27 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info28, align 8
  %28 = bitcast %struct._GimpToolInfo* %27 to i8*
  %call29 = call i8* @gimp_object_get_name(i8* %28)
  %call30 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* %call29)
  store i8* %call30, i8** %footer, align 8
  %29 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %30 = bitcast %struct._GimpToolOptions* %29 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_config_interface_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call31)
  %31 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpConfig*
  %32 = load i8*, i8** %filename, align 8
  %33 = load i8*, i8** %header, align 8
  %34 = load i8*, i8** %footer, align 8
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call33 = call i32 @gimp_config_serialize_to_file(%struct._GimpConfig* %31, i8* %32, i8* %33, i8* %34, i8* null, %struct._GError** %35)
  store i32 %call33, i32* %retval1, align 4
  %36 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %36)
  %37 = load i8*, i8** %header, align 8
  call void @g_free(i8* %37)
  %38 = load i8*, i8** %footer, align 8
  call void @g_free(i8* %38)
  %39 = load i32, i32* %retval1, align 4
  store i32 %39, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.else.16, %if.else.10
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i8* @gimp_tool_info_build_options_filename(%struct._GimpToolInfo*, i8*) #1

declare void @g_print(i8*, ...) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

declare i32 @gimp_config_serialize_to_file(%struct._GimpConfig*, i8*, i8*, i8*, i8*, %struct._GError**) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_tool_options_deserialize(%struct._GimpToolOptions* %tool_options, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %filename = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_options_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_tool_options_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp13 = icmp eq %struct._GError** %13, null
  br i1 %cmp13, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.12
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp14 = icmp eq %struct._GError* %15, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %lor.lhs.false, %do.body.12
  br label %if.end.17

if.else.16:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_tool_options_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %16 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %16, i32 0, i32 1
  %17 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %call19 = call i8* @gimp_tool_info_build_options_filename(%struct._GimpToolInfo* %17, i8* null)
  store i8* %call19, i8** %filename, align 8
  %18 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %tool_info20 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %18, i32 0, i32 1
  %19 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info20, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 4
  %21 = load i32, i32* %be_verbose, align 4
  %tobool21 = icmp ne i32 %21, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %do.end.18
  %22 = load i8*, i8** %filename, align 8
  %call23 = call i8* @gimp_filename_to_utf8(i8* %22)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* %call23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %do.end.18
  %23 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %24 = bitcast %struct._GimpToolOptions* %23 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_config_interface_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call25)
  %25 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpConfig*
  %26 = load i8*, i8** %filename, align 8
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call27 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %25, i8* %26, i8* null, %struct._GError** %27)
  store i32 %call27, i32* %retval1, align 4
  %28 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %28)
  %29 = load i32, i32* %retval1, align 4
  store i32 %29, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.else.16, %if.else.10
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @gimp_config_deserialize_file(%struct._GimpConfig*, i8*, i8*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_tool_options_delete(%struct._GimpToolOptions* %tool_options, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %filename = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %retval1, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_options_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_tool_options_delete, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp13 = icmp eq %struct._GError** %13, null
  br i1 %cmp13, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.12
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp14 = icmp eq %struct._GError* %15, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %lor.lhs.false, %do.body.12
  br label %if.end.17

if.else.16:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_tool_options_delete, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %16 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %16, i32 0, i32 1
  %17 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %call19 = call i8* @gimp_tool_info_build_options_filename(%struct._GimpToolInfo* %17, i8* null)
  store i8* %call19, i8** %filename, align 8
  %18 = load i8*, i8** %filename, align 8
  %call20 = call i32 @g_unlink(i8* %18)
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.31

land.lhs.true.22:                                 ; preds = %do.end.18
  %call23 = call i32* @__errno_location() #7
  %19 = load i32, i32* %call23, align 4
  %cmp24 = icmp ne i32 %19, 2
  br i1 %cmp24, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %land.lhs.true.22
  store i32 0, i32* %retval1, align 4
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call26 = call i32 @gimp_error_quark() #7
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #6
  %21 = load i8*, i8** %filename, align 8
  %call28 = call i8* @gimp_filename_to_utf8(i8* %21)
  %call29 = call i32* @__errno_location() #7
  %22 = load i32, i32* %call29, align 4
  %call30 = call i8* @g_strerror(i32 %22) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %20, i32 %call26, i32 0, i8* %call27, i8* %call28, i8* %call30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.25, %land.lhs.true.22, %do.end.18
  %23 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %23)
  %24 = load i32, i32* %retval1, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.else.16, %if.else.10
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @g_unlink(i8*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

; Function Attrs: nounwind uwtable
define void @gimp_tool_options_create_folder() #3 {
entry:
  %filename = alloca i8*, align 8
  %call = call i8* @gimp_directory() #7
  %call1 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* null)
  store i8* %call1, i8** %filename, align 8
  %0 = load i8*, i8** %filename, align 8
  %call2 = call i32 @mkdir(i8* %0, i32 493) #6
  %1 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %1)
  ret void
}

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #2

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #5

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_class_init(%struct._GimpToolOptionsClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpToolOptionsClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpToolOptionsClass* %klass, %struct._GimpToolOptionsClass** %klass.addr, align 8
  %0 = load %struct._GimpToolOptionsClass*, %struct._GimpToolOptionsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpToolOptionsClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_tool_options_dispose, void (%struct._GObject*)** %dispose, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_tool_options_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_tool_options_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GimpToolOptionsClass*, %struct._GimpToolOptionsClass** %klass.addr, align 8
  %reset = getelementptr inbounds %struct._GimpToolOptionsClass, %struct._GimpToolOptionsClass* %6, i32 0, i32 1
  store void (%struct._GimpToolOptions*)* @gimp_tool_options_real_reset, void (%struct._GimpToolOptions*)** %reset, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %7, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_tool_info_get_type() #7
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 2, %struct._GParamSpec* %call2)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %options = alloca %struct._GimpToolOptions*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_options_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolOptions*
  store %struct._GimpToolOptions* %2, %struct._GimpToolOptions** %options, align 8
  %3 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %tool_info = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %3, i32 0, i32 1
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool = icmp ne %struct._GimpToolInfo* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %tool_info2 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %5, i32 0, i32 1
  %6 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info2, align 8
  %7 = bitcast %struct._GimpToolInfo* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %tool_info3 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %8, i32 0, i32 1
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %tool_info3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_tool_options_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 5
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpToolOptions*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %context_tool = alloca %struct._GimpToolInfo*, align 8
  %tool_info13 = alloca %struct._GimpToolInfo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_options_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolOptions*
  store %struct._GimpToolOptions* %2, %struct._GimpToolOptions** %options, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %5, %struct._GimpToolInfo** %tool_info, align 8
  %6 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %7 = bitcast %struct._GimpToolOptions* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_context_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContext*
  %call5 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %8)
  store %struct._GimpToolInfo* %call5, %struct._GimpToolInfo** %context_tool, align 8
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %9 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %context_tool, align 8
  %cmp = icmp eq %struct._GimpToolInfo* %9, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %10 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %context_tool, align 8
  %11 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %cmp6 = icmp eq %struct._GimpToolInfo* %10, %11
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_tool_options_set_property, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %12 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %call7 = call %struct._GimpToolInfo* @gimp_tool_options_check_tool_info(%struct._GimpToolOptions* %12, %struct._GimpToolInfo* %13, i32 1)
  store %struct._GimpToolInfo* %call7, %struct._GimpToolInfo** %tool_info, align 8
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %context_tool, align 8
  %tobool = icmp ne %struct._GimpToolInfo* %14, null
  br i1 %tobool, label %if.end.11, label %if.then.8

if.then.8:                                        ; preds = %do.end
  %15 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %16 = bitcast %struct._GimpToolOptions* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_context_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpContext*
  %18 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  call void @gimp_context_set_tool(%struct._GimpContext* %17, %struct._GimpToolInfo* %18)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %do.end
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i8* @g_value_get_object(%struct._GValue* %19)
  %20 = bitcast i8* %call14 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %20, %struct._GimpToolInfo** %tool_info13, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %sw.bb.12
  %21 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %tool_info16 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %21, i32 0, i32 1
  %22 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info16, align 8
  %cmp17 = icmp eq %struct._GimpToolInfo* %22, null
  br i1 %cmp17, label %if.then.21, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %do.body.15
  %23 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %tool_info19 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %23, i32 0, i32 1
  %24 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info19, align 8
  %25 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info13, align 8
  %cmp20 = icmp eq %struct._GimpToolInfo* %24, %25
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %lor.lhs.false.18, %do.body.15
  br label %if.end.23

if.else.22:                                       ; preds = %lor.lhs.false.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_tool_options_set_property, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0))
  br label %sw.epilog

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %26 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %27 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info13, align 8
  %call25 = call %struct._GimpToolInfo* @gimp_tool_options_check_tool_info(%struct._GimpToolOptions* %26, %struct._GimpToolInfo* %27, i32 1)
  store %struct._GimpToolInfo* %call25, %struct._GimpToolInfo** %tool_info13, align 8
  %28 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %tool_info26 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %28, i32 0, i32 1
  %29 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info26, align 8
  %tobool27 = icmp ne %struct._GimpToolInfo* %29, null
  br i1 %tobool27, label %if.end.40, label %if.then.28

if.then.28:                                       ; preds = %do.end.24
  %30 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info13, align 8
  %31 = bitcast %struct._GimpToolInfo* %30 to i8*
  %call29 = call i8* @g_object_ref(i8* %31)
  %32 = bitcast i8* %call29 to %struct._GimpToolInfo*
  %33 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %tool_info30 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %33, i32 0, i32 1
  store %struct._GimpToolInfo* %32, %struct._GimpToolInfo** %tool_info30, align 8
  %34 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info13, align 8
  %context_props = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %34, i32 0, i32 4
  %35 = load i32, i32* %context_props, align 4
  %tobool31 = icmp ne i32 %35, 0
  br i1 %tobool31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.then.28
  %36 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %37 = bitcast %struct._GimpToolOptions* %36 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_context_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call33)
  %38 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpContext*
  %39 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info13, align 8
  %context_props35 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %39, i32 0, i32 4
  %40 = load i32, i32* %context_props35, align 4
  call void @gimp_context_define_properties(%struct._GimpContext* %38, i32 %40, i32 0)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.then.28
  %41 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %42 = bitcast %struct._GimpToolOptions* %41 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_context_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call37)
  %43 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpContext*
  %44 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info13, align 8
  %context_props39 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %44, i32 0, i32 4
  %45 = load i32, i32* %context_props39, align 4
  call void @gimp_context_set_serialize_properties(%struct._GimpContext* %43, i32 %45)
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.36, %do.end.24
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body.41

do.body.41:                                       ; preds = %sw.default
  %46 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %46, %struct._GObject** %_glib__object, align 8
  %47 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %47, %struct._GParamSpec** %_glib__pspec, align 8
  %48 = load i32, i32* %property_id.addr, align 4
  store i32 %48, i32* %_glib__property_id, align 4
  %49 = load i32, i32* %_glib__property_id, align 4
  %50 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %50, i32 0, i32 1
  %51 = load i8*, i8** %name, align 8
  %52 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %53 = bitcast %struct._GParamSpec* %52 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %53, i32 0, i32 0
  %54 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %54, i32 0, i32 0
  %55 = load i64, i64* %g_type, align 8
  %call42 = call i8* @g_type_name(i64 %55)
  %56 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %57 = bitcast %struct._GObject* %56 to %struct._GTypeInstance*
  %g_class43 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %57, i32 0, i32 0
  %58 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class43, align 8
  %g_type44 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %58, i32 0, i32 0
  %59 = load i64, i64* %g_type44, align 8
  %call45 = call i8* @g_type_name(i64 %59)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 222, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %49, i8* %51, i8* %call42, i8* %call45)
  br label %do.end.46

do.end.46:                                        ; preds = %do.body.41
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.else.22, %do.end.46, %if.end.40, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpToolOptions*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_options_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolOptions*
  store %struct._GimpToolOptions* %2, %struct._GimpToolOptions** %options, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %6 = bitcast %struct._GimpToolOptions* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_context_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContext*
  %call4 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %7)
  %8 = bitcast %struct._GimpToolInfo* %call4 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %8)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options, align 8
  %tool_info = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %10, i32 0, i32 1
  %11 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %12 = bitcast %struct._GimpToolInfo* %11 to i8*
  call void @g_value_set_object(%struct._GValue* %9, i8* %12)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %13, %struct._GObject** %_glib__object, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = load i32, i32* %property_id.addr, align 4
  store i32 %15, i32* %_glib__property_id, align 4
  %16 = load i32, i32* %_glib__property_id, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 246, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %16, i8* %18, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_real_reset(%struct._GimpToolOptions* %tool_options) #3 {
entry:
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_config_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %2)
  ret void
}

declare void @g_object_class_override_property(%struct._GObjectClass*, i32, i8*) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_info_get_type() #2

declare void @g_object_unref(i8*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpToolInfo* @gimp_tool_options_check_tool_info(%struct._GimpToolOptions* %options, %struct._GimpToolInfo* %tool_info, i32 %warn) #3 {
entry:
  %retval = alloca %struct._GimpToolInfo*, align 8
  %options.addr = alloca %struct._GimpToolOptions*, align 8
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %warn.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %new_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GimpToolOptions* %options, %struct._GimpToolOptions** %options.addr, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  store i32 %warn, i32* %warn.addr, align 4
  %0 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tobool = icmp ne %struct._GimpToolInfo* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %2 = bitcast %struct._GimpToolOptions* %1 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %2, i32 0, i32 0
  %3 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %3, i32 0, i32 0
  %4 = load i64, i64* %g_type, align 8
  %5 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options_type = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %5, i32 0, i32 3
  %6 = load i64, i64* %tool_options_type, align 8
  %cmp = icmp eq i64 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  store %struct._GimpToolInfo* %7, %struct._GimpToolInfo** %retval
  br label %if.end.23

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %9 = bitcast %struct._GimpToolOptions* %8 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call)
  %10 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call2 = call %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp* %11)
  store %struct._GList* %call2, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.21, %if.else
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %12, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %15, %struct._GimpToolInfo** %new_info, align 8
  %16 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %17 = bitcast %struct._GimpToolOptions* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %new_info, align 8
  %tool_options_type6 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %20, i32 0, i32 3
  %21 = load i64, i64* %tool_options_type6, align 8
  %cmp7 = icmp eq i64 %19, %21
  br i1 %cmp7, label %if.then.8, label %if.end.17

if.then.8:                                        ; preds = %for.body
  %22 = load i32, i32* %warn.addr, align 4
  %tobool9 = icmp ne i32 %22, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.8
  %23 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %24 = bitcast %struct._GimpToolOptions* %23 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type12 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type12, align 8
  %call13 = call i8* @g_type_name(i64 %26)
  %27 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tobool14 = icmp ne %struct._GimpToolInfo* %27, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %28 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %29 = bitcast %struct._GimpToolInfo* %28 to i8*
  %call15 = call i8* @gimp_object_get_name(i8* %29)
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call15, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), %cond.false ]
  %30 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %new_info, align 8
  %31 = bitcast %struct._GimpToolInfo* %30 to i8*
  %call16 = call i8* @gimp_object_get_name(i8* %31)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.17, i32 0, i32 0), i8* %call13, i8* %cond, i8* %call16)
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.8
  %32 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %new_info, align 8
  store %struct._GimpToolInfo* %32, %struct._GimpToolInfo** %retval
  br label %if.end.23

if.end.17:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool18 = icmp ne %struct._GList* %33, null
  br i1 %tobool18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %for.inc
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 1
  %35 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.21

cond.false.20:                                    ; preds = %for.inc
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi %struct._GList* [ %35, %cond.true.19 ], [ null, %cond.false.20 ]
  store %struct._GList* %cond22, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 167, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_tool_options_check_tool_info, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %if.end.23

do.end:                                           ; No predecessors!
  br label %if.end.23

if.end.23:                                        ; preds = %if.then, %if.end, %do.body, %do.end
  %36 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %retval
  ret %struct._GimpToolInfo* %36
}

declare void @gimp_context_set_tool(%struct._GimpContext*, %struct._GimpToolInfo*) #1

declare i8* @g_object_ref(i8*) #1

declare void @gimp_context_define_properties(%struct._GimpContext*, i32, i32) #1

declare void @gimp_context_set_serialize_properties(%struct._GimpContext*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

declare %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp*) #1

declare void @g_printerr(i8*, ...) #1

declare void @g_log(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @gimp_config_reset(%struct._GimpConfig*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_tool_notify(%struct._GimpToolOptions* %options, %struct._GParamSpec* %pspec) #3 {
entry:
  %options.addr = alloca %struct._GimpToolOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %new_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GimpToolOptions* %options, %struct._GimpToolOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  %call2 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %2)
  store %struct._GimpToolInfo* %call2, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %call3 = call %struct._GimpToolInfo* @gimp_tool_options_check_tool_info(%struct._GimpToolOptions* %3, %struct._GimpToolInfo* %4, i32 0)
  store %struct._GimpToolInfo* %call3, %struct._GimpToolInfo** %new_info, align 8
  %5 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool = icmp ne %struct._GimpToolInfo* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %new_info, align 8
  %7 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %cmp = icmp ne %struct._GimpToolInfo* %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %9 = bitcast %struct._GimpToolOptions* %8 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %11)
  %12 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %13 = bitcast %struct._GimpToolInfo* %12 to i8*
  %call5 = call i8* @gimp_object_get_name(i8* %13)
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %new_info, align 8
  %15 = bitcast %struct._GimpToolInfo* %14 to i8*
  %call6 = call i8* @gimp_object_get_name(i8* %15)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_tool_options_tool_notify, i32 0, i32 0), i8* %call4, i8* %call5, i8* %call6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_config_reset(%struct._GimpConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to i8*
  %call = call i8* @gimp_object_get_name(i8* %1)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  store i8* %call1, i8** %name, align 8
  %2 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %3 = bitcast %struct._GimpConfig* %2 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  call void @gimp_config_reset_properties(%struct._GObject* %4)
  %5 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %6 = bitcast %struct._GimpConfig* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_object_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpObject*
  %8 = load i8*, i8** %name, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %7, i8* %8)
  ret void
}

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_config_reset_properties(%struct._GObject*) #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
