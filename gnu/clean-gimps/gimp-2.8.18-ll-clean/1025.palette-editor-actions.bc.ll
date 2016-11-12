; ModuleID = './app/actions/palette-editor-actions.bc'
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpPaletteEditor = type { %struct._GimpDataEditor, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GimpPaletteEntry*, float, i32, i32, i32 }
%struct._GimpDataEditor = type { %struct._GimpEditor, %struct._GimpDataFactory*, %struct._GimpContext*, i32, %struct._GimpData*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
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
%struct._GimpData = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpPaletteEntry = type opaque

@.str = private unnamed_addr constant [22 x i8] c"palette-editor-action\00", align 1
@palette_editor_actions = internal constant [3 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @palette_editor_edit_color_cmd_callback to void ()*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @palette_editor_delete_color_cmd_callback to void ()*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0) }], align 16
@palette_editor_toggle_actions = internal constant [1 x %struct._GimpToggleActionEntry] [%struct._GimpToggleActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @data_editor_edit_active_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0) }], align 16
@palette_editor_new_actions = internal constant [2 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0) }], align 16
@palette_editor_zoom_actions = internal constant [3 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 5, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [26 x i8] c"palette-editor-edit-color\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"palette-editor-delete-color\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"palette-editor-new-color-fg\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"palette-editor-new-color-bg\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"palette-editor-zoom-out\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"palette-editor-zoom-in\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"palette-editor-zoom-all\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"palette-editor-edit-active\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"palette-editor-popup\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"gtk-select-color\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Palette Editor Menu\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"gimp-palette-editor-dialog\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"_Edit Color...\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Edit this entry\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"gimp-palette-editor-edit\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"_Delete Color\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Delete this entry\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"gimp-palette-editor-delete\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"gimp-linked\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Edit Active Palette\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"gimp-palette-editor-edit-active\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"New Color from _FG\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"Create a new entry from the foreground color\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"gimp-palette-editor-new\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"New Color from _BG\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"Create a new entry from the background color\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"gtk-zoom-in\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Zoom _In\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Zoom in\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"gimp-palette-editor-zoom-in\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"gtk-zoom-out\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"Zoom _Out\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"Zoom out\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"gimp-palette-editor-zoom-out\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"gtk-zoom-fit\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"Zoom _All\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"Zoom all\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"gimp-palette-editor-zoom-all\00", align 1

; Function Attrs: nounwind uwtable
define void @palette_editor_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([3 x %struct._GimpActionEntry], [3 x %struct._GimpActionEntry]* @palette_editor_actions, i32 0, i32 0), i32 3)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), %struct._GimpToggleActionEntry* getelementptr inbounds ([1 x %struct._GimpToggleActionEntry], [1 x %struct._GimpToggleActionEntry]* @palette_editor_toggle_actions, i32 0, i32 0), i32 1)
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([2 x %struct._GimpEnumActionEntry], [2 x %struct._GimpEnumActionEntry]* @palette_editor_new_actions, i32 0, i32 0), i32 2, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @palette_editor_new_color_cmd_callback to void ()*))
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %3, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([3 x %struct._GimpEnumActionEntry], [3 x %struct._GimpEnumActionEntry]* @palette_editor_zoom_actions, i32 0, i32 0), i32 3, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @palette_editor_zoom_cmd_callback to void ()*))
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup*, i8*, %struct._GimpToggleActionEntry*, i32) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @palette_editor_new_color_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @palette_editor_zoom_cmd_callback(%struct._GtkAction*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @palette_editor_actions_update(%struct._GimpActionGroup* %group, i8* %user_data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %user_data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpPaletteEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %data = alloca %struct._GimpData*, align 8
  %editable = alloca i32, align 4
  %fg = alloca %struct._GimpRGB, align 8
  %bg = alloca %struct._GimpRGB, align 8
  %edit_active = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_editor_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %2, %struct._GimpPaletteEditor** %editor, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #3
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %5, %struct._GimpDataEditor** %data_editor, align 8
  store i32 0, i32* %editable, align 4
  store i32 0, i32* %edit_active, align 4
  %6 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 4
  %7 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  store %struct._GimpData* %7, %struct._GimpData** %data, align 8
  %8 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool = icmp ne %struct._GimpData* %8, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %9, i32 0, i32 5
  %10 = load i32, i32* %data_editable, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 1, i32* %editable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %11, i32 0, i32 2
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool8 = icmp ne %struct._GimpContext* %12, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.7
  %13 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context10 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %13, i32 0, i32 2
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context10, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %14, %struct._GimpRGB* %fg)
  %15 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context11 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context11, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %16, %struct._GimpRGB* %bg)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.7
  %17 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %call13 = call i32 @gimp_data_editor_get_edit_active(%struct._GimpDataEditor* %17)
  store i32 %call13, i32* %edit_active, align 4
  %18 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %19 = load i32, i32* %editable, align 4
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.12
  %20 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %20, i32 0, i32 5
  %21 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color, align 8
  %tobool15 = icmp ne %struct._GimpPaletteEntry* %21, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.12
  %22 = phi i1 [ false, %if.end.12 ], [ %tobool15, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  %cmp = icmp ne i32 %land.ext, 0
  %conv = zext i1 %cmp to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 %conv)
  %23 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %24 = load i32, i32* %editable, align 4
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %land.rhs.17, label %land.end.20

