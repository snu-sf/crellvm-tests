; ModuleID = './app/actions/edit-actions.bc'
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
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpUndoStack = type { %struct._GimpUndo, %struct._GimpContainer* }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct._GimpDrawableUndo = type { %struct._GimpItemUndo, %struct._TileManager*, i32, i32, i32, i32, i32, %struct._TileManager*, i32, double }
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }
%struct._TileManager = type opaque

@.str = private unnamed_addr constant [12 x i8] c"edit-action\00", align 1
@edit_actions = internal constant [23 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_undo_cmd_callback to void ()*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_redo_cmd_callback to void ()*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.52, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_strong_undo_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.56, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_strong_redo_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.61, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_undo_clear_cmd_callback to void ()*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.63, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_fade_cmd_callback to void ()*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.68, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_cut_cmd_callback to void ()*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.73, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_copy_cmd_callback to void ()*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.77, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_copy_visible_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.82, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_paste_cmd_callback to void ()*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.86, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_paste_into_cmd_callback to void ()*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.92, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_paste_as_new_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.92, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_paste_as_new_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.96, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_paste_as_new_layer_cmd_callback to void ()*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.97, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.99, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_named_cut_cmd_callback to void ()*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.102, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_named_copy_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.105, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_named_copy_visible_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.107, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_named_paste_cmd_callback to void ()*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.108, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.111, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @edit_clear_cmd_callback to void ()*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.112, i32 0, i32 0) }], align 16
@edit_fill_actions = internal constant [3 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.116, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.117, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.120, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.121, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.124, i32 0, i32 0), i32 4, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.125, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [24 x i8] c"edit-paste-as-new-short\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"<Actions>/edit/edit-paste-as-new\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"edit-fill-pattern\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"foreground-changed\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"background-changed\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"pattern-changed\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"edit-fill-fg\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"edit-fill-bg\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"_Undo %s\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"_Redo %s\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"_Fade %s...\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"edit-undo\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"_Undo\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"edit-redo\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"_Redo\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"edit-fade\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"_Fade...\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"edit-strong-undo\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"edit-strong-redo\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"edit-undo-clear\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"edit-cut\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"edit-copy\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"edit-copy-visible\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"edit-paste\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"edit-paste-as-new-layer\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"edit-paste-into\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"edit-named-cut\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"edit-named-copy\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"edit-named-copy-visible\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"edit-named-paste\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"edit-clear\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"edit-menu\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"_Edit\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"edit-paste-as-menu\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"Paste _as\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"edit-buffer-menu\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"_Buffer\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"undo-popup\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"gtk-undo\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"Undo History Menu\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"gimp-undo-dialog\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"<primary>Z\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"Undo the last operation\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"gimp-edit-undo\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"gtk-redo\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"<primary>Y\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"Redo the last operation that was undone\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"gimp-edit-redo\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"Strong Undo\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"<primary><shift>Z\00", align 1
@.str.52 = private unnamed_addr constant [53 x i8] c"Undo the last operation, skipping visibility changes\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"gimp-edit-strong-undo\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"Strong Redo\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"<primary><shift>Y\00", align 1
@.str.56 = private unnamed_addr constant [69 x i8] c"Redo the last operation that was undone, skipping visibility changes\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"gimp-edit-strong-redo\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"gtk-clear\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"_Clear Undo History\00", align 1
@.str.60 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"Remove all operations from the undo history\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"gimp-edit-undo-clear\00", align 1
@.str.63 = private unnamed_addr constant [61 x i8] c"Modify paint mode and opacity of the last pixel manipulation\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"gimp-edit-fade\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"gtk-cut\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"Cu_t\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"<primary>X\00", align 1
@.str.68 = private unnamed_addr constant [42 x i8] c"Move the selected pixels to the clipboard\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"gimp-edit-cut\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"gtk-copy\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"_Copy\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"<primary>C\00", align 1
@.str.73 = private unnamed_addr constant [42 x i8] c"Copy the selected pixels to the clipboard\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"gimp-edit-copy\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"Copy _Visible\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"<primary><shift>C\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"Copy what is visible in the selected region\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"gimp-edit-copy-visible\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"gtk-paste\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"_Paste\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"<primary>V\00", align 1
@.str.82 = private unnamed_addr constant [35 x i8] c"Paste the content of the clipboard\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"gimp-edit-paste\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"gimp-paste-into\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"Paste _Into\00", align 1
@.str.86 = private unnamed_addr constant [62 x i8] c"Paste the content of the clipboard into the current selection\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"gimp-edit-paste-into\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"edit-paste-as-new\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"gimp-paste-as-new\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"From _Clipboard\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"<primary><shift>V\00", align 1
@.str.92 = private unnamed_addr constant [53 x i8] c"Create a new image from the content of the clipboard\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"gimp-edit-paste-as-new\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"_New Image\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"New _Layer\00", align 1
@.str.96 = private unnamed_addr constant [53 x i8] c"Create a new layer from the content of the clipboard\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"gimp-edit-paste-as-new-layer\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"Cu_t Named...\00", align 1
@.str.99 = private unnamed_addr constant [43 x i8] c"Move the selected pixels to a named buffer\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"gimp-buffer-cut\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"_Copy Named...\00", align 1
@.str.102 = private unnamed_addr constant [43 x i8] c"Copy the selected pixels to a named buffer\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"gimp-buffer-copy\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"Copy _Visible Named...\00", align 1
@.str.105 = private unnamed_addr constant [62 x i8] c"Copy what is visible in the selected region to a named buffer\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"_Paste Named...\00", align 1
@.str.107 = private unnamed_addr constant [36 x i8] c"Paste the content of a named buffer\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"gimp-buffer-paste\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"Cl_ear\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"Clear the selected pixels\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"gimp-edit-clear\00", align 1
@.str.113 = private unnamed_addr constant [22 x i8] c"gimp-tool-bucket-fill\00", align 1
@.str.114 = private unnamed_addr constant [20 x i8] c"Fill with _FG Color\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"<primary>comma\00", align 1
@.str.116 = private unnamed_addr constant [46 x i8] c"Fill the selection using the foreground color\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"gimp-edit-fill-fg\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"Fill with B_G Color\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"<primary>period\00", align 1
@.str.120 = private unnamed_addr constant [46 x i8] c"Fill the selection using the background color\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"gimp-edit-fill-bg\00", align 1
@.str.122 = private unnamed_addr constant [19 x i8] c"Fill _with Pattern\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"<primary>semicolon\00", align 1
@.str.124 = private unnamed_addr constant [44 x i8] c"Fill the selection using the active pattern\00", align 1
@.str.125 = private unnamed_addr constant [23 x i8] c"gimp-edit-fill-pattern\00", align 1

