; ModuleID = './app/actions/layers-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpToggleActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i32, i8* }
%struct._GimpEnumActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionGroupPrivate = type opaque
%struct._Gimp = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._cairo_font_options = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkKeymap = type { %struct._GObject, %struct._GdkDisplay* }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._BoundSeg = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpContainer = type opaque

@.str = private unnamed_addr constant [14 x i8] c"layers-action\00", align 1
@layers_actions = internal constant [36 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.74, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_text_tool_cmd_callback to void ()*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.76, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_edit_attributes_cmd_callback to void ()*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_new_cmd_callback to void ()*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.86, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_new_last_vals_cmd_callback to void ()*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.88, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_new_from_visible_cmd_callback to void ()*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.89, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.91, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_new_group_cmd_callback to void ()*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.96, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_duplicate_cmd_callback to void ()*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.100, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_delete_cmd_callback to void ()*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.101, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.104, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_raise_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.105, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.108, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_raise_to_top_cmd_callback to void ()*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.109, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.112, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_lower_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.113, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.116, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_lower_to_bottom_cmd_callback to void ()*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.117, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.121, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_anchor_cmd_callback to void ()*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.122, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.124, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.125, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_merge_down_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.126, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.127, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.128, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_merge_group_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.129, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.130, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.131, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @image_merge_layers_cmd_callback to void ()*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.132, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.133, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.134, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @image_flatten_image_cmd_callback to void ()*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.135, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.136, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.137, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_text_discard_cmd_callback to void ()*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.138, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.139, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.140, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_text_to_vectors_cmd_callback to void ()*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.141, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.142, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.143, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_text_along_vectors_cmd_callback to void ()*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.144, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.146, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.147, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_resize_cmd_callback to void ()*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.148, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.150, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.151, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_resize_to_image_cmd_callback to void ()*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.152, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.154, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.155, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_scale_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.158, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.159, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_crop_cmd_callback to void ()*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.160, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.162, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.163, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_mask_add_cmd_callback to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.164, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.165, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.166, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_alpha_add_cmd_callback to void ()*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.167, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.168, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.169, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_alpha_remove_cmd_callback to void ()*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.170, i32 0, i32 0) }], align 16
@layers_toggle_actions = internal constant [4 x %struct._GimpToggleActionEntry] [%struct._GimpToggleActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.171, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.172, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_lock_alpha_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.173, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.174, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.175, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_mask_edit_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.176, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.178, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_mask_show_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.179, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.180, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.181, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @layers_mask_disable_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.182, i32 0, i32 0) }], align 16
@layers_mask_apply_actions = internal constant [2 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.183, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.184, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.185, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.187, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.188, i32 0, i32 0) }], align 16
@layers_mask_to_selection_actions = internal constant [4 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.190, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.191, i32 0, i32 0), i32 2, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.192, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.194, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.195, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.196, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.198, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.199, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.200, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.202, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.203, i32 0, i32 0), i32 3, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.204, i32 0, i32 0) }], align 16
@layers_alpha_to_selection_actions = internal constant [4 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.205, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.206, i32 0, i32 0), i32 2, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.207, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.208, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.209, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.210, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.198, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.211, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.212, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.202, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.213, i32 0, i32 0), i32 3, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.214, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [31 x i8] c"layers-alpha-selection-replace\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"layers-alpha-selection-add\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"layers-alpha-selection-subtract\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"layers-alpha-selection-intersect\00", align 1
@layers_select_actions = internal constant [4 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.220, i32 0, i32 0), i32 -2, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.221, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.224, i32 0, i32 0), i32 -3, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.225, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.228, i32 0, i32 0), i32 -6, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.229, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.232, i32 0, i32 0), i32 -7, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.233, i32 0, i32 0) }], align 16
@layers_opacity_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.235, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.236, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.238, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.236, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.240, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.236, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.242, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.236, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.244, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.236, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.246, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.236, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.248, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.236, i32 0, i32 0) }], align 16
@layers_mode_actions = internal constant [4 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.250, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.251, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.253, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.251, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.255, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.251, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.257, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.251, i32 0, i32 0) }], align 16
@.str.5 = private unnamed_addr constant [17 x i8] c"layers-text-tool\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"layers-edit-attributes\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"layers-new\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"layers-action\04To _New Layer\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"layers-new-last-values\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"layers-action\04_New Layer...\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"layers-action\04_New Layer\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"layers-new-from-visible\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"layers-new-group\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"layers-duplicate\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"layers-delete\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"layers-select-top\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"layers-select-bottom\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"layers-select-previous\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"layers-select-next\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"layers-raise\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"layers-raise-to-top\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"layers-lower\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"layers-lower-to-bottom\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"layers-anchor\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"layers-merge-down\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"layers-merge-group\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"layers-merge-layers\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"layers-flatten-image\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"layers-text-discard\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"layers-text-to-vectors\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"layers-text-along-vectors\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"layers-resize\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"layers-resize-to-image\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"layers-scale\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"layers-crop\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"layers-alpha-add\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"layers-alpha-remove\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"layers-lock-alpha\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"layers-mask-add\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"layers-mask-apply\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"layers-mask-delete\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"layers-mask-edit\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"layers-mask-show\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"layers-mask-disable\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"layers-mask-selection-replace\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"layers-mask-selection-add\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"layers-mask-selection-subtract\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"layers-mask-selection-intersect\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"layers-popup\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"gimp-layers\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"Layers Menu\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"gimp-layer-dialog\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"layers-menu\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"_Layer\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"layers-stack-menu\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"Stac_k\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"layers-mask-menu\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"_Mask\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"layers-transparency-menu\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"Tr_ansparency\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"layers-transform-menu\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"_Transform\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"layers-properties-menu\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"gtk-properties\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"_Properties\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"layers-opacity-menu\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"gimp-transparency\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"_Opacity\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"layers-mode-menu\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"gimp-tool-pencil\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"Layer _Mode\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"gimp-tool-text\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"Te_xt Tool\00", align 1
@.str.74 = private unnamed_addr constant [42 x i8] c"Activate the text tool on this text layer\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"_Edit Layer Attributes...\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"Edit the layer's name\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"gimp-layer-edit\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"_New Layer...\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"<primary><shift>N\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"Create a new layer and add it to the image\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"gimp-layer-new\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"_New Layer\00", align 1
@.str.85 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.86 = private unnamed_addr constant [41 x i8] c"Create a new layer with last used values\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"New from _Visible\00", align 1
@.str.88 = private unnamed_addr constant [54 x i8] c"Create a new layer from what is visible in this image\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"gimp-layer-new-from-visible\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"gtk-directory\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"New Layer _Group...\00", align 1
@.str.92 = private unnamed_addr constant [49 x i8] c"Create a new layer group and add it to the image\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"gimp-duplicate\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"D_uplicate Layer\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"<primary><shift>D\00", align 1
@.str.96 = private unnamed_addr constant [56 x i8] c"Create a duplicate of the layer and add it to the image\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"gimp-layer-duplicate\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"_Delete Layer\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"Delete this layer\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"gimp-layer-delete\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"gtk-go-up\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"_Raise Layer\00", align 1
@.str.104 = private unnamed_addr constant [45 x i8] c"Raise this layer one step in the layer stack\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"gimp-layer-raise\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"gtk-goto-top\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"Layer to _Top\00", align 1
@.str.108 = private unnamed_addr constant [46 x i8] c"Move this layer to the top of the layer stack\00", align 1
@.str.109 = private unnamed_addr constant [24 x i8] c"gimp-layer-raise-to-top\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"gtk-go-down\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"_Lower Layer\00", align 1
@.str.112 = private unnamed_addr constant [45 x i8] c"Lower this layer one step in the layer stack\00", align 1
@.str.113 = private unnamed_addr constant [17 x i8] c"gimp-layer-lower\00", align 1
@.str.114 = private unnamed_addr constant [16 x i8] c"gtk-goto-bottom\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"Layer to _Bottom\00", align 1
@.str.116 = private unnamed_addr constant [49 x i8] c"Move this layer to the bottom of the layer stack\00", align 1
@.str.117 = private unnamed_addr constant [27 x i8] c"gimp-layer-lower-to-bottom\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"gimp-anchor\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"_Anchor Layer\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"<primary>H\00", align 1
@.str.121 = private unnamed_addr constant [26 x i8] c"Anchor the floating layer\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"gimp-layer-anchor\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"gimp-merge-down\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"Merge Do_wn\00", align 1
@.str.125 = private unnamed_addr constant [55 x i8] c"Merge this layer with the first visible layer below it\00", align 1
@.str.126 = private unnamed_addr constant [22 x i8] c"gimp-layer-merge-down\00", align 1
@.str.127 = private unnamed_addr constant [18 x i8] c"Merge Layer Group\00", align 1
@.str.128 = private unnamed_addr constant [53 x i8] c"Merge the layer group's layers into one normal layer\00", align 1
@.str.129 = private unnamed_addr constant [23 x i8] c"gimp-layer-merge-group\00", align 1
@.str.130 = private unnamed_addr constant [25 x i8] c"Merge _Visible Layers...\00", align 1
@.str.131 = private unnamed_addr constant [40 x i8] c"Merge all visible layers into one layer\00", align 1
@.str.132 = private unnamed_addr constant [24 x i8] c"gimp-image-merge-layers\00", align 1
@.str.133 = private unnamed_addr constant [15 x i8] c"_Flatten Image\00", align 1
@.str.134 = private unnamed_addr constant [50 x i8] c"Merge all layers into one and remove transparency\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c"gimp-image-flatten\00", align 1
@.str.136 = private unnamed_addr constant [26 x i8] c"_Discard Text Information\00", align 1
@.str.137 = private unnamed_addr constant [41 x i8] c"Turn this text layer into a normal layer\00", align 1
@.str.138 = private unnamed_addr constant [24 x i8] c"gimp-layer-text-discard\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"Text to _Path\00", align 1
@.str.140 = private unnamed_addr constant [35 x i8] c"Create a path from this text layer\00", align 1
@.str.141 = private unnamed_addr constant [24 x i8] c"gimp-layer-text-to-path\00", align 1
@.str.142 = private unnamed_addr constant [17 x i8] c"Text alon_g Path\00", align 1
@.str.143 = private unnamed_addr constant [46 x i8] c"Warp this layer's text along the current path\00", align 1
@.str.144 = private unnamed_addr constant [27 x i8] c"gimp-layer-text-along-path\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"gimp-resize\00", align 1
@.str.146 = private unnamed_addr constant [24 x i8] c"Layer B_oundary Size...\00", align 1
@.str.147 = private unnamed_addr constant [28 x i8] c"Adjust the layer dimensions\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"gimp-layer-resize\00", align 1
@.str.149 = private unnamed_addr constant [24 x i8] c"gimp-layer-to-imagesize\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"Layer to _Image Size\00", align 1
@.str.151 = private unnamed_addr constant [42 x i8] c"Resize the layer to the size of the image\00", align 1
@.str.152 = private unnamed_addr constant [27 x i8] c"gimp-layer-resize-to-image\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"gimp-scale\00", align 1
@.str.154 = private unnamed_addr constant [16 x i8] c"_Scale Layer...\00", align 1
@.str.155 = private unnamed_addr constant [37 x i8] c"Change the size of the layer content\00", align 1
@.str.156 = private unnamed_addr constant [17 x i8] c"gimp-layer-scale\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"gimp-tool-crop\00", align 1
@.str.158 = private unnamed_addr constant [19 x i8] c"_Crop to Selection\00", align 1
@.str.159 = private unnamed_addr constant [47 x i8] c"Crop the layer to the extents of the selection\00", align 1
@.str.160 = private unnamed_addr constant [16 x i8] c"gimp-layer-crop\00", align 1
@.str.161 = private unnamed_addr constant [16 x i8] c"gimp-layer-mask\00", align 1
@.str.162 = private unnamed_addr constant [19 x i8] c"Add La_yer Mask...\00", align 1
@.str.163 = private unnamed_addr constant [63 x i8] c"Add a mask that allows non-destructive editing of transparency\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c"gimp-layer-mask-add\00", align 1
@.str.165 = private unnamed_addr constant [19 x i8] c"Add Alpha C_hannel\00", align 1
@.str.166 = private unnamed_addr constant [42 x i8] c"Add transparency information to the layer\00", align 1
@.str.167 = private unnamed_addr constant [21 x i8] c"gimp-layer-alpha-add\00", align 1
@.str.168 = private unnamed_addr constant [22 x i8] c"_Remove Alpha Channel\00", align 1
@.str.169 = private unnamed_addr constant [47 x i8] c"Remove transparency information from the layer\00", align 1
@.str.170 = private unnamed_addr constant [24 x i8] c"gimp-layer-alpha-remove\00", align 1
@.str.171 = private unnamed_addr constant [20 x i8] c"Lock Alph_a Channel\00", align 1
@.str.172 = private unnamed_addr constant [64 x i8] c"Keep transparency information on this layer from being modified\00", align 1
@.str.173 = private unnamed_addr constant [22 x i8] c"gimp-layer-lock-alpha\00", align 1
@.str.174 = private unnamed_addr constant [17 x i8] c"_Edit Layer Mask\00", align 1
@.str.175 = private unnamed_addr constant [23 x i8] c"Work on the layer mask\00", align 1
@.str.176 = private unnamed_addr constant [21 x i8] c"gimp-layer-mask-edit\00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"gimp-visible\00", align 1
@.str.178 = private unnamed_addr constant [17 x i8] c"S_how Layer Mask\00", align 1
@.str.179 = private unnamed_addr constant [21 x i8] c"gimp-layer-mask-show\00", align 1
@.str.180 = private unnamed_addr constant [20 x i8] c"_Disable Layer Mask\00", align 1
@.str.181 = private unnamed_addr constant [37 x i8] c"Dismiss the effect of the layer mask\00", align 1
@.str.182 = private unnamed_addr constant [24 x i8] c"gimp-layer-mask-disable\00", align 1
@.str.183 = private unnamed_addr constant [18 x i8] c"Apply Layer _Mask\00", align 1
@.str.184 = private unnamed_addr constant [49 x i8] c"Apply the effect of the layer mask and remove it\00", align 1
@.str.185 = private unnamed_addr constant [22 x i8] c"gimp-layer-mask-apply\00", align 1
@.str.186 = private unnamed_addr constant [19 x i8] c"Delete Layer Mas_k\00", align 1
@.str.187 = private unnamed_addr constant [37 x i8] c"Remove the layer mask and its effect\00", align 1
@.str.188 = private unnamed_addr constant [23 x i8] c"gimp-layer-mask-delete\00", align 1
@.str.189 = private unnamed_addr constant [23 x i8] c"gimp-selection-replace\00", align 1
@.str.190 = private unnamed_addr constant [19 x i8] c"_Mask to Selection\00", align 1
@.str.191 = private unnamed_addr constant [42 x i8] c"Replace the selection with the layer mask\00", align 1
@.str.192 = private unnamed_addr constant [34 x i8] c"gimp-layer-mask-selection-replace\00", align 1
@.str.193 = private unnamed_addr constant [19 x i8] c"gimp-selection-add\00", align 1
@.str.194 = private unnamed_addr constant [18 x i8] c"_Add to Selection\00", align 1
@.str.195 = private unnamed_addr constant [44 x i8] c"Add the layer mask to the current selection\00", align 1
@.str.196 = private unnamed_addr constant [30 x i8] c"gimp-layer-mask-selection-add\00", align 1
@.str.197 = private unnamed_addr constant [24 x i8] c"gimp-selection-subtract\00", align 1
@.str.198 = private unnamed_addr constant [25 x i8] c"_Subtract from Selection\00", align 1
@.str.199 = private unnamed_addr constant [51 x i8] c"Subtract the layer mask from the current selection\00", align 1
@.str.200 = private unnamed_addr constant [35 x i8] c"gimp-layer-mask-selection-subtract\00", align 1
@.str.201 = private unnamed_addr constant [25 x i8] c"gimp-selection-intersect\00", align 1
@.str.202 = private unnamed_addr constant [26 x i8] c"_Intersect with Selection\00", align 1
@.str.203 = private unnamed_addr constant [52 x i8] c"Intersect the layer mask with the current selection\00", align 1
@.str.204 = private unnamed_addr constant [36 x i8] c"gimp-layer-mask-selection-intersect\00", align 1
@.str.205 = private unnamed_addr constant [20 x i8] c"Al_pha to Selection\00", align 1
@.str.206 = private unnamed_addr constant [53 x i8] c"Replace the selection with the layer's alpha channel\00", align 1
@.str.207 = private unnamed_addr constant [35 x i8] c"gimp-layer-alpha-selection-replace\00", align 1
@.str.208 = private unnamed_addr constant [18 x i8] c"A_dd to Selection\00", align 1
@.str.209 = private unnamed_addr constant [55 x i8] c"Add the layer's alpha channel to the current selection\00", align 1
@.str.210 = private unnamed_addr constant [31 x i8] c"gimp-layer-alpha-selection-add\00", align 1
@.str.211 = private unnamed_addr constant [62 x i8] c"Subtract the layer's alpha channel from the current selection\00", align 1
@.str.212 = private unnamed_addr constant [36 x i8] c"gimp-layer-alpha-selection-subtract\00", align 1
@.str.213 = private unnamed_addr constant [63 x i8] c"Intersect the layer's alpha channel with the current selection\00", align 1
@.str.214 = private unnamed_addr constant [37 x i8] c"gimp-layer-alpha-selection-intersect\00", align 1
@.str.215 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"Shortcut: \00", align 1
@.str.217 = private unnamed_addr constant [39 x i8] c"-Click on thumbnail in Layers dockable\00", align 1
@.str.218 = private unnamed_addr constant [18 x i8] c"Select _Top Layer\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"Home\00", align 1
@.str.220 = private unnamed_addr constant [25 x i8] c"Select the topmost layer\00", align 1
@.str.221 = private unnamed_addr constant [15 x i8] c"gimp-layer-top\00", align 1
@.str.222 = private unnamed_addr constant [21 x i8] c"Select _Bottom Layer\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str.224 = private unnamed_addr constant [28 x i8] c"Select the bottommost layer\00", align 1
@.str.225 = private unnamed_addr constant [18 x i8] c"gimp-layer-bottom\00", align 1
@.str.226 = private unnamed_addr constant [23 x i8] c"Select _Previous Layer\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"Prior\00", align 1
@.str.228 = private unnamed_addr constant [41 x i8] c"Select the layer above the current layer\00", align 1
@.str.229 = private unnamed_addr constant [20 x i8] c"gimp-layer-previous\00", align 1
@.str.230 = private unnamed_addr constant [19 x i8] c"Select _Next Layer\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"Next\00", align 1
@.str.232 = private unnamed_addr constant [41 x i8] c"Select the layer below the current layer\00", align 1
@.str.233 = private unnamed_addr constant [16 x i8] c"gimp-layer-next\00", align 1
@.str.234 = private unnamed_addr constant [19 x i8] c"layers-opacity-set\00", align 1
@.str.235 = private unnamed_addr constant [12 x i8] c"Set Opacity\00", align 1
@.str.236 = private unnamed_addr constant [19 x i8] c"gimp-layer-opacity\00", align 1
@.str.237 = private unnamed_addr constant [27 x i8] c"layers-opacity-transparent\00", align 1
@.str.238 = private unnamed_addr constant [23 x i8] c"Completely Transparent\00", align 1
@.str.239 = private unnamed_addr constant [22 x i8] c"layers-opacity-opaque\00", align 1
@.str.240 = private unnamed_addr constant [18 x i8] c"Completely Opaque\00", align 1
@.str.241 = private unnamed_addr constant [24 x i8] c"layers-opacity-decrease\00", align 1
@.str.242 = private unnamed_addr constant [17 x i8] c"More Transparent\00", align 1
@.str.243 = private unnamed_addr constant [24 x i8] c"layers-opacity-increase\00", align 1
@.str.244 = private unnamed_addr constant [12 x i8] c"More Opaque\00", align 1
@.str.245 = private unnamed_addr constant [29 x i8] c"layers-opacity-decrease-skip\00", align 1
@.str.246 = private unnamed_addr constant [21 x i8] c"10% More Transparent\00", align 1
@.str.247 = private unnamed_addr constant [29 x i8] c"layers-opacity-increase-skip\00", align 1
@.str.248 = private unnamed_addr constant [16 x i8] c"10% More Opaque\00", align 1
@.str.249 = private unnamed_addr constant [18 x i8] c"layers-mode-first\00", align 1
@.str.250 = private unnamed_addr constant [17 x i8] c"First Layer Mode\00", align 1
@.str.251 = private unnamed_addr constant [16 x i8] c"gimp-layer-mode\00", align 1
@.str.252 = private unnamed_addr constant [17 x i8] c"layers-mode-last\00", align 1
@.str.253 = private unnamed_addr constant [16 x i8] c"Last Layer Mode\00", align 1
@.str.254 = private unnamed_addr constant [21 x i8] c"layers-mode-previous\00", align 1
@.str.255 = private unnamed_addr constant [20 x i8] c"Previous Layer Mode\00", align 1
@.str.256 = private unnamed_addr constant [17 x i8] c"layers-mode-next\00", align 1
@.str.257 = private unnamed_addr constant [16 x i8] c"Next Layer Mode\00", align 1

