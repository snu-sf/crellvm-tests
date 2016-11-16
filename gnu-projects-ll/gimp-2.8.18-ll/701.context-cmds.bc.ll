; ModuleID = './app/pdb/context-cmds.bc'
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
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GHashTable = type opaque
%struct._GimpConfig = type opaque
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
%struct._GimpPDBContext = type { %struct._GimpContext, i32, i32, double, double, i32, i32, double, i32, i32, i32, i32, i32, %struct._GimpContainer* }

@.str = private unnamed_addr constant [18 x i8] c"gimp-context-push\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Pushes a context to the top of the plug-in's context stack.\00", align 1
@.str.2 = private unnamed_addr constant [186 x i8] c"This procedure creates a new context by copying the current context. This copy becomes the new current context for the calling plug-in until it is popped again using 'gimp-context-pop'.\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Michael Natterer <mitch@gimp.org> & Sven Neumann <sven@gimp.org>\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Michael Natterer & Sven Neumann\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"gimp-context-pop\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"Pops the topmost context from the plug-in's context stack.\00", align 1
@.str.8 = private unnamed_addr constant [206 x i8] c"This procedure removes the topmost context from the plug-in's context stack. The context that was active before the corresponding call to 'gimp-context-push' becomes the new current context of the plug-in.\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"gimp-context-set-defaults\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Reset context settings to their default values.\00", align 1
@.str.11 = private unnamed_addr constant [273 x i8] c"This procedure resets context settings used by various procedures to their default value. This procedure will usually be called after a context push so that a script which calls procedures affected by context settings will not be affected by changes in the global context.\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Kevin Cozens <kcozens@svn.gnome.org>\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Kevin Cozens\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"2011\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"gimp-context-list-paint-methods\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Lists the available paint methods.\00", align 1
@.str.17 = private unnamed_addr constant [131 x i8] c"This procedure lists the names of the available paint methods. Any of the results can be used for 'gimp-context-set-paint-method'.\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Simon Budig\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"2007\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"num-paint-methods\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"num paint methods\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"The number of the available paint methods\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"paint-methods\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"paint methods\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"The names of the available paint methods\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"gimp-context-get-paint-method\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"Retrieve the currently active paint method.\00", align 1
@.str.28 = private unnamed_addr constant [70 x i8] c"This procedure returns the name of the currently active paint method.\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"The name of the active paint method\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"gimp-context-set-paint-method\00", align 1
@.str.35 = private unnamed_addr constant [59 x i8] c"Set the specified paint method as the active paint method.\00", align 1
@.str.36 = private unnamed_addr constant [353 x i8] c"This procedure allows the active paint method to be set by specifying its name. The name is simply a string which corresponds to one of the names of the available paint methods. If there is no matching method found, this procedure will return an error. Otherwise, the specified method becomes active and will be used in all subsequent paint operations.\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"The name of the paint method\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"gimp-context-get-foreground\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"Get the current GIMP foreground color.\00", align 1
@.str.40 = private unnamed_addr constant [157 x i8] c"This procedure returns the current GIMP foreground color. The foreground color is used in a variety of tools such as paint tools, blending, and bucket fill.\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"The foreground color\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"gimp-context-set-foreground\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"Set the current GIMP foreground color.\00", align 1
@.str.45 = private unnamed_addr constant [177 x i8] c"This procedure sets the current GIMP foreground color. After this is set, operations which use foreground such as paint tools, blending, and bucket fill will use the new value.\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"gimp-context-get-background\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"Get the current GIMP background color.\00", align 1
@.str.48 = private unnamed_addr constant [179 x i8] c"This procedure returns the current GIMP background color. The background color is used in a variety of tools such as blending, erasing (with non-alpha images), and image filling.\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"The background color\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"gimp-context-set-background\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"Set the current GIMP background color.\00", align 1
@.str.53 = private unnamed_addr constant [208 x i8] c"This procedure sets the current GIMP background color. After this is set, operations which use background such as blending, filling images, clearing, and erasing (in non-alpha images) will use the new value.\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"gimp-context-set-default-colors\00", align 1
@.str.55 = private unnamed_addr constant [74 x i8] c"Set the current GIMP foreground and background colors to black and white.\00", align 1
@.str.56 = private unnamed_addr constant [120 x i8] c"This procedure sets the current GIMP foreground and background colors to their initial default values, black and white.\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"gimp-context-swap-colors\00", align 1
@.str.58 = private unnamed_addr constant [56 x i8] c"Swap the current GIMP foreground and background colors.\00", align 1
@.str.59 = private unnamed_addr constant [154 x i8] c"This procedure swaps the current GIMP foreground and background colors, so that the new foreground color becomes the old background color and vice versa.\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"gimp-context-get-opacity\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"Get the opacity.\00", align 1
@.str.62 = private unnamed_addr constant [107 x i8] c"This procedure returns the opacity setting. The return value is a floating point number between 0 and 100.\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"The opacity\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"gimp-context-set-opacity\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"Set the opacity.\00", align 1
@.str.67 = private unnamed_addr constant [108 x i8] c"This procedure modifies the opacity setting. The value should be a floating point number between 0 and 100.\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"gimp-context-get-paint-mode\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"Get the paint mode.\00", align 1
@.str.70 = private unnamed_addr constant [146 x i8] c"This procedure returns the paint-mode setting. The return value is an integer which corresponds to the values listed in the argument description.\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"paint-mode\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"paint mode\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"The paint mode\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"gimp-context-set-paint-mode\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"Set the paint mode.\00", align 1
@.str.76 = private unnamed_addr constant [48 x i8] c"This procedure modifies the paint_mode setting.\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"gimp-context-get-brush\00", align 1
@.str.78 = private unnamed_addr constant [37 x i8] c"Retrieve the currently active brush.\00", align 1
@.str.79 = private unnamed_addr constant [171 x i8] c"This procedure returns the name of the currently active brush. All paint operations and stroke operations use this brush to control the application of paint to the image.\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"The name of the active brush\00", align 1
@.str.81 = private unnamed_addr constant [23 x i8] c"gimp-context-set-brush\00", align 1
@.str.82 = private unnamed_addr constant [45 x i8] c"Set the specified brush as the active brush.\00", align 1
@.str.83 = private unnamed_addr constant [338 x i8] c"This procedure allows the active brush to be set by specifying its name. The name is simply a string which corresponds to one of the names of the installed brushes. If there is no matching brush found, this procedure will return an error. Otherwise, the specified brush becomes active and will be used in all subsequent paint operations.\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"The name of the brush\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"gimp-context-get-brush-size\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"Get brush size in pixels.\00", align 1
@.str.87 = private unnamed_addr constant [58 x i8] c"Get the brush size in pixels for brush based paint tools.\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"Ed Swartz\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"2012\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"brush size in pixels\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"gimp-context-set-brush-size\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"Set brush size in pixels.\00", align 1
@.str.94 = private unnamed_addr constant [58 x i8] c"Set the brush size in pixels for brush based paint tools.\00", align 1
@.str.95 = private unnamed_addr constant [36 x i8] c"gimp-context-set-brush-default-size\00", align 1
@.str.96 = private unnamed_addr constant [31 x i8] c"Set brush size to its default.\00", align 1
@.str.97 = private unnamed_addr constant [103 x i8] c"Set the brush size to the default (max of width and height) for paintbrush, airbrush, or pencil tools.\00", align 1
@.str.98 = private unnamed_addr constant [36 x i8] c"gimp-context-get-brush-aspect-ratio\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"Get brush aspect ratio.\00", align 1
@.str.100 = private unnamed_addr constant [50 x i8] c"Set the aspect ratio for brush based paint tools.\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"aspect\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"aspect ratio\00", align 1
@.str.103 = private unnamed_addr constant [36 x i8] c"gimp-context-set-brush-aspect-ratio\00", align 1
@.str.104 = private unnamed_addr constant [24 x i8] c"Set brush aspect ratio.\00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"gimp-context-get-brush-angle\00", align 1
@.str.106 = private unnamed_addr constant [28 x i8] c"Get brush angle in degrees.\00", align 1
@.str.107 = private unnamed_addr constant [54 x i8] c"Set the angle in degrees for brush based paint tools.\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"angle in degrees\00", align 1
@.str.110 = private unnamed_addr constant [29 x i8] c"gimp-context-set-brush-angle\00", align 1
@.str.111 = private unnamed_addr constant [28 x i8] c"Set brush angle in degrees.\00", align 1
@.str.112 = private unnamed_addr constant [26 x i8] c"gimp-context-get-dynamics\00", align 1
@.str.113 = private unnamed_addr constant [46 x i8] c"Retrieve the currently active paint dynamics.\00", align 1
@.str.114 = private unnamed_addr constant [189 x i8] c"This procedure returns the name of the currently active paint dynamics. All paint operations and stroke operations use this paint dynamics to control the application of paint to the image.\00", align 1
@.str.115 = private unnamed_addr constant [38 x i8] c"The name of the active paint dynamics\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"gimp-context-set-dynamics\00", align 1
@.str.117 = private unnamed_addr constant [63 x i8] c"Set the specified paint dynamics as the active paint dynamics.\00", align 1
@.str.118 = private unnamed_addr constant [372 x i8] c"This procedure allows the active paint dynamics to be set by specifying its name. The name is simply a string which corresponds to one of the names of the installed paint dynamics. If there is no matching paint dynamics found, this procedure will return an error. Otherwise, the specified paint dynamics becomes active and will be used in all subsequent paint operations.\00", align 1
@.str.119 = private unnamed_addr constant [31 x i8] c"The name of the paint dynamics\00", align 1
@.str.120 = private unnamed_addr constant [25 x i8] c"gimp-context-get-pattern\00", align 1
@.str.121 = private unnamed_addr constant [39 x i8] c"Retrieve the currently active pattern.\00", align 1
@.str.122 = private unnamed_addr constant [188 x i8] c"This procedure returns name of the the currently active pattern. All clone and bucket-fill operations with patterns will use this pattern to control the application of paint to the image.\00", align 1
@.str.123 = private unnamed_addr constant [31 x i8] c"The name of the active pattern\00", align 1
@.str.124 = private unnamed_addr constant [25 x i8] c"gimp-context-set-pattern\00", align 1
@.str.125 = private unnamed_addr constant [49 x i8] c"Set the specified pattern as the active pattern.\00", align 1
@.str.126 = private unnamed_addr constant [345 x i8] c"This procedure allows the active pattern to be set by specifying its name. The name is simply a string which corresponds to one of the names of the installed patterns. If there is no matching pattern found, this procedure will return an error. Otherwise, the specified pattern becomes active and will be used in all subsequent paint operations.\00", align 1
@.str.127 = private unnamed_addr constant [24 x i8] c"The name of the pattern\00", align 1
@.str.128 = private unnamed_addr constant [26 x i8] c"gimp-context-get-gradient\00", align 1
@.str.129 = private unnamed_addr constant [40 x i8] c"Retrieve the currently active gradient.\00", align 1
@.str.130 = private unnamed_addr constant [66 x i8] c"This procedure returns the name of the currently active gradient.\00", align 1
@.str.131 = private unnamed_addr constant [32 x i8] c"The name of the active gradient\00", align 1
@.str.132 = private unnamed_addr constant [26 x i8] c"gimp-context-set-gradient\00", align 1
@.str.133 = private unnamed_addr constant [52 x i8] c"Sets the specified gradient as the active gradient.\00", align 1
@.str.134 = private unnamed_addr constant [345 x i8] c"This procedure lets you set the specified gradient as the active or \22current\22 one. The name is simply a string which corresponds to one of the loaded gradients. If no matching gradient is found, this procedure will return an error. Otherwise, the specified gradient will become active and will be used for subsequent custom gradient operations.\00", align 1
@.str.135 = private unnamed_addr constant [25 x i8] c"The name of the gradient\00", align 1
@.str.136 = private unnamed_addr constant [25 x i8] c"gimp-context-get-palette\00", align 1
@.str.137 = private unnamed_addr constant [39 x i8] c"Retrieve the currently active palette.\00", align 1
@.str.138 = private unnamed_addr constant [69 x i8] c"This procedure returns the name of the the currently active palette.\00", align 1
@.str.139 = private unnamed_addr constant [31 x i8] c"The name of the active palette\00", align 1
@.str.140 = private unnamed_addr constant [25 x i8] c"gimp-context-set-palette\00", align 1
@.str.141 = private unnamed_addr constant [49 x i8] c"Set the specified palette as the active palette.\00", align 1
@.str.142 = private unnamed_addr constant [341 x i8] c"This procedure allows the active palette to be set by specifying its name. The name is simply a string which corresponds to one of the names of the installed palettes. If no matching palette is found, this procedure will return an error. Otherwise, the specified palette becomes active and will be used in all subsequent palette operations.\00", align 1
@.str.143 = private unnamed_addr constant [24 x i8] c"The name of the palette\00", align 1
@.str.144 = private unnamed_addr constant [22 x i8] c"gimp-context-get-font\00", align 1
@.str.145 = private unnamed_addr constant [36 x i8] c"Retrieve the currently active font.\00", align 1
@.str.146 = private unnamed_addr constant [62 x i8] c"This procedure returns the name of the currently active font.\00", align 1
@.str.147 = private unnamed_addr constant [28 x i8] c"The name of the active font\00", align 1
@.str.148 = private unnamed_addr constant [22 x i8] c"gimp-context-set-font\00", align 1
@.str.149 = private unnamed_addr constant [43 x i8] c"Set the specified font as the active font.\00", align 1
@.str.150 = private unnamed_addr constant [326 x i8] c"This procedure allows the active font to be set by specifying its name. The name is simply a string which corresponds to one of the names of the installed fonts. If no matching font is found, this procedure will return an error. Otherwise, the specified font becomes active and will be used in all subsequent font operations.\00", align 1
@.str.151 = private unnamed_addr constant [21 x i8] c"The name of the font\00", align 1
@.str.152 = private unnamed_addr constant [27 x i8] c"gimp-context-get-antialias\00", align 1
@.str.153 = private unnamed_addr constant [27 x i8] c"Get the antialias setting.\00", align 1
@.str.154 = private unnamed_addr constant [46 x i8] c"This procedure returns the antialias setting.\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"2010\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.157 = private unnamed_addr constant [22 x i8] c"The antialias setting\00", align 1
@.str.158 = private unnamed_addr constant [27 x i8] c"gimp-context-set-antialias\00", align 1
@.str.159 = private unnamed_addr constant [27 x i8] c"Set the antialias setting.\00", align 1
@.str.160 = private unnamed_addr constant [520 x i8] c"This procedure modifies the antialias setting. If antialiasing is turned on, the edges of selected region will contain intermediate values which give the appearance of a sharper, less pixelized edge. This should be set as TRUE most of the time unless a binary-only selection is wanted. This settings affects the following procedures: 'gimp-image-select-color', 'gimp-image-select-contiguous-color', 'gimp-image-select-round-rectangle', 'gimp-image-select-ellipse', 'gimp-image-select-polygon', 'gimp-image-select-item'.\00", align 1
@.str.161 = private unnamed_addr constant [25 x i8] c"gimp-context-get-feather\00", align 1
@.str.162 = private unnamed_addr constant [25 x i8] c"Get the feather setting.\00", align 1
@.str.163 = private unnamed_addr constant [44 x i8] c"This procedure returns the feather setting.\00", align 1
@.str.164 = private unnamed_addr constant [8 x i8] c"feather\00", align 1
@.str.165 = private unnamed_addr constant [20 x i8] c"The feather setting\00", align 1
@.str.166 = private unnamed_addr constant [25 x i8] c"gimp-context-set-feather\00", align 1
@.str.167 = private unnamed_addr constant [25 x i8] c"Set the feather setting.\00", align 1
@.str.168 = private unnamed_addr constant [486 x i8] c"This procedure modifies the feather setting. If the feather option is enabled, selections will be blurred before combining. The blur is a gaussian blur; its radii can be controlled using 'gimp-context-set-feather-radius'. This setting affects the following procedures: 'gimp-image-select-color', 'gimp-image-select-contiguous-color', 'gimp-image-select-rectangle', 'gimp-image-select-round-rectangle', 'gimp-image-select-ellipse', 'gimp-image-select-polygon', 'gimp-image-select-item'.\00", align 1
@.str.169 = private unnamed_addr constant [32 x i8] c"gimp-context-get-feather-radius\00", align 1
@.str.170 = private unnamed_addr constant [32 x i8] c"Get the feather radius setting.\00", align 1
@.str.171 = private unnamed_addr constant [51 x i8] c"This procedure returns the feather radius setting.\00", align 1
@.str.172 = private unnamed_addr constant [17 x i8] c"feather-radius-x\00", align 1
@.str.173 = private unnamed_addr constant [17 x i8] c"feather radius x\00", align 1
@.str.174 = private unnamed_addr constant [30 x i8] c"The horizontal feather radius\00", align 1
@.str.175 = private unnamed_addr constant [17 x i8] c"feather-radius-y\00", align 1
@.str.176 = private unnamed_addr constant [17 x i8] c"feather radius y\00", align 1
@.str.177 = private unnamed_addr constant [28 x i8] c"The vertical feather radius\00", align 1
@.str.178 = private unnamed_addr constant [32 x i8] c"gimp-context-set-feather-radius\00", align 1
@.str.179 = private unnamed_addr constant [32 x i8] c"Set the feather radius setting.\00", align 1
@.str.180 = private unnamed_addr constant [137 x i8] c"This procedure modifies the feather radius setting. This setting affects all procedures that are affected by 'gimp-context-set-feather'.\00", align 1
@.str.181 = private unnamed_addr constant [31 x i8] c"gimp-context-get-sample-merged\00", align 1
@.str.182 = private unnamed_addr constant [31 x i8] c"Get the sample merged setting.\00", align 1
@.str.183 = private unnamed_addr constant [50 x i8] c"This procedure returns the sample merged setting.\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"sample-merged\00", align 1
@.str.185 = private unnamed_addr constant [14 x i8] c"sample merged\00", align 1
@.str.186 = private unnamed_addr constant [26 x i8] c"The sample merged setting\00", align 1
@.str.187 = private unnamed_addr constant [31 x i8] c"gimp-context-set-sample-merged\00", align 1
@.str.188 = private unnamed_addr constant [31 x i8] c"Set the sample merged setting.\00", align 1
@.str.189 = private unnamed_addr constant [522 x i8] c"This procedure modifies the sample merged setting. If an operation depends on the colors of the pixels present in a drawable, like when doing a seed fill, this setting controls whether the pixel data from the specified drawable is used ('sample-merged' is FALSE), or the pixel data from the composite image ('sample-merged' is TRUE. This is equivalent to sampling for colors after merging all visible layers). This setting affects the following procedures: 'gimp-image-select-color', 'gimp-image-select-contiguous-color'.\00", align 1
@.str.190 = private unnamed_addr constant [34 x i8] c"gimp-context-get-sample-criterion\00", align 1
@.str.191 = private unnamed_addr constant [34 x i8] c"Get the sample criterion setting.\00", align 1
@.str.192 = private unnamed_addr constant [53 x i8] c"This procedure returns the sample criterion setting.\00", align 1
@.str.193 = private unnamed_addr constant [17 x i8] c"sample-criterion\00", align 1
@.str.194 = private unnamed_addr constant [17 x i8] c"sample criterion\00", align 1
@.str.195 = private unnamed_addr constant [29 x i8] c"The sample criterion setting\00", align 1
@.str.196 = private unnamed_addr constant [34 x i8] c"gimp-context-set-sample-criterion\00", align 1
@.str.197 = private unnamed_addr constant [34 x i8] c"Set the sample criterion setting.\00", align 1
@.str.198 = private unnamed_addr constant [377 x i8] c"This procedure modifies the sample criterion setting. If an operation depends on the colors of the pixels present in a drawable, like when doing a seed fill, this setting controls how color similarity is determined. SELECT_CRITERION_COMPOSITE is the default value. This setting affects the following procedures: 'gimp-image-select-color', 'gimp-image-select-contiguous-color'.\00", align 1
@.str.199 = private unnamed_addr constant [34 x i8] c"gimp-context-get-sample-threshold\00", align 1
@.str.200 = private unnamed_addr constant [34 x i8] c"Get the sample threshold setting.\00", align 1
@.str.201 = private unnamed_addr constant [53 x i8] c"This procedure returns the sample threshold setting.\00", align 1
@.str.202 = private unnamed_addr constant [17 x i8] c"sample-threshold\00", align 1
@.str.203 = private unnamed_addr constant [17 x i8] c"sample threshold\00", align 1
@.str.204 = private unnamed_addr constant [29 x i8] c"The sample threshold setting\00", align 1
@.str.205 = private unnamed_addr constant [34 x i8] c"gimp-context-set-sample-threshold\00", align 1
@.str.206 = private unnamed_addr constant [34 x i8] c"Set the sample threshold setting.\00", align 1
@.str.207 = private unnamed_addr constant [458 x i8] c"This procedure modifies the sample threshold setting. If an operation depends on the colors of the pixels present in a drawable, like when doing a seed fill, this setting controls what is \22sufficiently close\22 to be considered a similar color. If the sample threshold has not been set explicitly, the default threshold set in gimprc will be used. This setting affects the following procedures: 'gimp-image-select-color', 'gimp-image-select-contiguous-color'.\00", align 1
@.str.208 = private unnamed_addr constant [38 x i8] c"gimp-context-get-sample-threshold-int\00", align 1
@.str.209 = private unnamed_addr constant [54 x i8] c"Get the sample threshold setting as an integer value.\00", align 1
@.str.210 = private unnamed_addr constant [114 x i8] c"This procedure returns the sample threshold setting as an integer value. See 'gimp-context-get-sample-threshold'.\00", align 1
@.str.211 = private unnamed_addr constant [38 x i8] c"gimp-context-set-sample-threshold-int\00", align 1
@.str.212 = private unnamed_addr constant [54 x i8] c"Set the sample threshold setting as an integer value.\00", align 1
@.str.213 = private unnamed_addr constant [115 x i8] c"This procedure modifies the sample threshold setting as an integer value. See 'gimp-context-set-sample-threshold'.\00", align 1
@.str.214 = private unnamed_addr constant [36 x i8] c"gimp-context-get-sample-transparent\00", align 1
@.str.215 = private unnamed_addr constant [36 x i8] c"Get the sample transparent setting.\00", align 1
@.str.216 = private unnamed_addr constant [55 x i8] c"This procedure returns the sample transparent setting.\00", align 1
@.str.217 = private unnamed_addr constant [19 x i8] c"sample-transparent\00", align 1
@.str.218 = private unnamed_addr constant [19 x i8] c"sample transparent\00", align 1
@.str.219 = private unnamed_addr constant [31 x i8] c"The sample transparent setting\00", align 1
@.str.220 = private unnamed_addr constant [36 x i8] c"gimp-context-set-sample-transparent\00", align 1
@.str.221 = private unnamed_addr constant [36 x i8] c"Set the sample transparent setting.\00", align 1
@.str.222 = private unnamed_addr constant [434 x i8] c"This procedure modifies the sample transparent setting. If an operation depends on the colors of the pixels present in a drawable, like when doing a seed fill, this setting controls whether transparency is considered to be a unique selectable color. When this setting is TRUE, transparent areas can be selected or filled. This setting affects the following procedures: 'gimp-image-select-color', 'gimp-image-select-contiguous-color'.\00", align 1
@.str.223 = private unnamed_addr constant [31 x i8] c"gimp-context-get-interpolation\00", align 1
@.str.224 = private unnamed_addr constant [28 x i8] c"Get the interpolation type.\00", align 1
@.str.225 = private unnamed_addr constant [289 x i8] c"This procedure returns the interpolation setting. The return value is an integer which corresponds to the values listed in the argument description. If the interpolation has not been set explicitly by 'gimp-context-set-interpolation', the default interpolation set in gimprc will be used.\00", align 1
@.str.226 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.227 = private unnamed_addr constant [23 x i8] c"The interpolation type\00", align 1
@.str.228 = private unnamed_addr constant [31 x i8] c"gimp-context-set-interpolation\00", align 1
@.str.229 = private unnamed_addr constant [28 x i8] c"Set the interpolation type.\00", align 1
@.str.230 = private unnamed_addr constant [353 x i8] c"This procedure modifies the interpolation setting. This setting affects affects the following procedures: 'gimp-item-transform-flip', 'gimp-item-transform-perspective', 'gimp-item-transform-rotate', 'gimp-item-transform-scale', 'gimp-item-transform-shear', 'gimp-item-transform-2d', 'gimp-item-transform-matrix', 'gimp-image-scale', 'gimp-layer-scale'.\00", align 1
@.str.231 = private unnamed_addr constant [37 x i8] c"gimp-context-get-transform-direction\00", align 1
@.str.232 = private unnamed_addr constant [29 x i8] c"Get the transform direction.\00", align 1
@.str.233 = private unnamed_addr constant [147 x i8] c"This procedure returns the transform direction. The return value is an integer which corresponds to the values listed in the argument description.\00", align 1
@.str.234 = private unnamed_addr constant [20 x i8] c"transform-direction\00", align 1
@.str.235 = private unnamed_addr constant [20 x i8] c"transform direction\00", align 1
@.str.236 = private unnamed_addr constant [24 x i8] c"The transform direction\00", align 1
@.str.237 = private unnamed_addr constant [37 x i8] c"gimp-context-set-transform-direction\00", align 1
@.str.238 = private unnamed_addr constant [29 x i8] c"Set the transform direction.\00", align 1
@.str.239 = private unnamed_addr constant [319 x i8] c"This procedure modifies the transform direction setting. This setting affects affects the following procedures: 'gimp-item-transform-flip', 'gimp-item-transform-perspective', 'gimp-item-transform-rotate', 'gimp-item-transform-scale', 'gimp-item-transform-shear', 'gimp-item-transform-2d', 'gimp-item-transform-matrix'.\00", align 1
@.str.240 = private unnamed_addr constant [34 x i8] c"gimp-context-get-transform-resize\00", align 1
@.str.241 = private unnamed_addr constant [31 x i8] c"Get the transform resize type.\00", align 1
@.str.242 = private unnamed_addr constant [152 x i8] c"This procedure returns the transform resize setting. The return value is an integer which corresponds to the values listed in the argument description.\00", align 1
@.str.243 = private unnamed_addr constant [17 x i8] c"transform-resize\00", align 1
@.str.244 = private unnamed_addr constant [17 x i8] c"transform resize\00", align 1
@.str.245 = private unnamed_addr constant [26 x i8] c"The transform resize type\00", align 1
@.str.246 = private unnamed_addr constant [34 x i8] c"gimp-context-set-transform-resize\00", align 1
@.str.247 = private unnamed_addr constant [31 x i8] c"Set the transform resize type.\00", align 1
@.str.248 = private unnamed_addr constant [555 x i8] c"This procedure modifies the transform resize setting. When transforming pixels, if the result of a transform operation has a different size than the original area, this setting determines how the resulting area is sized. This setting affects affects the following procedures: 'gimp-item-transform-flip', 'gimp-item-transform-flip-simple', 'gimp-item-transform-perspective', 'gimp-item-transform-rotate', 'gimp-item-transform-rotate-simple', 'gimp-item-transform-scale', 'gimp-item-transform-shear', 'gimp-item-transform-2d', 'gimp-item-transform-matrix'.\00", align 1
@.str.249 = private unnamed_addr constant [37 x i8] c"gimp-context-get-transform-recursion\00", align 1
@.str.250 = private unnamed_addr constant [43 x i8] c"Get the transform supersampling recursion.\00", align 1
@.str.251 = private unnamed_addr constant [68 x i8] c"This procedure returns the transform supersampling recursion level.\00", align 1
@.str.252 = private unnamed_addr constant [20 x i8] c"transform-recursion\00", align 1
@.str.253 = private unnamed_addr constant [20 x i8] c"transform recursion\00", align 1
@.str.254 = private unnamed_addr constant [30 x i8] c"The transform recursion level\00", align 1
@.str.255 = private unnamed_addr constant [37 x i8] c"gimp-context-set-transform-recursion\00", align 1
@.str.256 = private unnamed_addr constant [43 x i8] c"Set the transform supersampling recursion.\00", align 1
@.str.257 = private unnamed_addr constant [498 x i8] c"This procedure modifies the transform supersampling recursion level setting. Whether or not a transformation does supersampling is determined by the interplolation type. The recursion level defaults to 3, which is a nice default value. This setting affects affects the following procedures: 'gimp-item-transform-flip', 'gimp-item-transform-perspective', 'gimp-item-transform-rotate', 'gimp-item-transform-scale', 'gimp-item-transform-shear', 'gimp-item-transform-2d', 'gimp-item-transform-matrix'.\00", align 1
@.str.258 = private unnamed_addr constant [26 x i8] c"gimp-context-get-ink-size\00", align 1
@.str.259 = private unnamed_addr constant [29 x i8] c"Get ink blob size in pixels.\00", align 1
@.str.260 = private unnamed_addr constant [46 x i8] c"Get the ink blob size in pixels for ink tool.\00", align 1
@.str.261 = private unnamed_addr constant [24 x i8] c"ink blob size in pixels\00", align 1
@.str.262 = private unnamed_addr constant [26 x i8] c"gimp-context-set-ink-size\00", align 1
@.str.263 = private unnamed_addr constant [29 x i8] c"Set ink blob size in pixels.\00", align 1
@.str.264 = private unnamed_addr constant [46 x i8] c"Set the ink blob size in pixels for ink tool.\00", align 1
@.str.265 = private unnamed_addr constant [27 x i8] c"gimp-context-get-ink-angle\00", align 1
@.str.266 = private unnamed_addr constant [26 x i8] c"Get ink angle in degrees.\00", align 1
@.str.267 = private unnamed_addr constant [43 x i8] c"Get the ink angle in degrees for ink tool.\00", align 1
@.str.268 = private unnamed_addr constant [21 x i8] c"ink angle in degrees\00", align 1
@.str.269 = private unnamed_addr constant [27 x i8] c"gimp-context-set-ink-angle\00", align 1
@.str.270 = private unnamed_addr constant [26 x i8] c"Set ink angle in degrees.\00", align 1
@.str.271 = private unnamed_addr constant [43 x i8] c"Set the ink angle in degrees for ink tool.\00", align 1
@.str.272 = private unnamed_addr constant [38 x i8] c"gimp-context-get-ink-size-sensitivity\00", align 1
@.str.273 = private unnamed_addr constant [26 x i8] c"Get ink size sensitivity.\00", align 1
@.str.274 = private unnamed_addr constant [43 x i8] c"Get the ink size sensitivity for ink tool.\00", align 1
@.str.275 = private unnamed_addr constant [21 x i8] c"ink size sensitivity\00", align 1
@.str.276 = private unnamed_addr constant [38 x i8] c"gimp-context-set-ink-size-sensitivity\00", align 1
@.str.277 = private unnamed_addr constant [26 x i8] c"Set ink size sensitivity.\00", align 1
@.str.278 = private unnamed_addr constant [43 x i8] c"Set the ink size sensitivity for ink tool.\00", align 1
@.str.279 = private unnamed_addr constant [38 x i8] c"gimp-context-get-ink-tilt-sensitivity\00", align 1
@.str.280 = private unnamed_addr constant [26 x i8] c"Get ink tilt sensitivity.\00", align 1
@.str.281 = private unnamed_addr constant [43 x i8] c"Get the ink tilt sensitivity for ink tool.\00", align 1
@.str.282 = private unnamed_addr constant [5 x i8] c"tilt\00", align 1
@.str.283 = private unnamed_addr constant [21 x i8] c"ink tilt sensitivity\00", align 1
@.str.284 = private unnamed_addr constant [38 x i8] c"gimp-context-set-ink-tilt-sensitivity\00", align 1
@.str.285 = private unnamed_addr constant [26 x i8] c"Set ink tilt sensitivity.\00", align 1
@.str.286 = private unnamed_addr constant [43 x i8] c"Set the ink tilt sensitivity for ink tool.\00", align 1
@.str.287 = private unnamed_addr constant [39 x i8] c"gimp-context-get-ink-speed-sensitivity\00", align 1
@.str.288 = private unnamed_addr constant [27 x i8] c"Get ink speed sensitivity.\00", align 1
@.str.289 = private unnamed_addr constant [44 x i8] c"Get the ink speed sensitivity for ink tool.\00", align 1
@.str.290 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.291 = private unnamed_addr constant [22 x i8] c"ink speed sensitivity\00", align 1
@.str.292 = private unnamed_addr constant [39 x i8] c"gimp-context-set-ink-speed-sensitivity\00", align 1
@.str.293 = private unnamed_addr constant [27 x i8] c"Set ink speed sensitivity.\00", align 1
@.str.294 = private unnamed_addr constant [44 x i8] c"Set the ink speed sensitivity for ink tool.\00", align 1
@.str.295 = private unnamed_addr constant [31 x i8] c"gimp-context-get-ink-blob-type\00", align 1
@.str.296 = private unnamed_addr constant [19 x i8] c"Get ink blob type.\00", align 1
@.str.297 = private unnamed_addr constant [36 x i8] c"Get the ink blob type for ink tool.\00", align 1
@.str.298 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.299 = private unnamed_addr constant [14 x i8] c"Ink blob type\00", align 1
@.str.300 = private unnamed_addr constant [31 x i8] c"gimp-context-set-ink-blob-type\00", align 1
@.str.301 = private unnamed_addr constant [19 x i8] c"Set ink blob type.\00", align 1
@.str.302 = private unnamed_addr constant [36 x i8] c"Set the ink blob type for ink tool.\00", align 1
@.str.303 = private unnamed_addr constant [39 x i8] c"gimp-context-get-ink-blob-aspect-ratio\00", align 1
@.str.304 = private unnamed_addr constant [27 x i8] c"Get ink blob aspect ratio.\00", align 1
@.str.305 = private unnamed_addr constant [44 x i8] c"Get the ink blob aspect ratio for ink tool.\00", align 1
@.str.306 = private unnamed_addr constant [22 x i8] c"ink blob aspect ratio\00", align 1
@.str.307 = private unnamed_addr constant [39 x i8] c"gimp-context-set-ink-blob-aspect-ratio\00", align 1
@.str.308 = private unnamed_addr constant [27 x i8] c"Set ink blob aspect ratio.\00", align 1
@.str.309 = private unnamed_addr constant [44 x i8] c"Set the ink blob aspect ratio for ink tool.\00", align 1
@.str.310 = private unnamed_addr constant [32 x i8] c"gimp-context-get-ink-blob-angle\00", align 1
@.str.311 = private unnamed_addr constant [31 x i8] c"Get ink blob angle in degrees.\00", align 1
@.str.312 = private unnamed_addr constant [48 x i8] c"Get the ink blob angle in degrees for ink tool.\00", align 1
@.str.313 = private unnamed_addr constant [26 x i8] c"ink blob angle in degrees\00", align 1
@.str.314 = private unnamed_addr constant [32 x i8] c"gimp-context-set-ink-blob-angle\00", align 1
@.str.315 = private unnamed_addr constant [31 x i8] c"Set ink blob angle in degrees.\00", align 1
@.str.316 = private unnamed_addr constant [48 x i8] c"Set the ink blob angle in degrees for ink tool.\00", align 1
@context_get_foreground_invoker.foreground = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8
@context_get_background_invoker.background = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8
@.str.317 = private unnamed_addr constant [16 x i8] c"gimp-paintbrush\00", align 1
@.str.318 = private unnamed_addr constant [11 x i8] c"brush-size\00", align 1
@.str.319 = private unnamed_addr constant [19 x i8] c"brush-aspect-ratio\00", align 1
@.str.320 = private unnamed_addr constant [12 x i8] c"brush-angle\00", align 1
@.str.321 = private unnamed_addr constant [9 x i8] c"gimp-ink\00", align 1
@.str.322 = private unnamed_addr constant [11 x i8] c"tilt-angle\00", align 1
@.str.323 = private unnamed_addr constant [17 x i8] c"size-sensitivity\00", align 1
@.str.324 = private unnamed_addr constant [17 x i8] c"tilt-sensitivity\00", align 1
@.str.325 = private unnamed_addr constant [16 x i8] c"vel-sensitivity\00", align 1
@.str.326 = private unnamed_addr constant [10 x i8] c"blob-type\00", align 1
@.str.327 = private unnamed_addr constant [12 x i8] c"blob-aspect\00", align 1
@.str.328 = private unnamed_addr constant [11 x i8] c"blob-angle\00", align 1

