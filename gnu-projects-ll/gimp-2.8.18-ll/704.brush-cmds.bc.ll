; ModuleID = './app/pdb/brush-cmds.bc'
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GHashTable = type opaque
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpBrushGenerated = type { %struct._GimpBrush, i32, float, i32, float, float, float }

@.str = private unnamed_addr constant [15 x i8] c"gimp-brush-new\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Creates a new brush\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"This procedure creates a new, uninitialized brush\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"The requested name of the new brush\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"actual-name\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"actual name\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"The actual new brush name\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"gimp-brush-duplicate\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Duplicates a brush\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"This procedure creates an identical brush by a different name\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"The brush name\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"copy-name\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"copy name\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"The name of the brush's copy\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"gimp-brush-is-generated\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Tests if brush is generated\00", align 1
@.str.20 = private unnamed_addr constant [64 x i8] c"Returns TRUE if this brush is parametric, FALSE for other types\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Bill Skaggs <weskaggs@primate.ucdavis.edu>\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Bill Skaggs\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"generated\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"TRUE if the brush is generated\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"gimp-brush-rename\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Rename a brush\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"This procedure renames a brush\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"new-name\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"new name\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"The new name of the brush\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"The actual new name of the brush\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"gimp-brush-delete\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"Deletes a brush\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"This procedure deletes a brush\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"gimp-brush-is-editable\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"Tests if brush can be edited\00", align 1
@.str.37 = private unnamed_addr constant [56 x i8] c"Returns TRUE if you have permission to change the brush\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"editable\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"TRUE if the brush can be edited\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"gimp-brush-get-info\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"Retrieve information about the specified brush.\00", align 1
@.str.42 = private unnamed_addr constant [136 x i8] c"This procedure retrieves information about the specified brush. This includes the brush name, and the brush extents (width and height).\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"The brush width\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"The brush height\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"mask-bpp\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"mask bpp\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"The brush mask bpp\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"color-bpp\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"color bpp\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"The brush color bpp\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"gimp-brush-get-pixels\00", align 1
@.str.54 = private unnamed_addr constant [136 x i8] c"This procedure retrieves information about the specified brush. This includes the brush extents (width and height) and its pixels data.\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"num-mask-bytes\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"num mask bytes\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"Length of brush mask data\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"mask-bytes\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"mask bytes\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"The brush mask data\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"num-color-bytes\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"num color bytes\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"Length of brush color data\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"color-bytes\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"color bytes\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"The brush color data\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"gimp-brush-get-spacing\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"Get the brush spacing.\00", align 1
@.str.69 = private unnamed_addr constant [198 x i8] c"This procedure returns the spacing setting for the specified brush. The return value is an integer between 0 and 1000 which represents percentage of the maximum of the width and height of the mask.\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"The brush spacing\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"gimp-brush-set-spacing\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"Set the brush spacing.\00", align 1
@.str.74 = private unnamed_addr constant [119 x i8] c"This procedure modifies the spacing setting for the specified brush. The value should be a integer between 0 and 1000.\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"gimp-brush-get-shape\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"Get the shape of a generated brush.\00", align 1
@.str.77 = private unnamed_addr constant [320 x i8] c"This procedure gets the shape value for a generated brush. If called for any other type of brush, it does not succeed. The current possibilities are Circle (GIMP_BRUSH_GENERATED_CIRCLE), Square (GIMP_BRUSH_GENERATED_SQUARE), and Diamond (GIMP_BRUSH_GENERATED_DIAMOND). Other shapes are likely to be added in the future.\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"The brush shape\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"gimp-brush-set-shape\00", align 1
@.str.81 = private unnamed_addr constant [36 x i8] c"Set the shape of a generated brush.\00", align 1
@.str.82 = private unnamed_addr constant [320 x i8] c"This procedure sets the shape value for a generated brush. If called for any other type of brush, it does not succeed. The current possibilities are Circle (GIMP_BRUSH_GENERATED_CIRCLE), Square (GIMP_BRUSH_GENERATED_SQUARE), and Diamond (GIMP_BRUSH_GENERATED_DIAMOND). Other shapes are likely to be added in the future.\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"shape-in\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"shape in\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"shape-out\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"shape out\00", align 1
@.str.87 = private unnamed_addr constant [34 x i8] c"The brush shape actually assigned\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"gimp-brush-get-radius\00", align 1
@.str.89 = private unnamed_addr constant [37 x i8] c"Get the radius of a generated brush.\00", align 1
@.str.90 = private unnamed_addr constant [120 x i8] c"This procedure gets the radius value for a generated brush. If called for any other type of brush, it does not succeed.\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.92 = private unnamed_addr constant [34 x i8] c"The radius of the brush in pixels\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"gimp-brush-set-radius\00", align 1
@.str.94 = private unnamed_addr constant [37 x i8] c"Set the radius of a generated brush.\00", align 1
@.str.95 = private unnamed_addr constant [114 x i8] c"This procedure sets the radius for a generated brush. If called for any other type of brush, it does not succeed.\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"radius-in\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"radius in\00", align 1
@.str.98 = private unnamed_addr constant [25 x i8] c"The desired brush radius\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"radius-out\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"radius out\00", align 1
@.str.101 = private unnamed_addr constant [35 x i8] c"The brush radius actually assigned\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"gimp-brush-get-spikes\00", align 1
@.str.103 = private unnamed_addr constant [48 x i8] c"Get the number of spikes for a generated brush.\00", align 1
@.str.104 = private unnamed_addr constant [124 x i8] c"This procedure gets the number of spikes for a generated brush. If called for any other type of brush, it does not succeed.\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"spikes\00", align 1
@.str.106 = private unnamed_addr constant [35 x i8] c"The number of spikes on the brush.\00", align 1
@.str.107 = private unnamed_addr constant [22 x i8] c"gimp-brush-set-spikes\00", align 1
@.str.108 = private unnamed_addr constant [48 x i8] c"Set the number of spikes for a generated brush.\00", align 1
@.str.109 = private unnamed_addr constant [124 x i8] c"This procedure sets the number of spikes for a generated brush. If called for any other type of brush, it does not succeed.\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"spikes-in\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"spikes in\00", align 1
@.str.112 = private unnamed_addr constant [29 x i8] c"The desired number of spikes\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"spikes-out\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"spikes out\00", align 1
@.str.115 = private unnamed_addr constant [39 x i8] c"The number of spikes actually assigned\00", align 1
@.str.116 = private unnamed_addr constant [24 x i8] c"gimp-brush-get-hardness\00", align 1
@.str.117 = private unnamed_addr constant [39 x i8] c"Get the hardness of a generated brush.\00", align 1
@.str.118 = private unnamed_addr constant [204 x i8] c"This procedure gets the hardness of a generated brush. The hardness of a brush is the amount its intensity fades at the outside edge. If called for any other type of brush, the function does not succeed.\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"hardness\00", align 1
@.str.120 = private unnamed_addr constant [27 x i8] c"The hardness of the brush.\00", align 1
@.str.121 = private unnamed_addr constant [24 x i8] c"gimp-brush-set-hardness\00", align 1
@.str.122 = private unnamed_addr constant [39 x i8] c"Set the hardness of a generated brush.\00", align 1
@.str.123 = private unnamed_addr constant [116 x i8] c"This procedure sets the hardness for a generated brush. If called for any other type of brush, it does not succeed.\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"hardness-in\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"hardness in\00", align 1
@.str.126 = private unnamed_addr constant [27 x i8] c"The desired brush hardness\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"hardness-out\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"hardness out\00", align 1
@.str.129 = private unnamed_addr constant [37 x i8] c"The brush hardness actually assigned\00", align 1
@.str.130 = private unnamed_addr constant [28 x i8] c"gimp-brush-get-aspect-ratio\00", align 1
@.str.131 = private unnamed_addr constant [43 x i8] c"Get the aspect ratio of a generated brush.\00", align 1
@.str.132 = private unnamed_addr constant [119 x i8] c"This procedure gets the aspect ratio of a generated brush. If called for any other type of brush, it does not succeed.\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"aspect-ratio\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"aspect ratio\00", align 1
@.str.135 = private unnamed_addr constant [31 x i8] c"The aspect ratio of the brush.\00", align 1
@.str.136 = private unnamed_addr constant [28 x i8] c"gimp-brush-set-aspect-ratio\00", align 1
@.str.137 = private unnamed_addr constant [43 x i8] c"Set the aspect ratio of a generated brush.\00", align 1
@.str.138 = private unnamed_addr constant [120 x i8] c"This procedure sets the aspect ratio for a generated brush. If called for any other type of brush, it does not succeed.\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"aspect-ratio-in\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"aspect ratio in\00", align 1
@.str.141 = private unnamed_addr constant [31 x i8] c"The desired brush aspect ratio\00", align 1
@.str.142 = private unnamed_addr constant [17 x i8] c"aspect-ratio-out\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"aspect ratio out\00", align 1
@.str.144 = private unnamed_addr constant [41 x i8] c"The brush aspect ratio actually assigned\00", align 1
@.str.145 = private unnamed_addr constant [21 x i8] c"gimp-brush-get-angle\00", align 1
@.str.146 = private unnamed_addr constant [45 x i8] c"Get the rotation angle of a generated brush.\00", align 1
@.str.147 = private unnamed_addr constant [125 x i8] c"This procedure gets the angle of rotation for a generated brush. If called for any other type of brush, it does not succeed.\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.149 = private unnamed_addr constant [33 x i8] c"The rotation angle of the brush.\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"gimp-brush-set-angle\00", align 1
@.str.151 = private unnamed_addr constant [45 x i8] c"Set the rotation angle of a generated brush.\00", align 1
@.str.152 = private unnamed_addr constant [122 x i8] c"This procedure sets the rotation angle for a generated brush. If called for any other type of brush, it does not succeed.\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"angle-in\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"angle in\00", align 1
@.str.155 = private unnamed_addr constant [33 x i8] c"The desired brush rotation angle\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"angle-out\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"angle out\00", align 1
@.str.158 = private unnamed_addr constant [43 x i8] c"The brush rotation angle actually assigned\00", align 1