; Function Attrs: nounwind uwtable
define void @layers_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %extend_mask = alloca i32, align 4
  %modify_mask = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %call = call %struct._GdkDisplay* @gdk_display_get_default()
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %0 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay* %0)
  %call2 = call i32 @gdk_keymap_get_modifier_mask(%struct._GdkKeymap* %call1, i32 2)
  store i32 %call2, i32* %extend_mask, align 4
  %1 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call3 = call %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay* %1)
  %call4 = call i32 @gdk_keymap_get_modifier_mask(%struct._GdkKeymap* %call3, i32 3)
  store i32 %call4, i32* %modify_mask, align 4
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([36 x %struct._GimpActionEntry], [36 x %struct._GimpActionEntry]* @layers_actions, i32 0, i32 0), i32 36)
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._GimpToggleActionEntry* getelementptr inbounds ([4 x %struct._GimpToggleActionEntry], [4 x %struct._GimpToggleActionEntry]* @layers_toggle_actions, i32 0, i32 0), i32 4)
  %4 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([2 x %struct._GimpEnumActionEntry], [2 x %struct._GimpEnumActionEntry]* @layers_mask_apply_actions, i32 0, i32 0), i32 2, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @layers_mask_apply_cmd_callback to void ()*))
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([4 x %struct._GimpEnumActionEntry], [4 x %struct._GimpEnumActionEntry]* @layers_mask_to_selection_actions, i32 0, i32 0), i32 4, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @layers_mask_to_selection_cmd_callback to void ()*))
  %6 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([4 x %struct._GimpEnumActionEntry], [4 x %struct._GimpEnumActionEntry]* @layers_alpha_to_selection_actions, i32 0, i32 0), i32 4, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @layers_alpha_to_selection_cmd_callback to void ()*))
  %7 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @layers_actions_fix_tooltip(%struct._GimpActionGroup* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 8)
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %9 = load i32, i32* %extend_mask, align 4
  %or = or i32 %9, 8
  call void @layers_actions_fix_tooltip(%struct._GimpActionGroup* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 %or)
  %10 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %11 = load i32, i32* %modify_mask, align 4
  %or5 = or i32 %11, 8
  call void @layers_actions_fix_tooltip(%struct._GimpActionGroup* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32 %or5)
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %13 = load i32, i32* %extend_mask, align 4
  %14 = load i32, i32* %modify_mask, align 4
  %or6 = or i32 %13, %14
  %or7 = or i32 %or6, 8
  call void @layers_actions_fix_tooltip(%struct._GimpActionGroup* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i32 %or7)
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([4 x %struct._GimpEnumActionEntry], [4 x %struct._GimpEnumActionEntry]* @layers_select_actions, i32 0, i32 0), i32 4, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @layers_select_cmd_callback to void ()*))
  %16 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %16, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @layers_opacity_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @layers_opacity_cmd_callback to void ()*))
  %17 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %17, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([4 x %struct._GimpEnumActionEntry], [4 x %struct._GimpEnumActionEntry]* @layers_mode_actions, i32 0, i32 0), i32 4, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @layers_mode_cmd_callback to void ()*))
  ret void
}

