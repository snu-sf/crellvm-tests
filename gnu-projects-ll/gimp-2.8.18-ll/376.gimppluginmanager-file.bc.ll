; ModuleID = './app/plug-in/gimppluginmanager-file.bc'
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
%struct._GimpCoreConfig = type opaque
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
%struct._GimpPlugInDef = type { %struct._GimpObject, i8*, %struct._GSList*, i8*, i8*, i8*, i8*, i64, i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_manager_register_load_handler = private unnamed_addr constant [43 x i8] c"gimp_plug_in_manager_register_load_handler\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PLUG_IN_MANAGER (manager)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"attempt to register nonexistent load handler \22%s\22\00", align 1
@g_param_spec_types = external global i64*, align 8
@.str.4 = private unnamed_addr constant [63 x i8] c"load handler \22%s\22 does not take the standard load handler args\00", align 1
@__func__.gimp_plug_in_manager_register_save_handler = private unnamed_addr constant [43 x i8] c"gimp_plug_in_manager_register_save_handler\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"attempt to register nonexistent save handler \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"save handler \22%s\22 does not take the standard save handler args\00", align 1
@__func__.gimp_plug_in_manager_register_mime_type = private unnamed_addr constant [40 x i8] c"gimp_plug_in_manager_register_mime_type\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"mime_type != NULL\00", align 1
@__func__.gimp_plug_in_manager_register_thumb_loader = private unnamed_addr constant [43 x i8] c"gimp_plug_in_manager_register_thumb_loader\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"load_proc\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"thumb_proc\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_manager_register_load_handler(%struct._GimpPlugInManager* %manager, i8* %name, i8* %extensions, i8* %prefixes, i8* %magics) #0 {
entry:
  %retval = alloca i32, align 4
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %name.addr = alloca i8*, align 8
  %extensions.addr = alloca i8*, align 8
  %prefixes.addr = alloca i8*, align 8
  %magics.addr = alloca i8*, align 8
  %file_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst36 = alloca %struct._GTypeInstance*, align 8
  %__t38 = alloca i64, align 8
  %__r41 = alloca i32, align 4
  %tmp56 = alloca i32, align 4
  %__inst60 = alloca %struct._GTypeInstance*, align 8
  %__t64 = alloca i64, align 8
  %__r67 = alloca i32, align 4
  %tmp82 = alloca i32, align 4
  %__inst86 = alloca %struct._GTypeInstance*, align 8
  %__t90 = alloca i64, align 8
  %__r93 = alloca i32, align 4
  %tmp108 = alloca i32, align 4
  %__inst112 = alloca %struct._GTypeInstance*, align 8
  %__t115 = alloca i64, align 8
  %__r118 = alloca i32, align 4
  %tmp133 = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %extensions, i8** %extensions.addr, align 8
  store i8* %prefixes, i8** %prefixes.addr, align 8
  store i8* %magics, i8** %magics.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_plug_in_manager_register_load_handler, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_plug_in_manager_register_load_handler, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %14, i32 0, i32 11
  %15 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  %tobool17 = icmp ne %struct._GimpPlugIn* %15, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.else.24

land.lhs.true.18:                                 ; preds = %do.end.16
  %16 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in19 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %16, i32 0, i32 11
  %17 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in19, align 8
  %plug_in_def = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %17, i32 0, i32 17
  %18 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %tobool20 = icmp ne %struct._GimpPlugInDef* %18, null
  br i1 %tobool20, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %land.lhs.true.18
  %19 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in22 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %19, i32 0, i32 11
  %20 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in22, align 8
  %plug_in_def23 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %20, i32 0, i32 17
  %21 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def23, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %21, i32 0, i32 2
  %22 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  store %struct._GSList* %22, %struct._GSList** %list, align 8
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.18, %do.end.16
  %23 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %23, i32 0, i32 4
  %24 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  store %struct._GSList* %24, %struct._GSList** %list, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.21
  %25 = load %struct._GSList*, %struct._GSList** %list, align 8
  %26 = load i8*, i8** %name.addr, align 8
  %call26 = call %struct._GimpPlugInProcedure* @gimp_plug_in_procedure_find(%struct._GSList* %25, i8* %26)
  store %struct._GimpPlugInProcedure* %call26, %struct._GimpPlugInProcedure** %file_proc, align 8
  %27 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %tobool27 = icmp ne %struct._GimpPlugInProcedure* %27, null
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %28 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %28, i32 0, i32 1
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %30 = load i8*, i8** %name.addr, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %29, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i8* %30)
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.25
  %31 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %32 = bitcast %struct._GimpPlugInProcedure* %31 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_procedure_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call30)
  %33 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %33, %struct._GimpProcedure** %procedure, align 8
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %34, i32 0, i32 10
  %35 = load i32, i32* %num_args, align 4
  %cmp32 = icmp slt i32 %35, 3
  br i1 %cmp32, label %if.then.135, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.29
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %36, i32 0, i32 12
  %37 = load i32, i32* %num_values, align 4
  %cmp33 = icmp slt i32 %37, 1
  br i1 %cmp33, label %if.then.135, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %38, i32 0, i32 11
  %39 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %39, i64 0
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %41 = bitcast %struct._GParamSpec* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst36, align 8
  %call39 = call i64 @gimp_param_int32_get_type() #4
  store i64 %call39, i64* %__t38, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst36, align 8
  %tobool42 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool42, label %if.else.44, label %if.then.43

