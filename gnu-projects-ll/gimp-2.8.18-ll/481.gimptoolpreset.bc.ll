; ModuleID = './app/core/gimptoolpreset.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpToolPresetClass = type { %struct._GimpDataClass }
%struct._GimpDataClass = type { %struct._GimpViewableClass, void (%struct._GimpData*)*, i32 (%struct._GimpData*, %struct._GError**)*, i8* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)* }
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
%struct._GimpToolPreset = type { %struct._GimpData, %struct._Gimp*, %struct._GimpToolOptions*, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GdkPixbuf = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfig = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_tool_preset_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpToolPreset\00", align 1
@gimp_tool_preset_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpConfigInterface*)* @gimp_tool_preset_config_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_tool_preset_new = private unnamed_addr constant [21 x i8] c"gimp_tool_preset_new\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"tool_info != NULL\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"tool-options\00", align 1
@__func__.gimp_tool_preset_get_prop_mask = private unnamed_addr constant [31 x i8] c"gimp_tool_preset_get_prop_mask\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"GIMP_IS_TOOL_PRESET (preset)\00", align 1
@gimp_tool_preset_parent_class = internal global i8* null, align 8
@GimpToolPreset_private_offset = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"Unnamed\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"use-fg-bg\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"use-brush\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"use-dynamics\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"use-pattern\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"use-palette\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"use-gradient\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"use-font\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"gimptoolpreset.c\00", align 1
@__func__.gimp_tool_preset_constructed = private unnamed_addr constant [29 x i8] c"gimp_tool_preset_constructed\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"GIMP_IS_GIMP (preset->gimp)\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c".gtp\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"unable to determine type of '%s'\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"'%s' is not a subclass of GimpToolOptions\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"tool-info\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"tool\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tool_preset_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tool_preset_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tool_preset_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_data_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 312, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tool_preset_class_intern_init to void (i8*, i8*)*), i32 80, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpToolPreset*)* @gimp_tool_preset_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_tool_preset_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tool_preset_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_tool_preset_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tool_preset_parent_class, align 8
  %1 = load i32, i32* @GimpToolPreset_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpToolPreset_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpToolPresetClass*
  call void @gimp_tool_preset_class_init(%struct._GimpToolPresetClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_init(%struct._GimpToolPreset* %tool_preset) #3 {
entry:
  %tool_preset.addr = alloca %struct._GimpToolPreset*, align 8
  store %struct._GimpToolPreset* %tool_preset, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %0 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %0, i32 0, i32 2
  store %struct._GimpToolOptions* null, %struct._GimpToolOptions** %tool_options, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_config_iface_init(%struct._GimpConfigInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpConfigInterface*, align 8
  store %struct._GimpConfigInterface* %iface, %struct._GimpConfigInterface** %iface.addr, align 8
  %0 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %deserialize_property = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %0, i32 0, i32 4
  store i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)* @gimp_tool_preset_deserialize_property, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)** %deserialize_property, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_tool_preset_new(%struct._GimpContext* %context, i8* %unused) #3 {
