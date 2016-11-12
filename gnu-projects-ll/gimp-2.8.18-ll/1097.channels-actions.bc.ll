; ModuleID = './app/actions/channels-actions.bc'
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
%struct._Gimp = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpChannel = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpLayer = type opaque
%struct._GimpComponentEditor = type { %struct._GimpImageEditor, i32, %struct._GtkTreeModel*, %struct._GtkTreeView*, %struct._GtkTreeSelection*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkCellRenderer*, i32 }
%struct._GimpImageEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpImage* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpEditorPrivate = type opaque
%struct._GimpContext = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreePath = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpItem = type { %struct._GimpViewable }

@.str = private unnamed_addr constant [16 x i8] c"channels-action\00", align 1
@channels_actions = internal constant [10 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @channels_edit_attributes_cmd_callback to void ()*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @channels_new_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @channels_new_last_vals_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @channels_duplicate_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @channels_delete_cmd_callback to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @channels_raise_cmd_callback to void ()*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @channels_raise_to_top_cmd_callback to void ()*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @channels_lower_cmd_callback to void ()*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @channels_lower_to_bottom_cmd_callback to void ()*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i32 0, i32 0) }], align 16
@channels_to_selection_actions = internal constant [4 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i32 0, i32 0), i32 2, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.59, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.62, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.63, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.64, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.67, i32 0, i32 0), i32 3, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [25 x i8] c"channels-edit-attributes\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"channels-new\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"channels-new-last-values\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"channels-duplicate\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"channels-delete\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"channels-raise\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"channels-raise-to-top\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"channels-lower\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"channels-lower-to-bottom\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"channels-selection-replace\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"channels-selection-add\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"channels-selection-subtract\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"channels-selection-intersect\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"channels-popup\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"gimp-channels\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Channels Menu\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"gimp-channel-dialog\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"_Edit Channel Attributes...\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"Edit the channel's name, color and opacity\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"gimp-channel-edit\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"_New Channel...\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Create a new channel\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"gimp-channel-new\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"_New Channel\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"Create a new channel with last used values\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"gimp-duplicate\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"D_uplicate Channel\00", align 1
@.str.31 = private unnamed_addr constant [59 x i8] c"Create a duplicate of this channel and add it to the image\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"gimp-channel-duplicate\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"_Delete Channel\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"Delete this channel\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"gimp-channel-delete\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"gtk-go-up\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"_Raise Channel\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"Raise this channel one step in the channel stack\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"gimp-channel-raise\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"gtk-goto-top\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"Raise Channel to _Top\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"Raise this channel to the top of the channel stack\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"gimp-channel-raise-to-top\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"gtk-go-down\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"_Lower Channel\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"Lower this channel one step in the channel stack\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"gimp-channel-lower\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"gtk-goto-bottom\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"Lower Channel to _Bottom\00", align 1
@.str.51 = private unnamed_addr constant [54 x i8] c"Lower this channel to the bottom of the channel stack\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"gimp-channel-lower-to-bottom\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"gimp-selection-replace\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"Channel to Sele_ction\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"Replace the selection with this channel\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"gimp-channel-selection-replace\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"gimp-selection-add\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"_Add to Selection\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"Add this channel to the current selection\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"gimp-channel-selection-add\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"gimp-selection-subtract\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"_Subtract from Selection\00", align 1
@.str.63 = private unnamed_addr constant [49 x i8] c"Subtract this channel from the current selection\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"gimp-channel-selection-subtract\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"gimp-selection-intersect\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"_Intersect with Selection\00", align 1
@.str.67 = private unnamed_addr constant [50 x i8] c"Intersect this channel with the current selection\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"gimp-channel-selection-intersect\00", align 1