if.then.43:                                       ; preds = %lor.lhs.false.34
  store i32 0, i32* %__r41, align 4
  br label %if.end.55

if.else.44:                                       ; preds = %lor.lhs.false.34
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst36, align 8
  %g_class45 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class45, align 8
  %tobool46 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool46, label %land.lhs.true.47, label %if.else.52

land.lhs.true.47:                                 ; preds = %if.else.44
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst36, align 8
  %g_class48 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class48, align 8
  %g_type49 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type49, align 8
  %48 = load i64, i64* %__t38, align 8
  %cmp50 = icmp eq i64 %47, %48
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %land.lhs.true.47
  store i32 1, i32* %__r41, align 4
  br label %if.end.54

if.else.52:                                       ; preds = %land.lhs.true.47, %if.else.44
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst36, align 8
  %50 = load i64, i64* %__t38, align 8
  %call53 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #5
  store i32 %call53, i32* %__r41, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.then.51
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.43
  %51 = load i32, i32* %__r41, align 4
  store i32 %51, i32* %tmp56
  %52 = load i32, i32* %tmp56
  %tobool57 = icmp ne i32 %52, 0
  br i1 %tobool57, label %lor.lhs.false.58, label %if.then.135

lor.lhs.false.58:                                 ; preds = %if.end.55
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args61 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %53, i32 0, i32 11
  %54 = load %struct._GParamSpec**, %struct._GParamSpec*** %args61, align 8
  %arrayidx62 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %54, i64 1
  %55 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx62, align 8
  %56 = bitcast %struct._GParamSpec* %55 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %56, %struct._GTypeInstance** %__inst60, align 8
  %57 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx65 = getelementptr inbounds i64, i64* %57, i64 14
  %58 = load i64, i64* %arrayidx65, align 8
  store i64 %58, i64* %__t64, align 8
  %59 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %tobool68 = icmp ne %struct._GTypeInstance* %59, null
  br i1 %tobool68, label %if.else.70, label %if.then.69

if.then.69:                                       ; preds = %lor.lhs.false.58
  store i32 0, i32* %__r67, align 4
  br label %if.end.81

if.else.70:                                       ; preds = %lor.lhs.false.58
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %g_class71 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %60, i32 0, i32 0
  %61 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class71, align 8
  %tobool72 = icmp ne %struct._GTypeClass* %61, null
  br i1 %tobool72, label %land.lhs.true.73, label %if.else.78

land.lhs.true.73:                                 ; preds = %if.else.70
  %62 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %g_class74 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %62, i32 0, i32 0
  %63 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class74, align 8
  %g_type75 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %63, i32 0, i32 0
  %64 = load i64, i64* %g_type75, align 8
  %65 = load i64, i64* %__t64, align 8
  %cmp76 = icmp eq i64 %64, %65
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %land.lhs.true.73
  store i32 1, i32* %__r67, align 4
  br label %if.end.80

if.else.78:                                       ; preds = %land.lhs.true.73, %if.else.70
  %66 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %67 = load i64, i64* %__t64, align 8
  %call79 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %66, i64 %67) #5
  store i32 %call79, i32* %__r67, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.then.77
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.69
  %68 = load i32, i32* %__r67, align 4
  store i32 %68, i32* %tmp82
  %69 = load i32, i32* %tmp82
  %tobool83 = icmp ne i32 %69, 0
  br i1 %tobool83, label %lor.lhs.false.84, label %if.then.135

lor.lhs.false.84:                                 ; preds = %if.end.81
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args87 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %70, i32 0, i32 11
  %71 = load %struct._GParamSpec**, %struct._GParamSpec*** %args87, align 8
  %arrayidx88 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %71, i64 2
  %72 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx88, align 8
  %73 = bitcast %struct._GParamSpec* %72 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %73, %struct._GTypeInstance** %__inst86, align 8
  %74 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx91 = getelementptr inbounds i64, i64* %74, i64 14
  %75 = load i64, i64* %arrayidx91, align 8
  store i64 %75, i64* %__t90, align 8
  %76 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst86, align 8
  %tobool94 = icmp ne %struct._GTypeInstance* %76, null
  br i1 %tobool94, label %if.else.96, label %if.then.95

if.then.95:                                       ; preds = %lor.lhs.false.84
  store i32 0, i32* %__r93, align 4
  br label %if.end.107

