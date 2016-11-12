; ModuleID = './app/core/gimptoolinfo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpToolInfoClass = type { %struct._GimpViewableClass }
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
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
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
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpPaintInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i8*, %struct._GimpPaintOptions* }
%struct._GimpPaintOptions = type opaque
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

@gimp_tool_info_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpToolInfo\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_tool_info_new = private unnamed_addr constant [19 x i8] c"gimp_tool_info_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"identifier != NULL\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"blurb != NULL\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"help != NULL\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"menu_label != NULL\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"help_id != NULL\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"paint_core_name != NULL\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"stock_id != NULL\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"GIMP_IS_PAINT_INFO (paint_info)\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"tool\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"tool-info\00", align 1
@__func__.gimp_tool_info_set_standard = private unnamed_addr constant [28 x i8] c"gimp_tool_info_set_standard\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"! tool_info || GIMP_IS_TOOL_INFO (tool_info)\00", align 1
@__func__.gimp_tool_info_get_standard = private unnamed_addr constant [28 x i8] c"gimp_tool_info_get_standard\00", align 1
@__func__.gimp_tool_info_build_options_filename = private unnamed_addr constant [38 x i8] c"gimp_tool_info_build_options_filename\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"GIMP_IS_TOOL_INFO (tool_info)\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"tool-options\00", align 1
@gimp_tool_info_parent_class = internal global i8* null, align 8
@GimpToolInfo_private_offset = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"gimptoolinfo.c\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tool_info_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tool_info_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tool_info_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_viewable_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 280, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tool_info_class_intern_init to void (i8*, i8*)*), i32 144, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpToolInfo*)* @gimp_tool_info_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tool_info_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_tool_info_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_info_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tool_info_parent_class, align 8
  %1 = load i32, i32* @GimpToolInfo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpToolInfo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpToolInfoClass*
  call void @gimp_tool_info_class_init(%struct._GimpToolInfoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_info_init(%struct._GimpToolInfo* %tool_info) #3 {
entry:
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  %0 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %0, i32 0, i32 1
  store %struct._Gimp* null, %struct._Gimp** %gimp, align 8
  %1 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_type = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %1, i32 0, i32 2
  store i64 4, i64* %tool_type, align 8
  %2 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options_type = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %2, i32 0, i32 3
  store i64 4, i64* %tool_options_type, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %context_props = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %3, i32 0, i32 4
  store i32 0, i32* %context_props, align 4
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %blurb = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %4, i32 0, i32 5
  store i8* null, i8** %blurb, align 8
  %5 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %help = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %5, i32 0, i32 6
  store i8* null, i8** %help, align 8
  %6 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %menu_label = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %6, i32 0, i32 7
  store i8* null, i8** %menu_label, align 8
  %7 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %menu_accel = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %7, i32 0, i32 8
  store i8* null, i8** %menu_accel, align 8
  %8 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %help_domain = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %8, i32 0, i32 9
  store i8* null, i8** %help_domain, align 8
  %9 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %help_id = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %9, i32 0, i32 10
  store i8* null, i8** %help_id, align 8
  %10 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %visible = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %10, i32 0, i32 11
  store i32 1, i32* %visible, align 4
  %11 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %11, i32 0, i32 12
  store %struct._GimpToolOptions* null, %struct._GimpToolOptions** %tool_options, align 8
  %12 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %paint_info = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %12, i32 0, i32 13
  store %struct._GimpPaintInfo* null, %struct._GimpPaintInfo** %paint_info, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpToolInfo* @gimp_tool_info_new(%struct._Gimp* %gimp, i64 %tool_type, i64 %tool_options_type, i32 %context_props, i8* %identifier, i8* %blurb, i8* %help, i8* %menu_label, i8* %menu_accel, i8* %help_domain, i8* %help_id, i8* %paint_core_name, i8* %stock_id) #3 {
entry:
  %retval = alloca %struct._GimpToolInfo*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %tool_type.addr = alloca i64, align 8
  %tool_options_type.addr = alloca i64, align 8
  %context_props.addr = alloca i32, align 4
  %identifier.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %help.addr = alloca i8*, align 8
  %menu_label.addr = alloca i8*, align 8
  %menu_accel.addr = alloca i8*, align 8
  %help_domain.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %paint_core_name.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %paint_info = alloca %struct._GimpPaintInfo*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst56 = alloca %struct._GTypeInstance*, align 8
  %__t58 = alloca i64, align 8
  %__r61 = alloca i32, align 4
  %tmp76 = alloca i32, align 4
  %presets = alloca %struct._GimpContainer*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i64 %tool_type, i64* %tool_type.addr, align 8
  store i64 %tool_options_type, i64* %tool_options_type.addr, align 8
  store i32 %context_props, i32* %context_props.addr, align 4
  store i8* %identifier, i8** %identifier.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i8* %help, i8** %help.addr, align 8
  store i8* %menu_label, i8** %menu_label.addr, align 8
  store i8* %menu_accel, i8** %menu_accel.addr, align 8
  store i8* %help_domain, i8** %help_domain.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %paint_core_name, i8** %paint_core_name.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_tool_info_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %identifier.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_tool_info_new, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %blurb.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_tool_info_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load i8*, i8** %help.addr, align 8
  %cmp24 = icmp ne i8* %15, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_tool_info_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %16 = load i8*, i8** %menu_label.addr, align 8
  %cmp30 = icmp ne i8* %16, null
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_tool_info_new, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %17 = load i8*, i8** %help_id.addr, align 8
  %cmp36 = icmp ne i8* %17, null
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.35
  br label %if.end.39

if.else.38:                                       ; preds = %do.body.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_tool_info_new, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %18 = load i8*, i8** %paint_core_name.addr, align 8
  %cmp42 = icmp ne i8* %18, null
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.41
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_tool_info_new, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %19 = load i8*, i8** %stock_id.addr, align 8
  %cmp48 = icmp ne i8* %19, null
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.47
  br label %if.end.51

if.else.50:                                       ; preds = %do.body.47
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_tool_info_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %paint_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 21
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list, align 8
  %22 = load i8*, i8** %paint_core_name.addr, align 8
  %call53 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %21, i8* %22)
  %23 = bitcast %struct._GimpObject* %call53 to %struct._GimpPaintInfo*
  store %struct._GimpPaintInfo* %23, %struct._GimpPaintInfo** %paint_info, align 8
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.52
  %24 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %25 = bitcast %struct._GimpPaintInfo* %24 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %25, %struct._GTypeInstance** %__inst56, align 8
  %call59 = call i64 @gimp_paint_info_get_type() #6
  store i64 %call59, i64* %__t58, align 8
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %tobool62 = icmp ne %struct._GTypeInstance* %26, null
  br i1 %tobool62, label %if.else.64, label %if.then.63