; Function Attrs: nounwind uwtable
define void @edit_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  %action = alloca %struct._GtkAction*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %1)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([23 x %struct._GimpActionEntry], [23 x %struct._GimpActionEntry]* @edit_actions, i32 0, i32 0), i32 23)
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([3 x %struct._GimpEnumActionEntry], [3 x %struct._GimpEnumActionEntry]* @edit_fill_actions, i32 0, i32 0), i32 3, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @edit_fill_cmd_callback to void ()*))
  %4 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %5 = bitcast %struct._GimpActionGroup* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_action_group_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkActionGroup*
  %call3 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkAction* %call3, %struct._GtkAction** %action, align 8
  %7 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_set_accel_path(%struct._GtkAction* %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %9 = bitcast %struct._GimpActionGroup* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_action_group_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkActionGroup*
  %call6 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkAction* %call6, %struct._GtkAction** %action, align 8
  %11 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %12 = bitcast %struct._GtkAction* %11 to i8*
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct._GimpContext* %13, i8* null)
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %15 = bitcast %struct._GimpContext* %14 to i8*
  %16 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %17 = bitcast %struct._GimpActionGroup* %16 to i8*
  %call7 = call i64 @g_signal_connect_object(i8* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpActionGroup*)* @edit_actions_foreground_changed to void ()*), i8* %17, i32 0)
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %19 = bitcast %struct._GimpContext* %18 to i8*
  %20 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %21 = bitcast %struct._GimpActionGroup* %20 to i8*
  %call8 = call i64 @g_signal_connect_object(i8* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpActionGroup*)* @edit_actions_background_changed to void ()*), i8* %21, i32 0)
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %23 = bitcast %struct._GimpContext* %22 to i8*
  %24 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %25 = bitcast %struct._GimpActionGroup* %24 to i8*
  %call9 = call i64 @g_signal_connect_object(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpPattern*, %struct._GimpActionGroup*)* @edit_actions_pattern_changed to void ()*), i8* %25, i32 0)
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %26, %struct._GimpRGB* %color)
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %28 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @edit_actions_foreground_changed(%struct._GimpContext* %27, %struct._GimpRGB* %color, %struct._GimpActionGroup* %28)
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %29, %struct._GimpRGB* %color)
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %31 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @edit_actions_background_changed(%struct._GimpContext* %30, %struct._GimpRGB* %color, %struct._GimpActionGroup* %31)
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call10 = call %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %32)
  store %struct._GimpPattern* %call10, %struct._GimpPattern** %pattern, align 8
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %34 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %35 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @edit_actions_pattern_changed(%struct._GimpContext* %33, %struct._GimpPattern* %34, %struct._GimpActionGroup* %35)
  %36 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 1)
  %37 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 1)
  %38 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 1)
  ret void
}

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @edit_fill_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_group_get_type() #2

