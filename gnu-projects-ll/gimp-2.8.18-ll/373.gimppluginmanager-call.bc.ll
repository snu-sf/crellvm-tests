; ModuleID = './app/plug-in/gimppluginmanager-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpPlugIn = type { %struct._GimpObject, %struct._GimpPlugInManager*, i8*, i32, i8, i32, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, i32, [512 x i8], i32, %struct._GSList*, %struct._GMainLoop*, %struct._GimpPlugInProcFrame, %struct._GList*, %struct._GimpPlugInDef* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GMainLoop = type opaque
%struct._GimpPlugInProcFrame = type { i32, %struct._GimpContext*, %struct._GList*, %struct._GimpProcedure*, %struct._GMainLoop*, %struct._GValueArray*, %struct._GimpProgress*, i32, i64, i32, %struct._GList*, %struct._GList* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpPlugInDef = type { %struct._GimpObject, i8*, %struct._GSList*, i8*, i8*, i8*, i8*, i64, i32, i32 }
%struct._GimpWireMessage = type { i32, i8* }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GPConfig = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8*, i8*, i8*, i32, i32 }
%struct._GPProcRun = type { i8*, i32, %struct._GPParam* }
%struct._GPParam = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct._GimpRGB }
%struct._GimpTemporaryProcedure = type { %struct._GimpPlugInProcedure, %struct._GimpPlugIn* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_manager_call_query = private unnamed_addr constant [32 x i8] c"gimp_plug_in_manager_call_query\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PLUG_IN_MANAGER (manager)\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_PDB_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PLUG_IN_DEF (plug_in_def)\00", align 1
@__func__.gimp_plug_in_manager_call_init = private unnamed_addr constant [31 x i8] c"gimp_plug_in_manager_call_init\00", align 1
@__func__.gimp_plug_in_manager_call_run = private unnamed_addr constant [30 x i8] c"gimp_plug_in_manager_call_run\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"GIMP_IS_PLUG_IN_PROCEDURE (procedure)\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"args != NULL\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"display == NULL || GIMP_IS_OBJECT (display)\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to run plug-in \22%s\22\00", align 1
@__func__.gimp_plug_in_manager_call_run_temp = private unnamed_addr constant [35 x i8] c"gimp_plug_in_manager_call_run_temp\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"GIMP_IS_TEMPORARY_PROCEDURE (procedure)\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_call_query(%struct._GimpPlugInManager* %manager, %struct._GimpContext* %context, %struct._GimpPlugInDef* %plug_in_def) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %plug_in_def.addr = alloca %struct._GimpPlugInDef*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_manager_call_query, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.82

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_pdb_context_get_type() #5
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_manager_call_query, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.82

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %27 = bitcast %struct._GimpPlugInDef* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_plug_in_def_get_type() #5
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #6
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_manager_call_query, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.82

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %39 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %40 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %41 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %41, i32 0, i32 1
  %42 = load i8*, i8** %prog, align 8
  %call67 = call %struct._GimpPlugIn* @gimp_plug_in_new(%struct._GimpPlugInManager* %39, %struct._GimpContext* %40, %struct._GimpProgress* null, %struct._GimpPlugInProcedure* null, i8* %42)
  store %struct._GimpPlugIn* %call67, %struct._GimpPlugIn** %plug_in, align 8
  %43 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %tobool68 = icmp ne %struct._GimpPlugIn* %43, null
  br i1 %tobool68, label %if.then.69, label %if.end.82

if.then.69:                                       ; preds = %do.end.66
  %44 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %45 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %plug_in_def70 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %45, i32 0, i32 17
  store %struct._GimpPlugInDef* %44, %struct._GimpPlugInDef** %plug_in_def70, align 8
  %46 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %call71 = call i32 @gimp_plug_in_open(%struct._GimpPlugIn* %46, i32 2, i32 1)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.81

if.then.73:                                       ; preds = %if.then.69
  br label %while.cond

while.cond:                                       ; preds = %if.end.80, %if.then.73
  %47 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %47, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool74 = icmp ne i32 %bf.cast, 0
  br i1 %tobool74, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %48 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %my_read = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %48, i32 0, i32 6
  %49 = load %struct._GIOChannel*, %struct._GIOChannel** %my_read, align 8
  %50 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %51 = bitcast %struct._GimpPlugIn* %50 to i8*
  %call76 = call i32 @gimp_wire_read_msg(%struct._GIOChannel* %49, %struct._GimpWireMessage* %msg, i8* %51)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.else.79, label %if.then.78

if.then.78:                                       ; preds = %while.body
  %52 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %52, i32 1)
  br label %if.end.80

if.else.79:                                       ; preds = %while.body
  %53 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  call void @gimp_plug_in_handle_message(%struct._GimpPlugIn* %53, %struct._GimpWireMessage* %msg)
  call void @gimp_wire_destroy(%struct._GimpWireMessage* %msg)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %if.then.78
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.81

if.end.81:                                        ; preds = %while.end, %if.then.69
  %54 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %55 = bitcast %struct._GimpPlugIn* %54 to i8*
  call void @g_object_unref(i8* %55)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.9, %if.else.36, %if.else.64, %if.end.81, %do.end.66
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_manager_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_def_get_type() #1

declare %struct._GimpPlugIn* @gimp_plug_in_new(%struct._GimpPlugInManager*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpPlugInProcedure*, i8*) #3