declare %struct._GdkDisplay* @gdk_display_get_default() #1

declare i32 @gdk_keymap_get_modifier_mask(%struct._GdkKeymap*, i32) #1

declare %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay*) #1

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup*, i8*, %struct._GimpToggleActionEntry*, i32) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @layers_mask_apply_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @layers_mask_to_selection_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @layers_alpha_to_selection_cmd_callback(%struct._GtkAction*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @layers_actions_fix_tooltip(%struct._GimpActionGroup* %group, i8* %action, i32 %modifiers) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action.addr = alloca i8*, align 8
  %modifiers.addr = alloca i32, align 4
  %old_hint = alloca i8*, align 8
  %new_hint = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %action, i8** %action.addr, align 8
  store i32 %modifiers, i32* %modifiers.addr, align 4
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = load i8*, i8** %action.addr, align 8
  %call = call i8* @gimp_action_group_get_action_tooltip(%struct._GimpActionGroup* %0, i8* %1)
  store i8* %call, i8** %old_hint, align 8
  %2 = load i8*, i8** %old_hint, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.216, i32 0, i32 0)) #4
  %3 = load i32, i32* %modifiers.addr, align 4
  %call2 = call i8* @gimp_get_mod_string(i32 %3)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.217, i32 0, i32 0)) #4
  %call4 = call noalias i8* (i8*, ...) @g_strconcat(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.215, i32 0, i32 0), i8* %call1, i8* %call2, i8* %call3, i8* null)
  store i8* %call4, i8** %new_hint, align 8
  %4 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %5 = load i8*, i8** %action.addr, align 8
  %6 = load i8*, i8** %new_hint, align 8
  call void @gimp_action_group_set_action_tooltip(%struct._GimpActionGroup* %4, i8* %5, i8* %6)
  %7 = load i8*, i8** %new_hint, align 8
  call void @g_free(i8* %7)
  ret void
}

declare void @layers_select_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @layers_opacity_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @layers_mode_cmd_callback(%struct._GtkAction*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @layers_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %fs = alloca i32, align 4
  %ac = alloca i32, align 4
  %sel = alloca i32, align 4
  %alpha = alloca i32, align 4
  %indexed = alloca i32, align 4
  %lock_alpha = alloca i32, align 4
  %can_lock_alpha = alloca i32, align 4
  %text_layer = alloca i32, align 4
  %writable = alloca i32, align 4
  %children = alloca i32, align 4
  %next = alloca %struct._GList*, align 8
  %next_visible = alloca %struct._GList*, align 8
  %prev = alloca %struct._GList*, align 8
  %layer_list = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  store %struct._GimpLayer* null, %struct._GimpLayer** %layer, align 8
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %mask, align 8
  store i32 0, i32* %fs, align 4
  store i32 0, i32* %ac, align 4
  store i32 0, i32* %sel, align 4
  store i32 0, i32* %alpha, align 4
  store i32 0, i32* %indexed, align 4
  store i32 0, i32* %lock_alpha, align 4
  store i32 0, i32* %can_lock_alpha, align 4
  store i32 0, i32* %text_layer, align 4
  store i32 0, i32* %writable, align 4
  store i32 0, i32* %children, align 4
  store %struct._GList* null, %struct._GList** %next, align 8
  store %struct._GList* null, %struct._GList** %next_visible, align 8
  store %struct._GList* null, %struct._GList** %prev, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.then, label %if.end.70

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %2)
  %cmp = icmp ne %struct._GimpLayer* %call1, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %fs, align 4
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %3)
  %cmp3 = icmp ne %struct._GimpChannel* %call2, null
  %conv4 = zext i1 %cmp3 to i32
  store i32 %conv4, i32* %ac, align 4
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  %call6 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %sel, align 4
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call i32 @gimp_image_base_type(%struct._GimpImage* %5)
  %cmp9 = icmp eq i32 %call8, 2
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, i32* %indexed, align 4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call11 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %6)
  store %struct._GimpLayer* %call11, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool12 = icmp ne %struct._GimpLayer* %7, null
  br i1 %tobool12, label %if.then.13, label %if.end.69

if.then.13:                                       ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call14 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %8)
  store %struct._GimpLayerMask* %call14, %struct._GimpLayerMask** %mask, align 8
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call15 = call i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %9)
  store i32 %call15, i32* %lock_alpha, align 4
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call16 = call i32 @gimp_layer_can_lock_alpha(%struct._GimpLayer* %10)
  store i32 %call16, i32* %can_lock_alpha, align 4
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %12 = bitcast %struct._GimpLayer* %11 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_drawable_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call17)
  %13 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDrawable*
  %call19 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %13)
  store i32 %call19, i32* %alpha, align 4
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %15 = bitcast %struct._GimpLayer* %14 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call20)
  %16 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  %call22 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %16)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot24 = xor i1 %tobool23, true
  %lnot.ext25 = zext i1 %lnot24 to i32
  store i32 %lnot.ext25, i32* %writable, align 4
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %18 = bitcast %struct._GimpLayer* %17 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_viewable_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call26)
  %19 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpViewable*
  %call28 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %19)
  %tobool29 = icmp ne %struct._GimpContainer* %call28, null
  br i1 %tobool29, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then.13
  store i32 1, i32* %children, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.30, %if.then.13
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %21 = bitcast %struct._GimpLayer* %20 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call31)
  %22 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  %call33 = call %struct._GList* @gimp_item_get_container_iter(%struct._GimpItem* %22)
  store %struct._GList* %call33, %struct._GList** %layer_list, align 8
  %23 = load %struct._GList*, %struct._GList** %layer_list, align 8
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %25 = bitcast %struct._GimpLayer* %24 to i8*
  %call34 = call %struct._GList* @g_list_find(%struct._GList* %23, i8* %25)
  store %struct._GList* %call34, %struct._GList** %list, align 8
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool35 = icmp ne %struct._GList* %26, null
  br i1 %tobool35, label %if.then.36, label %if.end.65

if.then.36:                                       ; preds = %if.end
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool37 = icmp ne %struct._GList* %27, null
  br i1 %tobool37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.36
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %prev38 = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 2
  %29 = load %struct._GList*, %struct._GList** %prev38, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %29, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %prev, align 8
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool39 = icmp ne %struct._GList* %30, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %cond.end
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %next41 = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %next41, align 8
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.end
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.40
  %cond44 = phi %struct._GList* [ %32, %cond.true.40 ], [ null, %cond.false.42 ]
  store %struct._GList* %cond44, %struct._GList** %next, align 8
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %33, %struct._GList** %next_visible, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.63, %cond.end.43
  %34 = load %struct._GList*, %struct._GList** %next_visible, align 8
  %tobool45 = icmp ne %struct._GList* %34, null
  br i1 %tobool45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct._GList*, %struct._GList** %next_visible, align 8
  %data46 = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 0
  %36 = load i8*, i8** %data46, align 8
  %37 = bitcast i8* %36 to %struct._GimpItem*
  %call47 = call i32 @gimp_item_get_visible(%struct._GimpItem* %37)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.58

if.then.49:                                       ; preds = %for.body
  %38 = load %struct._GList*, %struct._GList** %next_visible, align 8
  %data50 = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 0
  %39 = load i8*, i8** %data50, align 8
  %40 = bitcast i8* %39 to %struct._GimpItem*
  %call51 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %40)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.49
  %41 = load %struct._GList*, %struct._GList** %next_visible, align 8
  %data53 = getelementptr inbounds %struct._GList, %struct._GList* %41, i32 0, i32 0
  %42 = load i8*, i8** %data53, align 8
  %43 = bitcast i8* %42 to %struct._GimpViewable*
  %call54 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %43)
  %tobool55 = icmp ne %struct._GimpContainer* %call54, null
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %lor.lhs.false, %if.then.49
  store %struct._GList* null, %struct._GList** %next_visible, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %lor.lhs.false
  br label %for.end

