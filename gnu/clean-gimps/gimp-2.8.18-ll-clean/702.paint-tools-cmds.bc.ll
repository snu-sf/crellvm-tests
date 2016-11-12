; ModuleID = './app/pdb/paint-tools-cmds.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
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
%struct._GimpPaintInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i8*, %struct._GimpPaintOptions* }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type { %struct._GimpData }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpPattern = type opaque
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
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpPDBContext = type { %struct._GimpContext, i32, i32, double, double, i32, i32, double, i32, i32, i32, i32, i32, %struct._GimpContainer* }
%struct._GimpContainer = type opaque
%struct._GimpConfig = type opaque
%struct._GimpDynamicsOutput = type opaque
%struct._GimpPaintCore = type { %struct._GimpObject, i32, i8*, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpVector2, double, double, i32, i32, i32, i32, i32, %struct._TileManager*, %struct._TileManager*, %struct._TileManager*, %struct._TempBuf*, %struct._TempBuf*, %struct._TempBuf*, %struct._GArray* }
%struct._GimpVector2 = type { double, double }
%struct._TileManager = type opaque
%struct._TempBuf = type opaque
%struct._GArray = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"gimp-airbrush\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"Paint in the current brush with varying pressure. Paint application is time-dependent.\00", align 1
@.str.2 = private unnamed_addr constant [216 x i8] c"This tool simulates the use of an airbrush. Paint pressure represents the relative intensity of the paint application. High pressure results in a thicker layer of paint while low pressure results in a thinner layer.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"The affected drawable\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"The pressure of the airbrush strokes\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"num-strokes\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"num strokes\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"Number of stroke control points (count each coordinate as 2 points)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"strokes\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"Array of stroke coordinates: { s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y }\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"gimp-airbrush-default\00", align 1
@.str.15 = private unnamed_addr constant [222 x i8] c"This tool simulates the use of an airbrush. It is similar to 'gimp-airbrush' except that the pressure is derived from the airbrush tools options box. It the option has not been set the default for the option will be used.\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Andy Thomas\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"1999\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"gimp-clone\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"Clone from the source to the dest drawable using the current brush\00", align 1
@.str.20 = private unnamed_addr constant [732 x i8] c"This tool clones (copies) from the source drawable starting at the specified source coordinates to the dest drawable. If the \22clone_type\22 argument is set to PATTERN-CLONE, then the current pattern is used as the source and the \22src_drawable\22 argument is ignored. Pattern cloning assumes a tileable pattern and mods the sum of the src coordinates and subsequent stroke offsets with the width and height of the pattern. For image cloning, if the sum of the src coordinates and subsequent stroke offsets exceeds the extents of the src drawable, then no paint is transferred. The clone tool is capable of transforming between any image types including RGB->Indexed--although converting from any type to indexed is significantly slower.\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"src-drawable\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"src drawable\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"The source drawable\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"clone-type\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"clone type\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"The type of clone\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"src-x\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"src x\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"The x coordinate in the source image\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"src-y\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"src y\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"The y coordinate in the source image\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"gimp-clone-default\00", align 1
@.str.34 = private unnamed_addr constant [347 x i8] c"This tool clones (copies) from the source drawable starting at the specified source coordinates to the dest drawable. This function performs exactly the same as the 'gimp-clone' function except that the tools arguments are obtained from the clones option dialog. It this dialog has not been activated then the dialogs default values will be used.\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"gimp-convolve\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"Convolve (Blur, Sharpen) using the current brush.\00", align 1
@.str.37 = private unnamed_addr constant [247 x i8] c"This tool convolves the specified drawable with either a sharpening or blurring kernel. The pressure parameter controls the magnitude of the operation. Like the paintbrush, this tool linearly interpolates between the specified stroke coordinates.\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"The pressure\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"convolve-type\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"convolve type\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"Convolve type\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"gimp-convolve-default\00", align 1
@.str.43 = private unnamed_addr constant [322 x i8] c"This tool convolves the specified drawable with either a sharpening or blurring kernel. This function performs exactly the same as the 'gimp-convolve' function except that the tools arguments are obtained from the convolve option dialog. It this dialog has not been activated then the dialogs default values will be used.\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"gimp-dodgeburn\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"Dodgeburn image with varying exposure.\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"Dodgeburn. More details here later.\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"exposure\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"The exposure of the strokes\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"dodgeburn-type\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"dodgeburn type\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"The type either dodge or burn\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"dodgeburn-mode\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"dodgeburn mode\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"The mode\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"gimp-dodgeburn-default\00", align 1
@.str.56 = private unnamed_addr constant [260 x i8] c"Dodgeburn image with varying exposure. This is the same as the gimp_dodgeburn() function except that the exposure, type and mode are taken from the tools option dialog. If the dialog has not been activated then the defaults as used by the dialog will be used.\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"gimp-eraser\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"Erase using the current brush.\00", align 1
@.str.59 = private unnamed_addr constant [331 x i8] c"This tool erases using the current brush mask. If the specified drawable contains an alpha channel, then the erased pixels will become transparent. Otherwise, the eraser tool replaces the contents of the drawable with the background color. Like paintbrush, this tool linearly interpolates between the specified stroke coordinates.\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"hardness\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"How to apply the brush\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"The paint method to use\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"gimp-eraser-default\00", align 1
@.str.65 = private unnamed_addr constant [277 x i8] c"This tool erases using the current brush mask. This function performs exactly the same as the 'gimp-eraser' function except that the tools arguments are obtained from the eraser option dialog. It this dialog has not been activated then the dialogs default values will be used.\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"gimp-heal\00", align 1
@.str.67 = private unnamed_addr constant [66 x i8] c"Heal from the source to the dest drawable using the current brush\00", align 1
@.str.68 = private unnamed_addr constant [346 x i8] c"This tool heals the source drawable starting at the specified source coordinates to the dest drawable. For image healing, if the sum of the src coordinates and subsequent stroke offsets exceeds the extents of the src drawable, then no paint is transferred. The healing tool is capable of transforming between any image types except RGB->Indexed.\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"Kevin Sookocheff\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"2006\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"gimp-heal-default\00", align 1
@.str.72 = private unnamed_addr constant [337 x i8] c"This tool heals from the source drawable starting at the specified source coordinates to the dest drawable. This function performs exactly the same as the 'gimp-heal' function except that the tools arguments are obtained from the healing option dialog. It this dialog has not been activated then the dialogs default values will be used.\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"gimp-paintbrush\00", align 1
@.str.74 = private unnamed_addr constant [93 x i8] c"Paint in the current brush with optional fade out parameter and pull colors from a gradient.\00", align 1
@.str.75 = private unnamed_addr constant [596 x i8] c"This tool is the standard paintbrush. It draws linearly interpolated lines through the specified stroke coordinates. It operates on the specified drawable in the foreground color with the active brush. The 'fade-out' parameter is measured in pixels and allows the brush stroke to linearly fall off. The pressure is set to the maximum at the beginning of the stroke. As the distance of the stroke nears the fade-out value, the pressure will approach zero. The gradient-length is the distance to spread the gradient over. It is measured in pixels. If the gradient-length is 0, no gradient is used.\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"fade-out\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"fade out\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"Fade out parameter\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"gradient-length\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"gradient length\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"Length of gradient to draw\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"gimp-paintbrush-default\00", align 1
@.str.83 = private unnamed_addr constant [214 x i8] c"Paint in the current brush. The fade out parameter and pull colors from a gradient parameter are set from the paintbrush options dialog. If this dialog has not been activated then the dialog defaults will be used.\00", align 1
@.str.84 = private unnamed_addr constant [687 x i8] c"This tool is similar to the standard paintbrush. It draws linearly interpolated lines through the specified stroke coordinates. It operates on the specified drawable in the foreground color with the active brush. The 'fade-out' parameter is measured in pixels and allows the brush stroke to linearly fall off (value obtained from the option dialog). The pressure is set to the maximum at the beginning of the stroke. As the distance of the stroke nears the fade-out value, the pressure will approach zero. The gradient-length (value obtained from the option dialog) is the distance to spread the gradient over. It is measured in pixels. If the gradient-length is 0, no gradient is used.\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"gimp-pencil\00", align 1
@.str.86 = private unnamed_addr constant [55 x i8] c"Paint in the current brush without sub-pixel sampling.\00", align 1
@.str.87 = private unnamed_addr constant [343 x i8] c"This tool is the standard pencil. It draws linearly interpolated lines through the specified stroke coordinates. It operates on the specified drawable in the foreground color with the active brush. The brush mask is treated as though it contains only black and white values. Any value below half is treated as black; any above half, as white.\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"gimp-smudge\00", align 1
@.str.89 = private unnamed_addr constant [36 x i8] c"Smudge image with varying pressure.\00", align 1
@.str.90 = private unnamed_addr constant [152 x i8] c"This tool simulates a smudge using the current brush. High pressure results in a greater smudge of paint while low pressure results in a lesser smudge.\00", align 1
@.str.91 = private unnamed_addr constant [35 x i8] c"The pressure of the smudge strokes\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"gimp-smudge-default\00", align 1
@.str.93 = private unnamed_addr constant [242 x i8] c"This tool simulates a smudge using the current brush. It behaves exactly the same as 'gimp-smudge' except that the pressure value is taken from the smudge tool options or the options default if the tools option dialog has not been activated.\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"undo-desc\00", align 1
@default_coords = internal constant %struct._GimpCoords { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00 }, align 8
@.str.95 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"gimp-dodge-burn\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"application-mode\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"pdb\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"fade-length\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"use-fade\00", align 1