; Function Attrs: nounwind uwtable
define void @register_context_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_push_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %4, %struct._GimpProcedure* %5)
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %7 = bitcast %struct._GimpProcedure* %6 to i8*
  call void @g_object_unref(i8* %7)
  %call3 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_pop_invoker)
  store %struct._GimpProcedure* %call3, %struct._GimpProcedure** %procedure, align 8
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %9 = bitcast %struct._GimpProcedure* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_object_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0))
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %12 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %12, %struct._GimpProcedure* %13)
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %15 = bitcast %struct._GimpProcedure* %14 to i8*
  call void @g_object_unref(i8* %15)
  %call6 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_defaults_invoker)
  store %struct._GimpProcedure* %call6, %struct._GimpProcedure** %procedure, align 8
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %17 = bitcast %struct._GimpProcedure* %16 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call7)
  %18 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([273 x i8], [273 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %20 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %20, %struct._GimpProcedure* %21)
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %23 = bitcast %struct._GimpProcedure* %22 to i8*
  call void @g_object_unref(i8* %23)
  %call9 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_list_paint_methods_invoker)
  store %struct._GimpProcedure* %call9, %struct._GimpProcedure** %procedure, align 8
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %25 = bitcast %struct._GimpProcedure* %24 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call10)
  %26 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0))
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* null)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call12 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %28, %struct._GParamSpec* %call12)
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_string_array(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %29, %struct._GParamSpec* %call13)
  %30 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %30, %struct._GimpProcedure* %31)
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %33 = bitcast %struct._GimpProcedure* %32 to i8*
  call void @g_object_unref(i8* %33)
  %call14 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_paint_method_invoker)
  store %struct._GimpProcedure* %call14, %struct._GimpProcedure** %procedure, align 8
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %35 = bitcast %struct._GimpProcedure* %34 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_object_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call15)
  %36 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0))
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* null)
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call17 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %38, %struct._GParamSpec* %call17)
  %39 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %39, %struct._GimpProcedure* %40)
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %42 = bitcast %struct._GimpProcedure* %41 to i8*
  call void @g_object_unref(i8* %42)
  %call18 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_paint_method_invoker)
  store %struct._GimpProcedure* %call18, %struct._GimpProcedure** %procedure, align 8
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %44 = bitcast %struct._GimpProcedure* %43 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_object_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call19)
  %45 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i32 0, i32 0))
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([353 x i8], [353 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* null)
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call21 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %47, %struct._GParamSpec* %call21)
  %48 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %48, %struct._GimpProcedure* %49)
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %51 = bitcast %struct._GimpProcedure* %50 to i8*
  call void @g_object_unref(i8* %51)
  %call22 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_foreground_invoker)
  store %struct._GimpProcedure* %call22, %struct._GimpProcedure** %procedure, align 8
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %53 = bitcast %struct._GimpProcedure* %52 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_object_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call23)
  %54 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0))
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call25 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %56, %struct._GParamSpec* %call25)
  %57 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %57, %struct._GimpProcedure* %58)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %60 = bitcast %struct._GimpProcedure* %59 to i8*
  call void @g_object_unref(i8* %60)
  %call26 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_foreground_invoker)
  store %struct._GimpProcedure* %call26, %struct._GimpProcedure** %procedure, align 8
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %62 = bitcast %struct._GimpProcedure* %61 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_object_get_type() #4
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call27)
  %63 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0))
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call29 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %65, %struct._GParamSpec* %call29)
  %66 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %66, %struct._GimpProcedure* %67)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %69 = bitcast %struct._GimpProcedure* %68 to i8*
  call void @g_object_unref(i8* %69)
  %call30 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_background_invoker)
  store %struct._GimpProcedure* %call30, %struct._GimpProcedure** %procedure, align 8
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %71 = bitcast %struct._GimpProcedure* %70 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_object_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call31)
  %72 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i32 0, i32 0))
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %74 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %74, %struct._GParamSpec* %call33)
  %75 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %75, %struct._GimpProcedure* %76)
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %78 = bitcast %struct._GimpProcedure* %77 to i8*
  call void @g_object_unref(i8* %78)
  %call34 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_background_invoker)
  store %struct._GimpProcedure* %call34, %struct._GimpProcedure** %procedure, align 8
  %79 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %80 = bitcast %struct._GimpProcedure* %79 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_object_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call35)
  %81 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i32 0, i32 0))
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call37 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %83, %struct._GParamSpec* %call37)
  %84 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %84, %struct._GimpProcedure* %85)
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %87 = bitcast %struct._GimpProcedure* %86 to i8*
  call void @g_object_unref(i8* %87)
  %call38 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_default_colors_invoker)
  store %struct._GimpProcedure* %call38, %struct._GimpProcedure** %procedure, align 8
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %89 = bitcast %struct._GimpProcedure* %88 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_object_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call39)
  %90 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i32 0, i32 0))
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %92 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %93 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %92, %struct._GimpProcedure* %93)
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %95 = bitcast %struct._GimpProcedure* %94 to i8*
  call void @g_object_unref(i8* %95)
  %call41 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_swap_colors_invoker)
  store %struct._GimpProcedure* %call41, %struct._GimpProcedure** %procedure, align 8
  %96 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %97 = bitcast %struct._GimpProcedure* %96 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_object_get_type() #4
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call42)
  %98 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.57, i32 0, i32 0))
  %99 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %100 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %100, %struct._GimpProcedure* %101)
  %102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %103 = bitcast %struct._GimpProcedure* %102 to i8*
  call void @g_object_unref(i8* %103)
  %call44 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_opacity_invoker)
  store %struct._GimpProcedure* %call44, %struct._GimpProcedure** %procedure, align 8
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %105 = bitcast %struct._GimpProcedure* %104 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_object_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call45)
  %106 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i32 0, i32 0))
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call47 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %108, %struct._GParamSpec* %call47)
  %109 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %109, %struct._GimpProcedure* %110)
  %111 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %112 = bitcast %struct._GimpProcedure* %111 to i8*
  call void @g_object_unref(i8* %112)
  %call48 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_opacity_invoker)
  store %struct._GimpProcedure* %call48, %struct._GimpProcedure** %procedure, align 8
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %114 = bitcast %struct._GimpProcedure* %113 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_object_get_type() #4
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call49)
  %115 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i32 0, i32 0))
  %116 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call51 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %117, %struct._GParamSpec* %call51)
  %118 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %118, %struct._GimpProcedure* %119)
  %120 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %121 = bitcast %struct._GimpProcedure* %120 to i8*
  call void @g_object_unref(i8* %121)
  %call52 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_paint_mode_invoker)
  store %struct._GimpProcedure* %call52, %struct._GimpProcedure** %procedure, align 8
  %122 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %123 = bitcast %struct._GimpProcedure* %122 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_object_get_type() #4
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call53)
  %124 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.68, i32 0, i32 0))
  %125 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %126 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call55 = call i64 @gimp_layer_mode_effects_get_type() #4
  %call56 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i32 0, i32 0), i64 %call55, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %126, %struct._GParamSpec* %call56)
  %127 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %128 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %127, %struct._GimpProcedure* %128)
  %129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %130 = bitcast %struct._GimpProcedure* %129 to i8*
  call void @g_object_unref(i8* %130)
  %call57 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_paint_mode_invoker)
  store %struct._GimpProcedure* %call57, %struct._GimpProcedure** %procedure, align 8
  %131 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %132 = bitcast %struct._GimpProcedure* %131 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_object_get_type() #4
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call58)
  %133 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i32 0, i32 0))
  %134 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %135 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call60 = call i64 @gimp_layer_mode_effects_get_type() #4
  %call61 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i32 0, i32 0), i64 %call60, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %135, %struct._GParamSpec* %call61)
  %136 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %137 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %136, %struct._GimpProcedure* %137)
  %138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %139 = bitcast %struct._GimpProcedure* %138 to i8*
  call void @g_object_unref(i8* %139)
  %call62 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_brush_invoker)
  store %struct._GimpProcedure* %call62, %struct._GimpProcedure** %procedure, align 8
  %140 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %141 = bitcast %struct._GimpProcedure* %140 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_object_get_type() #4
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call63)
  %142 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.77, i32 0, i32 0))
  %143 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %143, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call65 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.80, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %144, %struct._GParamSpec* %call65)
  %145 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %146 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %145, %struct._GimpProcedure* %146)
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %148 = bitcast %struct._GimpProcedure* %147 to i8*
  call void @g_object_unref(i8* %148)
  %call66 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_brush_invoker)
  store %struct._GimpProcedure* %call66, %struct._GimpProcedure** %procedure, align 8
  %149 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %150 = bitcast %struct._GimpProcedure* %149 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_object_get_type() #4
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call67)
  %151 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %151, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.81, i32 0, i32 0))
  %152 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %152, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([338 x i8], [338 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %153 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call69 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.84, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %153, %struct._GParamSpec* %call69)
  %154 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %155 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %154, %struct._GimpProcedure* %155)
  %156 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %157 = bitcast %struct._GimpProcedure* %156 to i8*
  call void @g_object_unref(i8* %157)
  %call70 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_brush_size_invoker)
  store %struct._GimpProcedure* %call70, %struct._GimpProcedure** %procedure, align 8
  %158 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %159 = bitcast %struct._GimpProcedure* %158 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_object_get_type() #4
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call71)
  %160 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i32 0, i32 0))
  %161 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %161, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %162 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call73 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %162, %struct._GParamSpec* %call73)
  %163 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %164 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %163, %struct._GimpProcedure* %164)
  %165 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %166 = bitcast %struct._GimpProcedure* %165 to i8*
  call void @g_object_unref(i8* %166)
  %call74 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_brush_size_invoker)
  store %struct._GimpProcedure* %call74, %struct._GimpProcedure** %procedure, align 8
  %167 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %168 = bitcast %struct._GimpProcedure* %167 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_object_get_type() #4
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 %call75)
  %169 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i32 0, i32 0))
  %170 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %170, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %171 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call77 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %171, %struct._GParamSpec* %call77)
  %172 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %173 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %172, %struct._GimpProcedure* %173)
  %174 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %175 = bitcast %struct._GimpProcedure* %174 to i8*
  call void @g_object_unref(i8* %175)
  %call78 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_brush_default_size_invoker)
  store %struct._GimpProcedure* %call78, %struct._GimpProcedure** %procedure, align 8
  %176 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %177 = bitcast %struct._GimpProcedure* %176 to %struct._GTypeInstance*
  %call79 = call i64 @gimp_object_get_type() #4
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %177, i64 %call79)
  %178 = bitcast %struct._GTypeInstance* %call80 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %178, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.95, i32 0, i32 0))
  %179 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %179, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %180 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %181 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %180, %struct._GimpProcedure* %181)
  %182 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %183 = bitcast %struct._GimpProcedure* %182 to i8*
  call void @g_object_unref(i8* %183)
  %call81 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_brush_aspect_ratio_invoker)
  store %struct._GimpProcedure* %call81, %struct._GimpProcedure** %procedure, align 8
  %184 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %185 = bitcast %struct._GimpProcedure* %184 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_object_get_type() #4
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %185, i64 %call82)
  %186 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %186, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.98, i32 0, i32 0))
  %187 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %187, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %188 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call84 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, double -2.000000e+01, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %188, %struct._GParamSpec* %call84)
  %189 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %190 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %189, %struct._GimpProcedure* %190)
  %191 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %192 = bitcast %struct._GimpProcedure* %191 to i8*
  call void @g_object_unref(i8* %192)
  %call85 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_brush_aspect_ratio_invoker)
  store %struct._GimpProcedure* %call85, %struct._GimpProcedure** %procedure, align 8
  %193 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %194 = bitcast %struct._GimpProcedure* %193 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_object_get_type() #4
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %194, i64 %call86)
  %195 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %195, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.103, i32 0, i32 0))
  %196 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %196, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %197 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call88 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, double -2.000000e+01, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %197, %struct._GParamSpec* %call88)
  %198 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %199 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %198, %struct._GimpProcedure* %199)
  %200 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %201 = bitcast %struct._GimpProcedure* %200 to i8*
  call void @g_object_unref(i8* %201)
  %call89 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_brush_angle_invoker)
  store %struct._GimpProcedure* %call89, %struct._GimpProcedure** %procedure, align 8
  %202 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %203 = bitcast %struct._GimpProcedure* %202 to %struct._GTypeInstance*
  %call90 = call i64 @gimp_object_get_type() #4
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %203, i64 %call90)
  %204 = bitcast %struct._GTypeInstance* %call91 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %204, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.105, i32 0, i32 0))
  %205 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %205, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %206 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call92 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i32 0, i32 0), double -1.800000e+02, double 1.800000e+02, double -1.800000e+02, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %206, %struct._GParamSpec* %call92)
  %207 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %208 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %207, %struct._GimpProcedure* %208)
  %209 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %210 = bitcast %struct._GimpProcedure* %209 to i8*
  call void @g_object_unref(i8* %210)
  %call93 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_brush_angle_invoker)
  store %struct._GimpProcedure* %call93, %struct._GimpProcedure** %procedure, align 8
  %211 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %212 = bitcast %struct._GimpProcedure* %211 to %struct._GTypeInstance*
  %call94 = call i64 @gimp_object_get_type() #4
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %212, i64 %call94)
  %213 = bitcast %struct._GTypeInstance* %call95 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %213, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.110, i32 0, i32 0))
  %214 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %214, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %215 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call96 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i32 0, i32 0), double -1.800000e+02, double 1.800000e+02, double -1.800000e+02, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %215, %struct._GParamSpec* %call96)
  %216 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %217 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %216, %struct._GimpProcedure* %217)
  %218 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %219 = bitcast %struct._GimpProcedure* %218 to i8*
  call void @g_object_unref(i8* %219)
  %call97 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_dynamics_invoker)
  store %struct._GimpProcedure* %call97, %struct._GimpProcedure** %procedure, align 8
  %220 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %221 = bitcast %struct._GimpProcedure* %220 to %struct._GTypeInstance*
  %call98 = call i64 @gimp_object_get_type() #4
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %221, i64 %call98)
  %222 = bitcast %struct._GTypeInstance* %call99 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %222, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.112, i32 0, i32 0))
  %223 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %223, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %224 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call100 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %224, %struct._GParamSpec* %call100)
  %225 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %226 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %225, %struct._GimpProcedure* %226)
  %227 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %228 = bitcast %struct._GimpProcedure* %227 to i8*
  call void @g_object_unref(i8* %228)
  %call101 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_dynamics_invoker)
  store %struct._GimpProcedure* %call101, %struct._GimpProcedure** %procedure, align 8
  %229 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %230 = bitcast %struct._GimpProcedure* %229 to %struct._GTypeInstance*
  %call102 = call i64 @gimp_object_get_type() #4
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %230, i64 %call102)
  %231 = bitcast %struct._GTypeInstance* %call103 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %231, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.116, i32 0, i32 0))
  %232 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %232, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([372 x i8], [372 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %233 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call104 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.119, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %233, %struct._GParamSpec* %call104)
  %234 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %235 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %234, %struct._GimpProcedure* %235)
  %236 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %237 = bitcast %struct._GimpProcedure* %236 to i8*
  call void @g_object_unref(i8* %237)
  %call105 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_pattern_invoker)
  store %struct._GimpProcedure* %call105, %struct._GimpProcedure** %procedure, align 8
  %238 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %239 = bitcast %struct._GimpProcedure* %238 to %struct._GTypeInstance*
  %call106 = call i64 @gimp_object_get_type() #4
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %239, i64 %call106)
  %240 = bitcast %struct._GTypeInstance* %call107 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %240, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.120, i32 0, i32 0))
  %241 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %241, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([188 x i8], [188 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %242 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call108 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.123, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %242, %struct._GParamSpec* %call108)
  %243 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %244 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %243, %struct._GimpProcedure* %244)
  %245 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %246 = bitcast %struct._GimpProcedure* %245 to i8*
  call void @g_object_unref(i8* %246)
  %call109 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_pattern_invoker)
  store %struct._GimpProcedure* %call109, %struct._GimpProcedure** %procedure, align 8
  %247 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %248 = bitcast %struct._GimpProcedure* %247 to %struct._GTypeInstance*
  %call110 = call i64 @gimp_object_get_type() #4
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %248, i64 %call110)
  %249 = bitcast %struct._GTypeInstance* %call111 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %249, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.124, i32 0, i32 0))
  %250 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %250, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([345 x i8], [345 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %251 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call112 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.127, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %251, %struct._GParamSpec* %call112)
  %252 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %253 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %252, %struct._GimpProcedure* %253)
  %254 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %255 = bitcast %struct._GimpProcedure* %254 to i8*
  call void @g_object_unref(i8* %255)
  %call113 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_gradient_invoker)
  store %struct._GimpProcedure* %call113, %struct._GimpProcedure** %procedure, align 8
  %256 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %257 = bitcast %struct._GimpProcedure* %256 to %struct._GTypeInstance*
  %call114 = call i64 @gimp_object_get_type() #4
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %257, i64 %call114)
  %258 = bitcast %struct._GTypeInstance* %call115 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %258, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.128, i32 0, i32 0))
  %259 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %259, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %260 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call116 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.131, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %260, %struct._GParamSpec* %call116)
  %261 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %262 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %261, %struct._GimpProcedure* %262)
  %263 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %264 = bitcast %struct._GimpProcedure* %263 to i8*
  call void @g_object_unref(i8* %264)
  %call117 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_gradient_invoker)
  store %struct._GimpProcedure* %call117, %struct._GimpProcedure** %procedure, align 8
  %265 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %266 = bitcast %struct._GimpProcedure* %265 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_object_get_type() #4
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %266, i64 %call118)
  %267 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %267, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.132, i32 0, i32 0))
  %268 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %268, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([345 x i8], [345 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %269 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call120 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.135, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %269, %struct._GParamSpec* %call120)
  %270 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %271 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %270, %struct._GimpProcedure* %271)
  %272 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %273 = bitcast %struct._GimpProcedure* %272 to i8*
  call void @g_object_unref(i8* %273)
  %call121 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_palette_invoker)
  store %struct._GimpProcedure* %call121, %struct._GimpProcedure** %procedure, align 8
  %274 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %275 = bitcast %struct._GimpProcedure* %274 to %struct._GTypeInstance*
  %call122 = call i64 @gimp_object_get_type() #4
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %275, i64 %call122)
  %276 = bitcast %struct._GTypeInstance* %call123 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %276, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.136, i32 0, i32 0))
  %277 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %277, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %278 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call124 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.139, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %278, %struct._GParamSpec* %call124)
  %279 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %280 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %279, %struct._GimpProcedure* %280)
  %281 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %282 = bitcast %struct._GimpProcedure* %281 to i8*
  call void @g_object_unref(i8* %282)
  %call125 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_palette_invoker)
  store %struct._GimpProcedure* %call125, %struct._GimpProcedure** %procedure, align 8
  %283 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %284 = bitcast %struct._GimpProcedure* %283 to %struct._GTypeInstance*
  %call126 = call i64 @gimp_object_get_type() #4
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %284, i64 %call126)
  %285 = bitcast %struct._GTypeInstance* %call127 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %285, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.140, i32 0, i32 0))
  %286 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %286, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([341 x i8], [341 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %287 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call128 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.143, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %287, %struct._GParamSpec* %call128)
  %288 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %289 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %288, %struct._GimpProcedure* %289)
  %290 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %291 = bitcast %struct._GimpProcedure* %290 to i8*
  call void @g_object_unref(i8* %291)
  %call129 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_font_invoker)
  store %struct._GimpProcedure* %call129, %struct._GimpProcedure** %procedure, align 8
  %292 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %293 = bitcast %struct._GimpProcedure* %292 to %struct._GTypeInstance*
  %call130 = call i64 @gimp_object_get_type() #4
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %293, i64 %call130)
  %294 = bitcast %struct._GTypeInstance* %call131 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %294, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.144, i32 0, i32 0))
  %295 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %295, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %296 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call132 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.147, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %296, %struct._GParamSpec* %call132)
  %297 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %298 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %297, %struct._GimpProcedure* %298)
  %299 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %300 = bitcast %struct._GimpProcedure* %299 to i8*
  call void @g_object_unref(i8* %300)
  %call133 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_font_invoker)
  store %struct._GimpProcedure* %call133, %struct._GimpProcedure** %procedure, align 8
  %301 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %302 = bitcast %struct._GimpProcedure* %301 to %struct._GTypeInstance*
  %call134 = call i64 @gimp_object_get_type() #4
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %302, i64 %call134)
  %303 = bitcast %struct._GTypeInstance* %call135 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %303, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.148, i32 0, i32 0))
  %304 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %304, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([326 x i8], [326 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %305 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call136 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.151, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %305, %struct._GParamSpec* %call136)
  %306 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %307 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %306, %struct._GimpProcedure* %307)
  %308 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %309 = bitcast %struct._GimpProcedure* %308 to i8*
  call void @g_object_unref(i8* %309)
  %call137 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_antialias_invoker)
  store %struct._GimpProcedure* %call137, %struct._GimpProcedure** %procedure, align 8
  %310 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %311 = bitcast %struct._GimpProcedure* %310 to %struct._GTypeInstance*
  %call138 = call i64 @gimp_object_get_type() #4
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %311, i64 %call138)
  %312 = bitcast %struct._GTypeInstance* %call139 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %312, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.152, i32 0, i32 0))
  %313 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %313, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* null)
  %314 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call140 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.157, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %314, %struct._GParamSpec* %call140)
  %315 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %316 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %315, %struct._GimpProcedure* %316)
  %317 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %318 = bitcast %struct._GimpProcedure* %317 to i8*
  call void @g_object_unref(i8* %318)
  %call141 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_antialias_invoker)
  store %struct._GimpProcedure* %call141, %struct._GimpProcedure** %procedure, align 8
  %319 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %320 = bitcast %struct._GimpProcedure* %319 to %struct._GTypeInstance*
  %call142 = call i64 @gimp_object_get_type() #4
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %320, i64 %call142)
  %321 = bitcast %struct._GTypeInstance* %call143 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %321, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.158, i32 0, i32 0))
  %322 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %322, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([520 x i8], [520 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* null)
  %323 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call144 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.157, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %323, %struct._GParamSpec* %call144)
  %324 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %325 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %324, %struct._GimpProcedure* %325)
  %326 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %327 = bitcast %struct._GimpProcedure* %326 to i8*
  call void @g_object_unref(i8* %327)
  %call145 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_feather_invoker)
  store %struct._GimpProcedure* %call145, %struct._GimpProcedure** %procedure, align 8
  %328 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %329 = bitcast %struct._GimpProcedure* %328 to %struct._GTypeInstance*
  %call146 = call i64 @gimp_object_get_type() #4
  %call147 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %329, i64 %call146)
  %330 = bitcast %struct._GTypeInstance* %call147 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %330, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.161, i32 0, i32 0))
  %331 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %331, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* null)
  %332 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call148 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.165, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %332, %struct._GParamSpec* %call148)
  %333 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %334 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %333, %struct._GimpProcedure* %334)
  %335 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %336 = bitcast %struct._GimpProcedure* %335 to i8*
  call void @g_object_unref(i8* %336)
  %call149 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_feather_invoker)
  store %struct._GimpProcedure* %call149, %struct._GimpProcedure** %procedure, align 8
  %337 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %338 = bitcast %struct._GimpProcedure* %337 to %struct._GTypeInstance*
  %call150 = call i64 @gimp_object_get_type() #4
  %call151 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %338, i64 %call150)
  %339 = bitcast %struct._GTypeInstance* %call151 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %339, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.166, i32 0, i32 0))
  %340 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %340, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([486 x i8], [486 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* null)
  %341 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call152 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.165, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %341, %struct._GParamSpec* %call152)
  %342 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %343 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %342, %struct._GimpProcedure* %343)
  %344 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %345 = bitcast %struct._GimpProcedure* %344 to i8*
  call void @g_object_unref(i8* %345)
  %call153 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_feather_radius_invoker)
  store %struct._GimpProcedure* %call153, %struct._GimpProcedure** %procedure, align 8
  %346 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %347 = bitcast %struct._GimpProcedure* %346 to %struct._GTypeInstance*
  %call154 = call i64 @gimp_object_get_type() #4
  %call155 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %347, i64 %call154)
  %348 = bitcast %struct._GTypeInstance* %call155 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %348, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.169, i32 0, i32 0))
  %349 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %349, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* null)
  %350 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call156 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.174, i32 0, i32 0), double 0.000000e+00, double 1.000000e+03, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %350, %struct._GParamSpec* %call156)
  %351 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call157 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i32 0, i32 0), double 0.000000e+00, double 1.000000e+03, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %351, %struct._GParamSpec* %call157)
  %352 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %353 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %352, %struct._GimpProcedure* %353)
  %354 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %355 = bitcast %struct._GimpProcedure* %354 to i8*
  call void @g_object_unref(i8* %355)
  %call158 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_feather_radius_invoker)
  store %struct._GimpProcedure* %call158, %struct._GimpProcedure** %procedure, align 8
  %356 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %357 = bitcast %struct._GimpProcedure* %356 to %struct._GTypeInstance*
  %call159 = call i64 @gimp_object_get_type() #4
  %call160 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %357, i64 %call159)
  %358 = bitcast %struct._GTypeInstance* %call160 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %358, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.178, i32 0, i32 0))
  %359 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %359, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* null)
  %360 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call161 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.174, i32 0, i32 0), double 0.000000e+00, double 1.000000e+03, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %360, %struct._GParamSpec* %call161)
  %361 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call162 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i32 0, i32 0), double 0.000000e+00, double 1.000000e+03, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %361, %struct._GParamSpec* %call162)
  %362 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %363 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %362, %struct._GimpProcedure* %363)
  %364 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %365 = bitcast %struct._GimpProcedure* %364 to i8*
  call void @g_object_unref(i8* %365)
  %call163 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_sample_merged_invoker)
  store %struct._GimpProcedure* %call163, %struct._GimpProcedure** %procedure, align 8
  %366 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %367 = bitcast %struct._GimpProcedure* %366 to %struct._GTypeInstance*
  %call164 = call i64 @gimp_object_get_type() #4
  %call165 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %367, i64 %call164)
  %368 = bitcast %struct._GTypeInstance* %call165 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %368, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.181, i32 0, i32 0))
  %369 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %369, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %370 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call166 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.186, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %370, %struct._GParamSpec* %call166)
  %371 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %372 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %371, %struct._GimpProcedure* %372)
  %373 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %374 = bitcast %struct._GimpProcedure* %373 to i8*
  call void @g_object_unref(i8* %374)
  %call167 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_sample_merged_invoker)
  store %struct._GimpProcedure* %call167, %struct._GimpProcedure** %procedure, align 8
  %375 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %376 = bitcast %struct._GimpProcedure* %375 to %struct._GTypeInstance*
  %call168 = call i64 @gimp_object_get_type() #4
  %call169 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %376, i64 %call168)
  %377 = bitcast %struct._GTypeInstance* %call169 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %377, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.187, i32 0, i32 0))
  %378 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %378, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([522 x i8], [522 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %379 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call170 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.186, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %379, %struct._GParamSpec* %call170)
  %380 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %381 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %380, %struct._GimpProcedure* %381)
  %382 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %383 = bitcast %struct._GimpProcedure* %382 to i8*
  call void @g_object_unref(i8* %383)
  %call171 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_sample_criterion_invoker)
  store %struct._GimpProcedure* %call171, %struct._GimpProcedure** %procedure, align 8
  %384 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %385 = bitcast %struct._GimpProcedure* %384 to %struct._GTypeInstance*
  %call172 = call i64 @gimp_object_get_type() #4
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %385, i64 %call172)
  %386 = bitcast %struct._GTypeInstance* %call173 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %386, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.190, i32 0, i32 0))
  %387 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %387, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %388 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call174 = call i64 @gimp_select_criterion_get_type() #4
  %call175 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.195, i32 0, i32 0), i64 %call174, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %388, %struct._GParamSpec* %call175)
  %389 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %390 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %389, %struct._GimpProcedure* %390)
  %391 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %392 = bitcast %struct._GimpProcedure* %391 to i8*
  call void @g_object_unref(i8* %392)
  %call176 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_sample_criterion_invoker)
  store %struct._GimpProcedure* %call176, %struct._GimpProcedure** %procedure, align 8
  %393 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %394 = bitcast %struct._GimpProcedure* %393 to %struct._GTypeInstance*
  %call177 = call i64 @gimp_object_get_type() #4
  %call178 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %394, i64 %call177)
  %395 = bitcast %struct._GTypeInstance* %call178 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %395, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.196, i32 0, i32 0))
  %396 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %396, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([377 x i8], [377 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %397 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call179 = call i64 @gimp_select_criterion_get_type() #4
  %call180 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.195, i32 0, i32 0), i64 %call179, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %397, %struct._GParamSpec* %call180)
  %398 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %399 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %398, %struct._GimpProcedure* %399)
  %400 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %401 = bitcast %struct._GimpProcedure* %400 to i8*
  call void @g_object_unref(i8* %401)
  %call181 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_sample_threshold_invoker)
  store %struct._GimpProcedure* %call181, %struct._GimpProcedure** %procedure, align 8
  %402 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %403 = bitcast %struct._GimpProcedure* %402 to %struct._GTypeInstance*
  %call182 = call i64 @gimp_object_get_type() #4
  %call183 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %403, i64 %call182)
  %404 = bitcast %struct._GTypeInstance* %call183 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %404, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.199, i32 0, i32 0))
  %405 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %405, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %406 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call184 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.204, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %406, %struct._GParamSpec* %call184)
  %407 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %408 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %407, %struct._GimpProcedure* %408)
  %409 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %410 = bitcast %struct._GimpProcedure* %409 to i8*
  call void @g_object_unref(i8* %410)
  %call185 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_sample_threshold_invoker)
  store %struct._GimpProcedure* %call185, %struct._GimpProcedure** %procedure, align 8
  %411 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %412 = bitcast %struct._GimpProcedure* %411 to %struct._GTypeInstance*
  %call186 = call i64 @gimp_object_get_type() #4
  %call187 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %412, i64 %call186)
  %413 = bitcast %struct._GTypeInstance* %call187 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %413, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.205, i32 0, i32 0))
  %414 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %414, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([458 x i8], [458 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %415 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call188 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.204, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %415, %struct._GParamSpec* %call188)
  %416 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %417 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %416, %struct._GimpProcedure* %417)
  %418 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %419 = bitcast %struct._GimpProcedure* %418 to i8*
  call void @g_object_unref(i8* %419)
  %call189 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_sample_threshold_int_invoker)
  store %struct._GimpProcedure* %call189, %struct._GimpProcedure** %procedure, align 8
  %420 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %421 = bitcast %struct._GimpProcedure* %420 to %struct._GTypeInstance*
  %call190 = call i64 @gimp_object_get_type() #4
  %call191 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %421, i64 %call190)
  %422 = bitcast %struct._GTypeInstance* %call191 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %422, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.208, i32 0, i32 0))
  %423 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %423, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %424 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call192 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.204, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %424, %struct._GParamSpec* %call192)
  %425 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %426 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %425, %struct._GimpProcedure* %426)
  %427 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %428 = bitcast %struct._GimpProcedure* %427 to i8*
  call void @g_object_unref(i8* %428)
  %call193 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_sample_threshold_int_invoker)
  store %struct._GimpProcedure* %call193, %struct._GimpProcedure** %procedure, align 8
  %429 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %430 = bitcast %struct._GimpProcedure* %429 to %struct._GTypeInstance*
  %call194 = call i64 @gimp_object_get_type() #4
  %call195 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %430, i64 %call194)
  %431 = bitcast %struct._GTypeInstance* %call195 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %431, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.211, i32 0, i32 0))
  %432 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %432, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %433 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call196 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.204, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %433, %struct._GParamSpec* %call196)
  %434 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %435 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %434, %struct._GimpProcedure* %435)
  %436 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %437 = bitcast %struct._GimpProcedure* %436 to i8*
  call void @g_object_unref(i8* %437)
  %call197 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_sample_transparent_invoker)
  store %struct._GimpProcedure* %call197, %struct._GimpProcedure** %procedure, align 8
  %438 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %439 = bitcast %struct._GimpProcedure* %438 to %struct._GTypeInstance*
  %call198 = call i64 @gimp_object_get_type() #4
  %call199 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %439, i64 %call198)
  %440 = bitcast %struct._GTypeInstance* %call199 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %440, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.214, i32 0, i32 0))
  %441 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %441, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %442 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call200 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.219, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %442, %struct._GParamSpec* %call200)
  %443 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %444 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %443, %struct._GimpProcedure* %444)
  %445 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %446 = bitcast %struct._GimpProcedure* %445 to i8*
  call void @g_object_unref(i8* %446)
  %call201 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_sample_transparent_invoker)
  store %struct._GimpProcedure* %call201, %struct._GimpProcedure** %procedure, align 8
  %447 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %448 = bitcast %struct._GimpProcedure* %447 to %struct._GTypeInstance*
  %call202 = call i64 @gimp_object_get_type() #4
  %call203 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %448, i64 %call202)
  %449 = bitcast %struct._GTypeInstance* %call203 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %449, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.220, i32 0, i32 0))
  %450 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %450, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([434 x i8], [434 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %451 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call204 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.219, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %451, %struct._GParamSpec* %call204)
  %452 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %453 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %452, %struct._GimpProcedure* %453)
  %454 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %455 = bitcast %struct._GimpProcedure* %454 to i8*
  call void @g_object_unref(i8* %455)
  %call205 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_interpolation_invoker)
  store %struct._GimpProcedure* %call205, %struct._GimpProcedure** %procedure, align 8
  %456 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %457 = bitcast %struct._GimpProcedure* %456 to %struct._GTypeInstance*
  %call206 = call i64 @gimp_object_get_type() #4
  %call207 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %457, i64 %call206)
  %458 = bitcast %struct._GTypeInstance* %call207 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %458, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.223, i32 0, i32 0))
  %459 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %459, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* null)
  %460 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call208 = call i64 @gimp_interpolation_type_get_type() #4
  %call209 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.227, i32 0, i32 0), i64 %call208, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %460, %struct._GParamSpec* %call209)
  %461 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %462 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %461, %struct._GimpProcedure* %462)
  %463 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %464 = bitcast %struct._GimpProcedure* %463 to i8*
  call void @g_object_unref(i8* %464)
  %call210 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_interpolation_invoker)
  store %struct._GimpProcedure* %call210, %struct._GimpProcedure** %procedure, align 8
  %465 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %466 = bitcast %struct._GimpProcedure* %465 to %struct._GTypeInstance*
  %call211 = call i64 @gimp_object_get_type() #4
  %call212 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %466, i64 %call211)
  %467 = bitcast %struct._GTypeInstance* %call212 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %467, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.228, i32 0, i32 0))
  %468 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %468, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([353 x i8], [353 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* null)
  %469 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call213 = call i64 @gimp_interpolation_type_get_type() #4
  %call214 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.227, i32 0, i32 0), i64 %call213, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %469, %struct._GParamSpec* %call214)
  %470 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %471 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %470, %struct._GimpProcedure* %471)
  %472 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %473 = bitcast %struct._GimpProcedure* %472 to i8*
  call void @g_object_unref(i8* %473)
  %call215 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_transform_direction_invoker)
  store %struct._GimpProcedure* %call215, %struct._GimpProcedure** %procedure, align 8
  %474 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %475 = bitcast %struct._GimpProcedure* %474 to %struct._GTypeInstance*
  %call216 = call i64 @gimp_object_get_type() #4
  %call217 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %475, i64 %call216)
  %476 = bitcast %struct._GTypeInstance* %call217 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %476, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.231, i32 0, i32 0))
  %477 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %477, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* null)
  %478 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call218 = call i64 @gimp_transform_direction_get_type() #4
  %call219 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.236, i32 0, i32 0), i64 %call218, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %478, %struct._GParamSpec* %call219)
  %479 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %480 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %479, %struct._GimpProcedure* %480)
  %481 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %482 = bitcast %struct._GimpProcedure* %481 to i8*
  call void @g_object_unref(i8* %482)
  %call220 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_transform_direction_invoker)
  store %struct._GimpProcedure* %call220, %struct._GimpProcedure** %procedure, align 8
  %483 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %484 = bitcast %struct._GimpProcedure* %483 to %struct._GTypeInstance*
  %call221 = call i64 @gimp_object_get_type() #4
  %call222 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %484, i64 %call221)
  %485 = bitcast %struct._GTypeInstance* %call222 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %485, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.237, i32 0, i32 0))
  %486 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %486, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([319 x i8], [319 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* null)
  %487 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call223 = call i64 @gimp_transform_direction_get_type() #4
  %call224 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.236, i32 0, i32 0), i64 %call223, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %487, %struct._GParamSpec* %call224)
  %488 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %489 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %488, %struct._GimpProcedure* %489)
  %490 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %491 = bitcast %struct._GimpProcedure* %490 to i8*
  call void @g_object_unref(i8* %491)
  %call225 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_transform_resize_invoker)
  store %struct._GimpProcedure* %call225, %struct._GimpProcedure** %procedure, align 8
  %492 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %493 = bitcast %struct._GimpProcedure* %492 to %struct._GTypeInstance*
  %call226 = call i64 @gimp_object_get_type() #4
  %call227 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %493, i64 %call226)
  %494 = bitcast %struct._GTypeInstance* %call227 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %494, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.240, i32 0, i32 0))
  %495 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %495, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* null)
  %496 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call228 = call i64 @gimp_transform_resize_get_type() #4
  %call229 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.245, i32 0, i32 0), i64 %call228, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %496, %struct._GParamSpec* %call229)
  %497 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %498 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %497, %struct._GimpProcedure* %498)
  %499 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %500 = bitcast %struct._GimpProcedure* %499 to i8*
  call void @g_object_unref(i8* %500)
  %call230 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_transform_resize_invoker)
  store %struct._GimpProcedure* %call230, %struct._GimpProcedure** %procedure, align 8
  %501 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %502 = bitcast %struct._GimpProcedure* %501 to %struct._GTypeInstance*
  %call231 = call i64 @gimp_object_get_type() #4
  %call232 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %502, i64 %call231)
  %503 = bitcast %struct._GTypeInstance* %call232 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %503, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.246, i32 0, i32 0))
  %504 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %504, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([555 x i8], [555 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* null)
  %505 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call233 = call i64 @gimp_transform_resize_get_type() #4
  %call234 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.245, i32 0, i32 0), i64 %call233, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %505, %struct._GParamSpec* %call234)
  %506 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %507 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %506, %struct._GimpProcedure* %507)
  %508 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %509 = bitcast %struct._GimpProcedure* %508 to i8*
  call void @g_object_unref(i8* %509)
  %call235 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_transform_recursion_invoker)
  store %struct._GimpProcedure* %call235, %struct._GimpProcedure** %procedure, align 8
  %510 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %511 = bitcast %struct._GimpProcedure* %510 to %struct._GTypeInstance*
  %call236 = call i64 @gimp_object_get_type() #4
  %call237 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %511, i64 %call236)
  %512 = bitcast %struct._GTypeInstance* %call237 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %512, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.249, i32 0, i32 0))
  %513 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %513, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* null)
  %514 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call238 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.254, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %514, %struct._GParamSpec* %call238)
  %515 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %516 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %515, %struct._GimpProcedure* %516)
  %517 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %518 = bitcast %struct._GimpProcedure* %517 to i8*
  call void @g_object_unref(i8* %518)
  %call239 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_transform_recursion_invoker)
  store %struct._GimpProcedure* %call239, %struct._GimpProcedure** %procedure, align 8
  %519 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %520 = bitcast %struct._GimpProcedure* %519 to %struct._GTypeInstance*
  %call240 = call i64 @gimp_object_get_type() #4
  %call241 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %520, i64 %call240)
  %521 = bitcast %struct._GTypeInstance* %call241 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %521, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.255, i32 0, i32 0))
  %522 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %522, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([498 x i8], [498 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* null)
  %523 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call242 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.254, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %523, %struct._GParamSpec* %call242)
  %524 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %525 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %524, %struct._GimpProcedure* %525)
  %526 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %527 = bitcast %struct._GimpProcedure* %526 to i8*
  call void @g_object_unref(i8* %527)
  %call243 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_ink_size_invoker)
  store %struct._GimpProcedure* %call243, %struct._GimpProcedure** %procedure, align 8
  %528 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %529 = bitcast %struct._GimpProcedure* %528 to %struct._GTypeInstance*
  %call244 = call i64 @gimp_object_get_type() #4
  %call245 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %529, i64 %call244)
  %530 = bitcast %struct._GTypeInstance* %call245 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %530, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.258, i32 0, i32 0))
  %531 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %531, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %532 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call246 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.261, i32 0, i32 0), double 0.000000e+00, double 2.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %532, %struct._GParamSpec* %call246)
  %533 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %534 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %533, %struct._GimpProcedure* %534)
  %535 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %536 = bitcast %struct._GimpProcedure* %535 to i8*
  call void @g_object_unref(i8* %536)
  %call247 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_ink_size_invoker)
  store %struct._GimpProcedure* %call247, %struct._GimpProcedure** %procedure, align 8
  %537 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %538 = bitcast %struct._GimpProcedure* %537 to %struct._GTypeInstance*
  %call248 = call i64 @gimp_object_get_type() #4
  %call249 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %538, i64 %call248)
  %539 = bitcast %struct._GTypeInstance* %call249 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %539, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.262, i32 0, i32 0))
  %540 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %540, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %541 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call250 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.261, i32 0, i32 0), double 0.000000e+00, double 2.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %541, %struct._GParamSpec* %call250)
  %542 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %543 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %542, %struct._GimpProcedure* %543)
  %544 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %545 = bitcast %struct._GimpProcedure* %544 to i8*
  call void @g_object_unref(i8* %545)
  %call251 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_ink_angle_invoker)
  store %struct._GimpProcedure* %call251, %struct._GimpProcedure** %procedure, align 8
  %546 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %547 = bitcast %struct._GimpProcedure* %546 to %struct._GTypeInstance*
  %call252 = call i64 @gimp_object_get_type() #4
  %call253 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %547, i64 %call252)
  %548 = bitcast %struct._GTypeInstance* %call253 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %548, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.265, i32 0, i32 0))
  %549 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %549, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %550 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call254 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.268, i32 0, i32 0), double -9.000000e+01, double 9.000000e+01, double -9.000000e+01, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %550, %struct._GParamSpec* %call254)
  %551 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %552 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %551, %struct._GimpProcedure* %552)
  %553 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %554 = bitcast %struct._GimpProcedure* %553 to i8*
  call void @g_object_unref(i8* %554)
  %call255 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_ink_angle_invoker)
  store %struct._GimpProcedure* %call255, %struct._GimpProcedure** %procedure, align 8
  %555 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %556 = bitcast %struct._GimpProcedure* %555 to %struct._GTypeInstance*
  %call256 = call i64 @gimp_object_get_type() #4
  %call257 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %556, i64 %call256)
  %557 = bitcast %struct._GTypeInstance* %call257 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %557, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.269, i32 0, i32 0))
  %558 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %558, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.269, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %559 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call258 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.268, i32 0, i32 0), double -9.000000e+01, double 9.000000e+01, double -9.000000e+01, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %559, %struct._GParamSpec* %call258)
  %560 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %561 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %560, %struct._GimpProcedure* %561)
  %562 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %563 = bitcast %struct._GimpProcedure* %562 to i8*
  call void @g_object_unref(i8* %563)
  %call259 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_ink_size_sensitivity_invoker)
  store %struct._GimpProcedure* %call259, %struct._GimpProcedure** %procedure, align 8
  %564 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %565 = bitcast %struct._GimpProcedure* %564 to %struct._GTypeInstance*
  %call260 = call i64 @gimp_object_get_type() #4
  %call261 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %565, i64 %call260)
  %566 = bitcast %struct._GTypeInstance* %call261 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %566, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.272, i32 0, i32 0))
  %567 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %567, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %568 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call262 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.275, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %568, %struct._GParamSpec* %call262)
  %569 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %570 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %569, %struct._GimpProcedure* %570)
  %571 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %572 = bitcast %struct._GimpProcedure* %571 to i8*
  call void @g_object_unref(i8* %572)
  %call263 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_ink_size_sensitivity_invoker)
  store %struct._GimpProcedure* %call263, %struct._GimpProcedure** %procedure, align 8
  %573 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %574 = bitcast %struct._GimpProcedure* %573 to %struct._GTypeInstance*
  %call264 = call i64 @gimp_object_get_type() #4
  %call265 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %574, i64 %call264)
  %575 = bitcast %struct._GTypeInstance* %call265 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %575, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.276, i32 0, i32 0))
  %576 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %576, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %577 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call266 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.275, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %577, %struct._GParamSpec* %call266)
  %578 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %579 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %578, %struct._GimpProcedure* %579)
  %580 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %581 = bitcast %struct._GimpProcedure* %580 to i8*
  call void @g_object_unref(i8* %581)
  %call267 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_ink_tilt_sensitivity_invoker)
  store %struct._GimpProcedure* %call267, %struct._GimpProcedure** %procedure, align 8
  %582 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %583 = bitcast %struct._GimpProcedure* %582 to %struct._GTypeInstance*
  %call268 = call i64 @gimp_object_get_type() #4
  %call269 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %583, i64 %call268)
  %584 = bitcast %struct._GTypeInstance* %call269 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %584, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.279, i32 0, i32 0))
  %585 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %585, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.281, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %586 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call270 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.283, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %586, %struct._GParamSpec* %call270)
  %587 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %588 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %587, %struct._GimpProcedure* %588)
  %589 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %590 = bitcast %struct._GimpProcedure* %589 to i8*
  call void @g_object_unref(i8* %590)
  %call271 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_ink_tilt_sensitivity_invoker)
  store %struct._GimpProcedure* %call271, %struct._GimpProcedure** %procedure, align 8
  %591 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %592 = bitcast %struct._GimpProcedure* %591 to %struct._GTypeInstance*
  %call272 = call i64 @gimp_object_get_type() #4
  %call273 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %592, i64 %call272)
  %593 = bitcast %struct._GTypeInstance* %call273 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %593, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.284, i32 0, i32 0))
  %594 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %594, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %595 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call274 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.283, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %595, %struct._GParamSpec* %call274)
  %596 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %597 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %596, %struct._GimpProcedure* %597)
  %598 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %599 = bitcast %struct._GimpProcedure* %598 to i8*
  call void @g_object_unref(i8* %599)
  %call275 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_ink_speed_sensitivity_invoker)
  store %struct._GimpProcedure* %call275, %struct._GimpProcedure** %procedure, align 8
  %600 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %601 = bitcast %struct._GimpProcedure* %600 to %struct._GTypeInstance*
  %call276 = call i64 @gimp_object_get_type() #4
  %call277 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %601, i64 %call276)
  %602 = bitcast %struct._GTypeInstance* %call277 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %602, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.287, i32 0, i32 0))
  %603 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %603, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %604 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call278 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.291, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %604, %struct._GParamSpec* %call278)
  %605 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %606 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %605, %struct._GimpProcedure* %606)
  %607 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %608 = bitcast %struct._GimpProcedure* %607 to i8*
  call void @g_object_unref(i8* %608)
  %call279 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_ink_speed_sensitivity_invoker)
  store %struct._GimpProcedure* %call279, %struct._GimpProcedure** %procedure, align 8
  %609 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %610 = bitcast %struct._GimpProcedure* %609 to %struct._GTypeInstance*
  %call280 = call i64 @gimp_object_get_type() #4
  %call281 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %610, i64 %call280)
  %611 = bitcast %struct._GTypeInstance* %call281 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %611, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.292, i32 0, i32 0))
  %612 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %612, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %613 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call282 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.291, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %613, %struct._GParamSpec* %call282)
  %614 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %615 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %614, %struct._GimpProcedure* %615)
  %616 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %617 = bitcast %struct._GimpProcedure* %616 to i8*
  call void @g_object_unref(i8* %617)
  %call283 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_ink_blob_type_invoker)
  store %struct._GimpProcedure* %call283, %struct._GimpProcedure** %procedure, align 8
  %618 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %619 = bitcast %struct._GimpProcedure* %618 to %struct._GTypeInstance*
  %call284 = call i64 @gimp_object_get_type() #4
  %call285 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %619, i64 %call284)
  %620 = bitcast %struct._GTypeInstance* %call285 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %620, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.295, i32 0, i32 0))
  %621 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %621, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %622 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call286 = call i64 @gimp_ink_blob_type_get_type() #4
  %call287 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.299, i32 0, i32 0), i64 %call286, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %622, %struct._GParamSpec* %call287)
  %623 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %624 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %623, %struct._GimpProcedure* %624)
  %625 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %626 = bitcast %struct._GimpProcedure* %625 to i8*
  call void @g_object_unref(i8* %626)
  %call288 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_ink_blob_type_invoker)
  store %struct._GimpProcedure* %call288, %struct._GimpProcedure** %procedure, align 8
  %627 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %628 = bitcast %struct._GimpProcedure* %627 to %struct._GTypeInstance*
  %call289 = call i64 @gimp_object_get_type() #4
  %call290 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %628, i64 %call289)
  %629 = bitcast %struct._GTypeInstance* %call290 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %629, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.300, i32 0, i32 0))
  %630 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %630, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %631 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call291 = call i64 @gimp_ink_blob_type_get_type() #4
  %call292 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.299, i32 0, i32 0), i64 %call291, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %631, %struct._GParamSpec* %call292)
  %632 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %633 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %632, %struct._GimpProcedure* %633)
  %634 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %635 = bitcast %struct._GimpProcedure* %634 to i8*
  call void @g_object_unref(i8* %635)
  %call293 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_ink_blob_aspect_ratio_invoker)
  store %struct._GimpProcedure* %call293, %struct._GimpProcedure** %procedure, align 8
  %636 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %637 = bitcast %struct._GimpProcedure* %636 to %struct._GTypeInstance*
  %call294 = call i64 @gimp_object_get_type() #4
  %call295 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %637, i64 %call294)
  %638 = bitcast %struct._GTypeInstance* %call295 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %638, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.303, i32 0, i32 0))
  %639 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %639, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %640 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call296 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.306, i32 0, i32 0), double 1.000000e+00, double 1.000000e+01, double 1.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %640, %struct._GParamSpec* %call296)
  %641 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %642 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %641, %struct._GimpProcedure* %642)
  %643 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %644 = bitcast %struct._GimpProcedure* %643 to i8*
  call void @g_object_unref(i8* %644)
  %call297 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_ink_blob_aspect_ratio_invoker)
  store %struct._GimpProcedure* %call297, %struct._GimpProcedure** %procedure, align 8
  %645 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %646 = bitcast %struct._GimpProcedure* %645 to %struct._GTypeInstance*
  %call298 = call i64 @gimp_object_get_type() #4
  %call299 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %646, i64 %call298)
  %647 = bitcast %struct._GTypeInstance* %call299 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %647, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.307, i32 0, i32 0))
  %648 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %648, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %649 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call300 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.306, i32 0, i32 0), double 1.000000e+00, double 1.000000e+01, double 1.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %649, %struct._GParamSpec* %call300)
  %650 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %651 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %650, %struct._GimpProcedure* %651)
  %652 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %653 = bitcast %struct._GimpProcedure* %652 to i8*
  call void @g_object_unref(i8* %653)
  %call301 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_get_ink_blob_angle_invoker)
  store %struct._GimpProcedure* %call301, %struct._GimpProcedure** %procedure, align 8
  %654 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %655 = bitcast %struct._GimpProcedure* %654 to %struct._GTypeInstance*
  %call302 = call i64 @gimp_object_get_type() #4
  %call303 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %655, i64 %call302)
  %656 = bitcast %struct._GTypeInstance* %call303 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %656, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.310, i32 0, i32 0))
  %657 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %657, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.311, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %658 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call304 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.313, i32 0, i32 0), double -1.800000e+02, double 1.800000e+02, double -1.800000e+02, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %658, %struct._GParamSpec* %call304)
  %659 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %660 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %659, %struct._GimpProcedure* %660)
  %661 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %662 = bitcast %struct._GimpProcedure* %661 to i8*
  call void @g_object_unref(i8* %662)
  %call305 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @context_set_ink_blob_angle_invoker)
  store %struct._GimpProcedure* %call305, %struct._GimpProcedure** %procedure, align 8
  %663 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %664 = bitcast %struct._GimpProcedure* %663 to %struct._GTypeInstance*
  %call306 = call i64 @gimp_object_get_type() #4
  %call307 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %664, i64 %call306)
  %665 = bitcast %struct._GTypeInstance* %call307 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %665, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.314, i32 0, i32 0))
  %666 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %666, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.314, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.315, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.316, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null)
  %667 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call308 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.313, i32 0, i32 0), double -1.800000e+02, double 1.800000e+02, double -1.800000e+02, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %667, %struct._GParamSpec* %call308)
  %668 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %669 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %668, %struct._GimpProcedure* %669)
  %670 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %671 = bitcast %struct._GimpProcedure* %670 to i8*
  call void @g_object_unref(i8* %671)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_push_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %call = call i32 @gimp_plug_in_context_push(%struct._GimpPlugIn* %5)
  store i32 %call, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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
  ret %struct._GValueArray* %call3
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_pop_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %5 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %call = call i32 @gimp_plug_in_context_pop(%struct._GimpPlugIn* %5)
  store i32 %call, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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
  ret %struct._GValueArray* %call3
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_defaults_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_config_interface_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %2)
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call2 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %3, i32 1, %struct._GError* null)
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_list_paint_methods_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %num_paint_methods = alloca i32, align 4
  %paint_methods = alloca i8**, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %num_paint_methods, align 4
  store i8** null, i8*** %paint_methods, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %paint_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 21
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list, align 8
  %call = call i8** @gimp_container_get_name_array(%struct._GimpContainer* %1, i32* %num_paint_methods)
  store i8** %call, i8*** %paint_methods, align 8
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call1 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call1, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load i32, i32* %num_paint_methods, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx, i32 %5)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values2 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values2, align 8
  %arrayidx3 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %8 = load i8**, i8*** %paint_methods, align 8
  %9 = load i32, i32* %num_paint_methods, align 4
  %conv = sext i32 %9 to i64
  call void @gimp_value_take_stringarray(%struct._GValue* %arrayidx3, i8** %8, i64 %conv)
  %10 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %10
}

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_string_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_paint_method_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %paint_info = alloca %struct._GimpPaintInfo*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %name, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpPaintInfo* @gimp_context_get_paint_info(%struct._GimpContext* %0)
  store %struct._GimpPaintInfo* %call, %struct._GimpPaintInfo** %paint_info, align 8
  %1 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %tobool = icmp ne %struct._GimpPaintInfo* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %3 = bitcast %struct._GimpPaintInfo* %2 to i8*
  %call1 = call i8* @gimp_object_get_name(i8* %3)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %5 = load i32, i32* %success, align 4
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %8, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %4, i32 %5, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %9 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %10 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 1
  %12 = load i8*, i8** %name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx, i8* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %13
}

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_paint_method_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %paint_info = alloca %struct._GimpPaintInfo*, align 8
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
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpPaintInfo* @gimp_pdb_get_paint_info(%struct._Gimp* %3, i8* %4, %struct._GError** %5)
  store %struct._GimpPaintInfo* %call1, %struct._GimpPaintInfo** %paint_info, align 8
  %6 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %tobool2 = icmp ne %struct._GimpPaintInfo* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  call void @gimp_context_set_paint_info(%struct._GimpContext* %7, %struct._GimpPaintInfo* %8)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call6
}

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_foreground_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %foreground = alloca %struct._GimpRGB, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = bitcast %struct._GimpRGB* %foreground to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @context_get_foreground_invoker.foreground to i8*), i64 32, i32 8, i1 false)
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %1, %struct._GimpRGB* %foreground)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %foreground, double 1.000000e+00)
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  call void @gimp_value_set_rgb(%struct._GValue* %arrayidx, %struct._GimpRGB* %foreground)
  %5 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %5
}

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_foreground_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %foreground = alloca %struct._GimpRGB, align 8
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
  call void @gimp_value_get_rgb(%struct._GValue* %arrayidx, %struct._GimpRGB* %foreground)
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %foreground, double 1.000000e+00)
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %3, %struct._GimpRGB* %foreground)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %5 = load i32, i32* %success, align 4
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool1 = icmp ne %struct._GError** %6, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %8, %cond.true ], [ null, %cond.false ]
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %4, i32 %5, %struct._GError* %cond)
  ret %struct._GValueArray* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_background_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %background = alloca %struct._GimpRGB, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = bitcast %struct._GimpRGB* %background to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @context_get_background_invoker.background to i8*), i64 32, i32 8, i1 false)
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %1, %struct._GimpRGB* %background)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %background, double 1.000000e+00)
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  call void @gimp_value_set_rgb(%struct._GValue* %arrayidx, %struct._GimpRGB* %background)
  %5 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_background_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %background = alloca %struct._GimpRGB, align 8
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
  call void @gimp_value_get_rgb(%struct._GValue* %arrayidx, %struct._GimpRGB* %background)
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %background, double 1.000000e+00)
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %3, %struct._GimpRGB* %background)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %5 = load i32, i32* %success, align 4
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool1 = icmp ne %struct._GError** %6, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %8, %cond.true ], [ null, %cond.false ]
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %4, i32 %5, %struct._GError* %cond)
  ret %struct._GValueArray* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_default_colors_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_set_default_colors(%struct._GimpContext* %0)
  %1 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %1, i32 1, %struct._GError* null)
  ret %struct._GValueArray* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_swap_colors_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_swap_colors(%struct._GimpContext* %0)
  %1 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %1, i32 1, %struct._GError* null)
  ret %struct._GValueArray* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_opacity_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %opacity = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store double 0.000000e+00, double* %opacity, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call double @gimp_context_get_opacity(%struct._GimpContext* %0)
  %mul = fmul double %call, 1.000000e+02
  store double %mul, double* %opacity, align 8
  %1 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call1 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %1, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call1, %struct._GValueArray** %return_vals, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %4 = load double, double* %opacity, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx, double %4)
  %5 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %5
}

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_opacity_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
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
  %call = call double @g_value_get_double(%struct._GValue* %arrayidx)
  store double %call, double* %opacity, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load double, double* %opacity, align 8
  %div = fdiv double %4, 1.000000e+02
  call void @gimp_context_set_opacity(%struct._GimpContext* %3, double %div)
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

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_paint_mode_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %paint_mode = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %paint_mode, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call i32 @gimp_context_get_paint_mode(%struct._GimpContext* %0)
  store i32 %call, i32* %paint_mode, align 4
  %1 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call1 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %1, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call1, %struct._GValueArray** %return_vals, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %4 = load i32, i32* %paint_mode, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx, i32 %4)
  %5 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %5
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mode_effects_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_paint_mode_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %paint_mode = alloca i32, align 4
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
  store i32 %call, i32* %paint_mode, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %paint_mode, align 4
  call void @gimp_context_set_paint_mode(%struct._GimpContext* %3, i32 %4)
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

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_brush_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %name, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %0)
  store %struct._GimpBrush* %call, %struct._GimpBrush** %brush, align 8
  %1 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool = icmp ne %struct._GimpBrush* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %3 = bitcast %struct._GimpBrush* %2 to i8*
  %call1 = call i8* @gimp_object_get_name(i8* %3)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %5 = load i32, i32* %success, align 4
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %8, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %4, i32 %5, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %9 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %10 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 1
  %12 = load i8*, i8** %name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx, i8* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_brush_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end.4

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
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  call void @gimp_context_set_brush(%struct._GimpContext* %7, %struct._GimpBrush* %8)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_brush_size_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %size = alloca double, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %size, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_context_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDBContext*
  %call2 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.317, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call2, %struct._GimpPaintOptions** %options, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool = icmp ne %struct._GimpPaintOptions* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %5 = bitcast %struct._GimpPaintOptions* %4 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.318, i32 0, i32 0), double* %size, i8* null)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load double, double* %size, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx, double %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_brush_size_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %size = alloca double, align 8
  %options = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
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
  store double %call, double* %size, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_pdb_context_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPDBContext*
  %call3 = call %struct._GList* @gimp_pdb_context_get_brush_options(%struct._GimpPDBContext* %5)
  store %struct._GList* %call3, %struct._GList** %options, align 8
  %6 = load %struct._GList*, %struct._GList** %options, align 8
  store %struct._GList* %6, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %7, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = load double, double* %size, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.318, i32 0, i32 0), double %10, i8* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._GList*, %struct._GList** %options, align 8
  call void @g_list_free(%struct._GList* %14)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %17, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %if.end
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end.9