if.else.96:                                       ; preds = %lor.lhs.false.84
  %77 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst86, align 8
  %g_class97 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %77, i32 0, i32 0
  %78 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class97, align 8
  %tobool98 = icmp ne %struct._GTypeClass* %78, null
  br i1 %tobool98, label %land.lhs.true.99, label %if.else.104

land.lhs.true.99:                                 ; preds = %if.else.96
  %79 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst86, align 8
  %g_class100 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %79, i32 0, i32 0
  %80 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class100, align 8
  %g_type101 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %80, i32 0, i32 0
  %81 = load i64, i64* %g_type101, align 8
  %82 = load i64, i64* %__t90, align 8
  %cmp102 = icmp eq i64 %81, %82
  br i1 %cmp102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %land.lhs.true.99
  store i32 1, i32* %__r93, align 4
  br label %if.end.106

if.else.104:                                      ; preds = %land.lhs.true.99, %if.else.96
  %83 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst86, align 8
  %84 = load i64, i64* %__t90, align 8
  %call105 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %83, i64 %84) #5
  store i32 %call105, i32* %__r93, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.then.103
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.95
  %85 = load i32, i32* %__r93, align 4
  store i32 %85, i32* %tmp108
  %86 = load i32, i32* %tmp108
  %tobool109 = icmp ne i32 %86, 0
  br i1 %tobool109, label %lor.lhs.false.110, label %if.then.135

lor.lhs.false.110:                                ; preds = %if.end.107
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %87, i32 0, i32 13
  %88 = load %struct._GParamSpec**, %struct._GParamSpec*** %values, align 8
  %arrayidx113 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %88, i64 0
  %89 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx113, align 8
  %90 = bitcast %struct._GParamSpec* %89 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %90, %struct._GTypeInstance** %__inst112, align 8
  %call116 = call i64 @gimp_param_image_id_get_type() #4
  store i64 %call116, i64* %__t115, align 8
  %91 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %tobool119 = icmp ne %struct._GTypeInstance* %91, null
  br i1 %tobool119, label %if.else.121, label %if.then.120

if.then.120:                                      ; preds = %lor.lhs.false.110
  store i32 0, i32* %__r118, align 4
  br label %if.end.132

if.else.121:                                      ; preds = %lor.lhs.false.110
  %92 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %g_class122 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %92, i32 0, i32 0
  %93 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class122, align 8
  %tobool123 = icmp ne %struct._GTypeClass* %93, null
  br i1 %tobool123, label %land.lhs.true.124, label %if.else.129

land.lhs.true.124:                                ; preds = %if.else.121
  %94 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %g_class125 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %94, i32 0, i32 0
  %95 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class125, align 8
  %g_type126 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %95, i32 0, i32 0
  %96 = load i64, i64* %g_type126, align 8
  %97 = load i64, i64* %__t115, align 8
  %cmp127 = icmp eq i64 %96, %97
  br i1 %cmp127, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %land.lhs.true.124
  store i32 1, i32* %__r118, align 4
  br label %if.end.131

if.else.129:                                      ; preds = %land.lhs.true.124, %if.else.121
  %98 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %99 = load i64, i64* %__t115, align 8
  %call130 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %98, i64 %99) #5
  store i32 %call130, i32* %__r118, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.129, %if.then.128
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.120
  %100 = load i32, i32* %__r118, align 4
  store i32 %100, i32* %tmp133
  %101 = load i32, i32* %tmp133
  %tobool134 = icmp ne i32 %101, 0
  br i1 %tobool134, label %if.end.137, label %if.then.135

if.then.135:                                      ; preds = %if.end.132, %if.end.107, %if.end.81, %if.end.55, %lor.lhs.false, %if.end.29
  %102 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp136 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %102, i32 0, i32 1
  %103 = load %struct._Gimp*, %struct._Gimp** %gimp136, align 8
  %104 = load i8*, i8** %name.addr, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %103, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i32 0, i32 0), i8* %104)
  store i32 0, i32* %retval
  br label %return

if.end.137:                                       ; preds = %if.end.132
  %105 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %106 = load i8*, i8** %extensions.addr, align 8
  %107 = load i8*, i8** %prefixes.addr, align 8
  %108 = load i8*, i8** %magics.addr, align 8
  call void @gimp_plug_in_procedure_set_file_proc(%struct._GimpPlugInProcedure* %105, i8* %106, i8* %107, i8* %108)
  %109 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %load_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %109, i32 0, i32 5
  %110 = load %struct._GSList*, %struct._GSList** %load_procs, align 8
  %111 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %112 = bitcast %struct._GimpPlugInProcedure* %111 to i8*
  %call138 = call %struct._GSList* @g_slist_find(%struct._GSList* %110, i8* %112)
  %tobool139 = icmp ne %struct._GSList* %call138, null
  br i1 %tobool139, label %if.end.144, label %if.then.140