; Function Attrs: nounwind uwtable
define void @register_paint_tools_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @airbrush_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([216 x i8], [216 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %7, %struct._GParamSpec* %call4)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %8, %struct._GParamSpec* %call5)
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call6 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %9, %struct._GParamSpec* %call6)
  %10 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %10, %struct._GimpProcedure* %11)
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %13 = bitcast %struct._GimpProcedure* %12 to i8*
  call void @g_object_unref(i8* %13)
  %call7 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @airbrush_default_invoker)
  store %struct._GimpProcedure* %call7, %struct._GimpProcedure** %procedure, align 8
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %15 = bitcast %struct._GimpProcedure* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_object_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* null)
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %19 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp10 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %call11 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %20, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %18, %struct._GParamSpec* %call11)
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call12 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %21, %struct._GParamSpec* %call12)
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %22, %struct._GParamSpec* %call13)
  %23 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %23, %struct._GimpProcedure* %24)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %26 = bitcast %struct._GimpProcedure* %25 to i8*
  call void @g_object_unref(i8* %26)
  %call14 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @clone_invoker)
  store %struct._GimpProcedure* %call14, %struct._GimpProcedure** %procedure, align 8
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %28 = bitcast %struct._GimpProcedure* %27 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_object_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call15)
  %29 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0))
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([732 x i8], [732 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %32 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp17 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %32, i32 0, i32 1
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp17, align 8
  %call18 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %33, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %31, %struct._GParamSpec* %call18)
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %35 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp19 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %35, i32 0, i32 1
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), %struct._Gimp* %36, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %34, %struct._GParamSpec* %call20)
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call21 = call i64 @gimp_clone_type_get_type() #4
  %call22 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i64 %call21, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %37, %struct._GParamSpec* %call22)
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call23 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %38, %struct._GParamSpec* %call23)
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call24 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %39, %struct._GParamSpec* %call24)
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call25 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %40, %struct._GParamSpec* %call25)
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call26 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %41, %struct._GParamSpec* %call26)
  %42 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %42, %struct._GimpProcedure* %43)
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %45 = bitcast %struct._GimpProcedure* %44 to i8*
  call void @g_object_unref(i8* %45)
  %call27 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @clone_default_invoker)
  store %struct._GimpProcedure* %call27, %struct._GimpProcedure** %procedure, align 8
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %47 = bitcast %struct._GimpProcedure* %46 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_object_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call28)
  %48 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0))
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([347 x i8], [347 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* null)
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %51 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp30 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %51, i32 0, i32 1
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp30, align 8
  %call31 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %52, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %50, %struct._GParamSpec* %call31)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call32 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %53, %struct._GParamSpec* %call32)
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %54, %struct._GParamSpec* %call33)
  %55 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %55, %struct._GimpProcedure* %56)
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %58 = bitcast %struct._GimpProcedure* %57 to i8*
  call void @g_object_unref(i8* %58)
  %call34 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @convolve_invoker)
  store %struct._GimpProcedure* %call34, %struct._GimpProcedure** %procedure, align 8
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %60 = bitcast %struct._GimpProcedure* %59 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_object_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call35)
  %61 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0))
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([247 x i8], [247 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %64 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp37 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %64, i32 0, i32 1
  %65 = load %struct._Gimp*, %struct._Gimp** %gimp37, align 8
  %call38 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %65, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %63, %struct._GParamSpec* %call38)
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call39 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %66, %struct._GParamSpec* %call39)
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call40 = call i64 @gimp_convolve_type_get_type() #4
  %call41 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), i64 %call40, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %67, %struct._GParamSpec* %call41)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call42 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %68, %struct._GParamSpec* %call42)
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call43 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %69, %struct._GParamSpec* %call43)
  %70 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %70, %struct._GimpProcedure* %71)
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %73 = bitcast %struct._GimpProcedure* %72 to i8*
  call void @g_object_unref(i8* %73)
  %call44 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @convolve_default_invoker)
  store %struct._GimpProcedure* %call44, %struct._GimpProcedure** %procedure, align 8
  %74 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %75 = bitcast %struct._GimpProcedure* %74 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_object_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call45)
  %76 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0))
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([322 x i8], [322 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* null)
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %79 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp47 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %79, i32 0, i32 1
  %80 = load %struct._Gimp*, %struct._Gimp** %gimp47, align 8
  %call48 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %80, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %78, %struct._GParamSpec* %call48)
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call49 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %81, %struct._GParamSpec* %call49)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call50 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %82, %struct._GParamSpec* %call50)
  %83 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %83, %struct._GimpProcedure* %84)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %86 = bitcast %struct._GimpProcedure* %85 to i8*
  call void @g_object_unref(i8* %86)
  %call51 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @dodgeburn_invoker)
  store %struct._GimpProcedure* %call51, %struct._GimpProcedure** %procedure, align 8
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %88 = bitcast %struct._GimpProcedure* %87 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_object_get_type() #4
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call52)
  %89 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0))
  %90 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* null)
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %92 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp54 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %92, i32 0, i32 1
  %93 = load %struct._Gimp*, %struct._Gimp** %gimp54, align 8
  %call55 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %93, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %91, %struct._GParamSpec* %call55)
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call56 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %94, %struct._GParamSpec* %call56)
  %95 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call57 = call i64 @gimp_dodge_burn_type_get_type() #4
  %call58 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0), i64 %call57, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %95, %struct._GParamSpec* %call58)
  %96 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call59 = call i64 @gimp_transfer_mode_get_type() #4
  %call60 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i64 %call59, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %96, %struct._GParamSpec* %call60)
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call61 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %97, %struct._GParamSpec* %call61)
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call62 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %98, %struct._GParamSpec* %call62)
  %99 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %99, %struct._GimpProcedure* %100)
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %102 = bitcast %struct._GimpProcedure* %101 to i8*
  call void @g_object_unref(i8* %102)
  %call63 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @dodgeburn_default_invoker)
  store %struct._GimpProcedure* %call63, %struct._GimpProcedure** %procedure, align 8
  %103 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %104 = bitcast %struct._GimpProcedure* %103 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_object_get_type() #4
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call64)
  %105 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i32 0, i32 0))
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([260 x i8], [260 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %108 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp66 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %108, i32 0, i32 1
  %109 = load %struct._Gimp*, %struct._Gimp** %gimp66, align 8
  %call67 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %109, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %107, %struct._GParamSpec* %call67)
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call68 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %110, %struct._GParamSpec* %call68)
  %111 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call69 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %111, %struct._GParamSpec* %call69)
  %112 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %112, %struct._GimpProcedure* %113)
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %115 = bitcast %struct._GimpProcedure* %114 to i8*
  call void @g_object_unref(i8* %115)
  %call70 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @eraser_invoker)
  store %struct._GimpProcedure* %call70, %struct._GimpProcedure** %procedure, align 8
  %116 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %117 = bitcast %struct._GimpProcedure* %116 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_object_get_type() #4
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call71)
  %118 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0))
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([331 x i8], [331 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %120 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %121 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp73 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %121, i32 0, i32 1
  %122 = load %struct._Gimp*, %struct._Gimp** %gimp73, align 8
  %call74 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %122, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %120, %struct._GParamSpec* %call74)
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call75 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %123, %struct._GParamSpec* %call75)
  %124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call76 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %124, %struct._GParamSpec* %call76)
  %125 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call77 = call i64 @gimp_brush_application_mode_get_type() #4
  %call78 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i32 0, i32 0), i64 %call77, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %125, %struct._GParamSpec* %call78)
  %126 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call79 = call i64 @gimp_paint_application_mode_get_type() #4
  %call80 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0), i64 %call79, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %126, %struct._GParamSpec* %call80)
  %127 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %128 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %127, %struct._GimpProcedure* %128)
  %129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %130 = bitcast %struct._GimpProcedure* %129 to i8*
  call void @g_object_unref(i8* %130)
  %call81 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @eraser_default_invoker)
  store %struct._GimpProcedure* %call81, %struct._GimpProcedure** %procedure, align 8
  %131 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %132 = bitcast %struct._GimpProcedure* %131 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_object_get_type() #4
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call82)
  %133 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0))
  %134 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([277 x i8], [277 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* null)
  %135 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %136 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp84 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %136, i32 0, i32 1
  %137 = load %struct._Gimp*, %struct._Gimp** %gimp84, align 8
  %call85 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %137, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %135, %struct._GParamSpec* %call85)
  %138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call86 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %138, %struct._GParamSpec* %call86)
  %139 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call87 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %139, %struct._GParamSpec* %call87)
  %140 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %141 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %140, %struct._GimpProcedure* %141)
  %142 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %143 = bitcast %struct._GimpProcedure* %142 to i8*
  call void @g_object_unref(i8* %143)
  %call88 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @heal_invoker)
  store %struct._GimpProcedure* %call88, %struct._GimpProcedure** %procedure, align 8
  %144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %145 = bitcast %struct._GimpProcedure* %144 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_object_get_type() #4
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call89)
  %146 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0))
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %147, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([346 x i8], [346 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* null)
  %148 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %149 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp91 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %149, i32 0, i32 1
  %150 = load %struct._Gimp*, %struct._Gimp** %gimp91, align 8
  %call92 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %150, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %148, %struct._GParamSpec* %call92)
  %151 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %152 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp93 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %152, i32 0, i32 1
  %153 = load %struct._Gimp*, %struct._Gimp** %gimp93, align 8
  %call94 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), %struct._Gimp* %153, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %151, %struct._GParamSpec* %call94)
  %154 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call95 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %154, %struct._GParamSpec* %call95)
  %155 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call96 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %155, %struct._GParamSpec* %call96)
  %156 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call97 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %156, %struct._GParamSpec* %call97)
  %157 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call98 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %157, %struct._GParamSpec* %call98)
  %158 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %159 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %158, %struct._GimpProcedure* %159)
  %160 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %161 = bitcast %struct._GimpProcedure* %160 to i8*
  call void @g_object_unref(i8* %161)
  %call99 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @heal_default_invoker)
  store %struct._GimpProcedure* %call99, %struct._GimpProcedure** %procedure, align 8
  %162 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %163 = bitcast %struct._GimpProcedure* %162 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_object_get_type() #4
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 %call100)
  %164 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %164, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i32 0, i32 0))
  %165 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([337 x i8], [337 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* null)
  %166 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %167 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp102 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %167, i32 0, i32 1
  %168 = load %struct._Gimp*, %struct._Gimp** %gimp102, align 8
  %call103 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %168, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %166, %struct._GParamSpec* %call103)
  %169 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call104 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %169, %struct._GParamSpec* %call104)
  %170 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call105 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %170, %struct._GParamSpec* %call105)
  %171 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %172 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %171, %struct._GimpProcedure* %172)
  %173 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %174 = bitcast %struct._GimpProcedure* %173 to i8*
  call void @g_object_unref(i8* %174)
  %call106 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @paintbrush_invoker)
  store %struct._GimpProcedure* %call106, %struct._GimpProcedure** %procedure, align 8
  %175 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %176 = bitcast %struct._GimpProcedure* %175 to %struct._GTypeInstance*
  %call107 = call i64 @gimp_object_get_type() #4
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call107)
  %177 = bitcast %struct._GTypeInstance* %call108 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %177, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0))
  %178 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %178, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([596 x i8], [596 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %179 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %180 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp109 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %180, i32 0, i32 1
  %181 = load %struct._Gimp*, %struct._Gimp** %gimp109, align 8
  %call110 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %181, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %179, %struct._GParamSpec* %call110)
  %182 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call111 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %182, %struct._GParamSpec* %call111)
  %183 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call112 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %183, %struct._GParamSpec* %call112)
  %184 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call113 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %184, %struct._GParamSpec* %call113)
  %185 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call114 = call i64 @gimp_paint_application_mode_get_type() #4
  %call115 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0), i64 %call114, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %185, %struct._GParamSpec* %call115)
  %186 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call116 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.81, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %186, %struct._GParamSpec* %call116)
  %187 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %188 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %187, %struct._GimpProcedure* %188)
  %189 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %190 = bitcast %struct._GimpProcedure* %189 to i8*
  call void @g_object_unref(i8* %190)
  %call117 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @paintbrush_default_invoker)
  store %struct._GimpProcedure* %call117, %struct._GimpProcedure** %procedure, align 8
  %191 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %192 = bitcast %struct._GimpProcedure* %191 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_object_get_type() #4
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %192, i64 %call118)
  %193 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %193, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.82, i32 0, i32 0))
  %194 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %194, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([687 x i8], [687 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* null)
  %195 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %196 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp120 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %196, i32 0, i32 1
  %197 = load %struct._Gimp*, %struct._Gimp** %gimp120, align 8
  %call121 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %197, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %195, %struct._GParamSpec* %call121)
  %198 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call122 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %198, %struct._GParamSpec* %call122)
  %199 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call123 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %199, %struct._GParamSpec* %call123)
  %200 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %201 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %200, %struct._GimpProcedure* %201)
  %202 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %203 = bitcast %struct._GimpProcedure* %202 to i8*
  call void @g_object_unref(i8* %203)
  %call124 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @pencil_invoker)
  store %struct._GimpProcedure* %call124, %struct._GimpProcedure** %procedure, align 8
  %204 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %205 = bitcast %struct._GimpProcedure* %204 to %struct._GTypeInstance*
  %call125 = call i64 @gimp_object_get_type() #4
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %205, i64 %call125)
  %206 = bitcast %struct._GTypeInstance* %call126 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %206, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i32 0, i32 0))
  %207 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([343 x i8], [343 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %208 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %209 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp127 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %209, i32 0, i32 1
  %210 = load %struct._Gimp*, %struct._Gimp** %gimp127, align 8
  %call128 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %210, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %208, %struct._GParamSpec* %call128)
  %211 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call129 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %211, %struct._GParamSpec* %call129)
  %212 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call130 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %212, %struct._GParamSpec* %call130)
  %213 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %214 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %213, %struct._GimpProcedure* %214)
  %215 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %216 = bitcast %struct._GimpProcedure* %215 to i8*
  call void @g_object_unref(i8* %216)
  %call131 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @smudge_invoker)
  store %struct._GimpProcedure* %call131, %struct._GimpProcedure** %procedure, align 8
  %217 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %218 = bitcast %struct._GimpProcedure* %217 to %struct._GTypeInstance*
  %call132 = call i64 @gimp_object_get_type() #4
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %218, i64 %call132)
  %219 = bitcast %struct._GTypeInstance* %call133 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %219, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0))
  %220 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %221 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %222 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp134 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %222, i32 0, i32 1
  %223 = load %struct._Gimp*, %struct._Gimp** %gimp134, align 8
  %call135 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %223, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %221, %struct._GParamSpec* %call135)
  %224 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call136 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.91, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %224, %struct._GParamSpec* %call136)
  %225 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call137 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %225, %struct._GParamSpec* %call137)
  %226 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call138 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %226, %struct._GParamSpec* %call138)
  %227 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %228 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %227, %struct._GimpProcedure* %228)
  %229 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %230 = bitcast %struct._GimpProcedure* %229 to i8*
  call void @g_object_unref(i8* %230)
  %call139 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @smudge_default_invoker)
  store %struct._GimpProcedure* %call139, %struct._GimpProcedure** %procedure, align 8
  %231 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %232 = bitcast %struct._GimpProcedure* %231 to %struct._GTypeInstance*
  %call140 = call i64 @gimp_object_get_type() #4
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %232, i64 %call140)
  %233 = bitcast %struct._GTypeInstance* %call141 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %233, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i32 0, i32 0))
  %234 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %234, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([242 x i8], [242 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* null)
  %235 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %236 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp142 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %236, i32 0, i32 1
  %237 = load %struct._Gimp*, %struct._Gimp** %gimp142, align 8
  %call143 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %237, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %235, %struct._GParamSpec* %call143)
  %238 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call144 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %238, %struct._GParamSpec* %call144)
  %239 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call145 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %239, %struct._GParamSpec* %call145)
  %240 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %241 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %240, %struct._GimpProcedure* %241)
  %242 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %243 = bitcast %struct._GimpProcedure* %242 to i8*
  call void @g_object_unref(i8* %243)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @airbrush_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pressure = alloca double, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %pressure, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %num_strokes, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx8)
  store double* %call9, double** %strokes, align 8
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %11 = bitcast %struct._GimpContext* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_pdb_context_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpPDBContext*
  %call12 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call12, %struct._GimpPaintOptions** %options, align 8
  %13 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool13 = icmp ne %struct._GimpPaintOptions* %13, null
  br i1 %tobool13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %16, %struct._GimpImage* null, i32 1, %struct._GError** %17)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call19)
  %20 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call21 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %20, %struct._GError** %21)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.18
  %22 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %23 = bitcast %struct._GimpPaintOptions* %22 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_config_interface_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call24)
  %24 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpConfig*
  %call26 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %24)
  %25 = bitcast i8* %call26 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %25, %struct._GimpPaintOptions** %options, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %27 = bitcast %struct._GimpPaintOptions* %26 to i8*
  %28 = load double, double* %pressure, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), double %28, i8* null)
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %31 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %33 = load i32, i32* %num_strokes, align 4
  %34 = load double*, double** %strokes, align 8
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %36 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %36, i32 0, i32 1
  %37 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %37, i32 0, i32 4
  %38 = load i8*, i8** %blurb, align 8
  %call27 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %29, %struct._GimpContext* %30, %struct._GimpPaintOptions* %31, %struct._GimpDrawable* %32, i32 %33, double* %34, %struct._GError** %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %38, i8* null)
  store i32 %call27, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.18, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %entry
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %40 = load i32, i32* %success, align 4
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool29 = icmp ne %struct._GError** %41, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.28
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %43 = load %struct._GError*, %struct._GError** %42, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %43, %cond.true ], [ null, %cond.false ]
  %call30 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %39, i32 %40, %struct._GError* %cond)
  ret %struct._GValueArray* %call30
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_float_array(i8*, i8*, i8*, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @airbrush_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %num_strokes, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx5)
  store double* %call6, double** %strokes, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = bitcast %struct._GimpContext* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_pdb_context_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPDBContext*
  %call9 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call9, %struct._GimpPaintOptions** %options, align 8
  %11 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool10 = icmp ne %struct._GimpPaintOptions* %11, null
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %18, %struct._GError** %19)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.15
  %20 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %21 = bitcast %struct._GimpPaintOptions* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_config_interface_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpConfig*
  %call23 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %22)
  %23 = bitcast i8* %call23 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %23, %struct._GimpPaintOptions** %options, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = load i32, i32* %num_strokes, align 4
  %29 = load double*, double** %strokes, align 8
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %31, i32 0, i32 1
  %32 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %32, i32 0, i32 4
  %33 = load i8*, i8** %blurb, align 8
  %call24 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %24, %struct._GimpContext* %25, %struct._GimpPaintOptions* %26, %struct._GimpDrawable* %27, i32 %28, double* %29, %struct._GError** %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %33, i8* null)
  store i32 %call24, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.15, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %35 = load i32, i32* %success, align 4
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %36, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %37, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %38, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %34, i32 %35, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @clone_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %src_drawable = alloca %struct._GimpDrawable*, align 8
  %clone_type = alloca i32, align 4
  %src_x = alloca double, align 8
  %src_y = alloca double, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpDrawable* %call3, %struct._GimpDrawable** %src_drawable, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %clone_type, align 4
  %8 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %8, i32 0, i32 1
  %9 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %src_x, align 8
  %10 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %src_y, align 8
  %12 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 5
  %call15 = call i32 @g_value_get_int(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %num_strokes, align 4
  %14 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 6
  %call18 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx17)
  store double* %call18, double** %strokes, align 8
  %16 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %18 = bitcast %struct._GimpContext* %17 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_pdb_context_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call19)
  %19 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpPDBContext*
  %call21 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call21, %struct._GimpPaintOptions** %options, align 8
  %20 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool22 = icmp ne %struct._GimpPaintOptions* %20, null
  br i1 %tobool22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %22 = bitcast %struct._GimpDrawable* %21 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call23)
  %23 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call25 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %23, %struct._GimpImage* null, i32 1, %struct._GError** %24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.lhs.true.27, label %if.else

