; ModuleID = './app/plug-in/gimpplugin-progress.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpProgress = type opaque
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GimpPlugIn = type { %struct._GimpObject, %struct._GimpPlugInManager*, i8*, i32, i8, i32, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, i32, [512 x i8], i32, %struct._GSList*, %struct._GMainLoop*, %struct._GimpPlugInProcFrame, %struct._GList*, %struct._GimpPlugInDef* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
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
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GMainLoop = type opaque
%struct._GimpPlugInProcFrame = type { i32, %struct._GimpContext*, %struct._GList*, %struct._GimpProcedure*, %struct._GMainLoop*, %struct._GValueArray*, %struct._GimpProgress*, i32, i64, i32, %struct._GList*, %struct._GList* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpPlugInDef = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpTemporaryProcedure = type { %struct._GimpPlugInProcedure, %struct._GimpPlugIn* }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_progress_attach = private unnamed_addr constant [29 x i8] c"gimp_plug_in_progress_attach\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_PROGRESS (progress)\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"plug-in-progress-attach-count\00", align 1
@__func__.gimp_plug_in_progress_detach = private unnamed_addr constant [29 x i8] c"gimp_plug_in_progress_detach\00", align 1
@__func__.gimp_plug_in_progress_start = private unnamed_addr constant [28 x i8] c"gimp_plug_in_progress_start\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PLUG_IN (plug_in)\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"display == NULL || GIMP_IS_OBJECT (display)\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.gimp_plug_in_progress_end = private unnamed_addr constant [26 x i8] c"gimp_plug_in_progress_end\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"proc_frame != NULL\00", align 1
@__func__.gimp_plug_in_progress_set_text = private unnamed_addr constant [31 x i8] c"gimp_plug_in_progress_set_text\00", align 1
@__func__.gimp_plug_in_progress_set_value = private unnamed_addr constant [32 x i8] c"gimp_plug_in_progress_set_value\00", align 1
@__func__.gimp_plug_in_progress_pulse = private unnamed_addr constant [28 x i8] c"gimp_plug_in_progress_pulse\00", align 1
@__func__.gimp_plug_in_progress_get_window_id = private unnamed_addr constant [36 x i8] c"gimp_plug_in_progress_get_window_id\00", align 1
@__func__.gimp_plug_in_progress_install = private unnamed_addr constant [30 x i8] c"gimp_plug_in_progress_install\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"progress_callback != NULL\00", align 1
@g_param_spec_types = external global i64*, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"pdb\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"callback-name\00", align 1
@__func__.gimp_plug_in_progress_uninstall = private unnamed_addr constant [32 x i8] c"gimp_plug_in_progress_uninstall\00", align 1
@__func__.gimp_plug_in_progress_cancel = private unnamed_addr constant [29 x i8] c"gimp_plug_in_progress_cancel\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Cancelled\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_progress_attach(%struct._GimpProgress* %progress) #0 {
entry:
  %retval = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %attach_count = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_progress_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_progress_attach, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %14 = bitcast %struct._GimpProgress* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  %16 = ptrtoint i8* %call12 to i64
  %conv = trunc i64 %16 to i32
  store i32 %conv, i32* %attach_count, align 4
  %17 = load i32, i32* %attach_count, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %attach_count, align 4
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %19 = bitcast %struct._GimpProgress* %18 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %21 = load i32, i32* %attach_count, align 4
  %conv14 = sext i32 %21 to i64
  %22 = inttoptr i64 %conv14 to i8*
  call void @g_object_set_data(%struct._GObject* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* %22)
  %23 = load i32, i32* %attach_count, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_progress_detach(%struct._GimpProgress* %progress) #0 {
entry:
  %retval = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %attach_count = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_progress_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_progress_detach, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %14 = bitcast %struct._GimpProgress* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  %16 = ptrtoint i8* %call12 to i64
  %conv = trunc i64 %16 to i32
  store i32 %conv, i32* %attach_count, align 4
  %17 = load i32, i32* %attach_count, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %attach_count, align 4
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %19 = bitcast %struct._GimpProgress* %18 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %21 = load i32, i32* %attach_count, align 4
  %conv14 = sext i32 %21 to i64
  %22 = inttoptr i64 %conv14 to i8*
  call void @g_object_set_data(%struct._GObject* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* %22)
  %23 = load i32, i32* %attach_count, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_progress_start(%struct._GimpPlugIn* %plug_in, i8* %message, %struct._GimpObject* %display) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %message.addr = alloca i8*, align 8
  %display.addr = alloca %struct._GimpObject*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_progress_start, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.85

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %cmp12 = icmp eq %struct._GimpObject* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %15 = bitcast %struct._GimpObject* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_object_get_type() #5
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_progress_start, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.85

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call40 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %27)
  store %struct._GimpPlugInProcFrame* %call40, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %28 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %28, i32 0, i32 6
  %29 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool41 = icmp ne %struct._GimpProgress* %29, null
  br i1 %tobool41, label %if.end.53, label %if.then.42

if.then.42:                                       ; preds = %do.end.39
  %30 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %30, i32 0, i32 1
  %31 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %31, i32 0, i32 1
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %33 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %call43 = call %struct._GimpProgress* @gimp_new_progress(%struct._Gimp* %32, %struct._GimpObject* %33)
  %34 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress44 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %34, i32 0, i32 6
  store %struct._GimpProgress* %call43, %struct._GimpProgress** %progress44, align 8
  %35 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress45 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %35, i32 0, i32 6
  %36 = load %struct._GimpProgress*, %struct._GimpProgress** %progress45, align 8
  %tobool46 = icmp ne %struct._GimpProgress* %36, null
  br i1 %tobool46, label %if.then.47, label %if.end.52

if.then.47:                                       ; preds = %if.then.42
  %37 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress_created = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %37, i32 0, i32 7
  store i32 1, i32* %progress_created, align 4
  %38 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress48 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %38, i32 0, i32 6
  %39 = load %struct._GimpProgress*, %struct._GimpProgress** %progress48, align 8
  %40 = bitcast %struct._GimpProgress* %39 to i8*
  %call49 = call i8* @g_object_ref(i8* %40)
  %41 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress50 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %41, i32 0, i32 6
  %42 = load %struct._GimpProgress*, %struct._GimpProgress** %progress50, align 8
  %call51 = call i32 @gimp_plug_in_progress_attach(%struct._GimpProgress* %42)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.47, %if.then.42
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %do.end.39
  %43 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress54 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %43, i32 0, i32 6
  %44 = load %struct._GimpProgress*, %struct._GimpProgress** %progress54, align 8
  %tobool55 = icmp ne %struct._GimpProgress* %44, null
  br i1 %tobool55, label %if.then.56, label %if.end.85

if.then.56:                                       ; preds = %if.end.53
  %45 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress_cancel_id = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %45, i32 0, i32 8
  %46 = load i64, i64* %progress_cancel_id, align 8
  %tobool57 = icmp ne i64 %46, 0
  br i1 %tobool57, label %if.end.65, label %if.then.58

if.then.58:                                       ; preds = %if.then.56
  %47 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress59 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %47, i32 0, i32 6
  %48 = load %struct._GimpProgress*, %struct._GimpProgress** %progress59, align 8
  %49 = bitcast %struct._GimpProgress* %48 to %struct._GTypeInstance*
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 80)
  %50 = bitcast %struct._GTypeInstance* %call60 to %struct._GObject*
  %51 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress61 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %51, i32 0, i32 6
  %52 = bitcast %struct._GimpProgress** %progress61 to i8*
  %53 = bitcast i8* %52 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %50, i8** %53)
  %54 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress62 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %54, i32 0, i32 6
  %55 = load %struct._GimpProgress*, %struct._GimpProgress** %progress62, align 8
  %56 = bitcast %struct._GimpProgress* %55 to i8*
  %57 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %58 = bitcast %struct._GimpPlugIn* %57 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpProgress*, %struct._GimpPlugIn*)* @gimp_plug_in_progress_cancel_callback to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress_cancel_id64 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %59, i32 0, i32 8
  store i64 %call63, i64* %progress_cancel_id64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.58, %if.then.56
  %60 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress66 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %60, i32 0, i32 6
  %61 = load %struct._GimpProgress*, %struct._GimpProgress** %progress66, align 8
  %call67 = call i32 @gimp_progress_is_active(%struct._GimpProgress* %61)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.else.80