entry:
  %retval = alloca %struct._GimpData*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %unused.addr = alloca i8*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %stock_id = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_tool_preset_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call11 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %13)
  store %struct._GimpToolInfo* %call11, %struct._GimpToolInfo** %tool_info, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %cmp13 = icmp ne %struct._GimpToolInfo* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_tool_preset_new, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %16 = bitcast %struct._GimpToolInfo* %15 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_viewable_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call18)
  %17 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpViewable*
  %call20 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %17)
  store i8* %call20, i8** %stock_id, align 8
  %call21 = call i64 @gimp_tool_preset_get_type() #7
  %18 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %blurb = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %18, i32 0, i32 5
  %19 = load i8*, i8** %blurb, align 8
  %20 = load i8*, i8** %stock_id, align 8
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %21, i32 0, i32 1
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %23 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %23, i32 0, i32 12
  %24 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %call22 = call i8* (i64, i8*, ...) @g_object_new(i64 %call21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), %struct._GimpToolOptions* %24, i8* null)
  %25 = bitcast i8* %call22 to %struct._GimpData*
  store %struct._GimpData* %25, %struct._GimpData** %retval
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  %26 = load %struct._GimpData*, %struct._GimpData** %retval
  ret %struct._GimpData* %26
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext*) #1

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_tool_preset_get_prop_mask(%struct._GimpToolPreset* %preset) #3 {
entry:
  %retval = alloca i32, align 4
  %preset.addr = alloca %struct._GimpToolPreset*, align 8
  %serialize_props = alloca i32, align 4
  %use_props = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpToolPreset* %preset, %struct._GimpToolPreset** %preset.addr, align 8
  store i32 0, i32* %use_props, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %1 = bitcast %struct._GimpToolPreset* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_preset_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_tool_preset_get_prop_mask, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %13, i32 0, i32 2
  %14 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %15 = bitcast %struct._GimpToolOptions* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_context_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpContext*
  %call13 = call i32 @gimp_context_get_serialize_properties(%struct._GimpContext* %16)
  store i32 %call13, i32* %serialize_props, align 4
  %17 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %use_fg_bg = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %17, i32 0, i32 3
  %18 = load i32, i32* %use_fg_bg, align 4
  %tobool14 = icmp ne i32 %18, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %19 = load i32, i32* %serialize_props, align 4
  %and = and i32 64, %19
  %20 = load i32, i32* %use_props, align 4
  %or = or i32 %20, %and
  store i32 %or, i32* %use_props, align 4
  %21 = load i32, i32* %serialize_props, align 4
  %and16 = and i32 128, %21
  %22 = load i32, i32* %use_props, align 4
  %or17 = or i32 %22, %and16
  store i32 %or17, i32* %use_props, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %do.end
  %23 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %use_brush = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %23, i32 0, i32 4
  %24 = load i32, i32* %use_brush, align 4
  %tobool19 = icmp ne i32 %24, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %25 = load i32, i32* %serialize_props, align 4
  %and21 = and i32 1024, %25
  %26 = load i32, i32* %use_props, align 4
  %or22 = or i32 %26, %and21
  store i32 %or22, i32* %use_props, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %27 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %use_dynamics = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %27, i32 0, i32 5
  %28 = load i32, i32* %use_dynamics, align 4
  %tobool24 = icmp ne i32 %28, 0
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.23
  %29 = load i32, i32* %serialize_props, align 4
  %and26 = and i32 2048, %29
  %30 = load i32, i32* %use_props, align 4
  %or27 = or i32 %30, %and26
  store i32 %or27, i32* %use_props, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end.23
  %31 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %use_pattern = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %31, i32 0, i32 7
  %32 = load i32, i32* %use_pattern, align 4
  %tobool29 = icmp ne i32 %32, 0
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.28
  %33 = load i32, i32* %serialize_props, align 4
  %and31 = and i32 4096, %33
  %34 = load i32, i32* %use_props, align 4
  %or32 = or i32 %34, %and31
  store i32 %or32, i32* %use_props, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.28
  %35 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %use_palette = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %35, i32 0, i32 8
  %36 = load i32, i32* %use_palette, align 4
  %tobool34 = icmp ne i32 %36, 0
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.33
  %37 = load i32, i32* %serialize_props, align 4
  %and36 = and i32 16384, %37
  %38 = load i32, i32* %use_props, align 4
  %or37 = or i32 %38, %and36
  store i32 %or37, i32* %use_props, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.33
  %39 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %use_gradient = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %39, i32 0, i32 6
  %40 = load i32, i32* %use_gradient, align 4
  %tobool39 = icmp ne i32 %40, 0
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.38
  %41 = load i32, i32* %serialize_props, align 4
  %and41 = and i32 8192, %41
  %42 = load i32, i32* %use_props, align 4
  %or42 = or i32 %42, %and41
  store i32 %or42, i32* %use_props, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.38
  %43 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %use_font = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %43, i32 0, i32 9
  %44 = load i32, i32* %use_font, align 4
  %tobool44 = icmp ne i32 %44, 0
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end.43
  %45 = load i32, i32* %serialize_props, align 4
  %and46 = and i32 65536, %45
  %46 = load i32, i32* %use_props, align 4
  %or47 = or i32 %46, %and46
  store i32 %or47, i32* %use_props, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.end.43
  %47 = load i32, i32* %use_props, align 4
  store i32 %47, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.else.9
  %48 = load i32, i32* %retval
  ret i32 %48
}

