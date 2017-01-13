; ModuleID = './app/actions/drawable-actions.bc'
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
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
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
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpLayer = type opaque

@.str = private unnamed_addr constant [16 x i8] c"drawable-action\00", align 1
@drawable_actions = internal constant [4 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @drawable_equalize_cmd_callback to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @drawable_invert_cmd_callback to void ()*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @drawable_levels_stretch_cmd_callback to void ()*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @drawable_offset_cmd_callback to void ()*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0) }], align 16
@drawable_toggle_actions = internal constant [3 x %struct._GimpToggleActionEntry] [%struct._GimpToggleActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @drawable_visible_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @drawable_linked_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @drawable_lock_content_cmd_callback to void ()*), i32 0, i8* null }], align 16
@drawable_flip_actions = internal constant [2 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0) }], align 16
@drawable_rotate_actions = internal constant [3 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.54, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i32 0, i32 0), i32 2, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"drawable-rotate-90\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"drawable-rotate-180\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"drawable-rotate-270\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"drawable-equalize\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"drawable-invert\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"drawable-levels-stretch\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"drawable-offset\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"drawable-visible\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"drawable-linked\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"drawable-lock-content\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"drawable-flip-horizontal\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"drawable-flip-vertical\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"_Equalize\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Automatic contrast enhancement\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"gimp-layer-equalize\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"gimp-invert\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"In_vert\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Invert the colors\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"gimp-layer-invert\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"_White Balance\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Automatic white balance correction\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"gimp-layer-white-balance\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"_Offset...\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"<primary><shift>O\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"Shift the pixels, optionally wrapping them at the borders\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"gimp-layer-offset\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"gimp-visible\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"_Visible\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Toggle visibility\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"gimp-layer-visible\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"gimp-linked\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"_Linked\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Toggle the linked state\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"gimp-layer-linked\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"L_ock pixels\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"Keep the pixels on this drawable from being modified\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"gimp-flip-horizontal\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"Flip _Horizontally\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"Flip horizontally\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"gimp-layer-flip-horizontal\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"gimp-flip-vertical\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"Flip _Vertically\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"Flip vertically\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"gimp-layer-flip-vertical\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"gimp-rotate-90\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"Rotate 90\C2\B0 _clockwise\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"Rotate 90 degrees to the right\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"gimp-layer-rotate-90\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"gimp-rotate-180\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"Rotate _180\C2\B0\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"Turn upside-down\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"gimp-layer-rotate-180\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"gimp-rotate-270\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"Rotate 90\C2\B0 counter-clock_wise\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"Rotate 90 degrees to the left\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"gimp-layer-rotate-270\00", align 1

; Function Attrs: nounwind uwtable
define void @drawable_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([4 x %struct._GimpActionEntry], [4 x %struct._GimpActionEntry]* @drawable_actions, i32 0, i32 0), i32 4)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GimpToggleActionEntry* getelementptr inbounds ([3 x %struct._GimpToggleActionEntry], [3 x %struct._GimpToggleActionEntry]* @drawable_toggle_actions, i32 0, i32 0), i32 3)
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([2 x %struct._GimpEnumActionEntry], [2 x %struct._GimpEnumActionEntry]* @drawable_flip_actions, i32 0, i32 0), i32 2, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @drawable_flip_cmd_callback to void ()*))
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([3 x %struct._GimpEnumActionEntry], [3 x %struct._GimpEnumActionEntry]* @drawable_rotate_actions, i32 0, i32 0), i32 3, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @drawable_rotate_cmd_callback to void ()*))
  %4 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 1)
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 1)
  %6 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 1)
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup*, i8*, %struct._GimpToggleActionEntry*, i32) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @drawable_flip_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @drawable_rotate_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @drawable_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %is_rgb = alloca i32, align 4
  %is_indexed = alloca i32, align 4
  %visible = alloca i32, align 4
  %linked = alloca i32, align 4
  %locked = alloca i32, align 4
  %can_lock = alloca i32, align 4
  %writable = alloca i32, align 4
  %children = alloca i32, align 4
  %drawable_type = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  store i32 0, i32* %is_rgb, align 4
  store i32 0, i32* %is_indexed, align 4
  store i32 0, i32* %visible, align 4
  store i32 0, i32* %linked, align 4
  store i32 0, i32* %locked, align 4
  store i32 0, i32* %can_lock, align 4
  store i32 0, i32* %writable, align 4
  store i32 0, i32* %children, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.then, label %if.end.45

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.44

