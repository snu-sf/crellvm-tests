; ModuleID = './app/pdb/channel-cmds.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
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
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque

@.str = private unnamed_addr constant [17 x i8] c"gimp-channel-new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Create a new channel.\00", align 1
@.str.2 = private unnamed_addr constant [414 x i8] c"This procedure creates a new channel with the specified width and height. Name, opacity, and color are also supplied parameters. The new channel still needs to be added to the image, as this is not automatic. Add the new channel with the 'gimp-image-insert-channel' command. Other attributes such as channel show masked, should be set with explicit procedure calls. The channel's contents are undefined initially.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"The image to which to add the channel\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"The channel width\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"The channel height\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"The channel name\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"The channel opacity\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"The channel compositing color\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"The newly created channel\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"gimp-channel-new-from-component\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Create a new channel from a color component\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"This procedure creates a new channel from a color component.\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"Shlomi Fish <shlomif@iglu.org.il>\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Shlomi Fish\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"The image component\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"gimp-channel-copy\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Copy a channel.\00", align 1
@.str.29 = private unnamed_addr constant [66 x i8] c"This procedure copies the specified channel and returns the copy.\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"The channel to copy\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"channel-copy\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"channel copy\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"The newly copied channel\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"gimp-channel-combine-masks\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"Combine two channel masks.\00", align 1
@.str.36 = private unnamed_addr constant [86 x i8] c"This procedure combines two channel masks. The result is stored in the first channel.\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"channel1\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"The channel1\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"channel2\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"The channel2\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"The selection operation\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"offx\00", align 1
@.str.44 = private unnamed_addr constant [65 x i8] c"x offset between upper left corner of channels: (second - first)\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"offy\00", align 1
@.str.46 = private unnamed_addr constant [65 x i8] c"y offset between upper left corner of channels: (second - first)\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"gimp-channel-get-show-masked\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"Get the composite method of the specified channel.\00", align 1
@.str.49 = private unnamed_addr constant [199 x i8] c"This procedure returns the specified channel's composite method. If it is TRUE, then the channel is composited with the image so that masked regions are shown. Otherwise, selected regions are shown.\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"The channel\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"show-masked\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"show masked\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"The channel composite method\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"gimp-channel-set-show-masked\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"Set the composite method of the specified channel.\00", align 1
@.str.56 = private unnamed_addr constant [196 x i8] c"This procedure sets the specified channel's composite method. If it is TRUE, then the channel is composited with the image so that masked regions are shown. Otherwise, selected regions are shown.\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"The new channel composite method\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"gimp-channel-get-opacity\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"Get the opacity of the specified channel.\00", align 1
@.str.60 = private unnamed_addr constant [56 x i8] c"This procedure returns the specified channel's opacity.\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"gimp-channel-set-opacity\00", align 1
@.str.62 = private unnamed_addr constant [42 x i8] c"Set the opacity of the specified channel.\00", align 1
@.str.63 = private unnamed_addr constant [53 x i8] c"This procedure sets the specified channel's opacity.\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"The new channel opacity\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"gimp-channel-get-color\00", align 1
@.str.66 = private unnamed_addr constant [52 x i8] c"Get the compositing color of the specified channel.\00", align 1
@.str.67 = private unnamed_addr constant [66 x i8] c"This procedure returns the specified channel's compositing color.\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"gimp-channel-set-color\00", align 1
@.str.69 = private unnamed_addr constant [52 x i8] c"Set the compositing color of the specified channel.\00", align 1
@.str.70 = private unnamed_addr constant [63 x i8] c"This procedure sets the specified channel's compositing color.\00", align 1
@.str.71 = private unnamed_addr constant [34 x i8] c"The new channel compositing color\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"Combine Masks\00", align 1
@channel_get_color_invoker.color = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8

