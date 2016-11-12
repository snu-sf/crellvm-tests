; ModuleID = './app/pdb/progress-cmds.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
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
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
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
%struct._GimpPlugInDef = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GHashTable = type opaque

@.str = private unnamed_addr constant [19 x i8] c"gimp-progress-init\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Initializes the progress bar for the current plug-in.\00", align 1
@.str.2 = private unnamed_addr constant [110 x i8] c"Initializes the progress bar for the current plug-in. It is only valid to call this procedure from a plug-in.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Message to use in the progress dialog\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"gdisplay\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"GimpDisplay to update progressbar in, or -1 for a seperate window\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"gimp-progress-update\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Updates the progress bar for the current plug-in.\00", align 1
@.str.11 = private unnamed_addr constant [106 x i8] c"Updates the progress bar for the current plug-in. It is only valid to call this procedure from a plug-in.\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"percentage\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"Percentage of progress completed which must be between 0.0 and 1.0\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp-progress-pulse\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"Pulses the progress bar for the current plug-in.\00", align 1
@.str.16 = private unnamed_addr constant [315 x i8] c"Updates the progress bar for the current plug-in. It is only valid to call this procedure from a plug-in. Use this function instead of 'gimp-progress-update' if you cannot tell how much progress has been made. This usually causes the the progress bar to enter \22activity mode\22, where a block bounces back and forth.\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Sven Neumann <sven@gimp.org>\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Sven Neumann\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"gimp-progress-set-text\00", align 1
@.str.21 = private unnamed_addr constant [62 x i8] c"Changes the text in the progress bar for the current plug-in.\00", align 1
@.str.22 = private unnamed_addr constant [153 x i8] c"This function allows to change the text in the progress bar for the current plug-in. Unlike 'gimp-progress-init' it does not change the displayed value.\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"gimp-progress-end\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"Ends the progress bar for the current plug-in.\00", align 1
@.str.25 = private unnamed_addr constant [184 x i8] c"Ends the progress display for the current plug-in. Most plug-ins don't need to call this, they just exit when the work is done. It is only valid to call this procedure from a plug-in.\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"2007\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"gimp-progress-get-window-handle\00", align 1
@.str.28 = private unnamed_addr constant [93 x i8] c"Returns the native window ID of the toplevel window this plug-in's progress is displayed in.\00", align 1
@.str.29 = private unnamed_addr constant [107 x i8] c"This function returns the native window ID of the toplevel window this plug-in's progress is displayed in.\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"The progress bar's toplevel window\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"gimp-progress-install\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"Installs a progress callback for the current plug-in.\00", align 1
@.str.37 = private unnamed_addr constant [216 x i8] c"This function installs a temporary PDB procedure which will handle all progress calls made by this plug-in and any procedure it calls. Calling this function multiple times simply replaces the old progress callbacks.\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"progress-callback\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"progress callback\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"The callback PDB proc to call\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"gimp-progress-uninstall\00", align 1
@.str.42 = private unnamed_addr constant [58 x i8] c"Uninstalls the progress callback for the current plug-in.\00", align 1
@.str.43 = private unnamed_addr constant [94 x i8] c"This function uninstalls any progress callback installed with 'gimp-progress-install' before.\00", align 1
@.str.44 = private unnamed_addr constant [54 x i8] c"The name of the callback registered for this progress\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"gimp-progress-cancel\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"Cancels a running progress.\00", align 1
@.str.47 = private unnamed_addr constant [54 x i8] c"This function cancels the currently running progress.\00", align 1