declare i32 @gimp_plug_in_open(%struct._GimpPlugIn*, i32, i32) #3

declare i32 @gimp_wire_read_msg(%struct._GIOChannel*, %struct._GimpWireMessage*, i8*) #3

declare void @gimp_plug_in_close(%struct._GimpPlugIn*, i32) #3

declare void @gimp_plug_in_handle_message(%struct._GimpPlugIn*, %struct._GimpWireMessage*) #3

declare void @gimp_wire_destroy(%struct._GimpWireMessage*) #3

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_call_init(%struct._GimpPlugInManager* %manager, %struct._GimpContext* %context, %struct._GimpPlugInDef* %plug_in_def) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %plug_in_def.addr = alloca %struct._GimpPlugInDef*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_plug_in_manager_call_init, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.82

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_pdb_context_get_type() #5
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_plug_in_manager_call_init, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.82

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %27 = bitcast %struct._GimpPlugInDef* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_plug_in_def_get_type() #5
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #6
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_plug_in_manager_call_init, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.82

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %39 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %40 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %41 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %41, i32 0, i32 1
  %42 = load i8*, i8** %prog, align 8
  %call67 = call %struct._GimpPlugIn* @gimp_plug_in_new(%struct._GimpPlugInManager* %39, %struct._GimpContext* %40, %struct._GimpProgress* null, %struct._GimpPlugInProcedure* null, i8* %42)
  store %struct._GimpPlugIn* %call67, %struct._GimpPlugIn** %plug_in, align 8
  %43 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %tobool68 = icmp ne %struct._GimpPlugIn* %43, null
  br i1 %tobool68, label %if.then.69, label %if.end.82

if.then.69:                                       ; preds = %do.end.66
  %44 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %45 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %plug_in_def70 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %45, i32 0, i32 17
  store %struct._GimpPlugInDef* %44, %struct._GimpPlugInDef** %plug_in_def70, align 8
  %46 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %call71 = call i32 @gimp_plug_in_open(%struct._GimpPlugIn* %46, i32 3, i32 1)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.81

if.then.73:                                       ; preds = %if.then.69
  br label %while.cond

while.cond:                                       ; preds = %if.end.80, %if.then.73
  %47 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %47, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool74 = icmp ne i32 %bf.cast, 0
  br i1 %tobool74, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %48 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %my_read = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %48, i32 0, i32 6
  %49 = load %struct._GIOChannel*, %struct._GIOChannel** %my_read, align 8
  %50 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %51 = bitcast %struct._GimpPlugIn* %50 to i8*
  %call76 = call i32 @gimp_wire_read_msg(%struct._GIOChannel* %49, %struct._GimpWireMessage* %msg, i8* %51)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.else.79, label %if.then.78

if.then.78:                                       ; preds = %while.body
  %52 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %52, i32 1)
  br label %if.end.80

if.else.79:                                       ; preds = %while.body
  %53 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  call void @gimp_plug_in_handle_message(%struct._GimpPlugIn* %53, %struct._GimpWireMessage* %msg)
  call void @gimp_wire_destroy(%struct._GimpWireMessage* %msg)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %if.then.78
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.81

if.end.81:                                        ; preds = %while.end, %if.then.69
  %54 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %55 = bitcast %struct._GimpPlugIn* %54 to i8*
  call void @g_object_unref(i8* %55)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.9, %if.else.36, %if.else.64, %if.end.81, %do.end.66
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GValueArray* @gimp_plug_in_manager_call_run(%struct._GimpPlugInManager* %manager, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GimpPlugInProcedure* %procedure, %struct._GValueArray* %args, i32 %synchronous, %struct._GimpObject* %display) #0 {
entry:
  %retval = alloca %struct._GValueArray*, align 8
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %procedure.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %synchronous.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpObject*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %__inst70 = alloca %struct._GTypeInstance*, align 8
  %__t72 = alloca i64, align 8
  %__r75 = alloca i32, align 4
  %tmp90 = alloca i32, align 4
  %__inst106 = alloca %struct._GTypeInstance*, align 8
  %__t108 = alloca i64, align 8
  %__r111 = alloca i32, align 4
  %tmp126 = alloca i32, align 4
  %core_config = alloca %struct._GimpCoreConfig*, align 8
  %display_config = alloca %struct._GimpDisplayConfig*, align 8
  %gui_config = alloca %struct._GimpGuiConfig*, align 8
  %config143 = alloca %struct._GPConfig, align 8
  %proc_run = alloca %struct._GPProcRun, align 8
  %display_ID = alloca i32, align 4
  %monitor = alloca i32, align 4
  %name = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %name202 = alloca i8*, align 8
  %error205 = alloca %struct._GError*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpPlugInProcedure* %procedure, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store i32 %synchronous, i32* %synchronous.addr, align 4
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  store %struct._GValueArray* null, %struct._GValueArray** %return_vals, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_manager_call_run, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_pdb_context_get_type() #5
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_manager_call_run, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp40 = icmp eq %struct._GimpProgress* %26, null
  br i1 %cmp40, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %28 = bitcast %struct._GimpProgress* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_progress_interface_get_type() #5
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %lor.lhs.false
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61, %do.body.39
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_manager_call_run, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %41 = bitcast %struct._GimpPlugInProcedure* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst70, align 8
  %call73 = call i64 @gimp_plug_in_procedure_get_type() #5
  store i64 %call73, i64* %__t72, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %tobool76 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool76, label %if.else.78, label %if.then.77