if.then.69:                                       ; preds = %if.end.65
  %62 = load i8*, i8** %message.addr, align 8
  %tobool70 = icmp ne i8* %62, null
  br i1 %tobool70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.then.69
  %63 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress72 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %63, i32 0, i32 6
  %64 = load %struct._GimpProgress*, %struct._GimpProgress** %progress72, align 8
  %65 = load i8*, i8** %message.addr, align 8
  call void @gimp_progress_set_text(%struct._GimpProgress* %64, i8* %65)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.then.69
  %66 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress74 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %66, i32 0, i32 6
  %67 = load %struct._GimpProgress*, %struct._GimpProgress** %progress74, align 8
  %call75 = call double @gimp_progress_get_value(%struct._GimpProgress* %67)
  %cmp76 = fcmp ogt double %call75, 0.000000e+00
  br i1 %cmp76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.end.73
  %68 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress78 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %68, i32 0, i32 6
  %69 = load %struct._GimpProgress*, %struct._GimpProgress** %progress78, align 8
  call void @gimp_progress_set_value(%struct._GimpProgress* %69, double 0.000000e+00)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %if.end.73
  br label %if.end.84

if.else.80:                                       ; preds = %if.end.65
  %70 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress81 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %70, i32 0, i32 6
  %71 = load %struct._GimpProgress*, %struct._GimpProgress** %progress81, align 8
  %72 = load i8*, i8** %message.addr, align 8
  %tobool82 = icmp ne i8* %72, null
  br i1 %tobool82, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.80
  %73 = load i8*, i8** %message.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else.80
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %73, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), %cond.false ]
  %call83 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %71, i8* %cond, i32 1)
  br label %if.end.84