land.rhs.17:                                      ; preds = %land.end
  %25 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color18 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %25, i32 0, i32 5
  %26 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color18, align 8
  %tobool19 = icmp ne %struct._GimpPaletteEntry* %26, null
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.17, %land.end
  %27 = phi i1 [ false, %land.end ], [ %tobool19, %land.rhs.17 ]
  %land.ext21 = zext i1 %27 to i32
  %cmp22 = icmp ne i32 %land.ext21, 0
  %conv23 = zext i1 %cmp22 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32 %conv23)
  %28 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %29 = load i32, i32* %editable, align 4
  %cmp24 = icmp ne i32 %29, 0
  %conv25 = zext i1 %cmp24 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 %conv25)
  %30 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %31 = load i32, i32* %editable, align 4
  %cmp26 = icmp ne i32 %31, 0
  %conv27 = zext i1 %cmp26 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i32 %conv27)
  %32 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %33 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context28 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %33, i32 0, i32 2
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context28, align 8
  %tobool29 = icmp ne %struct._GimpContext* %34, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end.20
  br label %cond.end

cond.false:                                       ; preds = %land.end.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpRGB* [ %fg, %cond.true ], [ null, %cond.false ]
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), %struct._GimpRGB* %cond, i32 0)
  %35 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %36 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context30 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %36, i32 0, i32 2
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context30, align 8
  %tobool31 = icmp ne %struct._GimpContext* %37, null
  br i1 %tobool31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end
  br label %cond.end.34

cond.false.33:                                    ; preds = %cond.end
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.32
  %cond35 = phi %struct._GimpRGB* [ %bg, %cond.true.32 ], [ null, %cond.false.33 ]
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), %struct._GimpRGB* %cond35, i32 0)
  %38 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %39 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %cmp36 = icmp ne %struct._GimpData* %39, null
  %conv37 = zext i1 %cmp36 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 %conv37)
  %40 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %41 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %cmp38 = icmp ne %struct._GimpData* %41, null
  %conv39 = zext i1 %cmp38 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 %conv39)
  %42 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %43 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %cmp40 = icmp ne %struct._GimpData* %43, null
  %conv41 = zext i1 %cmp40 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i32 %conv41)
  %44 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %45 = load i32, i32* %edit_active, align 4
  %cmp42 = icmp ne i32 %45, 0
  %conv43 = zext i1 %cmp42 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32 %conv43)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_editor_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_data_editor_get_type() #2

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare i32 @gimp_data_editor_get_edit_active(%struct._GimpDataEditor*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_color(%struct._GimpActionGroup*, i8*, %struct._GimpRGB*, i32) #1

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

declare void @palette_editor_edit_color_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @palette_editor_delete_color_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @data_editor_edit_active_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
