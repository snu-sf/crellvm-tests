; ModuleID = './app/plug-in/gimppluginmanager-restore.bc'
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
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpPlugIn = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, %struct._GHashTable*, %struct._GHashTable*, %struct._GHashTable* }
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
%struct._GError = type { i32, i32, i8* }
%struct._GimpPlugInDef = type { %struct._GimpObject, i8*, %struct._GSList*, i8*, i8*, i8*, i8*, i64, i32, i32 }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpDatafileData = type { i8*, i8*, i8*, i64, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_manager_restore = private unnamed_addr constant [29 x i8] c"gimp_plug_in_manager_restore\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PLUG_IN_MANAGER (manager)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"status_callback != NULL\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"PATHEXT\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Searching Plug-Ins\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"GIMP_TESTING_PLUGINDIRS\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Skipping duplicate plug-in: '%s'\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"GIMP_TESTING_PLUGINDIRS_BASENAME_IGNORES\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"pluginrc\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Resource configuration\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@__func__.gimp_plug_in_manager_add_from_rc = private unnamed_addr constant [33 x i8] c"gimp_plug_in_manager_add_from_rc\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"plug_in_def != NULL\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"plug_in_def->prog != NULL\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"plug_ins_def_add_from_rc: filename not absolute (skipping)\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"<Load>\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"<Save>\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"pluginrc lists '%s', but it wasn't found\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Querying new Plug-ins\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Querying plug-in: '%s'\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Initializing Plug-ins\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Initializing plug-in: '%s'\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Starting Extensions\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Starting extension: '%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"gimp-register-save-handler\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"gimp-register-magic-load-handler\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"gimp-xcf\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_restore(%struct._GimpPlugInManager* %manager, %struct._GimpContext* %context, void (i8*, i8*, double)* %status_callback) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %pluginrc = alloca i8*, align 8
  %list = alloca %struct._GSList*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %plug_in_def = alloca %struct._GimpPlugInDef*, align 8
  %list2 = alloca %struct._GSList*, align 8
  %plug_in_def76 = alloca %struct._GimpPlugInDef*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_manager_restore, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_manager_restore, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %cmp40 = icmp ne void (i8*, i8*, double)* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_manager_restore, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp45 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %27, i32 0, i32 1
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp45, align 8
  store %struct._Gimp* %28, %struct._Gimp** %gimp, align 8
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call46 = call %struct._GimpContext* @gimp_pdb_context_new(%struct._Gimp* %29, %struct._GimpContext* %30, i32 1)
  store %struct._GimpContext* %call46, %struct._GimpContext** %context.addr, align 8
  %31 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %32 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void @gimp_plug_in_manager_search(%struct._GimpPlugInManager* %31, void (i8*, i8*, double)* %32)
  %33 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %call47 = call i8* @gimp_plug_in_manager_get_pluginrc(%struct._GimpPlugInManager* %33)
  store i8* %call47, i8** %pluginrc, align 8
  %34 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %35 = load i8*, i8** %pluginrc, align 8
  %36 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void @gimp_plug_in_manager_read_pluginrc(%struct._GimpPlugInManager* %34, i8* %35, void (i8*, i8*, double)* %36)
  %37 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %39 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void @gimp_plug_in_manager_query_new(%struct._GimpPlugInManager* %37, %struct._GimpContext* %38, void (i8*, i8*, double)* %39)
  %40 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %42 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void @gimp_plug_in_manager_init_plug_ins(%struct._GimpPlugInManager* %40, %struct._GimpContext* %41, void (i8*, i8*, double)* %42)
  %43 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_defs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %43, i32 0, i32 2
  %44 = load %struct._GSList*, %struct._GSList** %plug_in_defs, align 8
  store %struct._GSList* %44, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %do.end.44
  %45 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool48 = icmp ne %struct._GSList* %45, null
  br i1 %tobool48, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %46 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 0
  %47 = load i8*, i8** %data, align 8
  %48 = bitcast i8* %47 to %struct._GimpPlugInDef*
  store %struct._GimpPlugInDef* %48, %struct._GimpPlugInDef** %plug_in_def, align 8
  %49 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %49, i32 0, i32 2
  %50 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  store %struct._GSList* %50, %struct._GSList** %list2, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc, %for.body
  %51 = load %struct._GSList*, %struct._GSList** %list2, align 8
  %tobool52 = icmp ne %struct._GSList* %51, null
  br i1 %tobool52, label %for.body.53, label %for.end

for.body.53:                                      ; preds = %for.cond.51
  %52 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %53 = load %struct._GSList*, %struct._GSList** %list2, align 8
  %data54 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 0
  %54 = load i8*, i8** %data54, align 8
  %55 = bitcast i8* %54 to %struct._GimpPlugInProcedure*
  call void @gimp_plug_in_manager_add_procedure(%struct._GimpPlugInManager* %52, %struct._GimpPlugInProcedure* %55)
  br label %for.inc

for.inc:                                          ; preds = %for.body.53
  %56 = load %struct._GSList*, %struct._GSList** %list2, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %56, i32 0, i32 1
  %57 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %57, %struct._GSList** %list2, align 8
  br label %for.cond.51

for.end:                                          ; preds = %for.cond.51
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end
  %58 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next56 = getelementptr inbounds %struct._GSList, %struct._GSList* %58, i32 0, i32 1
  %59 = load %struct._GSList*, %struct._GSList** %next56, align 8
  store %struct._GSList* %59, %struct._GSList** %list, align 8
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  %60 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %write_pluginrc = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %60, i32 0, i32 3
  %61 = load i32, i32* %write_pluginrc, align 4
  %tobool58 = icmp ne i32 %61, 0
  br i1 %tobool58, label %if.then.59, label %if.end.70

if.then.59:                                       ; preds = %for.end.57
  %62 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %62, i32 0, i32 4
  %63 = load i32, i32* %be_verbose, align 4
  %tobool60 = icmp ne i32 %63, 0
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.then.59
  %64 = load i8*, i8** %pluginrc, align 8
  %call62 = call i8* @gimp_filename_to_utf8(i8* %64)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* %call62)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.then.59
  %65 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_defs64 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %65, i32 0, i32 2
  %66 = load %struct._GSList*, %struct._GSList** %plug_in_defs64, align 8
  %67 = load i8*, i8** %pluginrc, align 8
  %call65 = call i32 @plug_in_rc_write(%struct._GSList* %66, i8* %67, %struct._GError** %error)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.end.63
  %68 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %69 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %69, i32 0, i32 2
  %70 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %68, %struct._GObject* null, i32 2, i8* %70)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.63
  %71 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %write_pluginrc69 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %71, i32 0, i32 3
  store i32 0, i32* %write_pluginrc69, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.68, %for.end.57
  %72 = load i8*, i8** %pluginrc, align 8
  call void @g_free(i8* %72)
  %73 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_defs71 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %73, i32 0, i32 2
  %74 = load %struct._GSList*, %struct._GSList** %plug_in_defs71, align 8
  store %struct._GSList* %74, %struct._GSList** %list, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.90, %if.end.70
  %75 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool73 = icmp ne %struct._GSList* %75, null
  br i1 %tobool73, label %for.body.74, label %for.end.92

