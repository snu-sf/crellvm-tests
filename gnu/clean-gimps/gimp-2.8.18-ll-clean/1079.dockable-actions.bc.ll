; ModuleID = './app/actions/dockable-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpToggleActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i32, i8* }
%struct._GimpStringActionEntry = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpRadioActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionGroupPrivate = type opaque
%struct._Gimp = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpDockable = type { %struct._GtkBin, %struct._GimpDockablePrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpDockablePrivate = type opaque
%struct._GimpDockbook = type { %struct._GtkNotebook, %struct._GimpDockbookPrivate* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpDockbookPrivate = type opaque
%struct._GimpDocked = type opaque
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDockPrivate = type opaque
%struct._GimpDialogFactoryEntry = type { i8*, i8*, i8*, i8*, i8*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpContext = type opaque
%struct._GimpUIManager = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpSessionInfo = type opaque
%struct._GimpContainerView = type opaque
%struct._GimpDockedInterface = type { %struct._GTypeInterface, void (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GList*)*, %struct._GList* (%struct._GimpDocked*)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, i32 (%struct._GimpDocked*)*, %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)*, i8* (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GimpContext*)*, i32 (%struct._GimpDocked*)*, void (%struct._GimpDocked*, i32)*, i32 (%struct._GimpDocked*)* }
%struct._GTypeInterface = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"dockable-action\00", align 1
@dockable_actions = internal constant [7 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @dockable_close_tab_cmd_callback to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @dockable_detach_tab_cmd_callback to void ()*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0) }], align 16
@dockable_toggle_actions = internal constant [2 x %struct._GimpToggleActionEntry] [%struct._GimpToggleActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @dockable_lock_tab_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @dockable_show_button_bar_cmd_callback to void ()*), i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"dialogs-action\00", align 1
@dialogs_dockable_actions = external constant [0 x %struct._GimpStringActionEntry], align 8
@n_dialogs_dockable_actions = external global i32, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"preview-size\00", align 1
@dockable_view_size_actions = internal constant [9 x %struct._GimpRadioActionEntry] [%struct._GimpRadioActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* null, i32 12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8* null, i8* null, i32 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* null, i32 24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i8* null, i8* null, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* null, i8* null, i32 48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* null, i32 64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* null, i8* null, i32 96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* null, i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8* null, i8* null, i32 192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0) }], align 16
@.str.3 = private unnamed_addr constant [10 x i8] c"tab-style\00", align 1
@dockable_tab_style_actions = internal constant [6 x %struct._GimpRadioActionEntry] [%struct._GimpRadioActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* null, i8* null, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0), i8* null, i8* null, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* null, i8* null, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), i8* null, i8* null, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0), i8* null, i8* null, i32 6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i8* null, i8* null, i32 9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0) }], align 16
@dockable_view_type_actions = internal constant [2 x %struct._GimpRadioActionEntry] [%struct._GimpRadioActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), i8* null, i8* null, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0), i8* null, i8* null, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.70, i32 0, i32 0) }], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"dockable-detach-tab\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"dockable-lock-tab\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"dockable-preview-size-menu\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"dockable-preview-size-gigantic\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"dockable-preview-size-enormous\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"dockable-preview-size-huge\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"dockable-preview-size-extra-large\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"dockable-preview-size-large\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"dockable-preview-size-medium\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"dockable-preview-size-small\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"dockable-preview-size-extra-small\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"dockable-preview-size-tiny\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"dockable-tab-style-icon\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"dockable-tab-style-preview\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"dockable-tab-style-name\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"dockable-tab-style-icon-name\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"dockable-tab-style-preview-name\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"dockable-tab-style-automatic\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"dockable-view-type-grid\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"dockable-view-type-list\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"dockable-show-button-bar\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"dockable-popup\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"Dialogs Menu\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"gimp-dock\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"dockable-menu\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"gtk-missing-image\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"dockable-add-tab-menu\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"_Add Tab\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"_Preview Size\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"dockable-tab-style-menu\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"_Tab Style\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"dockable-close-tab\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"_Close Tab\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"gimp-dock-tab-close\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"gtk-convert\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"_Detach Tab\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"gimp-dock-tab-detach\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"Loc_k Tab to Dock\00", align 1
@.str.46 = private unnamed_addr constant [59 x i8] c"Protect this tab from being dragged with the mouse pointer\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"gimp-dock-tab-lock\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"Show _Button Bar\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"gimp-dock-show-button-bar\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"_Tiny\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"gimp-dock-preview-size\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"E_xtra Small\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"_Small\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"_Medium\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"_Large\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"Ex_tra Large\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"_Huge\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"_Enormous\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"_Gigantic\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"_Icon\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"gimp-dock-tab-style\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"Current _Status\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"_Text\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"I_con & Text\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"St_atus & Text\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"Automatic\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"View as _List\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"gimp-dock-view-as-list\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"View as _Grid\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"gimp-dock-view-as-grid\00", align 1