cond.false.8:                                     ; preds = %if.end
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi %struct._GError* [ %19, %cond.true.7 ], [ null, %cond.false.8 ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond10)
  ret %struct._GValueArray* %call11
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_brush_default_size_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
  %options = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %0)
  store %struct._GimpBrush* %call, %struct._GimpBrush** %brush, align 8
  %1 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool = icmp ne %struct._GimpBrush* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %3 = bitcast %struct._GimpContext* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_pdb_context_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPDBContext*
  %call3 = call %struct._GList* @gimp_pdb_context_get_brush_options(%struct._GimpPDBContext* %4)
  store %struct._GList* %call3, %struct._GList** %options, align 8
  %5 = load %struct._GList*, %struct._GList** %options, align 8
  store %struct._GList* %5, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %6, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GimpPaintOptions*
  %10 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  call void @gimp_paint_options_set_default_brush_size(%struct._GimpPaintOptions* %9, %struct._GimpBrush* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._GList*, %struct._GList** %options, align 8
  call void @g_list_free(%struct._GList* %14)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %17, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %if.end
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end.9

cond.false.8:                                     ; preds = %if.end
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi %struct._GError* [ %19, %cond.true.7 ], [ null, %cond.false.8 ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond10)
  ret %struct._GValueArray* %call11
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_brush_aspect_ratio_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %aspect = alloca double, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %aspect, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_context_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDBContext*
  %call2 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.317, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call2, %struct._GimpPaintOptions** %options, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool = icmp ne %struct._GimpPaintOptions* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %5 = bitcast %struct._GimpPaintOptions* %4 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.319, i32 0, i32 0), double* %aspect, i8* null)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load double, double* %aspect, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx, double %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_brush_aspect_ratio_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %aspect = alloca double, align 8
  %options = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
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
  store double %call, double* %aspect, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_pdb_context_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPDBContext*
  %call3 = call %struct._GList* @gimp_pdb_context_get_brush_options(%struct._GimpPDBContext* %5)
  store %struct._GList* %call3, %struct._GList** %options, align 8
  %6 = load %struct._GList*, %struct._GList** %options, align 8
  store %struct._GList* %6, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %7, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = load double, double* %aspect, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.319, i32 0, i32 0), double %10, i8* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._GList*, %struct._GList** %options, align 8
  call void @g_list_free(%struct._GList* %14)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %17, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %if.end
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end.9

