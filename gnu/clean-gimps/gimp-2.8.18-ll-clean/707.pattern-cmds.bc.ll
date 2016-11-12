; ModuleID = './app/pdb/pattern-cmds.bc'
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [22 x i8] c"gimp-pattern-get-info\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Retrieve information about the specified pattern.\00", align 1
@.str.2 = private unnamed_addr constant [120 x i8] c"This procedure retrieves information about the specified pattern. This includes the pattern extents (width and height).\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"The pattern name.\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"The pattern width\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"The pattern height\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"bpp\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"The pattern bpp\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"gimp-pattern-get-pixels\00", align 1
@.str.15 = private unnamed_addr constant [69 x i8] c"Retrieve information about the specified pattern (including pixels).\00", align 1
@.str.16 = private unnamed_addr constant [140 x i8] c"This procedure retrieves information about the specified. This includes the pattern extents (width and height), its bpp and its pixel data.\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"num-color-bytes\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"num color bytes\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Number of pattern bytes\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"color-bytes\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"color bytes\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"The pattern data.\00", align 1

; Function Attrs: nounwind uwtable
define void @register_pattern_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @pattern_get_info_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %5, %struct._GParamSpec* %call4)
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %6, %struct._GParamSpec* %call5)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call6 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %7, %struct._GParamSpec* %call6)
  %8 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %8, %struct._GimpProcedure* %9)
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %11 = bitcast %struct._GimpProcedure* %10 to i8*
  call void @g_object_unref(i8* %11)
  %call7 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @pattern_get_pixels_invoker)
  store %struct._GimpProcedure* %call7, %struct._GimpProcedure** %procedure, align 8
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %13 = bitcast %struct._GimpProcedure* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_object_get_type() #3
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0))
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call10 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %16, %struct._GParamSpec* %call10)
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call11 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %17, %struct._GParamSpec* %call11)
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call12 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %18, %struct._GParamSpec* %call12)
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %19, %struct._GParamSpec* %call13)
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %20, %struct._GParamSpec* %call14)
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call15 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %21, %struct._GParamSpec* %call15)
  %22 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %22, %struct._GimpProcedure* %23)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %25 = bitcast %struct._GimpProcedure* %24 to i8*
  call void @g_object_unref(i8* %25)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @pattern_get_info_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %pattern = alloca %struct._GimpPattern*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  store i32 0, i32* %bpp, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpPattern* @gimp_pdb_get_pattern(%struct._Gimp* %3, i8* %4, %struct._GError** %5)
  store %struct._GimpPattern* %call1, %struct._GimpPattern** %pattern, align 8
  %6 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %tobool2 = icmp ne %struct._GimpPattern* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %7, i32 0, i32 1
  %8 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width4 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 1
  %9 = load i32, i32* %width4, align 4
  store i32 %9, i32* %width, align 4
  %10 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask5 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %10, i32 0, i32 1
  %11 = load %struct._TempBuf*, %struct._TempBuf** %mask5, align 8
  %height6 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %11, i32 0, i32 2
  %12 = load i32, i32* %height6, align 4
  store i32 %12, i32* %height, align 4
  %13 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask7 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %13, i32 0, i32 1
  %14 = load %struct._TempBuf*, %struct._TempBuf** %mask7, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 0
  %15 = load i32, i32* %bytes, align 4
  store i32 %15, i32* %bpp, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %18, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  store %struct._GValueArray* %call10, %struct._GValueArray** %return_vals, align 8
  %21 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %21, 0
  br i1 %tobool11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %cond.end
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %22, i32 0, i32 1
  %23 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i64 1
  %24 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx14, i32 %24)
  %25 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %25, i32 0, i32 1
  %26 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %26, i64 2
  %27 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx16, i32 %27)
  %28 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values17 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %28, i32 0, i32 1
  %29 = load %struct._GValue*, %struct._GValue** %values17, align 8
  %arrayidx18 = getelementptr inbounds %struct._GValue, %struct._GValue* %29, i64 3
  %30 = load i32, i32* %bpp, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx18, i32 %30)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.12, %cond.end
  %31 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %31
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

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @pattern_get_pixels_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %num_color_bytes = alloca i32, align 4
  %color_bytes = alloca i8*, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  store i32 0, i32* %bpp, align 4
  store i32 0, i32* %num_color_bytes, align 4
  store i8* null, i8** %color_bytes, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpPattern* @gimp_pdb_get_pattern(%struct._Gimp* %3, i8* %4, %struct._GError** %5)
  store %struct._GimpPattern* %call1, %struct._GimpPattern** %pattern, align 8
  %6 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %tobool2 = icmp ne %struct._GimpPattern* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %7, i32 0, i32 1
  %8 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width4 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 1
  %9 = load i32, i32* %width4, align 4
  store i32 %9, i32* %width, align 4
  %10 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask5 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %10, i32 0, i32 1
  %11 = load %struct._TempBuf*, %struct._TempBuf** %mask5, align 8
  %height6 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %11, i32 0, i32 2
  %12 = load i32, i32* %height6, align 4
  store i32 %12, i32* %height, align 4
  %13 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask7 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %13, i32 0, i32 1
  %14 = load %struct._TempBuf*, %struct._TempBuf** %mask7, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 0
  %15 = load i32, i32* %bytes, align 4
  store i32 %15, i32* %bpp, align 4
  %16 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask8 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %16, i32 0, i32 1
  %17 = load %struct._TempBuf*, %struct._TempBuf** %mask8, align 8
  %height9 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %17, i32 0, i32 2
  %18 = load i32, i32* %height9, align 4
  %19 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask10 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %19, i32 0, i32 1
  %20 = load %struct._TempBuf*, %struct._TempBuf** %mask10, align 8
  %width11 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %20, i32 0, i32 1
  %21 = load i32, i32* %width11, align 4
  %mul = mul nsw i32 %18, %21
  %22 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask12 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %22, i32 0, i32 1
  %23 = load %struct._TempBuf*, %struct._TempBuf** %mask12, align 8
  %bytes13 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %23, i32 0, i32 0
  %24 = load i32, i32* %bytes13, align 4
  %mul14 = mul nsw i32 %mul, %24
  store i32 %mul14, i32* %num_color_bytes, align 4
  %25 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask15 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %25, i32 0, i32 1
  %26 = load %struct._TempBuf*, %struct._TempBuf** %mask15, align 8
  %call16 = call i8* @temp_buf_get_data(%struct._TempBuf* %26)
  %27 = load i32, i32* %num_color_bytes, align 4
  %call17 = call noalias i8* @g_memdup(i8* %call16, i32 %27)
  store i8* %call17, i8** %color_bytes, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %entry
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %29 = load i32, i32* %success, align 4
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool19 = icmp ne %struct._GError** %30, null
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %32 = load %struct._GError*, %struct._GError** %31, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %32, %cond.true ], [ null, %cond.false ]
  %call20 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %28, i32 %29, %struct._GError* %cond)
  store %struct._GValueArray* %call20, %struct._GValueArray** %return_vals, align 8
  %33 = load i32, i32* %success, align 4
  %tobool21 = icmp ne i32 %33, 0
  br i1 %tobool21, label %if.then.22, label %if.end.33