if.then.140:                                      ; preds = %if.end.137
  %113 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %load_procs141 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %113, i32 0, i32 5
  %114 = load %struct._GSList*, %struct._GSList** %load_procs141, align 8
  %115 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %116 = bitcast %struct._GimpPlugInProcedure* %115 to i8*
  %call142 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %114, i8* %116)
  %117 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %load_procs143 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %117, i32 0, i32 5
  store %struct._GSList* %call142, %struct._GSList** %load_procs143, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.140, %if.end.137
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.144, %if.then.135, %if.then.28, %if.else.14, %if.else.9
  %118 = load i32, i32* %retval
  ret i32 %118
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_manager_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GimpPlugInProcedure* @gimp_plug_in_procedure_find(%struct._GSList*, i8*) #3

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_procedure_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_int32_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_image_id_get_type() #1

declare void @gimp_plug_in_procedure_set_file_proc(%struct._GimpPlugInProcedure*, i8*, i8*, i8*) #3

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #3

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_manager_register_save_handler(%struct._GimpPlugInManager* %manager, i8* %name, i8* %extensions, i8* %prefixes) #0 {
entry:
  %retval = alloca i32, align 4
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %name.addr = alloca i8*, align 8
  %extensions.addr = alloca i8*, align 8
  %prefixes.addr = alloca i8*, align 8
  %file_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst34 = alloca %struct._GTypeInstance*, align 8
  %__t36 = alloca i64, align 8
  %__r39 = alloca i32, align 4
  %tmp54 = alloca i32, align 4
  %__inst58 = alloca %struct._GTypeInstance*, align 8
  %__t62 = alloca i64, align 8
  %__r65 = alloca i32, align 4
  %tmp80 = alloca i32, align 4
  %__inst84 = alloca %struct._GTypeInstance*, align 8
  %__t88 = alloca i64, align 8
  %__r91 = alloca i32, align 4
  %tmp106 = alloca i32, align 4
  %__inst110 = alloca %struct._GTypeInstance*, align 8
  %__t114 = alloca i64, align 8
  %__r117 = alloca i32, align 4
  %tmp132 = alloca i32, align 4
  %__inst136 = alloca %struct._GTypeInstance*, align 8
  %__t140 = alloca i64, align 8
  %__r143 = alloca i32, align 4
  %tmp158 = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %extensions, i8** %extensions.addr, align 8
  store i8* %prefixes, i8** %prefixes.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_plug_in_manager_register_save_handler, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_plug_in_manager_register_save_handler, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %14, i32 0, i32 11
  %15 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  %tobool17 = icmp ne %struct._GimpPlugIn* %15, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.else.24

land.lhs.true.18:                                 ; preds = %do.end.16
  %16 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in19 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %16, i32 0, i32 11
  %17 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in19, align 8
  %plug_in_def = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %17, i32 0, i32 17
  %18 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %tobool20 = icmp ne %struct._GimpPlugInDef* %18, null
  br i1 %tobool20, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %land.lhs.true.18
  %19 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in22 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %19, i32 0, i32 11
  %20 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in22, align 8
  %plug_in_def23 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %20, i32 0, i32 17
  %21 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def23, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %21, i32 0, i32 2
  %22 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  store %struct._GSList* %22, %struct._GSList** %list, align 8
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.18, %do.end.16
  %23 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %23, i32 0, i32 4
  %24 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  store %struct._GSList* %24, %struct._GSList** %list, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.21
  %25 = load %struct._GSList*, %struct._GSList** %list, align 8
  %26 = load i8*, i8** %name.addr, align 8
  %call26 = call %struct._GimpPlugInProcedure* @gimp_plug_in_procedure_find(%struct._GSList* %25, i8* %26)
  store %struct._GimpPlugInProcedure* %call26, %struct._GimpPlugInProcedure** %file_proc, align 8
  %27 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %tobool27 = icmp ne %struct._GimpPlugInProcedure* %27, null
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %28 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %28, i32 0, i32 1
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %30 = load i8*, i8** %name.addr, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %29, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), i8* %30)
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.25
  %31 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %32 = bitcast %struct._GimpPlugInProcedure* %31 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_procedure_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call30)
  %33 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %33, %struct._GimpProcedure** %procedure, align 8
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %34, i32 0, i32 10
  %35 = load i32, i32* %num_args, align 4
  %cmp32 = icmp slt i32 %35, 5
  br i1 %cmp32, label %if.then.160, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.29
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %36, i32 0, i32 11
  %37 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %37, i64 0
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %39 = bitcast %struct._GParamSpec* %38 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %39, %struct._GTypeInstance** %__inst34, align 8
  %call37 = call i64 @gimp_param_int32_get_type() #4
  store i64 %call37, i64* %__t36, align 8
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst34, align 8
  %tobool40 = icmp ne %struct._GTypeInstance* %40, null
  br i1 %tobool40, label %if.else.42, label %if.then.41