land.lhs.true.27:                                 ; preds = %land.lhs.true
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %26 = bitcast %struct._GimpDrawable* %25 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call28)
  %27 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call30 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %27, %struct._GError** %28)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %land.lhs.true.27
  %29 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %30 = bitcast %struct._GimpPaintOptions* %29 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_config_interface_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call33)
  %31 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpConfig*
  %call35 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %31)
  %32 = bitcast i8* %call35 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %32, %struct._GimpPaintOptions** %options, align 8
  %33 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %34 = bitcast %struct._GimpPaintOptions* %33 to i8*
  %35 = load i32, i32* %clone_type, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 %35, i8* null)
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %38 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %40 = load i32, i32* %num_strokes, align 4
  %41 = load double*, double** %strokes, align 8
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %43 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %43, i32 0, i32 1
  %44 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %44, i32 0, i32 4
  %45 = load i8*, i8** %blurb, align 8
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %47 = load double, double* %src_x, align 8
  %48 = load double, double* %src_y, align 8
  %call36 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %36, %struct._GimpContext* %37, %struct._GimpPaintOptions* %38, %struct._GimpDrawable* %39, i32 %40, double* %41, %struct._GError** %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), %struct._GimpDrawable* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), double %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), double %48, i8* null)
  store i32 %call36, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.27, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.32
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %entry
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %50 = load i32, i32* %success, align 4
  %51 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool38 = icmp ne %struct._GError** %51, null
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.37
  %52 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %53 = load %struct._GError*, %struct._GError** %52, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %53, %cond.true ], [ null, %cond.false ]
  %call39 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %49, i32 %50, %struct._GError* %cond)
  ret %struct._GValueArray* %call39
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_clone_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @clone_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %num_strokes, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx5)
  store double* %call6, double** %strokes, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = bitcast %struct._GimpContext* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_pdb_context_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPDBContext*
  %call9 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call9, %struct._GimpPaintOptions** %options, align 8
  %11 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool10 = icmp ne %struct._GimpPaintOptions* %11, null
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %18, %struct._GError** %19)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.15
  %20 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %21 = bitcast %struct._GimpPaintOptions* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_config_interface_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpConfig*
  %call23 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %22)
  %23 = bitcast i8* %call23 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %23, %struct._GimpPaintOptions** %options, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = load i32, i32* %num_strokes, align 4
  %29 = load double*, double** %strokes, align 8
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %31, i32 0, i32 1
  %32 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %32, i32 0, i32 4
  %33 = load i8*, i8** %blurb, align 8
  %call24 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %24, %struct._GimpContext* %25, %struct._GimpPaintOptions* %26, %struct._GimpDrawable* %27, i32 %28, double* %29, %struct._GError** %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %33, i8* null)
  store i32 %call24, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.15, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %35 = load i32, i32* %success, align 4
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %36, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %37, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %38, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %34, i32 %35, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @convolve_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pressure = alloca double, align 8
  %convolve_type = alloca i32, align 4
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %pressure, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %convolve_type, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %num_strokes, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx11)
  store double* %call12, double** %strokes, align 8
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %13 = bitcast %struct._GimpContext* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_pdb_context_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpPDBContext*
  %call15 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call15, %struct._GimpPaintOptions** %options, align 8
  %15 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool16 = icmp ne %struct._GimpPaintOptions* %15, null
  br i1 %tobool16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call17)
  %18 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call19 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %18, %struct._GimpImage* null, i32 1, %struct._GError** %19)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.else

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call22)
  %22 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call24 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %22, %struct._GError** %23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %land.lhs.true.21
  %24 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %25 = bitcast %struct._GimpPaintOptions* %24 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_config_interface_get_type() #4
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call27)
  %26 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpConfig*
  %call29 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %26)
  %27 = bitcast i8* %call29 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %27, %struct._GimpPaintOptions** %options, align 8
  %28 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %29 = bitcast %struct._GimpPaintOptions* %28 to i8*
  %30 = load i32, i32* %convolve_type, align 4
  %31 = load double, double* %pressure, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), double %31, i8* null)
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %34 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %36 = load i32, i32* %num_strokes, align 4
  %37 = load double*, double** %strokes, align 8
  %38 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %39 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %39, i32 0, i32 1
  %40 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %40, i32 0, i32 4
  %41 = load i8*, i8** %blurb, align 8
  %call30 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %32, %struct._GimpContext* %33, %struct._GimpPaintOptions* %34, %struct._GimpDrawable* %35, i32 %36, double* %37, %struct._GError** %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %41, i8* null)
  store i32 %call30, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.21, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %entry
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %43 = load i32, i32* %success, align 4
  %44 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool32 = icmp ne %struct._GError** %44, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.31
  %45 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %46 = load %struct._GError*, %struct._GError** %45, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %46, %cond.true ], [ null, %cond.false ]
  %call33 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %42, i32 %43, %struct._GError* %cond)
  ret %struct._GValueArray* %call33
}