if.end.84:                                        ; preds = %cond.end, %if.end.79
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.9, %if.else.37, %if.end.84, %if.end.53
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn*) #3

declare %struct._GimpProgress* @gimp_new_progress(%struct._Gimp*, %struct._GimpObject*) #3

declare i8* @g_object_ref(i8*) #3

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_progress_cancel_callback(%struct._GimpProgress* %progress, %struct._GimpPlugIn* %plug_in) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %main_proc_frame = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %0, i32 0, i32 15
  store %struct._GimpPlugInProcFrame* %main_proc_frame, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %1 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %1, i32 0, i32 4
  %2 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop, align 8
  %tobool = icmp ne %struct._GMainLoop* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %3, i32 0, i32 3
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call = call %struct._GValueArray* @get_cancel_return_values(%struct._GimpProcedure* %4)
  %5 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %return_vals = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %5, i32 0, i32 5
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %temp_proc_frames = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %6, i32 0, i32 16
  %7 = load %struct._GList*, %struct._GList** %temp_proc_frames, align 8
  store %struct._GList* %7, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %8, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct._GimpPlugInProcFrame*
  store %struct._GimpPlugInProcFrame* %11, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %12 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_loop2 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %12, i32 0, i32 4
  %13 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop2, align 8
  %tobool3 = icmp ne %struct._GMainLoop* %13, null
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %for.body
  %14 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %procedure5 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %14, i32 0, i32 3
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure5, align 8
  %call6 = call %struct._GValueArray* @get_cancel_return_values(%struct._GimpProcedure* %15)
  %16 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %return_vals7 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %16, i32 0, i32 5
  store %struct._GValueArray* %call6, %struct._GValueArray** %return_vals7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool9 = icmp ne %struct._GList* %17, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %20, i32 1)
  ret void
}

declare i32 @gimp_progress_is_active(%struct._GimpProgress*) #3

declare void @gimp_progress_set_text(%struct._GimpProgress*, i8*) #3

declare double @gimp_progress_get_value(%struct._GimpProgress*) #3

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #3

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_progress_end(%struct._GimpPlugIn* %plug_in, %struct._GimpPlugInProcFrame* %proc_frame) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_frame.addr = alloca %struct._GimpPlugInProcFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_plug_in_progress_end, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.44

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %cmp12 = icmp ne %struct._GimpPlugInProcFrame* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_plug_in_progress_end, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.44

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %14, i32 0, i32 6
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool17 = icmp ne %struct._GimpProgress* %15, null
  br i1 %tobool17, label %if.then.18, label %if.end.44