if.then.77:                                       ; preds = %do.body.68
  store i32 0, i32* %__r75, align 4
  br label %if.end.89

if.else.78:                                       ; preds = %do.body.68
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class79 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class79, align 8
  %tobool80 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool80, label %land.lhs.true.81, label %if.else.86

land.lhs.true.81:                                 ; preds = %if.else.78
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class82 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class82, align 8
  %g_type83 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type83, align 8
  %48 = load i64, i64* %__t72, align 8
  %cmp84 = icmp eq i64 %47, %48
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %land.lhs.true.81
  store i32 1, i32* %__r75, align 4
  br label %if.end.88

if.else.86:                                       ; preds = %land.lhs.true.81, %if.else.78
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %50 = load i64, i64* %__t72, align 8
  %call87 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #6
  store i32 %call87, i32* %__r75, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.86, %if.then.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.77
  %51 = load i32, i32* %__r75, align 4
  store i32 %51, i32* %tmp90
  %52 = load i32, i32* %tmp90
  %tobool91 = icmp ne i32 %52, 0
  br i1 %tobool91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %if.end.89
  br label %if.end.94

if.else.93:                                       ; preds = %if.end.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_manager_call_run, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.end.95
  %53 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %cmp97 = icmp ne %struct._GValueArray* %53, null
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.96
  br label %if.end.100

if.else.99:                                       ; preds = %do.body.96
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_manager_call_run, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.100:                                       ; preds = %if.then.98
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %do.body.102

do.body.102:                                      ; preds = %do.end.101
  %54 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %cmp103 = icmp eq %struct._GimpObject* %54, null
  br i1 %cmp103, label %if.then.128, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %do.body.102
  %55 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %56 = bitcast %struct._GimpObject* %55 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %56, %struct._GTypeInstance** %__inst106, align 8
  %call109 = call i64 @gimp_object_get_type() #5
  store i64 %call109, i64* %__t108, align 8
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst106, align 8
  %tobool112 = icmp ne %struct._GTypeInstance* %57, null
  br i1 %tobool112, label %if.else.114, label %if.then.113

if.then.113:                                      ; preds = %lor.lhs.false.104
  store i32 0, i32* %__r111, align 4
  br label %if.end.125

if.else.114:                                      ; preds = %lor.lhs.false.104
  %58 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst106, align 8
  %g_class115 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %58, i32 0, i32 0
  %59 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class115, align 8
  %tobool116 = icmp ne %struct._GTypeClass* %59, null
  br i1 %tobool116, label %land.lhs.true.117, label %if.else.122

land.lhs.true.117:                                ; preds = %if.else.114
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst106, align 8
  %g_class118 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %60, i32 0, i32 0
  %61 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class118, align 8
  %g_type119 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %61, i32 0, i32 0
  %62 = load i64, i64* %g_type119, align 8
  %63 = load i64, i64* %__t108, align 8
  %cmp120 = icmp eq i64 %62, %63
  br i1 %cmp120, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %land.lhs.true.117
  store i32 1, i32* %__r111, align 4
  br label %if.end.124

if.else.122:                                      ; preds = %land.lhs.true.117, %if.else.114
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst106, align 8
  %65 = load i64, i64* %__t108, align 8
  %call123 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %64, i64 %65) #6
  store i32 %call123, i32* %__r111, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.122, %if.then.121
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.113
  %66 = load i32, i32* %__r111, align 4
  store i32 %66, i32* %tmp126
  %67 = load i32, i32* %tmp126
  %tobool127 = icmp ne i32 %67, 0
  br i1 %tobool127, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %if.end.125, %do.body.102
  br label %if.end.130

if.else.129:                                      ; preds = %if.end.125
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_manager_call_run, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.130:                                       ; preds = %if.then.128
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  %68 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %69 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %70 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %71 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %call132 = call %struct._GimpPlugIn* @gimp_plug_in_new(%struct._GimpPlugInManager* %68, %struct._GimpContext* %69, %struct._GimpProgress* %70, %struct._GimpPlugInProcedure* %71, i8* null)
  store %struct._GimpPlugIn* %call132, %struct._GimpPlugIn** %plug_in, align 8
  %72 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %tobool133 = icmp ne %struct._GimpPlugIn* %72, null
  br i1 %tobool133, label %if.then.134, label %if.end.240

if.then.134:                                      ; preds = %do.end.131
  %73 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %73, i32 0, i32 1
  %74 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %74, i32 0, i32 1
  %75 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  store %struct._GimpCoreConfig* %75, %struct._GimpCoreConfig** %core_config, align 8
  %76 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %77 = bitcast %struct._GimpCoreConfig* %76 to %struct._GTypeInstance*
  %call137 = call i64 @gimp_display_config_get_type() #5
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call137)
  %78 = bitcast %struct._GTypeInstance* %call138 to %struct._GimpDisplayConfig*
  store %struct._GimpDisplayConfig* %78, %struct._GimpDisplayConfig** %display_config, align 8
  %79 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %80 = bitcast %struct._GimpCoreConfig* %79 to %struct._GTypeInstance*
  %call140 = call i64 @gimp_gui_config_get_type() #5
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call140)
  %81 = bitcast %struct._GTypeInstance* %call141 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %81, %struct._GimpGuiConfig** %gui_config, align 8
  %82 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %call147 = call i32 @gimp_plug_in_open(%struct._GimpPlugIn* %82, i32 1, i32 0)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.end.159, label %if.then.149