if.then.63:                                       ; preds = %do.body.54
  store i32 0, i32* %__r61, align 4
  br label %if.end.75

if.else.64:                                       ; preds = %do.body.54
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %g_class65 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class65, align 8
  %tobool66 = icmp ne %struct._GTypeClass* %28, null
  br i1 %tobool66, label %land.lhs.true.67, label %if.else.72

land.lhs.true.67:                                 ; preds = %if.else.64
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %g_class68 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class68, align 8
  %g_type69 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type69, align 8
  %32 = load i64, i64* %__t58, align 8
  %cmp70 = icmp eq i64 %31, %32
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %land.lhs.true.67
  store i32 1, i32* %__r61, align 4
  br label %if.end.74

if.else.72:                                       ; preds = %land.lhs.true.67, %if.else.64
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %34 = load i64, i64* %__t58, align 8
  %call73 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %33, i64 %34) #7
  store i32 %call73, i32* %__r61, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.71
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.63
  %35 = load i32, i32* %__r61, align 4
  store i32 %35, i32* %tmp76
  %36 = load i32, i32* %tmp76
  %tobool77 = icmp ne i32 %36, 0
  br i1 %tobool77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %if.end.75
  br label %if.end.80

if.else.79:                                       ; preds = %if.end.75
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_tool_info_new, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.80:                                        ; preds = %if.then.78
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  %call82 = call i64 @gimp_tool_info_get_type() #6
  %37 = load i8*, i8** %identifier.addr, align 8
  %38 = load i8*, i8** %stock_id.addr, align 8
  %call83 = call i8* (i64, i8*, ...) @g_object_new(i64 %call82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* %38, i8* null)
  %39 = bitcast i8* %call83 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %39, %struct._GimpToolInfo** %tool_info, align 8
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %41 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp84 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %41, i32 0, i32 1
  store %struct._Gimp* %40, %struct._Gimp** %gimp84, align 8
  %42 = load i64, i64* %tool_type.addr, align 8
  %43 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_type85 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %43, i32 0, i32 2
  store i64 %42, i64* %tool_type85, align 8
  %44 = load i64, i64* %tool_options_type.addr, align 8
  %45 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options_type86 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %45, i32 0, i32 3
  store i64 %44, i64* %tool_options_type86, align 8
  %46 = load i32, i32* %context_props.addr, align 4
  %47 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %context_props87 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %47, i32 0, i32 4
  store i32 %46, i32* %context_props87, align 4
  %48 = load i8*, i8** %blurb.addr, align 8
  %call88 = call noalias i8* @g_strdup(i8* %48)
  %49 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %blurb89 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %49, i32 0, i32 5
  store i8* %call88, i8** %blurb89, align 8
  %50 = load i8*, i8** %help.addr, align 8
  %call90 = call noalias i8* @g_strdup(i8* %50)
  %51 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help91 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %51, i32 0, i32 6
  store i8* %call90, i8** %help91, align 8
  %52 = load i8*, i8** %menu_label.addr, align 8
  %call92 = call noalias i8* @g_strdup(i8* %52)
  %53 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %menu_label93 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %53, i32 0, i32 7
  store i8* %call92, i8** %menu_label93, align 8
  %54 = load i8*, i8** %menu_accel.addr, align 8
  %call94 = call noalias i8* @g_strdup(i8* %54)
  %55 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %menu_accel95 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %55, i32 0, i32 8
  store i8* %call94, i8** %menu_accel95, align 8
  %56 = load i8*, i8** %help_domain.addr, align 8
  %call96 = call noalias i8* @g_strdup(i8* %56)
  %57 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help_domain97 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %57, i32 0, i32 9
  store i8* %call96, i8** %help_domain97, align 8
  %58 = load i8*, i8** %help_id.addr, align 8
  %call98 = call noalias i8* @g_strdup(i8* %58)
  %59 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help_id99 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %59, i32 0, i32 10
  store i8* %call98, i8** %help_id99, align 8
  %60 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %61 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %paint_info100 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %61, i32 0, i32 13
  store %struct._GimpPaintInfo* %60, %struct._GimpPaintInfo** %paint_info100, align 8
  %62 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options_type101 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %62, i32 0, i32 3
  %63 = load i64, i64* %tool_options_type101, align 8
  %64 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %paint_options_type = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %64, i32 0, i32 3
  %65 = load i64, i64* %paint_options_type, align 8
  %cmp102 = icmp eq i64 %63, %65
  br i1 %cmp102, label %if.then.103, label %if.else.105