; Function Attrs: nounwind uwtable
define void @register_channel_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @channel_new_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([414 x i8], [414 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %7, %struct._GParamSpec* %call4)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %8, %struct._GParamSpec* %call5)
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call6 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %9, %struct._GParamSpec* %call6)
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %10, %struct._GParamSpec* %call7)
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %11, %struct._GParamSpec* %call8)
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %13 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp9 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp9, align 8
  %call10 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), %struct._Gimp* %14, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %12, %struct._GParamSpec* %call10)
  %15 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %15, %struct._GimpProcedure* %16)
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %18 = bitcast %struct._GimpProcedure* %17 to i8*
  call void @g_object_unref(i8* %18)
  %call11 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @channel_new_from_component_invoker)
  store %struct._GimpProcedure* %call11, %struct._GimpProcedure** %procedure, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %20 = bitcast %struct._GimpProcedure* %19 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_object_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call12)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0))
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* null)
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %24 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp14 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %24, i32 0, i32 1
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp14, align 8
  %call15 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %25, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %23, %struct._GParamSpec* %call15)
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call16 = call i64 @gimp_channel_type_get_type() #5
  %call17 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i64 %call16, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %26, %struct._GParamSpec* %call17)
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call18 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %27, %struct._GParamSpec* %call18)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %29 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp19 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %29, i32 0, i32 1
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), %struct._Gimp* %30, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %28, %struct._GParamSpec* %call20)
  %31 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %31, %struct._GimpProcedure* %32)
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %34 = bitcast %struct._GimpProcedure* %33 to i8*
  call void @g_object_unref(i8* %34)
  %call21 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @channel_copy_invoker)
  store %struct._GimpProcedure* %call21, %struct._GimpProcedure** %procedure, align 8
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %36 = bitcast %struct._GimpProcedure* %35 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_object_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call22)
  %37 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0))
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %40 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp24 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %40, i32 0, i32 1
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp24, align 8
  %call25 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), %struct._Gimp* %41, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %39, %struct._GParamSpec* %call25)
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %43 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp26 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %43, i32 0, i32 1
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp26, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %44, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %42, %struct._GParamSpec* %call27)
  %45 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %45, %struct._GimpProcedure* %46)
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %48 = bitcast %struct._GimpProcedure* %47 to i8*
  call void @g_object_unref(i8* %48)
  %call28 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @channel_combine_masks_invoker)
  store %struct._GimpProcedure* %call28, %struct._GimpProcedure** %procedure, align 8
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %50 = bitcast %struct._GimpProcedure* %49 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_object_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call29)
  %51 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0))
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %54 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp31 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %54, i32 0, i32 1
  %55 = load %struct._Gimp*, %struct._Gimp** %gimp31, align 8
  %call32 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), %struct._Gimp* %55, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %53, %struct._GParamSpec* %call32)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %57 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp33 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %57, i32 0, i32 1
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp33, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), %struct._Gimp* %58, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %56, %struct._GParamSpec* %call34)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call35 = call i64 @gimp_channel_ops_get_type() #5
  %call36 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i32 0, i32 0), i64 %call35, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %59, %struct._GParamSpec* %call36)
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call37 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %60, %struct._GParamSpec* %call37)
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call38 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.46, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %61, %struct._GParamSpec* %call38)
  %62 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %62, %struct._GimpProcedure* %63)
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %65 = bitcast %struct._GimpProcedure* %64 to i8*
  call void @g_object_unref(i8* %65)
  %call39 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @channel_get_show_masked_invoker)
  store %struct._GimpProcedure* %call39, %struct._GimpProcedure** %procedure, align 8
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %67 = bitcast %struct._GimpProcedure* %66 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_object_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call40)
  %68 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i32 0, i32 0))
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %71 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp42 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %71, i32 0, i32 1
  %72 = load %struct._Gimp*, %struct._Gimp** %gimp42, align 8
  %call43 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), %struct._Gimp* %72, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %70, %struct._GParamSpec* %call43)
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call44 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %73, %struct._GParamSpec* %call44)
  %74 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %74, %struct._GimpProcedure* %75)
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %77 = bitcast %struct._GimpProcedure* %76 to i8*
  call void @g_object_unref(i8* %77)
  %call45 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @channel_set_show_masked_invoker)
  store %struct._GimpProcedure* %call45, %struct._GimpProcedure** %procedure, align 8
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %79 = bitcast %struct._GimpProcedure* %78 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_object_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call46)
  %80 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i32 0, i32 0))
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([196 x i8], [196 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %83 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp48 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %83, i32 0, i32 1
  %84 = load %struct._Gimp*, %struct._Gimp** %gimp48, align 8
  %call49 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), %struct._Gimp* %84, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %82, %struct._GParamSpec* %call49)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call50 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %85, %struct._GParamSpec* %call50)
  %86 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %86, %struct._GimpProcedure* %87)
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %89 = bitcast %struct._GimpProcedure* %88 to i8*
  call void @g_object_unref(i8* %89)
  %call51 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @channel_get_opacity_invoker)
  store %struct._GimpProcedure* %call51, %struct._GimpProcedure** %procedure, align 8
  %90 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %91 = bitcast %struct._GimpProcedure* %90 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_object_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call52)
  %92 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i32 0, i32 0))
  %93 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %95 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp54 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %95, i32 0, i32 1
  %96 = load %struct._Gimp*, %struct._Gimp** %gimp54, align 8
  %call55 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), %struct._Gimp* %96, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %94, %struct._GParamSpec* %call55)
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call56 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %97, %struct._GParamSpec* %call56)
  %98 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %99 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %98, %struct._GimpProcedure* %99)
  %100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %101 = bitcast %struct._GimpProcedure* %100 to i8*
  call void @g_object_unref(i8* %101)
  %call57 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @channel_set_opacity_invoker)
  store %struct._GimpProcedure* %call57, %struct._GimpProcedure** %procedure, align 8
  %102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %103 = bitcast %struct._GimpProcedure* %102 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_object_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call58)
  %104 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i32 0, i32 0))
  %105 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %107 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp60 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %107, i32 0, i32 1
  %108 = load %struct._Gimp*, %struct._Gimp** %gimp60, align 8
  %call61 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), %struct._Gimp* %108, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %106, %struct._GParamSpec* %call61)
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call62 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %109, %struct._GParamSpec* %call62)
  %110 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %111 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %110, %struct._GimpProcedure* %111)
  %112 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %113 = bitcast %struct._GimpProcedure* %112 to i8*
  call void @g_object_unref(i8* %113)
  %call63 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @channel_get_color_invoker)
  store %struct._GimpProcedure* %call63, %struct._GimpProcedure** %procedure, align 8
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %115 = bitcast %struct._GimpProcedure* %114 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_object_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call64)
  %116 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.65, i32 0, i32 0))
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %118 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %119 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp66 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %119, i32 0, i32 1
  %120 = load %struct._Gimp*, %struct._Gimp** %gimp66, align 8
  %call67 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), %struct._Gimp* %120, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %118, %struct._GParamSpec* %call67)
  %121 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call68 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %121, %struct._GParamSpec* %call68)
  %122 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %122, %struct._GimpProcedure* %123)
  %124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %125 = bitcast %struct._GimpProcedure* %124 to i8*
  call void @g_object_unref(i8* %125)
  %call69 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @channel_set_color_invoker)
  store %struct._GimpProcedure* %call69, %struct._GimpProcedure** %procedure, align 8
  %126 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %127 = bitcast %struct._GimpProcedure* %126 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_object_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call70)
  %128 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0))
  %129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %130 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %131 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp72 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %131, i32 0, i32 1
  %132 = load %struct._Gimp*, %struct._Gimp** %gimp72, align 8
  %call73 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), %struct._Gimp* %132, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %130, %struct._GParamSpec* %call73)
  %133 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call74 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.71, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %133, %struct._GParamSpec* %call74)
  %134 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %135 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %134, %struct._GimpProcedure* %135)
  %136 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %137 = bitcast %struct._GimpProcedure* %136 to i8*
  call void @g_object_unref(i8* %137)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @channel_new_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %name = alloca i8*, align 8
  %opacity = alloca double, align 8
  %color = alloca %struct._GimpRGB, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %rgb_color = alloca %struct._GimpRGB, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpChannel* null, %struct._GimpChannel** %channel, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %width, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %height, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i8* @g_value_get_string(%struct._GValue* %arrayidx8)
  store i8* %call9, i8** %name, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %opacity, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  call void @gimp_value_get_rgb(%struct._GValue* %arrayidx14, %struct._GimpRGB* %color)
  %13 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %14 = bitcast %struct._GimpRGB* %rgb_color to i8*
  %15 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  %16 = load double, double* %opacity, align 8
  %div = fdiv double %16, 1.000000e+02
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb_color, i32 0, i32 3
  store double %div, double* %a, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  %20 = load i8*, i8** %name, align 8
  %call15 = call %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage* %17, i32 %18, i32 %19, i8* %20, %struct._GimpRGB* %rgb_color)
  store %struct._GimpChannel* %call15, %struct._GimpChannel** %channel, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool16 = icmp ne %struct._GimpChannel* %21, null
  br i1 %tobool16, label %if.end, label %if.then.17