if.then.149:                                      ; preds = %if.then.134
  %83 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %84 = bitcast %struct._GimpPlugIn* %83 to i8*
  %call151 = call i8* @gimp_object_get_name(i8* %84)
  store i8* %call151, i8** %name, align 8
  %call153 = call i32 @gimp_plug_in_error_quark() #5
  %call154 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #7
  %85 = load i8*, i8** %name, align 8
  %call155 = call %struct._GError* (i32, i32, i8*, ...) @g_error_new(i32 %call153, i32 1, i8* %call154, i8* %85)
  store %struct._GError* %call155, %struct._GError** %error, align 8
  %86 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %87 = bitcast %struct._GimpPlugIn* %86 to i8*
  call void @g_object_unref(i8* %87)
  %88 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %89 = bitcast %struct._GimpPlugInProcedure* %88 to %struct._GTypeInstance*
  %call156 = call i64 @gimp_procedure_get_type() #5
  %call157 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call156)
  %90 = bitcast %struct._GTypeInstance* %call157 to %struct._GimpProcedure*
  %91 = load %struct._GError*, %struct._GError** %error, align 8
  %call158 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %90, i32 0, %struct._GError* %91)
  store %struct._GValueArray* %call158, %struct._GValueArray** %return_vals, align 8
  %92 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %92)
  %93 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %93, %struct._GValueArray** %retval
  br label %return

if.end.159:                                       ; preds = %if.then.134
  %94 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %tobool160 = icmp ne %struct._GimpObject* %94, null
  br i1 %tobool160, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.159
  %95 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp161 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %95, i32 0, i32 1
  %96 = load %struct._Gimp*, %struct._Gimp** %gimp161, align 8
  %97 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %call162 = call i32 @gimp_get_display_ID(%struct._Gimp* %96, %struct._GimpObject* %97)
  br label %cond.end

cond.false:                                       ; preds = %if.end.159
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call162, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %display_ID, align 4
  %version = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 0
  store i32 20, i32* %version, align 4
  %tile_width = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 1
  store i32 64, i32* %tile_width, align 4
  %tile_height = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 2
  store i32 64, i32* %tile_height, align 4
  %98 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %shm = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %98, i32 0, i32 15
  %99 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %tobool163 = icmp ne %struct._GimpPlugInShm* %99, null
  br i1 %tobool163, label %cond.true.164, label %cond.false.167

cond.true.164:                                    ; preds = %cond.end
  %100 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %shm165 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %100, i32 0, i32 15
  %101 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm165, align 8
  %call166 = call i32 @gimp_plug_in_shm_get_ID(%struct._GimpPlugInShm* %101)
  br label %cond.end.168