if.then.41:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r39, align 4
  br label %if.end.53

if.else.42:                                       ; preds = %lor.lhs.false
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst34, align 8
  %g_class43 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class43, align 8
  %tobool44 = icmp ne %struct._GTypeClass* %42, null
  br i1 %tobool44, label %land.lhs.true.45, label %if.else.50

land.lhs.true.45:                                 ; preds = %if.else.42
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst34, align 8
  %g_class46 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class46, align 8
  %g_type47 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type47, align 8
  %46 = load i64, i64* %__t36, align 8
  %cmp48 = icmp eq i64 %45, %46
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %land.lhs.true.45
  store i32 1, i32* %__r39, align 4
  br label %if.end.52

if.else.50:                                       ; preds = %land.lhs.true.45, %if.else.42
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst34, align 8
  %48 = load i64, i64* %__t36, align 8
  %call51 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %47, i64 %48) #5
  store i32 %call51, i32* %__r39, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.50, %if.then.49
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.41
  %49 = load i32, i32* %__r39, align 4
  store i32 %49, i32* %tmp54
  %50 = load i32, i32* %tmp54
  %tobool55 = icmp ne i32 %50, 0
  br i1 %tobool55, label %lor.lhs.false.56, label %if.then.160

lor.lhs.false.56:                                 ; preds = %if.end.53
  %51 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args59 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %51, i32 0, i32 11
  %52 = load %struct._GParamSpec**, %struct._GParamSpec*** %args59, align 8
  %arrayidx60 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %52, i64 1
  %53 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx60, align 8
  %54 = bitcast %struct._GParamSpec* %53 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %54, %struct._GTypeInstance** %__inst58, align 8
  %call63 = call i64 @gimp_param_image_id_get_type() #4
  store i64 %call63, i64* %__t62, align 8
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %tobool66 = icmp ne %struct._GTypeInstance* %55, null
  br i1 %tobool66, label %if.else.68, label %if.then.67

if.then.67:                                       ; preds = %lor.lhs.false.56
  store i32 0, i32* %__r65, align 4
  br label %if.end.79

if.else.68:                                       ; preds = %lor.lhs.false.56
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %g_class69 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %56, i32 0, i32 0
  %57 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class69, align 8
  %tobool70 = icmp ne %struct._GTypeClass* %57, null
  br i1 %tobool70, label %land.lhs.true.71, label %if.else.76

land.lhs.true.71:                                 ; preds = %if.else.68
  %58 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %g_class72 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %58, i32 0, i32 0
  %59 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class72, align 8
  %g_type73 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %59, i32 0, i32 0
  %60 = load i64, i64* %g_type73, align 8
  %61 = load i64, i64* %__t62, align 8
  %cmp74 = icmp eq i64 %60, %61
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %land.lhs.true.71
  store i32 1, i32* %__r65, align 4
  br label %if.end.78

if.else.76:                                       ; preds = %land.lhs.true.71, %if.else.68
  %62 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %63 = load i64, i64* %__t62, align 8
  %call77 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %62, i64 %63) #5
  store i32 %call77, i32* %__r65, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.76, %if.then.75
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.67
  %64 = load i32, i32* %__r65, align 4
  store i32 %64, i32* %tmp80
  %65 = load i32, i32* %tmp80
  %tobool81 = icmp ne i32 %65, 0
  br i1 %tobool81, label %lor.lhs.false.82, label %if.then.160

lor.lhs.false.82:                                 ; preds = %if.end.79
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args85 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %66, i32 0, i32 11
  %67 = load %struct._GParamSpec**, %struct._GParamSpec*** %args85, align 8
  %arrayidx86 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %67, i64 2
  %68 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx86, align 8
  %69 = bitcast %struct._GParamSpec* %68 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %69, %struct._GTypeInstance** %__inst84, align 8
  %call89 = call i64 @gimp_param_drawable_id_get_type() #4
  store i64 %call89, i64* %__t88, align 8
  %70 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst84, align 8
  %tobool92 = icmp ne %struct._GTypeInstance* %70, null
  br i1 %tobool92, label %if.else.94, label %if.then.93

if.then.93:                                       ; preds = %lor.lhs.false.82
  store i32 0, i32* %__r91, align 4
  br label %if.end.105

if.else.94:                                       ; preds = %lor.lhs.false.82
  %71 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst84, align 8
  %g_class95 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %71, i32 0, i32 0
  %72 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class95, align 8
  %tobool96 = icmp ne %struct._GTypeClass* %72, null
  br i1 %tobool96, label %land.lhs.true.97, label %if.else.102

