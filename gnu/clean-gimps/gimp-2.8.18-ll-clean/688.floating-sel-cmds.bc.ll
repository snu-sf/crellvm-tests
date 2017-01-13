; ModuleID = './app/pdb/floating-sel-cmds.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GHashTable = type opaque
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpContext = type opaque
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }

@.str = private unnamed_addr constant [25 x i8] c"gimp-floating-sel-remove\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Remove the specified floating selection from its associated drawable.\00", align 1
@.str.2 = private unnamed_addr constant [131 x i8] c"This procedure removes the floating selection completely, without any side effects. The associated drawable is then set to active.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"floating-sel\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"floating sel\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"The floating selection\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"gimp-floating-sel-anchor\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"Anchor the specified floating selection to its associated drawable.\00", align 1
@.str.10 = private unnamed_addr constant [211 x i8] c"This procedure anchors the floating selection to its associated drawable. This is similar to merging with a merge type of ClipToBottomLayer. The floating selection layer is no longer valid after this operation.\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"gimp-floating-sel-to-layer\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"Transforms the specified floating selection into a layer.\00", align 1
@.str.13 = private unnamed_addr constant [525 x i8] c"This procedure transforms the specified floating selection into a layer with the same offsets and extents. The composited image will look precisely the same, but the floating selection layer will no longer be clipped to the extents of the drawable it was attached to. The floating selection will become the active layer. This procedure will not work if the floating selection has a different base type from the underlying image. This might be the case if the floating selection is above an auxillary channel or a layer mask.\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"gimp-floating-sel-attach\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"Attach the specified layer as floating to the specified drawable.\00", align 1
@.str.16 = private unnamed_addr constant [73 x i8] c"This procedure attaches the layer as floating selection to the drawable.\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"The layer (is attached as floating selection)\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"The drawable (where to attach the floating selection)\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"gimp-floating-sel-rigor\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"Deprecated: There is no replacement for this procedure.\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"undo\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"gimp-floating-sel-relax\00", align 1
@.str.27 = private unnamed_addr constant [65 x i8] c"Cannot remove this layer because it is not a floating selection.\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"Cannot anchor this layer because it is not a floating selection.\00", align 1
@.str.29 = private unnamed_addr constant [84 x i8] c"Cannot convert this layer to a normal layer because it is not a floating selection.\00", align 1

