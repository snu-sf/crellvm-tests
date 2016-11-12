; ModuleID = './app/actions/image-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpRadioActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i8* }
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
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpItemStack = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"image-action\00", align 1
@image_actions = internal constant [23 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @image_new_cmd_callback to void ()*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @image_resize_cmd_callback to void ()*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @image_resize_to_layers_cmd_callback to void ()*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @image_resize_to_selection_cmd_callback to void ()*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.58, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @image_print_size_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @image_scale_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.68, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @image_crop_cmd_callback to void ()*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.70, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.74, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @image_duplicate_cmd_callback to void ()*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.78, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @image_merge_layers_cmd_callback to void ()*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.79, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.81, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @image_flatten_image_cmd_callback to void ()*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.82, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.84, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.85, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @image_configure_grid_cmd_callback to void ()*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.86, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.90, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @image_properties_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.91, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"image-convert-action\00", align 1
@image_convert_actions = internal constant [3 x %struct._GimpRadioActionEntry] [%struct._GimpRadioActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.94, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.98, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.99, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.102, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.103, i32 0, i32 0) }], align 16
@image_flip_actions = internal constant [2 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.105, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.106, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.107, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.110, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.111, i32 0, i32 0) }], align 16
@image_rotate_actions = internal constant [3 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.113, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.114, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.115, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.117, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.118, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.119, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.121, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.122, i32 0, i32 0), i32 2, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.123, i32 0, i32 0) }], align 16
@.str.2 = private unnamed_addr constant [16 x i8] c"image-rotate-90\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"image-rotate-180\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"image-rotate-270\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"image-convert-rgb\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"image-convert-grayscale\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"image-convert-indexed\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"image-flip-horizontal\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"image-flip-vertical\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"image-resize\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"image-resize-to-layers\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"image-resize-to-selection\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"image-print-size\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"image-scale\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"image-crop\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"image-duplicate\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"image-merge-layers\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"image-flatten\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"image-configure-grid\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"image-properties\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"image-menubar\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Image Menu\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"gimp-image-window\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"image-popup\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"image-menu\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"_Image\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"image-mode-menu\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"_Mode\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"image-transform-menu\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"_Transform\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"image-guides-menu\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"_Guides\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"colors-menu\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"_Colors\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"colors-info-menu\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"I_nfo\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"colors-auto-menu\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"_Auto\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"colors-map-menu\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"_Map\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"colors-components-menu\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"C_omponents\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"image-new\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"_New...\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"<primary>N\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"Create a new image\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"gimp-file-new\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"gimp-resize\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"Can_vas Size...\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"Adjust the image dimensions\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"gimp-image-resize\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"Fit Canvas to L_ayers\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"Resize the image to enclose all layers\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"gimp-image-resize-to-layers\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"F_it Canvas to Selection\00", align 1
@.str.57 = private unnamed_addr constant [49 x i8] c"Resize the image to the extents of the selection\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"gimp-image-resize-to-selection\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"gimp-print-resolution\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"_Print Size...\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"Adjust the print resolution\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"gimp-image-print-size\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"gimp-scale\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"_Scale Image...\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"Change the size of the image content\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"gimp-image-scale\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"gimp-tool-crop\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"_Crop to Selection\00", align 1
@.str.69 = private unnamed_addr constant [47 x i8] c"Crop the image to the extents of the selection\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"gimp-image-crop\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"gimp-duplicate\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"_Duplicate\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"<primary>D\00", align 1
@.str.74 = private unnamed_addr constant [33 x i8] c"Create a duplicate of this image\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"gimp-image-duplicate\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"Merge Visible _Layers...\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"<primary>M\00", align 1
@.str.78 = private unnamed_addr constant [40 x i8] c"Merge all visible layers into one layer\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"gimp-image-merge-layers\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"_Flatten Image\00", align 1
@.str.81 = private unnamed_addr constant [50 x i8] c"Merge all layers into one and remove transparency\00", align 1
@.str.82 = private unnamed_addr constant [19 x i8] c"gimp-image-flatten\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"gimp-grid\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"Configure G_rid...\00", align 1
@.str.85 = private unnamed_addr constant [34 x i8] c"Configure the grid for this image\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"gimp-image-grid\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"gtk-info\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"Image Pr_operties\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"<alt>Return\00", align 1
@.str.90 = private unnamed_addr constant [37 x i8] c"Display information about this image\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"gimp-image-properties\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"gimp-convert-rgb\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"_RGB\00", align 1
@.str.94 = private unnamed_addr constant [40 x i8] c"Convert the image to the RGB colorspace\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"gimp-image-convert-rgb\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"gimp-convert-grayscale\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"_Grayscale\00", align 1
@.str.98 = private unnamed_addr constant [31 x i8] c"Convert the image to grayscale\00", align 1
@.str.99 = private unnamed_addr constant [29 x i8] c"gimp-image-convert-grayscale\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"gimp-convert-indexed\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"_Indexed...\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"Convert the image to indexed colors\00", align 1
@.str.103 = private unnamed_addr constant [27 x i8] c"gimp-image-convert-indexed\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"gimp-flip-horizontal\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"Flip _Horizontally\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"Flip image horizontally\00", align 1
@.str.107 = private unnamed_addr constant [27 x i8] c"gimp-image-flip-horizontal\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"gimp-flip-vertical\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"Flip _Vertically\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"Flip image vertically\00", align 1
@.str.111 = private unnamed_addr constant [25 x i8] c"gimp-image-flip-vertical\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"gimp-rotate-90\00", align 1
@.str.113 = private unnamed_addr constant [23 x i8] c"Rotate 90\C2\B0 _clockwise\00", align 1
@.str.114 = private unnamed_addr constant [41 x i8] c"Rotate the image 90 degrees to the right\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"gimp-image-rotate-90\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"gimp-rotate-180\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"Rotate _180\C2\B0\00", align 1
@.str.118 = private unnamed_addr constant [27 x i8] c"Turn the image upside-down\00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"gimp-image-rotate-180\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"gimp-rotate-270\00", align 1
@.str.121 = private unnamed_addr constant [31 x i8] c"Rotate 90\C2\B0 counter-clock_wise\00", align 1
@.str.122 = private unnamed_addr constant [40 x i8] c"Rotate the image 90 degrees to the left\00", align 1
@.str.123 = private unnamed_addr constant [22 x i8] c"gimp-image-rotate-270\00", align 1