declare i32 @gimp_context_get_serialize_properties(%struct._GimpContext*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_class_init(%struct._GimpToolPresetClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpToolPresetClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %data_class = alloca %struct._GimpDataClass*, align 8
  store %struct._GimpToolPresetClass* %klass, %struct._GimpToolPresetClass** %klass.addr, align 8
  %0 = load %struct._GimpToolPresetClass*, %struct._GimpToolPresetClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpToolPresetClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpToolPresetClass*, %struct._GimpToolPresetClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpToolPresetClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_data_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpDataClass*
  store %struct._GimpDataClass* %5, %struct._GimpDataClass** %data_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_tool_preset_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_tool_preset_finalize, void (%struct._GObject*)** %finalize, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_tool_preset_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_tool_preset_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispatch_properties_changed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 7
  store void (%struct._GObject*, i32, %struct._GParamSpec**)* @gimp_tool_preset_dispatch_properties_changed, void (%struct._GObject*, i32, %struct._GParamSpec**)** %dispatch_properties_changed, align 8
  %11 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %save = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %11, i32 0, i32 2
  store i32 (%struct._GimpData*, %struct._GError**)* @gimp_tool_preset_save, i32 (%struct._GimpData*, %struct._GError**)** %save, align 8
  %12 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %get_extension = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %12, i32 0, i32 3
  store i8* (%struct._GimpData*)* @gimp_tool_preset_get_extension, i8* (%struct._GimpData*)** %get_extension, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 1, %struct._GParamSpec* %call3)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call i64 @gimp_get_type() #7
  %call5 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call4, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 2, %struct._GParamSpec* %call5)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i64 @gimp_tool_options_get_type() #7
  %call7 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i64 %call6, i32 483)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 3, %struct._GParamSpec* %call7)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 4, %struct._GParamSpec* %call8)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 5, %struct._GParamSpec* %call9)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 6, %struct._GParamSpec* %call10)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 8, %struct._GParamSpec* %call11)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 9, %struct._GParamSpec* %call12)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call13 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 7, %struct._GParamSpec* %call13)
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call14 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 10, %struct._GParamSpec* %call14)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %preset = alloca %struct._GimpToolPreset*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_preset_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolPreset*
  store %struct._GimpToolPreset* %2, %struct._GimpToolPreset** %preset, align 8
  %3 = load i8*, i8** @gimp_tool_preset_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_tool_preset_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %gimp = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %14 = bitcast %struct._Gimp* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_get_type() #7
  store i64 %call5, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.14
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i32 183, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tool_preset_constructed, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0)) #9
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tool_preset = alloca %struct._GimpToolPreset*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_preset_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolPreset*
  store %struct._GimpToolPreset* %2, %struct._GimpToolPreset** %tool_preset, align 8
  %3 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  call void @gimp_tool_preset_set_options(%struct._GimpToolPreset* %3, %struct._GimpToolOptions* null)
  %4 = load i8*, i8** @gimp_tool_preset_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tool_preset = alloca %struct._GimpToolPreset*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_preset_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolPreset*
  store %struct._GimpToolPreset* %2, %struct._GimpToolPreset** %tool_preset, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.11
    i32 5, label %sw.bb.13
    i32 6, label %sw.bb.15
    i32 8, label %sw.bb.17
    i32 9, label %sw.bb.19
    i32 7, label %sw.bb.21
    i32 10, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %5 = bitcast %struct._GimpToolPreset* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_string(%struct._GValue* %7)
  call void @gimp_object_set_name(%struct._GimpObject* %6, i8* %call4)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_object(%struct._GValue* %8)
  %9 = bitcast i8* %call6 to %struct._Gimp*
  %10 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %gimp = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %10, i32 0, i32 1
  store %struct._Gimp* %9, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %11 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i8* @g_value_get_object(%struct._GValue* %12)
  %13 = bitcast i8* %call8 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_tool_options_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpToolOptions*
  call void @gimp_tool_preset_set_options(%struct._GimpToolPreset* %11, %struct._GimpToolOptions* %14)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %15)
  %16 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %use_fg_bg = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %16, i32 0, i32 3
  store i32 %call12, i32* %use_fg_bg, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_boolean(%struct._GValue* %17)
  %18 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %use_brush = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %18, i32 0, i32 4
  store i32 %call14, i32* %use_brush, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i32 @g_value_get_boolean(%struct._GValue* %19)
  %20 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %use_dynamics = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %20, i32 0, i32 5
  store i32 %call16, i32* %use_dynamics, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i32 @g_value_get_boolean(%struct._GValue* %21)
  %22 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %use_pattern = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %22, i32 0, i32 7
  store i32 %call18, i32* %use_pattern, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call20 = call i32 @g_value_get_boolean(%struct._GValue* %23)
  %24 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %use_palette = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %24, i32 0, i32 8
  store i32 %call20, i32* %use_palette, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i32 @g_value_get_boolean(%struct._GValue* %25)
  %26 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %use_gradient = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %26, i32 0, i32 6
  store i32 %call22, i32* %use_gradient, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call24 = call i32 @g_value_get_boolean(%struct._GValue* %27)
  %28 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %use_font = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %28, i32 0, i32 9
  store i32 %call24, i32* %use_font, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %29 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %29, %struct._GObject** %_glib__object, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %30, %struct._GParamSpec** %_glib__pspec, align 8
  %31 = load i32, i32* %property_id.addr, align 4
  store i32 %31, i32* %_glib__property_id, align 4
  %32 = load i32, i32* %_glib__property_id, align 4
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %33, i32 0, i32 1
  %34 = load i8*, i8** %name, align 8
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %36 = bitcast %struct._GParamSpec* %35 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type, align 8
  %call25 = call i8* @g_type_name(i64 %38)
  %39 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %40 = bitcast %struct._GObject* %39 to %struct._GTypeInstance*
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %41, i32 0, i32 0
  %42 = load i64, i64* %g_type27, align 8
  %call28 = call i8* @g_type_name(i64 %42)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i32 243, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %32, i8* %34, i8* %call25, i8* %call28)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.7, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tool_preset = alloca %struct._GimpToolPreset*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_preset_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolPreset*
  store %struct._GimpToolPreset* %2, %struct._GimpToolPreset** %tool_preset, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.5
    i32 5, label %sw.bb.6
    i32 6, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 7, label %sw.bb.10
    i32 10, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %6 = bitcast %struct._GimpToolPreset* %5 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %6)
  call void @g_value_set_string(%struct._GValue* %4, i8* %call2)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %gimp = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %8, i32 0, i32 1
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %10 = bitcast %struct._Gimp* %9 to i8*
  call void @g_value_set_object(%struct._GValue* %7, i8* %10)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %12, i32 0, i32 2
  %13 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %14 = bitcast %struct._GimpToolOptions* %13 to i8*
  call void @g_value_set_object(%struct._GValue* %11, i8* %14)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %16 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %use_fg_bg = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %16, i32 0, i32 3
  %17 = load i32, i32* %use_fg_bg, align 4
  call void @g_value_set_boolean(%struct._GValue* %15, i32 %17)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %19 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %use_brush = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %19, i32 0, i32 4
  %20 = load i32, i32* %use_brush, align 4
  call void @g_value_set_boolean(%struct._GValue* %18, i32 %20)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %22 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %use_dynamics = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %22, i32 0, i32 5
  %23 = load i32, i32* %use_dynamics, align 4
  call void @g_value_set_boolean(%struct._GValue* %21, i32 %23)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %25 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %use_pattern = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %25, i32 0, i32 7
  %26 = load i32, i32* %use_pattern, align 4
  call void @g_value_set_boolean(%struct._GValue* %24, i32 %26)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %28 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %use_palette = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %28, i32 0, i32 8
  %29 = load i32, i32* %use_palette, align 4
  call void @g_value_set_boolean(%struct._GValue* %27, i32 %29)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %30 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %31 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %use_gradient = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %31, i32 0, i32 6
  %32 = load i32, i32* %use_gradient, align 4
  call void @g_value_set_boolean(%struct._GValue* %30, i32 %32)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %33 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %34 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %use_font = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %34, i32 0, i32 9
  %35 = load i32, i32* %use_font, align 4
  call void @g_value_set_boolean(%struct._GValue* %33, i32 %35)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %36 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %36, %struct._GObject** %_glib__object, align 8
  %37 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %37, %struct._GParamSpec** %_glib__pspec, align 8
  %38 = load i32, i32* %property_id.addr, align 4
  store i32 %38, i32* %_glib__property_id, align 4
  %39 = load i32, i32* %_glib__property_id, align 4
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %40, i32 0, i32 1
  %41 = load i8*, i8** %name, align 8
  %42 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %43 = bitcast %struct._GParamSpec* %42 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type, align 8
  %call12 = call i8* @g_type_name(i64 %45)
  %46 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %47 = bitcast %struct._GObject* %46 to %struct._GTypeInstance*
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type14 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %48, i32 0, i32 0
  %49 = load i64, i64* %g_type14, align 8
  %call15 = call i8* @g_type_name(i64 %49)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i32 293, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %39, i8* %41, i8* %call12, i8* %call15)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_dispatch_properties_changed(%struct._GObject* %object, i32 %n_pspecs, %struct._GParamSpec** %pspecs) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %n_pspecs.addr = alloca i32, align 4
  %pspecs.addr = alloca %struct._GParamSpec**, align 8
  %i = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %n_pspecs, i32* %n_pspecs.addr, align 4
  store %struct._GParamSpec** %pspecs, %struct._GParamSpec*** %pspecs.addr, align 8
  %0 = load i8*, i8** @gimp_tool_preset_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %dispatch_properties_changed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 7
  %3 = load void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, i32, %struct._GParamSpec**)** %dispatch_properties_changed, align 8
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %5 = load i32, i32* %n_pspecs.addr, align 4
  %6 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  call void %3(%struct._GObject* %4, i32 %5, %struct._GParamSpec** %6)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n_pspecs.addr, align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %10, i64 %idxprom
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 2
  %12 = load i32, i32* %flags, align 4
  %and = and i32 %12, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %14 = bitcast %struct._GObject* %13 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_data_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call1)
  %15 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %15)
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare i32 @gimp_tool_preset_save(%struct._GimpData*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_tool_preset_get_extension(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_options_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_set_options(%struct._GimpToolPreset* %preset, %struct._GimpToolOptions* %options) #3 {
entry:
  %preset.addr = alloca %struct._GimpToolPreset*, align 8
  %options.addr = alloca %struct._GimpToolOptions*, align 8
  %serialize_props = alloca i32, align 4
  store %struct._GimpToolPreset* %preset, %struct._GimpToolPreset** %preset.addr, align 8
  store %struct._GimpToolOptions* %options, %struct._GimpToolOptions** %options.addr, align 8
  %0 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %0, i32 0, i32 2
  %1 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %tobool = icmp ne %struct._GimpToolOptions* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tool_options1 = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %2, i32 0, i32 2
  %3 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options1, align 8
  %4 = bitcast %struct._GimpToolOptions* %3 to i8*
  %5 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %6 = bitcast %struct._GimpToolPreset* %5 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpToolPreset*)* @gimp_tool_preset_options_notify to i8*), i8* %6)
  %7 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tool_options2 = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %7, i32 0, i32 2
  %8 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options2, align 8
  %9 = bitcast %struct._GimpToolOptions* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tool_options3 = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %10, i32 0, i32 2
  store %struct._GimpToolOptions* null, %struct._GimpToolOptions** %tool_options3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %tobool4 = icmp ne %struct._GimpToolOptions* %11, null
  br i1 %tobool4, label %if.then.5, label %if.end.48

