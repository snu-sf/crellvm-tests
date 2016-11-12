; ModuleID = './app/actions/vectors-actions.bc'
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
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpVectors = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque

@.str = private unnamed_addr constant [15 x i8] c"vectors-action\00", align 1
@vectors_actions = internal constant [18 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_vectors_tool_cmd_callback to void ()*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_edit_attributes_cmd_callback to void ()*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_new_cmd_callback to void ()*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_new_last_vals_cmd_callback to void ()*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_duplicate_cmd_callback to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_delete_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_merge_visible_cmd_callback to void ()*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_raise_cmd_callback to void ()*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_raise_to_top_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_lower_cmd_callback to void ()*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_lower_to_bottom_cmd_callback to void ()*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.72, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_stroke_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.77, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_stroke_last_vals_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_copy_cmd_callback to void ()*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_paste_cmd_callback to void ()*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_export_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.86, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_import_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i32 0, i32 0) }], align 16
@vectors_toggle_actions = internal constant [3 x %struct._GimpToggleActionEntry] [%struct._GimpToggleActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_visible_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.92, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_linked_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.95, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @vectors_lock_content_cmd_callback to void ()*), i32 0, i8* null }], align 16
@vectors_to_selection_actions = internal constant [5 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.98, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i32 0, i32 0), i32 2, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.100, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.103, i32 0, i32 0), i32 2, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.100, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.105, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.106, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.107, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.109, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.110, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.111, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.113, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.114, i32 0, i32 0), i32 3, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.115, i32 0, i32 0) }], align 16
@vectors_selection_to_vectors_actions = internal constant [3 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.117, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.118, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.116, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.119, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.118, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.116, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.120, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.121, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.116, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"vectors-path-tool\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"vectors-edit-attributes\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"vectors-new\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"vectors-new-last-values\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"vectors-duplicate\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"vectors-delete\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"vectors-merge-visible\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"vectors-raise\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"vectors-raise-to-top\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"vectors-lower\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"vectors-lower-to-bottom\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"vectors-copy\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"vectors-paste\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"vectors-export\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"vectors-import\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"vectors-visible\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"vectors-linked\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"vectors-lock-content\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"vectors-selection-to-vectors\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"vectors-selection-to-vectors-short\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"vectors-selection-to-vectors-advanced\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"vectors-stroke\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"vectors-stroke-last-values\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"vectors-selection-replace\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"vectors-selection-from-vectors\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"vectors-selection-add\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"vectors-selection-subtract\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"vectors-selection-intersect\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"vectors-popup\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"gimp-paths\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"Paths Menu\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"gimp-path-dialog\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"gimp-tool-path\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"Path _Tool\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"gimp-tool-vectors\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"_Edit Path Attributes...\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Edit path attributes\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"gimp-path-edit\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"_New Path...\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"Create a new path...\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"gimp-path-new\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"_New Path with last values\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"Create a new path with last used values\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"gimp-duplicate\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"D_uplicate Path\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"Duplicate this path\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"gimp-path-duplicate\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"_Delete Path\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"Delete this path\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"gimp-path-delete\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"Merge _Visible Paths\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"gimp-path-merge-visible\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"gtk-go-up\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"_Raise Path\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"Raise this path\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"gimp-path-raise\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"gtk-goto-top\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"Raise Path to _Top\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"Raise this path to the top\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"gimp-path-raise-to-top\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"gtk-go-down\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"_Lower Path\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"Lower this path\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"gimp-path-lower\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"gtk-goto-bottom\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"Lower Path to _Bottom\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"Lower this path to the bottom\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"gimp-path-lower-to-bottom\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"gimp-path-stroke\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"Stro_ke Path...\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"Paint along the path\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"Stro_ke Path\00", align 1
@.str.77 = private unnamed_addr constant [38 x i8] c"Paint along the path with last values\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"gtk-copy\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"Co_py Path\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"gimp-path-copy\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"gtk-paste\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"Paste Pat_h\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"gimp-path-paste\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"E_xport Path...\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"gimp-path-export\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"I_mport Path...\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"gimp-path-import\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"gimp-visible\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"_Visible\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"gimp-path-visible\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"gimp-linked\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"_Linked\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"gimp-path-linked\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"L_ock strokes\00", align 1
@.str.97 = private unnamed_addr constant [23 x i8] c"gimp-selection-replace\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"Path to Sele_ction\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"Path to selection\00", align 1
@.str.100 = private unnamed_addr constant [28 x i8] c"gimp-path-selection-replace\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"Fr_om Path\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"<shift>V\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"Replace selection with path\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"gimp-selection-add\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"_Add to Selection\00", align 1
@.str.106 = private unnamed_addr constant [22 x i8] c"Add path to selection\00", align 1
@.str.107 = private unnamed_addr constant [24 x i8] c"gimp-path-selection-add\00", align 1
@.str.108 = private unnamed_addr constant [24 x i8] c"gimp-selection-subtract\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"_Subtract from Selection\00", align 1
@.str.110 = private unnamed_addr constant [29 x i8] c"Subtract path from selection\00", align 1
@.str.111 = private unnamed_addr constant [29 x i8] c"gimp-path-selection-subtract\00", align 1
@.str.112 = private unnamed_addr constant [25 x i8] c"gimp-selection-intersect\00", align 1
@.str.113 = private unnamed_addr constant [26 x i8] c"_Intersect with Selection\00", align 1
@.str.114 = private unnamed_addr constant [30 x i8] c"Intersect path with selection\00", align 1
@.str.115 = private unnamed_addr constant [30 x i8] c"gimp-path-selection-intersect\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"gimp-selection-to-path\00", align 1
@.str.117 = private unnamed_addr constant [19 x i8] c"Selecti_on to Path\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"Selection to path\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"To _Path\00", align 1
@.str.120 = private unnamed_addr constant [30 x i8] c"Selection to Path (_Advanced)\00", align 1
@.str.121 = private unnamed_addr constant [17 x i8] c"Advanced options\00", align 1

; Function Attrs: nounwind uwtable
define void @vectors_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([18 x %struct._GimpActionEntry], [18 x %struct._GimpActionEntry]* @vectors_actions, i32 0, i32 0), i32 18)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._GimpToggleActionEntry* getelementptr inbounds ([3 x %struct._GimpToggleActionEntry], [3 x %struct._GimpToggleActionEntry]* @vectors_toggle_actions, i32 0, i32 0), i32 3)
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([5 x %struct._GimpEnumActionEntry], [5 x %struct._GimpEnumActionEntry]* @vectors_to_selection_actions, i32 0, i32 0), i32 5, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @vectors_to_selection_cmd_callback to void ()*))
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([3 x %struct._GimpEnumActionEntry], [3 x %struct._GimpEnumActionEntry]* @vectors_selection_to_vectors_actions, i32 0, i32 0), i32 3, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @vectors_selection_to_vectors_cmd_callback to void ()*))
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup*, i8*, %struct._GimpToggleActionEntry*, i32) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @vectors_to_selection_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @vectors_selection_to_vectors_cmd_callback(%struct._GtkAction*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @vectors_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %n_vectors = alloca i32, align 4
  %mask_empty = alloca i32, align 4
  %visible = alloca i32, align 4
  %linked = alloca i32, align 4
  %locked = alloca i32, align 4
  %can_lock = alloca i32, align 4
  %dr_writable = alloca i32, align 4
  %dr_children = alloca i32, align 4
  %next = alloca %struct._GList*, align 8
  %prev = alloca %struct._GList*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %vectors_list = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %item29 = alloca %struct._GimpItem*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  store %struct._GimpVectors* null, %struct._GimpVectors** %vectors, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  store i32 0, i32* %n_vectors, align 4
  store i32 1, i32* %mask_empty, align 4
  store i32 0, i32* %visible, align 4
  store i32 0, i32* %linked, align 4
  store i32 0, i32* %locked, align 4
  store i32 0, i32* %can_lock, align 4
  store i32 0, i32* %dr_writable, align 4
  store i32 0, i32* %dr_children, align 4
  store %struct._GList* null, %struct._GList** %next, align 8
  store %struct._GList* null, %struct._GList** %prev, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.then, label %if.end.41

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call i32 @gimp_image_get_n_vectors(%struct._GimpImage* %2)
  store i32 %call1, i32* %n_vectors, align 4
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %3)
  %call3 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call2)
  store i32 %call3, i32* %mask_empty, align 4
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %4)
  store %struct._GimpVectors* %call4, %struct._GimpVectors** %vectors, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool5 = icmp ne %struct._GimpVectors* %5, null
  br i1 %tobool5, label %if.then.6, label %if.end.25