; Function Attrs: nounwind uwtable
define void @register_brush_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_new_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %5, %struct._GParamSpec* %call4)
  %6 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %6, %struct._GimpProcedure* %7)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %9 = bitcast %struct._GimpProcedure* %8 to i8*
  call void @g_object_unref(i8* %9)
  %call5 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_duplicate_invoker)
  store %struct._GimpProcedure* %call5, %struct._GimpProcedure** %procedure, align 8
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %11 = bitcast %struct._GimpProcedure* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %14, %struct._GParamSpec* %call8)
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call9 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %15, %struct._GParamSpec* %call9)
  %16 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %16, %struct._GimpProcedure* %17)
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %19 = bitcast %struct._GimpProcedure* %18 to i8*
  call void @g_object_unref(i8* %19)
  %call10 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_is_generated_invoker)
  store %struct._GimpProcedure* %call10, %struct._GimpProcedure** %procedure, align 8
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %21 = bitcast %struct._GimpProcedure* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0))
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %24, %struct._GParamSpec* %call13)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %25, %struct._GParamSpec* %call14)
  %26 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %26, %struct._GimpProcedure* %27)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %29 = bitcast %struct._GimpProcedure* %28 to i8*
  call void @g_object_unref(i8* %29)
  %call15 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_rename_invoker)
  store %struct._GimpProcedure* %call15, %struct._GimpProcedure** %procedure, align 8
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %31 = bitcast %struct._GimpProcedure* %30 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_object_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call16)
  %32 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0))
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call18 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %34, %struct._GParamSpec* %call18)
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %35, %struct._GParamSpec* %call19)
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %36, %struct._GParamSpec* %call20)
  %37 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %37, %struct._GimpProcedure* %38)
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %40 = bitcast %struct._GimpProcedure* %39 to i8*
  call void @g_object_unref(i8* %40)
  %call21 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_delete_invoker)
  store %struct._GimpProcedure* %call21, %struct._GimpProcedure** %procedure, align 8
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %42 = bitcast %struct._GimpProcedure* %41 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_object_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call22)
  %43 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0))
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call24 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %45, %struct._GParamSpec* %call24)
  %46 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %46, %struct._GimpProcedure* %47)
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %49 = bitcast %struct._GimpProcedure* %48 to i8*
  call void @g_object_unref(i8* %49)
  %call25 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_is_editable_invoker)
  store %struct._GimpProcedure* %call25, %struct._GimpProcedure** %procedure, align 8
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %51 = bitcast %struct._GimpProcedure* %50 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_object_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call26)
  %52 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0))
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %54, %struct._GParamSpec* %call28)
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call29 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %55, %struct._GParamSpec* %call29)
  %56 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %56, %struct._GimpProcedure* %57)
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %59 = bitcast %struct._GimpProcedure* %58 to i8*
  call void @g_object_unref(i8* %59)
  %call30 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_get_info_invoker)
  store %struct._GimpProcedure* %call30, %struct._GimpProcedure** %procedure, align 8
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %61 = bitcast %struct._GimpProcedure* %60 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_object_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call31)
  %62 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0))
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %64, %struct._GParamSpec* %call33)
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %65, %struct._GParamSpec* %call34)
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call35 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %66, %struct._GParamSpec* %call35)
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call36 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %67, %struct._GParamSpec* %call36)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call37 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %68, %struct._GParamSpec* %call37)
  %69 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %69, %struct._GimpProcedure* %70)
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %72 = bitcast %struct._GimpProcedure* %71 to i8*
  call void @g_object_unref(i8* %72)
  %call38 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_get_pixels_invoker)
  store %struct._GimpProcedure* %call38, %struct._GimpProcedure** %procedure, align 8
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = bitcast %struct._GimpProcedure* %73 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_object_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call39)
  %75 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0))
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call41 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %77, %struct._GParamSpec* %call41)
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call42 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %78, %struct._GParamSpec* %call42)
  %79 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call43 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %79, %struct._GParamSpec* %call43)
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call44 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %80, %struct._GParamSpec* %call44)
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call45 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %81, %struct._GParamSpec* %call45)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call46 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %82, %struct._GParamSpec* %call46)
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call47 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %83, %struct._GParamSpec* %call47)
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call48 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %84, %struct._GParamSpec* %call48)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call49 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %85, %struct._GParamSpec* %call49)
  %86 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %86, %struct._GimpProcedure* %87)
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %89 = bitcast %struct._GimpProcedure* %88 to i8*
  call void @g_object_unref(i8* %89)
  %call50 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_get_spacing_invoker)
  store %struct._GimpProcedure* %call50, %struct._GimpProcedure** %procedure, align 8
  %90 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %91 = bitcast %struct._GimpProcedure* %90 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_object_get_type() #4
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call51)
  %92 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i32 0, i32 0))
  %93 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call53 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %94, %struct._GParamSpec* %call53)
  %95 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call54 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i32 0, i32 0), i32 0, i32 1000, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %95, %struct._GParamSpec* %call54)
  %96 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %96, %struct._GimpProcedure* %97)
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %99 = bitcast %struct._GimpProcedure* %98 to i8*
  call void @g_object_unref(i8* %99)
  %call55 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_set_spacing_invoker)
  store %struct._GimpProcedure* %call55, %struct._GimpProcedure** %procedure, align 8
  %100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %101 = bitcast %struct._GimpProcedure* %100 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_object_get_type() #4
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call56)
  %102 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i32 0, i32 0))
  %103 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call58 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %104, %struct._GParamSpec* %call58)
  %105 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call59 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i32 0, i32 0), i32 0, i32 1000, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %105, %struct._GParamSpec* %call59)
  %106 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %106, %struct._GimpProcedure* %107)
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %109 = bitcast %struct._GimpProcedure* %108 to i8*
  call void @g_object_unref(i8* %109)
  %call60 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_get_shape_invoker)
  store %struct._GimpProcedure* %call60, %struct._GimpProcedure** %procedure, align 8
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %111 = bitcast %struct._GimpProcedure* %110 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_object_get_type() #4
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call61)
  %112 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i32 0, i32 0))
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([320 x i8], [320 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call63 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %114, %struct._GParamSpec* %call63)
  %115 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call64 = call i64 @gimp_brush_generated_shape_get_type() #4
  %call65 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), i64 %call64, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %115, %struct._GParamSpec* %call65)
  %116 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %116, %struct._GimpProcedure* %117)
  %118 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %119 = bitcast %struct._GimpProcedure* %118 to i8*
  call void @g_object_unref(i8* %119)
  %call66 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_set_shape_invoker)
  store %struct._GimpProcedure* %call66, %struct._GimpProcedure** %procedure, align 8
  %120 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %121 = bitcast %struct._GimpProcedure* %120 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_object_get_type() #4
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call67)
  %122 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0))
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %123, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([320 x i8], [320 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call69 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %124, %struct._GParamSpec* %call69)
  %125 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call70 = call i64 @gimp_brush_generated_shape_get_type() #4
  %call71 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), i64 %call70, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %125, %struct._GParamSpec* %call71)
  %126 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call72 = call i64 @gimp_brush_generated_shape_get_type() #4
  %call73 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.87, i32 0, i32 0), i64 %call72, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %126, %struct._GParamSpec* %call73)
  %127 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %128 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %127, %struct._GimpProcedure* %128)
  %129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %130 = bitcast %struct._GimpProcedure* %129 to i8*
  call void @g_object_unref(i8* %130)
  %call74 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_get_radius_invoker)
  store %struct._GimpProcedure* %call74, %struct._GimpProcedure** %procedure, align 8
  %131 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %132 = bitcast %struct._GimpProcedure* %131 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_object_get_type() #4
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call75)
  %133 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.88, i32 0, i32 0))
  %134 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %135 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call77 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %135, %struct._GParamSpec* %call77)
  %136 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call78 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.92, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %136, %struct._GParamSpec* %call78)
  %137 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %137, %struct._GimpProcedure* %138)
  %139 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %140 = bitcast %struct._GimpProcedure* %139 to i8*
  call void @g_object_unref(i8* %140)
  %call79 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_set_radius_invoker)
  store %struct._GimpProcedure* %call79, %struct._GimpProcedure** %procedure, align 8
  %141 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %142 = bitcast %struct._GimpProcedure* %141 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_object_get_type() #4
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call80)
  %143 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %143, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.93, i32 0, i32 0))
  %144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %145 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call82 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %145, %struct._GParamSpec* %call82)
  %146 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call83 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.98, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %146, %struct._GParamSpec* %call83)
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call84 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.101, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %147, %struct._GParamSpec* %call84)
  %148 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %149 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %148, %struct._GimpProcedure* %149)
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %151 = bitcast %struct._GimpProcedure* %150 to i8*
  call void @g_object_unref(i8* %151)
  %call85 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_get_spikes_invoker)
  store %struct._GimpProcedure* %call85, %struct._GimpProcedure** %procedure, align 8
  %152 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %153 = bitcast %struct._GimpProcedure* %152 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_object_get_type() #4
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call86)
  %154 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.102, i32 0, i32 0))
  %155 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %156 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call88 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %156, %struct._GParamSpec* %call88)
  %157 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call89 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.106, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %157, %struct._GParamSpec* %call89)
  %158 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %159 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %158, %struct._GimpProcedure* %159)
  %160 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %161 = bitcast %struct._GimpProcedure* %160 to i8*
  call void @g_object_unref(i8* %161)
  %call90 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_set_spikes_invoker)
  store %struct._GimpProcedure* %call90, %struct._GimpProcedure** %procedure, align 8
  %162 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %163 = bitcast %struct._GimpProcedure* %162 to %struct._GTypeInstance*
  %call91 = call i64 @gimp_object_get_type() #4
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 %call91)
  %164 = bitcast %struct._GTypeInstance* %call92 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.107, i32 0, i32 0))
  %165 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %165, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %166 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call93 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %166, %struct._GParamSpec* %call93)
  %167 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call94 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.112, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %167, %struct._GParamSpec* %call94)
  %168 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call95 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.115, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %168, %struct._GParamSpec* %call95)
  %169 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %170 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %169, %struct._GimpProcedure* %170)
  %171 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %172 = bitcast %struct._GimpProcedure* %171 to i8*
  call void @g_object_unref(i8* %172)
  %call96 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_get_hardness_invoker)
  store %struct._GimpProcedure* %call96, %struct._GimpProcedure** %procedure, align 8
  %173 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %174 = bitcast %struct._GimpProcedure* %173 to %struct._GTypeInstance*
  %call97 = call i64 @gimp_object_get_type() #4
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %174, i64 %call97)
  %175 = bitcast %struct._GTypeInstance* %call98 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %175, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.116, i32 0, i32 0))
  %176 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %176, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %177 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call99 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %177, %struct._GParamSpec* %call99)
  %178 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call100 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.120, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %178, %struct._GParamSpec* %call100)
  %179 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %180 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %179, %struct._GimpProcedure* %180)
  %181 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %182 = bitcast %struct._GimpProcedure* %181 to i8*
  call void @g_object_unref(i8* %182)
  %call101 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_set_hardness_invoker)
  store %struct._GimpProcedure* %call101, %struct._GimpProcedure** %procedure, align 8
  %183 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %184 = bitcast %struct._GimpProcedure* %183 to %struct._GTypeInstance*
  %call102 = call i64 @gimp_object_get_type() #4
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %184, i64 %call102)
  %185 = bitcast %struct._GTypeInstance* %call103 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.121, i32 0, i32 0))
  %186 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %186, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %187 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call104 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %187, %struct._GParamSpec* %call104)
  %188 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call105 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.126, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %188, %struct._GParamSpec* %call105)
  %189 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call106 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.129, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %189, %struct._GParamSpec* %call106)
  %190 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %191 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %190, %struct._GimpProcedure* %191)
  %192 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %193 = bitcast %struct._GimpProcedure* %192 to i8*
  call void @g_object_unref(i8* %193)
  %call107 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_get_aspect_ratio_invoker)
  store %struct._GimpProcedure* %call107, %struct._GimpProcedure** %procedure, align 8
  %194 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %195 = bitcast %struct._GimpProcedure* %194 to %struct._GTypeInstance*
  %call108 = call i64 @gimp_object_get_type() #4
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %195, i64 %call108)
  %196 = bitcast %struct._GTypeInstance* %call109 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %196, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.130, i32 0, i32 0))
  %197 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %198 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call110 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %198, %struct._GParamSpec* %call110)
  %199 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call111 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.135, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %199, %struct._GParamSpec* %call111)
  %200 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %201 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %200, %struct._GimpProcedure* %201)
  %202 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %203 = bitcast %struct._GimpProcedure* %202 to i8*
  call void @g_object_unref(i8* %203)
  %call112 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_set_aspect_ratio_invoker)
  store %struct._GimpProcedure* %call112, %struct._GimpProcedure** %procedure, align 8
  %204 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %205 = bitcast %struct._GimpProcedure* %204 to %struct._GTypeInstance*
  %call113 = call i64 @gimp_object_get_type() #4
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %205, i64 %call113)
  %206 = bitcast %struct._GTypeInstance* %call114 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %206, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.136, i32 0, i32 0))
  %207 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %207, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %208 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call115 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %208, %struct._GParamSpec* %call115)
  %209 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call116 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.141, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %209, %struct._GParamSpec* %call116)
  %210 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call117 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.144, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %210, %struct._GParamSpec* %call117)
  %211 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %212 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %211, %struct._GimpProcedure* %212)
  %213 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %214 = bitcast %struct._GimpProcedure* %213 to i8*
  call void @g_object_unref(i8* %214)
  %call118 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_get_angle_invoker)
  store %struct._GimpProcedure* %call118, %struct._GimpProcedure** %procedure, align 8
  %215 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %216 = bitcast %struct._GimpProcedure* %215 to %struct._GTypeInstance*
  %call119 = call i64 @gimp_object_get_type() #4
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %216, i64 %call119)
  %217 = bitcast %struct._GTypeInstance* %call120 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %217, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.145, i32 0, i32 0))
  %218 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %218, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %219 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call121 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %219, %struct._GParamSpec* %call121)
  %220 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call122 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.149, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %220, %struct._GParamSpec* %call122)
  %221 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %222 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %221, %struct._GimpProcedure* %222)
  %223 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %224 = bitcast %struct._GimpProcedure* %223 to i8*
  call void @g_object_unref(i8* %224)
  %call123 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brush_set_angle_invoker)
  store %struct._GimpProcedure* %call123, %struct._GimpProcedure** %procedure, align 8
  %225 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %226 = bitcast %struct._GimpProcedure* %225 to %struct._GTypeInstance*
  %call124 = call i64 @gimp_object_get_type() #4
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %226, i64 %call124)
  %227 = bitcast %struct._GTypeInstance* %call125 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %227, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.150, i32 0, i32 0))
  %228 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %228, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %229 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call126 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %229, %struct._GParamSpec* %call126)
  %230 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call127 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.155, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %230, %struct._GParamSpec* %call127)
  %231 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call128 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.158, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %231, %struct._GParamSpec* %call128)
  %232 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %233 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %232, %struct._GimpProcedure* %233)
  %234 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %235 = bitcast %struct._GimpProcedure* %234 to i8*
  call void @g_object_unref(i8* %235)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_new_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %actual_name = alloca i8*, align 8
  %data = alloca %struct._GimpData*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %actual_name, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 37
  %4 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %call1 = call %struct._GimpData* @gimp_data_factory_data_new(%struct._GimpDataFactory* %4, %struct._GimpContext* %5, i8* %6)
  store %struct._GimpData* %call1, %struct._GimpData** %data, align 8
  %7 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool2 = icmp ne %struct._GimpData* %7, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %8 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %9 = bitcast %struct._GimpData* %8 to i8*
  %call4 = call i8* @gimp_object_get_name(i8* %9)
  %call5 = call noalias i8* @g_strdup(i8* %call4)
  store i8* %call5, i8** %actual_name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool7 = icmp ne %struct._GError** %12, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call8, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values11 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values11, align 8
  %arrayidx12 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i8*, i8** %actual_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx12, i8* %18)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %cond.end
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

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_duplicate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %copy_name = alloca i8*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %brush_copy = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %copy_name, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool2 = icmp ne %struct._GimpBrush* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else.11

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 37
  %8 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %10 = bitcast %struct._GimpBrush* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_data_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpData*
  %call6 = call %struct._GimpData* @gimp_data_factory_data_duplicate(%struct._GimpDataFactory* %8, %struct._GimpData* %11)
  %12 = bitcast %struct._GimpData* %call6 to %struct._GimpBrush*
  store %struct._GimpBrush* %12, %struct._GimpBrush** %brush_copy, align 8
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush_copy, align 8
  %tobool7 = icmp ne %struct._GimpBrush* %13, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.3
  %14 = load %struct._GimpBrush*, %struct._GimpBrush** %brush_copy, align 8
  %15 = bitcast %struct._GimpBrush* %14 to i8*
  %call9 = call i8* @gimp_object_get_name(i8* %15)
  %call10 = call noalias i8* @g_strdup(i8* %call9)
  store i8* %call10, i8** %copy_name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.3
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.12