cond.false.167:                                   ; preds = %cond.end
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.164
  %cond169 = phi i32 [ %call166, %cond.true.164 ], [ -1, %cond.false.167 ]
  %shm_ID = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 3
  store i32 %cond169, i32* %shm_ID, align 4
  %102 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %transparency_size = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %102, i32 0, i32 1
  %103 = load i32, i32* %transparency_size, align 4
  %conv = trunc i32 %103 to i8
  %check_size = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 4
  store i8 %conv, i8* %check_size, align 1
  %104 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %transparency_type = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %104, i32 0, i32 2
  %105 = load i32, i32* %transparency_type, align 4
  %conv170 = trunc i32 %105 to i8
  %check_type = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 5
  store i8 %conv170, i8* %check_type, align 1
  %106 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %use_help = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %106, i32 0, i32 21
  %107 = load i32, i32* %use_help, align 4
  %tobool171 = icmp ne i32 %107, 0
  br i1 %tobool171, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.168
  %108 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %show_help_button = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %108, i32 0, i32 22
  %109 = load i32, i32* %show_help_button, align 4
  %tobool172 = icmp ne i32 %109, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.168
  %110 = phi i1 [ false, %cond.end.168 ], [ %tobool172, %land.rhs ]
  %land.ext = zext i1 %110 to i32
  %conv173 = trunc i32 %land.ext to i8
  %show_help_button174 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 6
  store i8 %conv173, i8* %show_help_button174, align 1
  %call175 = call i32 @gimp_composite_use_cpu_accel()
  %conv176 = trunc i32 %call175 to i8
  %use_cpu_accel = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 7
  store i8 %conv176, i8* %use_cpu_accel, align 1
  %gimp_reserved_5 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 8
  store i8 0, i8* %gimp_reserved_5, align 1
  %gimp_reserved_6 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 9
  store i8 0, i8* %gimp_reserved_6, align 1
  %gimp_reserved_7 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 10
  store i8 0, i8* %gimp_reserved_7, align 1
  %gimp_reserved_8 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 11
  store i8 0, i8* %gimp_reserved_8, align 1
  %install_cmap = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 12
  store i8 0, i8* %install_cmap, align 1
  %111 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %show_tooltips = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %111, i32 0, i32 8
  %112 = load i32, i32* %show_tooltips, align 4
  %conv177 = trunc i32 %112 to i8
  %show_tooltips178 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 13
  store i8 %conv177, i8* %show_tooltips178, align 1
  %min_colors = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 14
  store i32 144, i32* %min_colors, align 4
  %113 = load i32, i32* %display_ID, align 4
  %gdisp_ID = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 15
  store i32 %113, i32* %gdisp_ID, align 4
  %call179 = call i8* @g_get_application_name()
  %app_name = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 16
  store i8* %call179, i8** %app_name, align 8
  %114 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp180 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %114, i32 0, i32 1
  %115 = load %struct._Gimp*, %struct._Gimp** %gimp180, align 8
  %call181 = call i8* @gimp_get_program_class(%struct._Gimp* %115)
  %wm_class = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 17
  store i8* %call181, i8** %wm_class, align 8
  %116 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp182 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %116, i32 0, i32 1
  %117 = load %struct._Gimp*, %struct._Gimp** %gimp182, align 8
  %118 = load i32, i32* %display_ID, align 4
  %call183 = call i8* @gimp_get_display_name(%struct._Gimp* %117, i32 %118, i32* %monitor)
  %display_name = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 18
  store i8* %call183, i8** %display_name, align 8
  %119 = load i32, i32* %monitor, align 4
  %monitor_number = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 19
  store i32 %119, i32* %monitor_number, align 4
  %120 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp184 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %120, i32 0, i32 1
  %121 = load %struct._Gimp*, %struct._Gimp** %gimp184, align 8
  %call185 = call i32 @gimp_get_user_time(%struct._Gimp* %121)
  %timestamp = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 20
  store i32 %call185, i32* %timestamp, align 4
  %122 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %123 = bitcast %struct._GimpPlugInProcedure* %122 to %struct._GTypeInstance*
  %call186 = call i64 @gimp_procedure_get_type() #5
  %call187 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call186)
  %124 = bitcast %struct._GTypeInstance* %call187 to %struct._GimpProcedure*
  %original_name = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %124, i32 0, i32 3
  %125 = load i8*, i8** %original_name, align 8
  %name188 = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %proc_run, i32 0, i32 0
  store i8* %125, i8** %name188, align 8
  %126 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %126, i32 0, i32 0
  %127 = load i32, i32* %n_values, align 4
  %nparams = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %proc_run, i32 0, i32 1
  store i32 %127, i32* %nparams, align 4
  %128 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %call189 = call %struct._GPParam* @plug_in_args_to_params(%struct._GValueArray* %128, i32 0)
  %params = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %proc_run, i32 0, i32 2
  store %struct._GPParam* %call189, %struct._GPParam** %params, align 8
  %129 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %my_write = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %129, i32 0, i32 7
  %130 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write, align 8
  %131 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %132 = bitcast %struct._GimpPlugIn* %131 to i8*
  %call190 = call i32 @gp_config_write(%struct._GIOChannel* %130, %struct._GPConfig* %config143, i8* %132)
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %lor.lhs.false.192, label %if.then.200

lor.lhs.false.192:                                ; preds = %land.end
  %133 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %my_write193 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %133, i32 0, i32 7
  %134 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write193, align 8
  %135 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %136 = bitcast %struct._GimpPlugIn* %135 to i8*
  %call194 = call i32 @gp_proc_run_write(%struct._GIOChannel* %134, %struct._GPProcRun* %proc_run, i8* %136)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %lor.lhs.false.196, label %if.then.200

lor.lhs.false.196:                                ; preds = %lor.lhs.false.192
  %137 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %my_write197 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %137, i32 0, i32 7
  %138 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write197, align 8
  %139 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %140 = bitcast %struct._GimpPlugIn* %139 to i8*
  %call198 = call i32 @gimp_wire_flush(%struct._GIOChannel* %138, i8* %140)
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %if.end.214, label %if.then.200

if.then.200:                                      ; preds = %lor.lhs.false.196, %lor.lhs.false.192, %land.end
  %141 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %142 = bitcast %struct._GimpPlugIn* %141 to i8*
  %call203 = call i8* @gimp_object_get_name(i8* %142)
  store i8* %call203, i8** %name202, align 8
  %call206 = call i32 @gimp_plug_in_error_quark() #5
  %call207 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #7
  %143 = load i8*, i8** %name202, align 8
  %call208 = call %struct._GError* (i32, i32, i8*, ...) @g_error_new(i32 %call206, i32 1, i8* %call207, i8* %143)
  store %struct._GError* %call208, %struct._GError** %error205, align 8
  %display_name209 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 18
  %144 = load i8*, i8** %display_name209, align 8
  call void @g_free(i8* %144)
  %params210 = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %proc_run, i32 0, i32 2
  %145 = load %struct._GPParam*, %struct._GPParam** %params210, align 8
  %146 = bitcast %struct._GPParam* %145 to i8*
  call void @g_free(i8* %146)
  %147 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %148 = bitcast %struct._GimpPlugIn* %147 to i8*
  call void @g_object_unref(i8* %148)
  %149 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %150 = bitcast %struct._GimpPlugInProcedure* %149 to %struct._GTypeInstance*
  %call211 = call i64 @gimp_procedure_get_type() #5
  %call212 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call211)
  %151 = bitcast %struct._GTypeInstance* %call212 to %struct._GimpProcedure*
  %152 = load %struct._GError*, %struct._GError** %error205, align 8
  %call213 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %151, i32 0, %struct._GError* %152)
  store %struct._GValueArray* %call213, %struct._GValueArray** %return_vals, align 8
  %153 = load %struct._GError*, %struct._GError** %error205, align 8
  call void @g_error_free(%struct._GError* %153)
  %154 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %154, %struct._GValueArray** %retval
  br label %return

