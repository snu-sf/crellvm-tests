; ModuleID = './app/pdb/message-cmds.bc'
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

@.str = private unnamed_addr constant [13 x i8] c"gimp-message\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Displays a dialog box with a message.\00", align 1
@.str.2 = private unnamed_addr constant [115 x i8] c"Displays a dialog box with a message. Useful for status or error reporting. The message must be in UTF-8 encoding.\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Manish Singh\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1998\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Message to display in the dialog\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"gimp-message-get-handler\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"Returns the current state of where warning messages are displayed.\00", align 1
@.str.9 = private unnamed_addr constant [149 x i8] c"This procedure returns the way g_message warnings are displayed. They can be shown in a dialog box or printed on the console where gimp was started.\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"handler\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"The current handler type\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"gimp-message-set-handler\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Controls where warning messages are displayed.\00", align 1
@.str.14 = private unnamed_addr constant [146 x i8] c"This procedure controls how g_message warnings are displayed. They can be shown in a dialog box or printed on the console where gimp was started.\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"The new handler type\00", align 1

; Function Attrs: nounwind uwtable
define void @register_message_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @message_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %5, %struct._GimpProcedure* %6)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %8 = bitcast %struct._GimpProcedure* %7 to i8*
  call void @g_object_unref(i8* %8)
  %call4 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @message_get_handler_invoker)
  store %struct._GimpProcedure* %call4, %struct._GimpProcedure** %procedure, align 8
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %10 = bitcast %struct._GimpProcedure* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #3
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call7 = call i64 @gimp_message_handler_type_get_type() #3
  %call8 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i64 %call7, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %13, %struct._GParamSpec* %call8)
  %14 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %14, %struct._GimpProcedure* %15)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %17 = bitcast %struct._GimpProcedure* %16 to i8*
  call void @g_object_unref(i8* %17)
  %call9 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @message_set_handler_invoker)
  store %struct._GimpProcedure* %call9, %struct._GimpProcedure** %procedure, align 8
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %19 = bitcast %struct._GimpProcedure* %18 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #3
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call10)
  %20 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0))
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call12 = call i64 @gimp_message_handler_type_get_type() #3
  %call13 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i64 %call12, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %22, %struct._GParamSpec* %call13)
  %23 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %23, %struct._GimpProcedure* %24)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %26 = bitcast %struct._GimpProcedure* %25 to i8*
  call void @g_object_unref(i8* %26)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @message_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %message = alloca i8*, align 8
  %domain = alloca i8*, align 8
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
  store i8* null, i8** %domain, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 25
  %4 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %4, i32 0, i32 11
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  %tobool1 = icmp ne %struct._GimpPlugIn* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager3 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 25
  %7 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager3, align 8
  %current_plug_in4 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %7, i32 0, i32 11
  %8 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in4, align 8
  %call5 = call i8* @gimp_plug_in_get_undo_desc(%struct._GimpPlugIn* %8)
  store i8* %call5, i8** %domain, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %11 = bitcast %struct._GimpProgress* %10 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %13 = load i8*, i8** %domain, align 8
  %14 = load i8*, i8** %message, align 8
  call void @gimp_show_message(%struct._Gimp* %9, %struct._GObject* %12, i32 1, i8* %13, i8* %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %17, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %19, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond)
  ret %struct._GValueArray* %call9
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @message_get_handler_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %handler = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %handler, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %message_handler = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 10
  %1 = load i32, i32* %message_handler, align 4
  store i32 %1, i32* %handler, align 4
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load i32, i32* %handler, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx, i32 %5)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %6
}

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_handler_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @message_set_handler_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %handler = alloca i32, align 4
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
  %call = call i32 @g_value_get_enum(%struct._GValue* %arrayidx)
  store i32 %call, i32* %handler, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %handler, align 4
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %message_handler = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 10
  store i32 %3, i32* %message_handler, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool1 = icmp ne %struct._GError** %7, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call2 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  ret %struct._GValueArray* %call2
}

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i8* @gimp_plug_in_get_undo_desc(%struct._GimpPlugIn*) #1

declare void @gimp_show_message(%struct._Gimp*, %struct._GObject*, i32, i8*, i8*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