if.else.11:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %18, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call15 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  store %struct._GValueArray* %call15, %struct._GValueArray** %return_vals, align 8
  %21 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %21, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %cond.end
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %22, i32 0, i32 1
  %23 = load %struct._GValue*, %struct._GValue** %values18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i64 1
  %24 = load i8*, i8** %copy_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx19, i8* %24)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %cond.end
  %25 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_is_generated_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %generated = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %generated, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool2 = icmp ne %struct._GimpBrush* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else.13

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %8 = bitcast %struct._GimpBrush* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call4 = call i64 @gimp_brush_generated_get_type() #4
  store i64 %call4, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool5 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.then.3
  store i32 0, i32* %__r, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.then.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool7 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool7, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.10:                                       ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #5
  store i32 %call11, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.6
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  store i32 %19, i32* %generated, align 4
  br label %if.end.14

if.else.13:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.end.12
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
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
  store %struct._GValueArray* %call17, %struct._GValueArray** %return_vals, align 8
  %25 = load i32, i32* %success, align 4
  %tobool18 = icmp ne i32 %25, 0
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values20 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %26, i32 0, i32 1
  %27 = load %struct._GValue*, %struct._GValue** %values20, align 8
  %arrayidx21 = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i64 1
  %28 = load i32, i32* %generated, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx21, i32 %28)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %cond.end
  %29 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %29
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_rename_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %new_name = alloca i8*, align 8
  %actual_name = alloca i8*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %actual_name, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
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
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp* %5, i8* %6, i32 1, %struct._GError** %7)
  store %struct._GimpBrush* %call4, %struct._GimpBrush** %brush, align 8
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool5 = icmp ne %struct._GimpBrush* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %10 = bitcast %struct._GimpBrush* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  %12 = load i8*, i8** %new_name, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %11, i8* %12)
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %14 = bitcast %struct._GimpBrush* %13 to i8*
  %call9 = call i8* @gimp_object_get_name(i8* %14)
  %call10 = call noalias i8* @g_strdup(i8* %call9)
  store i8* %call10, i8** %actual_name, align 8
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
  %23 = load i8*, i8** %actual_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx17, i8* %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %cond.end
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_delete_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
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
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool2 = icmp ne %struct._GimpBrush* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %8 = bitcast %struct._GimpBrush* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_data_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpData*
  %call5 = call i32 @gimp_data_is_deletable(%struct._GimpData* %9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %10, i32 0, i32 37
  %11 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %12 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %13 = bitcast %struct._GimpBrush* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_data_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpData*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_data_factory_data_delete(%struct._GimpDataFactory* %11, %struct._GimpData* %14, i32 1, %struct._GError** %15)
  store i32 %call10, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %18, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  ret %struct._GValueArray* %call13
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_is_editable_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %editable = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %editable, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool2 = icmp ne %struct._GimpBrush* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %8 = bitcast %struct._GimpBrush* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_data_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpData*
  %call6 = call i32 @gimp_data_is_writable(%struct._GimpData* %9)
  store i32 %call6, i32* %editable, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i32, i32* %editable, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx13, i32 %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_get_info_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %mask_bpp = alloca i32, align 4
  %color_bpp = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  store i32 0, i32* %mask_bpp, align 4
  store i32 0, i32* %color_bpp, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool2 = icmp ne %struct._GimpBrush* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %7, i32 0, i32 1
  %8 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width4 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 1
  %9 = load i32, i32* %width4, align 4
  store i32 %9, i32* %width, align 4
  %10 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask5 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %10, i32 0, i32 1
  %11 = load %struct._TempBuf*, %struct._TempBuf** %mask5, align 8
  %height6 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %11, i32 0, i32 2
  %12 = load i32, i32* %height6, align 4
  store i32 %12, i32* %height, align 4
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask7 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %13, i32 0, i32 1
  %14 = load %struct._TempBuf*, %struct._TempBuf** %mask7, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 0
  %15 = load i32, i32* %bytes, align 4
  store i32 %15, i32* %mask_bpp, align 4
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %16, i32 0, i32 2
  %17 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  %tobool8 = icmp ne %struct._TempBuf* %17, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  %18 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap9 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %18, i32 0, i32 2
  %19 = load %struct._TempBuf*, %struct._TempBuf** %pixmap9, align 8
  %bytes10 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %19, i32 0, i32 0
  %20 = load i32, i32* %bytes10, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %color_bpp, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %22 = load i32, i32* %success, align 4
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %23, null
  br i1 %tobool12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %if.end.11
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %25 = load %struct._GError*, %struct._GError** %24, align 8
  br label %cond.end.15

cond.false.14:                                    ; preds = %if.end.11
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi %struct._GError* [ %25, %cond.true.13 ], [ null, %cond.false.14 ]
  %call17 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %21, i32 %22, %struct._GError* %cond16)
  store %struct._GValueArray* %call17, %struct._GValueArray** %return_vals, align 8
  %26 = load i32, i32* %success, align 4
  %tobool18 = icmp ne i32 %26, 0
  br i1 %tobool18, label %if.then.19, label %if.end.28