if.end.214:                                       ; preds = %lor.lhs.false.196
  %display_name215 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %config143, i32 0, i32 18
  %155 = load i8*, i8** %display_name215, align 8
  call void @g_free(i8* %155)
  %params216 = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %proc_run, i32 0, i32 2
  %156 = load %struct._GPParam*, %struct._GPParam** %params216, align 8
  %157 = bitcast %struct._GPParam* %156 to i8*
  call void @g_free(i8* %157)
  %158 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %159 = bitcast %struct._GimpPlugInProcedure* %158 to %struct._GTypeInstance*
  %call217 = call i64 @gimp_procedure_get_type() #5
  %call218 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call217)
  %160 = bitcast %struct._GTypeInstance* %call218 to %struct._GimpProcedure*
  %proc_type = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %160, i32 0, i32 1
  %161 = load i32, i32* %proc_type, align 4
  %cmp219 = icmp eq i32 %161, 2
  br i1 %cmp219, label %if.then.221, label %if.end.228

if.then.221:                                      ; preds = %if.end.214
  %call222 = call %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext* null, i32 0)
  %162 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %ext_main_loop = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %162, i32 0, i32 14
  store %struct._GMainLoop* %call222, %struct._GMainLoop** %ext_main_loop, align 8
  %163 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp223 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %163, i32 0, i32 1
  %164 = load %struct._Gimp*, %struct._Gimp** %gimp223, align 8
  call void @gimp_threads_leave(%struct._Gimp* %164)
  %165 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %ext_main_loop224 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %165, i32 0, i32 14
  %166 = load %struct._GMainLoop*, %struct._GMainLoop** %ext_main_loop224, align 8
  call void @g_main_loop_run(%struct._GMainLoop* %166)
  %167 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp225 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %167, i32 0, i32 1
  %168 = load %struct._Gimp*, %struct._Gimp** %gimp225, align 8
  call void @gimp_threads_enter(%struct._Gimp* %168)
  %169 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %ext_main_loop226 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %169, i32 0, i32 14
  %170 = load %struct._GMainLoop*, %struct._GMainLoop** %ext_main_loop226, align 8
  call void @g_main_loop_unref(%struct._GMainLoop* %170)
  %171 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %ext_main_loop227 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %171, i32 0, i32 14
  store %struct._GMainLoop* null, %struct._GMainLoop** %ext_main_loop227, align 8
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.221, %if.end.214
  %172 = load i32, i32* %synchronous.addr, align 4
  %tobool229 = icmp ne i32 %172, 0
  br i1 %tobool229, label %if.then.230, label %if.end.239

if.then.230:                                      ; preds = %if.end.228
  %173 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %main_proc_frame = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %173, i32 0, i32 15
  store %struct._GimpPlugInProcFrame* %main_proc_frame, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %call232 = call %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext* null, i32 0)
  %174 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %174, i32 0, i32 4
  store %struct._GMainLoop* %call232, %struct._GMainLoop** %main_loop, align 8
  %175 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp233 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %175, i32 0, i32 1
  %176 = load %struct._Gimp*, %struct._Gimp** %gimp233, align 8
  call void @gimp_threads_leave(%struct._Gimp* %176)
  %177 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop234 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %177, i32 0, i32 4
  %178 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop234, align 8
  call void @g_main_loop_run(%struct._GMainLoop* %178)
  %179 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp235 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %179, i32 0, i32 1
  %180 = load %struct._Gimp*, %struct._Gimp** %gimp235, align 8
  call void @gimp_threads_enter(%struct._Gimp* %180)
  %181 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop236 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %181, i32 0, i32 4
  %182 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop236, align 8
  call void @g_main_loop_unref(%struct._GMainLoop* %182)
  %183 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop237 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %183, i32 0, i32 4
  store %struct._GMainLoop* null, %struct._GMainLoop** %main_loop237, align 8
  %184 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %call238 = call %struct._GValueArray* @gimp_plug_in_proc_frame_get_return_values(%struct._GimpPlugInProcFrame* %184)
  store %struct._GValueArray* %call238, %struct._GValueArray** %return_vals, align 8
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.230, %if.end.228
  %185 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %186 = bitcast %struct._GimpPlugIn* %185 to i8*
  call void @g_object_unref(i8* %186)
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %do.end.131
  %187 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %187, %struct._GValueArray** %retval
  br label %return

return:                                           ; preds = %if.end.240, %if.then.200, %if.then.149, %if.else.129, %if.else.99, %if.else.93, %if.else.65, %if.else.36, %if.else.9
  %188 = load %struct._GValueArray*, %struct._GValueArray** %retval
  ret %struct._GValueArray* %188
}

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_display_config_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #1

declare i8* @gimp_object_get_name(i8*) #3

declare %struct._GError* @g_error_new(i32, i32, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_plug_in_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_procedure_get_type() #1

declare void @g_error_free(%struct._GError*) #3

declare i32 @gimp_get_display_ID(%struct._Gimp*, %struct._GimpObject*) #3

declare i32 @gimp_plug_in_shm_get_ID(%struct._GimpPlugInShm*) #3

declare i32 @gimp_composite_use_cpu_accel() #3

declare i8* @g_get_application_name() #3

declare i8* @gimp_get_program_class(%struct._Gimp*) #3

declare i8* @gimp_get_display_name(%struct._Gimp*, i32, i32*) #3

declare i32 @gimp_get_user_time(%struct._Gimp*) #3

declare %struct._GPParam* @plug_in_args_to_params(%struct._GValueArray*, i32) #3

declare i32 @gp_config_write(%struct._GIOChannel*, %struct._GPConfig*, i8*) #3

declare i32 @gp_proc_run_write(%struct._GIOChannel*, %struct._GPProcRun*, i8*) #3

declare i32 @gimp_wire_flush(%struct._GIOChannel*, i8*) #3

declare void @g_free(i8*) #3

declare %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext*, i32) #3