if.then.5:                                        ; preds = %if.end
  %12 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %13 = bitcast %struct._GimpToolOptions* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_config_interface_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpConfig*
  %call8 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %14)
  %15 = bitcast i8* %call8 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_tool_options_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpToolOptions*
  %17 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tool_options11 = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %17, i32 0, i32 2
  store %struct._GimpToolOptions* %16, %struct._GimpToolOptions** %tool_options11, align 8
  %18 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tool_options12 = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %18, i32 0, i32 2
  %19 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options12, align 8
  %20 = bitcast %struct._GimpToolOptions* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_context_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpContext*
  %call15 = call i32 @gimp_context_get_serialize_properties(%struct._GimpContext* %21)
  store i32 %call15, i32* %serialize_props, align 4
  %22 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tool_options16 = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %22, i32 0, i32 2
  %23 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options16, align 8
  %24 = bitcast %struct._GimpToolOptions* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_context_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpContext*
  %26 = load i32, i32* %serialize_props, align 4
  %or = or i32 %26, 16
  call void @gimp_context_set_serialize_properties(%struct._GimpContext* %25, i32 %or)
  %27 = load i32, i32* %serialize_props, align 4
  %and = and i32 %27, 64
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.then.5
  %28 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %29 = bitcast %struct._GimpToolPreset* %28 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* null)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.5
  %30 = load i32, i32* %serialize_props, align 4
  %and22 = and i32 %30, 1024
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  %31 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %32 = bitcast %struct._GimpToolPreset* %31 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 0, i8* null)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.21
  %33 = load i32, i32* %serialize_props, align 4
  %and26 = and i32 %33, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %34 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %35 = bitcast %struct._GimpToolPreset* %34 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 0, i8* null)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.25
  %36 = load i32, i32* %serialize_props, align 4
  %and30 = and i32 %36, 8192
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.29
  %37 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %38 = bitcast %struct._GimpToolPreset* %37 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* null)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.29
  %39 = load i32, i32* %serialize_props, align 4
  %and34 = and i32 %39, 4096
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.end.33
  %40 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %41 = bitcast %struct._GimpToolPreset* %40 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* null)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.33
  %42 = load i32, i32* %serialize_props, align 4
  %and38 = and i32 %42, 16384
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  %43 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %44 = bitcast %struct._GimpToolPreset* %43 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 0, i8* null)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.37
  %45 = load i32, i32* %serialize_props, align 4
  %and42 = and i32 %45, 65536
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.end.41
  %46 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %47 = bitcast %struct._GimpToolPreset* %46 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* null)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.41
  %48 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %tool_options46 = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %48, i32 0, i32 2
  %49 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options46, align 8
  %50 = bitcast %struct._GimpToolOptions* %49 to i8*
  %51 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %52 = bitcast %struct._GimpToolPreset* %51 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpToolPreset*)* @gimp_tool_preset_options_notify to void ()*), i8* %52, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.45, %if.end
  %53 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %54 = bitcast %struct._GimpToolPreset* %53 to %struct._GTypeInstance*
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 80)
  %55 = bitcast %struct._GTypeInstance* %call49 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_preset_options_notify(%struct._GObject* %tool_options, %struct._GParamSpec* %pspec, %struct._GimpToolPreset* %preset) #3 {