declare void @gtk_action_set_accel_path(%struct._GtkAction*, i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @edit_actions_foreground_changed(%struct._GimpContext* %context, %struct._GimpRGB* %color, %struct._GimpActionGroup* %group) #0 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), %struct._GimpRGB* %1, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @edit_actions_background_changed(%struct._GimpContext* %context, %struct._GimpRGB* %color, %struct._GimpActionGroup* %group) #0 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), %struct._GimpRGB* %1, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @edit_actions_pattern_changed(%struct._GimpContext* %context, %struct._GimpPattern* %pattern, %struct._GimpActionGroup* %group) #0 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %pattern.addr = alloca %struct._GimpPattern*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpPattern* %pattern, %struct._GimpPattern** %pattern.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %2 = bitcast %struct._GimpPattern* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_viewable_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewable*
  call void @gimp_action_group_set_action_viewable(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), %struct._GimpViewable* %3)
  ret void
}

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext*) #1

declare void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @edit_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %undo_name = alloca i8*, align 8
  %redo_name = alloca i8*, align 8
  %fade_name = alloca i8*, align 8
  %writable = alloca i32, align 4
  %children = alloca i32, align 4
  %undo_enabled = alloca i32, align 4
  %fade_enabled = alloca i32, align 4
  %undo_stack = alloca %struct._GimpUndoStack*, align 8
  %redo_stack = alloca %struct._GimpUndoStack*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  %redo = alloca %struct._GimpUndo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  store i8* null, i8** %undo_name, align 8
  store i8* null, i8** %redo_name, align 8
  store i8* null, i8** %fade_name, align 8
  store i32 0, i32* %writable, align 4
  store i32 0, i32* %children, align 4
  store i32 0, i32* %undo_enabled, align 4
  store i32 0, i32* %fade_enabled, align 4
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.then, label %if.end.58

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %if.then
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %call6 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %6)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %writable, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %8 = bitcast %struct._GimpDrawable* %7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_viewable_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call8)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpViewable*
  %call10 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %9)
  %tobool11 = icmp ne %struct._GimpContainer* %call10, null
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.3
  store i32 1, i32* %children, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.3
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call14 = call i32 @gimp_image_undo_is_enabled(%struct._GimpImage* %10)
  store i32 %call14, i32* %undo_enabled, align 4
  %11 = load i32, i32* %undo_enabled, align 4
  %tobool15 = icmp ne i32 %11, 0
  br i1 %tobool15, label %if.then.16, label %if.end.57