declare void @gimp_threads_leave(%struct._Gimp*) #3

declare void @g_main_loop_run(%struct._GMainLoop*) #3

declare void @gimp_threads_enter(%struct._Gimp*) #3

declare void @g_main_loop_unref(%struct._GMainLoop*) #3

declare %struct._GValueArray* @gimp_plug_in_proc_frame_get_return_values(%struct._GimpPlugInProcFrame*) #3

; Function Attrs: nounwind uwtable
define %struct._GValueArray* @gimp_plug_in_manager_call_run_temp(%struct._GimpPlugInManager* %manager, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GimpTemporaryProcedure* %procedure, %struct._GValueArray* %args) #0 {
entry:
  %retval = alloca %struct._GValueArray*, align 8
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %procedure.addr = alloca %struct._GimpTemporaryProcedure*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %__inst70 = alloca %struct._GTypeInstance*, align 8
  %__t72 = alloca i64, align 8
  %__r75 = alloca i32, align 4
  %tmp90 = alloca i32, align 4
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %proc_run = alloca %struct._GPProcRun, align 8
  %name119 = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpTemporaryProcedure* %procedure, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GValueArray* null, %struct._GValueArray** %return_vals, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_manager_call_run_temp, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_pdb_context_get_type() #5
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_manager_call_run_temp, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp40 = icmp eq %struct._GimpProgress* %26, null
  br i1 %cmp40, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %28 = bitcast %struct._GimpProgress* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_progress_interface_get_type() #5
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %lor.lhs.false
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61, %do.body.39
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_manager_call_run_temp, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %41 = bitcast %struct._GimpTemporaryProcedure* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst70, align 8
  %call73 = call i64 @gimp_temporary_procedure_get_type() #5
  store i64 %call73, i64* %__t72, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %tobool76 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool76, label %if.else.78, label %if.then.77

if.then.77:                                       ; preds = %do.body.68
  store i32 0, i32* %__r75, align 4
  br label %if.end.89

if.else.78:                                       ; preds = %do.body.68
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class79 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class79, align 8
  %tobool80 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool80, label %land.lhs.true.81, label %if.else.86

land.lhs.true.81:                                 ; preds = %if.else.78
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class82 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class82, align 8
  %g_type83 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type83, align 8
  %48 = load i64, i64* %__t72, align 8
  %cmp84 = icmp eq i64 %47, %48
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %land.lhs.true.81
  store i32 1, i32* %__r75, align 4
  br label %if.end.88

if.else.86:                                       ; preds = %land.lhs.true.81, %if.else.78
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %50 = load i64, i64* %__t72, align 8
  %call87 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #6
  store i32 %call87, i32* %__r75, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.86, %if.then.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.77
  %51 = load i32, i32* %__r75, align 4
  store i32 %51, i32* %tmp90
  %52 = load i32, i32* %tmp90
  %tobool91 = icmp ne i32 %52, 0
  br i1 %tobool91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %if.end.89
  br label %if.end.94

if.else.93:                                       ; preds = %if.end.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_manager_call_run_temp, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.end.95
  %53 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %cmp97 = icmp ne %struct._GValueArray* %53, null
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.96
  br label %if.end.100

if.else.99:                                       ; preds = %do.body.96
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_manager_call_run_temp, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.100:                                       ; preds = %if.then.98
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  %54 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %plug_in102 = getelementptr inbounds %struct._GimpTemporaryProcedure, %struct._GimpTemporaryProcedure* %54, i32 0, i32 1
  %55 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in102, align 8
  store %struct._GimpPlugIn* %55, %struct._GimpPlugIn** %plug_in, align 8
  %56 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %tobool103 = icmp ne %struct._GimpPlugIn* %56, null
  br i1 %tobool103, label %if.then.104, label %if.end.134

if.then.104:                                      ; preds = %do.end.101
  %57 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %58 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %59 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %60 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %call107 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_proc_frame_push(%struct._GimpPlugIn* %57, %struct._GimpContext* %58, %struct._GimpProgress* %59, %struct._GimpTemporaryProcedure* %60)
  store %struct._GimpPlugInProcFrame* %call107, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %61 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %62 = bitcast %struct._GimpTemporaryProcedure* %61 to %struct._GTypeInstance*
  %call108 = call i64 @gimp_procedure_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call108)
  %63 = bitcast %struct._GTypeInstance* %call109 to %struct._GimpProcedure*
  %original_name = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %63, i32 0, i32 3
  %64 = load i8*, i8** %original_name, align 8
  %name = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %proc_run, i32 0, i32 0
  store i8* %64, i8** %name, align 8
  %65 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %65, i32 0, i32 0
  %66 = load i32, i32* %n_values, align 4
  %nparams = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %proc_run, i32 0, i32 1
  store i32 %66, i32* %nparams, align 4
  %67 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %call110 = call %struct._GPParam* @plug_in_args_to_params(%struct._GValueArray* %67, i32 0)
  %params = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %proc_run, i32 0, i32 2
  store %struct._GPParam* %call110, %struct._GPParam** %params, align 8
  %68 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %my_write = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %68, i32 0, i32 7
  %69 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write, align 8
  %70 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %71 = bitcast %struct._GimpPlugIn* %70 to i8*
  %call111 = call i32 @gp_temp_proc_run_write(%struct._GIOChannel* %69, %struct._GPProcRun* %proc_run, i8* %71)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %lor.lhs.false.113, label %if.then.117