; Function Attrs: nounwind uwtable
define void @dockable_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([7 x %struct._GimpActionEntry], [7 x %struct._GimpActionEntry]* @dockable_actions, i32 0, i32 0), i32 7)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GimpToggleActionEntry* getelementptr inbounds ([2 x %struct._GimpToggleActionEntry], [2 x %struct._GimpToggleActionEntry]* @dockable_toggle_actions, i32 0, i32 0), i32 2)
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %3 = load i32, i32* @n_dialogs_dockable_actions, align 4
  call void @gimp_action_group_add_string_actions(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %struct._GimpStringActionEntry* getelementptr inbounds ([0 x %struct._GimpStringActionEntry], [0 x %struct._GimpStringActionEntry]* @dialogs_dockable_actions, i32 0, i32 0), i32 %3, void ()* bitcast (void (%struct._GtkAction*, i8*, i8*)* @dockable_add_tab_cmd_callback to void ()*))
  %4 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call = call %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._GimpRadioActionEntry* getelementptr inbounds ([9 x %struct._GimpRadioActionEntry], [9 x %struct._GimpRadioActionEntry]* @dockable_view_size_actions, i32 0, i32 0), i32 9, %struct._GSList* null, i32 32, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkAction*, i8*)* @dockable_view_size_cmd_callback to void ()*))
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call1 = call %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), %struct._GimpRadioActionEntry* getelementptr inbounds ([6 x %struct._GimpRadioActionEntry], [6 x %struct._GimpRadioActionEntry]* @dockable_tab_style_actions, i32 0, i32 0), i32 6, %struct._GSList* null, i32 9, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkAction*, i8*)* @dockable_tab_style_cmd_callback to void ()*))
  %6 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call2 = call %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GimpRadioActionEntry* getelementptr inbounds ([2 x %struct._GimpRadioActionEntry], [2 x %struct._GimpRadioActionEntry]* @dockable_view_type_actions, i32 0, i32 0), i32 2, %struct._GSList* null, i32 0, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkAction*, i8*)* @dockable_toggle_view_cmd_callback to void ()*))
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup*, i8*, %struct._GimpToggleActionEntry*, i32) #1

declare void @gimp_action_group_add_string_actions(%struct._GimpActionGroup*, i8*, %struct._GimpStringActionEntry*, i32, void ()*) #1

declare void @dockable_add_tab_cmd_callback(%struct._GtkAction*, i8*, i8*) #1

declare %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup*, i8*, %struct._GimpRadioActionEntry*, i32, %struct._GSList*, i32, void ()*) #1

declare void @dockable_view_size_cmd_callback(%struct._GtkAction*, %struct._GtkAction*, i8*) #1

declare void @dockable_tab_style_cmd_callback(%struct._GtkAction*, %struct._GtkAction*, i8*) #1

declare void @dockable_toggle_view_cmd_callback(%struct._GtkAction*, %struct._GtkAction*, i8*) #1

; Function Attrs: nounwind uwtable
define void @dockable_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %docked = alloca %struct._GimpDocked*, align 8
  %dock = alloca %struct._GimpDock*, align 8
  %entry1 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %view_type = alloca i32, align 4
  %list_view_available = alloca i32, align 4
  %grid_view_available = alloca i32, align 4
  %locked = alloca i32, align 4
  %view_size = alloca i32, align 4
  %tab_style = alloca i32, align 4
  %n_pages = alloca i32, align 4
  %n_books = alloca i32, align 4
  %docked_iface = alloca %struct._GimpDockedInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %page_num = alloca i32, align 4
  %__inst21 = alloca %struct._GTypeInstance*, align 8
  %__t23 = alloca i64, align 8
  %__r26 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %identifier = alloca i8*, align 8
  %substring = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 -1, i32* %view_type, align 4
  store i32 0, i32* %list_view_available, align 4
  store i32 0, i32* %grid_view_available, align 4
  store i32 0, i32* %locked, align 4
  store i32 -1, i32* %view_size, align 4
  store i32 -1, i32* %tab_style, align 4
  store i32 0, i32* %n_pages, align 4
  store i32 0, i32* %n_books, align 4
  store %struct._GimpDockedInterface* null, %struct._GimpDockedInterface** %docked_iface, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockbook_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.19