land.lhs.true.97:                                 ; preds = %if.else.94
  %73 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst84, align 8
  %g_class98 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %73, i32 0, i32 0
  %74 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class98, align 8
  %g_type99 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %74, i32 0, i32 0
  %75 = load i64, i64* %g_type99, align 8
  %76 = load i64, i64* %__t88, align 8
  %cmp100 = icmp eq i64 %75, %76
  br i1 %cmp100, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %land.lhs.true.97
  store i32 1, i32* %__r91, align 4
  br label %if.end.104

if.else.102:                                      ; preds = %land.lhs.true.97, %if.else.94
  %77 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst84, align 8
  %78 = load i64, i64* %__t88, align 8
  %call103 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %77, i64 %78) #5
  store i32 %call103, i32* %__r91, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.102, %if.then.101
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.93
  %79 = load i32, i32* %__r91, align 4
  store i32 %79, i32* %tmp106
  %80 = load i32, i32* %tmp106
  %tobool107 = icmp ne i32 %80, 0
  br i1 %tobool107, label %lor.lhs.false.108, label %if.then.160

lor.lhs.false.108:                                ; preds = %if.end.105
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args111 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %81, i32 0, i32 11
  %82 = load %struct._GParamSpec**, %struct._GParamSpec*** %args111, align 8
  %arrayidx112 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %82, i64 3
  %83 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx112, align 8
  %84 = bitcast %struct._GParamSpec* %83 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %84, %struct._GTypeInstance** %__inst110, align 8
  %85 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx115 = getelementptr inbounds i64, i64* %85, i64 14
  %86 = load i64, i64* %arrayidx115, align 8
  store i64 %86, i64* %__t114, align 8
  %87 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst110, align 8
  %tobool118 = icmp ne %struct._GTypeInstance* %87, null
  br i1 %tobool118, label %if.else.120, label %if.then.119

if.then.119:                                      ; preds = %lor.lhs.false.108
  store i32 0, i32* %__r117, align 4
  br label %if.end.131

if.else.120:                                      ; preds = %lor.lhs.false.108
  %88 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst110, align 8
  %g_class121 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %88, i32 0, i32 0
  %89 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class121, align 8
  %tobool122 = icmp ne %struct._GTypeClass* %89, null
  br i1 %tobool122, label %land.lhs.true.123, label %if.else.128

land.lhs.true.123:                                ; preds = %if.else.120
  %90 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst110, align 8
  %g_class124 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %90, i32 0, i32 0
  %91 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class124, align 8
  %g_type125 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %91, i32 0, i32 0
  %92 = load i64, i64* %g_type125, align 8
  %93 = load i64, i64* %__t114, align 8
  %cmp126 = icmp eq i64 %92, %93
  br i1 %cmp126, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %land.lhs.true.123
  store i32 1, i32* %__r117, align 4
  br label %if.end.130

if.else.128:                                      ; preds = %land.lhs.true.123, %if.else.120
  %94 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst110, align 8
  %95 = load i64, i64* %__t114, align 8
  %call129 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %94, i64 %95) #5
  store i32 %call129, i32* %__r117, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.128, %if.then.127
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.119
  %96 = load i32, i32* %__r117, align 4
  store i32 %96, i32* %tmp132
  %97 = load i32, i32* %tmp132
  %tobool133 = icmp ne i32 %97, 0
  br i1 %tobool133, label %lor.lhs.false.134, label %if.then.160

lor.lhs.false.134:                                ; preds = %if.end.131
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args137 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %98, i32 0, i32 11
  %99 = load %struct._GParamSpec**, %struct._GParamSpec*** %args137, align 8
  %arrayidx138 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %99, i64 4
  %100 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx138, align 8
  %101 = bitcast %struct._GParamSpec* %100 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %101, %struct._GTypeInstance** %__inst136, align 8
  %102 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx141 = getelementptr inbounds i64, i64* %102, i64 14
  %103 = load i64, i64* %arrayidx141, align 8
  store i64 %103, i64* %__t140, align 8
  %104 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst136, align 8
  %tobool144 = icmp ne %struct._GTypeInstance* %104, null
  br i1 %tobool144, label %if.else.146, label %if.then.145

if.then.145:                                      ; preds = %lor.lhs.false.134
  store i32 0, i32* %__r143, align 4
  br label %if.end.157

if.else.146:                                      ; preds = %lor.lhs.false.134
  %105 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst136, align 8
  %g_class147 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %105, i32 0, i32 0
  %106 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class147, align 8
  %tobool148 = icmp ne %struct._GTypeClass* %106, null
  br i1 %tobool148, label %land.lhs.true.149, label %if.else.154

land.lhs.true.149:                                ; preds = %if.else.146
  %107 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst136, align 8
  %g_class150 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %107, i32 0, i32 0
  %108 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class150, align 8
  %g_type151 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %108, i32 0, i32 0
  %109 = load i64, i64* %g_type151, align 8
  %110 = load i64, i64* %__t140, align 8
  %cmp152 = icmp eq i64 %109, %110
  br i1 %cmp152, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %land.lhs.true.149
  store i32 1, i32* %__r143, align 4
  br label %if.end.156