for.body.74:                                      ; preds = %for.cond.72
  %76 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data77 = getelementptr inbounds %struct._GSList, %struct._GSList* %76, i32 0, i32 0
  %77 = load i8*, i8** %data77, align 8
  %78 = bitcast i8* %77 to %struct._GimpPlugInDef*
  store %struct._GimpPlugInDef* %78, %struct._GimpPlugInDef** %plug_in_def76, align 8
  %79 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def76, align 8
  %locale_domain_name = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %79, i32 0, i32 3
  %80 = load i8*, i8** %locale_domain_name, align 8
  %tobool78 = icmp ne i8* %80, null
  br i1 %tobool78, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %for.body.74
  %81 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %82 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def76, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %82, i32 0, i32 1
  %83 = load i8*, i8** %prog, align 8
  %84 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def76, align 8
  %locale_domain_name80 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %84, i32 0, i32 3
  %85 = load i8*, i8** %locale_domain_name80, align 8
  %86 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def76, align 8
  %locale_domain_path = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %86, i32 0, i32 4
  %87 = load i8*, i8** %locale_domain_path, align 8
  call void @gimp_plug_in_manager_add_locale_domain(%struct._GimpPlugInManager* %81, i8* %83, i8* %85, i8* %87)
  br label %if.end.84

if.else.81:                                       ; preds = %for.body.74
  %88 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def76, align 8
  %89 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %90 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def76, align 8
  %prog82 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %90, i32 0, i32 1
  %91 = load i8*, i8** %prog82, align 8
  %call83 = call i8* @gimp_plug_in_manager_get_locale_domain(%struct._GimpPlugInManager* %89, i8* %91, i8** null)
  call void @gimp_plug_in_def_set_locale_domain(%struct._GimpPlugInDef* %88, i8* %call83, i8* null)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.79
  %92 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def76, align 8
  %help_domain_name = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %92, i32 0, i32 5
  %93 = load i8*, i8** %help_domain_name, align 8
  %tobool85 = icmp ne i8* %93, null
  br i1 %tobool85, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %if.end.84
  %94 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %95 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def76, align 8
  %prog87 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %95, i32 0, i32 1
  %96 = load i8*, i8** %prog87, align 8
  %97 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def76, align 8
  %help_domain_name88 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %97, i32 0, i32 5
  %98 = load i8*, i8** %help_domain_name88, align 8
  %99 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def76, align 8
  %help_domain_uri = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %99, i32 0, i32 6
  %100 = load i8*, i8** %help_domain_uri, align 8
  call void @gimp_plug_in_manager_add_help_domain(%struct._GimpPlugInManager* %94, i8* %96, i8* %98, i8* %100)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.86, %if.end.84
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %101 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next91 = getelementptr inbounds %struct._GSList, %struct._GSList* %101, i32 0, i32 1
  %102 = load %struct._GSList*, %struct._GSList** %next91, align 8
  store %struct._GSList* %102, %struct._GSList** %list, align 8
  br label %for.cond.72

for.end.92:                                       ; preds = %for.cond.72
  %103 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_defs93 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %103, i32 0, i32 2
  %104 = load %struct._GSList*, %struct._GSList** %plug_in_defs93, align 8
  call void @g_slist_free_full(%struct._GSList* %104, void (i8*)* @g_object_unref)
  %105 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_defs94 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %105, i32 0, i32 2
  store %struct._GSList* null, %struct._GSList** %plug_in_defs94, align 8
  %106 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  call void @gimp_plug_in_manager_bind_text_domains(%struct._GimpPlugInManager* %106)
  %107 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %107, i32 0, i32 4
  %108 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  store %struct._GSList* %108, %struct._GSList** %list, align 8
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.99, %for.end.92
  %109 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool96 = icmp ne %struct._GSList* %109, null
  br i1 %tobool96, label %for.body.97, label %for.end.101

for.body.97:                                      ; preds = %for.cond.95
  %110 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %111 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %112 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data98 = getelementptr inbounds %struct._GSList, %struct._GSList* %112, i32 0, i32 0
  %113 = load i8*, i8** %data98, align 8
  %114 = bitcast i8* %113 to %struct._GimpPlugInProcedure*
  call void @gimp_plug_in_manager_add_to_db(%struct._GimpPlugInManager* %110, %struct._GimpContext* %111, %struct._GimpPlugInProcedure* %114)
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.97
  %115 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next100 = getelementptr inbounds %struct._GSList, %struct._GSList* %115, i32 0, i32 1
  %116 = load %struct._GSList*, %struct._GSList** %next100, align 8
  store %struct._GSList* %116, %struct._GSList** %list, align 8
  br label %for.cond.95

for.end.101:                                      ; preds = %for.cond.95
  %117 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %load_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %117, i32 0, i32 5
  %118 = load %struct._GSList*, %struct._GSList** %load_procs, align 8
  %119 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %120 = bitcast %struct._GimpPlugInManager* %119 to i8*
  %call102 = call %struct._GSList* @g_slist_sort_with_data(%struct._GSList* %118, i32 (i8*, i8*, i8*)* @gimp_plug_in_manager_file_proc_compare, i8* %120)
  %121 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %load_procs103 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %121, i32 0, i32 5
  store %struct._GSList* %call102, %struct._GSList** %load_procs103, align 8
  %122 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %save_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %122, i32 0, i32 6
  %123 = load %struct._GSList*, %struct._GSList** %save_procs, align 8
  %124 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %125 = bitcast %struct._GimpPlugInManager* %124 to i8*
  %call104 = call %struct._GSList* @g_slist_sort_with_data(%struct._GSList* %123, i32 (i8*, i8*, i8*)* @gimp_plug_in_manager_file_proc_compare, i8* %125)
  %126 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %save_procs105 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %126, i32 0, i32 6
  store %struct._GSList* %call104, %struct._GSList** %save_procs105, align 8
  %127 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %export_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %127, i32 0, i32 7
  %128 = load %struct._GSList*, %struct._GSList** %export_procs, align 8
  %129 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %130 = bitcast %struct._GimpPlugInManager* %129 to i8*
  %call106 = call %struct._GSList* @g_slist_sort_with_data(%struct._GSList* %128, i32 (i8*, i8*, i8*)* @gimp_plug_in_manager_file_proc_compare, i8* %130)
  %131 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %export_procs107 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %131, i32 0, i32 7
  store %struct._GSList* %call106, %struct._GSList** %export_procs107, align 8
  %132 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %133 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %134 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void @gimp_plug_in_manager_run_extensions(%struct._GimpPlugInManager* %132, %struct._GimpContext* %133, void (i8*, i8*, double)* %134)
  %135 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %136 = bitcast %struct._GimpContext* %135 to i8*
  call void @g_object_unref(i8* %136)
  br label %return