if.end.58:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %44 = load %struct._GList*, %struct._GList** %next_visible, align 8
  %tobool59 = icmp ne %struct._GList* %44, null
  br i1 %tobool59, label %cond.true.60, label %cond.false.62

cond.true.60:                                     ; preds = %for.inc
  %45 = load %struct._GList*, %struct._GList** %next_visible, align 8
  %next61 = getelementptr inbounds %struct._GList, %struct._GList* %45, i32 0, i32 1
  %46 = load %struct._GList*, %struct._GList** %next61, align 8
  br label %cond.end.63

cond.false.62:                                    ; preds = %for.inc
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.60
  %cond64 = phi %struct._GList* [ %46, %cond.true.60 ], [ null, %cond.false.62 ]
  store %struct._GList* %cond64, %struct._GList** %next_visible, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.57, %for.cond
  br label %if.end.65

if.end.65:                                        ; preds = %for.end, %if.end
  %47 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %48 = bitcast %struct._GimpLayer* %47 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_item_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call66)
  %49 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpItem*
  %call68 = call i32 @gimp_item_is_text_layer(%struct._GimpItem* %49)
  store i32 %call68, i32* %text_layer, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.65, %if.then
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %entry
  %50 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %51 = load i32, i32* %text_layer, align 4
  %tobool71 = icmp ne i32 %51, 0
  br i1 %tobool71, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.70
  %52 = load i32, i32* %ac, align 4
  %tobool72 = icmp ne i32 %52, 0
  %lnot73 = xor i1 %tobool72, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.70
  %53 = phi i1 [ false, %if.end.70 ], [ %lnot73, %land.rhs ]
  %land.ext = zext i1 %53 to i32
  %cmp75 = icmp ne i32 %land.ext, 0
  %conv76 = zext i1 %cmp75 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %conv76)
  %54 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %55 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool77 = icmp ne %struct._GimpLayer* %55, null
  br i1 %tobool77, label %land.lhs.true, label %land.end.83

land.lhs.true:                                    ; preds = %land.end
  %56 = load i32, i32* %fs, align 4
  %tobool78 = icmp ne i32 %56, 0
  br i1 %tobool78, label %land.end.83, label %land.rhs.79

land.rhs.79:                                      ; preds = %land.lhs.true
  %57 = load i32, i32* %ac, align 4
  %tobool80 = icmp ne i32 %57, 0
  %lnot81 = xor i1 %tobool80, true
  br label %land.end.83

land.end.83:                                      ; preds = %land.rhs.79, %land.lhs.true, %land.end
  %58 = phi i1 [ false, %land.lhs.true ], [ false, %land.end ], [ %lnot81, %land.rhs.79 ]
  %land.ext84 = zext i1 %58 to i32
  %cmp85 = icmp ne i32 %land.ext84, 0
  %conv86 = zext i1 %cmp85 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 %conv86)
  %59 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool87 = icmp ne %struct._GimpLayer* %59, null
  br i1 %tobool87, label %land.lhs.true.88, label %if.else

land.lhs.true.88:                                 ; preds = %land.end.83
  %60 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call89 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %60)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %land.lhs.true.88
  %61 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call92 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i64 14)
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* %call92)
  %62 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call93 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i64 14)
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* %call93)
  br label %if.end.96

if.else:                                          ; preds = %land.lhs.true.88, %land.end.83
  %63 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call94 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i64 14)
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* %call94)
  %64 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call95 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i64 14)
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* %call95)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else, %if.then.91
  %65 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp97 = icmp ne %struct._GimpImage* %66, null
  %conv98 = zext i1 %cmp97 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 %conv98)
  %67 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %68 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp99 = icmp ne %struct._GimpImage* %68, null
  %conv100 = zext i1 %cmp99 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i32 %conv100)
  %69 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %70 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp101 = icmp ne %struct._GimpImage* %70, null
  %conv102 = zext i1 %cmp101 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i32 %conv102)
  %71 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %72 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool103 = icmp ne %struct._GimpImage* %72, null
  br i1 %tobool103, label %land.rhs.104, label %land.end.108

land.rhs.104:                                     ; preds = %if.end.96
  %73 = load i32, i32* %indexed, align 4
  %tobool105 = icmp ne i32 %73, 0
  %lnot106 = xor i1 %tobool105, true
  br label %land.end.108

land.end.108:                                     ; preds = %land.rhs.104, %if.end.96
  %74 = phi i1 [ false, %if.end.96 ], [ %lnot106, %land.rhs.104 ]
  %land.ext109 = zext i1 %74 to i32
  %cmp110 = icmp ne i32 %land.ext109, 0
  %conv111 = zext i1 %cmp110 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i32 %conv111)
  %75 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %76 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool112 = icmp ne %struct._GimpLayer* %76, null
  br i1 %tobool112, label %land.lhs.true.113, label %land.end.119

land.lhs.true.113:                                ; preds = %land.end.108
  %77 = load i32, i32* %fs, align 4
  %tobool114 = icmp ne i32 %77, 0
  br i1 %tobool114, label %land.end.119, label %land.rhs.115

land.rhs.115:                                     ; preds = %land.lhs.true.113
  %78 = load i32, i32* %ac, align 4
  %tobool116 = icmp ne i32 %78, 0
  %lnot117 = xor i1 %tobool116, true
  br label %land.end.119

land.end.119:                                     ; preds = %land.rhs.115, %land.lhs.true.113, %land.end.108
  %79 = phi i1 [ false, %land.lhs.true.113 ], [ false, %land.end.108 ], [ %lnot117, %land.rhs.115 ]
  %land.ext120 = zext i1 %79 to i32
  %cmp121 = icmp ne i32 %land.ext120, 0
  %conv122 = zext i1 %cmp121 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 %conv122)
  %80 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %81 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool123 = icmp ne %struct._GimpLayer* %81, null
  br i1 %tobool123, label %land.rhs.124, label %land.end.128

land.rhs.124:                                     ; preds = %land.end.119
  %82 = load i32, i32* %ac, align 4
  %tobool125 = icmp ne i32 %82, 0
  %lnot126 = xor i1 %tobool125, true
  br label %land.end.128

land.end.128:                                     ; preds = %land.rhs.124, %land.end.119
  %83 = phi i1 [ false, %land.end.119 ], [ %lnot126, %land.rhs.124 ]
  %land.ext129 = zext i1 %83 to i32
  %cmp130 = icmp ne i32 %land.ext129, 0
  %conv131 = zext i1 %cmp130 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %conv131)
  %84 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %85 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool132 = icmp ne %struct._GimpLayer* %85, null
  br i1 %tobool132, label %land.lhs.true.133, label %land.end.139

land.lhs.true.133:                                ; preds = %land.end.128
  %86 = load i32, i32* %fs, align 4
  %tobool134 = icmp ne i32 %86, 0
  br i1 %tobool134, label %land.end.139, label %land.lhs.true.135

land.lhs.true.135:                                ; preds = %land.lhs.true.133
  %87 = load i32, i32* %ac, align 4
  %tobool136 = icmp ne i32 %87, 0
  br i1 %tobool136, label %land.end.139, label %land.rhs.137

land.rhs.137:                                     ; preds = %land.lhs.true.135
  %88 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool138 = icmp ne %struct._GList* %88, null
  br label %land.end.139

land.end.139:                                     ; preds = %land.rhs.137, %land.lhs.true.135, %land.lhs.true.133, %land.end.128
  %89 = phi i1 [ false, %land.lhs.true.135 ], [ false, %land.lhs.true.133 ], [ false, %land.end.128 ], [ %tobool138, %land.rhs.137 ]
  %land.ext140 = zext i1 %89 to i32
  %cmp141 = icmp ne i32 %land.ext140, 0
  %conv142 = zext i1 %cmp141 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i32 %conv142)
  %90 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %91 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool143 = icmp ne %struct._GimpLayer* %91, null
  br i1 %tobool143, label %land.lhs.true.144, label %land.end.150

land.lhs.true.144:                                ; preds = %land.end.139
  %92 = load i32, i32* %fs, align 4
  %tobool145 = icmp ne i32 %92, 0
  br i1 %tobool145, label %land.end.150, label %land.lhs.true.146

land.lhs.true.146:                                ; preds = %land.lhs.true.144
  %93 = load i32, i32* %ac, align 4
  %tobool147 = icmp ne i32 %93, 0
  br i1 %tobool147, label %land.end.150, label %land.rhs.148

land.rhs.148:                                     ; preds = %land.lhs.true.146
  %94 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool149 = icmp ne %struct._GList* %94, null
  br label %land.end.150

land.end.150:                                     ; preds = %land.rhs.148, %land.lhs.true.146, %land.lhs.true.144, %land.end.139
  %95 = phi i1 [ false, %land.lhs.true.146 ], [ false, %land.lhs.true.144 ], [ false, %land.end.139 ], [ %tobool149, %land.rhs.148 ]
  %land.ext151 = zext i1 %95 to i32
  %cmp152 = icmp ne i32 %land.ext151, 0
  %conv153 = zext i1 %cmp152 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i32 %conv153)
  %96 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %97 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool154 = icmp ne %struct._GimpLayer* %97, null
  br i1 %tobool154, label %land.lhs.true.155, label %land.end.161

land.lhs.true.155:                                ; preds = %land.end.150
  %98 = load i32, i32* %fs, align 4
  %tobool156 = icmp ne i32 %98, 0
  br i1 %tobool156, label %land.end.161, label %land.lhs.true.157

land.lhs.true.157:                                ; preds = %land.lhs.true.155
  %99 = load i32, i32* %ac, align 4
  %tobool158 = icmp ne i32 %99, 0
  br i1 %tobool158, label %land.end.161, label %land.rhs.159

land.rhs.159:                                     ; preds = %land.lhs.true.157
  %100 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool160 = icmp ne %struct._GList* %100, null
  br label %land.end.161

land.end.161:                                     ; preds = %land.rhs.159, %land.lhs.true.157, %land.lhs.true.155, %land.end.150
  %101 = phi i1 [ false, %land.lhs.true.157 ], [ false, %land.lhs.true.155 ], [ false, %land.end.150 ], [ %tobool160, %land.rhs.159 ]
  %land.ext162 = zext i1 %101 to i32
  %cmp163 = icmp ne i32 %land.ext162, 0
  %conv164 = zext i1 %cmp163 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i32 %conv164)
  %102 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %103 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool165 = icmp ne %struct._GimpLayer* %103, null
  br i1 %tobool165, label %land.lhs.true.166, label %land.end.172

land.lhs.true.166:                                ; preds = %land.end.161
  %104 = load i32, i32* %fs, align 4
  %tobool167 = icmp ne i32 %104, 0
  br i1 %tobool167, label %land.end.172, label %land.lhs.true.168

