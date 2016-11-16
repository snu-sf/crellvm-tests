; ModuleID = './app/actions/context-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
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
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type opaque
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpBrushGenerated = type { %struct._GimpBrush, i32, float, i32, float, float, float }

@.str = private unnamed_addr constant [15 x i8] c"context-action\00", align 1
@context_actions = internal constant [18 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @context_colors_default_cmd_callback to void ()*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @context_colors_swap_cmd_callback to void ()*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i32 0, i32 0) }], align 16
@context_palette_foreground_actions = internal global [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.64, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.66, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_palette_background_actions = internal global [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.68, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.70, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.72, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.74, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.78, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.80, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_colormap_foreground_actions = internal global [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.83, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.85, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.87, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.89, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.91, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.93, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.95, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_colormap_background_actions = internal global [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.97, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.101, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.103, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.105, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.107, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.109, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_swatch_foreground_actions = internal global [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.111, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.113, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.115, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i32 0, i32 0), i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0), i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.123, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.125, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_swatch_background_actions = internal global [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.127, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.129, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.131, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.133, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.135, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.137, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.139, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_foreground_red_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.142, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.144, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.146, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.148, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.150, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.152, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.154, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_foreground_green_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.157, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.159, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.161, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.163, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.165, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.167, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.169, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_foreground_blue_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.172, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.174, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.176, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.178, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.180, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.182, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.184, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_foreground_hue_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.187, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.189, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.191, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.193, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.195, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.197, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.199, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_foreground_saturation_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.201, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.203, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.205, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.207, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.209, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.211, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.213, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_foreground_value_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.215, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.217, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.219, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.221, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.223, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.225, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.227, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_background_red_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.229, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.231, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.233, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.235, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.237, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.239, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.241, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_background_green_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.243, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.245, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.247, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.249, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.251, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.253, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.255, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_background_blue_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.257, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.259, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.261, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.263, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.265, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.267, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.269, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_background_hue_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.271, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.275, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.277, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.279, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.281, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.283, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_background_saturation_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.285, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.287, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.289, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.291, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.293, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.295, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.297, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_background_value_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.299, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.301, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.303, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.305, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.307, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.309, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.311, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_opacity_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.313, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.314, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.315, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.316, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.317, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.318, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.319, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.320, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.321, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.322, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.323, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.324, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.325, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_paint_mode_actions = internal constant [4 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.327, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.328, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.329, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.331, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.332, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.333, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }], align 16
@context_tool_select_actions = internal constant [5 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.335, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.337, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.338, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.339, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.340, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.341, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.342, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.343, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }], align 16
@context_brush_select_actions = internal constant [5 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.345, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.346, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.347, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.348, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.349, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.351, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.352, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.353, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }], align 16
@context_pattern_select_actions = internal constant [5 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.354, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.355, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.356, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.357, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.359, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.361, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.362, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.363, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }], align 16
@context_palette_select_actions = internal constant [5 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.364, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.365, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.366, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.367, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.369, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.370, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.371, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.372, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.373, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }], align 16
@context_gradient_select_actions = internal constant [5 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.375, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.377, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.378, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.379, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.380, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.381, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.382, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.383, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }], align 16
@context_font_select_actions = internal constant [5 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.384, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.385, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.387, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.389, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.390, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.391, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.393, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }], align 16
@context_brush_spacing_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.394, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.395, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.396, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.397, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.398, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.399, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.400, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.401, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.402, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.403, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.404, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.405, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.406, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.407, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_brush_shape_actions = internal constant [3 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.408, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.409, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.410, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.411, i32 0, i32 0), i8* null, i8* null, i32 1, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.412, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.413, i32 0, i32 0), i8* null, i8* null, i32 2, i32 0, i8* null }], align 16
@context_brush_radius_actions = internal constant [11 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.414, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.415, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.416, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.417, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.418, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.419, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.420, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.421, i32 0, i32 0), i8* null, i8* null, i32 -4, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.422, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.423, i32 0, i32 0), i8* null, i8* null, i32 -5, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.424, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.425, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.426, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.427, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.428, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.429, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.430, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.431, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.432, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.433, i32 0, i32 0), i8* null, i8* null, i32 -10, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.434, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.435, i32 0, i32 0), i8* null, i8* null, i32 -11, i32 0, i8* null }], align 16
@context_brush_spikes_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.436, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.437, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.438, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.439, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.441, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.442, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.443, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.444, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.445, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.446, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.447, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.448, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.449, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_brush_hardness_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.450, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.451, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.452, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.453, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.454, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.455, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.456, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.457, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.458, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.459, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.460, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.461, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.462, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.463, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_brush_aspect_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.464, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.465, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.466, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.467, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.468, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.469, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.470, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.471, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.472, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.473, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.474, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.475, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.476, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.477, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@context_brush_angle_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.478, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.479, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.480, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.481, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.482, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.483, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.484, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.485, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.486, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.487, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.488, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.489, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.490, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.491, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"context-menu\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"_Context\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"context-colors-menu\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gimp-default-colors\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"_Colors\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"context-opacity-menu\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"gimp-transparency\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"_Opacity\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"context-paint-mode-menu\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"gimp-tool-pencil\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Paint _Mode\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"context-tool-menu\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"gimp-tools\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"_Tool\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"context-brush-menu\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"_Brush\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"context-pattern-menu\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"gimp-tool-bucket-fill\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"_Pattern\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"context-palette-menu\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"gtk-select-color\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"_Palette\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"context-gradient-menu\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"gimp-tool-blend\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"_Gradient\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"context-font-menu\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"gtk-select-font\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"_Font\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"context-brush-shape-menu\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"_Shape\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"context-brush-radius-menu\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"_Radius\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"context-brush-spikes-menu\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"S_pikes\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"context-brush-hardness-menu\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"_Hardness\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"context-brush-aspect-menu\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"_Aspect Ratio\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"context-brush-angle-menu\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"A_ngle\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"context-colors-default\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"_Default Colors\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.45 = private unnamed_addr constant [57 x i8] c"Set foreground color to black, background color to white\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"gimp-toolbox-default-colors\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"context-colors-swap\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"gimp-swap-colors\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"S_wap Colors\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"Exchange foreground and background colors\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"gimp-toolbox-swap-colors\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"context-palette-foreground-set\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"Foreground Palette Color Set\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"context-palette-foreground-first\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"Foreground Palette Color First\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"context-palette-foreground-last\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"Foreground Palette Color Last\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"context-palette-foreground-previous\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"Foreground Palette Color Previous\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"context-palette-foreground-next\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"Foreground Palette Color Next\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"context-palette-foreground-previous-skip\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"Foreground Palette Color Skip Back\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"context-palette-foreground-next-skip\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"Foreground Palette Color Skip Forward\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"context-palette-background-set\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"Background Palette Color Set\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"context-palette-background-first\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"Background Palette Color First\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"context-palette-background-last\00", align 1
@.str.72 = private unnamed_addr constant [30 x i8] c"Background Palette Color Last\00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"context-palette-background-previous\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"Background Palette Color Previous\00", align 1
@.str.75 = private unnamed_addr constant [32 x i8] c"context-palette-background-next\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"Background Palette Color Next\00", align 1
@.str.77 = private unnamed_addr constant [41 x i8] c"context-palette-background-previous-skip\00", align 1
@.str.78 = private unnamed_addr constant [35 x i8] c"Background Palette Color Skip Back\00", align 1
@.str.79 = private unnamed_addr constant [37 x i8] c"context-palette-background-next-skip\00", align 1
@.str.80 = private unnamed_addr constant [38 x i8] c"Background Palette Color Skip Forward\00", align 1
@.str.81 = private unnamed_addr constant [32 x i8] c"context-colormap-foreground-set\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"gimp-colormap\00", align 1
@.str.83 = private unnamed_addr constant [30 x i8] c"Foreground Colormap Color Set\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"context-colormap-foreground-first\00", align 1
@.str.85 = private unnamed_addr constant [32 x i8] c"Foreground Colormap Color First\00", align 1
@.str.86 = private unnamed_addr constant [33 x i8] c"context-colormap-foreground-last\00", align 1
@.str.87 = private unnamed_addr constant [31 x i8] c"Foreground Colormap Color Last\00", align 1
@.str.88 = private unnamed_addr constant [37 x i8] c"context-colormap-foreground-previous\00", align 1
@.str.89 = private unnamed_addr constant [35 x i8] c"Foreground Colormap Color Previous\00", align 1
@.str.90 = private unnamed_addr constant [33 x i8] c"context-colormap-foreground-next\00", align 1
@.str.91 = private unnamed_addr constant [31 x i8] c"Foreground Colormap Color Next\00", align 1
@.str.92 = private unnamed_addr constant [42 x i8] c"context-colormap-foreground-previous-skip\00", align 1
@.str.93 = private unnamed_addr constant [36 x i8] c"Foreground Colormap Color Skip Back\00", align 1
@.str.94 = private unnamed_addr constant [38 x i8] c"context-colormap-foreground-next-skip\00", align 1
@.str.95 = private unnamed_addr constant [39 x i8] c"Foreground Colormap Color Skip Forward\00", align 1
@.str.96 = private unnamed_addr constant [32 x i8] c"context-colormap-background-set\00", align 1
@.str.97 = private unnamed_addr constant [30 x i8] c"Background Colormap Color Set\00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"context-colormap-background-first\00", align 1
@.str.99 = private unnamed_addr constant [32 x i8] c"Background Colormap Color First\00", align 1
@.str.100 = private unnamed_addr constant [33 x i8] c"context-colormap-background-last\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"Background Colormap Color Last\00", align 1
@.str.102 = private unnamed_addr constant [37 x i8] c"context-colormap-background-previous\00", align 1
@.str.103 = private unnamed_addr constant [35 x i8] c"Background Colormap Color Previous\00", align 1
@.str.104 = private unnamed_addr constant [33 x i8] c"context-colormap-background-next\00", align 1
@.str.105 = private unnamed_addr constant [31 x i8] c"Background Colormap Color Next\00", align 1
@.str.106 = private unnamed_addr constant [42 x i8] c"context-colormap-background-previous-skip\00", align 1
@.str.107 = private unnamed_addr constant [36 x i8] c"Background Colormap Color Skip Back\00", align 1
@.str.108 = private unnamed_addr constant [38 x i8] c"context-colormap-background-next-skip\00", align 1
@.str.109 = private unnamed_addr constant [39 x i8] c"Background Colormap Color Skip Forward\00", align 1
@.str.110 = private unnamed_addr constant [30 x i8] c"context-swatch-foreground-set\00", align 1
@.str.111 = private unnamed_addr constant [28 x i8] c"Foreground Swatch Color Set\00", align 1
@.str.112 = private unnamed_addr constant [32 x i8] c"context-swatch-foreground-first\00", align 1
@.str.113 = private unnamed_addr constant [30 x i8] c"Foreground Swatch Color First\00", align 1
@.str.114 = private unnamed_addr constant [31 x i8] c"context-swatch-foreground-last\00", align 1
@.str.115 = private unnamed_addr constant [29 x i8] c"Foreground Swatch Color Last\00", align 1
@.str.116 = private unnamed_addr constant [35 x i8] c"context-swatch-foreground-previous\00", align 1
@.str.117 = private unnamed_addr constant [33 x i8] c"Foreground Swatch Color Previous\00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.119 = private unnamed_addr constant [31 x i8] c"context-swatch-foreground-next\00", align 1
@.str.120 = private unnamed_addr constant [29 x i8] c"Foreground Swatch Color Next\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.122 = private unnamed_addr constant [40 x i8] c"context-swatch-foreground-previous-skip\00", align 1
@.str.123 = private unnamed_addr constant [34 x i8] c"Foreground Swatch Color Skip Back\00", align 1
@.str.124 = private unnamed_addr constant [36 x i8] c"context-swatch-foreground-next-skip\00", align 1
@.str.125 = private unnamed_addr constant [37 x i8] c"Foreground Swatch Color Skip Forward\00", align 1
@.str.126 = private unnamed_addr constant [30 x i8] c"context-swatch-background-set\00", align 1
@.str.127 = private unnamed_addr constant [28 x i8] c"Background Swatch Color Set\00", align 1
@.str.128 = private unnamed_addr constant [32 x i8] c"context-swatch-background-first\00", align 1
@.str.129 = private unnamed_addr constant [30 x i8] c"Background Swatch Color First\00", align 1
@.str.130 = private unnamed_addr constant [31 x i8] c"context-swatch-background-last\00", align 1
@.str.131 = private unnamed_addr constant [29 x i8] c"Background Swatch Color Last\00", align 1
@.str.132 = private unnamed_addr constant [35 x i8] c"context-swatch-background-previous\00", align 1
@.str.133 = private unnamed_addr constant [33 x i8] c"Background Swatch Color Previous\00", align 1
@.str.134 = private unnamed_addr constant [31 x i8] c"context-swatch-background-next\00", align 1
@.str.135 = private unnamed_addr constant [29 x i8] c"Background Swatch Color Next\00", align 1
@.str.136 = private unnamed_addr constant [40 x i8] c"context-swatch-background-previous-skip\00", align 1
@.str.137 = private unnamed_addr constant [34 x i8] c"Background Swatch Color Skip Back\00", align 1
@.str.138 = private unnamed_addr constant [36 x i8] c"context-swatch-background-next-skip\00", align 1
@.str.139 = private unnamed_addr constant [37 x i8] c"Background Swatch Color Skip Forward\00", align 1
@.str.140 = private unnamed_addr constant [27 x i8] c"context-foreground-red-set\00", align 1
@.str.141 = private unnamed_addr constant [17 x i8] c"gimp-channel-red\00", align 1
@.str.142 = private unnamed_addr constant [19 x i8] c"Foreground Red Set\00", align 1
@.str.143 = private unnamed_addr constant [31 x i8] c"context-foreground-red-minimum\00", align 1
@.str.144 = private unnamed_addr constant [23 x i8] c"Foreground Red Minimum\00", align 1
@.str.145 = private unnamed_addr constant [31 x i8] c"context-foreground-red-maximum\00", align 1
@.str.146 = private unnamed_addr constant [23 x i8] c"Foreground Red Maximum\00", align 1
@.str.147 = private unnamed_addr constant [32 x i8] c"context-foreground-red-decrease\00", align 1
@.str.148 = private unnamed_addr constant [24 x i8] c"Foreground Red Decrease\00", align 1
@.str.149 = private unnamed_addr constant [32 x i8] c"context-foreground-red-increase\00", align 1
@.str.150 = private unnamed_addr constant [24 x i8] c"Foreground Red Increase\00", align 1
@.str.151 = private unnamed_addr constant [37 x i8] c"context-foreground-red-decrease-skip\00", align 1
@.str.152 = private unnamed_addr constant [28 x i8] c"Foreground Red Decrease 10%\00", align 1
@.str.153 = private unnamed_addr constant [37 x i8] c"context-foreground-red-increase-skip\00", align 1
@.str.154 = private unnamed_addr constant [28 x i8] c"Foreground Red Increase 10%\00", align 1
@.str.155 = private unnamed_addr constant [29 x i8] c"context-foreground-green-set\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"gimp-channel-green\00", align 1
@.str.157 = private unnamed_addr constant [21 x i8] c"Foreground Green Set\00", align 1
@.str.158 = private unnamed_addr constant [33 x i8] c"context-foreground-green-minimum\00", align 1
@.str.159 = private unnamed_addr constant [25 x i8] c"Foreground Green Minimum\00", align 1
@.str.160 = private unnamed_addr constant [33 x i8] c"context-foreground-green-maximum\00", align 1
@.str.161 = private unnamed_addr constant [25 x i8] c"Foreground Green Maximum\00", align 1
@.str.162 = private unnamed_addr constant [34 x i8] c"context-foreground-green-decrease\00", align 1
@.str.163 = private unnamed_addr constant [26 x i8] c"Foreground Green Decrease\00", align 1
@.str.164 = private unnamed_addr constant [34 x i8] c"context-foreground-green-increase\00", align 1
@.str.165 = private unnamed_addr constant [26 x i8] c"Foreground Green Increase\00", align 1
@.str.166 = private unnamed_addr constant [39 x i8] c"context-foreground-green-decrease-skip\00", align 1
@.str.167 = private unnamed_addr constant [30 x i8] c"Foreground Green Decrease 10%\00", align 1
@.str.168 = private unnamed_addr constant [39 x i8] c"context-foreground-green-increase-skip\00", align 1
@.str.169 = private unnamed_addr constant [30 x i8] c"Foreground Green Increase 10%\00", align 1
@.str.170 = private unnamed_addr constant [28 x i8] c"context-foreground-blue-set\00", align 1
@.str.171 = private unnamed_addr constant [18 x i8] c"gimp-channel-blue\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"Foreground Blue Set\00", align 1
@.str.173 = private unnamed_addr constant [32 x i8] c"context-foreground-blue-minimum\00", align 1
@.str.174 = private unnamed_addr constant [24 x i8] c"Foreground Blue Minimum\00", align 1
@.str.175 = private unnamed_addr constant [32 x i8] c"context-foreground-blue-maximum\00", align 1
@.str.176 = private unnamed_addr constant [24 x i8] c"Foreground Blue Maximum\00", align 1
@.str.177 = private unnamed_addr constant [33 x i8] c"context-foreground-blue-decrease\00", align 1
@.str.178 = private unnamed_addr constant [25 x i8] c"Foreground Blue Decrease\00", align 1
@.str.179 = private unnamed_addr constant [33 x i8] c"context-foreground-blue-increase\00", align 1
@.str.180 = private unnamed_addr constant [25 x i8] c"Foreground Blue Increase\00", align 1
@.str.181 = private unnamed_addr constant [38 x i8] c"context-foreground-blue-decrease-skip\00", align 1
@.str.182 = private unnamed_addr constant [29 x i8] c"Foreground Blue Decrease 10%\00", align 1
@.str.183 = private unnamed_addr constant [38 x i8] c"context-foreground-blue-increase-skip\00", align 1
@.str.184 = private unnamed_addr constant [29 x i8] c"Foreground Blue Increase 10%\00", align 1
@.str.185 = private unnamed_addr constant [27 x i8] c"context-foreground-hue-set\00", align 1
@.str.186 = private unnamed_addr constant [25 x i8] c"gimp-tool-hue-saturation\00", align 1
@.str.187 = private unnamed_addr constant [19 x i8] c"Foreground Hue Set\00", align 1
@.str.188 = private unnamed_addr constant [31 x i8] c"context-foreground-hue-minimum\00", align 1
@.str.189 = private unnamed_addr constant [23 x i8] c"Foreground Hue Minimum\00", align 1
@.str.190 = private unnamed_addr constant [31 x i8] c"context-foreground-hue-maximum\00", align 1
@.str.191 = private unnamed_addr constant [23 x i8] c"Foreground Hue Maximum\00", align 1
@.str.192 = private unnamed_addr constant [32 x i8] c"context-foreground-hue-decrease\00", align 1
@.str.193 = private unnamed_addr constant [24 x i8] c"Foreground Hue Decrease\00", align 1
@.str.194 = private unnamed_addr constant [32 x i8] c"context-foreground-hue-increase\00", align 1
@.str.195 = private unnamed_addr constant [24 x i8] c"Foreground Hue Increase\00", align 1
@.str.196 = private unnamed_addr constant [37 x i8] c"context-foreground-hue-decrease-skip\00", align 1
@.str.197 = private unnamed_addr constant [28 x i8] c"Foreground Hue Decrease 10%\00", align 1
@.str.198 = private unnamed_addr constant [37 x i8] c"context-foreground-hue-increase-skip\00", align 1
@.str.199 = private unnamed_addr constant [28 x i8] c"Foreground Hue Increase 10%\00", align 1
@.str.200 = private unnamed_addr constant [34 x i8] c"context-foreground-saturation-set\00", align 1
@.str.201 = private unnamed_addr constant [26 x i8] c"Foreground Saturation Set\00", align 1
@.str.202 = private unnamed_addr constant [38 x i8] c"context-foreground-saturation-minimum\00", align 1
@.str.203 = private unnamed_addr constant [30 x i8] c"Foreground Saturation Minimum\00", align 1
@.str.204 = private unnamed_addr constant [38 x i8] c"context-foreground-saturation-maximum\00", align 1
@.str.205 = private unnamed_addr constant [30 x i8] c"Foreground Saturation Maximum\00", align 1
@.str.206 = private unnamed_addr constant [39 x i8] c"context-foreground-saturation-decrease\00", align 1
@.str.207 = private unnamed_addr constant [31 x i8] c"Foreground Saturation Decrease\00", align 1
@.str.208 = private unnamed_addr constant [39 x i8] c"context-foreground-saturation-increase\00", align 1
@.str.209 = private unnamed_addr constant [31 x i8] c"Foreground Saturation Increase\00", align 1
@.str.210 = private unnamed_addr constant [44 x i8] c"context-foreground-saturation-decrease-skip\00", align 1
@.str.211 = private unnamed_addr constant [35 x i8] c"Foreground Saturation Decrease 10%\00", align 1
@.str.212 = private unnamed_addr constant [44 x i8] c"context-foreground-saturation-increase-skip\00", align 1
@.str.213 = private unnamed_addr constant [35 x i8] c"Foreground Saturation Increase 10%\00", align 1
@.str.214 = private unnamed_addr constant [29 x i8] c"context-foreground-value-set\00", align 1
@.str.215 = private unnamed_addr constant [21 x i8] c"Foreground Value Set\00", align 1
@.str.216 = private unnamed_addr constant [33 x i8] c"context-foreground-value-minimum\00", align 1
@.str.217 = private unnamed_addr constant [25 x i8] c"Foreground Value Minimum\00", align 1
@.str.218 = private unnamed_addr constant [33 x i8] c"context-foreground-value-maximum\00", align 1
@.str.219 = private unnamed_addr constant [25 x i8] c"Foreground Value Maximum\00", align 1
@.str.220 = private unnamed_addr constant [34 x i8] c"context-foreground-value-decrease\00", align 1
@.str.221 = private unnamed_addr constant [26 x i8] c"Foreground Value Decrease\00", align 1
@.str.222 = private unnamed_addr constant [34 x i8] c"context-foreground-value-increase\00", align 1
@.str.223 = private unnamed_addr constant [26 x i8] c"Foreground Value Increase\00", align 1
@.str.224 = private unnamed_addr constant [39 x i8] c"context-foreground-value-decrease-skip\00", align 1
@.str.225 = private unnamed_addr constant [30 x i8] c"Foreground Value Decrease 10%\00", align 1
@.str.226 = private unnamed_addr constant [39 x i8] c"context-foreground-value-increase-skip\00", align 1
@.str.227 = private unnamed_addr constant [30 x i8] c"Foreground Value Increase 10%\00", align 1
@.str.228 = private unnamed_addr constant [27 x i8] c"context-background-red-set\00", align 1
@.str.229 = private unnamed_addr constant [19 x i8] c"Background Red Set\00", align 1
@.str.230 = private unnamed_addr constant [31 x i8] c"context-background-red-minimum\00", align 1
@.str.231 = private unnamed_addr constant [23 x i8] c"Background Red Minimum\00", align 1
@.str.232 = private unnamed_addr constant [31 x i8] c"context-background-red-maximum\00", align 1
@.str.233 = private unnamed_addr constant [23 x i8] c"Background Red Maximum\00", align 1
@.str.234 = private unnamed_addr constant [32 x i8] c"context-background-red-decrease\00", align 1
@.str.235 = private unnamed_addr constant [24 x i8] c"Background Red Decrease\00", align 1
@.str.236 = private unnamed_addr constant [32 x i8] c"context-background-red-increase\00", align 1
@.str.237 = private unnamed_addr constant [24 x i8] c"Background Red Increase\00", align 1
@.str.238 = private unnamed_addr constant [37 x i8] c"context-background-red-decrease-skip\00", align 1
@.str.239 = private unnamed_addr constant [28 x i8] c"Background Red Decrease 10%\00", align 1
@.str.240 = private unnamed_addr constant [37 x i8] c"context-background-red-increase-skip\00", align 1
@.str.241 = private unnamed_addr constant [28 x i8] c"Background Red Increase 10%\00", align 1
@.str.242 = private unnamed_addr constant [29 x i8] c"context-background-green-set\00", align 1
@.str.243 = private unnamed_addr constant [21 x i8] c"Background Green Set\00", align 1
@.str.244 = private unnamed_addr constant [33 x i8] c"context-background-green-minimum\00", align 1
@.str.245 = private unnamed_addr constant [25 x i8] c"Background Green Minimum\00", align 1
@.str.246 = private unnamed_addr constant [33 x i8] c"context-background-green-maximum\00", align 1
@.str.247 = private unnamed_addr constant [25 x i8] c"Background Green Maximum\00", align 1
@.str.248 = private unnamed_addr constant [34 x i8] c"context-background-green-decrease\00", align 1
@.str.249 = private unnamed_addr constant [26 x i8] c"Background Green Decrease\00", align 1
@.str.250 = private unnamed_addr constant [34 x i8] c"context-background-green-increase\00", align 1
@.str.251 = private unnamed_addr constant [26 x i8] c"Background Green Increase\00", align 1
@.str.252 = private unnamed_addr constant [39 x i8] c"context-background-green-decrease-skip\00", align 1
@.str.253 = private unnamed_addr constant [30 x i8] c"Background Green Decrease 10%\00", align 1
@.str.254 = private unnamed_addr constant [39 x i8] c"context-background-green-increase-skip\00", align 1
@.str.255 = private unnamed_addr constant [30 x i8] c"Background Green Increase 10%\00", align 1
@.str.256 = private unnamed_addr constant [28 x i8] c"context-background-blue-set\00", align 1
@.str.257 = private unnamed_addr constant [20 x i8] c"Background Blue Set\00", align 1
@.str.258 = private unnamed_addr constant [32 x i8] c"context-background-blue-minimum\00", align 1
@.str.259 = private unnamed_addr constant [24 x i8] c"Background Blue Minimum\00", align 1
@.str.260 = private unnamed_addr constant [32 x i8] c"context-background-blue-maximum\00", align 1
@.str.261 = private unnamed_addr constant [24 x i8] c"Background Blue Maximum\00", align 1
@.str.262 = private unnamed_addr constant [33 x i8] c"context-background-blue-decrease\00", align 1
@.str.263 = private unnamed_addr constant [25 x i8] c"Background Blue Decrease\00", align 1
@.str.264 = private unnamed_addr constant [33 x i8] c"context-background-blue-increase\00", align 1
@.str.265 = private unnamed_addr constant [25 x i8] c"Background Blue Increase\00", align 1
@.str.266 = private unnamed_addr constant [38 x i8] c"context-background-blue-decrease-skip\00", align 1
@.str.267 = private unnamed_addr constant [29 x i8] c"Background Blue Decrease 10%\00", align 1
@.str.268 = private unnamed_addr constant [38 x i8] c"context-background-blue-increase-skip\00", align 1
@.str.269 = private unnamed_addr constant [29 x i8] c"Background Blue Increase 10%\00", align 1
@.str.270 = private unnamed_addr constant [27 x i8] c"context-background-hue-set\00", align 1
@.str.271 = private unnamed_addr constant [19 x i8] c"Background Hue Set\00", align 1
@.str.272 = private unnamed_addr constant [31 x i8] c"context-background-hue-minimum\00", align 1
@.str.273 = private unnamed_addr constant [23 x i8] c"Background Hue Minimum\00", align 1
@.str.274 = private unnamed_addr constant [31 x i8] c"context-background-hue-maximum\00", align 1
@.str.275 = private unnamed_addr constant [23 x i8] c"Background Hue Maximum\00", align 1
@.str.276 = private unnamed_addr constant [32 x i8] c"context-background-hue-decrease\00", align 1
@.str.277 = private unnamed_addr constant [24 x i8] c"Background Hue Decrease\00", align 1
@.str.278 = private unnamed_addr constant [32 x i8] c"context-background-hue-increase\00", align 1
@.str.279 = private unnamed_addr constant [24 x i8] c"Background Hue Increase\00", align 1
@.str.280 = private unnamed_addr constant [37 x i8] c"context-background-hue-decrease-skip\00", align 1
@.str.281 = private unnamed_addr constant [28 x i8] c"Background Hue Decrease 10%\00", align 1
@.str.282 = private unnamed_addr constant [37 x i8] c"context-background-hue-increase-skip\00", align 1
@.str.283 = private unnamed_addr constant [28 x i8] c"Background Hue Increase 10%\00", align 1
@.str.284 = private unnamed_addr constant [34 x i8] c"context-background-saturation-set\00", align 1
@.str.285 = private unnamed_addr constant [26 x i8] c"Background Saturation Set\00", align 1
@.str.286 = private unnamed_addr constant [38 x i8] c"context-background-saturation-minimum\00", align 1
@.str.287 = private unnamed_addr constant [30 x i8] c"Background Saturation Minimum\00", align 1
@.str.288 = private unnamed_addr constant [38 x i8] c"context-background-saturation-maximum\00", align 1
@.str.289 = private unnamed_addr constant [30 x i8] c"Background Saturation Maximum\00", align 1
@.str.290 = private unnamed_addr constant [39 x i8] c"context-background-saturation-decrease\00", align 1
@.str.291 = private unnamed_addr constant [31 x i8] c"Background Saturation Decrease\00", align 1
@.str.292 = private unnamed_addr constant [39 x i8] c"context-background-saturation-increase\00", align 1
@.str.293 = private unnamed_addr constant [31 x i8] c"Background Saturation Increase\00", align 1
@.str.294 = private unnamed_addr constant [44 x i8] c"context-background-saturation-decrease-skip\00", align 1
@.str.295 = private unnamed_addr constant [35 x i8] c"Background Saturation Decrease 10%\00", align 1
@.str.296 = private unnamed_addr constant [44 x i8] c"context-background-saturation-increase-skip\00", align 1
@.str.297 = private unnamed_addr constant [35 x i8] c"Background Saturation Increase 10%\00", align 1
@.str.298 = private unnamed_addr constant [29 x i8] c"context-background-value-set\00", align 1
@.str.299 = private unnamed_addr constant [21 x i8] c"Background Value Set\00", align 1
@.str.300 = private unnamed_addr constant [33 x i8] c"context-background-value-minimum\00", align 1
@.str.301 = private unnamed_addr constant [25 x i8] c"Background Value Minimum\00", align 1
@.str.302 = private unnamed_addr constant [33 x i8] c"context-background-value-maximum\00", align 1
@.str.303 = private unnamed_addr constant [25 x i8] c"Background Value Maximum\00", align 1
@.str.304 = private unnamed_addr constant [34 x i8] c"context-background-value-decrease\00", align 1
@.str.305 = private unnamed_addr constant [26 x i8] c"Background Value Decrease\00", align 1
@.str.306 = private unnamed_addr constant [34 x i8] c"context-background-value-increase\00", align 1
@.str.307 = private unnamed_addr constant [26 x i8] c"Background Value Increase\00", align 1
@.str.308 = private unnamed_addr constant [39 x i8] c"context-background-value-decrease-skip\00", align 1
@.str.309 = private unnamed_addr constant [30 x i8] c"Background Value Decrease 10%\00", align 1
@.str.310 = private unnamed_addr constant [39 x i8] c"context-background-value-increase-skip\00", align 1
@.str.311 = private unnamed_addr constant [30 x i8] c"Background Value Increase 10%\00", align 1
@.str.312 = private unnamed_addr constant [20 x i8] c"context-opacity-set\00", align 1
@.str.313 = private unnamed_addr constant [17 x i8] c"Set Transparency\00", align 1
@.str.314 = private unnamed_addr constant [28 x i8] c"context-opacity-transparent\00", align 1
@.str.315 = private unnamed_addr constant [23 x i8] c"Completely Transparent\00", align 1
@.str.316 = private unnamed_addr constant [23 x i8] c"context-opacity-opaque\00", align 1
@.str.317 = private unnamed_addr constant [18 x i8] c"Completely Opaque\00", align 1
@.str.318 = private unnamed_addr constant [25 x i8] c"context-opacity-decrease\00", align 1
@.str.319 = private unnamed_addr constant [17 x i8] c"More Transparent\00", align 1
@.str.320 = private unnamed_addr constant [25 x i8] c"context-opacity-increase\00", align 1
@.str.321 = private unnamed_addr constant [12 x i8] c"More Opaque\00", align 1
@.str.322 = private unnamed_addr constant [30 x i8] c"context-opacity-decrease-skip\00", align 1
@.str.323 = private unnamed_addr constant [21 x i8] c"10% More Transparent\00", align 1
@.str.324 = private unnamed_addr constant [30 x i8] c"context-opacity-increase-skip\00", align 1
@.str.325 = private unnamed_addr constant [16 x i8] c"10% More Opaque\00", align 1
@.str.326 = private unnamed_addr constant [25 x i8] c"context-paint-mode-first\00", align 1
@.str.327 = private unnamed_addr constant [17 x i8] c"First Paint Mode\00", align 1
@.str.328 = private unnamed_addr constant [24 x i8] c"context-paint-mode-last\00", align 1
@.str.329 = private unnamed_addr constant [16 x i8] c"Last Paint Mode\00", align 1
@.str.330 = private unnamed_addr constant [28 x i8] c"context-paint-mode-previous\00", align 1
@.str.331 = private unnamed_addr constant [20 x i8] c"Previous Paint Mode\00", align 1
@.str.332 = private unnamed_addr constant [24 x i8] c"context-paint-mode-next\00", align 1
@.str.333 = private unnamed_addr constant [16 x i8] c"Next Paint Mode\00", align 1
@.str.334 = private unnamed_addr constant [24 x i8] c"context-tool-select-set\00", align 1
@.str.335 = private unnamed_addr constant [21 x i8] c"Select Tool by Index\00", align 1
@.str.336 = private unnamed_addr constant [26 x i8] c"context-tool-select-first\00", align 1
@.str.337 = private unnamed_addr constant [11 x i8] c"First Tool\00", align 1
@.str.338 = private unnamed_addr constant [25 x i8] c"context-tool-select-last\00", align 1
@.str.339 = private unnamed_addr constant [10 x i8] c"Last Tool\00", align 1
@.str.340 = private unnamed_addr constant [29 x i8] c"context-tool-select-previous\00", align 1
@.str.341 = private unnamed_addr constant [14 x i8] c"Previous Tool\00", align 1
@.str.342 = private unnamed_addr constant [25 x i8] c"context-tool-select-next\00", align 1
@.str.343 = private unnamed_addr constant [10 x i8] c"Next Tool\00", align 1
@.str.344 = private unnamed_addr constant [25 x i8] c"context-brush-select-set\00", align 1
@.str.345 = private unnamed_addr constant [22 x i8] c"Select Brush by Index\00", align 1
@.str.346 = private unnamed_addr constant [27 x i8] c"context-brush-select-first\00", align 1
@.str.347 = private unnamed_addr constant [12 x i8] c"First Brush\00", align 1
@.str.348 = private unnamed_addr constant [26 x i8] c"context-brush-select-last\00", align 1
@.str.349 = private unnamed_addr constant [11 x i8] c"Last Brush\00", align 1
@.str.350 = private unnamed_addr constant [30 x i8] c"context-brush-select-previous\00", align 1
@.str.351 = private unnamed_addr constant [15 x i8] c"Previous Brush\00", align 1
@.str.352 = private unnamed_addr constant [26 x i8] c"context-brush-select-next\00", align 1
@.str.353 = private unnamed_addr constant [11 x i8] c"Next Brush\00", align 1
@.str.354 = private unnamed_addr constant [27 x i8] c"context-pattern-select-set\00", align 1
@.str.355 = private unnamed_addr constant [24 x i8] c"Select Pattern by Index\00", align 1
@.str.356 = private unnamed_addr constant [29 x i8] c"context-pattern-select-first\00", align 1
@.str.357 = private unnamed_addr constant [14 x i8] c"First Pattern\00", align 1
@.str.358 = private unnamed_addr constant [28 x i8] c"context-pattern-select-last\00", align 1
@.str.359 = private unnamed_addr constant [13 x i8] c"Last Pattern\00", align 1
@.str.360 = private unnamed_addr constant [32 x i8] c"context-pattern-select-previous\00", align 1
@.str.361 = private unnamed_addr constant [17 x i8] c"Previous Pattern\00", align 1
@.str.362 = private unnamed_addr constant [28 x i8] c"context-pattern-select-next\00", align 1
@.str.363 = private unnamed_addr constant [13 x i8] c"Next Pattern\00", align 1
@.str.364 = private unnamed_addr constant [27 x i8] c"context-palette-select-set\00", align 1
@.str.365 = private unnamed_addr constant [24 x i8] c"Select Palette by Index\00", align 1
@.str.366 = private unnamed_addr constant [29 x i8] c"context-palette-select-first\00", align 1
@.str.367 = private unnamed_addr constant [14 x i8] c"First Palette\00", align 1
@.str.368 = private unnamed_addr constant [28 x i8] c"context-palette-select-last\00", align 1
@.str.369 = private unnamed_addr constant [13 x i8] c"Last Palette\00", align 1
@.str.370 = private unnamed_addr constant [32 x i8] c"context-palette-select-previous\00", align 1
@.str.371 = private unnamed_addr constant [17 x i8] c"Previous Palette\00", align 1
@.str.372 = private unnamed_addr constant [28 x i8] c"context-palette-select-next\00", align 1
@.str.373 = private unnamed_addr constant [13 x i8] c"Next Palette\00", align 1
@.str.374 = private unnamed_addr constant [28 x i8] c"context-gradient-select-set\00", align 1
@.str.375 = private unnamed_addr constant [25 x i8] c"Select Gradient by Index\00", align 1
@.str.376 = private unnamed_addr constant [30 x i8] c"context-gradient-select-first\00", align 1
@.str.377 = private unnamed_addr constant [15 x i8] c"First Gradient\00", align 1
@.str.378 = private unnamed_addr constant [29 x i8] c"context-gradient-select-last\00", align 1
@.str.379 = private unnamed_addr constant [14 x i8] c"Last Gradient\00", align 1
@.str.380 = private unnamed_addr constant [33 x i8] c"context-gradient-select-previous\00", align 1
@.str.381 = private unnamed_addr constant [18 x i8] c"Previous Gradient\00", align 1
@.str.382 = private unnamed_addr constant [29 x i8] c"context-gradient-select-next\00", align 1
@.str.383 = private unnamed_addr constant [14 x i8] c"Next Gradient\00", align 1
@.str.384 = private unnamed_addr constant [24 x i8] c"context-font-select-set\00", align 1
@.str.385 = private unnamed_addr constant [21 x i8] c"Select Font by Index\00", align 1
@.str.386 = private unnamed_addr constant [26 x i8] c"context-font-select-first\00", align 1
@.str.387 = private unnamed_addr constant [11 x i8] c"First Font\00", align 1
@.str.388 = private unnamed_addr constant [25 x i8] c"context-font-select-last\00", align 1
@.str.389 = private unnamed_addr constant [10 x i8] c"Last Font\00", align 1
@.str.390 = private unnamed_addr constant [29 x i8] c"context-font-select-previous\00", align 1
@.str.391 = private unnamed_addr constant [14 x i8] c"Previous Font\00", align 1
@.str.392 = private unnamed_addr constant [25 x i8] c"context-font-select-next\00", align 1
@.str.393 = private unnamed_addr constant [10 x i8] c"Next Font\00", align 1
@.str.394 = private unnamed_addr constant [26 x i8] c"context-brush-spacing-set\00", align 1
@.str.395 = private unnamed_addr constant [18 x i8] c"Set Brush Spacing\00", align 1
@.str.396 = private unnamed_addr constant [30 x i8] c"context-brush-spacing-minimum\00", align 1
@.str.397 = private unnamed_addr constant [16 x i8] c"Minimum Spacing\00", align 1
@.str.398 = private unnamed_addr constant [30 x i8] c"context-brush-spacing-maximum\00", align 1
@.str.399 = private unnamed_addr constant [16 x i8] c"Maximum Spacing\00", align 1
@.str.400 = private unnamed_addr constant [31 x i8] c"context-brush-spacing-decrease\00", align 1
@.str.401 = private unnamed_addr constant [17 x i8] c"Decrease Spacing\00", align 1
@.str.402 = private unnamed_addr constant [31 x i8] c"context-brush-spacing-increase\00", align 1
@.str.403 = private unnamed_addr constant [17 x i8] c"Increase Spacing\00", align 1
@.str.404 = private unnamed_addr constant [36 x i8] c"context-brush-spacing-decrease-skip\00", align 1
@.str.405 = private unnamed_addr constant [22 x i8] c"Decrease Spacing More\00", align 1
@.str.406 = private unnamed_addr constant [36 x i8] c"context-brush-spacing-increase-skip\00", align 1
@.str.407 = private unnamed_addr constant [22 x i8] c"Increase Spacing More\00", align 1
@.str.408 = private unnamed_addr constant [27 x i8] c"context-brush-shape-circle\00", align 1
@.str.409 = private unnamed_addr constant [15 x i8] c"Circular Brush\00", align 1
@.str.410 = private unnamed_addr constant [27 x i8] c"context-brush-shape-square\00", align 1
@.str.411 = private unnamed_addr constant [13 x i8] c"Square Brush\00", align 1
@.str.412 = private unnamed_addr constant [28 x i8] c"context-brush-shape-diamond\00", align 1
@.str.413 = private unnamed_addr constant [14 x i8] c"Diamond Brush\00", align 1
@.str.414 = private unnamed_addr constant [25 x i8] c"context-brush-radius-set\00", align 1
@.str.415 = private unnamed_addr constant [17 x i8] c"Set Brush Radius\00", align 1
@.str.416 = private unnamed_addr constant [29 x i8] c"context-brush-radius-minimum\00", align 1
@.str.417 = private unnamed_addr constant [15 x i8] c"Minimum Radius\00", align 1
@.str.418 = private unnamed_addr constant [29 x i8] c"context-brush-radius-maximum\00", align 1
@.str.419 = private unnamed_addr constant [15 x i8] c"Maximum Radius\00", align 1
@.str.420 = private unnamed_addr constant [35 x i8] c"context-brush-radius-decrease-less\00", align 1
@.str.421 = private unnamed_addr constant [21 x i8] c"Decrease Radius Less\00", align 1
@.str.422 = private unnamed_addr constant [35 x i8] c"context-brush-radius-increase-less\00", align 1
@.str.423 = private unnamed_addr constant [21 x i8] c"Increase Radius Less\00", align 1
@.str.424 = private unnamed_addr constant [30 x i8] c"context-brush-radius-decrease\00", align 1
@.str.425 = private unnamed_addr constant [16 x i8] c"Decrease Radius\00", align 1
@.str.426 = private unnamed_addr constant [30 x i8] c"context-brush-radius-increase\00", align 1
@.str.427 = private unnamed_addr constant [16 x i8] c"Increase Radius\00", align 1
@.str.428 = private unnamed_addr constant [35 x i8] c"context-brush-radius-decrease-skip\00", align 1
@.str.429 = private unnamed_addr constant [21 x i8] c"Decrease Radius More\00", align 1
@.str.430 = private unnamed_addr constant [35 x i8] c"context-brush-radius-increase-skip\00", align 1
@.str.431 = private unnamed_addr constant [21 x i8] c"Increase Radius More\00", align 1
@.str.432 = private unnamed_addr constant [38 x i8] c"context-brush-radius-decrease-percent\00", align 1
@.str.433 = private unnamed_addr constant [25 x i8] c"Decrease Radius Relative\00", align 1
@.str.434 = private unnamed_addr constant [38 x i8] c"context-brush-radius-increase-percent\00", align 1
@.str.435 = private unnamed_addr constant [25 x i8] c"Increase Radius Relative\00", align 1
@.str.436 = private unnamed_addr constant [25 x i8] c"context-brush-spikes-set\00", align 1
@.str.437 = private unnamed_addr constant [17 x i8] c"Set Brush Spikes\00", align 1
@.str.438 = private unnamed_addr constant [29 x i8] c"context-brush-spikes-minimum\00", align 1
@.str.439 = private unnamed_addr constant [15 x i8] c"Minimum Spikes\00", align 1
@.str.440 = private unnamed_addr constant [29 x i8] c"context-brush-spikes-maximum\00", align 1
@.str.441 = private unnamed_addr constant [15 x i8] c"Maximum Spikes\00", align 1
@.str.442 = private unnamed_addr constant [30 x i8] c"context-brush-spikes-decrease\00", align 1
@.str.443 = private unnamed_addr constant [16 x i8] c"Decrease Spikes\00", align 1
@.str.444 = private unnamed_addr constant [30 x i8] c"context-brush-spikes-increase\00", align 1
@.str.445 = private unnamed_addr constant [16 x i8] c"Increase Spikes\00", align 1
@.str.446 = private unnamed_addr constant [35 x i8] c"context-brush-spikes-decrease-skip\00", align 1
@.str.447 = private unnamed_addr constant [21 x i8] c"Decrease Spikes More\00", align 1
@.str.448 = private unnamed_addr constant [35 x i8] c"context-brush-spikes-increase-skip\00", align 1
@.str.449 = private unnamed_addr constant [21 x i8] c"Increase Spikes More\00", align 1
@.str.450 = private unnamed_addr constant [27 x i8] c"context-brush-hardness-set\00", align 1
@.str.451 = private unnamed_addr constant [19 x i8] c"Set Brush Hardness\00", align 1
@.str.452 = private unnamed_addr constant [31 x i8] c"context-brush-hardness-minimum\00", align 1
@.str.453 = private unnamed_addr constant [17 x i8] c"Minimum Hardness\00", align 1
@.str.454 = private unnamed_addr constant [31 x i8] c"context-brush-hardness-maximum\00", align 1
@.str.455 = private unnamed_addr constant [17 x i8] c"Maximum Hardness\00", align 1
@.str.456 = private unnamed_addr constant [32 x i8] c"context-brush-hardness-decrease\00", align 1
@.str.457 = private unnamed_addr constant [18 x i8] c"Decrease Hardness\00", align 1
@.str.458 = private unnamed_addr constant [32 x i8] c"context-brush-hardness-increase\00", align 1
@.str.459 = private unnamed_addr constant [18 x i8] c"Increase Hardness\00", align 1
@.str.460 = private unnamed_addr constant [37 x i8] c"context-brush-hardness-decrease-skip\00", align 1
@.str.461 = private unnamed_addr constant [23 x i8] c"Decrease Hardness More\00", align 1
@.str.462 = private unnamed_addr constant [37 x i8] c"context-brush-hardness-increase-skip\00", align 1
@.str.463 = private unnamed_addr constant [23 x i8] c"Increase Hardness More\00", align 1
@.str.464 = private unnamed_addr constant [25 x i8] c"context-brush-aspect-set\00", align 1
@.str.465 = private unnamed_addr constant [17 x i8] c"Set Brush Aspect\00", align 1
@.str.466 = private unnamed_addr constant [29 x i8] c"context-brush-aspect-minimum\00", align 1
@.str.467 = private unnamed_addr constant [15 x i8] c"Minimum Aspect\00", align 1
@.str.468 = private unnamed_addr constant [29 x i8] c"context-brush-aspect-maximum\00", align 1
@.str.469 = private unnamed_addr constant [15 x i8] c"Maximum Aspect\00", align 1
@.str.470 = private unnamed_addr constant [30 x i8] c"context-brush-aspect-decrease\00", align 1
@.str.471 = private unnamed_addr constant [16 x i8] c"Decrease Aspect\00", align 1
@.str.472 = private unnamed_addr constant [30 x i8] c"context-brush-aspect-increase\00", align 1
@.str.473 = private unnamed_addr constant [16 x i8] c"Increase Aspect\00", align 1
@.str.474 = private unnamed_addr constant [35 x i8] c"context-brush-aspect-decrease-skip\00", align 1
@.str.475 = private unnamed_addr constant [21 x i8] c"Decrease Aspect More\00", align 1
@.str.476 = private unnamed_addr constant [35 x i8] c"context-brush-aspect-increase-skip\00", align 1
@.str.477 = private unnamed_addr constant [21 x i8] c"Increase Aspect More\00", align 1
@.str.478 = private unnamed_addr constant [24 x i8] c"context-brush-angle-set\00", align 1
@.str.479 = private unnamed_addr constant [16 x i8] c"Set Brush Angle\00", align 1
@.str.480 = private unnamed_addr constant [28 x i8] c"context-brush-angle-minimum\00", align 1
@.str.481 = private unnamed_addr constant [11 x i8] c"Horizontal\00", align 1
@.str.482 = private unnamed_addr constant [28 x i8] c"context-brush-angle-maximum\00", align 1
@.str.483 = private unnamed_addr constant [9 x i8] c"Vertical\00", align 1
@.str.484 = private unnamed_addr constant [29 x i8] c"context-brush-angle-decrease\00", align 1
@.str.485 = private unnamed_addr constant [13 x i8] c"Rotate Right\00", align 1
@.str.486 = private unnamed_addr constant [29 x i8] c"context-brush-angle-increase\00", align 1
@.str.487 = private unnamed_addr constant [12 x i8] c"Rotate Left\00", align 1
@.str.488 = private unnamed_addr constant [34 x i8] c"context-brush-angle-decrease-skip\00", align 1
@.str.489 = private unnamed_addr constant [18 x i8] c"Rotate Right 15\C2\B0\00", align 1
@.str.490 = private unnamed_addr constant [34 x i8] c"context-brush-angle-increase-skip\00", align 1
@.str.491 = private unnamed_addr constant [17 x i8] c"Rotate Left 15\C2\B0\00", align 1