if.then.16:                                       ; preds = %if.end.13
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage* %12)
  store %struct._GimpUndoStack* %call17, %struct._GimpUndoStack** %undo_stack, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage* %13)
  store %struct._GimpUndoStack* %call18, %struct._GimpUndoStack** %redo_stack, align 8
  %14 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call19 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %14)
  store %struct._GimpUndo* %call19, %struct._GimpUndo** %undo, align 8
  %15 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack, align 8
  %call20 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %15)
  store %struct._GimpUndo* %call20, %struct._GimpUndo** %redo, align 8
  %16 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool21 = icmp ne %struct._GimpUndo* %16, null
  br i1 %tobool21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.then.16
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)) #6
  %17 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %18 = bitcast %struct._GimpUndo* %17 to i8*
  %call24 = call i8* @gimp_object_get_name(i8* %18)
  %call25 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call23, i8* %call24)
  store i8* %call25, i8** %undo_name, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.then.16
  %19 = load %struct._GimpUndo*, %struct._GimpUndo** %redo, align 8
  %tobool27 = icmp ne %struct._GimpUndo* %19, null
  br i1 %tobool27, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %if.end.26
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #6
  %20 = load %struct._GimpUndo*, %struct._GimpUndo** %redo, align 8
  %21 = bitcast %struct._GimpUndo* %20 to i8*
  %call30 = call i8* @gimp_object_get_name(i8* %21)
  %call31 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call29, i8* %call30)
  store i8* %call31, i8** %redo_name, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %if.end.26
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call33 = call %struct._GimpUndo* @gimp_image_undo_get_fadeable(%struct._GimpImage* %22)
  store %struct._GimpUndo* %call33, %struct._GimpUndo** %undo, align 8
  %23 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %24 = bitcast %struct._GimpUndo* %23 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %24, %struct._GTypeInstance** %__inst, align 8
  %call34 = call i64 @gimp_drawable_undo_get_type() #5
  store i64 %call34, i64* %__t, align 8
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool35 = icmp ne %struct._GTypeInstance* %25, null
  br i1 %tobool35, label %if.else, label %if.then.36

if.then.36:                                       ; preds = %if.end.32
  store i32 0, i32* %__r, align 4
  br label %if.end.43

if.else:                                          ; preds = %if.end.32
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool37 = icmp ne %struct._GTypeClass* %27, null
  br i1 %tobool37, label %land.lhs.true, label %if.else.40

land.lhs.true:                                    ; preds = %if.else
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class38 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class38, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type, align 8
  %31 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %30, %31
  br i1 %cmp, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.42

if.else.40:                                       ; preds = %land.lhs.true, %if.else
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %33 = load i64, i64* %__t, align 8
  %call41 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %32, i64 %33) #7
  store i32 %call41, i32* %__r, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.40, %if.then.39
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.36
  %34 = load i32, i32* %__r, align 4
  store i32 %34, i32* %tmp
  %35 = load i32, i32* %tmp
  %tobool44 = icmp ne i32 %35, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.50

land.lhs.true.45:                                 ; preds = %if.end.43
  %36 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %37 = bitcast %struct._GimpUndo* %36 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_drawable_undo_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call46)
  %38 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpDrawableUndo*
  %src2_tiles = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %38, i32 0, i32 7
  %39 = load %struct._TileManager*, %struct._TileManager** %src2_tiles, align 8
  %tobool48 = icmp ne %struct._TileManager* %39, null
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.45
  store i32 1, i32* %fade_enabled, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %land.lhs.true.45, %if.end.43
  %40 = load i32, i32* %fade_enabled, align 4
  %tobool51 = icmp ne i32 %40, 0
  br i1 %tobool51, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %if.end.50
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)) #6
  %41 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %42 = bitcast %struct._GimpUndo* %41 to i8*
  %call54 = call i8* @gimp_object_get_name(i8* %42)
  %call55 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call53, i8* %call54)
  store i8* %call55, i8** %fade_name, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %if.end.50
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.13
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %entry
  %43 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %44 = load i8*, i8** %undo_name, align 8
  %tobool59 = icmp ne i8* %44, null
  br i1 %tobool59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.58
  %45 = load i8*, i8** %undo_name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.58
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %45, %cond.true ], [ %call60, %cond.false ]
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* %cond)
  %46 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %47 = load i8*, i8** %redo_name, align 8
  %tobool61 = icmp ne i8* %47, null
  br i1 %tobool61, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.end
  %48 = load i8*, i8** %redo_name, align 8
  br label %cond.end.65