; Function Attrs: nounwind readnone
declare i64 @gimp_convolve_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @convolve_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %num_strokes, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx5)
  store double* %call6, double** %strokes, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = bitcast %struct._GimpContext* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_pdb_context_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPDBContext*
  %call9 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call9, %struct._GimpPaintOptions** %options, align 8
  %11 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool10 = icmp ne %struct._GimpPaintOptions* %11, null
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %18, %struct._GError** %19)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.15
  %20 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %21 = bitcast %struct._GimpPaintOptions* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_config_interface_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpConfig*
  %call23 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %22)
  %23 = bitcast i8* %call23 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %23, %struct._GimpPaintOptions** %options, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = load i32, i32* %num_strokes, align 4
  %29 = load double*, double** %strokes, align 8
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %31, i32 0, i32 1
  %32 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %32, i32 0, i32 4
  %33 = load i8*, i8** %blurb, align 8
  %call24 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %24, %struct._GimpContext* %25, %struct._GimpPaintOptions* %26, %struct._GimpDrawable* %27, i32 %28, double* %29, %struct._GError** %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %33, i8* null)
  store i32 %call24, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.15, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %35 = load i32, i32* %success, align 4
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %36, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %37, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %38, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %34, i32 %35, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @dodgeburn_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %exposure = alloca double, align 8
  %dodgeburn_type = alloca i32, align 4
  %dodgeburn_mode = alloca i32, align 4
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %exposure, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %dodgeburn_type, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %dodgeburn_mode, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_int(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %num_strokes, align 4
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx14)
  store double* %call15, double** %strokes, align 8
  %13 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_pdb_context_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call16)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpPDBContext*
  %call18 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.97, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call18, %struct._GimpPaintOptions** %options, align 8
  %17 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool19 = icmp ne %struct._GimpPaintOptions* %17, null
  br i1 %tobool19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call20)
  %20 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %20, %struct._GimpImage* null, i32 1, %struct._GError** %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = bitcast %struct._GimpDrawable* %22 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call25)
  %24 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call27 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %24, %struct._GError** %25)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %land.lhs.true.24
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %27 = bitcast %struct._GimpPaintOptions* %26 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_config_interface_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call30)
  %28 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpConfig*
  %call32 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %28)
  %29 = bitcast i8* %call32 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %29, %struct._GimpPaintOptions** %options, align 8
  %30 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %31 = bitcast %struct._GimpPaintOptions* %30 to i8*
  %32 = load i32, i32* %dodgeburn_type, align 4
  %33 = load i32, i32* %dodgeburn_mode, align 4
  %34 = load double, double* %exposure, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), double %34, i8* null)
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %37 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %39 = load i32, i32* %num_strokes, align 4
  %40 = load double*, double** %strokes, align 8
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %42 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %42, i32 0, i32 1
  %43 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %43, i32 0, i32 4
  %44 = load i8*, i8** %blurb, align 8
  %call33 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %35, %struct._GimpContext* %36, %struct._GimpPaintOptions* %37, %struct._GimpDrawable* %38, i32 %39, double* %40, %struct._GError** %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %44, i8* null)
  store i32 %call33, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.24, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %entry
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
  ret %struct._GValueArray* %call36
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dodge_burn_type_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_transfer_mode_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @dodgeburn_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %num_strokes, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx5)
  store double* %call6, double** %strokes, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = bitcast %struct._GimpContext* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_pdb_context_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPDBContext*
  %call9 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.97, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call9, %struct._GimpPaintOptions** %options, align 8
  %11 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool10 = icmp ne %struct._GimpPaintOptions* %11, null
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %18, %struct._GError** %19)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.15
  %20 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %21 = bitcast %struct._GimpPaintOptions* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_config_interface_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpConfig*
  %call23 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %22)
  %23 = bitcast i8* %call23 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %23, %struct._GimpPaintOptions** %options, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = load i32, i32* %num_strokes, align 4
  %29 = load double*, double** %strokes, align 8
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %31, i32 0, i32 1
  %32 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %32, i32 0, i32 4
  %33 = load i8*, i8** %blurb, align 8
  %call24 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %24, %struct._GimpContext* %25, %struct._GimpPaintOptions* %26, %struct._GimpDrawable* %27, i32 %28, double* %29, %struct._GError** %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %33, i8* null)
  store i32 %call24, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.15, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %35 = load i32, i32* %success, align 4
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %36, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %37, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %38, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %34, i32 %35, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @eraser_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %hardness = alloca i32, align 4
  %method = alloca i32, align 4
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %num_strokes, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx5)
  store double* %call6, double** %strokes, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %hardness, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %method, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %13 = bitcast %struct._GimpContext* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_pdb_context_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpPDBContext*
  %call15 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call15, %struct._GimpPaintOptions** %options, align 8
  %15 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool16 = icmp ne %struct._GimpPaintOptions* %15, null
  br i1 %tobool16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call17)
  %18 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call19 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %18, %struct._GimpImage* null, i32 1, %struct._GError** %19)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.else

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call22)
  %22 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call24 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %22, %struct._GError** %23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %land.lhs.true.21
  %24 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %25 = bitcast %struct._GimpPaintOptions* %24 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_config_interface_get_type() #4
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call27)
  %26 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpConfig*
  %call29 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %26)
  %27 = bitcast i8* %call29 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %27, %struct._GimpPaintOptions** %options, align 8
  %28 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %29 = bitcast %struct._GimpPaintOptions* %28 to i8*
  %30 = load i32, i32* %method, align 4
  %31 = load i32, i32* %hardness, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.99, i32 0, i32 0), i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), i32 %31, i8* null)
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %34 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %36 = load i32, i32* %num_strokes, align 4
  %37 = load double*, double** %strokes, align 8
  %38 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %39 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %39, i32 0, i32 1
  %40 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %40, i32 0, i32 4
  %41 = load i8*, i8** %blurb, align 8
  %call30 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %32, %struct._GimpContext* %33, %struct._GimpPaintOptions* %34, %struct._GimpDrawable* %35, i32 %36, double* %37, %struct._GError** %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %41, i8* null)
  store i32 %call30, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.21, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %entry
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %43 = load i32, i32* %success, align 4
  %44 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool32 = icmp ne %struct._GError** %44, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.31
  %45 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %46 = load %struct._GError*, %struct._GError** %45, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %46, %cond.true ], [ null, %cond.false ]
  %call33 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %42, i32 %43, %struct._GError* %cond)
  ret %struct._GValueArray* %call33
}

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_application_mode_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_application_mode_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @eraser_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %num_strokes, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx5)
  store double* %call6, double** %strokes, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = bitcast %struct._GimpContext* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_pdb_context_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPDBContext*
  %call9 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call9, %struct._GimpPaintOptions** %options, align 8
  %11 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool10 = icmp ne %struct._GimpPaintOptions* %11, null
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %18, %struct._GError** %19)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.15
  %20 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %21 = bitcast %struct._GimpPaintOptions* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_config_interface_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpConfig*
  %call23 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %22)
  %23 = bitcast i8* %call23 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %23, %struct._GimpPaintOptions** %options, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = load i32, i32* %num_strokes, align 4
  %29 = load double*, double** %strokes, align 8
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %31, i32 0, i32 1
  %32 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %32, i32 0, i32 4
  %33 = load i8*, i8** %blurb, align 8
  %call24 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %24, %struct._GimpContext* %25, %struct._GimpPaintOptions* %26, %struct._GimpDrawable* %27, i32 %28, double* %29, %struct._GError** %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %33, i8* null)
  store i32 %call24, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.15, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %35 = load i32, i32* %success, align 4
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %36, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %37, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %38, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %34, i32 %35, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @heal_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %src_drawable = alloca %struct._GimpDrawable*, align 8
  %src_x = alloca double, align 8
  %src_y = alloca double, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpDrawable* %call3, %struct._GimpDrawable** %src_drawable, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %src_x, align 8
  %8 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %8, i32 0, i32 1
  %9 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %src_y, align 8
  %10 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 4
  %call12 = call i32 @g_value_get_int(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %num_strokes, align 4
  %12 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 5
  %call15 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx14)
  store double* %call15, double** %strokes, align 8
  %14 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %16 = bitcast %struct._GimpContext* %15 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_pdb_context_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call16)
  %17 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpPDBContext*
  %call18 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call18, %struct._GimpPaintOptions** %options, align 8
  %18 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool19 = icmp ne %struct._GimpPaintOptions* %18, null
  br i1 %tobool19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %20 = bitcast %struct._GimpDrawable* %19 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call20)
  %21 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %21, %struct._GimpImage* null, i32 1, %struct._GError** %22)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %24 = bitcast %struct._GimpDrawable* %23 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call25)
  %25 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call27 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %25, %struct._GError** %26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %land.lhs.true.24
  %27 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %28 = bitcast %struct._GimpPaintOptions* %27 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_config_interface_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call30)
  %29 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpConfig*
  %call32 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %29)
  %30 = bitcast i8* %call32 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %30, %struct._GimpPaintOptions** %options, align 8
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %33 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %35 = load i32, i32* %num_strokes, align 4
  %36 = load double*, double** %strokes, align 8
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %38, i32 0, i32 1
  %39 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %39, i32 0, i32 4
  %40 = load i8*, i8** %blurb, align 8
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %42 = load double, double* %src_x, align 8
  %43 = load double, double* %src_y, align 8
  %call33 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %31, %struct._GimpContext* %32, %struct._GimpPaintOptions* %33, %struct._GimpDrawable* %34, i32 %35, double* %36, %struct._GError** %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), %struct._GimpDrawable* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), double %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), double %43, i8* null)
  store i32 %call33, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.24, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %entry
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %45 = load i32, i32* %success, align 4
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool35 = icmp ne %struct._GError** %46, null
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.34
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %48 = load %struct._GError*, %struct._GError** %47, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %48, %cond.true ], [ null, %cond.false ]
  %call36 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %44, i32 %45, %struct._GError* %cond)
  ret %struct._GValueArray* %call36
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @heal_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %num_strokes, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx5)
  store double* %call6, double** %strokes, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = bitcast %struct._GimpContext* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_pdb_context_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPDBContext*
  %call9 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call9, %struct._GimpPaintOptions** %options, align 8
  %11 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool10 = icmp ne %struct._GimpPaintOptions* %11, null
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %18, %struct._GError** %19)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.15
  %20 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %21 = bitcast %struct._GimpPaintOptions* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_config_interface_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpConfig*
  %call23 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %22)
  %23 = bitcast i8* %call23 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %23, %struct._GimpPaintOptions** %options, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = load i32, i32* %num_strokes, align 4
  %29 = load double*, double** %strokes, align 8
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %31, i32 0, i32 1
  %32 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %32, i32 0, i32 4
  %33 = load i8*, i8** %blurb, align 8
  %call24 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %24, %struct._GimpContext* %25, %struct._GimpPaintOptions* %26, %struct._GimpDrawable* %27, i32 %28, double* %29, %struct._GError** %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %33, i8* null)
  store i32 %call24, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.15, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %35 = load i32, i32* %success, align 4
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %36, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %37, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %38, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %34, i32 %35, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @paintbrush_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %fade_out = alloca double, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %method = alloca i32, align 4
  %gradient_length = alloca double, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  %pdb_dynamics = alloca %struct._GimpDynamics*, align 8
  %user_dynamics = alloca %struct._GimpDynamics*, align 8
  %opacity_output = alloca %struct._GimpDynamicsOutput*, align 8
  %color_output = alloca %struct._GimpDynamicsOutput*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %fade_out, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %num_strokes, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx8)
  store double* %call9, double** %strokes, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %method, align 4
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %gradient_length, align 8
  %13 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.46

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_pdb_context_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call16)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpPDBContext*
  %call18 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call18, %struct._GimpPaintOptions** %options, align 8
  %17 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool19 = icmp ne %struct._GimpPaintOptions* %17, null
  br i1 %tobool19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call20)
  %20 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %20, %struct._GimpImage* null, i32 1, %struct._GError** %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = bitcast %struct._GimpDrawable* %22 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call25)
  %24 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call27 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %24, %struct._GError** %25)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %land.lhs.true.24
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call30 = call %struct._GimpData* @gimp_dynamics_new(%struct._GimpContext* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0))
  %27 = bitcast %struct._GimpData* %call30 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_dynamics_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call31)
  %28 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpDynamics*
  store %struct._GimpDynamics* %28, %struct._GimpDynamics** %pdb_dynamics, align 8
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call33 = call %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext* %29)
  store %struct._GimpDynamics* %call33, %struct._GimpDynamics** %user_dynamics, align 8
  %30 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %31 = bitcast %struct._GimpPaintOptions* %30 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_config_interface_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call34)
  %32 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpConfig*
  %call36 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %32)
  %33 = bitcast i8* %call36 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %33, %struct._GimpPaintOptions** %options, align 8
  %34 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %35 = bitcast %struct._GimpPaintOptions* %34 to i8*
  %36 = load i32, i32* %method, align 4
  %37 = load double, double* %fade_out, align 8
  %38 = load double, double* %gradient_length, align 8
  %cmp = fcmp ogt double %37, %38
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.29
  %39 = load double, double* %fade_out, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.29
  %40 = load double, double* %gradient_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %39, %cond.true ], [ %40, %cond.false ]
  call void (i8*, i8*, ...) @g_object_set(i8* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.99, i32 0, i32 0), i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), double %cond, i8* null)
  %41 = load double, double* %fade_out, align 8
  %cmp37 = fcmp ogt double %41, 0.000000e+00
  br i1 %cmp37, label %if.then.38, label %if.end