cond.false.8:                                     ; preds = %if.end
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi %struct._GError* [ %19, %cond.true.7 ], [ null, %cond.false.8 ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond10)
  ret %struct._GValueArray* %call11
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_brush_angle_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %angle = alloca double, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %angle, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_context_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDBContext*
  %call2 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.317, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call2, %struct._GimpPaintOptions** %options, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool = icmp ne %struct._GimpPaintOptions* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %5 = bitcast %struct._GimpPaintOptions* %4 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.320, i32 0, i32 0), double* %angle, i8* null)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load double, double* %angle, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx, double %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_brush_angle_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %angle = alloca double, align 8
  %options = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
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
  store double %call, double* %angle, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_pdb_context_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPDBContext*
  %call3 = call %struct._GList* @gimp_pdb_context_get_brush_options(%struct._GimpPDBContext* %5)
  store %struct._GList* %call3, %struct._GList** %options, align 8
  %6 = load %struct._GList*, %struct._GList** %options, align 8
  store %struct._GList* %6, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %7, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = load double, double* %angle, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.320, i32 0, i32 0), double %10, i8* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._GList*, %struct._GList** %options, align 8
  call void @g_list_free(%struct._GList* %14)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %17, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %if.end
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end.9

cond.false.8:                                     ; preds = %if.end
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi %struct._GError* [ %19, %cond.true.7 ], [ null, %cond.false.8 ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond10)
  ret %struct._GValueArray* %call11
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_dynamics_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %dynamics = alloca %struct._GimpDynamics*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %name, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext* %0)
  store %struct._GimpDynamics* %call, %struct._GimpDynamics** %dynamics, align 8
  %1 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %tobool = icmp ne %struct._GimpDynamics* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %3 = bitcast %struct._GimpDynamics* %2 to i8*
  %call1 = call i8* @gimp_object_get_name(i8* %3)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %5 = load i32, i32* %success, align 4
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %8, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %4, i32 %5, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %9 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %10 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 1
  %12 = load i8*, i8** %name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx, i8* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_dynamics_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
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
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpDynamics* @gimp_pdb_get_dynamics(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpDynamics* %call1, %struct._GimpDynamics** %dynamics, align 8
  %6 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %tobool2 = icmp ne %struct._GimpDynamics* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  call void @gimp_context_set_dynamics(%struct._GimpContext* %7, %struct._GimpDynamics* %8)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_pattern_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %pattern = alloca %struct._GimpPattern*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %name, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %0)
  store %struct._GimpPattern* %call, %struct._GimpPattern** %pattern, align 8
  %1 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %tobool = icmp ne %struct._GimpPattern* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %3 = bitcast %struct._GimpPattern* %2 to i8*
  %call1 = call i8* @gimp_object_get_name(i8* %3)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %5 = load i32, i32* %success, align 4
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %8, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %4, i32 %5, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %9 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %10 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 1
  %12 = load i8*, i8** %name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx, i8* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_pattern_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
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
  br i1 %tobool, label %if.then, label %if.end.4

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
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  call void @gimp_context_set_pattern(%struct._GimpContext* %7, %struct._GimpPattern* %8)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_gradient_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %name, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %0)
  store %struct._GimpGradient* %call, %struct._GimpGradient** %gradient, align 8
  %1 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool = icmp ne %struct._GimpGradient* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %3 = bitcast %struct._GimpGradient* %2 to i8*
  %call1 = call i8* @gimp_object_get_name(i8* %3)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %5 = load i32, i32* %success, align 4
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %8, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %4, i32 %5, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %9 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %10 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 1
  %12 = load i8*, i8** %name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx, i8* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_gradient_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
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
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpGradient* %call1, %struct._GimpGradient** %gradient, align 8
  %6 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool2 = icmp ne %struct._GimpGradient* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  call void @gimp_context_set_gradient(%struct._GimpContext* %7, %struct._GimpGradient* %8)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_palette_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %name, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpPalette* @gimp_context_get_palette(%struct._GimpContext* %0)
  store %struct._GimpPalette* %call, %struct._GimpPalette** %palette, align 8
  %1 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool = icmp ne %struct._GimpPalette* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %3 = bitcast %struct._GimpPalette* %2 to i8*
  %call1 = call i8* @gimp_object_get_name(i8* %3)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %5 = load i32, i32* %success, align 4
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %8, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %4, i32 %5, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %9 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %10 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 1
  %12 = load i8*, i8** %name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx, i8* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_palette_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
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
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpPalette* %call1, %struct._GimpPalette** %palette, align 8
  %6 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool2 = icmp ne %struct._GimpPalette* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  call void @gimp_context_set_palette(%struct._GimpContext* %7, %struct._GimpPalette* %8)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_font_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %font = alloca %struct._GimpFont*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %name, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpFont* @gimp_context_get_font(%struct._GimpContext* %0)
  store %struct._GimpFont* %call, %struct._GimpFont** %font, align 8
  %1 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %tobool = icmp ne %struct._GimpFont* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %3 = bitcast %struct._GimpFont* %2 to i8*
  %call1 = call i8* @gimp_object_get_name(i8* %3)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %5 = load i32, i32* %success, align 4
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %8, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %4, i32 %5, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %9 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %10 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 1
  %12 = load i8*, i8** %name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx, i8* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_font_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %font = alloca %struct._GimpFont*, align 8
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
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpFont* @gimp_pdb_get_font(%struct._Gimp* %3, i8* %4, %struct._GError** %5)
  store %struct._GimpFont* %call1, %struct._GimpFont** %font, align 8
  %6 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %tobool2 = icmp ne %struct._GimpFont* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  call void @gimp_context_set_font(%struct._GimpContext* %7, %struct._GimpFont* %8)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_antialias_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %antialias = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %antialias, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.156, i32 0, i32 0), i32* %antialias, i8* null)
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load i32, i32* %antialias, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx, i32 %5)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %6
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_antialias_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %antialias = alloca i32, align 4
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
  %call = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx)
  store i32 %call, i32* %antialias, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  %5 = load i32, i32* %antialias, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.156, i32 0, i32 0), i32 %5, i8* null)
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
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_feather_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %feather = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %feather, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.164, i32 0, i32 0), i32* %feather, i8* null)
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load i32, i32* %feather, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx, i32 %5)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_feather_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %feather = alloca i32, align 4
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
  %call = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx)
  store i32 %call, i32* %feather, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  %5 = load i32, i32* %feather, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.164, i32 0, i32 0), i32 %5, i8* null)
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
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_feather_radius_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %feather_radius_x = alloca double, align 8
  %feather_radius_y = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store double 0.000000e+00, double* %feather_radius_x, align 8
  store double 0.000000e+00, double* %feather_radius_y, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.172, i32 0, i32 0), double* %feather_radius_x, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.175, i32 0, i32 0), double* %feather_radius_y, i8* null)
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load double, double* %feather_radius_x, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx, double %5)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %8 = load double, double* %feather_radius_y, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx2, double %8)
  %9 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_feather_radius_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %feather_radius_x = alloca double, align 8
  %feather_radius_y = alloca double, align 8
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
  store double %call, double* %feather_radius_x, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %feather_radius_y, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = bitcast %struct._GimpContext* %5 to i8*
  %7 = load double, double* %feather_radius_x, align 8
  %8 = load double, double* %feather_radius_y, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.172, i32 0, i32 0), double %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.175, i32 0, i32 0), double %8, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %11, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call5
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_sample_merged_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %sample_merged = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %sample_merged, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.184, i32 0, i32 0), i32* %sample_merged, i8* null)
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load i32, i32* %sample_merged, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx, i32 %5)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_sample_merged_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %sample_merged = alloca i32, align 4
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
  %call = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx)
  store i32 %call, i32* %sample_merged, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  %5 = load i32, i32* %sample_merged, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.184, i32 0, i32 0), i32 %5, i8* null)
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
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_sample_criterion_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %sample_criterion = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %sample_criterion, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.193, i32 0, i32 0), i32* %sample_criterion, i8* null)
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load i32, i32* %sample_criterion, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx, i32 %5)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %6
}