return:                                           ; preds = %for.end.101, %if.else.42, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_manager_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare %struct._GimpContext* @gimp_pdb_context_new(%struct._Gimp*, %struct._GimpContext*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_manager_search(%struct._GimpPlugInManager* %manager, void (i8*, i8*, double)* %status_callback) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  %path = alloca i8*, align 8
  %pathext = alloca i8*, align 8
  %exts = alloca i8*, align 8
  %value = alloca i8*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call = call i8* @g_getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call, i8** %pathext, align 8
  %0 = load i8*, i8** %pathext, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %interpreter_db = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %1, i32 0, i32 16
  %2 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %interpreter_db, align 8
  %call1 = call i8* @gimp_interpreter_db_get_extensions(%struct._GimpInterpreterDB* %2)
  store i8* %call1, i8** %exts, align 8
  %3 = load i8*, i8** %exts, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load i8*, i8** %pathext, align 8
  %5 = load i8*, i8** %exts, align 8
  %call4 = call noalias i8* (i8*, ...) @g_strconcat(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* %5, i8* null)
  store i8* %call4, i8** %value, align 8
  %6 = load i8*, i8** %value, align 8
  %call5 = call i32 @g_setenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* %6, i32 1)
  %7 = load i8*, i8** %value, align 8
  call void @g_free(i8* %7)
  %8 = load i8*, i8** %exts, align 8
  call void @g_free(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %9 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)) #5
  call void %9(i8* %call7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), double 0.000000e+00)
  %call8 = call i8* @g_getenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  %call9 = call noalias i8* @g_strdup(i8* %call8)
  store i8* %call9, i8** %path, align 8
  %10 = load i8*, i8** %path, align 8
  %tobool10 = icmp ne i8* %10, null
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.end.6
  %11 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 1
  %13 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %plug_in_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %13, i32 0, i32 4
  %14 = load i8*, i8** %plug_in_path, align 8
  %call12 = call noalias i8* @gimp_config_path_expand(i8* %14, i32 1, %struct._GError** null)
  store i8* %call12, i8** %path, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.6
  %15 = load i8*, i8** %path, align 8
  %16 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %17 = bitcast %struct._GimpPlugInManager* %16 to i8*
  call void @gimp_datafiles_read_directories(i8* %15, i32 8, void (%struct._GimpDatafileData*, i8*)* @gimp_plug_in_manager_add_from_file, i8* %17)
  %18 = load i8*, i8** %path, align 8
  call void @g_free(i8* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_plug_in_manager_get_pluginrc(%struct._GimpPlugInManager* %manager) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %pluginrc = alloca i8*, align 8
  %str = alloca i8*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp1 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  store %struct._Gimp* %1, %struct._Gimp** %gimp, align 8
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 1
  %3 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %plug_in_rc_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %3, i32 0, i32 41
  %4 = load i8*, i8** %plug_in_rc_path, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config2 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 1
  %6 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config2, align 8
  %plug_in_rc_path3 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %6, i32 0, i32 41
  %7 = load i8*, i8** %plug_in_rc_path3, align 8
  %call = call noalias i8* @gimp_config_path_expand(i8* %7, i32 1, %struct._GError** null)
  store i8* %call, i8** %pluginrc, align 8
  %8 = load i8*, i8** %pluginrc, align 8
  %call4 = call i32 @g_path_is_absolute(i8* %8)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %call7 = call i8* @gimp_directory() #6
  %9 = load i8*, i8** %pluginrc, align 8
  %call8 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call7, i8* %9, i8* null)
  store i8* %call8, i8** %str, align 8
  %10 = load i8*, i8** %pluginrc, align 8
  call void @g_free(i8* %10)
  %11 = load i8*, i8** %str, align 8
  store i8* %11, i8** %pluginrc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.10

if.else:                                          ; preds = %entry
  %call9 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0))
  store i8* %call9, i8** %pluginrc, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  %12 = load i8*, i8** %pluginrc, align 8
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_manager_read_pluginrc(%struct._GimpPlugInManager* %manager, i8* %pluginrc, void (i8*, i8*, double)* %status_callback) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %pluginrc.addr = alloca i8*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  %rc_defs = alloca %struct._GSList*, align 8
  %error = alloca %struct._GError*, align 8
  %list = alloca %struct._GSList*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %pluginrc, i8** %pluginrc.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0)) #5
  %1 = load i8*, i8** %pluginrc.addr, align 8
  %call1 = call i8* @gimp_filename_to_utf8(i8* %1)
  call void %0(i8* %call, i8* %call1, double 0.000000e+00)
  %2 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 4
  %4 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %pluginrc.addr, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %5)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp3 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp3, align 8
  %8 = load i8*, i8** %pluginrc.addr, align 8
  %call4 = call %struct._GSList* @plug_in_rc_parse(%struct._Gimp* %7, i8* %8, %struct._GError** %error)
  store %struct._GSList* %call4, %struct._GSList** %rc_defs, align 8
  %9 = load %struct._GSList*, %struct._GSList** %rc_defs, align 8
  %tobool5 = icmp ne %struct._GSList* %9, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._GSList*, %struct._GSList** %rc_defs, align 8
  store %struct._GSList* %10, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.6
  %11 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool7 = icmp ne %struct._GSList* %11, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %13 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GimpPlugInDef*
  call void @gimp_plug_in_manager_add_from_rc(%struct._GimpPlugInManager* %12, %struct._GimpPlugInDef* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool8 = icmp ne %struct._GSList* %16, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 1
  %18 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._GSList*, %struct._GSList** %rc_defs, align 8
  call void @g_slist_free(%struct._GSList* %19)
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %20 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool9 = icmp ne %struct._GError* %20, null
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.else
  %21 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %21, i32 0, i32 1
  %22 = load i32, i32* %code, align 4
  %cmp = icmp ne i32 %22, 1
  br i1 %cmp, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.10
  %23 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp12 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %23, i32 0, i32 1
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %25 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %25, i32 0, i32 2
  %26 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %24, %struct._GObject* null, i32 2, i8* %26)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.10
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_manager_query_new(%struct._GimpPlugInManager* %manager, %struct._GimpContext* %context, void (i8*, i8*, double)* %status_callback) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  %list = alloca %struct._GSList*, align 8
  %n_plugins = alloca i32, align 4
  %plug_in_def = alloca %struct._GimpPlugInDef*, align 8
  %nth = alloca i32, align 4
  %plug_in_def8 = alloca %struct._GimpPlugInDef*, align 8
  %basename = alloca i8*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
  %0 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0)) #5
  call void %0(i8* %call, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), double 0.000000e+00)
  %1 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_defs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %1, i32 0, i32 2
  %2 = load %struct._GSList*, %struct._GSList** %plug_in_defs, align 8
  store %struct._GSList* %2, %struct._GSList** %list, align 8
  store i32 0, i32* %n_plugins, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GimpPlugInDef*
  store %struct._GimpPlugInDef* %6, %struct._GimpPlugInDef** %plug_in_def, align 8
  %7 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %needs_query = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %7, i32 0, i32 8
  %8 = load i32, i32* %needs_query, align 4
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %n_plugins, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %n_plugins, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %10, i32 0, i32 1
  %11 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %11, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %n_plugins, align 4
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.then.3, label %if.end.25

