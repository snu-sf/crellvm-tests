; ModuleID = './app/plug-in/gimppluginmanager.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPlugInManagerClass = type { %struct._GimpObjectClass, void (%struct._GimpPlugInManager*, %struct._GimpPlugIn*)*, void (%struct._GimpPlugInManager*, %struct._GimpPlugIn*)*, void (%struct._GimpPlugInManager*, i8*, i8*, i8*)*, void (%struct._GimpPlugInManager*)* }
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
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
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
%struct._GimpContext = type opaque
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, %struct._GHashTable*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GimpEnvironTable = type { %struct._GObject, %struct._GHashTable*, %struct._GHashTable*, i8** }
%struct._GimpPlugInDebug = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GimpPlugInDef = type { %struct._GimpObject, i8*, %struct._GSList*, i8*, i8*, i8*, i8*, i64, i32, i32 }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpTemporaryProcedure = type { %struct._GimpPlugInProcedure, %struct._GimpPlugIn* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_plug_in_manager_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpPlugInManager\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_manager_initialize = private unnamed_addr constant [32 x i8] c"gimp_plug_in_manager_initialize\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PLUG_IN_MANAGER (manager)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"status_callback != NULL\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Plug-In Interpreters\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Plug-In Environment\00", align 1
@__func__.gimp_plug_in_manager_exit = private unnamed_addr constant [26 x i8] c"gimp_plug_in_manager_exit\00", align 1
@__func__.gimp_plug_in_manager_add_procedure = private unnamed_addr constant [35 x i8] c"gimp_plug_in_manager_add_procedure\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"GIMP_IS_PLUG_IN_PROCEDURE (procedure)\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"Removing duplicate PDB procedure '%s' registered by '%s'\0A\00", align 1
@__func__.gimp_plug_in_manager_add_temp_proc = private unnamed_addr constant [35 x i8] c"gimp_plug_in_manager_add_temp_proc\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"GIMP_IS_TEMPORARY_PROCEDURE (procedure)\00", align 1
@__func__.gimp_plug_in_manager_remove_temp_proc = private unnamed_addr constant [38 x i8] c"gimp_plug_in_manager_remove_temp_proc\00", align 1
@__func__.gimp_plug_in_manager_add_open_plug_in = private unnamed_addr constant [38 x i8] c"gimp_plug_in_manager_add_open_plug_in\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PLUG_IN (plug_in)\00", align 1
@manager_signals = internal global [4 x i32] zeroinitializer, align 16
@__func__.gimp_plug_in_manager_remove_open_plug_in = private unnamed_addr constant [41 x i8] c"gimp_plug_in_manager_remove_open_plug_in\00", align 1
@__func__.gimp_plug_in_manager_plug_in_push = private unnamed_addr constant [34 x i8] c"gimp_plug_in_manager_plug_in_push\00", align 1
@__func__.gimp_plug_in_manager_plug_in_pop = private unnamed_addr constant [33 x i8] c"gimp_plug_in_manager_plug_in_pop\00", align 1
@__func__.gimp_plug_in_manager_history_changed = private unnamed_addr constant [37 x i8] c"gimp_plug_in_manager_history_changed\00", align 1
@gimp_plug_in_manager_parent_class = internal global i8* null, align 8
@GimpPlugInManager_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"plug-in-opened\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"plug-in-closed\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"menu-branch-added\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"history-changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_plug_in_manager_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_plug_in_manager_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_plug_in_manager_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 192, void (i8*, i8*)* bitcast (void (i8*)* @gimp_plug_in_manager_class_intern_init to void (i8*, i8*)*), i32 184, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPlugInManager*)* @gimp_plug_in_manager_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_plug_in_manager_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_plug_in_manager_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_manager_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_plug_in_manager_parent_class, align 8
  %1 = load i32, i32* @GimpPlugInManager_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPlugInManager_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPlugInManagerClass*
  call void @gimp_plug_in_manager_class_init(%struct._GimpPlugInManagerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_manager_init(%struct._GimpPlugInManager* %manager) #3 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %0, i32 0, i32 1
  store %struct._Gimp* null, %struct._Gimp** %gimp, align 8
  %1 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_defs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %1, i32 0, i32 2
  store %struct._GSList* null, %struct._GSList** %plug_in_defs, align 8
  %2 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %write_pluginrc = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %2, i32 0, i32 3
  store i32 0, i32* %write_pluginrc, align 4
  %3 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %3, i32 0, i32 4
  store %struct._GSList* null, %struct._GSList** %plug_in_procedures, align 8
  %4 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %load_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %4, i32 0, i32 5
  store %struct._GSList* null, %struct._GSList** %load_procs, align 8
  %5 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %save_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %5, i32 0, i32 6
  store %struct._GSList* null, %struct._GSList** %save_procs, align 8
  %6 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %export_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %6, i32 0, i32 7
  store %struct._GSList* null, %struct._GSList** %export_procs, align 8
  %7 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %7, i32 0, i32 11
  store %struct._GimpPlugIn* null, %struct._GimpPlugIn** %current_plug_in, align 8
  %8 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %open_plug_ins = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %8, i32 0, i32 12
  store %struct._GSList* null, %struct._GSList** %open_plug_ins, align 8
  %9 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_stack = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %9, i32 0, i32 13
  store %struct._GSList* null, %struct._GSList** %plug_in_stack, align 8
  %10 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %10, i32 0, i32 14
  store %struct._GSList* null, %struct._GSList** %history, align 8
  %11 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %shm = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %11, i32 0, i32 15
  store %struct._GimpPlugInShm* null, %struct._GimpPlugInShm** %shm, align 8
  %call = call %struct._GimpInterpreterDB* @gimp_interpreter_db_new()
  %12 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %interpreter_db = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %12, i32 0, i32 16
  store %struct._GimpInterpreterDB* %call, %struct._GimpInterpreterDB** %interpreter_db, align 8
  %call1 = call %struct._GimpEnvironTable* @gimp_environ_table_new()
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %environ_table = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 17
  store %struct._GimpEnvironTable* %call1, %struct._GimpEnvironTable** %environ_table, align 8
  %14 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %debug = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %14, i32 0, i32 18
  store %struct._GimpPlugInDebug* null, %struct._GimpPlugInDebug** %debug, align 8
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %data_list = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 19
  store %struct._GList* null, %struct._GList** %data_list, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInManager* @gimp_plug_in_manager_new(%struct._Gimp* %gimp) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %manager = alloca %struct._GimpPlugInManager*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpPlugInManager*
  store %struct._GimpPlugInManager* %0, %struct._GimpPlugInManager** %manager, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %2 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp2 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %2, i32 0, i32 1
  store %struct._Gimp* %1, %struct._Gimp** %gimp2, align 8
  %3 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  ret %struct._GimpPlugInManager* %3
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_initialize(%struct._GimpPlugInManager* %manager, void (i8*, i8*, double)* %status_callback) #3 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  %path = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_manager_initialize, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %cmp12 = icmp ne void (i8*, i8*, double)* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_manager_initialize, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #8
  call void %14(i8* null, i8* %call17, double 8.000000e-01)
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 1
  %17 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpreter_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %17, i32 0, i32 6
  %18 = load i8*, i8** %interpreter_path, align 8
  %call18 = call noalias i8* @gimp_config_path_expand(i8* %18, i32 1, %struct._GError** null)
  store i8* %call18, i8** %path, align 8
  %19 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %interpreter_db = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %19, i32 0, i32 16
  %20 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %interpreter_db, align 8
  %21 = load i8*, i8** %path, align 8
  call void @gimp_interpreter_db_load(%struct._GimpInterpreterDB* %20, i8* %21)
  %22 = load i8*, i8** %path, align 8
  call void @g_free(i8* %22)
  %23 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #8
  call void %23(i8* null, i8* %call19, double 9.000000e-01)
  %24 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp20 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %24, i32 0, i32 1
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp20, align 8
  %config21 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %25, i32 0, i32 1
  %26 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config21, align 8
  %environ_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %26, i32 0, i32 7
  %27 = load i8*, i8** %environ_path, align 8
  %call22 = call noalias i8* @gimp_config_path_expand(i8* %27, i32 1, %struct._GError** null)
  store i8* %call22, i8** %path, align 8
  %28 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %environ_table = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %28, i32 0, i32 17
  %29 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table, align 8
  %30 = load i8*, i8** %path, align 8
  call void @gimp_environ_table_load(%struct._GimpEnvironTable* %29, i8* %30)
  %31 = load i8*, i8** %path, align 8
  call void @g_free(i8* %31)
  %32 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp23 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %32, i32 0, i32 1
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp23, align 8
  %use_shm = getelementptr inbounds %struct._Gimp, %struct._Gimp* %33, i32 0, i32 9
  %34 = load i32, i32* %use_shm, align 4
  %tobool24 = icmp ne i32 %34, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.end.16
  %call26 = call %struct._GimpPlugInShm* @gimp_plug_in_shm_new()
  %35 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %shm = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %35, i32 0, i32 15
  store %struct._GimpPlugInShm* %call26, %struct._GimpPlugInShm** %shm, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %do.end.16
  %call28 = call %struct._GimpPlugInDebug* @gimp_plug_in_debug_new()
  %36 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %debug = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %36, i32 0, i32 18
  store %struct._GimpPlugInDebug* %call28, %struct._GimpPlugInDebug** %debug, align 8
  br label %return

return:                                           ; preds = %if.end.27, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #1

declare void @gimp_interpreter_db_load(%struct._GimpInterpreterDB*, i8*) #1

declare void @g_free(i8*) #1

declare void @gimp_environ_table_load(%struct._GimpEnvironTable*, i8*) #1

declare %struct._GimpPlugInShm* @gimp_plug_in_shm_new() #1

declare %struct._GimpPlugInDebug* @gimp_plug_in_debug_new() #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_exit(%struct._GimpPlugInManager* %manager) #3 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_plug_in_manager_exit, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %open_plug_ins = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 12
  %14 = load %struct._GSList*, %struct._GSList** %open_plug_ins, align 8
  %tobool11 = icmp ne %struct._GSList* %14, null
  br i1 %tobool11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %open_plug_ins12 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 12
  %16 = load %struct._GSList*, %struct._GSList** %open_plug_ins12, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpPlugIn*
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %18, i32 1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %shm = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %19, i32 0, i32 15
  %20 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm, align 8
  %tobool13 = icmp ne %struct._GimpPlugInShm* %20, null
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %while.end
  %21 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %shm15 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %21, i32 0, i32 15
  %22 = load %struct._GimpPlugInShm*, %struct._GimpPlugInShm** %shm15, align 8
  call void @gimp_plug_in_shm_free(%struct._GimpPlugInShm* %22)
  %23 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %shm16 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %23, i32 0, i32 15
  store %struct._GimpPlugInShm* null, %struct._GimpPlugInShm** %shm16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.14, %while.end
  ret void
}