cond.false.63:                                    ; preds = %cond.end
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #6
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.62
  %cond66 = phi i8* [ %48, %cond.true.62 ], [ %call64, %cond.false.63 ]
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* %cond66)
  %49 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %50 = load i8*, i8** %fade_name, align 8
  %tobool67 = icmp ne i8* %50, null
  br i1 %tobool67, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %cond.end.65
  %51 = load i8*, i8** %fade_name, align 8
  br label %cond.end.71

cond.false.69:                                    ; preds = %cond.end.65
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0)) #6
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.69, %cond.true.68
  %cond72 = phi i8* [ %51, %cond.true.68 ], [ %call70, %cond.false.69 ]
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* %cond72)
  %52 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %53 = load i32, i32* %undo_enabled, align 4
  %tobool73 = icmp ne i32 %53, 0
  br i1 %tobool73, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.71
  %54 = load i8*, i8** %undo_name, align 8
  %tobool74 = icmp ne i8* %54, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.71
  %55 = phi i1 [ false, %cond.end.71 ], [ %tobool74, %land.rhs ]
  %land.ext = zext i1 %55 to i32
  %cmp75 = icmp ne i32 %land.ext, 0
  %conv = zext i1 %cmp75 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 %conv)
  %56 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %57 = load i32, i32* %undo_enabled, align 4
  %tobool76 = icmp ne i32 %57, 0
  br i1 %tobool76, label %land.rhs.77, label %land.end.79

land.rhs.77:                                      ; preds = %land.end
  %58 = load i8*, i8** %redo_name, align 8
  %tobool78 = icmp ne i8* %58, null
  br label %land.end.79

land.end.79:                                      ; preds = %land.rhs.77, %land.end
  %59 = phi i1 [ false, %land.end ], [ %tobool78, %land.rhs.77 ]
  %land.ext80 = zext i1 %59 to i32
  %cmp81 = icmp ne i32 %land.ext80, 0
  %conv82 = zext i1 %cmp81 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 %conv82)
  %60 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %61 = load i32, i32* %undo_enabled, align 4
  %tobool83 = icmp ne i32 %61, 0
  br i1 %tobool83, label %land.rhs.84, label %land.end.86

land.rhs.84:                                      ; preds = %land.end.79
  %62 = load i8*, i8** %undo_name, align 8
  %tobool85 = icmp ne i8* %62, null
  br label %land.end.86

land.end.86:                                      ; preds = %land.rhs.84, %land.end.79
  %63 = phi i1 [ false, %land.end.79 ], [ %tobool85, %land.rhs.84 ]
  %land.ext87 = zext i1 %63 to i32
  %cmp88 = icmp ne i32 %land.ext87, 0
  %conv89 = zext i1 %cmp88 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 %conv89)
  %64 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %65 = load i32, i32* %undo_enabled, align 4
  %tobool90 = icmp ne i32 %65, 0
  br i1 %tobool90, label %land.rhs.91, label %land.end.93

land.rhs.91:                                      ; preds = %land.end.86
  %66 = load i8*, i8** %redo_name, align 8
  %tobool92 = icmp ne i8* %66, null
  br label %land.end.93