if.then.9:                                        ; preds = %if.end.7
  %13 = load i8*, i8** %data.addr, align 8
  %14 = bitcast i8* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_dockbook_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %15, %struct._GimpDockbook** %dockbook, align 8
  %16 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %17 = bitcast %struct._GimpDockbook* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_notebook_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkNotebook*
  %call15 = call i32 @gtk_notebook_get_current_page(%struct._GtkNotebook* %18)
  store i32 %call15, i32* %page_num, align 4
  %19 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %20 = bitcast %struct._GimpDockbook* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_notebook_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkNotebook*
  %22 = load i32, i32* %page_num, align 4
  %call18 = call %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook* %21, i32 %22)
  %23 = bitcast %struct._GtkWidget* %call18 to %struct._GimpDockable*
  store %struct._GimpDockable* %23, %struct._GimpDockable** %dockable, align 8
  br label %if.end.49

if.else.19:                                       ; preds = %if.end.7
  %24 = load i8*, i8** %data.addr, align 8
  %25 = bitcast i8* %24 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %25, %struct._GTypeInstance** %__inst21, align 8
  %call24 = call i64 @gimp_dockable_get_type() #5
  store i64 %call24, i64* %__t23, align 8
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %tobool27 = icmp ne %struct._GTypeInstance* %26, null
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %if.else.19
  store i32 0, i32* %__r26, align 4
  br label %if.end.40

if.else.29:                                       ; preds = %if.else.19
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %tobool31 = icmp ne %struct._GTypeClass* %28, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %if.else.29
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type34, align 8
  %32 = load i64, i64* %__t23, align 8
  %cmp35 = icmp eq i64 %31, %32
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %__r26, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.29
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %34 = load i64, i64* %__t23, align 8
  %call38 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %33, i64 %34) #6
  store i32 %call38, i32* %__r26, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.28
  %35 = load i32, i32* %__r26, align 4
  store i32 %35, i32* %tmp41
  %36 = load i32, i32* %tmp41
  %tobool42 = icmp ne i32 %36, 0
  br i1 %tobool42, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %if.end.40
  %37 = load i8*, i8** %data.addr, align 8
  %38 = bitcast i8* %37 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_dockable_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call44)
  %39 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpDockable*
  store %struct._GimpDockable* %39, %struct._GimpDockable** %dockable, align 8
  %40 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call46 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %40)
  store %struct._GimpDockbook* %call46, %struct._GimpDockbook** %dockbook, align 8
  br label %if.end.48

if.else.47:                                       ; preds = %if.end.40
  br label %return

if.end.48:                                        ; preds = %if.then.43
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.9
  %41 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %42 = bitcast %struct._GimpDockable* %41 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_bin_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call50)
  %43 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkBin*
  %call52 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %43)
  %44 = bitcast %struct._GtkWidget* %call52 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_docked_interface_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call53)
  %45 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpDocked*
  store %struct._GimpDocked* %45, %struct._GimpDocked** %docked, align 8
  %46 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %call55 = call %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook* %46)
  store %struct._GimpDock* %call55, %struct._GimpDock** %dock, align 8
  %47 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %48 = bitcast %struct._GimpDockable* %47 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_widget_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call56)
  %49 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkWidget*
  %call58 = call %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget* %49, %struct._GimpDialogFactoryEntry** %entry1)
  %50 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %tobool59 = icmp ne %struct._GimpDialogFactoryEntry* %50, null
  br i1 %tobool59, label %if.then.60, label %if.end.87