if.then.38:                                       ; preds = %cond.end
  %42 = load %struct._GimpDynamics*, %struct._GimpDynamics** %pdb_dynamics, align 8
  %call39 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %42, i32 0)
  store %struct._GimpDynamicsOutput* %call39, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %43 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %44 = bitcast %struct._GimpDynamicsOutput* %43 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i32 1, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then.38, %cond.end
  %45 = load double, double* %gradient_length, align 8
  %cmp40 = fcmp ogt double %45, 0.000000e+00
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end
  %46 = load %struct._GimpDynamics*, %struct._GimpDynamics** %pdb_dynamics, align 8
  %call42 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %46, i32 3)
  store %struct._GimpDynamicsOutput* %call42, %struct._GimpDynamicsOutput** %color_output, align 8
  %47 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %color_output, align 8
  %48 = bitcast %struct._GimpDynamicsOutput* %47 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i32 1, i8* null)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end
  %49 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %50 = load %struct._GimpDynamics*, %struct._GimpDynamics** %pdb_dynamics, align 8
  call void @gimp_context_set_dynamics(%struct._GimpContext* %49, %struct._GimpDynamics* %50)
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %52 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %53 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %55 = load i32, i32* %num_strokes, align 4
  %56 = load double*, double** %strokes, align 8
  %57 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %58 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %58, i32 0, i32 1
  %59 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %59, i32 0, i32 4
  %60 = load i8*, i8** %blurb, align 8
  %call44 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %51, %struct._GimpContext* %52, %struct._GimpPaintOptions* %53, %struct._GimpDrawable* %54, i32 %55, double* %56, %struct._GError** %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %60, i8* null)
  store i32 %call44, i32* %success, align 4
  %61 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %62 = load %struct._GimpDynamics*, %struct._GimpDynamics** %user_dynamics, align 8
  call void @gimp_context_set_dynamics(%struct._GimpContext* %61, %struct._GimpDynamics* %62)
  %63 = load %struct._GimpDynamics*, %struct._GimpDynamics** %pdb_dynamics, align 8
  %64 = bitcast %struct._GimpDynamics* %63 to i8*
  call void @g_object_unref(i8* %64)
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true.24, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.end.43
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %entry
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %66 = load i32, i32* %success, align 4
  %67 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool47 = icmp ne %struct._GError** %67, null
  br i1 %tobool47, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %if.end.46
  %68 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %69 = load %struct._GError*, %struct._GError** %68, align 8
  br label %cond.end.50