land.end.93:                                      ; preds = %land.rhs.91, %land.end.86
  %67 = phi i1 [ false, %land.end.86 ], [ %tobool92, %land.rhs.91 ]
  %land.ext94 = zext i1 %67 to i32
  %cmp95 = icmp ne i32 %land.ext94, 0
  %conv96 = zext i1 %cmp95 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 %conv96)
  %68 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %69 = load i32, i32* %undo_enabled, align 4
  %tobool97 = icmp ne i32 %69, 0
  br i1 %tobool97, label %land.rhs.98, label %land.end.101

land.rhs.98:                                      ; preds = %land.end.93
  %70 = load i8*, i8** %undo_name, align 8
  %tobool99 = icmp ne i8* %70, null
  br i1 %tobool99, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.98
  %71 = load i8*, i8** %redo_name, align 8
  %tobool100 = icmp ne i8* %71, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.98
  %72 = phi i1 [ true, %land.rhs.98 ], [ %tobool100, %lor.rhs ]
  br label %land.end.101

land.end.101:                                     ; preds = %lor.end, %land.end.93
  %73 = phi i1 [ false, %land.end.93 ], [ %72, %lor.end ]
  %land.ext102 = zext i1 %73 to i32
  %cmp103 = icmp ne i32 %land.ext102, 0
  %conv104 = zext i1 %cmp103 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i32 %conv104)
  %74 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %75 = load i32, i32* %fade_enabled, align 4
  %tobool105 = icmp ne i32 %75, 0
  br i1 %tobool105, label %land.rhs.106, label %land.end.108

land.rhs.106:                                     ; preds = %land.end.101
  %76 = load i8*, i8** %fade_name, align 8
  %tobool107 = icmp ne i8* %76, null
  br label %land.end.108

land.end.108:                                     ; preds = %land.rhs.106, %land.end.101
  %77 = phi i1 [ false, %land.end.101 ], [ %tobool107, %land.rhs.106 ]
  %land.ext109 = zext i1 %77 to i32
  %cmp110 = icmp ne i32 %land.ext109, 0
  %conv111 = zext i1 %cmp110 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 %conv111)
  %78 = load i8*, i8** %undo_name, align 8
  call void @g_free(i8* %78)
  %79 = load i8*, i8** %redo_name, align 8
  call void @g_free(i8* %79)
  %80 = load i8*, i8** %fade_name, align 8
  call void @g_free(i8* %80)
  %81 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %82 = load i32, i32* %writable, align 4
  %tobool112 = icmp ne i32 %82, 0
  br i1 %tobool112, label %land.rhs.113, label %land.end.117

land.rhs.113:                                     ; preds = %land.end.108
  %83 = load i32, i32* %children, align 4
  %tobool114 = icmp ne i32 %83, 0
  %lnot115 = xor i1 %tobool114, true
  br label %land.end.117

land.end.117:                                     ; preds = %land.rhs.113, %land.end.108
  %84 = phi i1 [ false, %land.end.108 ], [ %lnot115, %land.rhs.113 ]
  %land.ext118 = zext i1 %84 to i32
  %cmp119 = icmp ne i32 %land.ext118, 0
  %conv120 = zext i1 %cmp119 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %conv120)
  %85 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %86 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp121 = icmp ne %struct._GimpDrawable* %86, null
  %conv122 = zext i1 %cmp121 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 %conv122)
  %87 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %88 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp123 = icmp ne %struct._GimpImage* %88, null
  %conv124 = zext i1 %cmp123 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i32 %conv124)
  %89 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %90 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool125 = icmp ne %struct._GimpImage* %90, null
  br i1 %tobool125, label %lor.rhs.126, label %lor.end.137

lor.rhs.126:                                      ; preds = %land.end.117
  %91 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool127 = icmp ne %struct._GimpDrawable* %91, null
  br i1 %tobool127, label %lor.rhs.128, label %lor.end.136

lor.rhs.128:                                      ; preds = %lor.rhs.126
  %92 = load i32, i32* %writable, align 4
  %tobool129 = icmp ne i32 %92, 0
  br i1 %tobool129, label %land.rhs.130, label %land.end.134