; Function Attrs: nounwind uwtable
define void @register_floating_sel_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @floating_sel_remove_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %7, %struct._GimpProcedure* %8)
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %10 = bitcast %struct._GimpProcedure* %9 to i8*
  call void @g_object_unref(i8* %10)
  %call4 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @floating_sel_anchor_invoker)
  store %struct._GimpProcedure* %call4, %struct._GimpProcedure** %procedure, align 8
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %12 = bitcast %struct._GimpProcedure* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %16 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp7 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp7, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %17, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %15, %struct._GParamSpec* %call8)
  %18 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %18, %struct._GimpProcedure* %19)
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %21 = bitcast %struct._GimpProcedure* %20 to i8*
  call void @g_object_unref(i8* %21)
  %call9 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @floating_sel_to_layer_invoker)
  store %struct._GimpProcedure* %call9, %struct._GimpProcedure** %procedure, align 8
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %23 = bitcast %struct._GimpProcedure* %22 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call10)
  %24 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0))
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([525 x i8], [525 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %27 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp12 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %27, i32 0, i32 1
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %28, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %26, %struct._GParamSpec* %call13)
  %29 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %29, %struct._GimpProcedure* %30)
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %32 = bitcast %struct._GimpProcedure* %31 to i8*
  call void @g_object_unref(i8* %32)
  %call14 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @floating_sel_attach_invoker)
  store %struct._GimpProcedure* %call14, %struct._GimpProcedure** %procedure, align 8
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %34 = bitcast %struct._GimpProcedure* %33 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_object_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call15)
  %35 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0))
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %38 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp17 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %38, i32 0, i32 1
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp17, align 8
  %call18 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0), %struct._Gimp* %39, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %37, %struct._GParamSpec* %call18)
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %41 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp19 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %41, i32 0, i32 1
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), %struct._Gimp* %42, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %40, %struct._GParamSpec* %call20)
  %43 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %43, %struct._GimpProcedure* %44)
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %46 = bitcast %struct._GimpProcedure* %45 to i8*
  call void @g_object_unref(i8* %46)
  %call21 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @floating_sel_rigor_invoker)
  store %struct._GimpProcedure* %call21, %struct._GimpProcedure** %procedure, align 8
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %48 = bitcast %struct._GimpProcedure* %47 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_object_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call22)
  %49 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0))
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0))
  %51 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %52 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp24 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %52, i32 0, i32 1
  %53 = load %struct._Gimp*, %struct._Gimp** %gimp24, align 8
  %call25 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %53, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %51, %struct._GParamSpec* %call25)
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call26 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %54, %struct._GParamSpec* %call26)
  %55 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %55, %struct._GimpProcedure* %56)
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %58 = bitcast %struct._GimpProcedure* %57 to i8*
  call void @g_object_unref(i8* %58)
  %call27 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @floating_sel_relax_invoker)
  store %struct._GimpProcedure* %call27, %struct._GimpProcedure** %procedure, align 8
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %60 = bitcast %struct._GimpProcedure* %59 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_object_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call28)
  %61 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0))
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0))
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %64 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp30 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %64, i32 0, i32 1
  %65 = load %struct._Gimp*, %struct._Gimp** %gimp30, align 8
  %call31 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %65, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %63, %struct._GParamSpec* %call31)
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call32 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %66, %struct._GParamSpec* %call32)
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
define internal %struct._GValueArray* @floating_sel_remove_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %floating_sel = alloca %struct._GimpLayer*, align 8
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
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %floating_sel, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %call1 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %6 = bitcast %struct._GimpLayer* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %call6 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %7)
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  call void @gimp_image_remove_layer(%struct._GimpImage* %call6, %struct._GimpLayer* %8, i32 1, %struct._GimpLayer* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_error_quark() #4
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.27, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %9, i32 %call7, i32 3, i8* %call8)
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool10 = icmp ne %struct._GError** %12, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  ret %struct._GValueArray* %call11
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_layer_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @floating_sel_anchor_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %floating_sel = alloca %struct._GimpLayer*, align 8
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
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %floating_sel, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %call1 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  call void @floating_sel_anchor(%struct._GimpLayer* %5)
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_error_quark() #4
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %6, i32 %call4, i32 3, i8* %call5)
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %8 = load i32, i32* %success, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool7 = icmp ne %struct._GError** %9, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %11, %cond.true ], [ null, %cond.false ]
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %7, i32 %8, %struct._GError* %cond)
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @floating_sel_to_layer_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %floating_sel = alloca %struct._GimpLayer*, align 8
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
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %floating_sel, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %call1 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @floating_sel_to_layer(%struct._GimpLayer* %5, %struct._GError** %6)
  store i32 %call4, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call5 = call i32 @gimp_pdb_error_quark() #4
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.29, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %7, i32 %call5, i32 3, i8* %call6)
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %10, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  ret %struct._GValueArray* %call9
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @floating_sel_attach_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpDrawable* %call3, %struct._GimpDrawable** %drawable, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %8 = bitcast %struct._GimpDrawable* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %9, %struct._GimpImage* null, i32 1, %struct._GError** %10)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %12 = bitcast %struct._GimpDrawable* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %13, %struct._GError** %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @floating_sel_attach(%struct._GimpLayer* %15, %struct._GimpDrawable* %16)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %19, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call15 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  ret %struct._GValueArray* %call15
}

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @floating_sel_rigor_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %2 = load i32, i32* %success, align 4
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool1 = icmp ne %struct._GError** %3, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %5 = load %struct._GError*, %struct._GError** %4, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %5, %cond.true ], [ null, %cond.false ]
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %1, i32 %2, %struct._GError* %cond)
  ret %struct._GValueArray* %call
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @floating_sel_relax_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %2 = load i32, i32* %success, align 4
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool1 = icmp ne %struct._GError** %3, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %5 = load %struct._GError*, %struct._GError** %4, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %5, %cond.true ], [ null, %cond.false ]
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %1, i32 %2, %struct._GError* %cond)
  ret %struct._GValueArray* %call
}

declare %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue*, %struct._Gimp*) #1

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #1

declare void @gimp_image_remove_layer(%struct._GimpImage*, %struct._GimpLayer*, i32, %struct._GimpLayer*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_pdb_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @floating_sel_anchor(%struct._GimpLayer*) #1

declare i32 @floating_sel_to_layer(%struct._GimpLayer*, %struct._GError**) #1

declare %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue*, %struct._Gimp*) #1

declare i32 @gimp_pdb_item_is_attached(%struct._GimpItem*, %struct._GimpImage*, i32, %struct._GError**) #1

declare i32 @gimp_pdb_item_is_not_group(%struct._GimpItem*, %struct._GError**) #1

declare void @floating_sel_attach(%struct._GimpLayer*, %struct._GimpDrawable*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