entry:
  %tool_options.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %preset.addr = alloca %struct._GimpToolPreset*, align 8
  store %struct._GObject* %tool_options, %struct._GObject** %tool_options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpToolPreset* %preset, %struct._GimpToolPreset** %preset.addr, align 8
  %0 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %1 = bitcast %struct._GimpToolPreset* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

declare void @g_object_unref(i8*) #1

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

declare void @gimp_context_set_serialize_properties(%struct._GimpContext*, i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @gimp_data_dirty(%struct._GimpData*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tool_preset_deserialize_property(%struct._GimpConfig* %config, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec, %struct._GScanner* %scanner, i32* %expected) #3 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %expected.addr = alloca i32*, align 8
  %tool_preset = alloca %struct._GimpToolPreset*, align 8
  %options = alloca %struct._GObject*, align 8
  %type_name = alloca i8*, align 8
  %type = alloca i64, align 8
  %serialize_props = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32* %expected, i32** %expected.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_preset_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolPreset*
  store %struct._GimpToolPreset* %2, %struct._GimpToolPreset** %tool_preset, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call2 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %4, i8** %type_name)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %5 = load i32*, i32** %expected.addr, align 8
  store i32 264, i32* %5, align 4
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %6 = load i8*, i8** %type_name, align 8
  %call3 = call i64 @g_type_from_name(i8* %6)
  store i64 %call3, i64* %type, align 8
  %7 = load i64, i64* %type, align 8
  %tobool4 = icmp ne i64 %7, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %9 = load i8*, i8** %type_name, align 8
  call void (%struct._GScanner*, i8*, ...) @g_scanner_error(%struct._GScanner* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0), i8* %9)
  %10 = load i32*, i32** %expected.addr, align 8
  store i32 264, i32* %10, align 4
  %11 = load i8*, i8** %type_name, align 8
  call void @g_free(i8* %11)
  br label %sw.epilog