; Function Attrs: nounwind uwtable
define void @channels_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([10 x %struct._GimpActionEntry], [10 x %struct._GimpActionEntry]* @channels_actions, i32 0, i32 0), i32 10)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([4 x %struct._GimpEnumActionEntry], [4 x %struct._GimpEnumActionEntry]* @channels_to_selection_actions, i32 0, i32 0), i32 4, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @channels_to_selection_cmd_callback to void ()*))
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @channels_to_selection_cmd_callback(%struct._GtkAction*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @channels_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %fs = alloca i32, align 4
  %component = alloca i32, align 4
  %next = alloca %struct._GList*, align 8
  %prev = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %channel_list = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  store %struct._GimpChannel* null, %struct._GimpChannel** %channel, align 8
  store i32 0, i32* %fs, align 4
  store i32 0, i32* %component, align 4
  store %struct._GList* null, %struct._GList** %next, align 8
  store %struct._GList* null, %struct._GList** %prev, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.then, label %if.end.44

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %2)
  %cmp = icmp ne %struct._GimpLayer* %call1, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %fs, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_component_editor_get_type() #4
  store i64 %call2, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool3 = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp7 = icmp eq i64 %10, %11
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.10:                                       ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #5
  store i32 %call11, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.4
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool13 = icmp ne i32 %15, 0
  br i1 %tobool13, label %if.then.14, label %if.else.21

if.then.14:                                       ; preds = %if.end.12
  %16 = load i8*, i8** %data.addr, align 8
  %17 = bitcast i8* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_component_editor_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpComponentEditor*
  %clicked_component = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %18, i32 0, i32 8
  %19 = load i32, i32* %clicked_component, align 4
  %cmp17 = icmp ne i32 %19, -1
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.14
  store i32 1, i32* %component, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.14
  br label %if.end.43

if.else.21:                                       ; preds = %if.end.12
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call22 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %20)
  store %struct._GimpChannel* %call22, %struct._GimpChannel** %channel, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool23 = icmp ne %struct._GimpChannel* %21, null
  br i1 %tobool23, label %if.then.24, label %if.end.42

if.then.24:                                       ; preds = %if.else.21
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %23 = bitcast %struct._GimpChannel* %22 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_item_get_type() #4
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call27)
  %24 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpItem*
  %call29 = call %struct._GList* @gimp_item_get_container_iter(%struct._GimpItem* %24)
  store %struct._GList* %call29, %struct._GList** %channel_list, align 8
  %25 = load %struct._GList*, %struct._GList** %channel_list, align 8
  %26 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %27 = bitcast %struct._GimpChannel* %26 to i8*
  %call30 = call %struct._GList* @g_list_find(%struct._GList* %25, i8* %27)
  store %struct._GList* %call30, %struct._GList** %list, align 8
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool31 = icmp ne %struct._GList* %28, null
  br i1 %tobool31, label %if.then.32, label %if.end.41

if.then.32:                                       ; preds = %if.then.24
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool33 = icmp ne %struct._GList* %29, null
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.32
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %prev34 = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 2
  %31 = load %struct._GList*, %struct._GList** %prev34, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %31, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %prev, align 8
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool35 = icmp ne %struct._GList* %32, null
  br i1 %tobool35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %cond.end
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %next37 = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 1
  %34 = load %struct._GList*, %struct._GList** %next37, align 8
  br label %cond.end.39

cond.false.38:                                    ; preds = %cond.end
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.36
  %cond40 = phi %struct._GList* [ %34, %cond.true.36 ], [ null, %cond.false.38 ]
  store %struct._GList* %cond40, %struct._GList** %next, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %cond.end.39, %if.then.24
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.else.21
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.20
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %entry
  %35 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %36 = load i32, i32* %fs, align 4
  %tobool45 = icmp ne i32 %36, 0
  br i1 %tobool45, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end.44
  %37 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool46 = icmp ne %struct._GimpChannel* %37, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.44
  %38 = phi i1 [ false, %if.end.44 ], [ %tobool46, %land.rhs ]
  %land.ext = zext i1 %38 to i32
  %cmp47 = icmp ne i32 %land.ext, 0
  %conv48 = zext i1 %cmp47 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 %conv48)
  %39 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %40 = load i32, i32* %fs, align 4
  %tobool49 = icmp ne i32 %40, 0
  br i1 %tobool49, label %land.end.52, label %land.rhs.50

