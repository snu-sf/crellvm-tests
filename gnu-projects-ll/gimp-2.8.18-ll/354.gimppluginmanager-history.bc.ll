; ModuleID = './app/plug-in/gimppluginmanager-history.bc'
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
%struct._GimpContext = type opaque
%struct._GimpPlugIn = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_manager_history_size = private unnamed_addr constant [34 x i8] c"gimp_plug_in_manager_history_size\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PLUG_IN_MANAGER (manager)\00", align 1
@__func__.gimp_plug_in_manager_history_length = private unnamed_addr constant [36 x i8] c"gimp_plug_in_manager_history_length\00", align 1
@__func__.gimp_plug_in_manager_history_nth = private unnamed_addr constant [33 x i8] c"gimp_plug_in_manager_history_nth\00", align 1
@__func__.gimp_plug_in_manager_history_add = private unnamed_addr constant [33 x i8] c"gimp_plug_in_manager_history_add\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"GIMP_IS_PLUG_IN_PROCEDURE (procedure)\00", align 1
@__func__.gimp_plug_in_manager_history_remove = private unnamed_addr constant [36 x i8] c"gimp_plug_in_manager_history_remove\00", align 1
@__func__.gimp_plug_in_manager_history_clear = private unnamed_addr constant [35 x i8] c"gimp_plug_in_manager_history_clear\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_manager_history_size(%struct._GimpPlugInManager* %manager) #0 {
entry:
  %retval = alloca i32, align 4
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
  %call = call i64 @gimp_plug_in_manager_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_plug_in_manager_history_size, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 1
  %15 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %plug_in_history_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %15, i32 0, i32 40
  %16 = load i32, i32* %plug_in_history_size, align 4
  %cmp11 = icmp sgt i32 1, %16
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %17 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp12 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %config13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 1
  %19 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config13, align 8
  %plug_in_history_size14 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %19, i32 0, i32 40
  %20 = load i32, i32* %plug_in_history_size14, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %20, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.9
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_manager_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_manager_history_length(%struct._GimpPlugInManager* %manager) #0 {
entry:
  %retval = alloca i32, align 4
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
  %call = call i64 @gimp_plug_in_manager_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_plug_in_manager_history_length, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 14
  %14 = load %struct._GSList*, %struct._GSList** %history, align 8
  %call11 = call i32 @g_slist_length(%struct._GSList* %14)
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @g_slist_length(%struct._GSList*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInProcedure* @gimp_plug_in_manager_history_nth(%struct._GimpPlugInManager* %manager, i32 %n) #0 {
entry:
  %retval = alloca %struct._GimpPlugInProcedure*, align 8
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %n.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_plug_in_manager_history_nth, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 14
  %14 = load %struct._GSList*, %struct._GSList** %history, align 8
  %15 = load i32, i32* %n.addr, align 4
  %call11 = call i8* @g_slist_nth_data(%struct._GSList* %14, i32 %15)
  %16 = bitcast i8* %call11 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %16, %struct._GimpPlugInProcedure** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %retval
  ret %struct._GimpPlugInProcedure* %17
}

