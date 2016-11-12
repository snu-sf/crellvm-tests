; ModuleID = './app/pdb/palette-select-cmds.bc'
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
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GHashTable = type opaque
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [20 x i8] c"gimp-palettes-popup\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Invokes the Gimp palette selection.\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"This procedure opens the palette selection dialog.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2002\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"palette-callback\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"palette callback\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"The callback PDB proc to call when palette selection is made\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"popup-title\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"popup title\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Title of the palette selection dialog\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"initial-palette\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"initial palette\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"The name of the palette to set as the first selected\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"gimp-palettes-close-popup\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Close the palette selection dialog.\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"This procedure closes an opened palette selection dialog.\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"The name of the callback registered for this pop-up\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"gimp-palettes-set-popup\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"Sets the current palette in a palette selection dialog.\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"palette-name\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"palette name\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"The name of the palette to set as selected\00", align 1

; Function Attrs: nounwind uwtable
define void @register_palette_select_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palettes_popup_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %5, %struct._GParamSpec* %call4)
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 1, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %6, %struct._GParamSpec* %call5)
  %7 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %7, %struct._GimpProcedure* %8)
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %10 = bitcast %struct._GimpProcedure* %9 to i8*
  call void @g_object_unref(i8* %10)
  %call6 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palettes_close_popup_invoker)
  store %struct._GimpProcedure* %call6, %struct._GimpProcedure** %procedure, align 8
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %12 = bitcast %struct._GimpProcedure* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0))
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call9 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %15, %struct._GParamSpec* %call9)
  %16 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %16, %struct._GimpProcedure* %17)
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %19 = bitcast %struct._GimpProcedure* %18 to i8*
  call void @g_object_unref(i8* %19)
  %call10 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palettes_set_popup_invoker)
  store %struct._GimpProcedure* %call10, %struct._GimpProcedure** %procedure, align 8
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %21 = bitcast %struct._GimpProcedure* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #3
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0))
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %24, %struct._GParamSpec* %call13)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %25, %struct._GParamSpec* %call14)
  %26 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %26, %struct._GimpProcedure* %27)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %29 = bitcast %struct._GimpProcedure* %28 to i8*
  call void @g_object_unref(i8* %29)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palettes_popup_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %palette_callback = alloca i8*, align 8
  %popup_title = alloca i8*, align 8
  %initial_palette = alloca i8*, align 8
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
  store i8* %call, i8** %palette_callback, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %popup_title, align 8
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i8* @g_value_get_string(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %initial_palette, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 7
  %8 = load i32, i32* %no_interface, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %9, i32 0, i32 44
  %10 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %11 = load i8*, i8** %palette_callback, align 8
  %call8 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %10, i8* %11)
  %tobool9 = icmp ne %struct._GimpProcedure* %call8, null
  br i1 %tobool9, label %lor.lhs.false.10, label %if.then.14

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 41
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %call11 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %16)
  %17 = load i8*, i8** %popup_title, align 8
  %18 = load i8*, i8** %palette_callback, align 8
  %19 = load i8*, i8** %initial_palette, align 8
  %call12 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, ...) @gimp_pdb_dialog_new(%struct._Gimp* %12, %struct._GimpContext* %13, %struct._GimpProgress* %14, %struct._GimpContainer* %call11, i8* %17, i8* %18, i8* %19, i8* null)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end, label %if.then.14

if.then.14:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %lor.lhs.false.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %21 = load i32, i32* %success, align 4
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool16 = icmp ne %struct._GError** %22, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %24 = load %struct._GError*, %struct._GError** %23, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %24, %cond.true ], [ null, %cond.false ]
  %call17 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %20, i32 %21, %struct._GError* %cond)
  ret %struct._GValueArray* %call17
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
define internal %struct._GValueArray* @palettes_close_popup_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %palette_callback = alloca i8*, align 8
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
  store i8* %call, i8** %palette_callback, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 7
  %4 = load i32, i32* %no_interface, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 44
  %6 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %7 = load i8*, i8** %palette_callback, align 8
  %call2 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %6, i8* %7)
  %tobool3 = icmp ne %struct._GimpProcedure* %call2, null
  br i1 %tobool3, label %lor.lhs.false.4, label %if.then.8

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %9, i32 0, i32 41
  %10 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %call5 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %10)
  %11 = load i8*, i8** %palette_callback, align 8
  %call6 = call i32 @gimp_pdb_dialog_close(%struct._Gimp* %8, %struct._GimpContainer* %call5, i8* %11)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %lor.lhs.false.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool10 = icmp ne %struct._GError** %14, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call11
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palettes_set_popup_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %palette_callback = alloca i8*, align 8
  %palette_name = alloca i8*, align 8
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
  store i8* %call, i8** %palette_callback, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %palette_name, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 7
  %6 = load i32, i32* %no_interface, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 44
  %8 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %9 = load i8*, i8** %palette_callback, align 8
  %call5 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %8, i8* %9)
  %tobool6 = icmp ne %struct._GimpProcedure* %call5, null
  br i1 %tobool6, label %lor.lhs.false.7, label %if.then.11

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 41
  %12 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %call8 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %12)
  %13 = load i8*, i8** %palette_callback, align 8
  %14 = load i8*, i8** %palette_name, align 8
  %call9 = call i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, ...) @gimp_pdb_dialog_set(%struct._Gimp* %10, %struct._GimpContainer* %call8, i8* %13, i8* %14, i8* null)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %lor.lhs.false.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool13 = icmp ne %struct._GError** %17, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %19, %cond.true ], [ null, %cond.false ]
  %call14 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond)
  ret %struct._GValueArray* %call14
}

declare i8* @g_value_get_string(%struct._GValue*) #1

declare %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB*, i8*) #1

declare i32 @gimp_pdb_dialog_new(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, ...) #1

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare i32 @gimp_pdb_dialog_close(%struct._Gimp*, %struct._GimpContainer*, i8*) #1

declare i32 @gimp_pdb_dialog_set(%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