if.then.18:                                       ; preds = %do.end.16
  %16 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress_cancel_id = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %16, i32 0, i32 8
  %17 = load i64, i64* %progress_cancel_id, align 8
  %tobool19 = icmp ne i64 %17, 0
  br i1 %tobool19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %if.then.18
  %18 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress21 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %18, i32 0, i32 6
  %19 = load %struct._GimpProgress*, %struct._GimpProgress** %progress21, align 8
  %20 = bitcast %struct._GimpProgress* %19 to i8*
  %21 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress_cancel_id22 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %21, i32 0, i32 8
  %22 = load i64, i64* %progress_cancel_id22, align 8
  call void @g_signal_handler_disconnect(i8* %20, i64 %22)
  %23 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress_cancel_id23 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %23, i32 0, i32 8
  store i64 0, i64* %progress_cancel_id23, align 8
  %24 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress24 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %24, i32 0, i32 6
  %25 = load %struct._GimpProgress*, %struct._GimpProgress** %progress24, align 8
  %26 = bitcast %struct._GimpProgress* %25 to %struct._GTypeInstance*
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call25 to %struct._GObject*
  %28 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress26 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %28, i32 0, i32 6
  %29 = bitcast %struct._GimpProgress** %progress26 to i8*
  %30 = bitcast i8* %29 to i8**
  call void @g_object_remove_weak_pointer(%struct._GObject* %27, i8** %30)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.20, %if.then.18
  %31 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress28 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %31, i32 0, i32 6
  %32 = load %struct._GimpProgress*, %struct._GimpProgress** %progress28, align 8
  %call29 = call i32 @gimp_plug_in_progress_detach(%struct._GimpProgress* %32)
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.37

land.lhs.true.31:                                 ; preds = %if.end.27
  %33 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress32 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %33, i32 0, i32 6
  %34 = load %struct._GimpProgress*, %struct._GimpProgress** %progress32, align 8
  %call33 = call i32 @gimp_progress_is_active(%struct._GimpProgress* %34)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %land.lhs.true.31
  %35 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress36 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %35, i32 0, i32 6
  %36 = load %struct._GimpProgress*, %struct._GimpProgress** %progress36, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %land.lhs.true.31, %if.end.27
  %37 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress_created = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %37, i32 0, i32 7
  %38 = load i32, i32* %progress_created, align 4
  %tobool38 = icmp ne i32 %38, 0
  br i1 %tobool38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.end.37
  %39 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %39, i32 0, i32 1
  %40 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %40, i32 0, i32 1
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %42 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress40 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %42, i32 0, i32 6
  %43 = load %struct._GimpProgress*, %struct._GimpProgress** %progress40, align 8
  call void @gimp_free_progress(%struct._Gimp* %41, %struct._GimpProgress* %43)
  %44 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress41 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %44, i32 0, i32 6
  %45 = load %struct._GimpProgress*, %struct._GimpProgress** %progress41, align 8
  %46 = bitcast %struct._GimpProgress* %45 to i8*
  call void @g_object_unref(i8* %46)
  %47 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress42 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %47, i32 0, i32 6
  store %struct._GimpProgress* null, %struct._GimpProgress** %progress42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.end.37
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.9, %if.else.14, %if.end.43, %do.end.16
  ret void
}

declare void @g_signal_handler_disconnect(i8*, i64) #3

declare void @g_object_remove_weak_pointer(%struct._GObject*, i8**) #3

declare void @gimp_progress_end(%struct._GimpProgress*) #3

declare void @gimp_free_progress(%struct._Gimp*, %struct._GimpProgress*) #3

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_progress_set_text(%struct._GimpPlugIn* %plug_in, i8* %message) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %message.addr = alloca i8*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_plug_in_progress_set_text, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call11 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %13)
  store %struct._GimpPlugInProcFrame* %call11, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %14 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %14, i32 0, i32 6
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool12 = icmp ne %struct._GimpProgress* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress14 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %16, i32 0, i32 6
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress14, align 8
  %18 = load i8*, i8** %message.addr, align 8
  call void @gimp_progress_set_text(%struct._GimpProgress* %17, i8* %18)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_progress_set_value(%struct._GimpPlugIn* %plug_in, double %percentage) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %percentage.addr = alloca double, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_progress_set_value, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.28

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call11 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %13)
  store %struct._GimpPlugInProcFrame* %call11, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %14 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %14, i32 0, i32 6
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool12 = icmp ne %struct._GimpProgress* %15, null
  br i1 %tobool12, label %lor.lhs.false, label %if.then.18

lor.lhs.false:                                    ; preds = %do.end
  %16 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress13 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %16, i32 0, i32 6
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress13, align 8
  %call14 = call i32 @gimp_progress_is_active(%struct._GimpProgress* %17)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %lor.lhs.false.16, label %if.then.18

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %18 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress_cancel_id = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %18, i32 0, i32 8
  %19 = load i64, i64* %progress_cancel_id, align 8
  %tobool17 = icmp ne i64 %19, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false, %do.end
  %20 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_progress_start(%struct._GimpPlugIn* %20, i8* null, %struct._GimpObject* null)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %lor.lhs.false.16
  %21 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress20 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %21, i32 0, i32 6
  %22 = load %struct._GimpProgress*, %struct._GimpProgress** %progress20, align 8
  %tobool21 = icmp ne %struct._GimpProgress* %22, null
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.28