if.then.3:                                        ; preds = %for.end
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %write_pluginrc = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 3
  store i32 1, i32* %write_pluginrc, align 4
  %14 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_defs4 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %14, i32 0, i32 2
  %15 = load %struct._GSList*, %struct._GSList** %plug_in_defs4, align 8
  store %struct._GSList* %15, %struct._GSList** %list, align 8
  store i32 0, i32* %nth, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.22, %if.then.3
  %16 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool6 = icmp ne %struct._GSList* %16, null
  br i1 %tobool6, label %for.body.7, label %for.end.24

for.body.7:                                       ; preds = %for.cond.5
  %17 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data9 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data9, align 8
  %19 = bitcast i8* %18 to %struct._GimpPlugInDef*
  store %struct._GimpPlugInDef* %19, %struct._GimpPlugInDef** %plug_in_def8, align 8
  %20 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def8, align 8
  %needs_query10 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %20, i32 0, i32 8
  %21 = load i32, i32* %needs_query10, align 4
  %tobool11 = icmp ne i32 %21, 0
  br i1 %tobool11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %for.body.7
  %22 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def8, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %22, i32 0, i32 1
  %23 = load i8*, i8** %prog, align 8
  %call13 = call noalias i8* @g_filename_display_basename(i8* %23)
  store i8* %call13, i8** %basename, align 8
  %24 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %25 = load i8*, i8** %basename, align 8
  %26 = load i32, i32* %nth, align 4
  %inc14 = add nsw i32 %26, 1
  store i32 %inc14, i32* %nth, align 4
  %conv = sitofp i32 %26 to double
  %27 = load i32, i32* %n_plugins, align 4
  %conv15 = sitofp i32 %27 to double
  %div = fdiv double %conv, %conv15
  call void %24(i8* null, i8* %25, double %div)
  %28 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %28)
  %29 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %29, i32 0, i32 1
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 4
  %31 = load i32, i32* %be_verbose, align 4
  %tobool16 = icmp ne i32 %31, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.then.12
  %32 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def8, align 8
  %prog18 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %32, i32 0, i32 1
  %33 = load i8*, i8** %prog18, align 8
  %call19 = call i8* @gimp_filename_to_utf8(i8* %33)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i8* %call19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.then.12
  %34 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %36 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def8, align 8
  call void @gimp_plug_in_manager_call_query(%struct._GimpPlugInManager* %34, %struct._GimpContext* %35, %struct._GimpPlugInDef* %36)
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %for.body.7
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.21
  %37 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next23 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 1
  %38 = load %struct._GSList*, %struct._GSList** %next23, align 8
  store %struct._GSList* %38, %struct._GSList** %list, align 8
  br label %for.cond.5

for.end.24:                                       ; preds = %for.cond.5
  br label %if.end.25

if.end.25:                                        ; preds = %for.end.24, %for.end
  %39 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void %39(i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), double 1.000000e+00)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_manager_init_plug_ins(%struct._GimpPlugInManager* %manager, %struct._GimpContext* %context, void (i8*, i8*, double)* %status_callback) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  %list = alloca %struct._GSList*, align 8
  %n_plugins = alloca i32, align 4
  %plug_in_def = alloca %struct._GimpPlugInDef*, align 8
  %nth = alloca i32, align 4
  %plug_in_def8 = alloca %struct._GimpPlugInDef*, align 8
  %basename = alloca i8*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
  %0 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0)) #5
  call void %0(i8* %call, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), double 0.000000e+00)
  %1 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_defs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %1, i32 0, i32 2
  %2 = load %struct._GSList*, %struct._GSList** %plug_in_defs, align 8
  store %struct._GSList* %2, %struct._GSList** %list, align 8
  store i32 0, i32* %n_plugins, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GimpPlugInDef*
  store %struct._GimpPlugInDef* %6, %struct._GimpPlugInDef** %plug_in_def, align 8
  %7 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %has_init = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %7, i32 0, i32 9
  %8 = load i32, i32* %has_init, align 4
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %n_plugins, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %n_plugins, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %10, i32 0, i32 1
  %11 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %11, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %n_plugins, align 4
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.then.3, label %if.end.25

if.then.3:                                        ; preds = %for.end
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_defs4 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 2
  %14 = load %struct._GSList*, %struct._GSList** %plug_in_defs4, align 8
  store %struct._GSList* %14, %struct._GSList** %list, align 8
  store i32 0, i32* %nth, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.22, %if.then.3
  %15 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool6 = icmp ne %struct._GSList* %15, null
  br i1 %tobool6, label %for.body.7, label %for.end.24

for.body.7:                                       ; preds = %for.cond.5
  %16 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data9 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data9, align 8
  %18 = bitcast i8* %17 to %struct._GimpPlugInDef*
  store %struct._GimpPlugInDef* %18, %struct._GimpPlugInDef** %plug_in_def8, align 8
  %19 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def8, align 8
  %has_init10 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %19, i32 0, i32 9
  %20 = load i32, i32* %has_init10, align 4
  %tobool11 = icmp ne i32 %20, 0
  br i1 %tobool11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %for.body.7
  %21 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def8, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %21, i32 0, i32 1
  %22 = load i8*, i8** %prog, align 8
  %call13 = call noalias i8* @g_filename_display_basename(i8* %22)
  store i8* %call13, i8** %basename, align 8
  %23 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %24 = load i8*, i8** %basename, align 8
  %25 = load i32, i32* %nth, align 4
  %inc14 = add nsw i32 %25, 1
  store i32 %inc14, i32* %nth, align 4
  %conv = sitofp i32 %25 to double
  %26 = load i32, i32* %n_plugins, align 4
  %conv15 = sitofp i32 %26 to double
  %div = fdiv double %conv, %conv15
  call void %23(i8* null, i8* %24, double %div)
  %27 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %27)
  %28 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %28, i32 0, i32 1
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 4
  %30 = load i32, i32* %be_verbose, align 4
  %tobool16 = icmp ne i32 %30, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.then.12
  %31 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def8, align 8
  %prog18 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %31, i32 0, i32 1
  %32 = load i8*, i8** %prog18, align 8
  %call19 = call i8* @gimp_filename_to_utf8(i8* %32)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0), i8* %call19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.then.12
  %33 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %35 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def8, align 8
  call void @gimp_plug_in_manager_call_init(%struct._GimpPlugInManager* %33, %struct._GimpContext* %34, %struct._GimpPlugInDef* %35)
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %for.body.7
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.21
  %36 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next23 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 1
  %37 = load %struct._GSList*, %struct._GSList** %next23, align 8
  store %struct._GSList* %37, %struct._GSList** %list, align 8
  br label %for.cond.5

for.end.24:                                       ; preds = %for.cond.5
  br label %if.end.25

if.end.25:                                        ; preds = %for.end.24, %for.end
  %38 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void %38(i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), double 1.000000e+00)
  ret void
}

declare void @gimp_plug_in_manager_add_procedure(%struct._GimpPlugInManager*, %struct._GimpPlugInProcedure*) #3