if.end.6:                                         ; preds = %if.end
  %12 = load i64, i64* %type, align 8
  %call7 = call i64 @gimp_tool_options_get_type() #7
  %call8 = call i32 @g_type_is_a(i64 %12, i64 %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.6
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %14 = load i8*, i8** %type_name, align 8
  call void (%struct._GScanner*, i8*, ...) @g_scanner_error(%struct._GScanner* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i32 0, i32 0), i8* %14)
  %15 = load i32*, i32** %expected.addr, align 8
  store i32 264, i32* %15, align 4
  %16 = load i8*, i8** %type_name, align 8
  call void @g_free(i8* %16)
  br label %sw.epilog

if.end.11:                                        ; preds = %if.end.6
  %17 = load i8*, i8** %type_name, align 8
  call void @g_free(i8* %17)
  %18 = load i64, i64* %type, align 8
  %19 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %gimp = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %20, i8* null)
  %21 = bitcast i8* %call12 to %struct._GObject*
  store %struct._GObject* %21, %struct._GObject** %options, align 8
  %22 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %gimp13 = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %22, i32 0, i32 1
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp13, align 8
  %call14 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %23)
  %24 = load %struct._GObject*, %struct._GObject** %options, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_context_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call15)
  %26 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpContext*
  call void @gimp_context_copy_properties(%struct._GimpContext* %call14, %struct._GimpContext* %26, i32 97280)
  %27 = load %struct._GObject*, %struct._GObject** %options, align 8
  %28 = bitcast %struct._GObject* %27 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %30 = bitcast %struct._GTypeClass* %29 to i8*
  %call17 = call i64 @gimp_config_interface_get_type() #7
  %call18 = call i8* @g_type_interface_peek(i8* %30, i64 %call17)
  %31 = bitcast i8* %call18 to %struct._GimpConfigInterface*
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %31, i32 0, i32 2
  %32 = load i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  %33 = load %struct._GObject*, %struct._GObject** %options, align 8
  %34 = bitcast %struct._GObject* %33 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_config_interface_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call19)
  %35 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpConfig*
  %36 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call21 = call i32 %32(%struct._GimpConfig* %35, %struct._GScanner* %36, i32 1, i8* null)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.11
  %37 = load %struct._GObject*, %struct._GObject** %options, align 8
  %38 = bitcast %struct._GObject* %37 to i8*
  call void @g_object_unref(i8* %38)
  br label %sw.epilog