land.lhs.true.22:                                 ; preds = %if.end.19
  %23 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress23 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %23, i32 0, i32 6
  %24 = load %struct._GimpProgress*, %struct._GimpProgress** %progress23, align 8
  %call24 = call i32 @gimp_progress_is_active(%struct._GimpProgress* %24)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true.22
  %25 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress27 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %25, i32 0, i32 6
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress27, align 8
  %27 = load double, double* %percentage.addr, align 8
  call void @gimp_progress_set_value(%struct._GimpProgress* %26, double %27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.9, %if.then.26, %land.lhs.true.22, %if.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_progress_pulse(%struct._GimpPlugIn* %plug_in) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_progress_pulse, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.28

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call11 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %13)
  store %struct._GimpPlugInProcFrame* %call11, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %14 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %14, i32 0, i32 6
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool12 = icmp ne %struct._GimpProgress* %15, null
  br i1 %tobool12, label %lor.lhs.false, label %if.then.18

lor.lhs.false:                                    ; preds = %do.end
  %16 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress13 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %16, i32 0, i32 6
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress13, align 8
  %call14 = call i32 @gimp_progress_is_active(%struct._GimpProgress* %17)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %lor.lhs.false.16, label %if.then.18

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %18 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress_cancel_id = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %18, i32 0, i32 8
  %19 = load i64, i64* %progress_cancel_id, align 8
  %tobool17 = icmp ne i64 %19, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false, %do.end
  %20 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_progress_start(%struct._GimpPlugIn* %20, i8* null, %struct._GimpObject* null)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %lor.lhs.false.16
  %21 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress20 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %21, i32 0, i32 6
  %22 = load %struct._GimpProgress*, %struct._GimpProgress** %progress20, align 8
  %tobool21 = icmp ne %struct._GimpProgress* %22, null
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.28

land.lhs.true.22:                                 ; preds = %if.end.19
  %23 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress23 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %23, i32 0, i32 6
  %24 = load %struct._GimpProgress*, %struct._GimpProgress** %progress23, align 8
  %call24 = call i32 @gimp_progress_is_active(%struct._GimpProgress* %24)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true.22
  %25 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress27 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %25, i32 0, i32 6
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress27, align 8
  call void @gimp_progress_pulse(%struct._GimpProgress* %26)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.9, %if.then.26, %land.lhs.true.22, %if.end.19
  ret void
}

declare void @gimp_progress_pulse(%struct._GimpProgress*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_progress_get_window_id(%struct._GimpPlugIn* %plug_in) #0 {
entry:
  %retval = alloca i32, align 4
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_plug_in_progress_get_window_id, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call11 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %13)
  store %struct._GimpPlugInProcFrame* %call11, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %14 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %14, i32 0, i32 6
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool12 = icmp ne %struct._GimpProgress* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress14 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %16, i32 0, i32 6
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress14, align 8
  %call15 = call i32 @gimp_progress_get_window_id(%struct._GimpProgress* %17)
  store i32 %call15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @gimp_progress_get_window_id(%struct._GimpProgress*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_progress_install(%struct._GimpPlugIn* %plug_in, i8* %progress_callback) #0 {
entry:
  %retval = alloca i32, align 4
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %progress_callback.addr = alloca i8*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %__inst49 = alloca %struct._GTypeInstance*, align 8
  %__t51 = alloca i64, align 8
  %__r54 = alloca i32, align 4
  %tmp69 = alloca i32, align 4
  %__inst73 = alloca %struct._GTypeInstance*, align 8
  %__t77 = alloca i64, align 8
  %__r80 = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  %__inst99 = alloca %struct._GTypeInstance*, align 8
  %__t103 = alloca i64, align 8
  %__r106 = alloca i32, align 4
  %tmp121 = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store i8* %progress_callback, i8** %progress_callback.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_progress_install, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %progress_callback.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_progress_install, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %14, i32 0, i32 1
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 44
  %17 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %18 = load i8*, i8** %progress_callback.addr, align 8
  %call17 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %17, i8* %18)
  store %struct._GimpProcedure* %call17, %struct._GimpProcedure** %procedure, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %20 = bitcast %struct._GimpProcedure* %19 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %20, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_temporary_procedure_get_type() #5
  store i64 %call22, i64* %__t21, align 8
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %21, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %do.end.16
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %do.end.16
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %23, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type32, align 8
  %27 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %26, %27
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %29 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %28, i64 %29) #6
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %30 = load i32, i32* %__r24, align 4
  store i32 %30, i32* %tmp39
  %31 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %31, 0
  br i1 %tobool40, label %lor.lhs.false, label %if.then.123