if.else.154:                                      ; preds = %land.lhs.true.149, %if.else.146
  %111 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst136, align 8
  %112 = load i64, i64* %__t140, align 8
  %call155 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %111, i64 %112) #5
  store i32 %call155, i32* %__r143, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.154, %if.then.153
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.then.145
  %113 = load i32, i32* %__r143, align 4
  store i32 %113, i32* %tmp158
  %114 = load i32, i32* %tmp158
  %tobool159 = icmp ne i32 %114, 0
  br i1 %tobool159, label %if.end.162, label %if.then.160

if.then.160:                                      ; preds = %if.end.157, %if.end.131, %if.end.105, %if.end.79, %if.end.53, %if.end.29
  %115 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %gimp161 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %115, i32 0, i32 1
  %116 = load %struct._Gimp*, %struct._Gimp** %gimp161, align 8
  %117 = load i8*, i8** %name.addr, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %116, %struct._GObject* null, i32 2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i32 0, i32 0), i8* %117)
  store i32 0, i32* %retval
  br label %return

if.end.162:                                       ; preds = %if.end.157
  %118 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %119 = load i8*, i8** %extensions.addr, align 8
  %120 = load i8*, i8** %prefixes.addr, align 8
  call void @gimp_plug_in_procedure_set_file_proc(%struct._GimpPlugInProcedure* %118, i8* %119, i8* %120, i8* null)
  %121 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %call163 = call i32 @file_procedure_in_group(%struct._GimpPlugInProcedure* %121, i32 2)
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.then.165, label %if.end.173

if.then.165:                                      ; preds = %if.end.162
  %122 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %save_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %122, i32 0, i32 6
  %123 = load %struct._GSList*, %struct._GSList** %save_procs, align 8
  %124 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %125 = bitcast %struct._GimpPlugInProcedure* %124 to i8*
  %call166 = call %struct._GSList* @g_slist_find(%struct._GSList* %123, i8* %125)
  %tobool167 = icmp ne %struct._GSList* %call166, null
  br i1 %tobool167, label %if.end.172, label %if.then.168

if.then.168:                                      ; preds = %if.then.165
  %126 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %save_procs169 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %126, i32 0, i32 6
  %127 = load %struct._GSList*, %struct._GSList** %save_procs169, align 8
  %128 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %129 = bitcast %struct._GimpPlugInProcedure* %128 to i8*
  %call170 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %127, i8* %129)
  %130 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %save_procs171 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %130, i32 0, i32 6
  store %struct._GSList* %call170, %struct._GSList** %save_procs171, align 8
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.168, %if.then.165
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.end.162
  %131 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %call174 = call i32 @file_procedure_in_group(%struct._GimpPlugInProcedure* %131, i32 3)
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.then.176, label %if.end.184

if.then.176:                                      ; preds = %if.end.173
  %132 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %export_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %132, i32 0, i32 7
  %133 = load %struct._GSList*, %struct._GSList** %export_procs, align 8
  %134 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %135 = bitcast %struct._GimpPlugInProcedure* %134 to i8*
  %call177 = call %struct._GSList* @g_slist_find(%struct._GSList* %133, i8* %135)
  %tobool178 = icmp ne %struct._GSList* %call177, null
  br i1 %tobool178, label %if.end.183, label %if.then.179

if.then.179:                                      ; preds = %if.then.176
  %136 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %export_procs180 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %136, i32 0, i32 7
  %137 = load %struct._GSList*, %struct._GSList** %export_procs180, align 8
  %138 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %139 = bitcast %struct._GimpPlugInProcedure* %138 to i8*
  %call181 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %137, i8* %139)
  %140 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %export_procs182 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %140, i32 0, i32 7
  store %struct._GSList* %call181, %struct._GSList** %export_procs182, align 8
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.179, %if.then.176
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.end.173
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.184, %if.then.160, %if.then.28, %if.else.14, %if.else.9
  %141 = load i32, i32* %retval
  ret i32 %141
}

; Function Attrs: nounwind readnone
declare i64 @gimp_param_drawable_id_get_type() #1