land.rhs.130:                                     ; preds = %lor.rhs.128
  %93 = load i32, i32* %children, align 4
  %tobool131 = icmp ne i32 %93, 0
  %lnot132 = xor i1 %tobool131, true
  br label %land.end.134

land.end.134:                                     ; preds = %land.rhs.130, %lor.rhs.128
  %94 = phi i1 [ false, %lor.rhs.128 ], [ %lnot132, %land.rhs.130 ]
  br label %lor.end.136

lor.end.136:                                      ; preds = %land.end.134, %lor.rhs.126
  %95 = phi i1 [ true, %lor.rhs.126 ], [ %94, %land.end.134 ]
  br label %lor.end.137

lor.end.137:                                      ; preds = %lor.end.136, %land.end.117
  %96 = phi i1 [ true, %land.end.117 ], [ %95, %lor.end.136 ]
  %lor.ext = zext i1 %96 to i32
  %cmp138 = icmp ne i32 %lor.ext, 0
  %conv139 = zext i1 %cmp138 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 %conv139)
  %97 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %98 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp140 = icmp ne %struct._GimpImage* %98, null
  %conv141 = zext i1 %cmp140 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i32 %conv141)
  %99 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %100 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool142 = icmp ne %struct._GimpImage* %100, null
  br i1 %tobool142, label %land.rhs.143, label %land.end.155

land.rhs.143:                                     ; preds = %lor.end.137
  %101 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool144 = icmp ne %struct._GimpDrawable* %101, null
  br i1 %tobool144, label %lor.rhs.145, label %lor.end.153

lor.rhs.145:                                      ; preds = %land.rhs.143
  %102 = load i32, i32* %writable, align 4
  %tobool146 = icmp ne i32 %102, 0
  br i1 %tobool146, label %land.rhs.147, label %land.end.151

land.rhs.147:                                     ; preds = %lor.rhs.145
  %103 = load i32, i32* %children, align 4
  %tobool148 = icmp ne i32 %103, 0
  %lnot149 = xor i1 %tobool148, true
  br label %land.end.151

land.end.151:                                     ; preds = %land.rhs.147, %lor.rhs.145
  %104 = phi i1 [ false, %lor.rhs.145 ], [ %lnot149, %land.rhs.147 ]
  br label %lor.end.153

lor.end.153:                                      ; preds = %land.end.151, %land.rhs.143
  %105 = phi i1 [ true, %land.rhs.143 ], [ %104, %land.end.151 ]
  br label %land.end.155

land.end.155:                                     ; preds = %lor.end.153, %lor.end.137
  %106 = phi i1 [ false, %lor.end.137 ], [ %105, %lor.end.153 ]
  %land.ext156 = zext i1 %106 to i32
  %cmp157 = icmp ne i32 %land.ext156, 0
  %conv158 = zext i1 %cmp157 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i32 %conv158)
  %107 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %108 = load i32, i32* %writable, align 4
  %tobool159 = icmp ne i32 %108, 0
  br i1 %tobool159, label %land.rhs.160, label %land.end.164

land.rhs.160:                                     ; preds = %land.end.155
  %109 = load i32, i32* %children, align 4
  %tobool161 = icmp ne i32 %109, 0
  %lnot162 = xor i1 %tobool161, true
  br label %land.end.164

land.end.164:                                     ; preds = %land.rhs.160, %land.end.155
  %110 = phi i1 [ false, %land.end.155 ], [ %lnot162, %land.rhs.160 ]
  %land.ext165 = zext i1 %110 to i32
  %cmp166 = icmp ne i32 %land.ext165, 0
  %conv167 = zext i1 %cmp166 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i32 %conv167)
  %111 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %112 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp168 = icmp ne %struct._GimpDrawable* %112, null
  %conv169 = zext i1 %cmp168 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 %conv169)
  %113 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %114 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp170 = icmp ne %struct._GimpDrawable* %114, null
  %conv171 = zext i1 %cmp170 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0), i32 %conv171)
  %115 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i32 1)
  %116 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %117 = load i32, i32* %writable, align 4
  %tobool172 = icmp ne i32 %117, 0
  br i1 %tobool172, label %land.rhs.173, label %land.end.177