cond.false.49:                                    ; preds = %if.end.46
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.48
  %cond51 = phi %struct._GError* [ %69, %cond.true.48 ], [ null, %cond.false.49 ]
  %call52 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %65, i32 %66, %struct._GError* %cond51)
  ret %struct._GValueArray* %call52
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @paintbrush_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %num_strokes, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx5)
  store double* %call6, double** %strokes, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = bitcast %struct._GimpContext* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_pdb_context_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPDBContext*
  %call9 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call9, %struct._GimpPaintOptions** %options, align 8
  %11 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool10 = icmp ne %struct._GimpPaintOptions* %11, null
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %18, %struct._GError** %19)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.15
  %20 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %21 = bitcast %struct._GimpPaintOptions* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_config_interface_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpConfig*
  %call23 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %22)
  %23 = bitcast i8* %call23 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %23, %struct._GimpPaintOptions** %options, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = load i32, i32* %num_strokes, align 4
  %29 = load double*, double** %strokes, align 8
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %31, i32 0, i32 1
  %32 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %32, i32 0, i32 4
  %33 = load i8*, i8** %blurb, align 8
  %call24 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %24, %struct._GimpContext* %25, %struct._GimpPaintOptions* %26, %struct._GimpDrawable* %27, i32 %28, double* %29, %struct._GError** %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %33, i8* null)
  store i32 %call24, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.15, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %35 = load i32, i32* %success, align 4
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %36, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %37, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %38, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %34, i32 %35, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @pencil_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %num_strokes, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx5)
  store double* %call6, double** %strokes, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = bitcast %struct._GimpContext* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_pdb_context_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPDBContext*
  %call9 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call9, %struct._GimpPaintOptions** %options, align 8
  %11 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool10 = icmp ne %struct._GimpPaintOptions* %11, null
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %18, %struct._GError** %19)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.15
  %20 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %21 = bitcast %struct._GimpPaintOptions* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_config_interface_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpConfig*
  %call23 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %22)
  %23 = bitcast i8* %call23 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %23, %struct._GimpPaintOptions** %options, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = load i32, i32* %num_strokes, align 4
  %29 = load double*, double** %strokes, align 8
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %31, i32 0, i32 1
  %32 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %32, i32 0, i32 4
  %33 = load i8*, i8** %blurb, align 8
  %call24 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %24, %struct._GimpContext* %25, %struct._GimpPaintOptions* %26, %struct._GimpDrawable* %27, i32 %28, double* %29, %struct._GError** %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %33, i8* null)
  store i32 %call24, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.15, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %35 = load i32, i32* %success, align 4
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %36, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %37, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %38, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %34, i32 %35, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @smudge_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pressure = alloca double, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %pressure, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %num_strokes, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx8)
  store double* %call9, double** %strokes, align 8
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %11 = bitcast %struct._GimpContext* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_pdb_context_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpPDBContext*
  %call12 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call12, %struct._GimpPaintOptions** %options, align 8
  %13 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool13 = icmp ne %struct._GimpPaintOptions* %13, null
  br i1 %tobool13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %16, %struct._GimpImage* null, i32 1, %struct._GError** %17)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call19)
  %20 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call21 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %20, %struct._GError** %21)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.18
  %22 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %23 = bitcast %struct._GimpPaintOptions* %22 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_config_interface_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call24)
  %24 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpConfig*
  %call26 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %24)
  %25 = bitcast i8* %call26 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %25, %struct._GimpPaintOptions** %options, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %27 = bitcast %struct._GimpPaintOptions* %26 to i8*
  %28 = load double, double* %pressure, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), double %28, i8* null)
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %31 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %33 = load i32, i32* %num_strokes, align 4
  %34 = load double*, double** %strokes, align 8
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %36 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %36, i32 0, i32 1
  %37 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %37, i32 0, i32 4
  %38 = load i8*, i8** %blurb, align 8
  %call27 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %29, %struct._GimpContext* %30, %struct._GimpPaintOptions* %31, %struct._GimpDrawable* %32, i32 %33, double* %34, %struct._GError** %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %38, i8* null)
  store i32 %call27, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.18, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %entry
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %40 = load i32, i32* %success, align 4
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool29 = icmp ne %struct._GError** %41, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.28
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %43 = load %struct._GError*, %struct._GError** %42, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %43, %cond.true ], [ null, %cond.false ]
  %call30 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %39, i32 %40, %struct._GError* %cond)
  ret %struct._GValueArray* %call30
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @smudge_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %num_strokes = alloca i32, align 4
  %strokes = alloca double*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %num_strokes, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx5)
  store double* %call6, double** %strokes, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = bitcast %struct._GimpContext* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_pdb_context_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPDBContext*
  %call9 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call9, %struct._GimpPaintOptions** %options, align 8
  %11 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool10 = icmp ne %struct._GimpPaintOptions* %11, null
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %18, %struct._GError** %19)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.15
  %20 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %21 = bitcast %struct._GimpPaintOptions* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_config_interface_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpConfig*
  %call23 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %22)
  %23 = bitcast i8* %call23 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %23, %struct._GimpPaintOptions** %options, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = load i32, i32* %num_strokes, align 4
  %29 = load double*, double** %strokes, align 8
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %31, i32 0, i32 1
  %32 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %blurb = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %32, i32 0, i32 4
  %33 = load i8*, i8** %blurb, align 8
  %call24 = call i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpPaintOptions*, %struct._GimpDrawable*, i32, double*, %struct._GError**, i8*, ...) @paint_tools_stroke(%struct._Gimp* %24, %struct._GimpContext* %25, %struct._GimpPaintOptions* %26, %struct._GimpDrawable* %27, i32 %28, double* %29, %struct._GError** %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* %33, i8* null)
  store i32 %call24, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.15, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %35 = load i32, i32* %success, align 4
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %36, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %37, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %38, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %34, i32 %35, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