if.then.19:                                       ; preds = %cond.end.15
  %27 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values20 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %27, i32 0, i32 1
  %28 = load %struct._GValue*, %struct._GValue** %values20, align 8
  %arrayidx21 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i64 1
  %29 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx21, i32 %29)
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %30, i32 0, i32 1
  %31 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %31, i64 2
  %32 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx23, i32 %32)
  %33 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values24 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %33, i32 0, i32 1
  %34 = load %struct._GValue*, %struct._GValue** %values24, align 8
  %arrayidx25 = getelementptr inbounds %struct._GValue, %struct._GValue* %34, i64 3
  %35 = load i32, i32* %mask_bpp, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx25, i32 %35)
  %36 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values26 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %36, i32 0, i32 1
  %37 = load %struct._GValue*, %struct._GValue** %values26, align 8
  %arrayidx27 = getelementptr inbounds %struct._GValue, %struct._GValue* %37, i64 4
  %38 = load i32, i32* %color_bpp, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx27, i32 %38)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.19, %cond.end.15
  %39 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %39
}

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_get_pixels_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %mask_bpp = alloca i32, align 4
  %num_mask_bytes = alloca i32, align 4
  %mask_bytes = alloca i8*, align 8
  %color_bpp = alloca i32, align 4
  %num_color_bytes = alloca i32, align 4
  %color_bytes = alloca i8*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  store i32 0, i32* %mask_bpp, align 4
  store i32 0, i32* %num_mask_bytes, align 4
  store i8* null, i8** %mask_bytes, align 8
  store i32 0, i32* %color_bpp, align 4
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
  br i1 %tobool, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool2 = icmp ne %struct._GimpBrush* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %7, i32 0, i32 1
  %8 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width4 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 1
  %9 = load i32, i32* %width4, align 4
  store i32 %9, i32* %width, align 4
  %10 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask5 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %10, i32 0, i32 1
  %11 = load %struct._TempBuf*, %struct._TempBuf** %mask5, align 8
  %height6 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %11, i32 0, i32 2
  %12 = load i32, i32* %height6, align 4
  store i32 %12, i32* %height, align 4
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask7 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %13, i32 0, i32 1
  %14 = load %struct._TempBuf*, %struct._TempBuf** %mask7, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 0
  %15 = load i32, i32* %bytes, align 4
  store i32 %15, i32* %mask_bpp, align 4
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask8 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %16, i32 0, i32 1
  %17 = load %struct._TempBuf*, %struct._TempBuf** %mask8, align 8
  %height9 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %17, i32 0, i32 2
  %18 = load i32, i32* %height9, align 4
  %19 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask10 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %19, i32 0, i32 1
  %20 = load %struct._TempBuf*, %struct._TempBuf** %mask10, align 8
  %width11 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %20, i32 0, i32 1
  %21 = load i32, i32* %width11, align 4
  %mul = mul nsw i32 %18, %21
  %22 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask12 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %22, i32 0, i32 1
  %23 = load %struct._TempBuf*, %struct._TempBuf** %mask12, align 8
  %bytes13 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %23, i32 0, i32 0
  %24 = load i32, i32* %bytes13, align 4
  %mul14 = mul nsw i32 %mul, %24
  store i32 %mul14, i32* %num_mask_bytes, align 4
  %25 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask15 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %25, i32 0, i32 1
  %26 = load %struct._TempBuf*, %struct._TempBuf** %mask15, align 8
  %call16 = call i8* @temp_buf_get_data(%struct._TempBuf* %26)
  %27 = load i32, i32* %num_mask_bytes, align 4
  %call17 = call noalias i8* @g_memdup(i8* %call16, i32 %27)
  store i8* %call17, i8** %mask_bytes, align 8
  %28 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %28, i32 0, i32 2
  %29 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  %tobool18 = icmp ne %struct._TempBuf* %29, null
  br i1 %tobool18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then.3
  %30 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap20 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %30, i32 0, i32 2
  %31 = load %struct._TempBuf*, %struct._TempBuf** %pixmap20, align 8
  %bytes21 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %31, i32 0, i32 0
  %32 = load i32, i32* %bytes21, align 4
  store i32 %32, i32* %color_bpp, align 4
  %33 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap22 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %33, i32 0, i32 2
  %34 = load %struct._TempBuf*, %struct._TempBuf** %pixmap22, align 8
  %height23 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %34, i32 0, i32 2
  %35 = load i32, i32* %height23, align 4
  %36 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap24 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %36, i32 0, i32 2
  %37 = load %struct._TempBuf*, %struct._TempBuf** %pixmap24, align 8
  %width25 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %37, i32 0, i32 1
  %38 = load i32, i32* %width25, align 4
  %mul26 = mul nsw i32 %35, %38
  %39 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap27 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %39, i32 0, i32 2
  %40 = load %struct._TempBuf*, %struct._TempBuf** %pixmap27, align 8
  %bytes28 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %40, i32 0, i32 0
  %41 = load i32, i32* %bytes28, align 4
  %mul29 = mul nsw i32 %mul26, %41
  store i32 %mul29, i32* %num_color_bytes, align 4
  %42 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap30 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %42, i32 0, i32 2
  %43 = load %struct._TempBuf*, %struct._TempBuf** %pixmap30, align 8
  %call31 = call i8* @temp_buf_get_data(%struct._TempBuf* %43)
  %44 = load i32, i32* %num_color_bytes, align 4
  %call32 = call noalias i8* @g_memdup(i8* %call31, i32 %44)
  store i8* %call32, i8** %color_bytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.then.3
  br label %if.end.33

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.end
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %entry
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %46 = load i32, i32* %success, align 4
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool35 = icmp ne %struct._GError** %47, null
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.34
  %48 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %49 = load %struct._GError*, %struct._GError** %48, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %49, %cond.true ], [ null, %cond.false ]
  %call36 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %45, i32 %46, %struct._GError* %cond)
  store %struct._GValueArray* %call36, %struct._GValueArray** %return_vals, align 8
  %50 = load i32, i32* %success, align 4
  %tobool37 = icmp ne i32 %50, 0
  br i1 %tobool37, label %if.then.38, label %if.end.56