land.lhs.true.168:                                ; preds = %land.lhs.true.166
  %105 = load i32, i32* %ac, align 4
  %tobool169 = icmp ne i32 %105, 0
  br i1 %tobool169, label %land.end.172, label %land.rhs.170

land.rhs.170:                                     ; preds = %land.lhs.true.168
  %106 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool171 = icmp ne %struct._GList* %106, null
  br label %land.end.172

land.end.172:                                     ; preds = %land.rhs.170, %land.lhs.true.168, %land.lhs.true.166, %land.end.161
  %107 = phi i1 [ false, %land.lhs.true.168 ], [ false, %land.lhs.true.166 ], [ false, %land.end.161 ], [ %tobool171, %land.rhs.170 ]
  %land.ext173 = zext i1 %107 to i32
  %cmp174 = icmp ne i32 %land.ext173, 0
  %conv175 = zext i1 %cmp174 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i32 %conv175)
  %108 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %109 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool176 = icmp ne %struct._GimpLayer* %109, null
  br i1 %tobool176, label %land.lhs.true.177, label %land.end.183

land.lhs.true.177:                                ; preds = %land.end.172
  %110 = load i32, i32* %fs, align 4
  %tobool178 = icmp ne i32 %110, 0
  br i1 %tobool178, label %land.end.183, label %land.lhs.true.179

land.lhs.true.179:                                ; preds = %land.lhs.true.177
  %111 = load i32, i32* %ac, align 4
  %tobool180 = icmp ne i32 %111, 0
  br i1 %tobool180, label %land.end.183, label %land.rhs.181

land.rhs.181:                                     ; preds = %land.lhs.true.179
  %112 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool182 = icmp ne %struct._GList* %112, null
  br label %land.end.183

land.end.183:                                     ; preds = %land.rhs.181, %land.lhs.true.179, %land.lhs.true.177, %land.end.172
  %113 = phi i1 [ false, %land.lhs.true.179 ], [ false, %land.lhs.true.177 ], [ false, %land.end.172 ], [ %tobool182, %land.rhs.181 ]
  %land.ext184 = zext i1 %113 to i32
  %cmp185 = icmp ne i32 %land.ext184, 0
  %conv186 = zext i1 %cmp185 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i32 %conv186)
  %114 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %115 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool187 = icmp ne %struct._GimpLayer* %115, null
  br i1 %tobool187, label %land.lhs.true.188, label %land.end.194

land.lhs.true.188:                                ; preds = %land.end.183
  %116 = load i32, i32* %fs, align 4
  %tobool189 = icmp ne i32 %116, 0
  br i1 %tobool189, label %land.end.194, label %land.lhs.true.190

land.lhs.true.190:                                ; preds = %land.lhs.true.188
  %117 = load i32, i32* %ac, align 4
  %tobool191 = icmp ne i32 %117, 0
  br i1 %tobool191, label %land.end.194, label %land.rhs.192

land.rhs.192:                                     ; preds = %land.lhs.true.190
  %118 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool193 = icmp ne %struct._GList* %118, null
  br label %land.end.194

land.end.194:                                     ; preds = %land.rhs.192, %land.lhs.true.190, %land.lhs.true.188, %land.end.183
  %119 = phi i1 [ false, %land.lhs.true.190 ], [ false, %land.lhs.true.188 ], [ false, %land.end.183 ], [ %tobool193, %land.rhs.192 ]
  %land.ext195 = zext i1 %119 to i32
  %cmp196 = icmp ne i32 %land.ext195, 0
  %conv197 = zext i1 %cmp196 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i32 %conv197)
  %120 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %121 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool198 = icmp ne %struct._GimpLayer* %121, null
  br i1 %tobool198, label %land.lhs.true.199, label %land.end.205

land.lhs.true.199:                                ; preds = %land.end.194
  %122 = load i32, i32* %fs, align 4
  %tobool200 = icmp ne i32 %122, 0
  br i1 %tobool200, label %land.end.205, label %land.lhs.true.201

land.lhs.true.201:                                ; preds = %land.lhs.true.199
  %123 = load i32, i32* %ac, align 4
  %tobool202 = icmp ne i32 %123, 0
  br i1 %tobool202, label %land.end.205, label %land.rhs.203

land.rhs.203:                                     ; preds = %land.lhs.true.201
  %124 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool204 = icmp ne %struct._GList* %124, null
  br label %land.end.205

land.end.205:                                     ; preds = %land.rhs.203, %land.lhs.true.201, %land.lhs.true.199, %land.end.194
  %125 = phi i1 [ false, %land.lhs.true.201 ], [ false, %land.lhs.true.199 ], [ false, %land.end.194 ], [ %tobool204, %land.rhs.203 ]
  %land.ext206 = zext i1 %125 to i32
  %cmp207 = icmp ne i32 %land.ext206, 0
  %conv208 = zext i1 %cmp207 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 %conv208)
  %126 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %127 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool209 = icmp ne %struct._GimpLayer* %127, null
  br i1 %tobool209, label %land.lhs.true.210, label %land.end.216

land.lhs.true.210:                                ; preds = %land.end.205
  %128 = load i32, i32* %fs, align 4
  %tobool211 = icmp ne i32 %128, 0
  br i1 %tobool211, label %land.end.216, label %land.lhs.true.212

land.lhs.true.212:                                ; preds = %land.lhs.true.210
  %129 = load i32, i32* %ac, align 4
  %tobool213 = icmp ne i32 %129, 0
  br i1 %tobool213, label %land.end.216, label %land.rhs.214

land.rhs.214:                                     ; preds = %land.lhs.true.212
  %130 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool215 = icmp ne %struct._GList* %130, null
  br label %land.end.216

land.end.216:                                     ; preds = %land.rhs.214, %land.lhs.true.212, %land.lhs.true.210, %land.end.205
  %131 = phi i1 [ false, %land.lhs.true.212 ], [ false, %land.lhs.true.210 ], [ false, %land.end.205 ], [ %tobool215, %land.rhs.214 ]
  %land.ext217 = zext i1 %131 to i32
  %cmp218 = icmp ne i32 %land.ext217, 0
  %conv219 = zext i1 %cmp218 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i32 %conv219)
  %132 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %133 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool220 = icmp ne %struct._GimpLayer* %133, null
  br i1 %tobool220, label %land.lhs.true.221, label %land.end.227

land.lhs.true.221:                                ; preds = %land.end.216
  %134 = load i32, i32* %fs, align 4
  %tobool222 = icmp ne i32 %134, 0
  br i1 %tobool222, label %land.rhs.223, label %land.end.227

land.rhs.223:                                     ; preds = %land.lhs.true.221
  %135 = load i32, i32* %ac, align 4
  %tobool224 = icmp ne i32 %135, 0
  %lnot225 = xor i1 %tobool224, true
  br label %land.end.227

land.end.227:                                     ; preds = %land.rhs.223, %land.lhs.true.221, %land.end.216
  %136 = phi i1 [ false, %land.lhs.true.221 ], [ false, %land.end.216 ], [ %lnot225, %land.rhs.223 ]
  %land.ext228 = zext i1 %136 to i32
  %cmp229 = icmp ne i32 %land.ext228, 0
  %conv230 = zext i1 %cmp229 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 %conv230)
  %137 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %138 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool231 = icmp ne %struct._GimpLayer* %138, null
  br i1 %tobool231, label %land.lhs.true.232, label %land.end.238

land.lhs.true.232:                                ; preds = %land.end.227
  %139 = load i32, i32* %fs, align 4
  %tobool233 = icmp ne i32 %139, 0
  br i1 %tobool233, label %land.end.238, label %land.lhs.true.234

land.lhs.true.234:                                ; preds = %land.lhs.true.232
  %140 = load i32, i32* %ac, align 4
  %tobool235 = icmp ne i32 %140, 0
  br i1 %tobool235, label %land.end.238, label %land.rhs.236

land.rhs.236:                                     ; preds = %land.lhs.true.234
  %141 = load %struct._GList*, %struct._GList** %next_visible, align 8
  %tobool237 = icmp ne %struct._GList* %141, null
  br label %land.end.238

land.end.238:                                     ; preds = %land.rhs.236, %land.lhs.true.234, %land.lhs.true.232, %land.end.227
  %142 = phi i1 [ false, %land.lhs.true.234 ], [ false, %land.lhs.true.232 ], [ false, %land.end.227 ], [ %tobool237, %land.rhs.236 ]
  %land.ext239 = zext i1 %142 to i32
  %cmp240 = icmp ne i32 %land.ext239, 0
  %conv241 = zext i1 %cmp240 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %137, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 %conv241)
  %143 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %144 = load i32, i32* %children, align 4
  %cmp242 = icmp ne i32 %144, 0
  %conv243 = zext i1 %cmp242 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %143, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i32 %conv243)
  %145 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %146 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool244 = icmp ne %struct._GimpLayer* %146, null
  br i1 %tobool244, label %land.lhs.true.245, label %land.end.251

land.lhs.true.245:                                ; preds = %land.end.238
  %147 = load i32, i32* %fs, align 4
  %tobool246 = icmp ne i32 %147, 0
  br i1 %tobool246, label %land.end.251, label %land.lhs.true.247

land.lhs.true.247:                                ; preds = %land.lhs.true.245
  %148 = load i32, i32* %ac, align 4
  %tobool248 = icmp ne i32 %148, 0
  br i1 %tobool248, label %land.end.251, label %land.rhs.249

land.rhs.249:                                     ; preds = %land.lhs.true.247
  %149 = load i32, i32* %children, align 4
  %tobool250 = icmp ne i32 %149, 0
  br label %land.end.251

land.end.251:                                     ; preds = %land.rhs.249, %land.lhs.true.247, %land.lhs.true.245, %land.end.238
  %150 = phi i1 [ false, %land.lhs.true.247 ], [ false, %land.lhs.true.245 ], [ false, %land.end.238 ], [ %tobool250, %land.rhs.249 ]
  %land.ext252 = zext i1 %150 to i32
  %cmp253 = icmp ne i32 %land.ext252, 0
  %conv254 = zext i1 %cmp253 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %145, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i32 %conv254)
  %151 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %152 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool255 = icmp ne %struct._GimpLayer* %152, null
  br i1 %tobool255, label %land.lhs.true.256, label %land.end.262

land.lhs.true.256:                                ; preds = %land.end.251
  %153 = load i32, i32* %fs, align 4
  %tobool257 = icmp ne i32 %153, 0
  br i1 %tobool257, label %land.end.262, label %land.rhs.258

land.rhs.258:                                     ; preds = %land.lhs.true.256
  %154 = load i32, i32* %ac, align 4
  %tobool259 = icmp ne i32 %154, 0
  %lnot260 = xor i1 %tobool259, true
  br label %land.end.262