; Function Attrs: nounwind readnone
declare i64 @gimp_select_criterion_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_sample_criterion_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %sample_criterion = alloca i32, align 4
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
  store i32 %call, i32* %sample_criterion, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  %5 = load i32, i32* %sample_criterion, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.193, i32 0, i32 0), i32 %5, i8* null)
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
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_sample_threshold_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %sample_threshold = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store double 0.000000e+00, double* %sample_threshold, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.202, i32 0, i32 0), double* %sample_threshold, i8* null)
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load double, double* %sample_threshold, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx, double %5)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_sample_threshold_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %sample_threshold = alloca double, align 8
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
  store double %call, double* %sample_threshold, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  %5 = load double, double* %sample_threshold, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.202, i32 0, i32 0), double %5, i8* null)
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
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_sample_threshold_int_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %sample_threshold = alloca i32, align 4
  %threshold = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %sample_threshold, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.202, i32 0, i32 0), double* %threshold, i8* null)
  %2 = load double, double* %threshold, align 8
  %mul = fmul double %2, 2.559900e+02
  %conv = fptosi double %mul to i32
  store i32 %conv, i32* %sample_threshold, align 4
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %3, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %4 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 1
  %6 = load i32, i32* %sample_threshold, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx, i32 %6)
  %7 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_sample_threshold_int_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %sample_threshold = alloca i32, align 4
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
  %call = call i32 @g_value_get_int(%struct._GValue* %arrayidx)
  store i32 %call, i32* %sample_threshold, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  %5 = load i32, i32* %sample_threshold, align 4
  %conv = sitofp i32 %5 to double
  %div = fdiv double %conv, 2.550000e+02
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.202, i32 0, i32 0), double %div, i8* null)
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
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_sample_transparent_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %sample_transparent = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %sample_transparent, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.217, i32 0, i32 0), i32* %sample_transparent, i8* null)
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load i32, i32* %sample_transparent, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx, i32 %5)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_sample_transparent_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %sample_transparent = alloca i32, align 4
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
  %call = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx)
  store i32 %call, i32* %sample_transparent, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  %5 = load i32, i32* %sample_transparent, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.217, i32 0, i32 0), i32 %5, i8* null)
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
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_interpolation_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %interpolation = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %interpolation, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.226, i32 0, i32 0), i32* %interpolation, i8* null)
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load i32, i32* %interpolation, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx, i32 %5)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %6
}