if.then.60:                                       ; preds = %if.end.49
  store i8* null, i8** %substring, align 8
  %51 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %identifier63 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %51, i32 0, i32 0
  %52 = load i8*, i8** %identifier63, align 8
  %call64 = call noalias i8* @g_strdup(i8* %52)
  store i8* %call64, i8** %identifier, align 8
  %53 = load i8*, i8** %identifier, align 8
  %call65 = call i8* @strstr(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #6
  store i8* %call65, i8** %substring, align 8
  %tobool66 = icmp ne i8* %call65, null
  br i1 %tobool66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.then.60
  store i32 1, i32* %view_type, align 4
  br label %if.end.73

if.else.68:                                       ; preds = %if.then.60
  %54 = load i8*, i8** %identifier, align 8
  %call69 = call i8* @strstr(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #6
  store i8* %call69, i8** %substring, align 8
  %tobool70 = icmp ne i8* %call69, null
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.else.68
  store i32 0, i32* %view_type, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.else.68
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.67
  %55 = load i8*, i8** %substring, align 8
  %tobool74 = icmp ne i8* %55, null
  br i1 %tobool74, label %if.then.75, label %if.end.86

if.then.75:                                       ; preds = %if.end.73
  %56 = load i8*, i8** %substring, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 4, i32 1, i1 false)
  %57 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %call76 = call %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock* %57)
  %58 = load i8*, i8** %identifier, align 8
  %call77 = call %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory* %call76, i8* %58)
  %tobool78 = icmp ne %struct._GimpDialogFactoryEntry* %call77, null
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.then.75
  store i32 1, i32* %list_view_available, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.then.75
  %59 = load i8*, i8** %substring, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i64 4, i32 1, i1 false)
  %60 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %call81 = call %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock* %60)
  %61 = load i8*, i8** %identifier, align 8
  %call82 = call %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory* %call81, i8* %61)
  %tobool83 = icmp ne %struct._GimpDialogFactoryEntry* %call82, null
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.80
  store i32 1, i32* %grid_view_available, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.80
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.73
  %62 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %62)
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.49
  %63 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call88 = call %struct._GimpContainerView* @gimp_container_view_get_by_dockable(%struct._GimpDockable* %63)
  store %struct._GimpContainerView* %call88, %struct._GimpContainerView** %view, align 8
  %64 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %tobool89 = icmp ne %struct._GimpContainerView* %64, null
  br i1 %tobool89, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.end.87
  %65 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call91 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %65, i32* null)
  store i32 %call91, i32* %view_size, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.end.87
  %66 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call93 = call i32 @gimp_dockable_get_tab_style(%struct._GimpDockable* %66)
  store i32 %call93, i32* %tab_style, align 4
  %67 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %68 = bitcast %struct._GimpDockbook* %67 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_notebook_get_type() #5
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call94)
  %69 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkNotebook*
  %call96 = call i32 @gtk_notebook_get_n_pages(%struct._GtkNotebook* %69)
  store i32 %call96, i32* %n_pages, align 4
  %70 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %call97 = call %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock* %70)
  %call98 = call i32 @g_list_length(%struct._GList* %call97)
  store i32 %call98, i32* %n_books, align 4
  %71 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call99 = call i32 @gimp_dockable_is_locked(%struct._GimpDockable* %71)
  store i32 %call99, i32* %locked, align 4
  %72 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %73 = load i32, i32* %locked, align 4
  %tobool100 = icmp ne i32 %73, 0
  br i1 %tobool100, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end.92
  %74 = load i32, i32* %n_pages, align 4
  %cmp101 = icmp sgt i32 %74, 1
  br i1 %cmp101, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %75 = load i32, i32* %n_books, align 4
  %cmp102 = icmp sgt i32 %75, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %76 = phi i1 [ true, %land.rhs ], [ %cmp102, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.end.92
  %77 = phi i1 [ false, %if.end.92 ], [ %76, %lor.end ]
  %land.ext = zext i1 %77 to i32
  %cmp103 = icmp ne i32 %land.ext, 0
  %conv = zext i1 %cmp103 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i32 %conv)
  %78 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %79 = load i32, i32* %locked, align 4
  %cmp104 = icmp ne i32 %79, 0
  %conv105 = zext i1 %cmp104 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %conv105)
  %80 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %81 = load i32, i32* %view_size, align 4
  %cmp106 = icmp ne i32 %81, -1
  %conv107 = zext i1 %cmp106 to i32
  %cmp108 = icmp ne i32 %conv107, 0
  %conv109 = zext i1 %cmp108 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32 %conv109)
  %82 = load i32, i32* %view_size, align 4
  %cmp110 = icmp ne i32 %82, -1
  br i1 %cmp110, label %if.then.112, label %if.end.157

if.then.112:                                      ; preds = %land.end
  %83 = load i32, i32* %view_size, align 4
  %cmp113 = icmp uge i32 %83, 192
  br i1 %cmp113, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %if.then.112
  %84 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i32 1)
  br label %if.end.156