land.end.262:                                     ; preds = %land.rhs.258, %land.lhs.true.256, %land.end.251
  %155 = phi i1 [ false, %land.lhs.true.256 ], [ false, %land.end.251 ], [ %lnot260, %land.rhs.258 ]
  %land.ext263 = zext i1 %155 to i32
  %cmp264 = icmp ne i32 %land.ext263, 0
  %conv265 = zext i1 %cmp264 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %151, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i32 %conv265)
  %156 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %157 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool266 = icmp ne %struct._GimpLayer* %157, null
  br i1 %tobool266, label %land.lhs.true.267, label %land.end.273

land.lhs.true.267:                                ; preds = %land.end.262
  %158 = load i32, i32* %fs, align 4
  %tobool268 = icmp ne i32 %158, 0
  br i1 %tobool268, label %land.end.273, label %land.rhs.269

land.rhs.269:                                     ; preds = %land.lhs.true.267
  %159 = load i32, i32* %ac, align 4
  %tobool270 = icmp ne i32 %159, 0
  %lnot271 = xor i1 %tobool270, true
  br label %land.end.273

land.end.273:                                     ; preds = %land.rhs.269, %land.lhs.true.267, %land.end.262
  %160 = phi i1 [ false, %land.lhs.true.267 ], [ false, %land.end.262 ], [ %lnot271, %land.rhs.269 ]
  %land.ext274 = zext i1 %160 to i32
  %cmp275 = icmp ne i32 %land.ext274, 0
  %conv276 = zext i1 %cmp275 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i32 %conv276)
  %161 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %162 = load i32, i32* %text_layer, align 4
  %tobool277 = icmp ne i32 %162, 0
  br i1 %tobool277, label %land.rhs.278, label %land.end.282

land.rhs.278:                                     ; preds = %land.end.273
  %163 = load i32, i32* %ac, align 4
  %tobool279 = icmp ne i32 %163, 0
  %lnot280 = xor i1 %tobool279, true
  br label %land.end.282

land.end.282:                                     ; preds = %land.rhs.278, %land.end.273
  %164 = phi i1 [ false, %land.end.273 ], [ %lnot280, %land.rhs.278 ]
  %land.ext283 = zext i1 %164 to i32
  %cmp284 = icmp ne i32 %land.ext283, 0
  %conv285 = zext i1 %cmp284 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %161, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i32 %conv285)
  %165 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %166 = load i32, i32* %text_layer, align 4
  %tobool286 = icmp ne i32 %166, 0
  br i1 %tobool286, label %land.rhs.287, label %land.end.291

land.rhs.287:                                     ; preds = %land.end.282
  %167 = load i32, i32* %ac, align 4
  %tobool288 = icmp ne i32 %167, 0
  %lnot289 = xor i1 %tobool288, true
  br label %land.end.291

land.end.291:                                     ; preds = %land.rhs.287, %land.end.282
  %168 = phi i1 [ false, %land.end.282 ], [ %lnot289, %land.rhs.287 ]
  %land.ext292 = zext i1 %168 to i32
  %cmp293 = icmp ne i32 %land.ext292, 0
  %conv294 = zext i1 %cmp293 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0), i32 %conv294)
  %169 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %170 = load i32, i32* %text_layer, align 4
  %tobool295 = icmp ne i32 %170, 0
  br i1 %tobool295, label %land.rhs.296, label %land.end.300

land.rhs.296:                                     ; preds = %land.end.291
  %171 = load i32, i32* %ac, align 4
  %tobool297 = icmp ne i32 %171, 0
  %lnot298 = xor i1 %tobool297, true
  br label %land.end.300

land.end.300:                                     ; preds = %land.rhs.296, %land.end.291
  %172 = phi i1 [ false, %land.end.291 ], [ %lnot298, %land.rhs.296 ]
  %land.ext301 = zext i1 %172 to i32
  %cmp302 = icmp ne i32 %land.ext301, 0
  %conv303 = zext i1 %cmp302 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0), i32 %conv303)
  %173 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %174 = load i32, i32* %writable, align 4
  %tobool304 = icmp ne i32 %174, 0
  br i1 %tobool304, label %land.rhs.305, label %land.end.309

land.rhs.305:                                     ; preds = %land.end.300
  %175 = load i32, i32* %ac, align 4
  %tobool306 = icmp ne i32 %175, 0
  %lnot307 = xor i1 %tobool306, true
  br label %land.end.309

land.end.309:                                     ; preds = %land.rhs.305, %land.end.300
  %176 = phi i1 [ false, %land.end.300 ], [ %lnot307, %land.rhs.305 ]
  %land.ext310 = zext i1 %176 to i32
  %cmp311 = icmp ne i32 %land.ext310, 0
  %conv312 = zext i1 %cmp311 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i32 %conv312)
  %177 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %178 = load i32, i32* %writable, align 4
  %tobool313 = icmp ne i32 %178, 0
  br i1 %tobool313, label %land.rhs.314, label %land.end.318

land.rhs.314:                                     ; preds = %land.end.309
  %179 = load i32, i32* %ac, align 4
  %tobool315 = icmp ne i32 %179, 0
  %lnot316 = xor i1 %tobool315, true
  br label %land.end.318

land.end.318:                                     ; preds = %land.rhs.314, %land.end.309
  %180 = phi i1 [ false, %land.end.309 ], [ %lnot316, %land.rhs.314 ]
  %land.ext319 = zext i1 %180 to i32
  %cmp320 = icmp ne i32 %land.ext319, 0
  %conv321 = zext i1 %cmp320 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i32 %conv321)
  %181 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %182 = load i32, i32* %writable, align 4
  %tobool322 = icmp ne i32 %182, 0
  br i1 %tobool322, label %land.rhs.323, label %land.end.327

land.rhs.323:                                     ; preds = %land.end.318
  %183 = load i32, i32* %ac, align 4
  %tobool324 = icmp ne i32 %183, 0
  %lnot325 = xor i1 %tobool324, true
  br label %land.end.327

land.end.327:                                     ; preds = %land.rhs.323, %land.end.318
  %184 = phi i1 [ false, %land.end.318 ], [ %lnot325, %land.rhs.323 ]
  %land.ext328 = zext i1 %184 to i32
  %cmp329 = icmp ne i32 %land.ext328, 0
  %conv330 = zext i1 %cmp329 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %181, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i32 %conv330)
  %185 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %186 = load i32, i32* %writable, align 4
  %tobool331 = icmp ne i32 %186, 0
  br i1 %tobool331, label %land.rhs.332, label %land.end.334

land.rhs.332:                                     ; preds = %land.end.327
  %187 = load i32, i32* %sel, align 4
  %tobool333 = icmp ne i32 %187, 0
  br label %land.end.334

land.end.334:                                     ; preds = %land.rhs.332, %land.end.327
  %188 = phi i1 [ false, %land.end.327 ], [ %tobool333, %land.rhs.332 ]
  %land.ext335 = zext i1 %188 to i32
  %cmp336 = icmp ne i32 %land.ext335, 0
  %conv337 = zext i1 %cmp336 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %185, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i32 %conv337)
  %189 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %190 = load i32, i32* %writable, align 4
  %tobool338 = icmp ne i32 %190, 0
  br i1 %tobool338, label %land.lhs.true.339, label %land.end.347

land.lhs.true.339:                                ; preds = %land.end.334
  %191 = load i32, i32* %children, align 4
  %tobool340 = icmp ne i32 %191, 0
  br i1 %tobool340, label %land.end.347, label %land.lhs.true.341

land.lhs.true.341:                                ; preds = %land.lhs.true.339
  %192 = load i32, i32* %fs, align 4
  %tobool342 = icmp ne i32 %192, 0
  br i1 %tobool342, label %land.end.347, label %land.rhs.343

land.rhs.343:                                     ; preds = %land.lhs.true.341
  %193 = load i32, i32* %alpha, align 4
  %tobool344 = icmp ne i32 %193, 0
  %lnot345 = xor i1 %tobool344, true
  br label %land.end.347

land.end.347:                                     ; preds = %land.rhs.343, %land.lhs.true.341, %land.lhs.true.339, %land.end.334
  %194 = phi i1 [ false, %land.lhs.true.341 ], [ false, %land.lhs.true.339 ], [ false, %land.end.334 ], [ %lnot345, %land.rhs.343 ]
  %land.ext348 = zext i1 %194 to i32
  %cmp349 = icmp ne i32 %land.ext348, 0
  %conv350 = zext i1 %cmp349 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %189, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i32 %conv350)
  %195 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %196 = load i32, i32* %writable, align 4
  %tobool351 = icmp ne i32 %196, 0
  br i1 %tobool351, label %land.lhs.true.352, label %land.end.358

land.lhs.true.352:                                ; preds = %land.end.347
  %197 = load i32, i32* %children, align 4
  %tobool353 = icmp ne i32 %197, 0
  br i1 %tobool353, label %land.end.358, label %land.lhs.true.354

land.lhs.true.354:                                ; preds = %land.lhs.true.352
  %198 = load i32, i32* %fs, align 4
  %tobool355 = icmp ne i32 %198, 0
  br i1 %tobool355, label %land.end.358, label %land.rhs.356

land.rhs.356:                                     ; preds = %land.lhs.true.354
  %199 = load i32, i32* %alpha, align 4
  %tobool357 = icmp ne i32 %199, 0
  br label %land.end.358

land.end.358:                                     ; preds = %land.rhs.356, %land.lhs.true.354, %land.lhs.true.352, %land.end.347
  %200 = phi i1 [ false, %land.lhs.true.354 ], [ false, %land.lhs.true.352 ], [ false, %land.end.347 ], [ %tobool357, %land.rhs.356 ]
  %land.ext359 = zext i1 %200 to i32
  %cmp360 = icmp ne i32 %land.ext359, 0
  %conv361 = zext i1 %cmp360 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %195, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i32 %conv361)
  %201 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %202 = load i32, i32* %can_lock_alpha, align 4
  %cmp362 = icmp ne i32 %202, 0
  %conv363 = zext i1 %cmp362 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %201, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i32 %conv363)
  %203 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %204 = load i32, i32* %lock_alpha, align 4
  %cmp364 = icmp ne i32 %204, 0
  %conv365 = zext i1 %cmp364 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %203, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i32 %conv365)
  %205 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %206 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool366 = icmp ne %struct._GimpLayer* %206, null
  br i1 %tobool366, label %land.lhs.true.367, label %land.end.377

land.lhs.true.367:                                ; preds = %land.end.358
  %207 = load i32, i32* %fs, align 4
  %tobool368 = icmp ne i32 %207, 0
  br i1 %tobool368, label %land.end.377, label %land.lhs.true.369

land.lhs.true.369:                                ; preds = %land.lhs.true.367
  %208 = load i32, i32* %ac, align 4
  %tobool370 = icmp ne i32 %208, 0
  br i1 %tobool370, label %land.end.377, label %land.lhs.true.371