; Function Attrs: nounwind uwtable
define void @context_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([18 x %struct._GimpActionEntry], [18 x %struct._GimpActionEntry]* @context_actions, i32 0, i32 0), i32 18)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %1, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_palette_foreground_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_palette_foreground_cmd_callback to void ()*))
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %2, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_palette_background_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_palette_background_cmd_callback to void ()*))
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %3, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_colormap_foreground_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_colormap_foreground_cmd_callback to void ()*))
  %4 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %4, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_colormap_background_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_colormap_background_cmd_callback to void ()*))
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %5, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_swatch_foreground_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_swatch_foreground_cmd_callback to void ()*))
  %6 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %6, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_swatch_background_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_swatch_background_cmd_callback to void ()*))
  %7 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %7, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_foreground_red_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_foreground_red_cmd_callback to void ()*))
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %8, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_foreground_green_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_foreground_green_cmd_callback to void ()*))
  %9 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %9, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_foreground_blue_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_foreground_blue_cmd_callback to void ()*))
  %10 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %10, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_foreground_hue_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_foreground_hue_cmd_callback to void ()*))
  %11 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %11, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_foreground_saturation_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_foreground_saturation_cmd_callback to void ()*))
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %12, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_foreground_value_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_foreground_value_cmd_callback to void ()*))
  %13 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %13, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_background_red_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_background_red_cmd_callback to void ()*))
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %14, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_background_green_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_background_green_cmd_callback to void ()*))
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %15, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_background_blue_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_background_blue_cmd_callback to void ()*))
  %16 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %16, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_background_hue_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_background_hue_cmd_callback to void ()*))
  %17 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %17, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_background_saturation_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_background_saturation_cmd_callback to void ()*))
  %18 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %18, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_background_value_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_background_value_cmd_callback to void ()*))
  %19 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %19, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_opacity_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_opacity_cmd_callback to void ()*))
  %20 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %20, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([4 x %struct._GimpEnumActionEntry], [4 x %struct._GimpEnumActionEntry]* @context_paint_mode_actions, i32 0, i32 0), i32 4, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_paint_mode_cmd_callback to void ()*))
  %21 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %21, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([5 x %struct._GimpEnumActionEntry], [5 x %struct._GimpEnumActionEntry]* @context_tool_select_actions, i32 0, i32 0), i32 5, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_tool_select_cmd_callback to void ()*))
  %22 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %22, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([5 x %struct._GimpEnumActionEntry], [5 x %struct._GimpEnumActionEntry]* @context_brush_select_actions, i32 0, i32 0), i32 5, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_brush_select_cmd_callback to void ()*))
  %23 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %23, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([5 x %struct._GimpEnumActionEntry], [5 x %struct._GimpEnumActionEntry]* @context_pattern_select_actions, i32 0, i32 0), i32 5, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_pattern_select_cmd_callback to void ()*))
  %24 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %24, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([5 x %struct._GimpEnumActionEntry], [5 x %struct._GimpEnumActionEntry]* @context_palette_select_actions, i32 0, i32 0), i32 5, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_palette_select_cmd_callback to void ()*))
  %25 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %25, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([5 x %struct._GimpEnumActionEntry], [5 x %struct._GimpEnumActionEntry]* @context_gradient_select_actions, i32 0, i32 0), i32 5, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_gradient_select_cmd_callback to void ()*))
  %26 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %26, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([5 x %struct._GimpEnumActionEntry], [5 x %struct._GimpEnumActionEntry]* @context_font_select_actions, i32 0, i32 0), i32 5, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_font_select_cmd_callback to void ()*))
  %27 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %27, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_brush_spacing_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_brush_spacing_cmd_callback to void ()*))
  %28 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %28, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([3 x %struct._GimpEnumActionEntry], [3 x %struct._GimpEnumActionEntry]* @context_brush_shape_actions, i32 0, i32 0), i32 3, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_brush_shape_cmd_callback to void ()*))
  %29 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %29, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([11 x %struct._GimpEnumActionEntry], [11 x %struct._GimpEnumActionEntry]* @context_brush_radius_actions, i32 0, i32 0), i32 11, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_brush_radius_cmd_callback to void ()*))
  %30 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %30, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_brush_spikes_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_brush_spikes_cmd_callback to void ()*))
  %31 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %31, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_brush_hardness_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_brush_hardness_cmd_callback to void ()*))
  %32 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %32, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_brush_aspect_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_brush_aspect_cmd_callback to void ()*))
  %33 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %33, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @context_brush_angle_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @context_brush_angle_cmd_callback to void ()*))
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @context_palette_foreground_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_palette_background_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_colormap_foreground_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_colormap_background_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_swatch_foreground_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_swatch_background_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_foreground_red_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_foreground_green_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_foreground_blue_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_foreground_hue_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_foreground_saturation_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_foreground_value_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_background_red_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_background_green_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_background_blue_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_background_hue_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_background_saturation_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_background_value_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_opacity_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_paint_mode_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_tool_select_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_brush_select_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_pattern_select_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_palette_select_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_gradient_select_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_font_select_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_brush_spacing_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_brush_shape_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_brush_radius_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_brush_spikes_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_brush_hardness_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_brush_aspect_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @context_brush_angle_cmd_callback(%struct._GtkAction*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @context_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %generated = alloca i32, align 4
  %radius = alloca double, align 8
  %spikes = alloca i32, align 4
  %hardness = alloca double, align 8
  %aspect = alloca double, align 8
  %angle = alloca double, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %gen = alloca %struct._GimpBrushGenerated*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  store i32 0, i32* %generated, align 4
  store double 0.000000e+00, double* %radius, align 8
  store i32 0, i32* %spikes, align 4
  store double 0.000000e+00, double* %hardness, align 8
  store double 0.000000e+00, double* %aspect, align 8
  store double 0.000000e+00, double* %angle, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %2)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %4 = bitcast %struct._GimpBrush* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_brush_generated_get_type() #4
  store i64 %call2, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool3 = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %if.then
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #5
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.4
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %if.end.10
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %17 = bitcast %struct._GimpBrush* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_brush_generated_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %18, %struct._GimpBrushGenerated** %gen, align 8
  store i32 1, i32* %generated, align 4
  %19 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %gen, align 8
  %call16 = call float @gimp_brush_generated_get_radius(%struct._GimpBrushGenerated* %19)
  %conv = fpext float %call16 to double
  store double %conv, double* %radius, align 8
  %20 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %gen, align 8
  %call17 = call i32 @gimp_brush_generated_get_spikes(%struct._GimpBrushGenerated* %20)
  store i32 %call17, i32* %spikes, align 4
  %21 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %gen, align 8
  %call18 = call float @gimp_brush_generated_get_hardness(%struct._GimpBrushGenerated* %21)
  %conv19 = fpext float %call18 to double
  store double %conv19, double* %hardness, align 8
  %22 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %gen, align 8
  %call20 = call float @gimp_brush_generated_get_aspect_ratio(%struct._GimpBrushGenerated* %22)
  %conv21 = fpext float %call20 to double
  store double %conv21, double* %aspect, align 8
  %23 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %gen, align 8
  %call22 = call float @gimp_brush_generated_get_angle(%struct._GimpBrushGenerated* %23)
  %conv23 = fpext float %call22 to double
  store double %conv23, double* %angle, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.12, %if.end.10
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %entry
  ret void
}

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_generated_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare float @gimp_brush_generated_get_radius(%struct._GimpBrushGenerated*) #1

declare i32 @gimp_brush_generated_get_spikes(%struct._GimpBrushGenerated*) #1

declare float @gimp_brush_generated_get_hardness(%struct._GimpBrushGenerated*) #1

declare float @gimp_brush_generated_get_aspect_ratio(%struct._GimpBrushGenerated*) #1

declare float @gimp_brush_generated_get_angle(%struct._GimpBrushGenerated*) #1

declare void @context_colors_default_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @context_colors_swap_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