; Function Attrs: nounwind uwtable
define void @image_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([23 x %struct._GimpActionEntry], [23 x %struct._GimpActionEntry]* @image_actions, i32 0, i32 0), i32 23)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call = call %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), %struct._GimpRadioActionEntry* getelementptr inbounds ([3 x %struct._GimpRadioActionEntry], [3 x %struct._GimpRadioActionEntry]* @image_convert_actions, i32 0, i32 0), i32 3, %struct._GSList* null, i32 0, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkAction*, i8*)* @image_convert_cmd_callback to void ()*))
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([2 x %struct._GimpEnumActionEntry], [2 x %struct._GimpEnumActionEntry]* @image_flip_actions, i32 0, i32 0), i32 2, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @image_flip_cmd_callback to void ()*))
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([3 x %struct._GimpEnumActionEntry], [3 x %struct._GimpEnumActionEntry]* @image_rotate_actions, i32 0, i32 0), i32 3, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @image_rotate_cmd_callback to void ()*))
  %4 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 1)
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1)
  %6 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1)
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup*, i8*, %struct._GimpRadioActionEntry*, i32, %struct._GSList*, i32, void ()*) #1

declare void @image_convert_cmd_callback(%struct._GtkAction*, %struct._GtkAction*, i8*) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @image_flip_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @image_rotate_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @image_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %aux = alloca i32, align 4
  %lp = alloca i32, align 4
  %sel = alloca i32, align 4
  %groups = alloca i32, align 4
  %layers = alloca %struct._GimpContainer*, align 8
  %action = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  store i32 0, i32* %aux, align 4
  store i32 0, i32* %lp, align 4
  store i32 0, i32* %sel, align 4
  store i32 0, i32* %groups, align 4
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %action, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call i32 @gimp_image_base_type(%struct._GimpImage* %2)
  switch i32 %call1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.then
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8** %action, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8** %action, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8** %action, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.3, %sw.bb.2, %sw.bb
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %4 = load i8*, i8** %action, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %3, i8* %4, i32 1)
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %5)
  %cmp = icmp ne %struct._GimpChannel* %call4, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %aux, align 4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call i32 @gimp_image_is_empty(%struct._GimpImage* %6)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %lp, align 4
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %7)
  %call8 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call7)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot10 = xor i1 %tobool9, true
  %lnot.ext11 = zext i1 %lnot10 to i32
  store i32 %lnot.ext11, i32* %sel, align 4
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage* %8)
  store %struct._GimpContainer* %call12, %struct._GimpContainer** %layers, align 8
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %layers, align 8
  %10 = bitcast %struct._GimpContainer* %9 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_stack_get_type() #3
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call13)
  %11 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItemStack*
  %call15 = call i32 @gimp_item_stack_is_flat(%struct._GimpItemStack* %11)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot17 = xor i1 %tobool16, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  store i32 %lnot.ext18, i32* %groups, align 4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp19 = icmp ne %struct._GimpImage* %13, null
  %conv20 = zext i1 %cmp19 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %conv20)
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp21 = icmp ne %struct._GimpImage* %15, null
  %conv22 = zext i1 %cmp21 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i32 %conv22)
  %16 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool23 = icmp ne %struct._GimpImage* %17, null
  br i1 %tobool23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %18 = load i32, i32* %groups, align 4
  %tobool24 = icmp ne i32 %18, 0
  %lnot25 = xor i1 %tobool24, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %19 = phi i1 [ false, %if.end ], [ %lnot25, %land.rhs ]
  %land.ext = zext i1 %19 to i32
  %cmp27 = icmp ne i32 %land.ext, 0
  %conv28 = zext i1 %cmp27 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %conv28)
  %20 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp29 = icmp ne %struct._GimpImage* %21, null
  %conv30 = zext i1 %cmp29 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %conv30)
  %22 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp31 = icmp ne %struct._GimpImage* %23, null
  %conv32 = zext i1 %cmp31 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 %conv32)
  %24 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp33 = icmp ne %struct._GimpImage* %25, null
  %conv34 = zext i1 %cmp33 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 %conv34)
  %26 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp35 = icmp ne %struct._GimpImage* %27, null
  %conv36 = zext i1 %cmp35 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 %conv36)
  %28 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp37 = icmp ne %struct._GimpImage* %29, null
  %conv38 = zext i1 %cmp37 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %conv38)
  %30 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp39 = icmp ne %struct._GimpImage* %31, null
  %conv40 = zext i1 %cmp39 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 %conv40)
  %32 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp41 = icmp ne %struct._GimpImage* %33, null
  %conv42 = zext i1 %cmp41 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 %conv42)
  %34 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool43 = icmp ne %struct._GimpImage* %35, null
  br i1 %tobool43, label %land.rhs.44, label %land.end.46