if.then.17:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %entry
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %23 = load i32, i32* %success, align 4
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool19 = icmp ne %struct._GError** %24, null
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %26 = load %struct._GError*, %struct._GError** %25, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %26, %cond.true ], [ null, %cond.false ]
  %call20 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %22, i32 %23, %struct._GError* %cond)
  store %struct._GValueArray* %call20, %struct._GValueArray** %return_vals, align 8
  %27 = load i32, i32* %success, align 4
  %tobool21 = icmp ne i32 %27, 0
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %cond.end
  %28 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values23 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %28, i32 0, i32 1
  %29 = load %struct._GValue*, %struct._GValue** %values23, align 8
  %arrayidx24 = getelementptr inbounds %struct._GValue, %struct._GValue* %29, i64 1
  %30 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  call void @gimp_value_set_channel(%struct._GValue* %arrayidx24, %struct._GimpChannel* %30)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %cond.end
  %31 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %31
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_channel_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @channel_new_from_component_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %component = alloca i32, align 4
  %name = alloca i8*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpChannel* null, %struct._GimpChannel** %channel, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %component, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i8* @g_value_get_string(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %name, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load i32, i32* %component, align 4
  %call7 = call i32 @gimp_image_get_component_index(%struct._GimpImage* %8, i32 %9)
  %cmp = icmp ne i32 %call7, -1
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load i32, i32* %component, align 4
  %12 = load i8*, i8** %name, align 8
  %call9 = call %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage* %10, i32 %11, i8* %12, %struct._GimpRGB* null)
  store %struct._GimpChannel* %call9, %struct._GimpChannel** %channel, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool10 = icmp ne %struct._GimpChannel* %13, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %15 = bitcast %struct._GimpChannel* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  call void @gimp_item_set_visible(%struct._GimpItem* %16, i32 0, i32 0)
  br label %if.end.14