land.rhs.50:                                      ; preds = %land.end
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool51 = icmp ne %struct._GimpImage* %41, null
  br label %land.end.52

land.end.52:                                      ; preds = %land.rhs.50, %land.end
  %42 = phi i1 [ false, %land.end ], [ %tobool51, %land.rhs.50 ]
  %land.ext53 = zext i1 %42 to i32
  %cmp54 = icmp ne i32 %land.ext53, 0
  %conv55 = zext i1 %cmp54 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %conv55)
  %43 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %44 = load i32, i32* %fs, align 4
  %tobool56 = icmp ne i32 %44, 0
  br i1 %tobool56, label %land.end.59, label %land.rhs.57

land.rhs.57:                                      ; preds = %land.end.52
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool58 = icmp ne %struct._GimpImage* %45, null
  br label %land.end.59

land.end.59:                                      ; preds = %land.rhs.57, %land.end.52
  %46 = phi i1 [ false, %land.end.52 ], [ %tobool58, %land.rhs.57 ]
  %land.ext60 = zext i1 %46 to i32
  %cmp61 = icmp ne i32 %land.ext60, 0
  %conv62 = zext i1 %cmp61 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i32 %conv62)
  %47 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %48 = load i32, i32* %fs, align 4
  %tobool63 = icmp ne i32 %48, 0
  br i1 %tobool63, label %land.end.67, label %land.rhs.64

land.rhs.64:                                      ; preds = %land.end.59
  %49 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool65 = icmp ne %struct._GimpChannel* %49, null
  br i1 %tobool65, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.64
  %50 = load i32, i32* %component, align 4
  %tobool66 = icmp ne i32 %50, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.64
  %51 = phi i1 [ true, %land.rhs.64 ], [ %tobool66, %lor.rhs ]
  br label %land.end.67

land.end.67:                                      ; preds = %lor.end, %land.end.59
  %52 = phi i1 [ false, %land.end.59 ], [ %51, %lor.end ]
  %land.ext68 = zext i1 %52 to i32
  %cmp69 = icmp ne i32 %land.ext68, 0
  %conv70 = zext i1 %cmp69 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 %conv70)
  %53 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %54 = load i32, i32* %fs, align 4
  %tobool71 = icmp ne i32 %54, 0
  br i1 %tobool71, label %land.end.74, label %land.rhs.72

land.rhs.72:                                      ; preds = %land.end.67
  %55 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool73 = icmp ne %struct._GimpChannel* %55, null
  br label %land.end.74

land.end.74:                                      ; preds = %land.rhs.72, %land.end.67
  %56 = phi i1 [ false, %land.end.67 ], [ %tobool73, %land.rhs.72 ]
  %land.ext75 = zext i1 %56 to i32
  %cmp76 = icmp ne i32 %land.ext75, 0
  %conv77 = zext i1 %cmp76 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 %conv77)
  %57 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %58 = load i32, i32* %fs, align 4
  %tobool78 = icmp ne i32 %58, 0
  br i1 %tobool78, label %land.end.83, label %land.lhs.true.79

land.lhs.true.79:                                 ; preds = %land.end.74
  %59 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool80 = icmp ne %struct._GimpChannel* %59, null
  br i1 %tobool80, label %land.rhs.81, label %land.end.83

land.rhs.81:                                      ; preds = %land.lhs.true.79
  %60 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool82 = icmp ne %struct._GList* %60, null
  br label %land.end.83

land.end.83:                                      ; preds = %land.rhs.81, %land.lhs.true.79, %land.end.74
  %61 = phi i1 [ false, %land.lhs.true.79 ], [ false, %land.end.74 ], [ %tobool82, %land.rhs.81 ]
  %land.ext84 = zext i1 %61 to i32
  %cmp85 = icmp ne i32 %land.ext84, 0
  %conv86 = zext i1 %cmp85 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 %conv86)
  %62 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %63 = load i32, i32* %fs, align 4
  %tobool87 = icmp ne i32 %63, 0
  br i1 %tobool87, label %land.end.92, label %land.lhs.true.88