land.lhs.true.371:                                ; preds = %land.lhs.true.369
  %209 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool372 = icmp ne %struct._GimpLayerMask* %209, null
  br i1 %tobool372, label %land.end.377, label %land.rhs.373

land.rhs.373:                                     ; preds = %land.lhs.true.371
  %210 = load i32, i32* %children, align 4
  %tobool374 = icmp ne i32 %210, 0
  %lnot375 = xor i1 %tobool374, true
  br label %land.end.377

land.end.377:                                     ; preds = %land.rhs.373, %land.lhs.true.371, %land.lhs.true.369, %land.lhs.true.367, %land.end.358
  %211 = phi i1 [ false, %land.lhs.true.371 ], [ false, %land.lhs.true.369 ], [ false, %land.lhs.true.367 ], [ false, %land.end.358 ], [ %lnot375, %land.rhs.373 ]
  %land.ext378 = zext i1 %211 to i32
  %cmp379 = icmp ne i32 %land.ext378, 0
  %conv380 = zext i1 %cmp379 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %205, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i32 %conv380)
  %212 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %213 = load i32, i32* %writable, align 4
  %tobool381 = icmp ne i32 %213, 0
  br i1 %tobool381, label %land.lhs.true.382, label %land.end.392

land.lhs.true.382:                                ; preds = %land.end.377
  %214 = load i32, i32* %fs, align 4
  %tobool383 = icmp ne i32 %214, 0
  br i1 %tobool383, label %land.end.392, label %land.lhs.true.384

land.lhs.true.384:                                ; preds = %land.lhs.true.382
  %215 = load i32, i32* %ac, align 4
  %tobool385 = icmp ne i32 %215, 0
  br i1 %tobool385, label %land.end.392, label %land.lhs.true.386

land.lhs.true.386:                                ; preds = %land.lhs.true.384
  %216 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool387 = icmp ne %struct._GimpLayerMask* %216, null
  br i1 %tobool387, label %land.rhs.388, label %land.end.392

land.rhs.388:                                     ; preds = %land.lhs.true.386
  %217 = load i32, i32* %children, align 4
  %tobool389 = icmp ne i32 %217, 0
  %lnot390 = xor i1 %tobool389, true
  br label %land.end.392

land.end.392:                                     ; preds = %land.rhs.388, %land.lhs.true.386, %land.lhs.true.384, %land.lhs.true.382, %land.end.377
  %218 = phi i1 [ false, %land.lhs.true.386 ], [ false, %land.lhs.true.384 ], [ false, %land.lhs.true.382 ], [ false, %land.end.377 ], [ %lnot390, %land.rhs.388 ]
  %land.ext393 = zext i1 %218 to i32
  %cmp394 = icmp ne i32 %land.ext393, 0
  %conv395 = zext i1 %cmp394 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %212, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i32 %conv395)
  %219 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %220 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool396 = icmp ne %struct._GimpLayer* %220, null
  br i1 %tobool396, label %land.lhs.true.397, label %land.end.403

land.lhs.true.397:                                ; preds = %land.end.392
  %221 = load i32, i32* %fs, align 4
  %tobool398 = icmp ne i32 %221, 0
  br i1 %tobool398, label %land.end.403, label %land.lhs.true.399

land.lhs.true.399:                                ; preds = %land.lhs.true.397
  %222 = load i32, i32* %ac, align 4
  %tobool400 = icmp ne i32 %222, 0
  br i1 %tobool400, label %land.end.403, label %land.rhs.401

land.rhs.401:                                     ; preds = %land.lhs.true.399
  %223 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool402 = icmp ne %struct._GimpLayerMask* %223, null
  br label %land.end.403

land.end.403:                                     ; preds = %land.rhs.401, %land.lhs.true.399, %land.lhs.true.397, %land.end.392
  %224 = phi i1 [ false, %land.lhs.true.399 ], [ false, %land.lhs.true.397 ], [ false, %land.end.392 ], [ %tobool402, %land.rhs.401 ]
  %land.ext404 = zext i1 %224 to i32
  %cmp405 = icmp ne i32 %land.ext404, 0
  %conv406 = zext i1 %cmp405 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %219, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i32 %conv406)
  %225 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %226 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool407 = icmp ne %struct._GimpLayer* %226, null
  br i1 %tobool407, label %land.lhs.true.408, label %land.end.414

land.lhs.true.408:                                ; preds = %land.end.403
  %227 = load i32, i32* %fs, align 4
  %tobool409 = icmp ne i32 %227, 0
  br i1 %tobool409, label %land.end.414, label %land.lhs.true.410

land.lhs.true.410:                                ; preds = %land.lhs.true.408
  %228 = load i32, i32* %ac, align 4
  %tobool411 = icmp ne i32 %228, 0
  br i1 %tobool411, label %land.end.414, label %land.rhs.412

land.rhs.412:                                     ; preds = %land.lhs.true.410
  %229 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool413 = icmp ne %struct._GimpLayerMask* %229, null
  br label %land.end.414

land.end.414:                                     ; preds = %land.rhs.412, %land.lhs.true.410, %land.lhs.true.408, %land.end.403
  %230 = phi i1 [ false, %land.lhs.true.410 ], [ false, %land.lhs.true.408 ], [ false, %land.end.403 ], [ %tobool413, %land.rhs.412 ]
  %land.ext415 = zext i1 %230 to i32
  %cmp416 = icmp ne i32 %land.ext415, 0
  %conv417 = zext i1 %cmp416 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %225, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i32 %conv417)
  %231 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %232 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool418 = icmp ne %struct._GimpLayer* %232, null
  br i1 %tobool418, label %land.lhs.true.419, label %land.end.425

land.lhs.true.419:                                ; preds = %land.end.414
  %233 = load i32, i32* %fs, align 4
  %tobool420 = icmp ne i32 %233, 0
  br i1 %tobool420, label %land.end.425, label %land.lhs.true.421

land.lhs.true.421:                                ; preds = %land.lhs.true.419
  %234 = load i32, i32* %ac, align 4
  %tobool422 = icmp ne i32 %234, 0
  br i1 %tobool422, label %land.end.425, label %land.rhs.423

land.rhs.423:                                     ; preds = %land.lhs.true.421
  %235 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool424 = icmp ne %struct._GimpLayerMask* %235, null
  br label %land.end.425

land.end.425:                                     ; preds = %land.rhs.423, %land.lhs.true.421, %land.lhs.true.419, %land.end.414
  %236 = phi i1 [ false, %land.lhs.true.421 ], [ false, %land.lhs.true.419 ], [ false, %land.end.414 ], [ %tobool424, %land.rhs.423 ]
  %land.ext426 = zext i1 %236 to i32
  %cmp427 = icmp ne i32 %land.ext426, 0
  %conv428 = zext i1 %cmp427 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %231, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i32 %conv428)
  %237 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %238 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool429 = icmp ne %struct._GimpLayer* %238, null
  br i1 %tobool429, label %land.lhs.true.430, label %land.end.436

land.lhs.true.430:                                ; preds = %land.end.425
  %239 = load i32, i32* %fs, align 4
  %tobool431 = icmp ne i32 %239, 0
  br i1 %tobool431, label %land.end.436, label %land.lhs.true.432

land.lhs.true.432:                                ; preds = %land.lhs.true.430
  %240 = load i32, i32* %ac, align 4
  %tobool433 = icmp ne i32 %240, 0
  br i1 %tobool433, label %land.end.436, label %land.rhs.434

land.rhs.434:                                     ; preds = %land.lhs.true.432
  %241 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool435 = icmp ne %struct._GimpLayerMask* %241, null
  br label %land.end.436

land.end.436:                                     ; preds = %land.rhs.434, %land.lhs.true.432, %land.lhs.true.430, %land.end.425
  %242 = phi i1 [ false, %land.lhs.true.432 ], [ false, %land.lhs.true.430 ], [ false, %land.end.425 ], [ %tobool435, %land.rhs.434 ]
  %land.ext437 = zext i1 %242 to i32
  %cmp438 = icmp ne i32 %land.ext437, 0
  %conv439 = zext i1 %cmp438 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %237, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i32 %conv439)
  %243 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %244 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool440 = icmp ne %struct._GimpLayerMask* %244, null
  br i1 %tobool440, label %land.rhs.441, label %land.end.444

land.rhs.441:                                     ; preds = %land.end.436
  %245 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call442 = call i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask* %245)
  %tobool443 = icmp ne i32 %call442, 0
  br label %land.end.444

land.end.444:                                     ; preds = %land.rhs.441, %land.end.436
  %246 = phi i1 [ false, %land.end.436 ], [ %tobool443, %land.rhs.441 ]
  %land.ext445 = zext i1 %246 to i32
  %cmp446 = icmp ne i32 %land.ext445, 0
  %conv447 = zext i1 %cmp446 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %243, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i32 %conv447)
  %247 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %248 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool448 = icmp ne %struct._GimpLayerMask* %248, null
  br i1 %tobool448, label %land.rhs.449, label %land.end.452

land.rhs.449:                                     ; preds = %land.end.444
  %249 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call450 = call i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask* %249)
  %tobool451 = icmp ne i32 %call450, 0
  br label %land.end.452

land.end.452:                                     ; preds = %land.rhs.449, %land.end.444
  %250 = phi i1 [ false, %land.end.444 ], [ %tobool451, %land.rhs.449 ]
  %land.ext453 = zext i1 %250 to i32
  %cmp454 = icmp ne i32 %land.ext453, 0
  %conv455 = zext i1 %cmp454 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %247, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i32 %conv455)
  %251 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %252 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool456 = icmp ne %struct._GimpLayerMask* %252, null
  br i1 %tobool456, label %land.rhs.457, label %land.end.462

land.rhs.457:                                     ; preds = %land.end.452
  %253 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call458 = call i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask* %253)
  %tobool459 = icmp ne i32 %call458, 0
  %lnot460 = xor i1 %tobool459, true
  br label %land.end.462

land.end.462:                                     ; preds = %land.rhs.457, %land.end.452
  %254 = phi i1 [ false, %land.end.452 ], [ %lnot460, %land.rhs.457 ]
  %land.ext463 = zext i1 %254 to i32
  %cmp464 = icmp ne i32 %land.ext463, 0
  %conv465 = zext i1 %cmp464 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %251, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i32 %conv465)
  %255 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %256 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool466 = icmp ne %struct._GimpLayer* %256, null
  br i1 %tobool466, label %land.lhs.true.467, label %land.end.473

land.lhs.true.467:                                ; preds = %land.end.462
  %257 = load i32, i32* %fs, align 4
  %tobool468 = icmp ne i32 %257, 0
  br i1 %tobool468, label %land.end.473, label %land.lhs.true.469