if.then.6:                                        ; preds = %if.then
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %7 = bitcast %struct._GimpVectors* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  store %struct._GimpItem* %8, %struct._GimpItem** %item, align 8
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call9 = call i32 @gimp_item_get_visible(%struct._GimpItem* %9)
  store i32 %call9, i32* %visible, align 4
  %10 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call10 = call i32 @gimp_item_get_linked(%struct._GimpItem* %10)
  store i32 %call10, i32* %linked, align 4
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call11 = call i32 @gimp_item_get_lock_content(%struct._GimpItem* %11)
  store i32 %call11, i32* %locked, align 4
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call12 = call i32 @gimp_item_can_lock_content(%struct._GimpItem* %12)
  store i32 %call12, i32* %can_lock, align 4
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call13 = call %struct._GList* @gimp_item_get_container_iter(%struct._GimpItem* %13)
  store %struct._GList* %call13, %struct._GList** %vectors_list, align 8
  %14 = load %struct._GList*, %struct._GList** %vectors_list, align 8
  %15 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %16 = bitcast %struct._GimpVectors* %15 to i8*
  %call14 = call %struct._GList* @g_list_find(%struct._GList* %14, i8* %16)
  store %struct._GList* %call14, %struct._GList** %list, align 8
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool15 = icmp ne %struct._GList* %17, null
  br i1 %tobool15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.6
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %18, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.16
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %prev18 = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 2
  %20 = load %struct._GList*, %struct._GList** %prev18, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %20, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %prev, align 8
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool19 = icmp ne %struct._GList* %21, null
  br i1 %tobool19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %cond.end
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %next21 = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %next21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._GList* [ %23, %cond.true.20 ], [ null, %cond.false.22 ]
  store %struct._GList* %cond24, %struct._GList** %next, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.23, %if.then.6
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call26 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %24)
  store %struct._GimpDrawable* %call26, %struct._GimpDrawable** %drawable, align 8
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool27 = icmp ne %struct._GimpDrawable* %25, null
  br i1 %tobool27, label %if.then.28, label %if.end.40