if.end.24:                                        ; preds = %if.end.11
  %39 = load %struct._GObject*, %struct._GObject** %options, align 8
  %40 = bitcast %struct._GObject* %39 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_context_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call25)
  %41 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpContext*
  %call27 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %41)
  %tobool28 = icmp ne %struct._GimpToolInfo* %call27, null
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end.24
  %42 = load %struct._GObject*, %struct._GObject** %options, align 8
  %43 = bitcast %struct._GObject* %42 to i8*
  %44 = load %struct._GObject*, %struct._GObject** %options, align 8
  %45 = bitcast %struct._GObject* %44 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_context_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call30)
  %46 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpContext*
  %call32 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %46)
  call void (i8*, i8*, ...) @g_object_set(i8* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), %struct._GimpToolInfo* %call32, i8* null)
  br label %if.end.42

if.else:                                          ; preds = %if.end.24
  %47 = load %struct._GObject*, %struct._GObject** %options, align 8
  %48 = bitcast %struct._GObject* %47 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_tool_options_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call33)
  %49 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpToolOptions*
  %tool_info = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %49, i32 0, i32 1
  %50 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool35 = icmp ne %struct._GimpToolInfo* %50, null
  br i1 %tobool35, label %if.then.36, label %if.else.40

if.then.36:                                       ; preds = %if.else
  %51 = load %struct._GObject*, %struct._GObject** %options, align 8
  %52 = bitcast %struct._GObject* %51 to i8*
  %53 = load %struct._GObject*, %struct._GObject** %options, align 8
  %54 = bitcast %struct._GObject* %53 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_tool_options_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call37)
  %55 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpToolOptions*
  %tool_info39 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %55, i32 0, i32 1
  %56 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info39, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), %struct._GimpToolInfo* %56, i8* null)
  br label %if.end.41