lor.lhs.false:                                    ; preds = %if.end.38
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %33 = bitcast %struct._GimpProcedure* %32 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_temporary_procedure_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call41)
  %34 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpTemporaryProcedure*
  %plug_in43 = getelementptr inbounds %struct._GimpTemporaryProcedure, %struct._GimpTemporaryProcedure* %34, i32 0, i32 1
  %35 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in43, align 8
  %36 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %cmp44 = icmp ne %struct._GimpPlugIn* %35, %36
  br i1 %cmp44, label %if.then.123, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %37, i32 0, i32 10
  %38 = load i32, i32* %num_args, align 4
  %cmp46 = icmp ne i32 %38, 3
  br i1 %cmp46, label %if.then.123, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.45
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %39, i32 0, i32 11
  %40 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %40, i64 0
  %41 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %42 = bitcast %struct._GParamSpec* %41 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %42, %struct._GTypeInstance** %__inst49, align 8
  %call52 = call i64 @gimp_param_int32_get_type() #5
  store i64 %call52, i64* %__t51, align 8
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst49, align 8
  %tobool55 = icmp ne %struct._GTypeInstance* %43, null
  br i1 %tobool55, label %if.else.57, label %if.then.56

if.then.56:                                       ; preds = %lor.lhs.false.47
  store i32 0, i32* %__r54, align 4
  br label %if.end.68

if.else.57:                                       ; preds = %lor.lhs.false.47
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst49, align 8
  %g_class58 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class58, align 8
  %tobool59 = icmp ne %struct._GTypeClass* %45, null
  br i1 %tobool59, label %land.lhs.true.60, label %if.else.65

land.lhs.true.60:                                 ; preds = %if.else.57
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst49, align 8
  %g_class61 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class61, align 8
  %g_type62 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %47, i32 0, i32 0
  %48 = load i64, i64* %g_type62, align 8
  %49 = load i64, i64* %__t51, align 8
  %cmp63 = icmp eq i64 %48, %49
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %land.lhs.true.60
  store i32 1, i32* %__r54, align 4
  br label %if.end.67

if.else.65:                                       ; preds = %land.lhs.true.60, %if.else.57
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst49, align 8
  %51 = load i64, i64* %__t51, align 8
  %call66 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %50, i64 %51) #6
  store i32 %call66, i32* %__r54, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.64
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.56
  %52 = load i32, i32* %__r54, align 4
  store i32 %52, i32* %tmp69
  %53 = load i32, i32* %tmp69
  %tobool70 = icmp ne i32 %53, 0
  br i1 %tobool70, label %lor.lhs.false.71, label %if.then.123

lor.lhs.false.71:                                 ; preds = %if.end.68
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args74 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %54, i32 0, i32 11
  %55 = load %struct._GParamSpec**, %struct._GParamSpec*** %args74, align 8
  %arrayidx75 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %55, i64 1
  %56 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx75, align 8
  %57 = bitcast %struct._GParamSpec* %56 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %57, %struct._GTypeInstance** %__inst73, align 8
  %58 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx78 = getelementptr inbounds i64, i64* %58, i64 14
  %59 = load i64, i64* %arrayidx78, align 8
  store i64 %59, i64* %__t77, align 8
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst73, align 8
  %tobool81 = icmp ne %struct._GTypeInstance* %60, null
  br i1 %tobool81, label %if.else.83, label %if.then.82

if.then.82:                                       ; preds = %lor.lhs.false.71
  store i32 0, i32* %__r80, align 4
  br label %if.end.94

if.else.83:                                       ; preds = %lor.lhs.false.71
  %61 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst73, align 8
  %g_class84 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %61, i32 0, i32 0
  %62 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class84, align 8
  %tobool85 = icmp ne %struct._GTypeClass* %62, null
  br i1 %tobool85, label %land.lhs.true.86, label %if.else.91