lor.lhs.false.113:                                ; preds = %if.then.104
  %72 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %my_write114 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %72, i32 0, i32 7
  %73 = load %struct._GIOChannel*, %struct._GIOChannel** %my_write114, align 8
  %74 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %75 = bitcast %struct._GimpPlugIn* %74 to i8*
  %call115 = call i32 @gimp_wire_flush(%struct._GIOChannel* %73, i8* %75)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end.129, label %if.then.117

if.then.117:                                      ; preds = %lor.lhs.false.113, %if.then.104
  %76 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %77 = bitcast %struct._GimpPlugIn* %76 to i8*
  %call120 = call i8* @gimp_object_get_name(i8* %77)
  store i8* %call120, i8** %name119, align 8
  %call122 = call i32 @gimp_plug_in_error_quark() #5
  %call123 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #7
  %78 = load i8*, i8** %name119, align 8
  %call124 = call %struct._GError* (i32, i32, i8*, ...) @g_error_new(i32 %call122, i32 1, i8* %call123, i8* %78)
  store %struct._GError* %call124, %struct._GError** %error, align 8
  %params125 = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %proc_run, i32 0, i32 2
  %79 = load %struct._GPParam*, %struct._GPParam** %params125, align 8
  %80 = bitcast %struct._GPParam* %79 to i8*
  call void @g_free(i8* %80)
  %81 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  call void @gimp_plug_in_proc_frame_pop(%struct._GimpPlugIn* %81)
  %82 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %83 = bitcast %struct._GimpTemporaryProcedure* %82 to %struct._GTypeInstance*
  %call126 = call i64 @gimp_procedure_get_type() #5
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call126)
  %84 = bitcast %struct._GTypeInstance* %call127 to %struct._GimpProcedure*
  %85 = load %struct._GError*, %struct._GError** %error, align 8
  %call128 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %84, i32 0, %struct._GError* %85)
  store %struct._GValueArray* %call128, %struct._GValueArray** %return_vals, align 8
  %86 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %86)
  %87 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %87, %struct._GValueArray** %retval
  br label %return

if.end.129:                                       ; preds = %lor.lhs.false.113
  %88 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  call void @gimp_allow_set_foreground_window(%struct._GimpPlugIn* %88)
  %params130 = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %proc_run, i32 0, i32 2
  %89 = load %struct._GPParam*, %struct._GPParam** %params130, align 8
  %90 = bitcast %struct._GPParam* %89 to i8*
  call void @g_free(i8* %90)
  %91 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %92 = bitcast %struct._GimpPlugIn* %91 to i8*
  %call131 = call i8* @g_object_ref(i8* %92)
  %93 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %call132 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_proc_frame_ref(%struct._GimpPlugInProcFrame* %93)
  %94 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  call void @gimp_plug_in_main_loop(%struct._GimpPlugIn* %94)
  %95 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %call133 = call %struct._GValueArray* @gimp_plug_in_proc_frame_get_return_values(%struct._GimpPlugInProcFrame* %95)
  store %struct._GValueArray* %call133, %struct._GValueArray** %return_vals, align 8
  %96 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %97 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  call void @gimp_plug_in_proc_frame_unref(%struct._GimpPlugInProcFrame* %96, %struct._GimpPlugIn* %97)
  %98 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %99 = bitcast %struct._GimpPlugIn* %98 to i8*
  call void @g_object_unref(i8* %99)
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.129, %do.end.101
  %100 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %100, %struct._GValueArray** %retval
  br label %return

return:                                           ; preds = %if.end.134, %if.then.117, %if.else.99, %if.else.93, %if.else.65, %if.else.36, %if.else.9
  %101 = load %struct._GValueArray*, %struct._GValueArray** %retval
  ret %struct._GValueArray* %101
}

; Function Attrs: nounwind readnone
declare i64 @gimp_temporary_procedure_get_type() #1

declare %struct._GimpPlugInProcFrame* @gimp_plug_in_proc_frame_push(%struct._GimpPlugIn*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpTemporaryProcedure*) #3

declare i32 @gp_temp_proc_run_write(%struct._GIOChannel*, %struct._GPProcRun*, i8*) #3

declare void @gimp_plug_in_proc_frame_pop(%struct._GimpPlugIn*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_allow_set_foreground_window(%struct._GimpPlugIn* %plug_in) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  ret void
}

declare i8* @g_object_ref(i8*) #3

declare %struct._GimpPlugInProcFrame* @gimp_plug_in_proc_frame_ref(%struct._GimpPlugInProcFrame*) #3

declare void @gimp_plug_in_main_loop(%struct._GimpPlugIn*) #3

declare void @gimp_plug_in_proc_frame_unref(%struct._GimpPlugInProcFrame*, %struct._GimpPlugIn*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