if.then.3:                                        ; preds = %if.then
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call4 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %4)
  store i32 %call4, i32* %drawable_type, align 4
  %5 = load i32, i32* %drawable_type, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.3
  %6 = load i32, i32* %drawable_type, align 4
  %cmp5 = icmp eq i32 %6, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.3
  %7 = phi i1 [ true, %if.then.3 ], [ %cmp5, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  store i32 %lor.ext, i32* %is_rgb, align 4
  %8 = load i32, i32* %drawable_type, align 4
  %cmp6 = icmp eq i32 %8, 4
  br i1 %cmp6, label %lor.end.9, label %lor.rhs.7

lor.rhs.7:                                        ; preds = %lor.end
  %9 = load i32, i32* %drawable_type, align 4
  %cmp8 = icmp eq i32 %9, 5
  br label %lor.end.9

lor.end.9:                                        ; preds = %lor.rhs.7, %lor.end
  %10 = phi i1 [ true, %lor.end ], [ %cmp8, %lor.rhs.7 ]
  %lor.ext10 = zext i1 %10 to i32
  store i32 %lor.ext10, i32* %is_indexed, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %12 = bitcast %struct._GimpDrawable* %11 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %12, %struct._GTypeInstance** %__inst, align 8
  %call11 = call i64 @gimp_layer_mask_get_type() #4
  store i64 %call11, i64* %__t, align 8
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool12 = icmp ne %struct._GTypeInstance* %13, null
  br i1 %tobool12, label %if.else, label %if.then.13

if.then.13:                                       ; preds = %lor.end.9
  store i32 0, i32* %__r, align 4
  br label %if.end.20

if.else:                                          ; preds = %lor.end.9
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool14 = icmp ne %struct._GTypeClass* %15, null
  br i1 %tobool14, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class15 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class15, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %17, i32 0, i32 0
  %18 = load i64, i64* %g_type, align 8
  %19 = load i64, i64* %__t, align 8
  %cmp16 = icmp eq i64 %18, %19
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.18:                                       ; preds = %land.lhs.true, %if.else
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %21 = load i64, i64* %__t, align 8
  %call19 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %20, i64 %21) #5
  store i32 %call19, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.18, %if.then.17
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.13
  %22 = load i32, i32* %__r, align 4
  store i32 %22, i32* %tmp
  %23 = load i32, i32* %tmp
  %tobool21 = icmp ne i32 %23, 0
  br i1 %tobool21, label %if.then.22, label %if.else.28

if.then.22:                                       ; preds = %if.end.20
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_layer_mask_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call23)
  %26 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpLayerMask*
  %call25 = call %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask* %26)
  %27 = bitcast %struct._GimpLayer* %call25 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call26)
  %28 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  store %struct._GimpItem* %28, %struct._GimpItem** %item, align 8
  br label %if.end.31

if.else.28:                                       ; preds = %if.end.20
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_item_get_type() #4
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call29)
  %31 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpItem*
  store %struct._GimpItem* %31, %struct._GimpItem** %item, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.22
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call32 = call i32 @gimp_item_get_visible(%struct._GimpItem* %32)
  store i32 %call32, i32* %visible, align 4
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call33 = call i32 @gimp_item_get_linked(%struct._GimpItem* %33)
  store i32 %call33, i32* %linked, align 4
  %34 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call34 = call i32 @gimp_item_get_lock_content(%struct._GimpItem* %34)
  store i32 %call34, i32* %locked, align 4
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call35 = call i32 @gimp_item_can_lock_content(%struct._GimpItem* %35)
  store i32 %call35, i32* %can_lock, align 4
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call36 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %36)
  %tobool37 = icmp ne i32 %call36, 0
  %lnot = xor i1 %tobool37, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %writable, align 4
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %38 = bitcast %struct._GimpDrawable* %37 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_viewable_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call38)
  %39 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpViewable*
  %call40 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %39)
  %tobool41 = icmp ne %struct._GimpContainer* %call40, null
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.31
  store i32 1, i32* %children, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.31
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %entry
  %40 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %41 = load i32, i32* %writable, align 4
  %tobool46 = icmp ne i32 %41, 0
  br i1 %tobool46, label %land.lhs.true.47, label %land.end

land.lhs.true.47:                                 ; preds = %if.end.45
  %42 = load i32, i32* %children, align 4
  %tobool48 = icmp ne i32 %42, 0
  br i1 %tobool48, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.47
  %43 = load i32, i32* %is_indexed, align 4
  %tobool49 = icmp ne i32 %43, 0
  %lnot50 = xor i1 %tobool49, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.47, %if.end.45
  %44 = phi i1 [ false, %land.lhs.true.47 ], [ false, %if.end.45 ], [ %lnot50, %land.rhs ]
  %land.ext = zext i1 %44 to i32
  %cmp52 = icmp ne i32 %land.ext, 0
  %conv = zext i1 %cmp52 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %conv)
  %45 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %46 = load i32, i32* %writable, align 4
  %tobool53 = icmp ne i32 %46, 0
  br i1 %tobool53, label %land.lhs.true.54, label %land.end.60

land.lhs.true.54:                                 ; preds = %land.end
  %47 = load i32, i32* %children, align 4
  %tobool55 = icmp ne i32 %47, 0
  br i1 %tobool55, label %land.end.60, label %land.rhs.56