land.lhs.true.86:                                 ; preds = %if.else.83
  %63 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst73, align 8
  %g_class87 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %63, i32 0, i32 0
  %64 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class87, align 8
  %g_type88 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %64, i32 0, i32 0
  %65 = load i64, i64* %g_type88, align 8
  %66 = load i64, i64* %__t77, align 8
  %cmp89 = icmp eq i64 %65, %66
  br i1 %cmp89, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %land.lhs.true.86
  store i32 1, i32* %__r80, align 4
  br label %if.end.93

if.else.91:                                       ; preds = %land.lhs.true.86, %if.else.83
  %67 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst73, align 8
  %68 = load i64, i64* %__t77, align 8
  %call92 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %67, i64 %68) #6
  store i32 %call92, i32* %__r80, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.90
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.82
  %69 = load i32, i32* %__r80, align 4
  store i32 %69, i32* %tmp95
  %70 = load i32, i32* %tmp95
  %tobool96 = icmp ne i32 %70, 0
  br i1 %tobool96, label %lor.lhs.false.97, label %if.then.123

lor.lhs.false.97:                                 ; preds = %if.end.94
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args100 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %71, i32 0, i32 11
  %72 = load %struct._GParamSpec**, %struct._GParamSpec*** %args100, align 8
  %arrayidx101 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %72, i64 2
  %73 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx101, align 8
  %74 = bitcast %struct._GParamSpec* %73 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %74, %struct._GTypeInstance** %__inst99, align 8
  %75 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx104 = getelementptr inbounds i64, i64* %75, i64 13
  %76 = load i64, i64* %arrayidx104, align 8
  store i64 %76, i64* %__t103, align 8
  %77 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst99, align 8
  %tobool107 = icmp ne %struct._GTypeInstance* %77, null
  br i1 %tobool107, label %if.else.109, label %if.then.108

if.then.108:                                      ; preds = %lor.lhs.false.97
  store i32 0, i32* %__r106, align 4
  br label %if.end.120

if.else.109:                                      ; preds = %lor.lhs.false.97
  %78 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst99, align 8
  %g_class110 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %78, i32 0, i32 0
  %79 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class110, align 8
  %tobool111 = icmp ne %struct._GTypeClass* %79, null
  br i1 %tobool111, label %land.lhs.true.112, label %if.else.117

land.lhs.true.112:                                ; preds = %if.else.109
  %80 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst99, align 8
  %g_class113 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %80, i32 0, i32 0
  %81 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class113, align 8
  %g_type114 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %81, i32 0, i32 0
  %82 = load i64, i64* %g_type114, align 8
  %83 = load i64, i64* %__t103, align 8
  %cmp115 = icmp eq i64 %82, %83
  br i1 %cmp115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %land.lhs.true.112
  store i32 1, i32* %__r106, align 4
  br label %if.end.119

if.else.117:                                      ; preds = %land.lhs.true.112, %if.else.109
  %84 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst99, align 8
  %85 = load i64, i64* %__t103, align 8
  %call118 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %84, i64 %85) #6
  store i32 %call118, i32* %__r106, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.117, %if.then.116
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.108
  %86 = load i32, i32* %__r106, align 4
  store i32 %86, i32* %tmp121
  %87 = load i32, i32* %tmp121
  %tobool122 = icmp ne i32 %87, 0
  br i1 %tobool122, label %if.end.124, label %if.then.123

if.then.123:                                      ; preds = %if.end.120, %if.end.94, %if.end.68, %lor.lhs.false.45, %lor.lhs.false, %if.end.38
  store i32 0, i32* %retval
  br label %return

if.end.124:                                       ; preds = %if.end.120
  %88 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call125 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %88)
  store %struct._GimpPlugInProcFrame* %call125, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %89 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %89, i32 0, i32 6
  %90 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool126 = icmp ne %struct._GimpProgress* %90, null
  br i1 %tobool126, label %if.then.127, label %if.end.134

if.then.127:                                      ; preds = %if.end.124
  %91 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %92 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  call void @gimp_plug_in_progress_end(%struct._GimpPlugIn* %91, %struct._GimpPlugInProcFrame* %92)
  %93 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress128 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %93, i32 0, i32 6
  %94 = load %struct._GimpProgress*, %struct._GimpProgress** %progress128, align 8
  %tobool129 = icmp ne %struct._GimpProgress* %94, null
  br i1 %tobool129, label %if.then.130, label %if.end.133