land.lhs.true.469:                                ; preds = %land.lhs.true.467
  %258 = load i32, i32* %ac, align 4
  %tobool470 = icmp ne i32 %258, 0
  br i1 %tobool470, label %land.end.473, label %land.rhs.471

land.rhs.471:                                     ; preds = %land.lhs.true.469
  %259 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool472 = icmp ne %struct._GimpLayerMask* %259, null
  br label %land.end.473

land.end.473:                                     ; preds = %land.rhs.471, %land.lhs.true.469, %land.lhs.true.467, %land.end.462
  %260 = phi i1 [ false, %land.lhs.true.469 ], [ false, %land.lhs.true.467 ], [ false, %land.end.462 ], [ %tobool472, %land.rhs.471 ]
  %land.ext474 = zext i1 %260 to i32
  %cmp475 = icmp ne i32 %land.ext474, 0
  %conv476 = zext i1 %cmp475 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %255, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i32 0, i32 0), i32 %conv476)
  %261 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %262 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool477 = icmp ne %struct._GimpLayer* %262, null
  br i1 %tobool477, label %land.lhs.true.478, label %land.end.484

land.lhs.true.478:                                ; preds = %land.end.473
  %263 = load i32, i32* %fs, align 4
  %tobool479 = icmp ne i32 %263, 0
  br i1 %tobool479, label %land.end.484, label %land.lhs.true.480

land.lhs.true.480:                                ; preds = %land.lhs.true.478
  %264 = load i32, i32* %ac, align 4
  %tobool481 = icmp ne i32 %264, 0
  br i1 %tobool481, label %land.end.484, label %land.rhs.482

land.rhs.482:                                     ; preds = %land.lhs.true.480
  %265 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool483 = icmp ne %struct._GimpLayerMask* %265, null
  br label %land.end.484

land.end.484:                                     ; preds = %land.rhs.482, %land.lhs.true.480, %land.lhs.true.478, %land.end.473
  %266 = phi i1 [ false, %land.lhs.true.480 ], [ false, %land.lhs.true.478 ], [ false, %land.end.473 ], [ %tobool483, %land.rhs.482 ]
  %land.ext485 = zext i1 %266 to i32
  %cmp486 = icmp ne i32 %land.ext485, 0
  %conv487 = zext i1 %cmp486 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %261, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i32 0, i32 0), i32 %conv487)
  %267 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %268 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool488 = icmp ne %struct._GimpLayer* %268, null
  br i1 %tobool488, label %land.lhs.true.489, label %land.end.495

land.lhs.true.489:                                ; preds = %land.end.484
  %269 = load i32, i32* %fs, align 4
  %tobool490 = icmp ne i32 %269, 0
  br i1 %tobool490, label %land.end.495, label %land.lhs.true.491

land.lhs.true.491:                                ; preds = %land.lhs.true.489
  %270 = load i32, i32* %ac, align 4
  %tobool492 = icmp ne i32 %270, 0
  br i1 %tobool492, label %land.end.495, label %land.rhs.493

land.rhs.493:                                     ; preds = %land.lhs.true.491
  %271 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool494 = icmp ne %struct._GimpLayerMask* %271, null
  br label %land.end.495

land.end.495:                                     ; preds = %land.rhs.493, %land.lhs.true.491, %land.lhs.true.489, %land.end.484
  %272 = phi i1 [ false, %land.lhs.true.491 ], [ false, %land.lhs.true.489 ], [ false, %land.end.484 ], [ %tobool494, %land.rhs.493 ]
  %land.ext496 = zext i1 %272 to i32
  %cmp497 = icmp ne i32 %land.ext496, 0
  %conv498 = zext i1 %cmp497 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %267, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0), i32 %conv498)
  %273 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %274 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool499 = icmp ne %struct._GimpLayer* %274, null
  br i1 %tobool499, label %land.lhs.true.500, label %land.end.506

land.lhs.true.500:                                ; preds = %land.end.495
  %275 = load i32, i32* %fs, align 4
  %tobool501 = icmp ne i32 %275, 0
  br i1 %tobool501, label %land.end.506, label %land.lhs.true.502

land.lhs.true.502:                                ; preds = %land.lhs.true.500
  %276 = load i32, i32* %ac, align 4
  %tobool503 = icmp ne i32 %276, 0
  br i1 %tobool503, label %land.end.506, label %land.rhs.504

land.rhs.504:                                     ; preds = %land.lhs.true.502
  %277 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool505 = icmp ne %struct._GimpLayerMask* %277, null
  br label %land.end.506

land.end.506:                                     ; preds = %land.rhs.504, %land.lhs.true.502, %land.lhs.true.500, %land.end.495
  %278 = phi i1 [ false, %land.lhs.true.502 ], [ false, %land.lhs.true.500 ], [ false, %land.end.495 ], [ %tobool505, %land.rhs.504 ]
  %land.ext507 = zext i1 %278 to i32
  %cmp508 = icmp ne i32 %land.ext507, 0
  %conv509 = zext i1 %cmp508 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %273, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i32 0, i32 0), i32 %conv509)
  %279 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %280 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool510 = icmp ne %struct._GimpLayer* %280, null
  br i1 %tobool510, label %land.lhs.true.511, label %land.end.517

land.lhs.true.511:                                ; preds = %land.end.506
  %281 = load i32, i32* %fs, align 4
  %tobool512 = icmp ne i32 %281, 0
  br i1 %tobool512, label %land.end.517, label %land.rhs.513

land.rhs.513:                                     ; preds = %land.lhs.true.511
  %282 = load i32, i32* %ac, align 4
  %tobool514 = icmp ne i32 %282, 0
  %lnot515 = xor i1 %tobool514, true
  br label %land.end.517

land.end.517:                                     ; preds = %land.rhs.513, %land.lhs.true.511, %land.end.506
  %283 = phi i1 [ false, %land.lhs.true.511 ], [ false, %land.end.506 ], [ %lnot515, %land.rhs.513 ]
  %land.ext518 = zext i1 %283 to i32
  %cmp519 = icmp ne i32 %land.ext518, 0
  %conv520 = zext i1 %cmp519 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %279, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 %conv520)
  %284 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %285 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool521 = icmp ne %struct._GimpLayer* %285, null
  br i1 %tobool521, label %land.lhs.true.522, label %land.end.528

land.lhs.true.522:                                ; preds = %land.end.517
  %286 = load i32, i32* %fs, align 4
  %tobool523 = icmp ne i32 %286, 0
  br i1 %tobool523, label %land.end.528, label %land.rhs.524

land.rhs.524:                                     ; preds = %land.lhs.true.522
  %287 = load i32, i32* %ac, align 4
  %tobool525 = icmp ne i32 %287, 0
  %lnot526 = xor i1 %tobool525, true
  br label %land.end.528

land.end.528:                                     ; preds = %land.rhs.524, %land.lhs.true.522, %land.end.517
  %288 = phi i1 [ false, %land.lhs.true.522 ], [ false, %land.end.517 ], [ %lnot526, %land.rhs.524 ]
  %land.ext529 = zext i1 %288 to i32
  %cmp530 = icmp ne i32 %land.ext529, 0
  %conv531 = zext i1 %cmp530 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %284, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 %conv531)
  %289 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %290 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool532 = icmp ne %struct._GimpLayer* %290, null
  br i1 %tobool532, label %land.lhs.true.533, label %land.end.539

land.lhs.true.533:                                ; preds = %land.end.528
  %291 = load i32, i32* %fs, align 4
  %tobool534 = icmp ne i32 %291, 0
  br i1 %tobool534, label %land.end.539, label %land.rhs.535

land.rhs.535:                                     ; preds = %land.lhs.true.533
  %292 = load i32, i32* %ac, align 4
  %tobool536 = icmp ne i32 %292, 0
  %lnot537 = xor i1 %tobool536, true
  br label %land.end.539

land.end.539:                                     ; preds = %land.rhs.535, %land.lhs.true.533, %land.end.528
  %293 = phi i1 [ false, %land.lhs.true.533 ], [ false, %land.end.528 ], [ %lnot537, %land.rhs.535 ]
  %land.ext540 = zext i1 %293 to i32
  %cmp541 = icmp ne i32 %land.ext540, 0
  %conv542 = zext i1 %cmp541 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %289, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32 %conv542)
  %294 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %295 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool543 = icmp ne %struct._GimpLayer* %295, null
  br i1 %tobool543, label %land.lhs.true.544, label %land.end.550

land.lhs.true.544:                                ; preds = %land.end.539
  %296 = load i32, i32* %fs, align 4
  %tobool545 = icmp ne i32 %296, 0
  br i1 %tobool545, label %land.end.550, label %land.rhs.546

land.rhs.546:                                     ; preds = %land.lhs.true.544
  %297 = load i32, i32* %ac, align 4
  %tobool547 = icmp ne i32 %297, 0
  %lnot548 = xor i1 %tobool547, true
  br label %land.end.550

land.end.550:                                     ; preds = %land.rhs.546, %land.lhs.true.544, %land.end.539
  %298 = phi i1 [ false, %land.lhs.true.544 ], [ false, %land.end.539 ], [ %lnot548, %land.rhs.546 ]
  %land.ext551 = zext i1 %298 to i32
  %cmp552 = icmp ne i32 %land.ext551, 0
  %conv553 = zext i1 %cmp552 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %294, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i32 %conv553)
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage*) #1

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #1

declare i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer*) #1

declare i32 @gimp_layer_can_lock_alpha(%struct._GimpLayer*) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare %struct._GList* @gimp_item_get_container_iter(%struct._GimpItem*) #1

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #1

declare i32 @gimp_item_is_text_layer(%struct._GimpItem*) #1

declare void @gimp_action_group_set_action_visible(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #1

declare void @gimp_action_group_set_action_label(%struct._GimpActionGroup*, i8*, i8*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

declare i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask*) #1

declare i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask*) #1

declare i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask*) #1

declare void @layers_text_tool_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_edit_attributes_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_new_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_new_last_vals_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_new_from_visible_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_new_group_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_duplicate_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_delete_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_raise_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_raise_to_top_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_lower_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_lower_to_bottom_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_anchor_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_merge_down_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_merge_group_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @image_merge_layers_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @image_flatten_image_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_text_discard_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_text_to_vectors_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_text_along_vectors_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_resize_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_resize_to_image_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_scale_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_crop_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_mask_add_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_alpha_add_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_alpha_remove_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_lock_alpha_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_mask_edit_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_mask_show_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @layers_mask_disable_cmd_callback(%struct._GtkAction*, i8*) #1

declare i8* @gimp_action_group_get_action_tooltip(%struct._GimpActionGroup*, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @gimp_get_mod_string(i32) #1

declare void @gimp_action_group_set_action_tooltip(%struct._GimpActionGroup*, i8*, i8*) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