if.then.28:                                       ; preds = %if.end.25
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #3
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call30)
  %28 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  store %struct._GimpItem* %28, %struct._GimpItem** %item29, align 8
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item29, align 8
  %call32 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %29)
  %tobool33 = icmp ne i32 %call32, 0
  %lnot = xor i1 %tobool33, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %dr_writable, align 4
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item29, align 8
  %31 = bitcast %struct._GimpItem* %30 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_viewable_get_type() #3
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call34)
  %32 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpViewable*
  %call36 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %32)
  %tobool37 = icmp ne %struct._GimpContainer* %call36, null
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.28
  store i32 1, i32* %dr_children, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.then.28
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.25
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %entry
  %33 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %34 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp = icmp ne %struct._GimpVectors* %34, null
  %conv = zext i1 %cmp to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 %conv)
  %35 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %36 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp42 = icmp ne %struct._GimpVectors* %36, null
  %conv43 = zext i1 %cmp42 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32 %conv43)
  %37 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp44 = icmp ne %struct._GimpImage* %38, null
  %conv45 = zext i1 %cmp44 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %conv45)
  %39 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp46 = icmp ne %struct._GimpImage* %40, null
  %conv47 = zext i1 %cmp46 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i32 %conv47)
  %41 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %42 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp48 = icmp ne %struct._GimpVectors* %42, null
  %conv49 = zext i1 %cmp48 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %conv49)
  %43 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %44 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp50 = icmp ne %struct._GimpVectors* %44, null
  %conv51 = zext i1 %cmp50 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 %conv51)
  %45 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %46 = load i32, i32* %n_vectors, align 4
  %cmp52 = icmp sgt i32 %46, 1
  %conv53 = zext i1 %cmp52 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  %conv55 = zext i1 %cmp54 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %conv55)
  %47 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %48 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool56 = icmp ne %struct._GimpVectors* %48, null
  br i1 %tobool56, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.41
  %49 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool57 = icmp ne %struct._GList* %49, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.41
  %50 = phi i1 [ false, %if.end.41 ], [ %tobool57, %land.rhs ]
  %land.ext = zext i1 %50 to i32
  %cmp58 = icmp ne i32 %land.ext, 0
  %conv59 = zext i1 %cmp58 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %conv59)
  %51 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %52 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool60 = icmp ne %struct._GimpVectors* %52, null
  br i1 %tobool60, label %land.rhs.61, label %land.end.63

land.rhs.61:                                      ; preds = %land.end
  %53 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool62 = icmp ne %struct._GList* %53, null
  br label %land.end.63

land.end.63:                                      ; preds = %land.rhs.61, %land.end
  %54 = phi i1 [ false, %land.end ], [ %tobool62, %land.rhs.61 ]
  %land.ext64 = zext i1 %54 to i32
  %cmp65 = icmp ne i32 %land.ext64, 0
  %conv66 = zext i1 %cmp65 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 %conv66)
  %55 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %56 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool67 = icmp ne %struct._GimpVectors* %56, null
  br i1 %tobool67, label %land.rhs.68, label %land.end.70