declare i32 @file_procedure_in_group(%struct._GimpPlugInProcedure*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_manager_register_mime_type(%struct._GimpPlugInManager* %manager, i8* %name, i8* %mime_type) #0 {
entry:
  %retval = alloca i32, align 4
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %name.addr = alloca i8*, align 8
  %mime_type.addr = alloca i8*, align 8
  %file_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %mime_type, i8** %mime_type.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_plug_in_manager_register_mime_type, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_plug_in_manager_register_mime_type, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %mime_type.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_plug_in_manager_register_mime_type, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 11
  %16 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  %tobool23 = icmp ne %struct._GimpPlugIn* %16, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.30

land.lhs.true.24:                                 ; preds = %do.end.22
  %17 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in25 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %17, i32 0, i32 11
  %18 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in25, align 8
  %plug_in_def = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %18, i32 0, i32 17
  %19 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %tobool26 = icmp ne %struct._GimpPlugInDef* %19, null
  br i1 %tobool26, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %land.lhs.true.24
  %20 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in28 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %20, i32 0, i32 11
  %21 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in28, align 8
  %plug_in_def29 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %21, i32 0, i32 17
  %22 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def29, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %22, i32 0, i32 2
  %23 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  store %struct._GSList* %23, %struct._GSList** %list, align 8
  br label %if.end.31

if.else.30:                                       ; preds = %land.lhs.true.24, %do.end.22
  %24 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %24, i32 0, i32 4
  %25 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  store %struct._GSList* %25, %struct._GSList** %list, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.27
  %26 = load %struct._GSList*, %struct._GSList** %list, align 8
  %27 = load i8*, i8** %name.addr, align 8
  %call32 = call %struct._GimpPlugInProcedure* @gimp_plug_in_procedure_find(%struct._GSList* %26, i8* %27)
  store %struct._GimpPlugInProcedure* %call32, %struct._GimpPlugInProcedure** %file_proc, align 8
  %28 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %tobool33 = icmp ne %struct._GimpPlugInProcedure* %28, null
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.end.31
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.31
  %29 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %30 = load i8*, i8** %mime_type.addr, align 8
  call void @gimp_plug_in_procedure_set_mime_type(%struct._GimpPlugInProcedure* %29, i8* %30)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.34, %if.else.20, %if.else.14, %if.else.9
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare void @gimp_plug_in_procedure_set_mime_type(%struct._GimpPlugInProcedure*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_manager_register_thumb_loader(%struct._GimpPlugInManager* %manager, i8* %load_proc, i8* %thumb_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %load_proc.addr = alloca i8*, align 8
  %thumb_proc.addr = alloca i8*, align 8
  %file_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %load_proc, i8** %load_proc.addr, align 8
  store i8* %thumb_proc, i8** %thumb_proc.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_plug_in_manager_register_thumb_loader, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %load_proc.addr, align 8
  %tobool12 = icmp ne i8* %13, null
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_plug_in_manager_register_thumb_loader, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %thumb_proc.addr, align 8
  %tobool18 = icmp ne i8* %14, null
  br i1 %tobool18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_plug_in_manager_register_thumb_loader, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 11
  %16 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  %tobool23 = icmp ne %struct._GimpPlugIn* %16, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.30

land.lhs.true.24:                                 ; preds = %do.end.22
  %17 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in25 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %17, i32 0, i32 11
  %18 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in25, align 8
  %plug_in_def = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %18, i32 0, i32 17
  %19 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %tobool26 = icmp ne %struct._GimpPlugInDef* %19, null
  br i1 %tobool26, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %land.lhs.true.24
  %20 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %current_plug_in28 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %20, i32 0, i32 11
  %21 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in28, align 8
  %plug_in_def29 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %21, i32 0, i32 17
  %22 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def29, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %22, i32 0, i32 2
  %23 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  store %struct._GSList* %23, %struct._GSList** %list, align 8
  br label %if.end.31

if.else.30:                                       ; preds = %land.lhs.true.24, %do.end.22
  %24 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %24, i32 0, i32 4
  %25 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  store %struct._GSList* %25, %struct._GSList** %list, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.27
  %26 = load %struct._GSList*, %struct._GSList** %list, align 8
  %27 = load i8*, i8** %load_proc.addr, align 8
  %call32 = call %struct._GimpPlugInProcedure* @gimp_plug_in_procedure_find(%struct._GSList* %26, i8* %27)
  store %struct._GimpPlugInProcedure* %call32, %struct._GimpPlugInProcedure** %file_proc, align 8
  %28 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %tobool33 = icmp ne %struct._GimpPlugInProcedure* %28, null
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.end.31
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.31
  %29 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %30 = load i8*, i8** %thumb_proc.addr, align 8
  call void @gimp_plug_in_procedure_set_thumb_loader(%struct._GimpPlugInProcedure* %29, i8* %30)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.34, %if.else.20, %if.else.14, %if.else.9
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare void @gimp_plug_in_procedure_set_thumb_loader(%struct._GimpPlugInProcedure*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_manager_uri_has_exporter(%struct._GimpPlugInManager* %manager, i8* %uri) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %uri.addr = alloca i8*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %export_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %0, i32 0, i32 7
  %1 = load %struct._GSList*, %struct._GSList** %export_procs, align 8
  %2 = load i8*, i8** %uri.addr, align 8
  %call = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %1, i8* %2, %struct._GError** null)
  %cmp = icmp ne %struct._GimpPlugInProcedure* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList*, i8*, %struct._GError**) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