; Function Attrs: nounwind readnone
declare i64 @gimp_interpolation_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_interpolation_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %interpolation = alloca i32, align 4
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
  store i32 %call, i32* %interpolation, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  %5 = load i32, i32* %interpolation, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.226, i32 0, i32 0), i32 %5, i8* null)
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
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_transform_direction_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %transform_direction = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %transform_direction, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.234, i32 0, i32 0), i32* %transform_direction, i8* null)
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load i32, i32* %transform_direction, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx, i32 %5)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %6
}

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_direction_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_transform_direction_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %transform_direction = alloca i32, align 4
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
  store i32 %call, i32* %transform_direction, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  %5 = load i32, i32* %transform_direction, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.234, i32 0, i32 0), i32 %5, i8* null)
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
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_transform_resize_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %transform_resize = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %transform_resize, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.243, i32 0, i32 0), i32* %transform_resize, i8* null)
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load i32, i32* %transform_resize, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx, i32 %5)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %6
}

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_resize_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_transform_resize_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %transform_resize = alloca i32, align 4
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
  store i32 %call, i32* %transform_resize, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  %5 = load i32, i32* %transform_resize, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.243, i32 0, i32 0), i32 %5, i8* null)
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
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_transform_recursion_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %transform_recursion = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %transform_recursion, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.252, i32 0, i32 0), i32* %transform_recursion, i8* null)
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load i32, i32* %transform_recursion, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx, i32 %5)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_transform_recursion_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %transform_recursion = alloca i32, align 4
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
  %call = call i32 @g_value_get_int(%struct._GValue* %arrayidx)
  store i32 %call, i32* %transform_recursion, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  %5 = load i32, i32* %transform_recursion, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.252, i32 0, i32 0), i32 %5, i8* null)
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
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_ink_size_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %size = alloca double, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %size, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_context_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDBContext*
  %call2 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call2, %struct._GimpPaintOptions** %options, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool = icmp ne %struct._GimpPaintOptions* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %5 = bitcast %struct._GimpPaintOptions* %4 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), double* %size, i8* null)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load double, double* %size, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx, double %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_ink_size_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %size = alloca double, align 8
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
  %call = call double @g_value_get_double(%struct._GValue* %arrayidx)
  store double %call, double* %size, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_pdb_context_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPDBContext*
  %call3 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call3, %struct._GimpPaintOptions** %options, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool4 = icmp ne %struct._GimpPaintOptions* %6, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %7 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %8 = bitcast %struct._GimpPaintOptions* %7 to i8*
  %9 = load double, double* %size, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), double %9, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_ink_angle_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %angle = alloca double, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %angle, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_context_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDBContext*
  %call2 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call2, %struct._GimpPaintOptions** %options, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool = icmp ne %struct._GimpPaintOptions* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %5 = bitcast %struct._GimpPaintOptions* %4 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.322, i32 0, i32 0), double* %angle, i8* null)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load double, double* %angle, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx, double %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_ink_angle_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %angle = alloca double, align 8
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
  %call = call double @g_value_get_double(%struct._GValue* %arrayidx)
  store double %call, double* %angle, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_pdb_context_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPDBContext*
  %call3 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call3, %struct._GimpPaintOptions** %options, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool4 = icmp ne %struct._GimpPaintOptions* %6, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %7 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %8 = bitcast %struct._GimpPaintOptions* %7 to i8*
  %9 = load double, double* %angle, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.322, i32 0, i32 0), double %9, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_ink_size_sensitivity_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %size = alloca double, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %size, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_context_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDBContext*
  %call2 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call2, %struct._GimpPaintOptions** %options, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool = icmp ne %struct._GimpPaintOptions* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %5 = bitcast %struct._GimpPaintOptions* %4 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.323, i32 0, i32 0), double* %size, i8* null)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load double, double* %size, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx, double %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_ink_size_sensitivity_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %size = alloca double, align 8
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
  %call = call double @g_value_get_double(%struct._GValue* %arrayidx)
  store double %call, double* %size, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_pdb_context_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPDBContext*
  %call3 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call3, %struct._GimpPaintOptions** %options, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool4 = icmp ne %struct._GimpPaintOptions* %6, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %7 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %8 = bitcast %struct._GimpPaintOptions* %7 to i8*
  %9 = load double, double* %size, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.323, i32 0, i32 0), double %9, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_ink_tilt_sensitivity_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %tilt = alloca double, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %tilt, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_context_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDBContext*
  %call2 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call2, %struct._GimpPaintOptions** %options, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool = icmp ne %struct._GimpPaintOptions* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %5 = bitcast %struct._GimpPaintOptions* %4 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.324, i32 0, i32 0), double* %tilt, i8* null)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load double, double* %tilt, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx, double %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_ink_tilt_sensitivity_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %tilt = alloca double, align 8
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
  %call = call double @g_value_get_double(%struct._GValue* %arrayidx)
  store double %call, double* %tilt, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_pdb_context_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPDBContext*
  %call3 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call3, %struct._GimpPaintOptions** %options, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool4 = icmp ne %struct._GimpPaintOptions* %6, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %7 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %8 = bitcast %struct._GimpPaintOptions* %7 to i8*
  %9 = load double, double* %tilt, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.324, i32 0, i32 0), double %9, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_ink_speed_sensitivity_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %speed = alloca double, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %speed, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_context_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDBContext*
  %call2 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call2, %struct._GimpPaintOptions** %options, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool = icmp ne %struct._GimpPaintOptions* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %5 = bitcast %struct._GimpPaintOptions* %4 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.325, i32 0, i32 0), double* %speed, i8* null)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load double, double* %speed, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx, double %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_ink_speed_sensitivity_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %speed = alloca double, align 8
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
  %call = call double @g_value_get_double(%struct._GValue* %arrayidx)
  store double %call, double* %speed, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_pdb_context_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPDBContext*
  %call3 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call3, %struct._GimpPaintOptions** %options, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool4 = icmp ne %struct._GimpPaintOptions* %6, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %7 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %8 = bitcast %struct._GimpPaintOptions* %7 to i8*
  %9 = load double, double* %speed, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.325, i32 0, i32 0), double %9, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_ink_blob_type_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %type = alloca i32, align 4
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %type, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_context_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDBContext*
  %call2 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call2, %struct._GimpPaintOptions** %options, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool = icmp ne %struct._GimpPaintOptions* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %5 = bitcast %struct._GimpPaintOptions* %4 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.326, i32 0, i32 0), i32* %type, i8* null)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load i32, i32* %type, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx, i32 %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_ink_blob_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_ink_blob_type_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %type = alloca i32, align 4
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
  %call = call i32 @g_value_get_enum(%struct._GValue* %arrayidx)
  store i32 %call, i32* %type, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_pdb_context_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPDBContext*
  %call3 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call3, %struct._GimpPaintOptions** %options, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool4 = icmp ne %struct._GimpPaintOptions* %6, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %7 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %8 = bitcast %struct._GimpPaintOptions* %7 to i8*
  %9 = load i32, i32* %type, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.326, i32 0, i32 0), i32 %9, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_ink_blob_aspect_ratio_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %aspect = alloca double, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %aspect, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_context_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDBContext*
  %call2 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call2, %struct._GimpPaintOptions** %options, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool = icmp ne %struct._GimpPaintOptions* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %5 = bitcast %struct._GimpPaintOptions* %4 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.327, i32 0, i32 0), double* %aspect, i8* null)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load double, double* %aspect, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx, double %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_ink_blob_aspect_ratio_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %aspect = alloca double, align 8
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
  %call = call double @g_value_get_double(%struct._GValue* %arrayidx)
  store double %call, double* %aspect, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_pdb_context_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPDBContext*
  %call3 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call3, %struct._GimpPaintOptions** %options, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool4 = icmp ne %struct._GimpPaintOptions* %6, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %7 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %8 = bitcast %struct._GimpPaintOptions* %7 to i8*
  %9 = load double, double* %aspect, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.327, i32 0, i32 0), double %9, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_get_ink_blob_angle_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %angle = alloca double, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %angle, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_context_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDBContext*
  %call2 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call2, %struct._GimpPaintOptions** %options, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool = icmp ne %struct._GimpPaintOptions* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %5 = bitcast %struct._GimpPaintOptions* %4 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.328, i32 0, i32 0), double* %angle, i8* null)
  %6 = load double, double* %angle, align 8
  %mul = fmul double %6, 1.800000e+02
  store double %mul, double* %angle, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %8 = load i32, i32* %success, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %9, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %11, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %7, i32 %8, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %12 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 1
  %15 = load double, double* %angle, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx, double %15)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @context_set_ink_blob_angle_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %angle = alloca double, align 8
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
  %call = call double @g_value_get_double(%struct._GValue* %arrayidx)
  store double %call, double* %angle, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_pdb_context_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPDBContext*
  %call3 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0))
  store %struct._GimpPaintOptions* %call3, %struct._GimpPaintOptions** %options, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %tobool4 = icmp ne %struct._GimpPaintOptions* %6, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %7 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %8 = bitcast %struct._GimpPaintOptions* %7 to i8*
  %9 = load double, double* %angle, align 8
  %mul = fmul double %9, 0x400921FB54442D18
  %div = fdiv double %mul, 1.800000e+02
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.328, i32 0, i32 0), double %div, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
  ret %struct._GValueArray* %call8
}