if.else.40:                                       ; preds = %if.else
  %57 = load %struct._GObject*, %struct._GObject** %options, align 8
  %58 = bitcast %struct._GObject* %57 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* null)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.then.36
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.29
  %59 = load %struct._GObject*, %struct._GObject** %options, align 8
  %60 = bitcast %struct._GObject* %59 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_context_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call43)
  %61 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpContext*
  %call45 = call i32 @gimp_context_get_serialize_properties(%struct._GimpContext* %61)
  store i32 %call45, i32* %serialize_props, align 4
  %62 = load %struct._GObject*, %struct._GObject** %options, align 8
  %63 = bitcast %struct._GObject* %62 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_context_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call46)
  %64 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpContext*
  %65 = load i32, i32* %serialize_props, align 4
  %or = or i32 %65, 16
  call void @gimp_context_set_serialize_properties(%struct._GimpContext* %64, i32 %or)
  %66 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %67 = load %struct._GObject*, %struct._GObject** %options, align 8
  %68 = bitcast %struct._GObject* %67 to i8*
  call void @g_value_take_object(%struct._GValue* %66, i8* %68)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.42, %if.then.23, %if.then.10, %if.then.5, %if.then
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare i32 @gimp_scanner_parse_string(%struct._GScanner*, i8**) #1

declare i64 @g_type_from_name(i8*) #1

declare void @g_scanner_error(%struct._GScanner*, i8*, ...) #1

declare void @g_free(i8*) #1

declare i32 @g_type_is_a(i64, i64) #1

declare void @gimp_context_copy_properties(%struct._GimpContext*, %struct._GimpContext*, i32) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare i8* @g_type_interface_peek(i8*, i64) #1

declare void @g_value_take_object(%struct._GValue*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