if.then.103:                                      ; preds = %do.end.81
  %66 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %paint_options = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %66, i32 0, i32 5
  %67 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %68 = bitcast %struct._GimpPaintOptions* %67 to i8*
  %call104 = call i8* @g_object_ref(i8* %68)
  %69 = bitcast i8* %call104 to %struct._GimpToolOptions*
  %70 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %70, i32 0, i32 12
  store %struct._GimpToolOptions* %69, %struct._GimpToolOptions** %tool_options, align 8
  br label %if.end.109

if.else.105:                                      ; preds = %do.end.81
  %71 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options_type106 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %71, i32 0, i32 3
  %72 = load i64, i64* %tool_options_type106, align 8
  %73 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %74 = load i8*, i8** %identifier.addr, align 8
  %call107 = call i8* (i64, i8*, ...) @g_object_new(i64 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._Gimp* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %74, i8* null)
  %75 = bitcast i8* %call107 to %struct._GimpToolOptions*
  %76 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options108 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %76, i32 0, i32 12
  store %struct._GimpToolOptions* %75, %struct._GimpToolOptions** %tool_options108, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.105, %if.then.103
  %77 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options110 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %77, i32 0, i32 12
  %78 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options110, align 8
  %79 = bitcast %struct._GimpToolOptions* %78 to i8*
  %80 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %81 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), %struct._GimpToolInfo* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), %struct._GimpToolInfo* %81, i8* null)
  %82 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options_type111 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %82, i32 0, i32 3
  %83 = load i64, i64* %tool_options_type111, align 8
  %call112 = call i64 @gimp_tool_options_get_type() #6
  %cmp113 = icmp ne i64 %83, %call112
  br i1 %cmp113, label %if.then.114, label %if.end.119