land.rhs.44:                                      ; preds = %land.end
  %36 = load i32, i32* %sel, align 4
  %tobool45 = icmp ne i32 %36, 0
  br label %land.end.46

land.end.46:                                      ; preds = %land.rhs.44, %land.end
  %37 = phi i1 [ false, %land.end ], [ %tobool45, %land.rhs.44 ]
  %land.ext47 = zext i1 %37 to i32
  %cmp48 = icmp ne i32 %land.ext47, 0
  %conv49 = zext i1 %cmp48 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i32 %conv49)
  %38 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp50 = icmp ne %struct._GimpImage* %39, null
  %conv51 = zext i1 %cmp50 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i32 %conv51)
  %40 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp52 = icmp ne %struct._GimpImage* %41, null
  %conv53 = zext i1 %cmp52 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 %conv53)
  %42 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool54 = icmp ne %struct._GimpImage* %43, null
  br i1 %tobool54, label %land.rhs.55, label %land.end.57

land.rhs.55:                                      ; preds = %land.end.46
  %44 = load i32, i32* %sel, align 4
  %tobool56 = icmp ne i32 %44, 0
  br label %land.end.57

land.end.57:                                      ; preds = %land.rhs.55, %land.end.46
  %45 = phi i1 [ false, %land.end.46 ], [ %tobool56, %land.rhs.55 ]
  %land.ext58 = zext i1 %45 to i32
  %cmp59 = icmp ne i32 %land.ext58, 0
  %conv60 = zext i1 %cmp59 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 %conv60)
  %46 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp61 = icmp ne %struct._GimpImage* %47, null
  %conv62 = zext i1 %cmp61 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32 %conv62)
  %48 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool63 = icmp ne %struct._GimpImage* %49, null
  br i1 %tobool63, label %land.lhs.true, label %land.end.67