declare void @gimp_plug_in_close(%struct._GimpPlugIn*, i32) #1

declare void @gimp_plug_in_shm_free(%struct._GimpPlugInShm*) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_add_procedure(%struct._GimpPlugInManager* %manager, %struct._GimpPlugInProcedure* %procedure) #3 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %procedure.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %tmp_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %list2 = alloca %struct._GSList*, align 8
  %plug_in_def = alloca %struct._GimpPlugInDef*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpPlugInProcedure* %procedure, %struct._GimpPlugInProcedure** %procedure.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_manager_add_procedure, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %14 = bitcast %struct._GimpPlugInProcedure* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_plug_in_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_manager_add_procedure, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %26, i32 0, i32 4
  %27 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  store %struct._GSList* %27, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.67, %do.end.38
  %28 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool39 = icmp ne %struct._GSList* %28, null
  br i1 %tobool39, label %for.body, label %for.end.69

for.body:                                         ; preds = %for.cond
  %29 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8
  %31 = bitcast i8* %30 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %31, %struct._GimpPlugInProcedure** %tmp_proc, align 8
  %32 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %33 = bitcast %struct._GimpPlugInProcedure* %32 to i8*
  %call41 = call i8* @gimp_object_get_name(i8* %33)
  %34 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %tmp_proc, align 8
  %35 = bitcast %struct._GimpPlugInProcedure* %34 to i8*
  %call42 = call i8* @gimp_object_get_name(i8* %35)
  %call43 = call i32 @strcmp(i8* %call41, i8* %call42) #7
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then.45, label %if.end.66