land.rhs.68:                                      ; preds = %land.end.63
  %57 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool69 = icmp ne %struct._GList* %57, null
  br label %land.end.70

land.end.70:                                      ; preds = %land.rhs.68, %land.end.63
  %58 = phi i1 [ false, %land.end.63 ], [ %tobool69, %land.rhs.68 ]
  %land.ext71 = zext i1 %58 to i32
  %cmp72 = icmp ne i32 %land.ext71, 0
  %conv73 = zext i1 %cmp72 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %conv73)
  %59 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %60 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool74 = icmp ne %struct._GimpVectors* %60, null
  br i1 %tobool74, label %land.rhs.75, label %land.end.77

land.rhs.75:                                      ; preds = %land.end.70
  %61 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool76 = icmp ne %struct._GList* %61, null
  br label %land.end.77

land.end.77:                                      ; preds = %land.rhs.75, %land.end.70
  %62 = phi i1 [ false, %land.end.70 ], [ %tobool76, %land.rhs.75 ]
  %land.ext78 = zext i1 %62 to i32
  %cmp79 = icmp ne i32 %land.ext78, 0
  %conv80 = zext i1 %cmp79 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i32 %conv80)
  %63 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %64 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp81 = icmp ne %struct._GimpVectors* %64, null
  %conv82 = zext i1 %cmp81 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 %conv82)
  %65 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp83 = icmp ne %struct._GimpImage* %66, null
  %conv84 = zext i1 %cmp83 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 %conv84)
  %67 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %68 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp85 = icmp ne %struct._GimpVectors* %68, null
  %conv86 = zext i1 %cmp85 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 %conv86)
  %69 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %70 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp87 = icmp ne %struct._GimpImage* %70, null
  %conv88 = zext i1 %cmp87 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 %conv88)
  %71 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %72 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp89 = icmp ne %struct._GimpVectors* %72, null
  %conv90 = zext i1 %cmp89 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32 %conv90)
  %73 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %74 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp91 = icmp ne %struct._GimpVectors* %74, null
  %conv92 = zext i1 %cmp91 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 %conv92)
  %75 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %76 = load i32, i32* %can_lock, align 4
  %cmp93 = icmp ne i32 %76, 0
  %conv94 = zext i1 %cmp93 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i32 %conv94)
  %77 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %78 = load i32, i32* %visible, align 4
  %cmp95 = icmp ne i32 %78, 0
  %conv96 = zext i1 %cmp95 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32 %conv96)
  %79 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %80 = load i32, i32* %linked, align 4
  %cmp97 = icmp ne i32 %80, 0
  %conv98 = zext i1 %cmp97 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 %conv98)
  %81 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %82 = load i32, i32* %locked, align 4
  %cmp99 = icmp ne i32 %82, 0
  %conv100 = zext i1 %cmp99 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i32 %conv100)
  %83 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %84 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool101 = icmp ne %struct._GimpImage* %84, null
  br i1 %tobool101, label %land.rhs.102, label %land.end.106

land.rhs.102:                                     ; preds = %land.end.77
  %85 = load i32, i32* %mask_empty, align 4
  %tobool103 = icmp ne i32 %85, 0
  %lnot104 = xor i1 %tobool103, true
  br label %land.end.106

land.end.106:                                     ; preds = %land.rhs.102, %land.end.77
  %86 = phi i1 [ false, %land.end.77 ], [ %lnot104, %land.rhs.102 ]
  %land.ext107 = zext i1 %86 to i32
  %cmp108 = icmp ne i32 %land.ext107, 0
  %conv109 = zext i1 %cmp108 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i32 %conv109)
  %87 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %88 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool110 = icmp ne %struct._GimpImage* %88, null
  br i1 %tobool110, label %land.rhs.111, label %land.end.115

land.rhs.111:                                     ; preds = %land.end.106
  %89 = load i32, i32* %mask_empty, align 4
  %tobool112 = icmp ne i32 %89, 0
  %lnot113 = xor i1 %tobool112, true
  br label %land.end.115

land.end.115:                                     ; preds = %land.rhs.111, %land.end.106
  %90 = phi i1 [ false, %land.end.106 ], [ %lnot113, %land.rhs.111 ]
  %land.ext116 = zext i1 %90 to i32
  %cmp117 = icmp ne i32 %land.ext116, 0
  %conv118 = zext i1 %cmp117 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0), i32 %conv118)
  %91 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %92 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool119 = icmp ne %struct._GimpImage* %92, null
  br i1 %tobool119, label %land.rhs.120, label %land.end.124