declare void @g_print(i8*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare i32 @plug_in_rc_write(%struct._GSList*, i8*, %struct._GError**) #3

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare void @g_clear_error(%struct._GError**) #3

declare void @g_free(i8*) #3

declare void @gimp_plug_in_manager_add_locale_domain(%struct._GimpPlugInManager*, i8*, i8*, i8*) #3

declare void @gimp_plug_in_def_set_locale_domain(%struct._GimpPlugInDef*, i8*, i8*) #3

declare i8* @gimp_plug_in_manager_get_locale_domain(%struct._GimpPlugInManager*, i8*, i8**) #3

declare void @gimp_plug_in_manager_add_help_domain(%struct._GimpPlugInManager*, i8*, i8*, i8*) #3

declare void @g_slist_free_full(%struct._GSList*, void (i8*)*) #3

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_manager_bind_text_domains(%struct._GimpPlugInManager* %manager) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %locale_domains = alloca i8**, align 8
  %locale_paths = alloca i8**, align 8
  %n_domains = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %call = call i32 @gimp_plug_in_manager_get_locale_domains(%struct._GimpPlugInManager* %0, i8*** %locale_domains, i8*** %locale_paths)
  store i32 %call, i32* %n_domains, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n_domains, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %locale_domains, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i8**, i8*** %locale_paths, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %7, i64 %idxprom1
  %8 = load i8*, i8** %arrayidx2, align 8
  %call3 = call i8* @bindtextdomain(i8* %5, i8* %8) #5
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i8**, i8*** %locale_domains, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %10, i64 %idxprom4
  %11 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i8* @bind_textdomain_codeset(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i8**, i8*** %locale_domains, align 8
  call void @g_strfreev(i8** %13)
  %14 = load i8**, i8*** %locale_paths, align 8
  call void @g_strfreev(i8** %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_manager_add_to_db(%struct._GimpPlugInManager* %manager, %struct._GimpContext* %context, %struct._GimpPlugInProcedure* %proc) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 44
  %2 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %3 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %4 = bitcast %struct._GimpPlugInProcedure* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_procedure_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProcedure*
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %2, %struct._GimpProcedure* %5)
  %6 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %file_proc = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %6, i32 0, i32 14
  %7 = load i32, i32* %file_proc, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %error, align 8
  %8 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %image_types = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %8, i32 0, i32 10
  %9 = load i8*, i8** %image_types, align 8
  %tobool2 = icmp ne i8* %9, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %10 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp4 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp4, align 8
  %pdb5 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 44
  %12 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb5, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %15 = bitcast %struct._GimpPlugInProcedure* %14 to i8*
  %call6 = call i8* @gimp_object_get_name(i8* %15)
  %16 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %extensions = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %16, i32 0, i32 15
  %17 = load i8*, i8** %extensions, align 8
  %18 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %18, i32 0, i32 16
  %19 = load i8*, i8** %prefixes, align 8
  %call7 = call %struct._GValueArray* (%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB* %12, %struct._GimpContext* %13, %struct._GimpProgress* null, %struct._GError** %error, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0), i64 64, i8* %call6, i64 64, i8* %17, i64 64, i8* %19, i64 4)
  store %struct._GValueArray* %call7, %struct._GValueArray** %return_vals, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp8 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %20, i32 0, i32 1
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp8, align 8
  %pdb9 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 44
  %22 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb9, align 8
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %24 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %25 = bitcast %struct._GimpPlugInProcedure* %24 to i8*
  %call10 = call i8* @gimp_object_get_name(i8* %25)
  %26 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %extensions11 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %26, i32 0, i32 15
  %27 = load i8*, i8** %extensions11, align 8
  %28 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes12 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %28, i32 0, i32 16
  %29 = load i8*, i8** %prefixes12, align 8
  %30 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %magics = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %30, i32 0, i32 17
  %31 = load i8*, i8** %magics, align 8
  %call13 = call %struct._GValueArray* (%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB* %22, %struct._GimpContext* %23, %struct._GimpProgress* null, %struct._GError** %error, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0), i64 64, i8* %call10, i64 64, i8* %27, i64 64, i8* %29, i64 64, i8* %31, i64 4)
  store %struct._GValueArray* %call13, %struct._GValueArray** %return_vals, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %32 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %32)
  %33 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool14 = icmp ne %struct._GError* %33, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %34 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp16 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %34, i32 0, i32 1
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp16, align 8
  %36 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %36, i32 0, i32 2
  %37 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %35, %struct._GObject* null, i32 2, i8* %37)
  %38 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %38)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %entry
  ret void
}

declare %struct._GSList* @g_slist_sort_with_data(%struct._GSList*, i32 (i8*, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_plug_in_manager_file_proc_compare(i8* %a, i8* %b, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %proc_a = alloca %struct._GimpPlugInProcedure*, align 8
  %proc_b = alloca %struct._GimpPlugInProcedure*, align 8
  %label_a = alloca i8*, align 8
  %label_b = alloca i8*, align 8
  %retval4 = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %2, %struct._GimpPlugInProcedure** %proc_a, align 8
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_plug_in_procedure_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %5, %struct._GimpPlugInProcedure** %proc_b, align 8
  store i32 0, i32* %retval4, align 4
  %6 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc_a, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %6, i32 0, i32 1
  %7 = load i8*, i8** %prog, align 8
  %call5 = call i32 @g_str_has_prefix(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0))
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc_b, align 8
  %prog6 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %8, i32 0, i32 1
  %9 = load i8*, i8** %prog6, align 8
  %call7 = call i32 @g_str_has_prefix(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0))
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %10 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc_a, align 8
  %call11 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %10)
  store i8* %call11, i8** %label_a, align 8
  %11 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc_b, align 8
  %call12 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %11)
  store i8* %call12, i8** %label_b, align 8
  %12 = load i8*, i8** %label_a, align 8
  %tobool13 = icmp ne i8* %12, null
  br i1 %tobool13, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.10
  %13 = load i8*, i8** %label_b, align 8
  %tobool14 = icmp ne i8* %13, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %land.lhs.true
  %14 = load i8*, i8** %label_a, align 8
  %15 = load i8*, i8** %label_b, align 8
  %call16 = call i32 @g_utf8_collate(i8* %14, i8* %15) #7
  store i32 %call16, i32* %retval4, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %land.lhs.true, %if.end.10
  %16 = load i32, i32* %retval4, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.9, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_manager_run_extensions(%struct._GimpPlugInManager* %manager, %struct._GimpContext* %context, void (i8*, i8*, double)* %status_callback) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %list = alloca %struct._GSList*, align 8
  %extensions = alloca %struct._GList*, align 8
  %n_extensions = alloca i32, align 4
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %list13 = alloca %struct._GList*, align 8
  %nth = alloca i32, align 4
  %proc18 = alloca %struct._GimpPlugInProcedure*, align 8
  %args = alloca %struct._GValueArray*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp1 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  store %struct._Gimp* %1, %struct._Gimp** %gimp, align 8
  store %struct._GList* null, %struct._GList** %extensions, align 8
  %2 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %2, i32 0, i32 4
  %3 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  store %struct._GSList* %3, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %7, %struct._GimpPlugInProcedure** %proc, align 8
  %8 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %8, i32 0, i32 1
  %9 = load i8*, i8** %prog, align 8
  %tobool2 = icmp ne i8* %9, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %11 = bitcast %struct._GimpPlugInProcedure* %10 to %struct._GTypeInstance*
  %call = call i64 @gimp_procedure_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call)
  %12 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpProcedure*
  %proc_type = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %12, i32 0, i32 1
  %13 = load i32, i32* %proc_type, align 4
  %cmp = icmp eq i32 %13, 2
  br i1 %cmp, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %14 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %15 = bitcast %struct._GimpPlugInProcedure* %14 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_procedure_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call5)
  %16 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProcedure*
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %16, i32 0, i32 10
  %17 = load i32, i32* %num_args, align 4
  %cmp7 = icmp eq i32 %17, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  %18 = load %struct._GList*, %struct._GList** %extensions, align 8
  %19 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %20 = bitcast %struct._GimpPlugInProcedure* %19 to i8*
  %call8 = call %struct._GList* @g_list_prepend(%struct._GList* %18, i8* %20)
  store %struct._GList* %call8, %struct._GList** %extensions, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 1
  %22 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %22, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GList*, %struct._GList** %extensions, align 8
  %call9 = call %struct._GList* @g_list_reverse(%struct._GList* %23)
  store %struct._GList* %call9, %struct._GList** %extensions, align 8
  %24 = load %struct._GList*, %struct._GList** %extensions, align 8
  %call10 = call i32 @g_list_length(%struct._GList* %24)
  store i32 %call10, i32* %n_extensions, align 4
  %25 = load %struct._GList*, %struct._GList** %extensions, align 8
  %tobool11 = icmp ne %struct._GList* %25, null
  br i1 %tobool11, label %if.then.12, label %if.end.36