if.then.114:                                      ; preds = %if.end.109
  %84 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_preset_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %84, i32 0, i32 42
  %85 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory, align 8
  %call116 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %85)
  store %struct._GimpContainer* %call116, %struct._GimpContainer** %presets, align 8
  %86 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %87 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %88 = bitcast %struct._GimpToolInfo* %87 to i8*
  %call117 = call %struct._GimpContainer* @gimp_filtered_container_new(%struct._GimpContainer* %86, i32 (%struct._GimpObject*, i8*)* @gimp_tool_info_filter_preset, i8* %88)
  %89 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets118 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %89, i32 0, i32 14
  store %struct._GimpContainer* %call117, %struct._GimpContainer** %presets118, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.114, %if.end.109
  %90 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  store %struct._GimpToolInfo* %90, %struct._GimpToolInfo** %retval
  br label %return

return:                                           ; preds = %if.end.119, %if.else.79, %if.else.50, %if.else.44, %if.else.38, %if.else.32, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  %91 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %retval
  ret %struct._GimpToolInfo* %91
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_info_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_object_ref(i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_options_get_type() #2

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #1

declare %struct._GimpContainer* @gimp_filtered_container_new(%struct._GimpContainer*, i32 (%struct._GimpObject*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tool_info_filter_preset(%struct._GimpObject* %object, i8* %user_data) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %user_data.addr = alloca i8*, align 8
  %preset = alloca %struct._GimpToolPreset*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_preset_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolPreset*
  store %struct._GimpToolPreset* %2, %struct._GimpToolPreset** %preset, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %4, %struct._GimpToolInfo** %tool_info, align 8
  %5 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %5, i32 0, i32 2
  %6 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %tool_info2 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %6, i32 0, i32 1
  %7 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info2, align 8
  %8 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %cmp = icmp eq %struct._GimpToolInfo* %7, %8
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @gimp_tool_info_set_standard(%struct._Gimp* %gimp, %struct._GimpToolInfo* %tool_info) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_tool_info_set_standard, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.54

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tobool12 = icmp ne %struct._GimpToolInfo* %13, null
  br i1 %tobool12, label %lor.lhs.false, label %if.then.36

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %15 = bitcast %struct._GimpToolInfo* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_tool_info_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_tool_info_set_standard, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.54

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %standard_tool_info = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 46
  %29 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %standard_tool_info, align 8
  %cmp40 = icmp ne %struct._GimpToolInfo* %27, %29
  br i1 %cmp40, label %if.then.41, label %if.end.54

if.then.41:                                       ; preds = %do.end.39
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %standard_tool_info42 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 46
  %31 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %standard_tool_info42, align 8
  %tobool43 = icmp ne %struct._GimpToolInfo* %31, null
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.41
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %standard_tool_info45 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %32, i32 0, i32 46
  %33 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %standard_tool_info45, align 8
  %34 = bitcast %struct._GimpToolInfo* %33 to i8*
  call void @g_object_unref(i8* %34)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.41
  %35 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %standard_tool_info47 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %36, i32 0, i32 46
  store %struct._GimpToolInfo* %35, %struct._GimpToolInfo** %standard_tool_info47, align 8
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %standard_tool_info48 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %37, i32 0, i32 46
  %38 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %standard_tool_info48, align 8
  %tobool49 = icmp ne %struct._GimpToolInfo* %38, null
  br i1 %tobool49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.end.46
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %standard_tool_info51 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %39, i32 0, i32 46
  %40 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %standard_tool_info51, align 8
  %41 = bitcast %struct._GimpToolInfo* %40 to i8*
  %call52 = call i8* @g_object_ref(i8* %41)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.end.46
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.9, %if.else.37, %if.end.53, %do.end.39
  ret void
}

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpToolInfo* @gimp_tool_info_get_standard(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GimpToolInfo*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_tool_info_get_standard, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %standard_tool_info = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 46
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %standard_tool_info, align 8
  store %struct._GimpToolInfo* %14, %struct._GimpToolInfo** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %retval
  ret %struct._GimpToolInfo* %15
}

; Function Attrs: nounwind uwtable
define i8* @gimp_tool_info_build_options_filename(%struct._GimpToolInfo* %tool_info, i8* %suffix) #3 {
entry:
  %retval = alloca i8*, align 8
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %suffix.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %basename = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %1 = bitcast %struct._GimpToolInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_info_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_tool_info_build_options_filename, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %14 = bitcast %struct._GimpToolInfo* %13 to i8*
  %call11 = call i8* @gimp_object_get_name(i8* %14)
  store i8* %call11, i8** %name, align 8
  %15 = load i8*, i8** %suffix.addr, align 8
  %tobool12 = icmp ne i8* %15, null
  br i1 %tobool12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %do.end
  %16 = load i8*, i8** %name, align 8
  %17 = load i8*, i8** %suffix.addr, align 8
  %call14 = call noalias i8* (i8*, ...) @g_strconcat(i8* %16, i8* %17, i8* null)
  store i8* %call14, i8** %basename, align 8
  br label %if.end.17

if.else.15:                                       ; preds = %do.end
  %18 = load i8*, i8** %name, align 8
  %call16 = call noalias i8* @g_strdup(i8* %18)
  store i8* %call16, i8** %basename, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.13
  %call18 = call i8* @gimp_directory() #6
  %19 = load i8*, i8** %basename, align 8
  %call19 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* %19, i8* null)
  store i8* %call19, i8** %filename, align 8
  %20 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %20)
  %21 = load i8*, i8** %filename, align 8
  store i8* %21, i8** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.else.9
  %22 = load i8*, i8** %retval
  ret i8* %22
}

