; ModuleID = './app/pdb/buffer-cmds.bc'
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
%struct._GimpBuffer = type { %struct._GimpViewable, %struct._TileManager*, i32, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TileManager = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
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

@.str = private unnamed_addr constant [22 x i8] c"gimp-buffers-get-list\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Retrieve a complete listing of the available buffers.\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"This procedure returns a complete listing of available named buffers.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"An optional regular expression used to filter the list\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"num-buffers\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"num buffers\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"The number of buffers\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"buffer-list\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"buffer list\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"The list of buffer names\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"gimp-buffer-rename\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Renames a named buffer.\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"This procedure renames a named buffer.\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"buffer-name\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"buffer name\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"The buffer name\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"new-name\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"new name\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"The buffer's new name\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"real-name\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"real name\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"The real name given to the buffer\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"gimp-buffer-delete\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"Deletes a named buffer.\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"This procedure deletes a named buffer.\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"David Gowers <neota@softhome.net>\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"gimp-buffer-get-width\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"Retrieves the specified buffer's width.\00", align 1
@.str.32 = private unnamed_addr constant [61 x i8] c"This procedure retrieves the specified named buffer's width.\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"The buffer width\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"gimp-buffer-get-height\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"Retrieves the specified buffer's height.\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"This procedure retrieves the specified named buffer's height.\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"The buffer height\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"gimp-buffer-get-bytes\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"Retrieves the specified buffer's bytes.\00", align 1
@.str.42 = private unnamed_addr constant [61 x i8] c"This procedure retrieves the specified named buffer's bytes.\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"The buffer bpp\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"gimp-buffer-get-image-type\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"Retrieves the specified buffer's image type.\00", align 1
@.str.47 = private unnamed_addr constant [66 x i8] c"This procedure retrieves the specified named buffer's image type.\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"image-type\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"image type\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"The buffer image type\00", align 1

; Function Attrs: nounwind uwtable
define void @register_buffer_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @buffers_get_list_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 1, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %5, %struct._GParamSpec* %call4)
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_string_array(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %6, %struct._GParamSpec* %call5)
  %7 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %7, %struct._GimpProcedure* %8)
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %10 = bitcast %struct._GimpProcedure* %9 to i8*
  call void @g_object_unref(i8* %10)
  %call6 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @buffer_rename_invoker)
  store %struct._GimpProcedure* %call6, %struct._GimpProcedure** %procedure, align 8
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %12 = bitcast %struct._GimpProcedure* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0))
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call9 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %15, %struct._GParamSpec* %call9)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call10 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %16, %struct._GParamSpec* %call10)
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call11 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %17, %struct._GParamSpec* %call11)
  %18 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %18, %struct._GimpProcedure* %19)
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %21 = bitcast %struct._GimpProcedure* %20 to i8*
  call void @g_object_unref(i8* %21)
  %call12 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @buffer_delete_invoker)
  store %struct._GimpProcedure* %call12, %struct._GimpProcedure** %procedure, align 8
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %23 = bitcast %struct._GimpProcedure* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_object_get_type() #3
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0))
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call15 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %26, %struct._GParamSpec* %call15)
  %27 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %27, %struct._GimpProcedure* %28)
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %30 = bitcast %struct._GimpProcedure* %29 to i8*
  call void @g_object_unref(i8* %30)
  %call16 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @buffer_get_width_invoker)
  store %struct._GimpProcedure* %call16, %struct._GimpProcedure** %procedure, align 8
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %32 = bitcast %struct._GimpProcedure* %31 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_object_get_type() #3
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call17)
  %33 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0))
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %35, %struct._GParamSpec* %call19)
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %36, %struct._GParamSpec* %call20)
  %37 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %37, %struct._GimpProcedure* %38)
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %40 = bitcast %struct._GimpProcedure* %39 to i8*
  call void @g_object_unref(i8* %40)
  %call21 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @buffer_get_height_invoker)
  store %struct._GimpProcedure* %call21, %struct._GimpProcedure** %procedure, align 8
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %42 = bitcast %struct._GimpProcedure* %41 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_object_get_type() #3
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call22)
  %43 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0))
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call24 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %45, %struct._GParamSpec* %call24)
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call25 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %46, %struct._GParamSpec* %call25)
  %47 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %47, %struct._GimpProcedure* %48)
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %50 = bitcast %struct._GimpProcedure* %49 to i8*
  call void @g_object_unref(i8* %50)
  %call26 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @buffer_get_bytes_invoker)
  store %struct._GimpProcedure* %call26, %struct._GimpProcedure** %procedure, align 8
  %51 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %52 = bitcast %struct._GimpProcedure* %51 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_object_get_type() #3
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call27)
  %53 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0))
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call29 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %55, %struct._GParamSpec* %call29)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call30 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %56, %struct._GParamSpec* %call30)
  %57 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %57, %struct._GimpProcedure* %58)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %60 = bitcast %struct._GimpProcedure* %59 to i8*
  call void @g_object_unref(i8* %60)
  %call31 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @buffer_get_image_type_invoker)
  store %struct._GimpProcedure* %call31, %struct._GimpProcedure** %procedure, align 8
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %62 = bitcast %struct._GimpProcedure* %61 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_object_get_type() #3
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call32)
  %63 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0))
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %65, %struct._GParamSpec* %call34)
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call35 = call i64 @gimp_image_base_type_get_type() #3
  %call36 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0), i64 %call35, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %66, %struct._GParamSpec* %call36)
  %67 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %67, %struct._GimpProcedure* %68)
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %70 = bitcast %struct._GimpProcedure* %69 to i8*
  call void @g_object_unref(i8* %70)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @buffers_get_list_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %filter = alloca i8*, align 8
  %num_buffers = alloca i32, align 4
  %buffer_list = alloca i8**, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_buffers, align 4
  store i8** null, i8*** %buffer_list, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %filter, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %named_buffers = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 35
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers, align 8
  %5 = load i8*, i8** %filter, align 8
  %call1 = call i8** @gimp_container_get_filtered_name_array(%struct._GimpContainer* %4, i8* %5, i32* %num_buffers)
  store i8** %call1, i8*** %buffer_list, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool2 = icmp ne %struct._GError** %8, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call3 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %11, 0
  br i1 %tobool4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load i32, i32* %num_buffers, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx7, i32 %14)
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values8 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values8, align 8
  %arrayidx9 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 2
  %17 = load i8**, i8*** %buffer_list, align 8
  %18 = load i32, i32* %num_buffers, align 4
  %conv = sext i32 %18 to i64
  call void @gimp_value_take_stringarray(%struct._GValue* %arrayidx9, i8** %17, i64 %conv)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_string_array(i8*, i8*, i8*, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @buffer_rename_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %buffer_name = alloca i8*, align 8
  %new_name = alloca i8*, align 8
  %real_name = alloca i8*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %real_name, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %buffer_name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %new_name, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %buffer_name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpBuffer* @gimp_pdb_get_buffer(%struct._Gimp* %5, i8* %6, %struct._GError** %7)
  store %struct._GimpBuffer* %call4, %struct._GimpBuffer** %buffer, align 8
  %8 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool5 = icmp ne %struct._GimpBuffer* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %10 = bitcast %struct._GimpBuffer* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  %12 = load i8*, i8** %new_name, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %11, i8* %12)
  %13 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %14 = bitcast %struct._GimpBuffer* %13 to i8*
  %call9 = call i8* @gimp_object_get_name(i8* %14)
  %call10 = call noalias i8* @g_strdup(i8* %call9)
  store i8* %call10, i8** %real_name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %17, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %19, %cond.true ], [ null, %cond.false ]
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond)
  store %struct._GValueArray* %call13, %struct._GValueArray** %return_vals, align 8
  %20 = load i32, i32* %success, align 4
  %tobool14 = icmp ne i32 %20, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 1
  %23 = load i8*, i8** %real_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx17, i8* %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %cond.end
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @buffer_delete_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %buffer_name = alloca i8*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
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
  store i8* %call, i8** %buffer_name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %buffer_name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBuffer* @gimp_pdb_get_buffer(%struct._Gimp* %3, i8* %4, %struct._GError** %5)
  store %struct._GimpBuffer* %call1, %struct._GimpBuffer** %buffer, align 8
  %6 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool2 = icmp ne %struct._GimpBuffer* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %named_buffers = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 35
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers, align 8
  %9 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %10 = bitcast %struct._GimpBuffer* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_object_get_type() #3
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpObject*
  %call6 = call i32 @gimp_container_remove(%struct._GimpContainer* %8, %struct._GimpObject* %11)
  store i32 %call6, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
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
define internal %struct._GValueArray* @buffer_get_width_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %buffer_name = alloca i8*, align 8
  %width = alloca i32, align 4
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %width, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %buffer_name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %buffer_name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBuffer* @gimp_pdb_get_buffer(%struct._Gimp* %3, i8* %4, %struct._GError** %5)
  store %struct._GimpBuffer* %call1, %struct._GimpBuffer** %buffer, align 8
  %6 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool2 = icmp ne %struct._GimpBuffer* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call4 = call i32 @gimp_buffer_get_width(%struct._GimpBuffer* %7)
  store i32 %call4, i32* %width, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %10, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  store %struct._GValueArray* %call7, %struct._GValueArray** %return_vals, align 8
  %13 = load i32, i32* %success, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx11, i32 %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @buffer_get_height_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %buffer_name = alloca i8*, align 8
  %height = alloca i32, align 4
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %height, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %buffer_name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %buffer_name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBuffer* @gimp_pdb_get_buffer(%struct._Gimp* %3, i8* %4, %struct._GError** %5)
  store %struct._GimpBuffer* %call1, %struct._GimpBuffer** %buffer, align 8
  %6 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool2 = icmp ne %struct._GimpBuffer* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call4 = call i32 @gimp_buffer_get_height(%struct._GimpBuffer* %7)
  store i32 %call4, i32* %height, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %10, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  store %struct._GValueArray* %call7, %struct._GValueArray** %return_vals, align 8
  %13 = load i32, i32* %success, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx11, i32 %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @buffer_get_bytes_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %buffer_name = alloca i8*, align 8
  %bytes = alloca i32, align 4
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %bytes, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %buffer_name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %buffer_name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBuffer* @gimp_pdb_get_buffer(%struct._Gimp* %3, i8* %4, %struct._GError** %5)
  store %struct._GimpBuffer* %call1, %struct._GimpBuffer** %buffer, align 8
  %6 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool2 = icmp ne %struct._GimpBuffer* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call4 = call i32 @gimp_buffer_get_bytes(%struct._GimpBuffer* %7)
  store i32 %call4, i32* %bytes, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %10, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  store %struct._GValueArray* %call7, %struct._GValueArray** %return_vals, align 8
  %13 = load i32, i32* %success, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load i32, i32* %bytes, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx11, i32 %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @buffer_get_image_type_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %buffer_name = alloca i8*, align 8
  %image_type = alloca i32, align 4
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %image_type, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %buffer_name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %buffer_name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBuffer* @gimp_pdb_get_buffer(%struct._Gimp* %3, i8* %4, %struct._GError** %5)
  store %struct._GimpBuffer* %call1, %struct._GimpBuffer** %buffer, align 8
  %6 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool2 = icmp ne %struct._GimpBuffer* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call4 = call i32 @gimp_buffer_get_image_type(%struct._GimpBuffer* %7)
  store i32 %call4, i32* %image_type, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %10, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  store %struct._GValueArray* %call7, %struct._GValueArray** %return_vals, align 8
  %13 = load i32, i32* %success, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load i32, i32* %image_type, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx11, i32 %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_base_type_get_type() #2

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i8** @gimp_container_get_filtered_name_array(%struct._GimpContainer*, i8*, i32*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @gimp_value_take_stringarray(%struct._GValue*, i8**, i64) #1

declare %struct._GimpBuffer* @gimp_pdb_get_buffer(%struct._Gimp*, i8*, %struct._GError**) #1

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i32 @gimp_buffer_get_width(%struct._GimpBuffer*) #1

declare i32 @gimp_buffer_get_height(%struct._GimpBuffer*) #1

declare i32 @gimp_buffer_get_bytes(%struct._GimpBuffer*) #1

declare i32 @gimp_buffer_get_image_type(%struct._GimpBuffer*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