if.then.12:                                       ; preds = %for.end
  %26 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0)) #5
  call void %26(i8* %call14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), double 0.000000e+00)
  %27 = load %struct._GList*, %struct._GList** %extensions, align 8
  store %struct._GList* %27, %struct._GList** %list13, align 8
  store i32 0, i32* %nth, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %cond.end, %if.then.12
  %28 = load %struct._GList*, %struct._GList** %list13, align 8
  %tobool16 = icmp ne %struct._GList* %28, null
  br i1 %tobool16, label %for.body.17, label %for.end.35

for.body.17:                                      ; preds = %for.cond.15
  %29 = load %struct._GList*, %struct._GList** %list13, align 8
  %data19 = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data19, align 8
  %31 = bitcast i8* %30 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %31, %struct._GimpPlugInProcedure** %proc18, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %32, i32 0, i32 4
  %33 = load i32, i32* %be_verbose, align 4
  %tobool20 = icmp ne i32 %33, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %for.body.17
  %34 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc18, align 8
  %35 = bitcast %struct._GimpPlugInProcedure* %34 to i8*
  %call22 = call i8* @gimp_object_get_name(i8* %35)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i8* %call22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %for.body.17
  %36 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %37 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc18, align 8
  %38 = bitcast %struct._GimpPlugInProcedure* %37 to i8*
  %call24 = call i8* @gimp_object_get_name(i8* %38)
  %39 = load i32, i32* %nth, align 4
  %conv = sitofp i32 %39 to double
  %40 = load i32, i32* %n_extensions, align 4
  %conv25 = sitofp i32 %40 to double
  %div = fdiv double %conv, %conv25
  call void %36(i8* null, i8* %call24, double %div)
  %call26 = call %struct._GValueArray* @g_value_array_new(i32 0)
  store %struct._GValueArray* %call26, %struct._GValueArray** %args, align 8
  %41 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc18, align 8
  %42 = bitcast %struct._GimpPlugInProcedure* %41 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_procedure_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call27)
  %43 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpProcedure*
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %45 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %46 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @gimp_procedure_execute_async(%struct._GimpProcedure* %43, %struct._Gimp* %44, %struct._GimpContext* %45, %struct._GimpProgress* null, %struct._GValueArray* %46, %struct._GimpObject* null, %struct._GError** %error)
  %47 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @g_value_array_free(%struct._GValueArray* %47)
  %48 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool29 = icmp ne %struct._GError* %48, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.23
  %49 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %50 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %50, i32 0, i32 2
  %51 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %49, %struct._GObject* null, i32 2, i8* %51)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.23
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %52 = load %struct._GList*, %struct._GList** %list13, align 8
  %tobool33 = icmp ne %struct._GList* %52, null
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.32
  %53 = load %struct._GList*, %struct._GList** %list13, align 8
  %next34 = getelementptr inbounds %struct._GList, %struct._GList* %53, i32 0, i32 1
  %54 = load %struct._GList*, %struct._GList** %next34, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %54, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list13, align 8
  %55 = load i32, i32* %nth, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %nth, align 4
  br label %for.cond.15

for.end.35:                                       ; preds = %for.cond.15
  %56 = load %struct._GList*, %struct._GList** %extensions, align 8
  call void @g_list_free(%struct._GList* %56)
  %57 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void %57(i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), double 1.000000e+00)
  br label %if.end.36

if.end.36:                                        ; preds = %for.end.35, %for.end
  ret void
}

declare i8* @g_getenv(i8*) #3

declare i8* @gimp_interpreter_db_get_extensions(%struct._GimpInterpreterDB*) #3

declare noalias i8* @g_strconcat(i8*, ...) #3