if.else:                                          ; preds = %if.end
  store i32 0, i32* %success, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool16 = icmp ne %struct._GError** %19, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call17 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  store %struct._GValueArray* %call17, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool18 = icmp ne i32 %22, 0
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values20 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values20, align 8
  %arrayidx21 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  call void @gimp_value_set_channel(%struct._GValue* %arrayidx21, %struct._GimpChannel* %25)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @channel_copy_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %channel_copy = alloca %struct._GimpChannel*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpChannel* null, %struct._GimpChannel** %channel_copy, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpChannel* %call, %struct._GimpChannel** %channel, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %5 = bitcast %struct._GimpChannel* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %call3 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %6)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call i32 @gimp_image_get_width(%struct._GimpImage* %7)
  store i32 %call4, i32* %width, align 4
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call i32 @gimp_image_get_height(%struct._GimpImage* %8)
  store i32 %call5, i32* %height, align 4
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %10 = bitcast %struct._GimpChannel* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_item_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpItem*
  %call8 = call i32 @gimp_item_get_width(%struct._GimpItem* %11)
  %12 = load i32, i32* %width, align 4
  %cmp = icmp eq i32 %call8, %12
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %call11 = call i32 @gimp_item_get_height(%struct._GimpItem* %15)
  %16 = load i32, i32* %height, align 4
  %cmp12 = icmp eq i32 %call11, %16
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %18 = bitcast %struct._GimpChannel* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call i64 @gimp_channel_get_type() #5
  %call17 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %19, i64 %call16)
  %20 = bitcast %struct._GimpItem* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_channel_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpChannel*
  store %struct._GimpChannel* %21, %struct._GimpChannel** %channel_copy, align 8
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel_copy, align 8
  %tobool20 = icmp ne %struct._GimpChannel* %22, null
  br i1 %tobool20, label %if.end, label %if.then.21