declare i8* @gimp_object_get_name(i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #2

declare void @g_free(i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_info_class_init(%struct._GimpToolInfoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpToolInfoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  store %struct._GimpToolInfoClass* %klass, %struct._GimpToolInfoClass** %klass.addr, align 8
  %0 = load %struct._GimpToolInfoClass*, %struct._GimpToolInfoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpToolInfoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpToolInfoClass*, %struct._GimpToolInfoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpToolInfoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_viewable_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %5, %struct._GimpViewableClass** %viewable_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_tool_info_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_tool_info_finalize, void (%struct._GObject*)** %finalize, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_tool_info_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_tool_info_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_description = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %10, i32 0, i32 12
  store i8* (%struct._GimpViewable*, i8**)* @gimp_tool_info_get_description, i8* (%struct._GimpViewable*, i8**)** %get_description, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call3)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_info_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_info_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %2, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %3, i32 0, i32 12
  %4 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %tobool = icmp ne %struct._GimpToolOptions* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options2 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %5, i32 0, i32 12
  %6 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options2, align 8
  %7 = bitcast %struct._GimpToolOptions* %6 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  call void @g_object_run_dispose(%struct._GObject* %8)
  %9 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options4 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %9, i32 0, i32 12
  %10 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options4, align 8
  %11 = bitcast %struct._GimpToolOptions* %10 to i8*
  call void @g_object_unref(i8* %11)
  %12 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options5 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %12, i32 0, i32 12
  store %struct._GimpToolOptions* null, %struct._GimpToolOptions** %tool_options5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %13, i32 0, i32 14
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %tobool6 = icmp ne %struct._GimpContainer* %14, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %15 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets8 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %15, i32 0, i32 14
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %presets8, align 8
  %17 = bitcast %struct._GimpContainer* %16 to i8*
  call void @g_object_unref(i8* %17)
  %18 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets9 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %18, i32 0, i32 14
  store %struct._GimpContainer* null, %struct._GimpContainer** %presets9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %19 = load i8*, i8** @gimp_tool_info_parent_class, align 8
  %20 = bitcast i8* %19 to %struct._GTypeClass*
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %20, i64 80)
  %21 = bitcast %struct._GTypeClass* %call11 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %21, i32 0, i32 5
  %22 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %23 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %22(%struct._GObject* %23)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_info_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_info_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %2, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %blurb = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %3, i32 0, i32 5
  %4 = load i8*, i8** %blurb, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %blurb2 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %5, i32 0, i32 5
  %6 = load i8*, i8** %blurb2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %blurb3 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %7, i32 0, i32 5
  store i8* null, i8** %blurb3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %8, i32 0, i32 6
  %9 = load i8*, i8** %help, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help6 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %10, i32 0, i32 6
  %11 = load i8*, i8** %help6, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help7 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %12, i32 0, i32 6
  store i8* null, i8** %help7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %menu_label = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %13, i32 0, i32 7
  %14 = load i8*, i8** %menu_label, align 8
  %tobool9 = icmp ne i8* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %menu_label11 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %15, i32 0, i32 7
  %16 = load i8*, i8** %menu_label11, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %menu_label12 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %17, i32 0, i32 7
  store i8* null, i8** %menu_label12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %18 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %menu_accel = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %18, i32 0, i32 8
  %19 = load i8*, i8** %menu_accel, align 8
  %tobool14 = icmp ne i8* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %menu_accel16 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %20, i32 0, i32 8
  %21 = load i8*, i8** %menu_accel16, align 8
  call void @g_free(i8* %21)
  %22 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %menu_accel17 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %22, i32 0, i32 8
  store i8* null, i8** %menu_accel17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %23 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help_domain = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %23, i32 0, i32 9
  %24 = load i8*, i8** %help_domain, align 8
  %tobool19 = icmp ne i8* %24, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %25 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help_domain21 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %25, i32 0, i32 9
  %26 = load i8*, i8** %help_domain21, align 8
  call void @g_free(i8* %26)
  %27 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help_domain22 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %27, i32 0, i32 9
  store i8* null, i8** %help_domain22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %28 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help_id = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %28, i32 0, i32 10
  %29 = load i8*, i8** %help_id, align 8
  %tobool24 = icmp ne i8* %29, null
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.23
  %30 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help_id26 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %30, i32 0, i32 10
  %31 = load i8*, i8** %help_id26, align 8
  call void @g_free(i8* %31)
  %32 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help_id27 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %32, i32 0, i32 10
  store i8* null, i8** %help_id27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end.23
  %33 = load i8*, i8** @gimp_tool_info_parent_class, align 8
  %34 = bitcast i8* %33 to %struct._GTypeClass*
  %call29 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %34, i64 80)
  %35 = bitcast %struct._GTypeClass* %call29 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %35, i32 0, i32 6
  %36 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %37 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %36(%struct._GObject* %37)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_info_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_info_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %2, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %visible = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %5, i32 0, i32 11
  %6 = load i32, i32* %visible, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_info_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_info_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %2, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_boolean(%struct._GValue* %4)
  %5 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %visible = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %5, i32 0, i32 11
  store i32 %call2, i32* %visible, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_tool_info_get_description(%struct._GimpViewable* %viewable, i8** %tooltip) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %tooltip.addr = alloca i8**, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8** %tooltip, i8*** %tooltip.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_info_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %2, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %blurb = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %3, i32 0, i32 5
  %4 = load i8*, i8** %blurb, align 8
  %call2 = call noalias i8* @g_strdup(i8* %4)
  ret i8* %call2
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_object_run_dispose(%struct._GObject*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

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
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @g_value_get_boolean(%struct._GValue*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_preset_get_type() #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