declare i32 @g_setenv(i8*, i8*, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare noalias i8* @g_strdup(i8*) #3

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #3

declare void @gimp_datafiles_read_directories(i8*, i32, void (%struct._GimpDatafileData*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_manager_add_from_file(%struct._GimpDatafileData* %file_data, i8* %data) #0 {
entry:
  %file_data.addr = alloca %struct._GimpDatafileData*, align 8
  %data.addr = alloca i8*, align 8
  %manager = alloca %struct._GimpPlugInManager*, align 8
  %plug_in_def = alloca %struct._GimpPlugInDef*, align 8
  %list = alloca %struct._GSList*, align 8
  %plug_in_name = alloca i8*, align 8
  store %struct._GimpDatafileData* %file_data, %struct._GimpDatafileData** %file_data.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpPlugInManager*
  store %struct._GimpPlugInManager* %1, %struct._GimpPlugInManager** %manager, align 8
  %2 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %basename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %2, i32 0, i32 2
  %3 = load i8*, i8** %basename, align 8
  %call = call i32 @gimp_plug_in_manager_ignore_plugin_basename(i8* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %plug_in_defs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %4, i32 0, i32 2
  %5 = load %struct._GSList*, %struct._GSList** %plug_in_defs, align 8
  store %struct._GSList* %5, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool1 = icmp ne %struct._GSList* %6, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data2 = getelementptr inbounds %struct._GSList, %struct._GSList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data2, align 8
  %9 = bitcast i8* %8 to %struct._GimpPlugInDef*
  store %struct._GimpPlugInDef* %9, %struct._GimpPlugInDef** %plug_in_def, align 8
  %10 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %10, i32 0, i32 1
  %11 = load i8*, i8** %prog, align 8
  %call3 = call noalias i8* @g_path_get_basename(i8* %11)
  store i8* %call3, i8** %plug_in_name, align 8
  %12 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %basename4 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %12, i32 0, i32 2
  %13 = load i8*, i8** %basename4, align 8
  %14 = load i8*, i8** %plug_in_name, align 8
  %call5 = call i32 @g_ascii_strcasecmp(i8* %13, i8* %14)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %for.body
  %15 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %15, i32 0, i32 0
  %16 = load i8*, i8** %filename, align 8
  %call7 = call i8* @gimp_filename_to_utf8(i8* %16)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), i8* %call7)
  %17 = load i8*, i8** %plug_in_name, align 8
  call void @g_free(i8* %17)
  br label %return

if.end.8:                                         ; preds = %for.body
  %18 = load i8*, i8** %plug_in_name, align 8
  call void @g_free(i8* %18)
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %19 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 1
  %20 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %20, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename9 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %21, i32 0, i32 0
  %22 = load i8*, i8** %filename9, align 8
  %call10 = call %struct._GimpPlugInDef* @gimp_plug_in_def_new(i8* %22)
  store %struct._GimpPlugInDef* %call10, %struct._GimpPlugInDef** %plug_in_def, align 8
  %23 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %24 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %mtime = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %24, i32 0, i32 4
  %25 = load i64, i64* %mtime, align 8
  call void @gimp_plug_in_def_set_mtime(%struct._GimpPlugInDef* %23, i64 %25)
  %26 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  call void @gimp_plug_in_def_set_needs_query(%struct._GimpPlugInDef* %26, i32 1)
  %27 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %plug_in_defs11 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %27, i32 0, i32 2
  %28 = load %struct._GSList*, %struct._GSList** %plug_in_defs11, align 8
  %29 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %30 = bitcast %struct._GimpPlugInDef* %29 to i8*
  %call12 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %28, i8* %30)
  %31 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %plug_in_defs13 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %31, i32 0, i32 2
  store %struct._GSList* %call12, %struct._GSList** %plug_in_defs13, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_plug_in_manager_ignore_plugin_basename(i8* %plugin_basename) #0 {
entry:
  %plugin_basename.addr = alloca i8*, align 8
  %ignore_basenames_string = alloca i8*, align 8
  %ignore_basenames = alloca %struct._GList*, align 8
  %iter = alloca %struct._GList*, align 8
  %ignore = alloca i32, align 4
  %ignore_basename = alloca i8*, align 8
  store i8* %plugin_basename, i8** %plugin_basename.addr, align 8
  store i32 0, i32* %ignore, align 4
  %call = call i8* @g_getenv(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0))
  store i8* %call, i8** %ignore_basenames_string, align 8
  %0 = load i8*, i8** %ignore_basenames_string, align 8
  %call1 = call %struct._GList* @gimp_path_parse(i8* %0, i32 256, i32 0, %struct._GList** null)
  store %struct._GList* %call1, %struct._GList** %ignore_basenames, align 8
  %1 = load %struct._GList*, %struct._GList** %ignore_basenames, align 8
  store %struct._GList* %1, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  store i8* %4, i8** %ignore_basename, align 8
  %5 = load i8*, i8** %ignore_basename, align 8
  %6 = load i8*, i8** %plugin_basename.addr, align 8
  %call2 = call i32 @g_ascii_strcasecmp(i8* %5, i8* %6)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %ignore, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool3 = icmp ne %struct._GList* %7, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %8 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %9, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load %struct._GList*, %struct._GList** %ignore_basenames, align 8
  call void @gimp_path_free(%struct._GList* %10)
  %11 = load i32, i32* %ignore, align 4
  ret i32 %11
}

declare noalias i8* @g_path_get_basename(i8*) #3

declare i32 @g_ascii_strcasecmp(i8*, i8*) #3

declare void @g_printerr(i8*, ...) #3

declare %struct._GimpPlugInDef* @gimp_plug_in_def_new(i8*) #3

declare void @gimp_plug_in_def_set_mtime(%struct._GimpPlugInDef*, i64) #3

declare void @gimp_plug_in_def_set_needs_query(%struct._GimpPlugInDef*, i32) #3

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #3

declare %struct._GList* @gimp_path_parse(i8*, i32, i32, %struct._GList**) #3

declare void @gimp_path_free(%struct._GList*) #3

declare i32 @g_path_is_absolute(i8*) #3

declare noalias i8* @g_build_filename(i8*, ...) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #1

declare noalias i8* @gimp_personal_rc_file(i8*) #3

declare %struct._GSList* @plug_in_rc_parse(%struct._Gimp*, i8*, %struct._GError**) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_manager_add_from_rc(%struct._GimpPlugInManager* %manager, %struct._GimpPlugInDef* %plug_in_def) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %plug_in_def.addr = alloca %struct._GimpPlugInDef*, align 8
  %list = alloca %struct._GSList*, align 8
  %basename1 = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %ondisk_plug_in_def = alloca %struct._GimpPlugInDef*, align 8
  %basename2 = alloca i8*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_plug_in_manager_add_from_rc, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %cmp12 = icmp ne %struct._GimpPlugInDef* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_plug_in_manager_add_from_rc, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %14, i32 0, i32 1
  %15 = load i8*, i8** %prog, align 8
  %cmp18 = icmp ne i8* %15, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_plug_in_manager_add_from_rc, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %16 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %prog23 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %16, i32 0, i32 1
  %17 = load i8*, i8** %prog23, align 8
  %call24 = call i32 @g_path_is_absolute(i8* %17)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %do.end.22
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i32 0, i32 0))
  %18 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %19 = bitcast %struct._GimpPlugInDef* %18 to i8*
  call void @g_object_unref(i8* %19)
  br label %return

if.end.27:                                        ; preds = %do.end.22
  %20 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %prog28 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %20, i32 0, i32 1
  %21 = load i8*, i8** %prog28, align 8
  %call29 = call noalias i8* @g_path_get_basename(i8* %21)
  store i8* %call29, i8** %basename1, align 8
  %22 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %22, i32 0, i32 2
  %23 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  store %struct._GSList* %23, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %24 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool30 = icmp ne %struct._GSList* %24, null
  br i1 %tobool30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 0
  %26 = load i8*, i8** %data, align 8
  %27 = bitcast i8* %26 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %27, %struct._GimpPlugInProcedure** %proc, align 8
  %28 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %extensions = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %28, i32 0, i32 15
  %29 = load i8*, i8** %extensions, align 8
  %tobool32 = icmp ne i8* %29, null
  br i1 %tobool32, label %if.end.51, label %land.lhs.true.33

land.lhs.true.33:                                 ; preds = %for.body
  %30 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prefixes = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %30, i32 0, i32 16
  %31 = load i8*, i8** %prefixes, align 8
  %tobool34 = icmp ne i8* %31, null
  br i1 %tobool34, label %if.end.51, label %land.lhs.true.35