if.else.116:                                      ; preds = %if.then.112
  %85 = load i32, i32* %view_size, align 4
  %cmp117 = icmp uge i32 %85, 128
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.else.116
  %86 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i32 1)
  br label %if.end.155

if.else.120:                                      ; preds = %if.else.116
  %87 = load i32, i32* %view_size, align 4
  %cmp121 = icmp uge i32 %87, 96
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %if.else.120
  %88 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 1)
  br label %if.end.154

if.else.124:                                      ; preds = %if.else.120
  %89 = load i32, i32* %view_size, align 4
  %cmp125 = icmp uge i32 %89, 64
  br i1 %cmp125, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %if.else.124
  %90 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i32 1)
  br label %if.end.153

if.else.128:                                      ; preds = %if.else.124
  %91 = load i32, i32* %view_size, align 4
  %cmp129 = icmp uge i32 %91, 48
  br i1 %cmp129, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %if.else.128
  %92 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i32 1)
  br label %if.end.152

if.else.132:                                      ; preds = %if.else.128
  %93 = load i32, i32* %view_size, align 4
  %cmp133 = icmp uge i32 %93, 32
  br i1 %cmp133, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %if.else.132
  %94 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i32 1)
  br label %if.end.151

if.else.136:                                      ; preds = %if.else.132
  %95 = load i32, i32* %view_size, align 4
  %cmp137 = icmp uge i32 %95, 24
  br i1 %cmp137, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %if.else.136
  %96 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i32 1)
  br label %if.end.150

if.else.140:                                      ; preds = %if.else.136
  %97 = load i32, i32* %view_size, align 4
  %cmp141 = icmp uge i32 %97, 16
  br i1 %cmp141, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %if.else.140
  %98 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0), i32 1)
  br label %if.end.149

if.else.144:                                      ; preds = %if.else.140
  %99 = load i32, i32* %view_size, align 4
  %cmp145 = icmp uge i32 %99, 12
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.else.144
  %100 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), i32 1)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.else.144
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.143
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.139
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.then.135
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.then.131
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.127
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.123
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.119
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.115
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %land.end
  %101 = load i32, i32* %tab_style, align 4
  %cmp158 = icmp eq i32 %101, 0
  br i1 %cmp158, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %if.end.157
  %102 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i32 1)
  br label %if.end.186

if.else.161:                                      ; preds = %if.end.157
  %103 = load i32, i32* %tab_style, align 4
  %cmp162 = icmp eq i32 %103, 1
  br i1 %cmp162, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %if.else.161
  %104 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), i32 1)
  br label %if.end.185

if.else.165:                                      ; preds = %if.else.161
  %105 = load i32, i32* %tab_style, align 4
  %cmp166 = icmp eq i32 %105, 2
  br i1 %cmp166, label %if.then.168, label %if.else.169

if.then.168:                                      ; preds = %if.else.165
  %106 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i32 1)
  br label %if.end.184

if.else.169:                                      ; preds = %if.else.165
  %107 = load i32, i32* %tab_style, align 4
  %cmp170 = icmp eq i32 %107, 4
  br i1 %cmp170, label %if.then.172, label %if.else.173

if.then.172:                                      ; preds = %if.else.169
  %108 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i32 1)
  br label %if.end.183

if.else.173:                                      ; preds = %if.else.169
  %109 = load i32, i32* %tab_style, align 4
  %cmp174 = icmp eq i32 %109, 6
  br i1 %cmp174, label %if.then.176, label %if.else.177

if.then.176:                                      ; preds = %if.else.173
  %110 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), i32 1)
  br label %if.end.182