declare i32 @gimp_plug_in_context_push(%struct._GimpPlugIn*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare i32 @gimp_plug_in_context_pop(%struct._GimpPlugIn*) #1

declare void @gimp_config_reset(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare i8** @gimp_container_get_name_array(%struct._GimpContainer*, i32*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @gimp_value_take_stringarray(%struct._GValue*, i8**, i64) #1

declare %struct._GimpPaintInfo* @gimp_context_get_paint_info(%struct._GimpContext*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare %struct._GimpPaintInfo* @gimp_pdb_get_paint_info(%struct._Gimp*, i8*, %struct._GError**) #1

declare void @gimp_context_set_paint_info(%struct._GimpContext*, %struct._GimpPaintInfo*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare void @gimp_value_set_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare void @gimp_value_get_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare void @gimp_context_set_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_set_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_set_default_colors(%struct._GimpContext*) #1

declare void @gimp_context_swap_colors(%struct._GimpContext*) #1

declare double @gimp_context_get_opacity(%struct._GimpContext*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare void @gimp_context_set_opacity(%struct._GimpContext*, double) #1

declare i32 @gimp_context_get_paint_mode(%struct._GimpContext*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare void @gimp_context_set_paint_mode(%struct._GimpContext*, i32) #1

declare %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext*) #1

declare %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp*, i8*, i32, %struct._GError**) #1

declare void @gimp_context_set_brush(%struct._GimpContext*, %struct._GimpBrush*) #1

declare %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_context_get_type() #2

declare void @g_object_get(i8*, i8*, ...) #1

declare %struct._GList* @gimp_pdb_context_get_brush_options(%struct._GimpPDBContext*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @g_list_free(%struct._GList*) #1

declare void @gimp_paint_options_set_default_brush_size(%struct._GimpPaintOptions*, %struct._GimpBrush*) #1

declare %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext*) #1

declare %struct._GimpDynamics* @gimp_pdb_get_dynamics(%struct._Gimp*, i8*, i32, %struct._GError**) #1

declare void @gimp_context_set_dynamics(%struct._GimpContext*, %struct._GimpDynamics*) #1

declare %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext*) #1

declare %struct._GimpPattern* @gimp_pdb_get_pattern(%struct._Gimp*, i8*, %struct._GError**) #1

declare void @gimp_context_set_pattern(%struct._GimpContext*, %struct._GimpPattern*) #1

declare %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext*) #1

declare %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp*, i8*, i32, %struct._GError**) #1

declare void @gimp_context_set_gradient(%struct._GimpContext*, %struct._GimpGradient*) #1

declare %struct._GimpPalette* @gimp_context_get_palette(%struct._GimpContext*) #1

declare %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp*, i8*, i32, %struct._GError**) #1

declare void @gimp_context_set_palette(%struct._GimpContext*, %struct._GimpPalette*) #1

declare %struct._GimpFont* @gimp_context_get_font(%struct._GimpContext*) #1

declare %struct._GimpFont* @gimp_pdb_get_font(%struct._Gimp*, i8*, %struct._GError**) #1

declare void @gimp_context_set_font(%struct._GimpContext*, %struct._GimpFont*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