if.then.45:                                       ; preds = %for.body
  %36 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %37 = bitcast %struct._GimpPlugInProcedure* %36 to i8*
  %call47 = call i8* @g_object_ref(i8* %37)
  %38 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data48 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 0
  store i8* %call47, i8** %data48, align 8
  %39 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %tmp_proc, align 8
  %40 = bitcast %struct._GimpPlugInProcedure* %39 to i8*
  %call49 = call i8* @gimp_object_get_name(i8* %40)
  %41 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %tmp_proc, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %41, i32 0, i32 1
  %42 = load i8*, i8** %prog, align 8
  %call50 = call i8* @gimp_filename_to_utf8(i8* %42)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i32 0, i32 0), i8* %call49, i8* %call50)
  %43 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_defs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %43, i32 0, i32 2
  %44 = load %struct._GSList*, %struct._GSList** %plug_in_defs, align 8
  store %struct._GSList* %44, %struct._GSList** %list2, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc, %if.then.45
  %45 = load %struct._GSList*, %struct._GSList** %list2, align 8
  %tobool52 = icmp ne %struct._GSList* %45, null
  br i1 %tobool52, label %for.body.53, label %for.end

for.body.53:                                      ; preds = %for.cond.51
  %46 = load %struct._GSList*, %struct._GSList** %list2, align 8
  %data55 = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 0
  %47 = load i8*, i8** %data55, align 8
  %48 = bitcast i8* %47 to %struct._GimpPlugInDef*
  store %struct._GimpPlugInDef* %48, %struct._GimpPlugInDef** %plug_in_def, align 8
  %49 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %49, i32 0, i32 2
  %50 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  %51 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %tmp_proc, align 8
  %52 = bitcast %struct._GimpPlugInProcedure* %51 to i8*
  %call56 = call %struct._GSList* @g_slist_find(%struct._GSList* %50, i8* %52)
  %tobool57 = icmp ne %struct._GSList* %call56, null
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.body.53
  %53 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %54 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %tmp_proc, align 8
  call void @gimp_plug_in_def_remove_procedure(%struct._GimpPlugInDef* %53, %struct._GimpPlugInProcedure* %54)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %for.body.53
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %55 = load %struct._GSList*, %struct._GSList** %list2, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %55, i32 0, i32 1
  %56 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %56, %struct._GSList** %list2, align 8
  br label %for.cond.51

for.end:                                          ; preds = %for.cond.51
  %57 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %load_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %57, i32 0, i32 5
  %58 = load %struct._GSList*, %struct._GSList** %load_procs, align 8
  %59 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %tmp_proc, align 8
  %60 = bitcast %struct._GimpPlugInProcedure* %59 to i8*
  %call60 = call %struct._GSList* @g_slist_remove(%struct._GSList* %58, i8* %60)
  %61 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %load_procs61 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %61, i32 0, i32 5
  store %struct._GSList* %call60, %struct._GSList** %load_procs61, align 8
  %62 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %save_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %62, i32 0, i32 6
  %63 = load %struct._GSList*, %struct._GSList** %save_procs, align 8
  %64 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %tmp_proc, align 8
  %65 = bitcast %struct._GimpPlugInProcedure* %64 to i8*
  %call62 = call %struct._GSList* @g_slist_remove(%struct._GSList* %63, i8* %65)
  %66 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %save_procs63 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %66, i32 0, i32 6
  store %struct._GSList* %call62, %struct._GSList** %save_procs63, align 8
  %67 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %export_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %67, i32 0, i32 7
  %68 = load %struct._GSList*, %struct._GSList** %export_procs, align 8
  %69 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %tmp_proc, align 8
  %70 = bitcast %struct._GimpPlugInProcedure* %69 to i8*
  %call64 = call %struct._GSList* @g_slist_remove(%struct._GSList* %68, i8* %70)
  %71 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %export_procs65 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %71, i32 0, i32 7
  store %struct._GSList* %call64, %struct._GSList** %export_procs65, align 8
  %72 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %73 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %tmp_proc, align 8
  call void @gimp_plug_in_manager_history_remove(%struct._GimpPlugInManager* %72, %struct._GimpPlugInProcedure* %73)
  %74 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %tmp_proc, align 8
  %75 = bitcast %struct._GimpPlugInProcedure* %74 to i8*
  call void @g_object_unref(i8* %75)
  br label %return