if.then.38:                                       ; preds = %cond.end
  %51 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values39 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %51, i32 0, i32 1
  %52 = load %struct._GValue*, %struct._GValue** %values39, align 8
  %arrayidx40 = getelementptr inbounds %struct._GValue, %struct._GValue* %52, i64 1
  %53 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx40, i32 %53)
  %54 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values41 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %54, i32 0, i32 1
  %55 = load %struct._GValue*, %struct._GValue** %values41, align 8
  %arrayidx42 = getelementptr inbounds %struct._GValue, %struct._GValue* %55, i64 2
  %56 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx42, i32 %56)
  %57 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values43 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %57, i32 0, i32 1
  %58 = load %struct._GValue*, %struct._GValue** %values43, align 8
  %arrayidx44 = getelementptr inbounds %struct._GValue, %struct._GValue* %58, i64 3
  %59 = load i32, i32* %mask_bpp, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx44, i32 %59)
  %60 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values45 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %60, i32 0, i32 1
  %61 = load %struct._GValue*, %struct._GValue** %values45, align 8
  %arrayidx46 = getelementptr inbounds %struct._GValue, %struct._GValue* %61, i64 4
  %62 = load i32, i32* %num_mask_bytes, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx46, i32 %62)
  %63 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values47 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %63, i32 0, i32 1
  %64 = load %struct._GValue*, %struct._GValue** %values47, align 8
  %arrayidx48 = getelementptr inbounds %struct._GValue, %struct._GValue* %64, i64 5
  %65 = load i8*, i8** %mask_bytes, align 8
  %66 = load i32, i32* %num_mask_bytes, align 4
  %conv = sext i32 %66 to i64
  call void @gimp_value_take_int8array(%struct._GValue* %arrayidx48, i8* %65, i64 %conv)
  %67 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values49 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %67, i32 0, i32 1
  %68 = load %struct._GValue*, %struct._GValue** %values49, align 8
  %arrayidx50 = getelementptr inbounds %struct._GValue, %struct._GValue* %68, i64 6
  %69 = load i32, i32* %color_bpp, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx50, i32 %69)
  %70 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values51 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %70, i32 0, i32 1
  %71 = load %struct._GValue*, %struct._GValue** %values51, align 8
  %arrayidx52 = getelementptr inbounds %struct._GValue, %struct._GValue* %71, i64 7
  %72 = load i32, i32* %num_color_bytes, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx52, i32 %72)
  %73 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values53 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %73, i32 0, i32 1
  %74 = load %struct._GValue*, %struct._GValue** %values53, align 8
  %arrayidx54 = getelementptr inbounds %struct._GValue, %struct._GValue* %74, i64 8
  %75 = load i8*, i8** %color_bytes, align 8
  %76 = load i32, i32* %num_color_bytes, align 4
  %conv55 = sext i32 %76 to i64
  call void @gimp_value_take_int8array(%struct._GValue* %arrayidx54, i8* %75, i64 %conv55)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.38, %cond.end
  %77 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %77
}