land.lhs.true.35:                                 ; preds = %land.lhs.true.33
  %32 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %magics = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %32, i32 0, i32 17
  %33 = load i8*, i8** %magics, align 8
  %tobool36 = icmp ne i8* %33, null
  br i1 %tobool36, label %if.end.51, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %land.lhs.true.35
  %34 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %34, i32 0, i32 5
  %35 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  %tobool38 = icmp ne %struct._GList* %35, null
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.51

land.lhs.true.39:                                 ; preds = %land.lhs.true.37
  %36 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_paths40 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %36, i32 0, i32 5
  %37 = load %struct._GList*, %struct._GList** %menu_paths40, align 8
  %data41 = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 0
  %38 = load i8*, i8** %data41, align 8
  %call42 = call i32 @g_str_has_prefix(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0))
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.39
  %39 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_paths44 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %39, i32 0, i32 5
  %40 = load %struct._GList*, %struct._GList** %menu_paths44, align 8
  %data45 = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 0
  %41 = load i8*, i8** %data45, align 8
  %call46 = call i32 @g_str_has_prefix(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0))
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %lor.lhs.false, %land.lhs.true.39
  %call49 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0))
  %42 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %extensions50 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %42, i32 0, i32 15
  store i8* %call49, i8** %extensions50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %lor.lhs.false, %land.lhs.true.37, %land.lhs.true.35, %land.lhs.true.33, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %43 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 1
  %44 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %44, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_defs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %45, i32 0, i32 2
  %46 = load %struct._GSList*, %struct._GSList** %plug_in_defs, align 8
  store %struct._GSList* %46, %struct._GSList** %list, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.75, %for.end
  %47 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool53 = icmp ne %struct._GSList* %47, null
  br i1 %tobool53, label %for.body.54, label %for.end.77

for.body.54:                                      ; preds = %for.cond.52
  %48 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data56 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 0
  %49 = load i8*, i8** %data56, align 8
  %50 = bitcast i8* %49 to %struct._GimpPlugInDef*
  store %struct._GimpPlugInDef* %50, %struct._GimpPlugInDef** %ondisk_plug_in_def, align 8
  %51 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %ondisk_plug_in_def, align 8
  %prog58 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %51, i32 0, i32 1
  %52 = load i8*, i8** %prog58, align 8
  %call59 = call noalias i8* @g_path_get_basename(i8* %52)
  store i8* %call59, i8** %basename2, align 8
  %53 = load i8*, i8** %basename1, align 8
  %54 = load i8*, i8** %basename2, align 8
  %call60 = call i32 @strcmp(i8* %53, i8* %54) #7
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.74, label %if.then.62

if.then.62:                                       ; preds = %for.body.54
  %55 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %prog63 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %55, i32 0, i32 1
  %56 = load i8*, i8** %prog63, align 8
  %57 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %ondisk_plug_in_def, align 8
  %prog64 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %57, i32 0, i32 1
  %58 = load i8*, i8** %prog64, align 8
  %call65 = call i32 @g_ascii_strcasecmp(i8* %56, i8* %58)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.else.72, label %land.lhs.true.67

land.lhs.true.67:                                 ; preds = %if.then.62
  %59 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %mtime = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %59, i32 0, i32 7
  %60 = load i64, i64* %mtime, align 8
  %61 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %ondisk_plug_in_def, align 8
  %mtime68 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %61, i32 0, i32 7
  %62 = load i64, i64* %mtime68, align 8
  %cmp69 = icmp eq i64 %60, %62
  br i1 %cmp69, label %if.then.70, label %if.else.72

if.then.70:                                       ; preds = %land.lhs.true.67
  %63 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %64 = bitcast %struct._GimpPlugInDef* %63 to i8*
  %65 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data71 = getelementptr inbounds %struct._GSList, %struct._GSList* %65, i32 0, i32 0
  store i8* %64, i8** %data71, align 8
  %66 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %ondisk_plug_in_def, align 8
  %67 = bitcast %struct._GimpPlugInDef* %66 to i8*
  call void @g_object_unref(i8* %67)
  br label %if.end.73

if.else.72:                                       ; preds = %land.lhs.true.67, %if.then.62
  %68 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %69 = bitcast %struct._GimpPlugInDef* %68 to i8*
  call void @g_object_unref(i8* %69)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.72, %if.then.70
  %70 = load i8*, i8** %basename2, align 8
  call void @g_free(i8* %70)
  %71 = load i8*, i8** %basename1, align 8
  call void @g_free(i8* %71)
  br label %return

if.end.74:                                        ; preds = %for.body.54
  %72 = load i8*, i8** %basename2, align 8
  call void @g_free(i8* %72)
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %73 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next76 = getelementptr inbounds %struct._GSList, %struct._GSList* %73, i32 0, i32 1
  %74 = load %struct._GSList*, %struct._GSList** %next76, align 8
  store %struct._GSList* %74, %struct._GSList** %list, align 8
  br label %for.cond.52

for.end.77:                                       ; preds = %for.cond.52
  %75 = load i8*, i8** %basename1, align 8
  call void @g_free(i8* %75)
  %76 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %write_pluginrc = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %76, i32 0, i32 3
  store i32 1, i32* %write_pluginrc, align 4
  %77 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %77, i32 0, i32 1
  %78 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %78, i32 0, i32 4
  %79 = load i32, i32* %be_verbose, align 4
  %tobool78 = icmp ne i32 %79, 0
  br i1 %tobool78, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %for.end.77
  %80 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %prog80 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %80, i32 0, i32 1
  %81 = load i8*, i8** %prog80, align 8
  %call81 = call i8* @gimp_filename_to_utf8(i8* %81)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i8* %call81)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %for.end.77
  %82 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %83 = bitcast %struct._GimpPlugInDef* %82 to i8*
  call void @g_object_unref(i8* %83)
  br label %return

return:                                           ; preds = %if.end.82, %if.end.73, %if.then.26, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare void @g_slist_free(%struct._GSList*) #3

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @g_str_has_prefix(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare noalias i8* @g_filename_display_basename(i8*) #3

declare void @gimp_plug_in_manager_call_query(%struct._GimpPlugInManager*, %struct._GimpContext*, %struct._GimpPlugInDef*) #3

declare void @gimp_plug_in_manager_call_init(%struct._GimpPlugInManager*, %struct._GimpContext*, %struct._GimpPlugInDef*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_procedure_get_type() #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

declare %struct._GList* @g_list_reverse(%struct._GList*) #3

declare i32 @g_list_length(%struct._GList*) #3

declare i8* @gimp_object_get_name(i8*) #3

declare %struct._GValueArray* @g_value_array_new(i32) #3

declare void @gimp_procedure_execute_async(%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GimpObject*, %struct._GError**) #3

declare void @g_value_array_free(%struct._GValueArray*) #3

declare void @g_list_free(%struct._GList*) #3

declare i32 @gimp_plug_in_manager_get_locale_domains(%struct._GimpPlugInManager*, i8***, i8***) #3

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #4

declare void @g_strfreev(i8**) #3

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #3

declare %struct._GValueArray* @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) #3

declare void @g_error_free(%struct._GError*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #1

declare i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure*) #3

; Function Attrs: nounwind readonly
declare i32 @g_utf8_collate(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