declare i8* @g_slist_nth_data(%struct._GSList*, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_history_add(%struct._GimpPlugInManager* %manager, %struct._GimpPlugInProcedure* %procedure) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %procedure.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %list = alloca %struct._GSList*, align 8
  %history_size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpPlugInProcedure* %procedure, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_plug_in_manager_history_add, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %14 = bitcast %struct._GimpPlugInProcedure* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_plug_in_procedure_get_type() #4
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_plug_in_manager_history_add, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %26, i32 0, i32 14
  %27 = load %struct._GSList*, %struct._GSList** %history, align 8
  %tobool39 = icmp ne %struct._GSList* %27, null
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.44

land.lhs.true.40:                                 ; preds = %do.end.38
  %28 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history41 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %28, i32 0, i32 14
  %29 = load %struct._GSList*, %struct._GSList** %history41, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8
  %31 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %32 = bitcast %struct._GimpPlugInProcedure* %31 to i8*
  %cmp42 = icmp eq i8* %30, %32
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true.40
  br label %return

if.end.44:                                        ; preds = %land.lhs.true.40, %do.end.38
  %33 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %call45 = call i32 @gimp_plug_in_manager_history_size(%struct._GimpPlugInManager* %33)
  store i32 %call45, i32* %history_size, align 4
  %34 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history46 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %34, i32 0, i32 14
  %35 = load %struct._GSList*, %struct._GSList** %history46, align 8
  %36 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %37 = bitcast %struct._GimpPlugInProcedure* %36 to i8*
  %call47 = call %struct._GSList* @g_slist_remove(%struct._GSList* %35, i8* %37)
  %38 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history48 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %38, i32 0, i32 14
  store %struct._GSList* %call47, %struct._GSList** %history48, align 8
  %39 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history49 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %39, i32 0, i32 14
  %40 = load %struct._GSList*, %struct._GSList** %history49, align 8
  %41 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %42 = bitcast %struct._GimpPlugInProcedure* %41 to i8*
  %call50 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %40, i8* %42)
  %43 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history51 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %43, i32 0, i32 14
  store %struct._GSList* %call50, %struct._GSList** %history51, align 8
  %44 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history52 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %44, i32 0, i32 14
  %45 = load %struct._GSList*, %struct._GSList** %history52, align 8
  %46 = load i32, i32* %history_size, align 4
  %call53 = call %struct._GSList* @g_slist_nth(%struct._GSList* %45, i32 %46)
  store %struct._GSList* %call53, %struct._GSList** %list, align 8
  %47 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool54 = icmp ne %struct._GSList* %47, null
  br i1 %tobool54, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.end.44
  %48 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history56 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %48, i32 0, i32 14
  %49 = load %struct._GSList*, %struct._GSList** %history56, align 8
  %50 = load %struct._GSList*, %struct._GSList** %list, align 8
  %call57 = call %struct._GSList* @g_slist_remove_link(%struct._GSList* %49, %struct._GSList* %50)
  %51 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history58 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %51, i32 0, i32 14
  store %struct._GSList* %call57, %struct._GSList** %history58, align 8
  %52 = load %struct._GSList*, %struct._GSList** %list, align 8
  call void @g_slist_free(%struct._GSList* %52)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.55, %if.end.44
  %53 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  call void @gimp_plug_in_manager_history_changed(%struct._GimpPlugInManager* %53)
  br label %return

return:                                           ; preds = %if.end.59, %if.then.43, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #3

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #3

declare %struct._GSList* @g_slist_nth(%struct._GSList*, i32) #3

declare %struct._GSList* @g_slist_remove_link(%struct._GSList*, %struct._GSList*) #3

declare void @g_slist_free(%struct._GSList*) #3

declare void @gimp_plug_in_manager_history_changed(%struct._GimpPlugInManager*) #3

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_history_remove(%struct._GimpPlugInManager* %manager, %struct._GimpPlugInProcedure* %procedure) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %procedure.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %link = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpPlugInProcedure* %procedure, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_plug_in_manager_history_remove, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.45

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %14 = bitcast %struct._GimpPlugInProcedure* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_plug_in_procedure_get_type() #4
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_plug_in_manager_history_remove, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.45

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %26, i32 0, i32 14
  %27 = load %struct._GSList*, %struct._GSList** %history, align 8
  %28 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %29 = bitcast %struct._GimpPlugInProcedure* %28 to i8*
  %call39 = call %struct._GSList* @g_slist_find(%struct._GSList* %27, i8* %29)
  store %struct._GSList* %call39, %struct._GSList** %link, align 8
  %30 = load %struct._GSList*, %struct._GSList** %link, align 8
  %tobool40 = icmp ne %struct._GSList* %30, null
  br i1 %tobool40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %do.end.38
  %31 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history42 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %31, i32 0, i32 14
  %32 = load %struct._GSList*, %struct._GSList** %history42, align 8
  %33 = load %struct._GSList*, %struct._GSList** %link, align 8
  %call43 = call %struct._GSList* @g_slist_delete_link(%struct._GSList* %32, %struct._GSList* %33)
  %34 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history44 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %34, i32 0, i32 14
  store %struct._GSList* %call43, %struct._GSList** %history44, align 8
  %35 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  call void @gimp_plug_in_manager_history_changed(%struct._GimpPlugInManager* %35)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.9, %if.else.36, %if.then.41, %do.end.38
  ret void
}

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #3

declare %struct._GSList* @g_slist_delete_link(%struct._GSList*, %struct._GSList*) #3

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_history_clear(%struct._GimpPlugInManager* %manager) #0 {
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
  %call = call i64 @gimp_plug_in_manager_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_manager_history_clear, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 14
  %14 = load %struct._GSList*, %struct._GSList** %history, align 8
  %tobool11 = icmp ne %struct._GSList* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history13 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 14
  %16 = load %struct._GSList*, %struct._GSList** %history13, align 8
  call void @g_slist_free(%struct._GSList* %16)
  %17 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %history14 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %17, i32 0, i32 14
  store %struct._GSList* null, %struct._GSList** %history14, align 8
  %18 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  call void @gimp_plug_in_manager_history_changed(%struct._GimpPlugInManager* %18)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