if.then.21:                                       ; preds = %if.then.13
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then.13
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %24 = load i32, i32* %success, align 4
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool24 = icmp ne %struct._GError** %25, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %27 = load %struct._GError*, %struct._GError** %26, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %27, %cond.true ], [ null, %cond.false ]
  %call25 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %23, i32 %24, %struct._GError* %cond)
  store %struct._GValueArray* %call25, %struct._GValueArray** %return_vals, align 8
  %28 = load i32, i32* %success, align 4
  %tobool26 = icmp ne i32 %28, 0
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %cond.end
  %29 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values28 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %29, i32 0, i32 1
  %30 = load %struct._GValue*, %struct._GValue** %values28, align 8
  %arrayidx29 = getelementptr inbounds %struct._GValue, %struct._GValue* %30, i64 1
  %31 = load %struct._GimpChannel*, %struct._GimpChannel** %channel_copy, align 8
  call void @gimp_value_set_channel(%struct._GValue* %arrayidx29, %struct._GimpChannel* %31)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %cond.end
  %32 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %32
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @channel_combine_masks_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %channel1 = alloca %struct._GimpChannel*, align 8
  %channel2 = alloca %struct._GimpChannel*, align 8
  %operation = alloca i32, align 4
  %offx = alloca i32, align 4
  %offy = alloca i32, align 4
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
  %call = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpChannel* %call, %struct._GimpChannel** %channel1, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpChannel* %call3, %struct._GimpChannel** %channel2, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %operation, align 4
  %8 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %8, i32 0, i32 1
  %9 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %offx, align 4
  %10 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 4
  %call12 = call i32 @g_value_get_int(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %offy, align 4
  %12 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel1, align 8
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i32 0, i32 0)) #3
  call void @gimp_channel_push_undo(%struct._GimpChannel* %13, i8* %call13)
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %channel1, align 8
  %15 = load %struct._GimpChannel*, %struct._GimpChannel** %channel2, align 8
  %16 = load i32, i32* %operation, align 4
  %17 = load i32, i32* %offx, align 4
  %18 = load i32, i32* %offy, align 4
  call void @gimp_channel_combine_mask(%struct._GimpChannel* %14, %struct._GimpChannel* %15, i32 %16, i32 %17, i32 %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %20 = load i32, i32* %success, align 4
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %21, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %23 = load %struct._GError*, %struct._GError** %22, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %23, %cond.true ], [ null, %cond.false ]
  %call15 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %19, i32 %20, %struct._GError* %cond)
  ret %struct._GValueArray* %call15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_ops_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @channel_get_show_masked_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %show_masked = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %show_masked, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpChannel* %call, %struct._GimpChannel** %channel, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %call1 = call i32 @gimp_channel_get_show_masked(%struct._GimpChannel* %4)
  store i32 %call1, i32* %show_masked, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool2 = icmp ne %struct._GError** %7, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call3 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i32, i32* %show_masked, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @channel_set_show_masked_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %channel = alloca %struct._GimpChannel*, align 8
  %show_masked = alloca i32, align 4
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
  %call = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpChannel* %call, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %show_masked, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %7 = load i32, i32* %show_masked, align 4
  call void @gimp_channel_set_show_masked(%struct._GimpChannel* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %10, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  ret %struct._GValueArray* %call5
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @channel_get_opacity_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %opacity = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %opacity, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpChannel* %call, %struct._GimpChannel** %channel, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %call1 = call double @gimp_channel_get_opacity(%struct._GimpChannel* %4)
  %mul = fmul double %call1, 1.000000e+02
  store double %mul, double* %opacity, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool2 = icmp ne %struct._GError** %7, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call3 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load double, double* %opacity, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx7, double %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @channel_set_opacity_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %channel = alloca %struct._GimpChannel*, align 8
  %opacity = alloca double, align 8
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
  %call = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpChannel* %call, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %opacity, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %7 = load double, double* %opacity, align 8
  %div = fdiv double %7, 1.000000e+02
  call void @gimp_channel_set_opacity(%struct._GimpChannel* %6, double %div, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %10, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  ret %struct._GValueArray* %call5
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @channel_get_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @channel_get_color_invoker.color to i8*), i64 32, i32 8, i1 false)
  %1 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 1
  %2 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i64 0
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx, %struct._Gimp* %3)
  store %struct._GimpChannel* %call, %struct._GimpChannel** %channel, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  call void @gimp_channel_get_color(%struct._GimpChannel* %5, %struct._GimpRGB* %color)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color, double 1.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool1 = icmp ne %struct._GError** %8, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call2 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call2, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values5 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values5, align 8
  %arrayidx6 = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  call void @gimp_value_set_rgb(%struct._GValue* %arrayidx6, %struct._GimpRGB* %color)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @channel_set_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %channel = alloca %struct._GimpChannel*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %rgb_color = alloca %struct._GimpRGB, align 8
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
  %call = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpChannel* %call, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  call void @gimp_value_get_rgb(%struct._GValue* %arrayidx2, %struct._GimpRGB* %color)
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = bitcast %struct._GimpRGB* %rgb_color to i8*
  %7 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %color3 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %8, i32 0, i32 1
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color3, i32 0, i32 3
  %9 = load double, double* %a, align 8
  %a4 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb_color, i32 0, i32 3
  store double %9, double* %a4, align 8
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  call void @gimp_channel_set_color(%struct._GimpChannel* %10, %struct._GimpRGB* %rgb_color, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %13, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  ret %struct._GValueArray* %call6
}

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare void @gimp_value_get_rgb(%struct._GValue*, %struct._GimpRGB*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage*, i32, i32, i8*, %struct._GimpRGB*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @gimp_value_set_channel(%struct._GValue*, %struct._GimpChannel*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @gimp_image_get_component_index(%struct._GimpImage*, i32) #1

declare %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage*, i32, i8*, %struct._GimpRGB*) #1

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue*, %struct._Gimp*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

declare void @gimp_channel_push_undo(%struct._GimpChannel*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_channel_combine_mask(%struct._GimpChannel*, %struct._GimpChannel*, i32, i32, i32) #1

declare i32 @gimp_channel_get_show_masked(%struct._GimpChannel*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare void @gimp_channel_set_show_masked(%struct._GimpChannel*, i32) #1

declare double @gimp_channel_get_opacity(%struct._GimpChannel*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @gimp_channel_set_opacity(%struct._GimpChannel*, double, i32) #1

declare void @gimp_channel_get_color(%struct._GimpChannel*, %struct._GimpRGB*) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare void @gimp_value_set_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare void @gimp_channel_set_color(%struct._GimpChannel*, %struct._GimpRGB*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