land.rhs.56:                                      ; preds = %land.lhs.true.54
  %48 = load i32, i32* %is_indexed, align 4
  %tobool57 = icmp ne i32 %48, 0
  %lnot58 = xor i1 %tobool57, true
  br label %land.end.60

land.end.60:                                      ; preds = %land.rhs.56, %land.lhs.true.54, %land.end
  %49 = phi i1 [ false, %land.lhs.true.54 ], [ false, %land.end ], [ %lnot58, %land.rhs.56 ]
  %land.ext61 = zext i1 %49 to i32
  %cmp62 = icmp ne i32 %land.ext61, 0
  %conv63 = zext i1 %cmp62 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 %conv63)
  %50 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %51 = load i32, i32* %writable, align 4
  %tobool64 = icmp ne i32 %51, 0
  br i1 %tobool64, label %land.lhs.true.65, label %land.end.69

land.lhs.true.65:                                 ; preds = %land.end.60
  %52 = load i32, i32* %children, align 4
  %tobool66 = icmp ne i32 %52, 0
  br i1 %tobool66, label %land.end.69, label %land.rhs.67

land.rhs.67:                                      ; preds = %land.lhs.true.65
  %53 = load i32, i32* %is_rgb, align 4
  %tobool68 = icmp ne i32 %53, 0
  br label %land.end.69

land.end.69:                                      ; preds = %land.rhs.67, %land.lhs.true.65, %land.end.60
  %54 = phi i1 [ false, %land.lhs.true.65 ], [ false, %land.end.60 ], [ %tobool68, %land.rhs.67 ]
  %land.ext70 = zext i1 %54 to i32
  %cmp71 = icmp ne i32 %land.ext70, 0
  %conv72 = zext i1 %cmp71 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i32 %conv72)
  %55 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %56 = load i32, i32* %writable, align 4
  %tobool73 = icmp ne i32 %56, 0
  br i1 %tobool73, label %land.rhs.74, label %land.end.78

land.rhs.74:                                      ; preds = %land.end.69
  %57 = load i32, i32* %children, align 4
  %tobool75 = icmp ne i32 %57, 0
  %lnot76 = xor i1 %tobool75, true
  br label %land.end.78

land.end.78:                                      ; preds = %land.rhs.74, %land.end.69
  %58 = phi i1 [ false, %land.end.69 ], [ %lnot76, %land.rhs.74 ]
  %land.ext79 = zext i1 %58 to i32
  %cmp80 = icmp ne i32 %land.ext79, 0
  %conv81 = zext i1 %cmp80 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 %conv81)
  %59 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp82 = icmp ne %struct._GimpDrawable* %60, null
  %conv83 = zext i1 %cmp82 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 %conv83)
  %61 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp84 = icmp ne %struct._GimpDrawable* %62, null
  %conv85 = zext i1 %cmp84 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 %conv85)
  %63 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %64 = load i32, i32* %can_lock, align 4
  %cmp86 = icmp ne i32 %64, 0
  %conv87 = zext i1 %cmp86 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 %conv87)
  %65 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %66 = load i32, i32* %visible, align 4
  %cmp88 = icmp ne i32 %66, 0
  %conv89 = zext i1 %cmp88 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 %conv89)
  %67 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %68 = load i32, i32* %linked, align 4
  %cmp90 = icmp ne i32 %68, 0
  %conv91 = zext i1 %cmp90 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 %conv91)
  %69 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %70 = load i32, i32* %locked, align 4
  %cmp92 = icmp ne i32 %70, 0
  %conv93 = zext i1 %cmp92 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 %conv93)
  %71 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %72 = load i32, i32* %writable, align 4
  %cmp94 = icmp ne i32 %72, 0
  %conv95 = zext i1 %cmp94 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i32 %conv95)
  %73 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %74 = load i32, i32* %writable, align 4
  %cmp96 = icmp ne i32 %74, 0
  %conv97 = zext i1 %cmp96 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i32 %conv97)
  %75 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %76 = load i32, i32* %writable, align 4
  %cmp98 = icmp ne i32 %76, 0
  %conv99 = zext i1 %cmp98 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 %conv99)
  %77 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %78 = load i32, i32* %writable, align 4
  %cmp100 = icmp ne i32 %78, 0
  %conv101 = zext i1 %cmp100 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 %conv101)
  %79 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %80 = load i32, i32* %writable, align 4
  %cmp102 = icmp ne i32 %80, 0
  %conv103 = zext i1 %cmp102 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 %conv103)
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #1

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #1

declare i32 @gimp_item_get_lock_content(%struct._GimpItem*) #1

declare i32 @gimp_item_can_lock_content(%struct._GimpItem*) #1

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #1

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

declare void @drawable_equalize_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @drawable_invert_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @drawable_levels_stretch_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @drawable_offset_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @drawable_visible_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @drawable_linked_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @drawable_lock_content_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