if.then.22:                                       ; preds = %cond.end
  %34 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values23 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %34, i32 0, i32 1
  %35 = load %struct._GValue*, %struct._GValue** %values23, align 8
  %arrayidx24 = getelementptr inbounds %struct._GValue, %struct._GValue* %35, i64 1
  %36 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx24, i32 %36)
  %37 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values25 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %37, i32 0, i32 1
  %38 = load %struct._GValue*, %struct._GValue** %values25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GValue, %struct._GValue* %38, i64 2
  %39 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx26, i32 %39)
  %40 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values27 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %40, i32 0, i32 1
  %41 = load %struct._GValue*, %struct._GValue** %values27, align 8
  %arrayidx28 = getelementptr inbounds %struct._GValue, %struct._GValue* %41, i64 3
  %42 = load i32, i32* %bpp, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx28, i32 %42)
  %43 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values29 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %43, i32 0, i32 1
  %44 = load %struct._GValue*, %struct._GValue** %values29, align 8
  %arrayidx30 = getelementptr inbounds %struct._GValue, %struct._GValue* %44, i64 4
  %45 = load i32, i32* %num_color_bytes, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx30, i32 %45)
  %46 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %46, i32 0, i32 1
  %47 = load %struct._GValue*, %struct._GValue** %values31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GValue, %struct._GValue* %47, i64 5
  %48 = load i8*, i8** %color_bytes, align 8
  %49 = load i32, i32* %num_color_bytes, align 4
  %conv = sext i32 %49 to i64
  call void @gimp_value_take_int8array(%struct._GValue* %arrayidx32, i8* %48, i64 %conv)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.22, %cond.end
  %50 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %50
}

declare %struct._GParamSpec* @gimp_param_spec_int8_array(i8*, i8*, i8*, i32) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare %struct._GimpPattern* @gimp_pdb_get_pattern(%struct._Gimp*, i8*, %struct._GError**) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare void @gimp_value_take_int8array(%struct._GValue*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