; Function Attrs: nounwind uwtable
define void @register_progress_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @progress_init_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 1, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %6 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_display_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i32 0, i32 0), %struct._Gimp* %7, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %5, %struct._GParamSpec* %call4)
  %8 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %8, %struct._GimpProcedure* %9)
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %11 = bitcast %struct._GimpProcedure* %10 to i8*
  call void @g_object_unref(i8* %11)
  %call5 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @progress_update_invoker)
  store %struct._GimpProcedure* %call5, %struct._GimpProcedure** %procedure, align 8
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %13 = bitcast %struct._GimpProcedure* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #3
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0))
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %16, %struct._GParamSpec* %call8)
  %17 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %17, %struct._GimpProcedure* %18)
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %20 = bitcast %struct._GimpProcedure* %19 to i8*
  call void @g_object_unref(i8* %20)
  %call9 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @progress_pulse_invoker)
  store %struct._GimpProcedure* %call9, %struct._GimpProcedure** %procedure, align 8
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %22 = bitcast %struct._GimpProcedure* %21 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #3
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call10)
  %23 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0))
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([315 x i8], [315 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* null)
  %25 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %25, %struct._GimpProcedure* %26)
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %28 = bitcast %struct._GimpProcedure* %27 to i8*
  call void @g_object_unref(i8* %28)
  %call12 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @progress_set_text_invoker)
  store %struct._GimpProcedure* %call12, %struct._GimpProcedure** %procedure, align 8
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %30 = bitcast %struct._GimpProcedure* %29 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_object_get_type() #3
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call13)
  %31 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0))
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* null)
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call15 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 1, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %33, %struct._GParamSpec* %call15)
  %34 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %34, %struct._GimpProcedure* %35)
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %37 = bitcast %struct._GimpProcedure* %36 to i8*
  call void @g_object_unref(i8* %37)
  %call16 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @progress_end_invoker)
  store %struct._GimpProcedure* %call16, %struct._GimpProcedure** %procedure, align 8
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %39 = bitcast %struct._GimpProcedure* %38 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_object_get_type() #3
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call17)
  %40 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0))
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* null)
  %42 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %42, %struct._GimpProcedure* %43)
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %45 = bitcast %struct._GimpProcedure* %44 to i8*
  call void @g_object_unref(i8* %45)
  %call19 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @progress_get_window_handle_invoker)
  store %struct._GimpProcedure* %call19, %struct._GimpProcedure** %procedure, align 8
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %47 = bitcast %struct._GimpProcedure* %46 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_object_get_type() #3
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call20)
  %48 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0))
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* null)
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call22 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %50, %struct._GParamSpec* %call22)
  %51 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %51, %struct._GimpProcedure* %52)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %54 = bitcast %struct._GimpProcedure* %53 to i8*
  call void @g_object_unref(i8* %54)
  %call23 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @progress_install_invoker)
  store %struct._GimpProcedure* %call23, %struct._GimpProcedure** %procedure, align 8
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %56 = bitcast %struct._GimpProcedure* %55 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_object_get_type() #3
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call24)
  %57 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0))
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([216 x i8], [216 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* null)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call26 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %59, %struct._GParamSpec* %call26)
  %60 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %60, %struct._GimpProcedure* %61)
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %63 = bitcast %struct._GimpProcedure* %62 to i8*
  call void @g_object_unref(i8* %63)
  %call27 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @progress_uninstall_invoker)
  store %struct._GimpProcedure* %call27, %struct._GimpProcedure** %procedure, align 8
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %65 = bitcast %struct._GimpProcedure* %64 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_object_get_type() #3
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call28)
  %66 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0))
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* null)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call30 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.44, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %68, %struct._GParamSpec* %call30)
  %69 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %69, %struct._GimpProcedure* %70)
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %72 = bitcast %struct._GimpProcedure* %71 to i8*
  call void @g_object_unref(i8* %72)
  %call31 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @progress_cancel_invoker)
  store %struct._GimpProcedure* %call31, %struct._GimpProcedure** %procedure, align 8
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = bitcast %struct._GimpProcedure* %73 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_object_get_type() #3
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call32)
  %75 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0))
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* null)
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.44, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %77, %struct._GParamSpec* %call34)
  %78 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %79 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %78, %struct._GimpProcedure* %79)
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %81 = bitcast %struct._GimpProcedure* %80 to i8*
  call void @g_object_unref(i8* %81)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @progress_init_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %message = alloca i8*, align 8
  %gdisplay = alloca %struct._GimpObject*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %message, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpObject* @gimp_value_get_display(%struct._GValue* %arrayidx2, %struct._Gimp* %4)
  store %struct._GimpObject* %call3, %struct._GimpObject** %gdisplay, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 25
  %7 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %7, i32 0, i32 11
  %8 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  store %struct._GimpPlugIn* %8, %struct._GimpPlugIn** %plug_in, align 8
  %9 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %tobool4 = icmp ne %struct._GimpPlugIn* %9, null
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %10 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %10, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool5 = icmp ne i32 %bf.cast, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 7
  %12 = load i32, i32* %no_interface, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then.6
  %13 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %14 = load i8*, i8** %message, align 8
  %15 = load %struct._GimpObject*, %struct._GimpObject** %gdisplay, align 8
  call void @gimp_plug_in_progress_start(%struct._GimpPlugIn* %13, i8* %14, %struct._GimpObject* %15)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.6
  br label %if.end.9

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %18, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_display_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @progress_update_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %percentage = alloca double, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call double @g_value_get_double(%struct._GValue* %arrayidx)
  store double %call, double* %percentage, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 25
  %4 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %4, i32 0, i32 11
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  store %struct._GimpPlugIn* %5, %struct._GimpPlugIn** %plug_in, align 8
  %6 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %tobool1 = icmp ne %struct._GimpPlugIn* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %7, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool2 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 7
  %9 = load i32, i32* %no_interface, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then.3
  %10 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %11 = load double, double* %percentage, align 8
  call void @gimp_plug_in_progress_set_value(%struct._GimpPlugIn* %10, double %11)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  br label %if.end.6

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %14, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call9
}

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @progress_pulse_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 25
  %1 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %1, i32 0, i32 11
  %2 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  store %struct._GimpPlugIn* %2, %struct._GimpPlugIn** %plug_in, align 8
  %3 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %tobool = icmp ne %struct._GimpPlugIn* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %4, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 7
  %6 = load i32, i32* %no_interface, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  call void @gimp_plug_in_progress_pulse(%struct._GimpPlugIn* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %success, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.end
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %10, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  ret %struct._GValueArray* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @progress_set_text_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %message = alloca i8*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %message, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 25
  %4 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %4, i32 0, i32 11
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  store %struct._GimpPlugIn* %5, %struct._GimpPlugIn** %plug_in, align 8
  %6 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %tobool1 = icmp ne %struct._GimpPlugIn* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %7, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool2 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 7
  %9 = load i32, i32* %no_interface, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then.3
  %10 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %11 = load i8*, i8** %message, align 8
  call void @gimp_plug_in_progress_set_text(%struct._GimpPlugIn* %10, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  br label %if.end.6

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %14, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call9
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @progress_end_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 25
  %1 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %1, i32 0, i32 11
  %2 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  store %struct._GimpPlugIn* %2, %struct._GimpPlugIn** %plug_in, align 8
  %3 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %tobool = icmp ne %struct._GimpPlugIn* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %4, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %call = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %5)
  store %struct._GimpPlugInProcFrame* %call, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %6 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %7 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  call void @gimp_plug_in_progress_end(%struct._GimpPlugIn* %6, %struct._GimpPlugInProcFrame* %7)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool2 = icmp ne %struct._GError** %10, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call3 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  ret %struct._GValueArray* %call3
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @progress_get_window_handle_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %window = alloca i32, align 4
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %window, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 25
  %1 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %1, i32 0, i32 11
  %2 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  store %struct._GimpPlugIn* %2, %struct._GimpPlugIn** %plug_in, align 8
  %3 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %tobool = icmp ne %struct._GimpPlugIn* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %4, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 7
  %6 = load i32, i32* %no_interface, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %call = call i32 @gimp_plug_in_progress_get_window_id(%struct._GimpPlugIn* %7)
  store i32 %call, i32* %window, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %success, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.end
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %10, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  store %struct._GValueArray* %call6, %struct._GValueArray** %return_vals, align 8
  %13 = load i32, i32* %success, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load i32, i32* %window, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx, i32 %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @progress_install_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %progress_callback = alloca i8*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %progress_callback, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 25
  %4 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %4, i32 0, i32 11
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  store %struct._GimpPlugIn* %5, %struct._GimpPlugIn** %plug_in, align 8
  %6 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %tobool1 = icmp ne %struct._GimpPlugIn* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %7, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool2 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %9 = load i8*, i8** %progress_callback, align 8
  %call4 = call i32 @gimp_plug_in_progress_install(%struct._GimpPlugIn* %8, i8* %9)
  store i32 %call4, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  ret %struct._GValueArray* %call7
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @progress_uninstall_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %progress_callback = alloca i8*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %progress_callback, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 25
  %4 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %4, i32 0, i32 11
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  store %struct._GimpPlugIn* %5, %struct._GimpPlugIn** %plug_in, align 8
  %6 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %tobool1 = icmp ne %struct._GimpPlugIn* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %7, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool2 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %9 = load i8*, i8** %progress_callback, align 8
  %call4 = call i32 @gimp_plug_in_progress_uninstall(%struct._GimpPlugIn* %8, i8* %9)
  store i32 %call4, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  ret %struct._GValueArray* %call7
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @progress_cancel_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %progress_callback = alloca i8*, align 8
  %plug_in = alloca %struct._GimpPlugIn*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %progress_callback, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 25
  %4 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %4, i32 0, i32 11
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  store %struct._GimpPlugIn* %5, %struct._GimpPlugIn** %plug_in, align 8
  %6 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %tobool1 = icmp ne %struct._GimpPlugIn* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %open = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %7, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool2 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %9 = load i8*, i8** %progress_callback, align 8
  %call4 = call i32 @gimp_plug_in_progress_cancel(%struct._GimpPlugIn* %8, i8* %9)
  store i32 %call4, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  ret %struct._GValueArray* %call7
}

declare i8* @g_value_get_string(%struct._GValue*) #1

declare %struct._GimpObject* @gimp_value_get_display(%struct._GValue*, %struct._Gimp*) #1

declare void @gimp_plug_in_progress_start(%struct._GimpPlugIn*, i8*, %struct._GimpObject*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare void @gimp_plug_in_progress_set_value(%struct._GimpPlugIn*, double) #1

declare void @gimp_plug_in_progress_pulse(%struct._GimpPlugIn*) #1

declare void @gimp_plug_in_progress_set_text(%struct._GimpPlugIn*, i8*) #1

declare %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn*) #1

declare void @gimp_plug_in_progress_end(%struct._GimpPlugIn*, %struct._GimpPlugInProcFrame*) #1

declare i32 @gimp_plug_in_progress_get_window_id(%struct._GimpPlugIn*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare i32 @gimp_plug_in_progress_install(%struct._GimpPlugIn*, i8*) #1

declare i32 @gimp_plug_in_progress_uninstall(%struct._GimpPlugIn*, i8*) #1

declare i32 @gimp_plug_in_progress_cancel(%struct._GimpPlugIn*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