land.lhs.true:                                    ; preds = %land.end.57
  %50 = load i32, i32* %aux, align 4
  %tobool64 = icmp ne i32 %50, 0
  br i1 %tobool64, label %land.end.67, label %land.rhs.65

land.rhs.65:                                      ; preds = %land.lhs.true
  %51 = load i32, i32* %lp, align 4
  %tobool66 = icmp ne i32 %51, 0
  br label %land.end.67

land.end.67:                                      ; preds = %land.rhs.65, %land.lhs.true, %land.end.57
  %52 = phi i1 [ false, %land.lhs.true ], [ false, %land.end.57 ], [ %tobool66, %land.rhs.65 ]
  %land.ext68 = zext i1 %52 to i32
  %cmp69 = icmp ne i32 %land.ext68, 0
  %conv70 = zext i1 %cmp69 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 %conv70)
  %53 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool71 = icmp ne %struct._GimpImage* %54, null
  br i1 %tobool71, label %land.lhs.true.72, label %land.end.76

land.lhs.true.72:                                 ; preds = %land.end.67
  %55 = load i32, i32* %aux, align 4
  %tobool73 = icmp ne i32 %55, 0
  br i1 %tobool73, label %land.end.76, label %land.rhs.74

land.rhs.74:                                      ; preds = %land.lhs.true.72
  %56 = load i32, i32* %lp, align 4
  %tobool75 = icmp ne i32 %56, 0
  br label %land.end.76

land.end.76:                                      ; preds = %land.rhs.74, %land.lhs.true.72, %land.end.67
  %57 = phi i1 [ false, %land.lhs.true.72 ], [ false, %land.end.67 ], [ %tobool75, %land.rhs.74 ]
  %land.ext77 = zext i1 %57 to i32
  %cmp78 = icmp ne i32 %land.ext77, 0
  %conv79 = zext i1 %cmp78 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %conv79)
  %58 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp80 = icmp ne %struct._GimpImage* %59, null
  %conv81 = zext i1 %cmp80 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i32 %conv81)
  %60 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp82 = icmp ne %struct._GimpImage* %61, null
  %conv83 = zext i1 %cmp82 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 %conv83)
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #1

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

declare %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage*) #1

declare i32 @gimp_image_is_empty(%struct._GimpImage*) #1

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage*) #1

declare i32 @gimp_item_stack_is_flat(%struct._GimpItemStack*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_stack_get_type() #2

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @image_new_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @image_resize_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @image_resize_to_layers_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @image_resize_to_selection_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @image_print_size_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @image_scale_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @image_crop_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @image_duplicate_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @image_merge_layers_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @image_flatten_image_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @image_configure_grid_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @image_properties_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