declare %struct._GParamSpec* @gimp_param_spec_int8_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_get_spacing_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %spacing = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %spacing, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool2 = icmp ne %struct._GimpBrush* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %call4 = call i32 @gimp_brush_get_spacing(%struct._GimpBrush* %7)
  store i32 %call4, i32* %spacing, align 4
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
  %16 = load i32, i32* %spacing, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx11, i32 %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_set_spacing_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %spacing = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
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
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %spacing, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp* %5, i8* %6, i32 1, %struct._GError** %7)
  store %struct._GimpBrush* %call4, %struct._GimpBrush** %brush, align 8
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool5 = icmp ne %struct._GimpBrush* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %10 = load i32, i32* %spacing, align 4
  call void @gimp_brush_set_spacing(%struct._GimpBrush* %9, i32 %10)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %13, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  ret %struct._GValueArray* %call9
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_get_shape_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %shape = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %shape, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBrush* @gimp_pdb_get_generated_brush(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool2 = icmp ne %struct._GimpBrush* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %8 = bitcast %struct._GimpBrush* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_brush_generated_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpBrushGenerated*
  %shape6 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %9, i32 0, i32 1
  %10 = load i32, i32* %shape6, align 4
  store i32 %10, i32* %shape, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %13, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %16 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %19 = load i32, i32* %shape, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx13, i32 %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %20
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_generated_shape_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_set_shape_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %shape_in = alloca i32, align 4
  %shape_out = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %shape_out, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %shape_in, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpBrush* @gimp_pdb_get_generated_brush(%struct._Gimp* %5, i8* %6, i32 1, %struct._GError** %7)
  store %struct._GimpBrush* %call4, %struct._GimpBrush** %brush, align 8
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool5 = icmp ne %struct._GimpBrush* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %10 = bitcast %struct._GimpBrush* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_brush_generated_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpBrushGenerated*
  %12 = load i32, i32* %shape_in, align 4
  %call9 = call i32 @gimp_brush_generated_set_shape(%struct._GimpBrushGenerated* %11, i32 %12)
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %14 = bitcast %struct._GimpBrush* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_brush_generated_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpBrushGenerated*
  %shape = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %15, i32 0, i32 1
  %16 = load i32, i32* %shape, align 4
  store i32 %16, i32* %shape_out, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool13 = icmp ne %struct._GError** %19, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call14 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  store %struct._GValueArray* %call14, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool15 = icmp ne i32 %22, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values17 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values17, align 8
  %arrayidx18 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load i32, i32* %shape_out, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx18, i32 %25)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_get_radius_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %radius = alloca double, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %radius, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBrush* @gimp_pdb_get_generated_brush(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool2 = icmp ne %struct._GimpBrush* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %8 = bitcast %struct._GimpBrush* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_brush_generated_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpBrushGenerated*
  %radius6 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %9, i32 0, i32 2
  %10 = load float, float* %radius6, align 4
  %conv = fpext float %10 to double
  store double %conv, double* %radius, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %13, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %16 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %19 = load double, double* %radius, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx13, double %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %20
}

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_set_radius_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %radius_in = alloca double, align 8
  %radius_out = alloca double, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %radius_out, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %radius_in, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpBrush* @gimp_pdb_get_generated_brush(%struct._Gimp* %5, i8* %6, i32 1, %struct._GError** %7)
  store %struct._GimpBrush* %call4, %struct._GimpBrush** %brush, align 8
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool5 = icmp ne %struct._GimpBrush* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %10 = bitcast %struct._GimpBrush* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_brush_generated_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpBrushGenerated*
  %12 = load double, double* %radius_in, align 8
  %conv = fptrunc double %12 to float
  %call9 = call float @gimp_brush_generated_set_radius(%struct._GimpBrushGenerated* %11, float %conv)
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %14 = bitcast %struct._GimpBrush* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_brush_generated_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpBrushGenerated*
  %radius = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %15, i32 0, i32 2
  %16 = load float, float* %radius, align 4
  %conv12 = fpext float %16 to double
  store double %conv12, double* %radius_out, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
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
  store %struct._GValueArray* %call15, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %22, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load double, double* %radius_out, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx19, double %25)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_get_spikes_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %spikes = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %spikes, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBrush* @gimp_pdb_get_generated_brush(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool2 = icmp ne %struct._GimpBrush* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %8 = bitcast %struct._GimpBrush* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_brush_generated_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpBrushGenerated*
  %spikes6 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %9, i32 0, i32 3
  %10 = load i32, i32* %spikes6, align 4
  store i32 %10, i32* %spikes, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %13, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %16 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %19 = load i32, i32* %spikes, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx13, i32 %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_set_spikes_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %spikes_in = alloca i32, align 4
  %spikes_out = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %spikes_out, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %spikes_in, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpBrush* @gimp_pdb_get_generated_brush(%struct._Gimp* %5, i8* %6, i32 1, %struct._GError** %7)
  store %struct._GimpBrush* %call4, %struct._GimpBrush** %brush, align 8
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool5 = icmp ne %struct._GimpBrush* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %10 = bitcast %struct._GimpBrush* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_brush_generated_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpBrushGenerated*
  %12 = load i32, i32* %spikes_in, align 4
  %call9 = call i32 @gimp_brush_generated_set_spikes(%struct._GimpBrushGenerated* %11, i32 %12)
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %14 = bitcast %struct._GimpBrush* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_brush_generated_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpBrushGenerated*
  %spikes = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %15, i32 0, i32 3
  %16 = load i32, i32* %spikes, align 4
  store i32 %16, i32* %spikes_out, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool13 = icmp ne %struct._GError** %19, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call14 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  store %struct._GValueArray* %call14, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool15 = icmp ne i32 %22, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values17 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values17, align 8
  %arrayidx18 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load i32, i32* %spikes_out, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx18, i32 %25)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_get_hardness_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %hardness = alloca double, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %hardness, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBrush* @gimp_pdb_get_generated_brush(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool2 = icmp ne %struct._GimpBrush* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %8 = bitcast %struct._GimpBrush* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_brush_generated_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpBrushGenerated*
  %hardness6 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %9, i32 0, i32 4
  %10 = load float, float* %hardness6, align 4
  %conv = fpext float %10 to double
  store double %conv, double* %hardness, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %13, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %16 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %19 = load double, double* %hardness, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx13, double %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_set_hardness_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %hardness_in = alloca double, align 8
  %hardness_out = alloca double, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %hardness_out, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %hardness_in, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpBrush* @gimp_pdb_get_generated_brush(%struct._Gimp* %5, i8* %6, i32 1, %struct._GError** %7)
  store %struct._GimpBrush* %call4, %struct._GimpBrush** %brush, align 8
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool5 = icmp ne %struct._GimpBrush* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %10 = bitcast %struct._GimpBrush* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_brush_generated_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpBrushGenerated*
  %12 = load double, double* %hardness_in, align 8
  %conv = fptrunc double %12 to float
  %call9 = call float @gimp_brush_generated_set_hardness(%struct._GimpBrushGenerated* %11, float %conv)
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %14 = bitcast %struct._GimpBrush* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_brush_generated_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpBrushGenerated*
  %hardness = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %15, i32 0, i32 4
  %16 = load float, float* %hardness, align 4
  %conv12 = fpext float %16 to double
  store double %conv12, double* %hardness_out, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
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
  store %struct._GValueArray* %call15, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %22, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load double, double* %hardness_out, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx19, double %25)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_get_aspect_ratio_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %aspect_ratio = alloca double, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %aspect_ratio, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBrush* @gimp_pdb_get_generated_brush(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool2 = icmp ne %struct._GimpBrush* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %8 = bitcast %struct._GimpBrush* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_brush_generated_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpBrushGenerated*
  %aspect_ratio6 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %9, i32 0, i32 5
  %10 = load float, float* %aspect_ratio6, align 4
  %conv = fpext float %10 to double
  store double %conv, double* %aspect_ratio, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %13, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %16 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %19 = load double, double* %aspect_ratio, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx13, double %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_set_aspect_ratio_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %aspect_ratio_in = alloca double, align 8
  %aspect_ratio_out = alloca double, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %aspect_ratio_out, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %aspect_ratio_in, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpBrush* @gimp_pdb_get_generated_brush(%struct._Gimp* %5, i8* %6, i32 1, %struct._GError** %7)
  store %struct._GimpBrush* %call4, %struct._GimpBrush** %brush, align 8
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool5 = icmp ne %struct._GimpBrush* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %10 = bitcast %struct._GimpBrush* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_brush_generated_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpBrushGenerated*
  %12 = load double, double* %aspect_ratio_in, align 8
  %conv = fptrunc double %12 to float
  %call9 = call float @gimp_brush_generated_set_aspect_ratio(%struct._GimpBrushGenerated* %11, float %conv)
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %14 = bitcast %struct._GimpBrush* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_brush_generated_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpBrushGenerated*
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %15, i32 0, i32 5
  %16 = load float, float* %aspect_ratio, align 4
  %conv12 = fpext float %16 to double
  store double %conv12, double* %aspect_ratio_out, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
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
  store %struct._GValueArray* %call15, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %22, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load double, double* %aspect_ratio_out, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx19, double %25)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_get_angle_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %angle = alloca double, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %angle, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBrush* @gimp_pdb_get_generated_brush(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool2 = icmp ne %struct._GimpBrush* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %8 = bitcast %struct._GimpBrush* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_brush_generated_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpBrushGenerated*
  %angle6 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %9, i32 0, i32 6
  %10 = load float, float* %angle6, align 4
  %conv = fpext float %10 to double
  store double %conv, double* %angle, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %13, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %16 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %19 = load double, double* %angle, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx13, double %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brush_set_angle_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %angle_in = alloca double, align 8
  %angle_out = alloca double, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %angle_out, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %angle_in, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpBrush* @gimp_pdb_get_generated_brush(%struct._Gimp* %5, i8* %6, i32 1, %struct._GError** %7)
  store %struct._GimpBrush* %call4, %struct._GimpBrush** %brush, align 8
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool5 = icmp ne %struct._GimpBrush* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %10 = bitcast %struct._GimpBrush* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_brush_generated_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpBrushGenerated*
  %12 = load double, double* %angle_in, align 8
  %conv = fptrunc double %12 to float
  %call9 = call float @gimp_brush_generated_set_angle(%struct._GimpBrushGenerated* %11, float %conv)
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %14 = bitcast %struct._GimpBrush* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_brush_generated_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpBrushGenerated*
  %angle = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %15, i32 0, i32 6
  %16 = load float, float* %angle, align 4
  %conv12 = fpext float %16 to double
  store double %conv12, double* %angle_out, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
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
  store %struct._GValueArray* %call15, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %22, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load double, double* %angle_out, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx19, double %25)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