declare %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue*, %struct._Gimp*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare double* @gimp_value_get_floatarray(%struct._GValue*) #1

declare %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_context_get_type() #2

declare i32 @gimp_pdb_item_is_attached(%struct._GimpItem*, %struct._GimpImage*, i32, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_pdb_item_is_not_group(%struct._GimpItem*, %struct._GError**) #1

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @paint_tools_stroke(%struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpPaintOptions* %options, %struct._GimpDrawable* %drawable, i32 %n_strokes, double* %strokes, %struct._GError** %error, i8* %first_property_name, ...) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %options.addr = alloca %struct._GimpPaintOptions*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %n_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %first_property_name.addr = alloca i8*, align 8
  %core = alloca %struct._GimpPaintCore*, align 8
  %coords = alloca %struct._GimpCoords*, align 8
  %retval1 = alloca i32, align 4
  %i = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpPaintOptions* %options, %struct._GimpPaintOptions** %options.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %n_strokes, i32* %n_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* %first_property_name, i8** %first_property_name.addr, align 8
  %0 = load i32, i32* %n_strokes.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %n_strokes.addr, align 4
  %1 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options.addr, align 8
  %2 = bitcast %struct._GimpPaintOptions* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpContext*
  call void @gimp_context_define_properties(%struct._GimpContext* %3, i32 16320, i32 0)
  %4 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options.addr, align 8
  %5 = bitcast %struct._GimpPaintOptions* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_context_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContext*
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_set_parent(%struct._GimpContext* %6, %struct._GimpContext* %7)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay5 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay5)
  %8 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options.addr, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %8, i32 0, i32 1
  %9 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %paint_type = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %9, i32 0, i32 2
  %10 = load i64, i64* %paint_type, align 8
  %11 = load i8*, i8** %first_property_name.addr, align 8
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call7 = call %struct._GObject* @g_object_new_valist(i64 %10, i8* %11, %struct.__va_list_tag* %arraydecay6)
  %12 = bitcast %struct._GObject* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_paint_core_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpPaintCore*
  store %struct._GimpPaintCore* %13, %struct._GimpPaintCore** %core, align 8
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1011 = bitcast %struct.__va_list_tag* %arraydecay10 to i8*
  call void @llvm.va_end(i8* %arraydecay1011)
  %14 = load i32, i32* %n_strokes.addr, align 4
  %conv = sext i32 %14 to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv, i64 64)
  %15 = bitcast i8* %call12 to %struct._GimpCoords*
  store %struct._GimpCoords* %15, %struct._GimpCoords** %coords, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %n_strokes.addr, align 4
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i64 %idxprom
  %20 = bitcast %struct._GimpCoords* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* bitcast (%struct._GimpCoords* @default_coords to i8*), i64 64, i32 8, i1 false)
  %21 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %21
  %idxprom14 = sext i32 %mul to i64
  %22 = load double*, double** %strokes.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %22, i64 %idxprom14
  %23 = load double, double* %arrayidx15, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %25, i64 %idxprom16
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx17, i32 0, i32 0
  store double %23, double* %x, align 8
  %26 = load i32, i32* %i, align 4
  %mul18 = mul nsw i32 2, %26
  %add = add nsw i32 %mul18, 1
  %idxprom19 = sext i32 %add to i64
  %27 = load double*, double** %strokes.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %27, i64 %idxprom19
  %28 = load double, double* %arrayidx20, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %29 to i64
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %30, i64 %idxprom21
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx22, i32 0, i32 1
  store double %28, double* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %34 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options.addr, align 8
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %36 = load i32, i32* %n_strokes.addr, align 4
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call23 = call i32 @gimp_paint_core_stroke(%struct._GimpPaintCore* %32, %struct._GimpDrawable* %33, %struct._GimpPaintOptions* %34, %struct._GimpCoords* %35, i32 %36, i32 1, %struct._GError** %37)
  store i32 %call23, i32* %retval1, align 4
  %38 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %39 = bitcast %struct._GimpCoords* %38 to i8*
  call void @g_free(i8* %39)
  %40 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %41 = bitcast %struct._GimpPaintCore* %40 to i8*
  call void @g_object_unref(i8* %41)
  %42 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options.addr, align 8
  %43 = bitcast %struct._GimpPaintOptions* %42 to i8*
  call void @g_object_unref(i8* %43)
  %44 = load i32, i32* %retval1, align 4
  ret i32 %44
}

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @gimp_context_define_properties(%struct._GimpContext*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @gimp_context_set_parent(%struct._GimpContext*, %struct._GimpContext*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare %struct._GObject* @g_object_new_valist(i64, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @gimp_paint_core_stroke(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32, %struct._GError**) #1

declare void @g_free(i8*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare %struct._GimpData* @gimp_dynamics_new(%struct._GimpContext*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dynamics_get_type() #2

declare %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext*) #1

declare %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics*, i32) #1

declare void @gimp_context_set_dynamics(%struct._GimpContext*, %struct._GimpDynamics*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