if.end.66:                                        ; preds = %for.body
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %76 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next68 = getelementptr inbounds %struct._GSList, %struct._GSList* %76, i32 0, i32 1
  %77 = load %struct._GSList*, %struct._GSList** %next68, align 8
  store %struct._GSList* %77, %struct._GSList** %list, align 8
  br label %for.cond

for.end.69:                                       ; preds = %for.cond
  %78 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures70 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %78, i32 0, i32 4
  %79 = load %struct._GSList*, %struct._GSList** %plug_in_procedures70, align 8
  %80 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %81 = bitcast %struct._GimpPlugInProcedure* %80 to i8*
  %call71 = call i8* @g_object_ref(i8* %81)
  %call72 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %79, i8* %call71)
  %82 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures73 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %82, i32 0, i32 4
  store %struct._GSList* %call72, %struct._GSList** %plug_in_procedures73, align 8
  br label %return

return:                                           ; preds = %for.end.69, %for.end, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @gimp_object_get_name(i8*) #1

declare i8* @g_object_ref(i8*) #1

declare void @g_printerr(i8*, ...) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #1

declare void @gimp_plug_in_def_remove_procedure(%struct._GimpPlugInDef*, %struct._GimpPlugInProcedure*) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

declare void @gimp_plug_in_manager_history_remove(%struct._GimpPlugInManager*, %struct._GimpPlugInProcedure*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_add_temp_proc(%struct._GimpPlugInManager* %manager, %struct._GimpTemporaryProcedure* %procedure) #3 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %procedure.addr = alloca %struct._GimpTemporaryProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpTemporaryProcedure* %procedure, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_manager_add_temp_proc, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %14 = bitcast %struct._GimpTemporaryProcedure* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_temporary_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_manager_add_temp_proc, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %26, i32 0, i32 1
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 44
  %28 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %29 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %30 = bitcast %struct._GimpTemporaryProcedure* %29 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_procedure_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call39)
  %31 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpProcedure*
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %28, %struct._GimpProcedure* %31)
  %32 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %32, i32 0, i32 4
  %33 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  %34 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %35 = bitcast %struct._GimpTemporaryProcedure* %34 to i8*
  %call41 = call i8* @g_object_ref(i8* %35)
  %call42 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %33, i8* %call41)
  %36 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures43 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %36, i32 0, i32 4
  store %struct._GSList* %call42, %struct._GSList** %plug_in_procedures43, align 8
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_temporary_procedure_get_type() #2

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_procedure_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_remove_temp_proc(%struct._GimpPlugInManager* %manager, %struct._GimpTemporaryProcedure* %procedure) #3 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %procedure.addr = alloca %struct._GimpTemporaryProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpTemporaryProcedure* %procedure, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_plug_in_manager_remove_temp_proc, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %14 = bitcast %struct._GimpTemporaryProcedure* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_temporary_procedure_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_plug_in_manager_remove_temp_proc, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %26, i32 0, i32 4
  %27 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  %28 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %29 = bitcast %struct._GimpTemporaryProcedure* %28 to i8*
  %call39 = call %struct._GSList* @g_slist_remove(%struct._GSList* %27, i8* %29)
  %30 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures40 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %30, i32 0, i32 4
  store %struct._GSList* %call39, %struct._GSList** %plug_in_procedures40, align 8
  %31 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %32 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %33 = bitcast %struct._GimpTemporaryProcedure* %32 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_plug_in_procedure_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call41)
  %34 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpPlugInProcedure*
  call void @gimp_plug_in_manager_history_remove(%struct._GimpPlugInManager* %31, %struct._GimpPlugInProcedure* %34)
  %35 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %35, i32 0, i32 1
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %36, i32 0, i32 44
  %37 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %38 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %39 = bitcast %struct._GimpTemporaryProcedure* %38 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_procedure_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call43)
  %40 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpProcedure*
  call void @gimp_pdb_unregister_procedure(%struct._GimpPDB* %37, %struct._GimpProcedure* %40)
  %41 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %procedure.addr, align 8
  %42 = bitcast %struct._GimpTemporaryProcedure* %41 to i8*
  call void @g_object_unref(i8* %42)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_pdb_unregister_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_add_open_plug_in(%struct._GimpPlugInManager* %manager, %struct._GimpPlugIn* %plug_in) #3 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_plug_in_manager_add_open_plug_in, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %14 = bitcast %struct._GimpPlugIn* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_plug_in_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_plug_in_manager_add_open_plug_in, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %open_plug_ins = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %26, i32 0, i32 12
  %27 = load %struct._GSList*, %struct._GSList** %open_plug_ins, align 8
  %28 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %29 = bitcast %struct._GimpPlugIn* %28 to i8*
  %call39 = call i8* @g_object_ref(i8* %29)
  %call40 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %27, i8* %call39)
  %30 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %open_plug_ins41 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %30, i32 0, i32 12
  store %struct._GSList* %call40, %struct._GSList** %open_plug_ins41, align 8
  %31 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %32 = bitcast %struct._GimpPlugInManager* %31 to i8*
  %33 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @manager_signals, i32 0, i64 0), align 4
  %34 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %32, i32 %33, i32 0, %struct._GimpPlugIn* %34)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_get_type() #2

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_remove_open_plug_in(%struct._GimpPlugInManager* %manager, %struct._GimpPlugIn* %plug_in) #3 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_plug_in_manager_remove_open_plug_in, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %14 = bitcast %struct._GimpPlugIn* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_plug_in_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_plug_in_manager_remove_open_plug_in, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %open_plug_ins = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %26, i32 0, i32 12
  %27 = load %struct._GSList*, %struct._GSList** %open_plug_ins, align 8
  %28 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %29 = bitcast %struct._GimpPlugIn* %28 to i8*
  %call39 = call %struct._GSList* @g_slist_remove(%struct._GSList* %27, i8* %29)
  %30 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %open_plug_ins40 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %30, i32 0, i32 12
  store %struct._GSList* %call39, %struct._GSList** %open_plug_ins40, align 8
  %31 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %32 = bitcast %struct._GimpPlugInManager* %31 to i8*
  %33 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @manager_signals, i32 0, i64 1), align 4
  %34 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %32, i32 %33, i32 0, %struct._GimpPlugIn* %34)
  %35 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %36 = bitcast %struct._GimpPlugIn* %35 to i8*
  call void @g_object_unref(i8* %36)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_plug_in_push(%struct._GimpPlugInManager* %manager, %struct._GimpPlugIn* %plug_in) #3 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_plug_in_manager_plug_in_push, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %14 = bitcast %struct._GimpPlugIn* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_plug_in_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_plug_in_manager_plug_in_push, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %27 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %27, i32 0, i32 11
  store %struct._GimpPlugIn* %26, %struct._GimpPlugIn** %current_plug_in, align 8
  %28 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_stack = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %28, i32 0, i32 13
  %29 = load %struct._GSList*, %struct._GSList** %plug_in_stack, align 8
  %30 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in39 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %30, i32 0, i32 11
  %31 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in39, align 8
  %32 = bitcast %struct._GimpPlugIn* %31 to i8*
  %call40 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %29, i8* %32)
  %33 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_stack41 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %33, i32 0, i32 13
  store %struct._GSList* %call40, %struct._GSList** %plug_in_stack41, align 8
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_plug_in_pop(%struct._GimpPlugInManager* %manager) #3 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_plug_in_manager_plug_in_pop, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.25

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 11
  %14 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  %tobool11 = icmp ne %struct._GimpPlugIn* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_stack = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 13
  %16 = load %struct._GSList*, %struct._GSList** %plug_in_stack, align 8
  %17 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_stack13 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %17, i32 0, i32 13
  %18 = load %struct._GSList*, %struct._GSList** %plug_in_stack13, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %call14 = call %struct._GSList* @g_slist_remove(%struct._GSList* %16, i8* %19)
  %20 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_stack15 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %20, i32 0, i32 13
  store %struct._GSList* %call14, %struct._GSList** %plug_in_stack15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %do.end
  %21 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_stack17 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %21, i32 0, i32 13
  %22 = load %struct._GSList*, %struct._GSList** %plug_in_stack17, align 8
  %tobool18 = icmp ne %struct._GSList* %22, null
  br i1 %tobool18, label %if.then.19, label %if.else.23