land.rhs.120:                                     ; preds = %land.end.115
  %93 = load i32, i32* %mask_empty, align 4
  %tobool121 = icmp ne i32 %93, 0
  %lnot122 = xor i1 %tobool121, true
  br label %land.end.124

land.end.124:                                     ; preds = %land.rhs.120, %land.end.115
  %94 = phi i1 [ false, %land.end.115 ], [ %lnot122, %land.rhs.120 ]
  %land.ext125 = zext i1 %94 to i32
  %cmp126 = icmp ne i32 %land.ext125, 0
  %conv127 = zext i1 %cmp126 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0), i32 %conv127)
  %95 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %96 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool128 = icmp ne %struct._GimpVectors* %96, null
  br i1 %tobool128, label %land.lhs.true, label %land.end.134

land.lhs.true:                                    ; preds = %land.end.124
  %97 = load i32, i32* %dr_writable, align 4
  %tobool129 = icmp ne i32 %97, 0
  br i1 %tobool129, label %land.rhs.130, label %land.end.134

land.rhs.130:                                     ; preds = %land.lhs.true
  %98 = load i32, i32* %dr_children, align 4
  %tobool131 = icmp ne i32 %98, 0
  %lnot132 = xor i1 %tobool131, true
  br label %land.end.134

land.end.134:                                     ; preds = %land.rhs.130, %land.lhs.true, %land.end.124
  %99 = phi i1 [ false, %land.lhs.true ], [ false, %land.end.124 ], [ %lnot132, %land.rhs.130 ]
  %land.ext135 = zext i1 %99 to i32
  %cmp136 = icmp ne i32 %land.ext135, 0
  %conv137 = zext i1 %cmp136 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 %conv137)
  %100 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %101 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool138 = icmp ne %struct._GimpVectors* %101, null
  br i1 %tobool138, label %land.lhs.true.139, label %land.end.145

land.lhs.true.139:                                ; preds = %land.end.134
  %102 = load i32, i32* %dr_writable, align 4
  %tobool140 = icmp ne i32 %102, 0
  br i1 %tobool140, label %land.rhs.141, label %land.end.145

land.rhs.141:                                     ; preds = %land.lhs.true.139
  %103 = load i32, i32* %dr_children, align 4
  %tobool142 = icmp ne i32 %103, 0
  %lnot143 = xor i1 %tobool142, true
  br label %land.end.145

land.end.145:                                     ; preds = %land.rhs.141, %land.lhs.true.139, %land.end.134
  %104 = phi i1 [ false, %land.lhs.true.139 ], [ false, %land.end.134 ], [ %lnot143, %land.rhs.141 ]
  %land.ext146 = zext i1 %104 to i32
  %cmp147 = icmp ne i32 %land.ext146, 0
  %conv148 = zext i1 %cmp147 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), i32 %conv148)
  %105 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %106 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp149 = icmp ne %struct._GimpVectors* %106, null
  %conv150 = zext i1 %cmp149 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), i32 %conv150)
  %107 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %108 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp151 = icmp ne %struct._GimpVectors* %108, null
  %conv152 = zext i1 %cmp151 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0), i32 %conv152)
  %109 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %110 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp153 = icmp ne %struct._GimpVectors* %110, null
  %conv154 = zext i1 %cmp153 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), i32 %conv154)
  %111 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %112 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp155 = icmp ne %struct._GimpVectors* %112, null
  %conv156 = zext i1 %cmp155 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i32 %conv156)
  %113 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %114 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp157 = icmp ne %struct._GimpVectors* %114, null
  %conv158 = zext i1 %cmp157 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i32 0, i32 0), i32 %conv158)
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare i32 @gimp_image_get_n_vectors(%struct._GimpImage*) #1

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #1

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #1

declare i32 @gimp_item_get_lock_content(%struct._GimpItem*) #1

declare i32 @gimp_item_can_lock_content(%struct._GimpItem*) #1

declare %struct._GList* @gimp_item_get_container_iter(%struct._GimpItem*) #1

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #1

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

declare void @vectors_vectors_tool_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_edit_attributes_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_new_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_new_last_vals_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_duplicate_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_delete_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_merge_visible_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_raise_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_raise_to_top_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_lower_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_lower_to_bottom_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_stroke_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_stroke_last_vals_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_copy_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_paste_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_export_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_import_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_visible_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_linked_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @vectors_lock_content_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