land.lhs.true.88:                                 ; preds = %land.end.83
  %64 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool89 = icmp ne %struct._GimpChannel* %64, null
  br i1 %tobool89, label %land.rhs.90, label %land.end.92

land.rhs.90:                                      ; preds = %land.lhs.true.88
  %65 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool91 = icmp ne %struct._GList* %65, null
  br label %land.end.92

land.end.92:                                      ; preds = %land.rhs.90, %land.lhs.true.88, %land.end.83
  %66 = phi i1 [ false, %land.lhs.true.88 ], [ false, %land.end.83 ], [ %tobool91, %land.rhs.90 ]
  %land.ext93 = zext i1 %66 to i32
  %cmp94 = icmp ne i32 %land.ext93, 0
  %conv95 = zext i1 %cmp94 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %conv95)
  %67 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %68 = load i32, i32* %fs, align 4
  %tobool96 = icmp ne i32 %68, 0
  br i1 %tobool96, label %land.end.101, label %land.lhs.true.97

land.lhs.true.97:                                 ; preds = %land.end.92
  %69 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool98 = icmp ne %struct._GimpChannel* %69, null
  br i1 %tobool98, label %land.rhs.99, label %land.end.101

land.rhs.99:                                      ; preds = %land.lhs.true.97
  %70 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool100 = icmp ne %struct._GList* %70, null
  br label %land.end.101

land.end.101:                                     ; preds = %land.rhs.99, %land.lhs.true.97, %land.end.92
  %71 = phi i1 [ false, %land.lhs.true.97 ], [ false, %land.end.92 ], [ %tobool100, %land.rhs.99 ]
  %land.ext102 = zext i1 %71 to i32
  %cmp103 = icmp ne i32 %land.ext102, 0
  %conv104 = zext i1 %cmp103 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 %conv104)
  %72 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %73 = load i32, i32* %fs, align 4
  %tobool105 = icmp ne i32 %73, 0
  br i1 %tobool105, label %land.end.110, label %land.lhs.true.106

land.lhs.true.106:                                ; preds = %land.end.101
  %74 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool107 = icmp ne %struct._GimpChannel* %74, null
  br i1 %tobool107, label %land.rhs.108, label %land.end.110

land.rhs.108:                                     ; preds = %land.lhs.true.106
  %75 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool109 = icmp ne %struct._GList* %75, null
  br label %land.end.110

land.end.110:                                     ; preds = %land.rhs.108, %land.lhs.true.106, %land.end.101
  %76 = phi i1 [ false, %land.lhs.true.106 ], [ false, %land.end.101 ], [ %tobool109, %land.rhs.108 ]
  %land.ext111 = zext i1 %76 to i32
  %cmp112 = icmp ne i32 %land.ext111, 0
  %conv113 = zext i1 %cmp112 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 %conv113)
  %77 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %78 = load i32, i32* %fs, align 4
  %tobool114 = icmp ne i32 %78, 0
  br i1 %tobool114, label %land.end.120, label %land.rhs.115

land.rhs.115:                                     ; preds = %land.end.110
  %79 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool116 = icmp ne %struct._GimpChannel* %79, null
  br i1 %tobool116, label %lor.end.119, label %lor.rhs.117

lor.rhs.117:                                      ; preds = %land.rhs.115
  %80 = load i32, i32* %component, align 4
  %tobool118 = icmp ne i32 %80, 0
  br label %lor.end.119

lor.end.119:                                      ; preds = %lor.rhs.117, %land.rhs.115
  %81 = phi i1 [ true, %land.rhs.115 ], [ %tobool118, %lor.rhs.117 ]
  br label %land.end.120