if.then.19:                                       ; preds = %if.end.16
  %23 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_stack20 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %23, i32 0, i32 13
  %24 = load %struct._GSList*, %struct._GSList** %plug_in_stack20, align 8
  %data21 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0
  %25 = load i8*, i8** %data21, align 8
  %26 = bitcast i8* %25 to %struct._GimpPlugIn*
  %27 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in22 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %27, i32 0, i32 11
  store %struct._GimpPlugIn* %26, %struct._GimpPlugIn** %current_plug_in22, align 8
  br label %if.end.25

if.else.23:                                       ; preds = %if.end.16
  %28 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in24 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %28, i32 0, i32 11
  store %struct._GimpPlugIn* null, %struct._GimpPlugIn** %current_plug_in24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.9, %if.else.23, %if.then.19
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_history_changed(%struct._GimpPlugInManager* %manager) #3 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_manager_history_changed, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %14 = bitcast %struct._GimpPlugInManager* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @manager_signals, i32 0, i64 3), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_manager_class_init(%struct._GimpPlugInManagerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPlugInManagerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  store %struct._GimpPlugInManagerClass* %klass, %struct._GimpPlugInManagerClass** %klass.addr, align 8
  %0 = load %struct._GimpPlugInManagerClass*, %struct._GimpPlugInManagerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPlugInManagerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPlugInManagerClass*, %struct._GimpPlugInManagerClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPlugInManagerClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpPlugInManagerClass*, %struct._GimpPlugInManagerClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpPlugInManagerClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i64 @gimp_plug_in_get_type() #6
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i64 %8, i32 2, i32 160, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call3)
  store i32 %call4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @manager_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpPlugInManagerClass*, %struct._GimpPlugInManagerClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpPlugInManagerClass* %9 to %struct._GTypeClass*
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type5, align 8
  %call6 = call i64 @gimp_plug_in_get_type() #6
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i64 %11, i32 2, i32 168, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call6)
  store i32 %call7, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @manager_signals, i32 0, i64 1), align 4
  %12 = load %struct._GimpPlugInManagerClass*, %struct._GimpPlugInManagerClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpPlugInManagerClass* %12 to %struct._GTypeClass*
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type8, align 8
  %call9 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i64 %14, i32 2, i32 176, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__STRING_STRING_STRING, i64 4, i32 1, i64 64, i64 64, i64 64)
  store i32 %call9, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @manager_signals, i32 0, i64 2), align 4
  %15 = load %struct._GimpPlugInManagerClass*, %struct._GimpPlugInManagerClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpPlugInManagerClass* %15 to %struct._GTypeClass*
  %g_type10 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type10, align 8
  %call11 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i64 %17, i32 2, i32 184, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call11, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @manager_signals, i32 0, i64 3), align 4
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_plug_in_manager_dispose, void (%struct._GObject*)** %dispose, align 8
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %19, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_plug_in_manager_finalize, void (%struct._GObject*)** %finalize, align 8
  %20 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %20, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_plug_in_manager_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @gimp_marshal_VOID__STRING_STRING_STRING(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_manager_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %manager = alloca %struct._GimpPlugInManager*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_manager_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugInManager*
  store %struct._GimpPlugInManager* %2, %struct._GimpPlugInManager** %manager, align 8
  %3 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  call void @gimp_plug_in_manager_history_clear(%struct._GimpPlugInManager* %3)
  %4 = load i8*, i8** @gimp_plug_in_manager_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_manager_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %manager = alloca %struct._GimpPlugInManager*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_manager_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugInManager*
  store %struct._GimpPlugInManager* %2, %struct._GimpPlugInManager** %manager, align 8
  %3 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %load_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %3, i32 0, i32 5
  %4 = load %struct._GSList*, %struct._GSList** %load_procs, align 8
  %tobool = icmp ne %struct._GSList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %load_procs2 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %5, i32 0, i32 5
  %6 = load %struct._GSList*, %struct._GSList** %load_procs2, align 8
  call void @g_slist_free(%struct._GSList* %6)
  %7 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %load_procs3 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %7, i32 0, i32 5
  store %struct._GSList* null, %struct._GSList** %load_procs3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %save_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %8, i32 0, i32 6
  %9 = load %struct._GSList*, %struct._GSList** %save_procs, align 8
  %tobool4 = icmp ne %struct._GSList* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %save_procs6 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %10, i32 0, i32 6
  %11 = load %struct._GSList*, %struct._GSList** %save_procs6, align 8
  call void @g_slist_free(%struct._GSList* %11)
  %12 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %save_procs7 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %12, i32 0, i32 6
  store %struct._GSList* null, %struct._GSList** %save_procs7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %export_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 7
  %14 = load %struct._GSList*, %struct._GSList** %export_procs, align 8
  %tobool9 = icmp ne %struct._GSList* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %export_procs11 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 7
  %16 = load %struct._GSList*, %struct._GSList** %export_procs11, align 8
  call void @g_slist_free(%struct._GSList* %16)
  %17 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %export_procs12 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %17, i32 0, i32 7
  store %struct._GSList* null, %struct._GSList** %export_procs12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %18 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %18, i32 0, i32 4
  %19 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  %tobool14 = icmp ne %struct._GSList* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %20 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %plug_in_procedures16 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %20, i32 0, i32 4
  %21 = load %struct._GSList*, %struct._GSList** %plug_in_procedures16, align 8
  call void @g_slist_free_full(%struct._GSList* %21, void (i8*)* @g_object_unref)
  %22 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %plug_in_procedures17 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %22, i32 0, i32 4
  store %struct._GSList* null, %struct._GSList** %plug_in_procedures17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %23 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %plug_in_defs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %23, i32 0, i32 2
  %24 = load %struct._GSList*, %struct._GSList** %plug_in_defs, align 8
  %tobool19 = icmp ne %struct._GSList* %24, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %25 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %plug_in_defs21 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %25, i32 0, i32 2
  %26 = load %struct._GSList*, %struct._GSList** %plug_in_defs21, align 8
  call void @g_slist_free_full(%struct._GSList* %26, void (i8*)* @g_object_unref)
  %27 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %plug_in_defs22 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %27, i32 0, i32 2
  store %struct._GSList* null, %struct._GSList** %plug_in_defs22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %28 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %environ_table = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %28, i32 0, i32 17
  %29 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table, align 8
  %tobool24 = icmp ne %struct._GimpEnvironTable* %29, null
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.23
  %30 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %environ_table26 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %30, i32 0, i32 17
  %31 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table26, align 8
  %32 = bitcast %struct._GimpEnvironTable* %31 to i8*
  call void @g_object_unref(i8* %32)
  %33 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %environ_table27 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %33, i32 0, i32 17
  store %struct._GimpEnvironTable* null, %struct._GimpEnvironTable** %environ_table27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end.23
  %34 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %interpreter_db = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %34, i32 0, i32 16
  %35 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %interpreter_db, align 8
  %tobool29 = icmp ne %struct._GimpInterpreterDB* %35, null
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.28
  %36 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %interpreter_db31 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %36, i32 0, i32 16
  %37 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %interpreter_db31, align 8
  %38 = bitcast %struct._GimpInterpreterDB* %37 to i8*
  call void @g_object_unref(i8* %38)
  %39 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %interpreter_db32 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %39, i32 0, i32 16
  store %struct._GimpInterpreterDB* null, %struct._GimpInterpreterDB** %interpreter_db32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.28
  %40 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %debug = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %40, i32 0, i32 18
  %41 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug, align 8
  %tobool34 = icmp ne %struct._GimpPlugInDebug* %41, null
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.33
  %42 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %debug36 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %42, i32 0, i32 18
  %43 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug36, align 8
  call void @gimp_plug_in_debug_free(%struct._GimpPlugInDebug* %43)
  %44 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %debug37 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %44, i32 0, i32 18
  store %struct._GimpPlugInDebug* null, %struct._GimpPlugInDebug** %debug37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.33
  %45 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  call void @gimp_plug_in_manager_menu_branch_exit(%struct._GimpPlugInManager* %45)
  %46 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  call void @gimp_plug_in_manager_locale_domain_exit(%struct._GimpPlugInManager* %46)
  %47 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  call void @gimp_plug_in_manager_help_domain_exit(%struct._GimpPlugInManager* %47)
  %48 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  call void @gimp_plug_in_manager_data_free(%struct._GimpPlugInManager* %48)
  %49 = load i8*, i8** @gimp_plug_in_manager_parent_class, align 8
  %50 = bitcast i8* %49 to %struct._GTypeClass*
  %call39 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %50, i64 80)
  %51 = bitcast %struct._GTypeClass* %call39 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %51, i32 0, i32 6
  %52 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %53 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %52(%struct._GObject* %53)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_plug_in_manager_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %manager = alloca %struct._GimpPlugInManager*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_manager_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugInManager*
  store %struct._GimpPlugInManager* %2, %struct._GimpPlugInManager** %manager, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %plug_in_defs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %3, i32 0, i32 2
  %4 = load %struct._GSList*, %struct._GSList** %plug_in_defs, align 8
  %5 = load i64*, i64** %gui_size.addr, align 8
  %call2 = call i64 @gimp_g_slist_get_memsize_foreach(%struct._GSList* %4, i64 (i8*, i64*)* bitcast (i64 (%struct._GimpObject*, i64*)* @gimp_object_get_memsize to i64 (i8*, i64*)*), i64* %5)
  %6 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %6, %call2
  store i64 %add, i64* %memsize, align 8
  %7 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %7, i32 0, i32 4
  %8 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  %call3 = call i64 @gimp_g_slist_get_memsize(%struct._GSList* %8, i64 0)
  %9 = load i64, i64* %memsize, align 8
  %add4 = add nsw i64 %9, %call3
  store i64 %add4, i64* %memsize, align 8
  %10 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %load_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %10, i32 0, i32 5
  %11 = load %struct._GSList*, %struct._GSList** %load_procs, align 8
  %call5 = call i64 @gimp_g_slist_get_memsize(%struct._GSList* %11, i64 0)
  %12 = load i64, i64* %memsize, align 8
  %add6 = add nsw i64 %12, %call5
  store i64 %add6, i64* %memsize, align 8
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %save_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 6
  %14 = load %struct._GSList*, %struct._GSList** %save_procs, align 8
  %call7 = call i64 @gimp_g_slist_get_memsize(%struct._GSList* %14, i64 0)
  %15 = load i64, i64* %memsize, align 8
  %add8 = add nsw i64 %15, %call7
  store i64 %add8, i64* %memsize, align 8
  %16 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %export_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %16, i32 0, i32 7
  %17 = load %struct._GSList*, %struct._GSList** %export_procs, align 8
  %call9 = call i64 @gimp_g_slist_get_memsize(%struct._GSList* %17, i64 0)
  %18 = load i64, i64* %memsize, align 8
  %add10 = add nsw i64 %18, %call9
  store i64 %add10, i64* %memsize, align 8
  %19 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %menu_branches = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %19, i32 0, i32 8
  %20 = load %struct._GSList*, %struct._GSList** %menu_branches, align 8
  %call11 = call i64 @gimp_g_slist_get_memsize(%struct._GSList* %20, i64 0)
  %21 = load i64, i64* %memsize, align 8
  %add12 = add nsw i64 %21, %call11
  store i64 %add12, i64* %memsize, align 8
  %22 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %locale_domains = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %22, i32 0, i32 9
  %23 = load %struct._GSList*, %struct._GSList** %locale_domains, align 8
  %call13 = call i64 @gimp_g_slist_get_memsize(%struct._GSList* %23, i64 0)
  %24 = load i64, i64* %memsize, align 8
  %add14 = add nsw i64 %24, %call13
  store i64 %add14, i64* %memsize, align 8
  %25 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %help_domains = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %25, i32 0, i32 10
  %26 = load %struct._GSList*, %struct._GSList** %help_domains, align 8
  %call15 = call i64 @gimp_g_slist_get_memsize(%struct._GSList* %26, i64 0)
  %27 = load i64, i64* %memsize, align 8
  %add16 = add nsw i64 %27, %call15
  store i64 %add16, i64* %memsize, align 8
  %28 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %open_plug_ins = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %28, i32 0, i32 12
  %29 = load %struct._GSList*, %struct._GSList** %open_plug_ins, align 8
  %30 = load i64*, i64** %gui_size.addr, align 8
  %call17 = call i64 @gimp_g_slist_get_memsize_foreach(%struct._GSList* %29, i64 (i8*, i64*)* bitcast (i64 (%struct._GimpObject*, i64*)* @gimp_object_get_memsize to i64 (i8*, i64*)*), i64* %30)
  %31 = load i64, i64* %memsize, align 8
  %add18 = add nsw i64 %31, %call17
  store i64 %add18, i64* %memsize, align 8
  %32 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %plug_in_stack = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %32, i32 0, i32 13
  %33 = load %struct._GSList*, %struct._GSList** %plug_in_stack, align 8
  %call19 = call i64 @gimp_g_slist_get_memsize(%struct._GSList* %33, i64 0)
  %34 = load i64, i64* %memsize, align 8
  %add20 = add nsw i64 %34, %call19
  store i64 %add20, i64* %memsize, align 8
  %35 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %history = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %35, i32 0, i32 14
  %36 = load %struct._GSList*, %struct._GSList** %history, align 8
  %call21 = call i64 @gimp_g_slist_get_memsize(%struct._GSList* %36, i64 0)
  %37 = load i64, i64* %memsize, align 8
  %add22 = add nsw i64 %37, %call21
  store i64 %add22, i64* %memsize, align 8
  %38 = load i64, i64* %memsize, align 8
  %add23 = add nsw i64 %38, 0
  store i64 %add23, i64* %memsize, align 8
  %39 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %interpreter_db = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %39, i32 0, i32 16
  %40 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %interpreter_db, align 8
  %41 = bitcast %struct._GimpInterpreterDB* %40 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_object_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call24)
  %42 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpObject*
  %43 = load i64*, i64** %gui_size.addr, align 8
  %call26 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %42, i64* %43)
  %44 = load i64, i64* %memsize, align 8
  %add27 = add nsw i64 %44, %call26
  store i64 %add27, i64* %memsize, align 8
  %45 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %environ_table = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %45, i32 0, i32 17
  %46 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table, align 8
  %47 = bitcast %struct._GimpEnvironTable* %46 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_object_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call28)
  %48 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpObject*
  %49 = load i64*, i64** %gui_size.addr, align 8
  %call30 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %48, i64* %49)
  %50 = load i64, i64* %memsize, align 8
  %add31 = add nsw i64 %50, %call30
  store i64 %add31, i64* %memsize, align 8
  %51 = load i64, i64* %memsize, align 8
  %add32 = add nsw i64 %51, 0
  store i64 %add32, i64* %memsize, align 8
  %52 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %data_list = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %52, i32 0, i32 19
  %53 = load %struct._GList*, %struct._GList** %data_list, align 8
  %call33 = call i64 @gimp_g_list_get_memsize(%struct._GList* %53, i64 0)
  %54 = load i64, i64* %memsize, align 8
  %add34 = add nsw i64 %54, %call33
  store i64 %add34, i64* %memsize, align 8
  %55 = load i64, i64* %memsize, align 8
  %56 = load i8*, i8** @gimp_plug_in_manager_parent_class, align 8
  %57 = bitcast i8* %56 to %struct._GTypeClass*
  %call35 = call i64 @gimp_object_get_type() #6
  %call36 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %57, i64 %call35)
  %58 = bitcast %struct._GTypeClass* %call36 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %58, i32 0, i32 3
  %59 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %60 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %61 = load i64*, i64** %gui_size.addr, align 8
  %call37 = call i64 %59(%struct._GimpObject* %60, i64* %61)
  %add38 = add nsw i64 %55, %call37
  ret i64 %add38
}

declare void @gimp_plug_in_manager_history_clear(%struct._GimpPlugInManager*) #1

declare void @g_slist_free(%struct._GSList*) #1

declare void @g_slist_free_full(%struct._GSList*, void (i8*)*) #1

declare void @gimp_plug_in_debug_free(%struct._GimpPlugInDebug*) #1

declare void @gimp_plug_in_manager_menu_branch_exit(%struct._GimpPlugInManager*) #1

declare void @gimp_plug_in_manager_locale_domain_exit(%struct._GimpPlugInManager*) #1

declare void @gimp_plug_in_manager_help_domain_exit(%struct._GimpPlugInManager*) #1

declare void @gimp_plug_in_manager_data_free(%struct._GimpPlugInManager*) #1

declare i64 @gimp_g_slist_get_memsize_foreach(%struct._GSList*, i64 (i8*, i64*)*, i64*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare i64 @gimp_g_slist_get_memsize(%struct._GSList*, i64) #1

declare i64 @gimp_g_list_get_memsize(%struct._GList*, i64) #1

declare %struct._GimpInterpreterDB* @gimp_interpreter_db_new() #1

declare %struct._GimpEnvironTable* @gimp_environ_table_new() #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