declare i8* @g_value_get_string(%struct._GValue*) #1

declare %struct._GimpData* @gimp_data_factory_data_new(%struct._GimpDataFactory*, %struct._GimpContext*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp*, i8*, i32, %struct._GError**) #1

declare %struct._GimpData* @gimp_data_factory_data_duplicate(%struct._GimpDataFactory*, %struct._GimpData*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_generated_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

declare i32 @gimp_data_is_deletable(%struct._GimpData*) #1

declare i32 @gimp_data_factory_data_delete(%struct._GimpDataFactory*, %struct._GimpData*, i32, %struct._GError**) #1

declare i32 @gimp_data_is_writable(%struct._GimpData*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare void @gimp_value_take_int8array(%struct._GValue*, i8*, i64) #1

declare i32 @gimp_brush_get_spacing(%struct._GimpBrush*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare void @gimp_brush_set_spacing(%struct._GimpBrush*, i32) #1

declare %struct._GimpBrush* @gimp_pdb_get_generated_brush(%struct._Gimp*, i8*, i32, %struct._GError**) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @gimp_brush_generated_set_shape(%struct._GimpBrushGenerated*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare float @gimp_brush_generated_set_radius(%struct._GimpBrushGenerated*, float) #1

declare i32 @gimp_brush_generated_set_spikes(%struct._GimpBrushGenerated*, i32) #1

declare float @gimp_brush_generated_set_hardness(%struct._GimpBrushGenerated*, float) #1

declare float @gimp_brush_generated_set_aspect_ratio(%struct._GimpBrushGenerated*, float) #1

declare float @gimp_brush_generated_set_angle(%struct._GimpBrushGenerated*, float) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