land.rhs.173:                                     ; preds = %land.end.164
  %118 = load i32, i32* %children, align 4
  %tobool174 = icmp ne i32 %118, 0
  %lnot175 = xor i1 %tobool174, true
  br label %land.end.177

land.end.177:                                     ; preds = %land.rhs.173, %land.end.164
  %119 = phi i1 [ false, %land.end.164 ], [ %lnot175, %land.rhs.173 ]
  %land.ext178 = zext i1 %119 to i32
  %cmp179 = icmp ne i32 %land.ext178, 0
  %conv180 = zext i1 %cmp179 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 %conv180)
  %120 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %121 = load i32, i32* %writable, align 4
  %tobool181 = icmp ne i32 %121, 0
  br i1 %tobool181, label %land.rhs.182, label %land.end.186

land.rhs.182:                                     ; preds = %land.end.177
  %122 = load i32, i32* %children, align 4
  %tobool183 = icmp ne i32 %122, 0
  %lnot184 = xor i1 %tobool183, true
  br label %land.end.186

land.end.186:                                     ; preds = %land.rhs.182, %land.end.177
  %123 = phi i1 [ false, %land.end.177 ], [ %lnot184, %land.rhs.182 ]
  %land.ext187 = zext i1 %123 to i32
  %cmp188 = icmp ne i32 %land.ext187, 0
  %conv189 = zext i1 %cmp188 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 %conv189)
  %124 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %125 = load i32, i32* %writable, align 4
  %tobool190 = icmp ne i32 %125, 0
  br i1 %tobool190, label %land.rhs.191, label %land.end.195

land.rhs.191:                                     ; preds = %land.end.186
  %126 = load i32, i32* %children, align 4
  %tobool192 = icmp ne i32 %126, 0
  %lnot193 = xor i1 %tobool192, true
  br label %land.end.195

land.end.195:                                     ; preds = %land.rhs.191, %land.end.186
  %127 = phi i1 [ false, %land.end.186 ], [ %lnot193, %land.rhs.191 ]
  %land.ext196 = zext i1 %127 to i32
  %cmp197 = icmp ne i32 %land.ext196, 0
  %conv198 = zext i1 %cmp197 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 %conv198)
  %128 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %129 = load i32, i32* %writable, align 4
  %tobool199 = icmp ne i32 %129, 0
  br i1 %tobool199, label %land.rhs.200, label %land.end.204

land.rhs.200:                                     ; preds = %land.end.195
  %130 = load i32, i32* %children, align 4
  %tobool201 = icmp ne i32 %130, 0
  %lnot202 = xor i1 %tobool201, true
  br label %land.end.204

land.end.204:                                     ; preds = %land.rhs.200, %land.end.195
  %131 = phi i1 [ false, %land.end.195 ], [ %lnot202, %land.rhs.200 ]
  %land.ext205 = zext i1 %131 to i32
  %cmp206 = icmp ne i32 %land.ext205, 0
  %conv207 = zext i1 %cmp206 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %conv207)
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i32 @gimp_image_undo_is_enabled(%struct._GimpImage*) #1

declare %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage*) #1

declare %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage*) #1

declare %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._GimpUndo* @gimp_image_undo_get_fadeable(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_undo_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @gimp_action_group_set_action_label(%struct._GimpActionGroup*, i8*, i8*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @g_free(i8*) #1

declare void @edit_undo_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_redo_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_strong_undo_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_strong_redo_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_undo_clear_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_fade_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_cut_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_copy_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_copy_visible_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_paste_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_paste_into_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_paste_as_new_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_paste_as_new_layer_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_named_cut_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_named_copy_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_named_copy_visible_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_named_paste_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @edit_clear_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @gimp_action_group_set_action_color(%struct._GimpActionGroup*, i8*, %struct._GimpRGB*, i32) #1

declare void @gimp_action_group_set_action_viewable(%struct._GimpActionGroup*, i8*, %struct._GimpViewable*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
