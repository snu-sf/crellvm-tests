; ModuleID = './app/actions/tools-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpStringActionEntry = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpEnumActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionGroupPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
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
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpToolOptions = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque

@.str = private unnamed_addr constant [13 x i8] c"tools-action\00", align 1
@tools_actions = internal constant [5 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }], align 16
@tools_alternative_actions = internal constant [2 x %struct._GimpStringActionEntry] [%struct._GimpStringActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0) }, %struct._GimpStringActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [28 x i8] c"tools-by-color-select-short\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"<Actions>/tools/tools-by-color-select\00", align 1
@tools_color_average_radius_actions = internal constant [8 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* null, i32 -1, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@tools_paint_brush_size_actions = internal constant [10 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0), i8* null, i8* null, i32 -1, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.55, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.57, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i32 0, i32 0), i8* null, i8* null, i32 -10, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i32 0, i32 0), i8* null, i8* null, i32 -11, i32 0, i8* null }], align 16
@tools_paint_brush_angle_actions = internal constant [8 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.65, i32 0, i32 0), i8* null, i8* null, i32 -1, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.69, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.75, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.77, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@tools_paint_brush_aspect_ratio_actions = internal constant [8 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.79, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.81, i32 0, i32 0), i8* null, i8* null, i32 -1, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.83, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.87, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.89, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.91, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.93, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@tools_ink_blob_size_actions = internal constant [9 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.96, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.98, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.100, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.102, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.106, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.108, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.110, i32 0, i32 0), i8* null, i8* null, i32 -10, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.112, i32 0, i32 0), i8* null, i8* null, i32 -11, i32 0, i8* null }], align 16
@tools_ink_blob_aspect_actions = internal constant [8 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.114, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.116, i32 0, i32 0), i8* null, i8* null, i32 -1, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.118, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.120, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.122, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.124, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.126, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.128, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@tools_ink_blob_angle_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.130, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.132, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.134, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.136, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.138, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.140, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.142, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@tools_foreground_select_brush_size_actions = internal constant [10 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.145, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.147, i32 0, i32 0), i8* null, i8* null, i32 -1, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.149, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.151, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.153, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.155, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.157, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.159, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.161, i32 0, i32 0), i8* null, i8* null, i32 -10, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.155, i32 0, i32 0), i8* null, i8* null, i32 -11, i32 0, i8* null }], align 16
@tools_transform_preview_opacity_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.165, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.167, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.169, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.171, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.173, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.175, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.177, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@tools_value_1_actions = internal constant [10 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.180, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.182, i32 0, i32 0), i8* null, i8* null, i32 -1, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.184, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.186, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.189, i32 0, i32 0), i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.192, i32 0, i32 0), i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.195, i32 0, i32 0), i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.198, i32 0, i32 0), i8* null, i32 -9, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.200, i32 0, i32 0), i8* null, i8* null, i32 -10, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.202, i32 0, i32 0), i8* null, i8* null, i32 -11, i32 0, i8* null }], align 16
@tools_value_2_actions = internal constant [10 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.204, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.207, i32 0, i32 0), i8* null, i32 -1, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.209, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.211, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.214, i32 0, i32 0), i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.217, i32 0, i32 0), i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.220, i32 0, i32 0), i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.223, i32 0, i32 0), i8* null, i32 -9, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.225, i32 0, i32 0), i8* null, i8* null, i32 -10, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.227, i32 0, i32 0), i8* null, i8* null, i32 -11, i32 0, i8* null }], align 16
@tools_value_3_actions = internal constant [10 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.229, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.231, i32 0, i32 0), i8* null, i8* null, i32 -1, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.233, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.235, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.237, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.239, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.241, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.243, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.245, i32 0, i32 0), i8* null, i8* null, i32 -10, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.247, i32 0, i32 0), i8* null, i8* null, i32 -11, i32 0, i8* null }], align 16
@tools_value_4_actions = internal constant [10 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.249, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.251, i32 0, i32 0), i8* null, i8* null, i32 -1, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.253, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.255, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.257, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.259, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.261, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.263, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.265, i32 0, i32 0), i8* null, i8* null, i32 -10, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.267, i32 0, i32 0), i8* null, i8* null, i32 -11, i32 0, i8* null }], align 16
@tools_object_1_actions = internal constant [5 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.269, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.271, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.273, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.275, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.277, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }], align 16
@tools_object_2_actions = internal constant [5 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.279, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.281, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.283, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.285, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.287, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"tools-%s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"tools-menu\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"_Tools\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"tools-select-menu\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"_Selection Tools\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"tools-paint-menu\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"_Paint Tools\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"tools-transform-menu\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"_Transform Tools\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"tools-color-menu\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"_Color Tools\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"gimp-tool-by-color-select\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"_By Color\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Select regions with similar colors\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"gimp-by-color-select-tool\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"tools-rotate-arbitrary\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"gimp-tool-rotate\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"_Arbitrary Rotation...\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Rotate by an arbitrary angle\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"gimp-rotate-layer\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"tools-color-average-radius-set\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"gimp-tool-color-picker\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Set Color Picker Radius\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"tools-color-average-set-to-default\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"Set Color Picker Radius To Default Value\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"tools-color-average-radius-minimum\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Minimize Color Picker Radius\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"tools-color-average-radius-maximum\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"Maximize Color Picker Radius\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"tools-color-average-radius-decrease\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"Decrease Color Picker Radius\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"tools-color-average-radius-increase\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"Increase Color Picker Radius\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"tools-color-average-radius-decrease-skip\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"Decrease Color Picker Radius More\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"tools-color-average-radius-increase-skip\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"Increase Color Picker Radius More\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"tools-paint-brush-size-set\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Set Brush Size\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"tools-paint-brush-size-set-to-default\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Set Brush Size To Default Value\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"tools-paint-brush-size-minimum\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"Minimize Brush Size\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"tools-paint-brush-size-maximum\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"Maximize Brush Size\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"tools-paint-brush-size-decrease\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"Decrease Brush Size\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"tools-paint-brush-size-increase\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"Increase Brush Size\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"tools-paint-brush-size-decrease-skip\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"Decrease Brush Size More\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"tools-paint-brush-size-increase-skip\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"Increase Brush Size More\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"tools-paint-brush-size-decrease-percent\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"Decrease Brush Size Relative\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"tools-paint-brush-size-increase-percent\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"Increase Brush Size Relative\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"tools-paint-brush-angle-set\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"Set Brush Angle\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"tools-paint-brush-angle-set-to-default\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"Set Brush Angle To Default Value\00", align 1
@.str.66 = private unnamed_addr constant [32 x i8] c"tools-paint-brush-angle-minimum\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"Minimize Brush Angle\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"tools-paint-brush-angle-maximum\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"Maximize Brush Angle\00", align 1
@.str.70 = private unnamed_addr constant [33 x i8] c"tools-paint-brush-angle-decrease\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"Decrease Brush Angle\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"tools-paint-brush-angle-increase\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"Increase Brush Angle\00", align 1
@.str.74 = private unnamed_addr constant [38 x i8] c"tools-paint-brush-angle-decrease-skip\00", align 1
@.str.75 = private unnamed_addr constant [26 x i8] c"Decrease Brush Angle More\00", align 1
@.str.76 = private unnamed_addr constant [38 x i8] c"tools-paint-brush-angle-increase-skip\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"Increase Brush Angle More\00", align 1
@.str.78 = private unnamed_addr constant [35 x i8] c"tools-paint-brush-aspect-ratio-set\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"Set Brush Aspect Ratio\00", align 1
@.str.80 = private unnamed_addr constant [46 x i8] c"tools-paint-brush-aspect-ratio-set-to-default\00", align 1
@.str.81 = private unnamed_addr constant [40 x i8] c"Set Brush Aspect Ratio To Default Value\00", align 1
@.str.82 = private unnamed_addr constant [39 x i8] c"tools-paint-brush-aspect-ratio-minimum\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"Minimize Brush Aspect Ratio\00", align 1
@.str.84 = private unnamed_addr constant [39 x i8] c"tools-paint-brush-aspect-ratio-maximum\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"Maximize Brush Aspect Ratio\00", align 1
@.str.86 = private unnamed_addr constant [40 x i8] c"tools-paint-brush-aspect-ratio-decrease\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"Decrease Brush Aspect Ratio\00", align 1
@.str.88 = private unnamed_addr constant [40 x i8] c"tools-paint-brush-aspect-ratio-increase\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"Increase Brush Aspect Ratio\00", align 1
@.str.90 = private unnamed_addr constant [45 x i8] c"tools-paint-brush-aspect-ratio-decrease-skip\00", align 1
@.str.91 = private unnamed_addr constant [33 x i8] c"Decrease Brush Aspect Ratio More\00", align 1
@.str.92 = private unnamed_addr constant [45 x i8] c"tools-paint-brush-aspect-ratio-increase-skip\00", align 1
@.str.93 = private unnamed_addr constant [33 x i8] c"Increase Brush Aspect Ratio More\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"tools-ink-blob-size-set\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"gimp-tool-ink\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"Set Ink Blob Size\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"tools-ink-blob-size-minimum\00", align 1
@.str.98 = private unnamed_addr constant [23 x i8] c"Minimize Ink Blob Size\00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"tools-ink-blob-size-maximum\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"Maximize Ink Blob Size\00", align 1
@.str.101 = private unnamed_addr constant [29 x i8] c"tools-ink-blob-size-decrease\00", align 1
@.str.102 = private unnamed_addr constant [23 x i8] c"Decrease Ink Blob Size\00", align 1
@.str.103 = private unnamed_addr constant [29 x i8] c"tools-ink-blob-size-increase\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"Increase Ink Blob Size\00", align 1
@.str.105 = private unnamed_addr constant [34 x i8] c"tools-ink-blob-size-decrease-skip\00", align 1
@.str.106 = private unnamed_addr constant [28 x i8] c"Decrease Ink Blob Size More\00", align 1
@.str.107 = private unnamed_addr constant [34 x i8] c"tools-ink-blob-size-increase-skip\00", align 1
@.str.108 = private unnamed_addr constant [28 x i8] c"Increase Ink Blob Size More\00", align 1
@.str.109 = private unnamed_addr constant [37 x i8] c"tools-ink-blob-size-decrease-percent\00", align 1
@.str.110 = private unnamed_addr constant [32 x i8] c"Decrease Ink Blob Size Relative\00", align 1
@.str.111 = private unnamed_addr constant [37 x i8] c"tools-ink-blob-size-increase-percent\00", align 1
@.str.112 = private unnamed_addr constant [32 x i8] c"Increase Ink Blob Size Relative\00", align 1
@.str.113 = private unnamed_addr constant [26 x i8] c"tools-ink-blob-aspect-set\00", align 1
@.str.114 = private unnamed_addr constant [20 x i8] c"Set Ink Blob Aspect\00", align 1
@.str.115 = private unnamed_addr constant [37 x i8] c"tools-ink-blob-aspect-set-to-default\00", align 1
@.str.116 = private unnamed_addr constant [37 x i8] c"Set Ink Blob Aspect To Default Value\00", align 1
@.str.117 = private unnamed_addr constant [30 x i8] c"tools-ink-blob-aspect-minimum\00", align 1
@.str.118 = private unnamed_addr constant [25 x i8] c"Minimize Ink Blob Aspect\00", align 1
@.str.119 = private unnamed_addr constant [30 x i8] c"tools-ink-blob-aspect-maximum\00", align 1
@.str.120 = private unnamed_addr constant [25 x i8] c"Maximize Ink Blob Aspect\00", align 1
@.str.121 = private unnamed_addr constant [31 x i8] c"tools-ink-blob-aspect-decrease\00", align 1
@.str.122 = private unnamed_addr constant [25 x i8] c"Decrease Ink Blob Aspect\00", align 1
@.str.123 = private unnamed_addr constant [31 x i8] c"tools-ink-blob-aspect-increase\00", align 1
@.str.124 = private unnamed_addr constant [25 x i8] c"Increase Ink Blob Aspect\00", align 1
@.str.125 = private unnamed_addr constant [36 x i8] c"tools-ink-blob-aspect-decrease-skip\00", align 1
@.str.126 = private unnamed_addr constant [30 x i8] c"Decrease Ink Blob Aspect More\00", align 1
@.str.127 = private unnamed_addr constant [36 x i8] c"tools-ink-blob-aspect-increase-skip\00", align 1
@.str.128 = private unnamed_addr constant [30 x i8] c"Increase Ink Blob Aspect More\00", align 1
@.str.129 = private unnamed_addr constant [25 x i8] c"tools-ink-blob-angle-set\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"Set Ink Blob Angle\00", align 1
@.str.131 = private unnamed_addr constant [29 x i8] c"tools-ink-blob-angle-minimum\00", align 1
@.str.132 = private unnamed_addr constant [24 x i8] c"Minimize Ink Blob Angle\00", align 1
@.str.133 = private unnamed_addr constant [29 x i8] c"tools-ink-blob-angle-maximum\00", align 1
@.str.134 = private unnamed_addr constant [24 x i8] c"Maximize Ink Blob Angle\00", align 1
@.str.135 = private unnamed_addr constant [30 x i8] c"tools-ink-blob-angle-decrease\00", align 1
@.str.136 = private unnamed_addr constant [24 x i8] c"Decrease Ink Blob Angle\00", align 1
@.str.137 = private unnamed_addr constant [30 x i8] c"tools-ink-blob-angle-increase\00", align 1
@.str.138 = private unnamed_addr constant [24 x i8] c"Increase Ink Blob Angle\00", align 1
@.str.139 = private unnamed_addr constant [35 x i8] c"tools-ink-blob-angle-decrease-skip\00", align 1
@.str.140 = private unnamed_addr constant [29 x i8] c"Decrease Ink Blob Angle More\00", align 1
@.str.141 = private unnamed_addr constant [35 x i8] c"tools-ink-blob-angle-increase-skip\00", align 1
@.str.142 = private unnamed_addr constant [29 x i8] c"Increase Ink Blob Angle More\00", align 1
@.str.143 = private unnamed_addr constant [39 x i8] c"tools-foreground-select-brush-size-set\00", align 1
@.str.144 = private unnamed_addr constant [28 x i8] c"gimp-tool-foreground-select\00", align 1
@.str.145 = private unnamed_addr constant [33 x i8] c"Set Foreground Select Brush Size\00", align 1
@.str.146 = private unnamed_addr constant [50 x i8] c"tools-foreground-select-brush-size-set-to-default\00", align 1
@.str.147 = private unnamed_addr constant [50 x i8] c"Set Foreground Select Brush Size to Default Value\00", align 1
@.str.148 = private unnamed_addr constant [43 x i8] c"tools-foreground-select-brush-size-minimum\00", align 1
@.str.149 = private unnamed_addr constant [38 x i8] c"Minimize Foreground Select Brush Size\00", align 1
@.str.150 = private unnamed_addr constant [43 x i8] c"tools-foreground-select-brush-size-maximum\00", align 1
@.str.151 = private unnamed_addr constant [38 x i8] c"Maximize Foreground Select Brush Size\00", align 1
@.str.152 = private unnamed_addr constant [44 x i8] c"tools-foreground-select-brush-size-decrease\00", align 1
@.str.153 = private unnamed_addr constant [38 x i8] c"Decrease Foreground Select Brush Size\00", align 1
@.str.154 = private unnamed_addr constant [44 x i8] c"tools-foreground-select-brush-size-increase\00", align 1
@.str.155 = private unnamed_addr constant [38 x i8] c"Increase Foreground Select Brush Size\00", align 1
@.str.156 = private unnamed_addr constant [49 x i8] c"tools-foreground-select-brush-size-decrease-skip\00", align 1
@.str.157 = private unnamed_addr constant [43 x i8] c"Decrease Foreground Select Brush Size More\00", align 1
@.str.158 = private unnamed_addr constant [49 x i8] c"tools-foreground-select-brush-size-increase-skip\00", align 1
@.str.159 = private unnamed_addr constant [43 x i8] c"Increase Foreground Select Brush Size More\00", align 1
@.str.160 = private unnamed_addr constant [52 x i8] c"tools-foreground-select-brush-size-decrease-percent\00", align 1
@.str.161 = private unnamed_addr constant [47 x i8] c"Decrease Foreground Select Brush Size Relative\00", align 1
@.str.162 = private unnamed_addr constant [52 x i8] c"tools-foreground-select-brush-size-increase-percent\00", align 1
@.str.163 = private unnamed_addr constant [36 x i8] c"tools-transform-preview-opacity-set\00", align 1
@.str.164 = private unnamed_addr constant [22 x i8] c"gimp-tool-perspective\00", align 1
@.str.165 = private unnamed_addr constant [35 x i8] c"Set Transform Tool Preview Opacity\00", align 1
@.str.166 = private unnamed_addr constant [40 x i8] c"tools-transform-preview-opacity-minimum\00", align 1
@.str.167 = private unnamed_addr constant [40 x i8] c"Minimize Transform Tool Preview Opacity\00", align 1
@.str.168 = private unnamed_addr constant [40 x i8] c"tools-transform-preview-opacity-maximum\00", align 1
@.str.169 = private unnamed_addr constant [40 x i8] c"Maximize Transform Tool Preview Opacity\00", align 1
@.str.170 = private unnamed_addr constant [41 x i8] c"tools-transform-preview-opacity-decrease\00", align 1
@.str.171 = private unnamed_addr constant [40 x i8] c"Decrease Transform Tool Preview Opacity\00", align 1
@.str.172 = private unnamed_addr constant [41 x i8] c"tools-transform-preview-opacity-increase\00", align 1
@.str.173 = private unnamed_addr constant [40 x i8] c"Increase Transform Tool Preview Opacity\00", align 1
@.str.174 = private unnamed_addr constant [46 x i8] c"tools-transform-preview-opacity-decrease-skip\00", align 1
@.str.175 = private unnamed_addr constant [45 x i8] c"Decrease Transform Tool Preview Opacity More\00", align 1
@.str.176 = private unnamed_addr constant [46 x i8] c"tools-transform-preview-opacity-increase-skip\00", align 1
@.str.177 = private unnamed_addr constant [45 x i8] c"Increase Transform Tool Preview Opacity More\00", align 1
@.str.178 = private unnamed_addr constant [18 x i8] c"tools-value-1-set\00", align 1
@.str.179 = private unnamed_addr constant [18 x i8] c"gimp-tool-options\00", align 1
@.str.180 = private unnamed_addr constant [12 x i8] c"Set Value 1\00", align 1
@.str.181 = private unnamed_addr constant [29 x i8] c"tools-value-1-set-to-default\00", align 1
@.str.182 = private unnamed_addr constant [29 x i8] c"Set Value 1 To Default Value\00", align 1
@.str.183 = private unnamed_addr constant [22 x i8] c"tools-value-1-minimum\00", align 1
@.str.184 = private unnamed_addr constant [17 x i8] c"Minimize Value 1\00", align 1
@.str.185 = private unnamed_addr constant [22 x i8] c"tools-value-1-maximum\00", align 1
@.str.186 = private unnamed_addr constant [17 x i8] c"Maximize Value 1\00", align 1
@.str.187 = private unnamed_addr constant [23 x i8] c"tools-value-1-decrease\00", align 1
@.str.188 = private unnamed_addr constant [17 x i8] c"Decrease Value 1\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"less\00", align 1
@.str.190 = private unnamed_addr constant [23 x i8] c"tools-value-1-increase\00", align 1
@.str.191 = private unnamed_addr constant [17 x i8] c"Increase Value 1\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"greater\00", align 1
@.str.193 = private unnamed_addr constant [28 x i8] c"tools-value-1-decrease-skip\00", align 1
@.str.194 = private unnamed_addr constant [22 x i8] c"Decrease Value 1 More\00", align 1
@.str.195 = private unnamed_addr constant [14 x i8] c"<primary>less\00", align 1
@.str.196 = private unnamed_addr constant [28 x i8] c"tools-value-1-increase-skip\00", align 1
@.str.197 = private unnamed_addr constant [22 x i8] c"Increase Value 1 More\00", align 1
@.str.198 = private unnamed_addr constant [17 x i8] c"<primary>greater\00", align 1
@.str.199 = private unnamed_addr constant [31 x i8] c"tools-value-1-decrease-percent\00", align 1
@.str.200 = private unnamed_addr constant [26 x i8] c"Decrease Value 1 Relative\00", align 1
@.str.201 = private unnamed_addr constant [31 x i8] c"tools-value-1-increase-percent\00", align 1
@.str.202 = private unnamed_addr constant [26 x i8] c"Increase Value 1 Relative\00", align 1
@.str.203 = private unnamed_addr constant [18 x i8] c"tools-value-2-set\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"Set Value 2\00", align 1
@.str.205 = private unnamed_addr constant [29 x i8] c"tools-value-2-set-to-default\00", align 1
@.str.206 = private unnamed_addr constant [29 x i8] c"Set Value 2 To Default Value\00", align 1
@.str.207 = private unnamed_addr constant [10 x i8] c"backslash\00", align 1
@.str.208 = private unnamed_addr constant [22 x i8] c"tools-value-2-minimum\00", align 1
@.str.209 = private unnamed_addr constant [17 x i8] c"Minimize Value 2\00", align 1
@.str.210 = private unnamed_addr constant [22 x i8] c"tools-value-2-maximum\00", align 1
@.str.211 = private unnamed_addr constant [17 x i8] c"Maximize Value 2\00", align 1
@.str.212 = private unnamed_addr constant [23 x i8] c"tools-value-2-decrease\00", align 1
@.str.213 = private unnamed_addr constant [17 x i8] c"Decrease Value 2\00", align 1
@.str.214 = private unnamed_addr constant [12 x i8] c"bracketleft\00", align 1
@.str.215 = private unnamed_addr constant [23 x i8] c"tools-value-2-increase\00", align 1
@.str.216 = private unnamed_addr constant [17 x i8] c"Increase Value 2\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"bracketright\00", align 1
@.str.218 = private unnamed_addr constant [28 x i8] c"tools-value-2-decrease-skip\00", align 1
@.str.219 = private unnamed_addr constant [22 x i8] c"Decrease Value 2 More\00", align 1
@.str.220 = private unnamed_addr constant [19 x i8] c"<shift>bracketleft\00", align 1
@.str.221 = private unnamed_addr constant [28 x i8] c"tools-value-2-increase-skip\00", align 1
@.str.222 = private unnamed_addr constant [22 x i8] c"Increase Value 2 More\00", align 1
@.str.223 = private unnamed_addr constant [20 x i8] c"<shift>bracketright\00", align 1
@.str.224 = private unnamed_addr constant [31 x i8] c"tools-value-2-decrease-percent\00", align 1
@.str.225 = private unnamed_addr constant [26 x i8] c"Decrease Value 2 Relative\00", align 1
@.str.226 = private unnamed_addr constant [31 x i8] c"tools-value-2-increase-percent\00", align 1
@.str.227 = private unnamed_addr constant [26 x i8] c"Increase Value 2 Relative\00", align 1
@.str.228 = private unnamed_addr constant [18 x i8] c"tools-value-3-set\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"Set Value 3\00", align 1
@.str.230 = private unnamed_addr constant [29 x i8] c"tools-value-3-set-to-default\00", align 1
@.str.231 = private unnamed_addr constant [29 x i8] c"Set Value 3 To Default Value\00", align 1
@.str.232 = private unnamed_addr constant [22 x i8] c"tools-value-3-minimum\00", align 1
@.str.233 = private unnamed_addr constant [17 x i8] c"Minimize Value 3\00", align 1
@.str.234 = private unnamed_addr constant [22 x i8] c"tools-value-3-maximum\00", align 1
@.str.235 = private unnamed_addr constant [17 x i8] c"Maximize Value 3\00", align 1
@.str.236 = private unnamed_addr constant [23 x i8] c"tools-value-3-decrease\00", align 1
@.str.237 = private unnamed_addr constant [17 x i8] c"Decrease Value 3\00", align 1
@.str.238 = private unnamed_addr constant [23 x i8] c"tools-value-3-increase\00", align 1
@.str.239 = private unnamed_addr constant [17 x i8] c"Increase Value 3\00", align 1
@.str.240 = private unnamed_addr constant [28 x i8] c"tools-value-3-decrease-skip\00", align 1
@.str.241 = private unnamed_addr constant [22 x i8] c"Decrease Value 3 More\00", align 1
@.str.242 = private unnamed_addr constant [28 x i8] c"tools-value-3-increase-skip\00", align 1
@.str.243 = private unnamed_addr constant [22 x i8] c"Increase Value 3 More\00", align 1
@.str.244 = private unnamed_addr constant [31 x i8] c"tools-value-3-decrease-percent\00", align 1
@.str.245 = private unnamed_addr constant [26 x i8] c"Decrease Value 3 Relative\00", align 1
@.str.246 = private unnamed_addr constant [31 x i8] c"tools-value-3-increase-percent\00", align 1
@.str.247 = private unnamed_addr constant [26 x i8] c"Increase Value 3 Relative\00", align 1
@.str.248 = private unnamed_addr constant [18 x i8] c"tools-value-4-set\00", align 1
@.str.249 = private unnamed_addr constant [12 x i8] c"Set Value 4\00", align 1
@.str.250 = private unnamed_addr constant [29 x i8] c"tools-value-4-set-to-default\00", align 1
@.str.251 = private unnamed_addr constant [29 x i8] c"Set Value 4 To Default Value\00", align 1
@.str.252 = private unnamed_addr constant [22 x i8] c"tools-value-4-minimum\00", align 1
@.str.253 = private unnamed_addr constant [17 x i8] c"Minimize Value 4\00", align 1
@.str.254 = private unnamed_addr constant [22 x i8] c"tools-value-4-maximum\00", align 1
@.str.255 = private unnamed_addr constant [17 x i8] c"Maximize Value 4\00", align 1
@.str.256 = private unnamed_addr constant [23 x i8] c"tools-value-4-decrease\00", align 1
@.str.257 = private unnamed_addr constant [17 x i8] c"Decrease Value 4\00", align 1
@.str.258 = private unnamed_addr constant [23 x i8] c"tools-value-4-increase\00", align 1
@.str.259 = private unnamed_addr constant [17 x i8] c"Increase Value 4\00", align 1
@.str.260 = private unnamed_addr constant [28 x i8] c"tools-value-4-decrease-skip\00", align 1
@.str.261 = private unnamed_addr constant [22 x i8] c"Decrease Value 4 More\00", align 1
@.str.262 = private unnamed_addr constant [28 x i8] c"tools-value-4-increase-skip\00", align 1
@.str.263 = private unnamed_addr constant [22 x i8] c"Increase Value 4 More\00", align 1
@.str.264 = private unnamed_addr constant [31 x i8] c"tools-value-4-decrease-percent\00", align 1
@.str.265 = private unnamed_addr constant [26 x i8] c"Decrease Value 4 Relative\00", align 1
@.str.266 = private unnamed_addr constant [31 x i8] c"tools-value-4-increase-percent\00", align 1
@.str.267 = private unnamed_addr constant [26 x i8] c"Increase Value 4 Relative\00", align 1
@.str.268 = private unnamed_addr constant [19 x i8] c"tools-object-1-set\00", align 1
@.str.269 = private unnamed_addr constant [25 x i8] c"Select Object 1 by Index\00", align 1
@.str.270 = private unnamed_addr constant [21 x i8] c"tools-object-1-first\00", align 1
@.str.271 = private unnamed_addr constant [15 x i8] c"First Object 1\00", align 1
@.str.272 = private unnamed_addr constant [20 x i8] c"tools-object-1-last\00", align 1
@.str.273 = private unnamed_addr constant [14 x i8] c"Last Object 1\00", align 1
@.str.274 = private unnamed_addr constant [24 x i8] c"tools-object-1-previous\00", align 1
@.str.275 = private unnamed_addr constant [18 x i8] c"Previous Object 1\00", align 1
@.str.276 = private unnamed_addr constant [20 x i8] c"tools-object-1-next\00", align 1
@.str.277 = private unnamed_addr constant [14 x i8] c"Next Object 1\00", align 1
@.str.278 = private unnamed_addr constant [19 x i8] c"tools-object-2-set\00", align 1
@.str.279 = private unnamed_addr constant [25 x i8] c"Select Object 2 by Index\00", align 1
@.str.280 = private unnamed_addr constant [21 x i8] c"tools-object-2-first\00", align 1
@.str.281 = private unnamed_addr constant [15 x i8] c"First Object 2\00", align 1
@.str.282 = private unnamed_addr constant [20 x i8] c"tools-object-2-last\00", align 1
@.str.283 = private unnamed_addr constant [14 x i8] c"Last Object 2\00", align 1
@.str.284 = private unnamed_addr constant [24 x i8] c"tools-object-2-previous\00", align 1
@.str.285 = private unnamed_addr constant [18 x i8] c"Previous Object 2\00", align 1
@.str.286 = private unnamed_addr constant [20 x i8] c"tools-object-2-next\00", align 1
@.str.287 = private unnamed_addr constant [14 x i8] c"Next Object 2\00", align 1

; Function Attrs: nounwind uwtable
define void @tools_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %list = alloca %struct._GList*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %entry5 = alloca %struct._GimpStringActionEntry, align 8
  %stock_id = alloca i8*, align 8
  %identifier = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([5 x %struct._GimpActionEntry], [5 x %struct._GimpActionEntry]* @tools_actions, i32 0, i32 0), i32 5)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_string_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct._GimpStringActionEntry* getelementptr inbounds ([2 x %struct._GimpStringActionEntry], [2 x %struct._GimpStringActionEntry]* @tools_alternative_actions, i32 0, i32 0), i32 2, void ()* bitcast (void (%struct._GtkAction*, i8*, i8*)* @tools_select_cmd_callback to void ()*))
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %3 = bitcast %struct._GimpActionGroup* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_action_group_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkActionGroup*
  %call2 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkAction* %call2, %struct._GtkAction** %action, align 8
  %5 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_set_accel_path(%struct._GtkAction* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  %6 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %6, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([8 x %struct._GimpEnumActionEntry], [8 x %struct._GimpEnumActionEntry]* @tools_color_average_radius_actions, i32 0, i32 0), i32 8, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_color_average_radius_cmd_callback to void ()*))
  %7 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %7, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([10 x %struct._GimpEnumActionEntry], [10 x %struct._GimpEnumActionEntry]* @tools_paint_brush_size_actions, i32 0, i32 0), i32 10, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_paint_brush_size_cmd_callback to void ()*))
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %8, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([8 x %struct._GimpEnumActionEntry], [8 x %struct._GimpEnumActionEntry]* @tools_paint_brush_angle_actions, i32 0, i32 0), i32 8, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_paint_brush_angle_cmd_callback to void ()*))
  %9 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %9, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([8 x %struct._GimpEnumActionEntry], [8 x %struct._GimpEnumActionEntry]* @tools_paint_brush_aspect_ratio_actions, i32 0, i32 0), i32 8, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_paint_brush_aspect_ratio_cmd_callback to void ()*))
  %10 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %10, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([9 x %struct._GimpEnumActionEntry], [9 x %struct._GimpEnumActionEntry]* @tools_ink_blob_size_actions, i32 0, i32 0), i32 9, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_ink_blob_size_cmd_callback to void ()*))
  %11 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %11, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([8 x %struct._GimpEnumActionEntry], [8 x %struct._GimpEnumActionEntry]* @tools_ink_blob_aspect_actions, i32 0, i32 0), i32 8, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_ink_blob_aspect_cmd_callback to void ()*))
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %12, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @tools_ink_blob_angle_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_ink_blob_angle_cmd_callback to void ()*))
  %13 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %13, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([10 x %struct._GimpEnumActionEntry], [10 x %struct._GimpEnumActionEntry]* @tools_foreground_select_brush_size_actions, i32 0, i32 0), i32 10, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_fg_select_brush_size_cmd_callback to void ()*))
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %14, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @tools_transform_preview_opacity_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_transform_preview_opacity_cmd_callback to void ()*))
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %15, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([10 x %struct._GimpEnumActionEntry], [10 x %struct._GimpEnumActionEntry]* @tools_value_1_actions, i32 0, i32 0), i32 10, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_value_1_cmd_callback to void ()*))
  %16 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %16, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([10 x %struct._GimpEnumActionEntry], [10 x %struct._GimpEnumActionEntry]* @tools_value_2_actions, i32 0, i32 0), i32 10, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_value_2_cmd_callback to void ()*))
  %17 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %17, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([10 x %struct._GimpEnumActionEntry], [10 x %struct._GimpEnumActionEntry]* @tools_value_3_actions, i32 0, i32 0), i32 10, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_value_3_cmd_callback to void ()*))
  %18 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %18, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([10 x %struct._GimpEnumActionEntry], [10 x %struct._GimpEnumActionEntry]* @tools_value_4_actions, i32 0, i32 0), i32 10, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_value_4_cmd_callback to void ()*))
  %19 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %19, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([5 x %struct._GimpEnumActionEntry], [5 x %struct._GimpEnumActionEntry]* @tools_object_1_actions, i32 0, i32 0), i32 5, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_object_1_cmd_callback to void ()*))
  %20 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %20, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([5 x %struct._GimpEnumActionEntry], [5 x %struct._GimpEnumActionEntry]* @tools_object_2_actions, i32 0, i32 0), i32 5, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @tools_object_2_cmd_callback to void ()*))
  %21 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %21, i32 0, i32 1
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp* %22)
  store %struct._GList* %call3, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %23, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 0
  %25 = load i8*, i8** %data, align 8
  %26 = bitcast i8* %25 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %26, %struct._GimpToolInfo** %tool_info, align 8
  %27 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %menu_label = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %27, i32 0, i32 7
  %28 = load i8*, i8** %menu_label, align 8
  %tobool4 = icmp ne i8* %28, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %29 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %30 = bitcast %struct._GimpToolInfo* %29 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_viewable_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call7)
  %31 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpViewable*
  %call9 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %31)
  store i8* %call9, i8** %stock_id, align 8
  %32 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %33 = bitcast %struct._GimpToolInfo* %32 to i8*
  %call10 = call i8* @gimp_object_get_name(i8* %33)
  store i8* %call10, i8** %identifier, align 8
  %34 = load i8*, i8** %identifier, align 8
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 5
  %35 = load i8*, i8** %identifier, align 8
  %call11 = call i64 @strlen(i8* %35) #5
  %sub = sub i64 %call11, 10
  %call12 = call noalias i8* @g_strndup(i8* %add.ptr, i64 %sub)
  store i8* %call12, i8** %tmp, align 8
  %36 = load i8*, i8** %tmp, align 8
  %call13 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %36)
  store i8* %call13, i8** %name, align 8
  %37 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %37)
  %38 = load i8*, i8** %name, align 8
  %name14 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %entry5, i32 0, i32 0
  store i8* %38, i8** %name14, align 8
  %39 = load i8*, i8** %stock_id, align 8
  %stock_id15 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %entry5, i32 0, i32 1
  store i8* %39, i8** %stock_id15, align 8
  %40 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %menu_label16 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %40, i32 0, i32 7
  %41 = load i8*, i8** %menu_label16, align 8
  %label = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %entry5, i32 0, i32 2
  store i8* %41, i8** %label, align 8
  %42 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %menu_accel = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %42, i32 0, i32 8
  %43 = load i8*, i8** %menu_accel, align 8
  %accelerator = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %entry5, i32 0, i32 3
  store i8* %43, i8** %accelerator, align 8
  %44 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %44, i32 0, i32 6
  %45 = load i8*, i8** %help, align 8
  %tooltip = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %entry5, i32 0, i32 4
  store i8* %45, i8** %tooltip, align 8
  %46 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help_id = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %46, i32 0, i32 10
  %47 = load i8*, i8** %help_id, align 8
  %help_id17 = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %entry5, i32 0, i32 6
  store i8* %47, i8** %help_id17, align 8
  %48 = load i8*, i8** %identifier, align 8
  %value = getelementptr inbounds %struct._GimpStringActionEntry, %struct._GimpStringActionEntry* %entry5, i32 0, i32 5
  store i8* %48, i8** %value, align 8
  %49 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_string_actions(%struct._GimpActionGroup* %49, i8* null, %struct._GimpStringActionEntry* %entry5, i32 1, void ()* bitcast (void (%struct._GtkAction*, i8*, i8*)* @tools_select_cmd_callback to void ()*))
  %50 = load i8*, i8** %name, align 8
  call void @g_free(i8* %50)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %51 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool18 = icmp ne %struct._GList* %51, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %52 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %52, i32 0, i32 1
  %53 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %53, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_string_actions(%struct._GimpActionGroup*, i8*, %struct._GimpStringActionEntry*, i32, void ()*) #1

declare void @tools_select_cmd_callback(%struct._GtkAction*, i8*, i8*) #1

declare %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_group_get_type() #2

declare void @gtk_action_set_accel_path(%struct._GtkAction*, i8*) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @tools_color_average_radius_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tools_paint_brush_size_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tools_paint_brush_angle_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tools_paint_brush_aspect_ratio_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tools_ink_blob_size_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tools_ink_blob_aspect_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tools_ink_blob_angle_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tools_fg_select_brush_size_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tools_transform_preview_opacity_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tools_value_1_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tools_value_2_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tools_value_3_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tools_value_4_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tools_object_1_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @tools_object_2_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp*) #1

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @gimp_object_get_name(i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @tools_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