if.else.177:                                      ; preds = %if.else.173
  %111 = load i32, i32* %tab_style, align 4
  %cmp178 = icmp eq i32 %111, 9
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.else.177
  %112 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), i32 1)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.180, %if.else.177
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.176
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.then.172
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.then.168
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.then.164
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.160
  %113 = load %struct._GimpDocked*, %struct._GimpDocked** %docked, align 8
  %114 = bitcast %struct._GimpDocked* %113 to %struct._GTypeInstance*
  %g_class187 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %114, i32 0, i32 0
  %115 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class187, align 8
  %116 = bitcast %struct._GTypeClass* %115 to i8*
  %call188 = call i64 @gimp_docked_interface_get_type() #5
  %call189 = call i8* @g_type_interface_peek(i8* %116, i64 %call188)
  %117 = bitcast i8* %call189 to %struct._GimpDockedInterface*
  store %struct._GimpDockedInterface* %117, %struct._GimpDockedInterface** %docked_iface, align 8
  %118 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %119 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %docked_iface, align 8
  %get_preview = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %119, i32 0, i32 4
  %120 = load %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)** %get_preview, align 8
  %cmp190 = icmp ne %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)* %120, null
  %conv191 = zext i1 %cmp190 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), i32 %conv191)
  %121 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %122 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %docked_iface, align 8
  %get_preview192 = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %122, i32 0, i32 4
  %123 = load %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)** %get_preview192, align 8
  %cmp193 = icmp ne %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)* %123, null
  %conv194 = zext i1 %cmp193 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), i32 %conv194)
  %124 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %125 = load i32, i32* %view_type, align 4
  %cmp195 = icmp ne i32 %125, -1
  %conv196 = zext i1 %cmp195 to i32
  %cmp197 = icmp ne i32 %conv196, 0
  %conv198 = zext i1 %cmp197 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i32 %conv198)
  %126 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %127 = load i32, i32* %view_type, align 4
  %cmp199 = icmp ne i32 %127, -1
  %conv200 = zext i1 %cmp199 to i32
  %cmp201 = icmp ne i32 %conv200, 0
  %conv202 = zext i1 %cmp201 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i32 %conv202)
  %128 = load i32, i32* %view_type, align 4
  %cmp203 = icmp ne i32 %128, -1
  br i1 %cmp203, label %if.then.205, label %if.end.215

if.then.205:                                      ; preds = %if.end.186
  %129 = load i32, i32* %view_type, align 4
  %cmp206 = icmp eq i32 %129, 0
  br i1 %cmp206, label %if.then.208, label %if.else.209

if.then.208:                                      ; preds = %if.then.205
  %130 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i32 1)
  br label %if.end.210

if.else.209:                                      ; preds = %if.then.205
  %131 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i32 1)
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.209, %if.then.208
  %132 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %133 = load i32, i32* %grid_view_available, align 4
  %cmp211 = icmp ne i32 %133, 0
  %conv212 = zext i1 %cmp211 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i32 %conv212)
  %134 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %135 = load i32, i32* %list_view_available, align 4
  %cmp213 = icmp ne i32 %135, 0
  %conv214 = zext i1 %cmp213 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i32 %conv214)
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.210, %if.end.186
  %136 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %137 = load %struct._GimpDocked*, %struct._GimpDocked** %docked, align 8
  %call216 = call i32 @gimp_docked_has_button_bar(%struct._GimpDocked* %137)
  %cmp217 = icmp ne i32 %call216, 0
  %conv218 = zext i1 %cmp217 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %136, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i32 %conv218)
  %138 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %139 = load %struct._GimpDocked*, %struct._GimpDocked** %docked, align 8
  %call219 = call i32 @gimp_docked_get_show_button_bar(%struct._GimpDocked* %139)
  %cmp220 = icmp ne i32 %call219, 0
  %conv221 = zext i1 %cmp220 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %138, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i32 %conv221)
  br label %return

return:                                           ; preds = %if.end.215, %if.else.47
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dockbook_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gtk_notebook_get_current_page(%struct._GtkNotebook*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #2

declare %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dockable_get_type() #2

declare %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable*) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget*, %struct._GimpDialogFactoryEntry**) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory*, i8*) #1

declare %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock*) #1

declare void @g_free(i8*) #1

declare %struct._GimpContainerView* @gimp_container_view_get_by_dockable(%struct._GimpDockable*) #1

declare i32 @gimp_container_view_get_view_size(%struct._GimpContainerView*, i32*) #1

declare i32 @gimp_dockable_get_tab_style(%struct._GimpDockable*) #1

declare i32 @gtk_notebook_get_n_pages(%struct._GtkNotebook*) #1

declare i32 @g_list_length(%struct._GList*) #1

declare %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock*) #1

declare i32 @gimp_dockable_is_locked(%struct._GimpDockable*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_visible(%struct._GimpActionGroup*, i8*, i32) #1

declare i8* @g_type_interface_peek(i8*, i64) #1

declare i32 @gimp_docked_has_button_bar(%struct._GimpDocked*) #1

declare i32 @gimp_docked_get_show_button_bar(%struct._GimpDocked*) #1

declare void @dockable_close_tab_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @dockable_detach_tab_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @dockable_lock_tab_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @dockable_show_button_bar_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