if.then.130:                                      ; preds = %if.then.127
  %95 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress131 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %95, i32 0, i32 6
  %96 = load %struct._GimpProgress*, %struct._GimpProgress** %progress131, align 8
  %97 = bitcast %struct._GimpProgress* %96 to i8*
  call void @g_object_unref(i8* %97)
  %98 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress132 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %98, i32 0, i32 6
  store %struct._GimpProgress* null, %struct._GimpProgress** %progress132, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.130, %if.then.127
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.124
  %call135 = call i64 @gimp_pdb_progress_get_type() #5
  %99 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager136 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %99, i32 0, i32 1
  %100 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager136, align 8
  %gimp137 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %100, i32 0, i32 1
  %101 = load %struct._Gimp*, %struct._Gimp** %gimp137, align 8
  %pdb138 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %101, i32 0, i32 44
  %102 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb138, align 8
  %103 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %main_context = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %103, i32 0, i32 1
  %104 = load %struct._GimpContext*, %struct._GimpContext** %main_context, align 8
  %105 = load i8*, i8** %progress_callback.addr, align 8
  %call139 = call i8* (i64, i8*, ...) @g_object_new(i64 %call135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), %struct._GimpPDB* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct._GimpContext* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* %105, i8* null)
  %106 = bitcast i8* %call139 to %struct._GimpProgress*
  %107 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress140 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %107, i32 0, i32 6
  store %struct._GimpProgress* %106, %struct._GimpProgress** %progress140, align 8
  %108 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress141 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %108, i32 0, i32 6
  %109 = load %struct._GimpProgress*, %struct._GimpProgress** %progress141, align 8
  %call142 = call i32 @gimp_plug_in_progress_attach(%struct._GimpProgress* %109)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.134, %if.then.123, %if.else.14, %if.else.9
  %110 = load i32, i32* %retval
  ret i32 %110
}

declare %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_temporary_procedure_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_int32_get_type() #1

declare i8* @g_object_new(i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_progress_get_type() #1

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_progress_uninstall(%struct._GimpPlugIn* %plug_in, i8* %progress_callback) #0 {
entry:
  %retval = alloca i32, align 4
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %progress_callback.addr = alloca i8*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store i8* %progress_callback, i8** %progress_callback.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_progress_uninstall, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %progress_callback.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_progress_uninstall, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call17 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %14)
  store %struct._GimpPlugInProcFrame* %call17, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %15 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %15, i32 0, i32 6
  %16 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %17 = bitcast %struct._GimpProgress* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_pdb_progress_get_type() #5
  store i64 %call22, i64* %__t21, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %do.end.16
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %do.end.16
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type32, align 8
  %24 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %23, %24
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %26 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #6
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %27 = load i32, i32* %__r24, align 4
  store i32 %27, i32* %tmp39
  %28 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %28, 0
  br i1 %tobool40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.end.38
  %29 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %30 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  call void @gimp_plug_in_progress_end(%struct._GimpPlugIn* %29, %struct._GimpPlugInProcFrame* %30)
  %31 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress42 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %31, i32 0, i32 6
  %32 = load %struct._GimpProgress*, %struct._GimpProgress** %progress42, align 8
  %33 = bitcast %struct._GimpProgress* %32 to i8*
  call void @g_object_unref(i8* %33)
  %34 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %progress43 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %34, i32 0, i32 6
  store %struct._GimpProgress* null, %struct._GimpProgress** %progress43, align 8
  store i32 1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.38
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.41, %if.else.14, %if.else.9
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_progress_cancel(%struct._GimpPlugIn* %plug_in, i8* %progress_callback) #0 {
entry:
  %retval = alloca i32, align 4
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %progress_callback.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store i8* %progress_callback, i8** %progress_callback.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_progress_cancel, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %progress_callback.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_progress_cancel, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @get_cancel_return_values(%struct._GimpProcedure* %procedure) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call i32 @gimp_pdb_error_quark() #5
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #7
  %call2 = call %struct._GError* @g_error_new_literal(i32 %call, i32 1, i8* %call1)
  store %struct._GError* %call2, %struct._GError** %error, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = load %struct._GError*, %struct._GError** %error, align 8
  %call3 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %0, i32 0, %struct._GError* %1)
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %2 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %2)
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %3
}

declare void @gimp_plug_in_close(%struct._GimpPlugIn*, i32) #3

declare %struct._GError* @g_error_new_literal(i32, i32, i8*) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_pdb_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #3

declare void @g_error_free(%struct._GError*) #3

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