land.end.120:                                     ; preds = %lor.end.119, %land.end.110
  %82 = phi i1 [ false, %land.end.110 ], [ %81, %lor.end.119 ]
  %land.ext121 = zext i1 %82 to i32
  %cmp122 = icmp ne i32 %land.ext121, 0
  %conv123 = zext i1 %cmp122 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i32 %conv123)
  %83 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %84 = load i32, i32* %fs, align 4
  %tobool124 = icmp ne i32 %84, 0
  br i1 %tobool124, label %land.end.130, label %land.rhs.125

land.rhs.125:                                     ; preds = %land.end.120
  %85 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool126 = icmp ne %struct._GimpChannel* %85, null
  br i1 %tobool126, label %lor.end.129, label %lor.rhs.127

lor.rhs.127:                                      ; preds = %land.rhs.125
  %86 = load i32, i32* %component, align 4
  %tobool128 = icmp ne i32 %86, 0
  br label %lor.end.129

lor.end.129:                                      ; preds = %lor.rhs.127, %land.rhs.125
  %87 = phi i1 [ true, %land.rhs.125 ], [ %tobool128, %lor.rhs.127 ]
  br label %land.end.130

land.end.130:                                     ; preds = %lor.end.129, %land.end.120
  %88 = phi i1 [ false, %land.end.120 ], [ %87, %lor.end.129 ]
  %land.ext131 = zext i1 %88 to i32
  %cmp132 = icmp ne i32 %land.ext131, 0
  %conv133 = zext i1 %cmp132 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 %conv133)
  %89 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %90 = load i32, i32* %fs, align 4
  %tobool134 = icmp ne i32 %90, 0
  br i1 %tobool134, label %land.end.140, label %land.rhs.135

land.rhs.135:                                     ; preds = %land.end.130
  %91 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool136 = icmp ne %struct._GimpChannel* %91, null
  br i1 %tobool136, label %lor.end.139, label %lor.rhs.137

lor.rhs.137:                                      ; preds = %land.rhs.135
  %92 = load i32, i32* %component, align 4
  %tobool138 = icmp ne i32 %92, 0
  br label %lor.end.139

lor.end.139:                                      ; preds = %lor.rhs.137, %land.rhs.135
  %93 = phi i1 [ true, %land.rhs.135 ], [ %tobool138, %lor.rhs.137 ]
  br label %land.end.140

land.end.140:                                     ; preds = %lor.end.139, %land.end.130
  %94 = phi i1 [ false, %land.end.130 ], [ %93, %lor.end.139 ]
  %land.ext141 = zext i1 %94 to i32
  %cmp142 = icmp ne i32 %land.ext141, 0
  %conv143 = zext i1 %cmp142 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i32 %conv143)
  %95 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %96 = load i32, i32* %fs, align 4
  %tobool144 = icmp ne i32 %96, 0
  br i1 %tobool144, label %land.end.150, label %land.rhs.145

land.rhs.145:                                     ; preds = %land.end.140
  %97 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool146 = icmp ne %struct._GimpChannel* %97, null
  br i1 %tobool146, label %lor.end.149, label %lor.rhs.147

lor.rhs.147:                                      ; preds = %land.rhs.145
  %98 = load i32, i32* %component, align 4
  %tobool148 = icmp ne i32 %98, 0
  br label %lor.end.149

lor.end.149:                                      ; preds = %lor.rhs.147, %land.rhs.145
  %99 = phi i1 [ true, %land.rhs.145 ], [ %tobool148, %lor.rhs.147 ]
  br label %land.end.150

land.end.150:                                     ; preds = %lor.end.149, %land.end.140
  %100 = phi i1 [ false, %land.end.140 ], [ %99, %lor.end.149 ]
  %land.ext151 = zext i1 %100 to i32
  %cmp152 = icmp ne i32 %land.ext151, 0
  %conv153 = zext i1 %cmp152 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i32 %conv153)
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_component_editor_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage*) #1

declare %struct._GList* @gimp_item_get_container_iter(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @channels_edit_attributes_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @channels_new_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @channels_new_last_vals_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @channels_duplicate_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @channels_delete_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @channels_raise_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @channels_raise_to_top_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @channels_lower_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @channels_lower_to_bottom_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
