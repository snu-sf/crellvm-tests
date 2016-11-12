; ModuleID = './plug-ins/gfig/gfig-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SelectItVals = type { %struct.GfigOpts, i32, i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, i32 }
%struct.GfigOpts = type { i32, i32, i32, i32, i32, i32, double, double, double, double, i32 }
%struct.selection_option = type { i32, i32, i32, double, i32, i32, double }
%struct.GFigContext = type { i32, i32, i32, i32, %struct._GFigObj*, %struct._GfigObject*, %struct._GtkWidget*, %struct._Style, %struct.BrushDesc, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpRGB*, %struct._GimpRGB*, i32, i32 }
%struct._GFigObj = type { i8*, i8*, i8*, float, %struct.GfigOpts, %struct._GList*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GfigObject = type { i32, %struct.GfigObjectClass*, i32, %struct.DobjPoints*, %struct._Style, i32 }
%struct.GfigObjectClass = type { i32, i8*, void (%struct._GfigObject*, %struct._cairo*)*, void (%struct._GfigObject*)*, %struct._GfigObject* (%struct._GfigObject*)*, void (%struct._GdkPoint*)* }
%struct._cairo = type opaque
%struct._GdkPoint = type { i32, i32 }
%struct.DobjPoints = type { %struct.DobjPoints*, %struct._GdkPoint, i32 }
%struct._Style = type { i8*, i8*, i32, i32, i32, i32, double, double, double, i32, double, i8*, i8*, i32, %struct._GimpRGB, %struct._GimpRGB, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct.BrushDesc = type { i8*, double, i32, i32, i32, i32, i8*, i16, i16, i8* }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
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
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.GfigOptWidgets = type { %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GdkPixbuf = type opaque
%struct._GtkActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()* }
%struct._GtkRadioActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkToolbar = type { %struct._GtkContainer, i32, %struct._GList*, i32, i32, i32, i8*, i32, i32, i32, i32, i8 }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpBrushSelectButton = type { %struct._GimpSelectButton }
%struct._GimpSelectButton = type { %struct._GtkBox, i8* }
%struct._GimpPatternSelectButton = type { %struct._GimpSelectButton }
%struct._GimpGradientSelectButton = type { %struct._GimpSelectButton }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkFileChooser = type opaque
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct._GtkRadioAction = type { %struct._GtkToggleAction, %struct._GtkRadioActionPrivate* }
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GtkRadioActionPrivate = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }

@selvals = global %struct.SelectItVals { %struct.GfigOpts { i32 30, i32 0, i32 0, i32 0, i32 0, i32 1, double 0.000000e+00, double 1.000000e+01, double 0.000000e+00, double 5.000000e+00, i32 120 }, i32 0, i32 5, i32 1, double 0.000000e+00, double 0.000000e+00, double 2.000000e+01, i32 0, i32 0, i32 1, i32 0, i32 1, double 1.000000e+00, i32 0, i32 1 }, align 8
@selopt = global %struct.selection_option { i32 0, i32 0, i32 0, double 1.000000e+01, i32 0, i32 2, double 1.000000e+02 }, align 8
@.str = private unnamed_addr constant [5 x i8] c"gfig\00", align 1
@gfig_context = external global %struct.GFigContext*, align 8
@gfig_list = external global %struct._GList*, align 8
@undo_level = global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Base\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"GFig\00", align 1
@gfig_drawable = external global %struct._GimpDrawable*, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"gfig-path\00", align 1
@gfig_path = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"gimprc\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"No %s in gimprc:\0AYou need to add an entry like\0A(%s \22%s\22)\0Ato your %s file.\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Gfig\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"gimp-gfig\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"plug-in-gfig\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@top_level_dlg = external global %struct._GtkWidget*, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"/ui/gfig-menubar\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"/ui/gfig-toolbar\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"undo\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Tool Options\00", align 1
@tool_options_notebook = internal global %struct._GtkWidget* null, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"_Stroke\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Foreground\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"brush-set\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Fill\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"No fill\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Color fill\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Pattern fill\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Shape gradient\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Vertical gradient\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Horizontal gradient\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@fill_type_notebook = internal global %struct._GtkWidget* null, align 8
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"Pattern\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"pattern-set\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"Gradient\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"gradient-set\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"Show image\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"checkbutton\04Snap to grid\00", align 1
@gfig_opt_widget = internal global %struct.GfigOptWidgets zeroinitializer, align 8
@.str.38 = private unnamed_addr constant [10 x i8] c"Show grid\00", align 1
@__func__.gfig_dialog_action_set_sensitive = private unnamed_addr constant [33 x i8] c"gfig_dialog_action_set_sensitive\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@gfig_actions = internal global %struct._GtkActionGroup* null, align 8
@.str.40 = private unnamed_addr constant [64 x i8] c"%s: Unable to set sensitivity of action which doesn't exist: %s\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"Sides:\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Orientation:\00", align 1
@obj_show_single = external global i32, align 4
@back_pixbuf = external global %struct._GdkPixbuf*, align 8
@scale_x_factor = external global double, align 8
@scale_y_factor = external global double, align 8
@org_scale_x_factor = external global double, align 8
@org_scale_y_factor = external global double, align 8
@undo_table = global [10 x %struct._GList*] zeroinitializer, align 16
@.str.47 = private unnamed_addr constant [11 x i8] c"First Gfig\00", align 1
@create_ui_manager.actions = internal global [17 x %struct._GtkActionEntry] [%struct._GtkActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gfig_load_action_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gfig_save_action_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gfig_close_action_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gfig_undo_action_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gfig_clear_action_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gfig_grid_action_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gfig_prefs_action_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @raise_selected_obj to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.82, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @lower_selected_obj to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.86, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @raise_selected_obj_to_top to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.88, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.90, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @lower_selected_obj_to_bottom to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i32 0, i32 0), void ()* @select_button_clicked_lt }, %struct._GtkActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.96, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0), void ()* @select_button_clicked_gt }, %struct._GtkActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.102, i32 0, i32 0), void ()* @select_button_clicked_eq }], align 16
@.str.48 = private unnamed_addr constant [13 x i8] c"gfig-menubar\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"GFig Menu\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"gfig-file-menu\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"_File\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"<control>O\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"<control>S\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"<control>C\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"gfig-edit-menu\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"_Edit\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"gtk-undo\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"_Undo\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"<control>Z\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"gtk-clear\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"_Clear\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"gimp-grid\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"_Grid\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"<control>G\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"prefs\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"gtk-preferences\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"<control>P\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"raise\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"gtk-go-up\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"<control>U\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"Raise selected object\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"gtk-go-down\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"<control>D\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"Lower selected object\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"gtk-goto-top\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"<control>T\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"Raise selected object to top\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"gtk-goto-bottom\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"<control>B\00", align 1
@.str.90 = private unnamed_addr constant [32 x i8] c"Lower selected object to bottom\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"show_previous\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"gtk-go-back\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"<control>H\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"Show previous object\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"show_next\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"gtk-go-forward\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"<control>L\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"Show next object\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"show_all\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"gfig-show-all\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"<control>A\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"Show all objects\00", align 1
@create_ui_manager.radio_actions = internal global [14 x %struct._GtkRadioActionEntry] [%struct._GtkRadioActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0), i32 1 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.108, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.110, i32 0, i32 0), i32 2 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0), i32 3 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.116, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.118, i32 0, i32 0), i32 4 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i32 5 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.126, i32 0, i32 0), i32 6 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.130, i32 0, i32 0), i32 7 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.134, i32 0, i32 0), i32 8 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.136, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.138, i32 0, i32 0), i32 9 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.140, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.142, i32 0, i32 0), i32 11 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.144, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.146, i32 0, i32 0), i32 12 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.148, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.150, i32 0, i32 0), i32 13 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.154, i32 0, i32 0), i32 15 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.157, i32 0, i32 0), i32 16 }], align 16
@.str.103 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"gfig-line\00", align 1
@.str.105 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"Create line\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"rectangle\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"gfig-rectangle\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"Create rectangle\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"circle\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"gfig-circle\00", align 1
@.str.113 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"Create circle\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"ellipse\00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"gfig-ellipse\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"Create ellipse\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"arc\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"gfig-curve\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"Create arc\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"polygon\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"gfig-polygon\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"Create reg polygon\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"star\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"gfig-star\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.130 = private unnamed_addr constant [12 x i8] c"Create star\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"spiral\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"gfig-spiral\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.134 = private unnamed_addr constant [14 x i8] c"Create spiral\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"bezier\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"gfig-bezier\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.138 = private unnamed_addr constant [58 x i8] c"Create bezier curve. Shift + Button ends object creation.\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"move_obj\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"gfig-move-object\00", align 1
@.str.141 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"Move an object\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"move_point\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"gfig-move-point\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"Move a single point\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.148 = private unnamed_addr constant [17 x i8] c"gfig-copy-object\00", align 1
@.str.149 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"Copy an object\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"gfig-delete\00", align 1
@.str.153 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.154 = private unnamed_addr constant [17 x i8] c"Delete an object\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"gfig-select-object\00", align 1
@.str.157 = private unnamed_addr constant [17 x i8] c"Select an object\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"Actions\00", align 1
@.str.159 = private unnamed_addr constant [394 x i8] c"<ui>  <menubar name=\22gfig-menubar\22>    <menu name=\22File\22 action=\22gfig-file-menu\22>      <menuitem action=\22open\22 />      <menuitem action=\22save\22 />      <menuitem action=\22close\22 />    </menu>    <menu name=\22Edit\22 action=\22gfig-edit-menu\22>      <menuitem action=\22undo\22 />      <menuitem action=\22clear\22 />      <menuitem action=\22grid\22 />      <menuitem action=\22prefs\22 />    </menu>  </menubar></ui>\00", align 1
@.str.160 = private unnamed_addr constant [768 x i8] c"<ui>  <toolbar name=\22gfig-toolbar\22>    <toolitem action=\22line\22 />    <toolitem action=\22rectangle\22 />    <toolitem action=\22circle\22 />    <toolitem action=\22ellipse\22 />    <toolitem action=\22arc\22 />    <toolitem action=\22polygon\22 />    <toolitem action=\22star\22 />    <toolitem action=\22spiral\22 />    <toolitem action=\22bezier\22 />    <toolitem action=\22move_obj\22 />    <toolitem action=\22move_point\22 />    <toolitem action=\22copy\22 />    <toolitem action=\22delete\22 />    <toolitem action=\22select\22 />    <separator />    <toolitem action=\22raise\22 />    <toolitem action=\22lower\22 />    <toolitem action=\22top\22 />    <toolitem action=\22bottom\22 />    <separator />    <toolitem action=\22show_previous\22 />    <toolitem action=\22show_next\22 />    <toolitem action=\22show_all\22 />  </toolbar></ui>\00", align 1
@gfig_load_action_callback.dialog = internal global %struct._GtkWidget* null, align 8
@.str.161 = private unnamed_addr constant [28 x i8] c"Load Gfig Object Collection\00", align 1
@gfig_save_action_callback.dialog = internal global %struct._GtkWidget* null, align 8
@.str.162 = private unnamed_addr constant [18 x i8] c"Save Gfig Drawing\00", align 1
@obj_creating = external global %struct._GfigObject*, align 8
@tmp_line = external global %struct._GfigObject*, align 8
@tmp_bezier = external global %struct._GfigObject*, align 8
@gfig_grid_action_callback.dialog = internal global %struct._GtkWidget* null, align 8
@.str.163 = private unnamed_addr constant [5 x i8] c"Grid\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"gimp-gfig-grid\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c"Grid spacing:\00", align 1
@.str.166 = private unnamed_addr constant [28 x i8] c"Polar grid sectors desired:\00", align 1
@.str.167 = private unnamed_addr constant [28 x i8] c"Polar grid radius interval:\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"Rectangle\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"Polar\00", align 1
@.str.170 = private unnamed_addr constant [10 x i8] c"Isometric\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"Grid type:\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"White\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"Grey\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"Darker\00", align 1
@.str.177 = private unnamed_addr constant [8 x i8] c"Lighter\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"Very dark\00", align 1
@grid_gc_type = external global i32, align 4
@.str.179 = private unnamed_addr constant [12 x i8] c"Grid color:\00", align 1
@.str.180 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c"gfig-dialog.c\00", align 1
@__func__.gridtype_combo_callback = private unnamed_addr constant [24 x i8] c"gridtype_combo_callback\00", align 1
@gfig_prefs_action_callback.dialog = internal global %struct._GtkWidget* null, align 8
@.str.182 = private unnamed_addr constant [8 x i8] c"Options\00", align 1
@.str.183 = private unnamed_addr constant [18 x i8] c"gimp-gfig-options\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"Show position\00", align 1
@.str.185 = private unnamed_addr constant [20 x i8] c"Show control points\00", align 1
@.str.186 = private unnamed_addr constant [13 x i8] c"Antialiasing\00", align 1
@.str.187 = private unnamed_addr constant [10 x i8] c"Max undo:\00", align 1
@.str.188 = private unnamed_addr constant [12 x i8] c"Transparent\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@page_menu_bg = internal global %struct._GtkWidget* null, align 8
@.str.190 = private unnamed_addr constant [97 x i8] c"Layer background type. Copy causes the previous layer to be copied before the draw is performed.\00", align 1
@.str.191 = private unnamed_addr constant [12 x i8] c"Background:\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"Feather\00", align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"Radius:\00", align 1
@__func__.paint_combo_callback = private unnamed_addr constant [21 x i8] c"paint_combo_callback\00", align 1
@paint_timeout = internal global i32 0, align 4
@.str.194 = private unnamed_addr constant [44 x i8] c"Trying to raise object that does not exist.\00", align 1
@.str.195 = private unnamed_addr constant [44 x i8] c"Trying to lower object that does not exist.\00", align 1
@toggle_obj_type.p_cursors = internal global [16 x %struct._GdkCursor*] zeroinitializer, align 16
@.str.196 = private unnamed_addr constant [25 x i8] c"This tool has no options\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gfig_dialog() #0 {
entry:
  %main_hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %gfig = alloca %struct._GFigObj*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %newlayer = alloca i32, align 4
  %menubar = alloca %struct._GtkWidget*, align 8
  %toolbar = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %img_width = alloca i32, align 4
  %img_height = alloca i32, align 4
  %img_type = alloca i32, align 4
  %toggle = alloca %struct._GtkWidget*, align 8
  %right_vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %ui_manager = alloca %struct._GtkUIManager*, align 8
  %empty_label = alloca %struct._GtkWidget*, align 8
  %path = alloca i8*, align 8
  %gimprc = alloca i8*, align 8
  %full_path = alloca i8*, align 8
  %esc_path = alloca i8*, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1)
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 3
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_width(i32 %1)
  store i32 %call, i32* %img_width, align 4
  %2 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %2, i32 0, i32 3
  %3 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_height(i32 %3)
  store i32 %call2, i32* %img_height, align 4
  %4 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id3 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %4, i32 0, i32 3
  %5 = load i32, i32* %drawable_id3, align 4
  %call4 = call i32 @gimp_drawable_type_with_alpha(i32 %5)
  store i32 %call4, i32* %img_type, align 4
  store %struct._GList* null, %struct._GList** @gfig_list, align 8
  store i32 -1, i32* @undo_level, align 4
  %6 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id5 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %6, i32 0, i32 3
  %7 = load i32, i32* %drawable_id5, align 4
  %call6 = call %struct._GimpParasite* @gimp_item_get_parasite(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  store %struct._GimpParasite* %call6, %struct._GimpParasite** %parasite, align 8
  %8 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %enable_repaint = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %8, i32 0, i32 18
  store i32 0, i32* %enable_repaint, align 4
  %9 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %debug_styles = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %9, i32 0, i32 0
  store i32 0, i32* %debug_styles, align 4
  %10 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %default_style = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %10, i32 0, i32 7
  call void @gfig_read_gimp_style(%struct._Style* %default_style, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %11 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 9), align 4
  %12 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %default_style7 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %12, i32 0, i32 7
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %default_style7, i32 0, i32 13
  store i32 %11, i32* %paint_type, align 4
  %13 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool = icmp ne %struct._GimpParasite* %13, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id8 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %14, i32 0, i32 3
  %15 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_fill(i32 %15, i32 3)
  %16 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %using_new_layer = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %16, i32 0, i32 19
  store i32 0, i32* %using_new_layer, align 4
  %17 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %17)
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %18, i32 0, i32 2
  %19 = load i32, i32* %image_id, align 4
  %20 = load i32, i32* %img_width, align 4
  %21 = load i32, i32* %img_height, align 4
  %22 = load i32, i32* %img_type, align 4
  %call10 = call i32 @gimp_layer_new(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %20, i32 %21, i32 %22, double 1.000000e+02, i32 0)
  store i32 %call10, i32* %newlayer, align 4
  %23 = load i32, i32* %newlayer, align 4
  %call11 = call i32 @gimp_drawable_fill(i32 %23, i32 3)
  %24 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id12 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %24, i32 0, i32 2
  %25 = load i32, i32* %image_id12, align 4
  %26 = load i32, i32* %newlayer, align 4
  %call13 = call i32 @gimp_image_insert_layer(i32 %25, i32 %26, i32 -1, i32 -1)
  %27 = load i32, i32* %newlayer, align 4
  %28 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id14 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %28, i32 0, i32 3
  store i32 %27, i32* %drawable_id14, align 4
  %29 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %using_new_layer15 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %29, i32 0, i32 19
  store i32 1, i32* %using_new_layer15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %30 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id16 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %30, i32 0, i32 3
  %31 = load i32, i32* %drawable_id16, align 4
  %call17 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %31)
  store %struct._GimpDrawable* %call17, %struct._GimpDrawable** @gfig_drawable, align 8
  call void @gfig_stock_init()
  %call18 = call i8* @gimp_gimprc_query(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call18, i8** %path, align 8
  %32 = load i8*, i8** %path, align 8
  %tobool19 = icmp ne i8* %32, null
  br i1 %tobool19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.end
  %33 = load i8*, i8** %path, align 8
  %call21 = call noalias i8* @g_filename_from_utf8(i8* %33, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call21, i8** @gfig_path, align 8
  %34 = load i8*, i8** %path, align 8
  call void @g_free(i8* %34)
  br label %if.end.28

if.else.22:                                       ; preds = %if.end
  %call23 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call23, i8** %gimprc, align 8
  %call24 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  store i8* %call24, i8** %full_path, align 8
  %35 = load i8*, i8** %full_path, align 8
  %call25 = call noalias i8* @g_strescape(i8* %35, i8* null)
  store i8* %call25, i8** %esc_path, align 8
  %36 = load i8*, i8** %full_path, align 8
  call void @g_free(i8* %36)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i32 0, i32 0)) #4
  %37 = load i8*, i8** %esc_path, align 8
  %38 = load i8*, i8** %gimprc, align 8
  %call27 = call i8* @gimp_filename_to_utf8(i8* %38)
  call void (i8*, ...) @g_message(i8* %call26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %37, i8* %call27)
  %39 = load i8*, i8** %gimprc, align 8
  call void @g_free(i8* %39)
  %40 = load i8*, i8** %esc_path, align 8
  call void @g_free(i8* %40)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.22, %if.then.20
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #4
  %call30 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** @top_level_dlg, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** @top_level_dlg, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_dialog_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call31)
  %43 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %43, i32 -5, i32 -6, i32 -1)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** @top_level_dlg, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** @top_level_dlg, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @gfig_response to void ()*), i8* %47, void (i8*, %struct._GClosure*)* null, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** @top_level_dlg, align 8
  %call34 = call %struct._GtkUIManager* @create_ui_manager(%struct._GtkWidget* %48)
  store %struct._GtkUIManager* %call34, %struct._GtkUIManager** %ui_manager, align 8
  %49 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call35 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %menubar, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** @top_level_dlg, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_dialog_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call36)
  %52 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkDialog*
  %call38 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %52)
  %53 = bitcast %struct._GtkWidget* %call38 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call39)
  %54 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %54, %struct._GtkWidget* %55, i32 0, i32 0, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  %57 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call41 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %toolbar, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_toolbar_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call42)
  %60 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkToolbar*
  call void @gtk_toolbar_set_style(%struct._GtkToolbar* %60, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** @top_level_dlg, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_dialog_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call44)
  %63 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkDialog*
  %call46 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %63)
  %64 = bitcast %struct._GtkWidget* %call46 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_box_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call47)
  %65 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkBox*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %65, %struct._GtkWidget* %66, i32 0, i32 0, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %68 = load i32, i32* @undo_level, align 4
  %cmp = icmp sge i32 %68, 0
  %conv = zext i1 %cmp to i32
  call void @gfig_dialog_action_set_sensitive(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %conv)
  %call49 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %main_hbox, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_container_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call50)
  %71 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %71, i32 12)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** @top_level_dlg, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_dialog_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call52)
  %74 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkDialog*
  %call54 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %74)
  %75 = bitcast %struct._GtkWidget* %call54 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_box_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call55)
  %76 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkBox*
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %76, %struct._GtkWidget* %77, i32 1, i32 1, i32 0)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call57)
  %80 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %call59 = call %struct._GtkWidget* @make_preview()
  call void @gtk_box_pack_start(%struct._GtkBox* %80, %struct._GtkWidget* %call59, i32 0, i32 0, i32 0)
  %81 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %81, i32 0, i32 6
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %call60 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %right_vbox, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_box_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call61)
  %85 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkBox*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %85, %struct._GtkWidget* %86, i32 0, i32 0, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)) #4
  %call64 = call %struct._GtkWidget* @gimp_frame_new(i8* %call63)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %frame, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_box_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call65)
  %90 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkBox*
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %90, %struct._GtkWidget* %91, i32 0, i32 0, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %92)
  %call67 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call67, %struct._GtkWidget** @tool_options_notebook, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_container_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call68)
  %95 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkContainer*
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** @tool_options_notebook, align 8
  call void @gtk_container_add(%struct._GtkContainer* %95, %struct._GtkWidget* %96)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** @tool_options_notebook, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_notebook_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call70)
  %99 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_tabs(%struct._GtkNotebook* %99, i32 0)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** @tool_options_notebook, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_notebook_get_type() #5
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call72)
  %102 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_border(%struct._GtkNotebook* %102, i32 0)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** @tool_options_notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** @tool_options_notebook, align 8
  call void @create_notebook_pages(%struct._GtkWidget* %104)
  %call74 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %frame, align 8
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_box_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call75)
  %107 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkBox*
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %107, %struct._GtkWidget* %108, i32 0, i32 0, i32 0)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %109)
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)) #4
  %call78 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call77)
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %toggle, align 8
  %110 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %paint_type_toggle = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %110, i32 0, i32 15
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %paint_type_toggle, align 8
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_toggle_button_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call79)
  %113 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkToggleButton*
  %114 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 9), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %113, i32 %114)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_frame_get_type() #5
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call81)
  %117 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkFrame*
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %117, %struct._GtkWidget* %118)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %119)
  %call83 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %hbox, align 8
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_container_get_type() #5
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call84)
  %122 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkContainer*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %122, %struct._GtkWidget* %123)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %call86 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %vbox, align 8
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_box_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call87)
  %127 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkBox*
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %127, %struct._GtkWidget* %128, i32 0, i32 0, i32 0)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %129)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %131 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 9), align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %130, i32 %131)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %133 = bitcast %struct._GtkWidget* %132 to i8*
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %135 = bitcast %struct._GtkWidget* %134 to i8*
  %call89 = call i64 @g_signal_connect_data(i8* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkToggleButton*, i8*)* @set_paint_type_callback to void ()*), i8* %135, void (i8*, %struct._GClosure*)* null, i32 0)
  %call90 = call noalias i8* @g_malloc0_n(i64 1, i64 32)
  %136 = bitcast i8* %call90 to %struct._GimpRGB*
  %137 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %fg_color = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %137, i32 0, i32 16
  store %struct._GimpRGB* %136, %struct._GimpRGB** %fg_color, align 8
  %138 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %fg_color91 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %138, i32 0, i32 16
  %139 = load %struct._GimpRGB*, %struct._GimpRGB** %fg_color91, align 8
  %call92 = call %struct._GtkWidget* @gimp_color_button_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 100, i32 20, %struct._GimpRGB* %139, i32 1)
  %140 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %fg_color_button = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %140, i32 0, i32 9
  store %struct._GtkWidget* %call92, %struct._GtkWidget** %fg_color_button, align 8
  %141 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %fg_color_button93 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %141, i32 0, i32 9
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %fg_color_button93, align 8
  %143 = bitcast %struct._GtkWidget* %142 to i8*
  %144 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %fg_color94 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %144, i32 0, i32 16
  %145 = load %struct._GimpRGB*, %struct._GimpRGB** %fg_color94, align 8
  %146 = bitcast %struct._GimpRGB* %145 to i8*
  %call95 = call i64 @g_signal_connect_data(i8* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, i8*)* @set_foreground_callback to void ()*), i8* %146, void (i8*, %struct._GClosure*)* null, i32 0)
  %147 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %fg_color_button96 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %147, i32 0, i32 9
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %fg_color_button96, align 8
  %149 = bitcast %struct._GtkWidget* %148 to %struct._GTypeInstance*
  %call97 = call i64 @gimp_color_button_get_type() #5
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call97)
  %150 = bitcast %struct._GTypeInstance* %call98 to %struct._GimpColorButton*
  %151 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %default_style99 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %151, i32 0, i32 7
  %foreground = getelementptr inbounds %struct._Style, %struct._Style* %default_style99, i32 0, i32 14
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %150, %struct._GimpRGB* %foreground)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %153 = bitcast %struct._GtkWidget* %152 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_box_get_type() #5
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call100)
  %154 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkBox*
  %155 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %fg_color_button102 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %155, i32 0, i32 9
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %fg_color_button102, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %154, %struct._GtkWidget* %156, i32 0, i32 0, i32 0)
  %157 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %fg_color_button103 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %157, i32 0, i32 9
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %fg_color_button103, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %158)
  %159 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %default_style104 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %159, i32 0, i32 7
  %brush_name = getelementptr inbounds %struct._Style, %struct._Style* %default_style104, i32 0, i32 1
  %160 = load i8*, i8** %brush_name, align 8
  %call105 = call %struct._GtkWidget* @gimp_brush_select_button_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* %160, double -1.000000e+00, i32 -1, i32 -1)
  %161 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %brush_select = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %161, i32 0, i32 11
  store %struct._GtkWidget* %call105, %struct._GtkWidget** %brush_select, align 8
  %162 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %brush_select106 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %162, i32 0, i32 11
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %brush_select106, align 8
  %164 = bitcast %struct._GtkWidget* %163 to i8*
  %call107 = call i64 @g_signal_connect_data(i8* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GimpBrushSelectButton*, i8*, double, i32, i32, i32, i32, i8*, i32, i8*)* @gfig_brush_changed_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %166 = bitcast %struct._GtkWidget* %165 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_box_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call108)
  %167 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkBox*
  %168 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %brush_select110 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %168, i32 0, i32 11
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %brush_select110, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %167, %struct._GtkWidget* %169, i32 0, i32 0, i32 0)
  %170 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %brush_select111 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %170, i32 0, i32 11
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %brush_select111, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %171)
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #4
  %call113 = call %struct._GtkWidget* @gimp_frame_new(i8* %call112)
  store %struct._GtkWidget* %call113, %struct._GtkWidget** %frame, align 8
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox, align 8
  %173 = bitcast %struct._GtkWidget* %172 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_box_get_type() #5
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 %call114)
  %174 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkBox*
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %174, %struct._GtkWidget* %175, i32 0, i32 0, i32 0)
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %176)
  %call116 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call116, %struct._GtkWidget** %hbox, align 8
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call117 = call i64 @gtk_container_get_type() #5
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call117)
  %179 = bitcast %struct._GTypeInstance* %call118 to %struct._GtkContainer*
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %179, %struct._GtkWidget* %180)
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %181)
  %call119 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call119, %struct._GtkWidget** %vbox, align 8
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %183 = bitcast %struct._GtkWidget* %182 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_box_get_type() #5
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call120)
  %184 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkBox*
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %184, %struct._GtkWidget* %185, i32 0, i32 0, i32 0)
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %186)
  %call122 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0)) #4
  %call123 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0)) #4
  %call124 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)) #4
  %call125 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0)) #4
  %call126 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0)) #4
  %call127 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0)) #4
  %call128 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call122, i32 0, i8* %call123, i32 1, i8* %call124, i32 2, i8* %call125, i32 3, i8* %call126, i32 4, i8* %call127, i32 5, i8* null)
  store %struct._GtkWidget* %call128, %struct._GtkWidget** %combo, align 8
  %187 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %fillstyle_combo = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %187, i32 0, i32 14
  store %struct._GtkWidget* %call128, %struct._GtkWidget** %fillstyle_combo, align 8
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %189 = bitcast %struct._GtkWidget* %188 to %struct._GTypeInstance*
  %call129 = call i64 @gimp_int_combo_box_get_type() #5
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %189, i64 %call129)
  %190 = bitcast %struct._GTypeInstance* %call130 to %struct._GimpIntComboBox*
  %call131 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %190, i32 0)
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %192 = bitcast %struct._GtkWidget* %191 to i8*
  %call132 = call i64 @g_signal_connect_data(i8* %192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @select_filltype_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %194 = bitcast %struct._GtkWidget* %193 to %struct._GTypeInstance*
  %call133 = call i64 @gtk_box_get_type() #5
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %194, i64 %call133)
  %195 = bitcast %struct._GTypeInstance* %call134 to %struct._GtkBox*
  %196 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %195, %struct._GtkWidget* %196, i32 0, i32 0, i32 0)
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %197)
  %call135 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call135, %struct._GtkWidget** @fill_type_notebook, align 8
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %199 = bitcast %struct._GtkWidget* %198 to %struct._GTypeInstance*
  %call136 = call i64 @gtk_box_get_type() #5
  %call137 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %199, i64 %call136)
  %200 = bitcast %struct._GTypeInstance* %call137 to %struct._GtkBox*
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** @fill_type_notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %200, %struct._GtkWidget* %201, i32 0, i32 0, i32 0)
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** @fill_type_notebook, align 8
  %203 = bitcast %struct._GtkWidget* %202 to %struct._GTypeInstance*
  %call138 = call i64 @gtk_notebook_get_type() #5
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %203, i64 %call138)
  %204 = bitcast %struct._GTypeInstance* %call139 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_tabs(%struct._GtkNotebook* %204, i32 0)
  %205 = load %struct._GtkWidget*, %struct._GtkWidget** @fill_type_notebook, align 8
  %206 = bitcast %struct._GtkWidget* %205 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_notebook_get_type() #5
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %206, i64 %call140)
  %207 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_border(%struct._GtkNotebook* %207, i32 0)
  %208 = load %struct._GtkWidget*, %struct._GtkWidget** @fill_type_notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %208)
  %call142 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0))
  store %struct._GtkWidget* %call142, %struct._GtkWidget** %empty_label, align 8
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %empty_label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %209)
  %210 = load %struct._GtkWidget*, %struct._GtkWidget** @fill_type_notebook, align 8
  %211 = bitcast %struct._GtkWidget* %210 to %struct._GTypeInstance*
  %call143 = call i64 @gtk_notebook_get_type() #5
  %call144 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %211, i64 %call143)
  %212 = bitcast %struct._GTypeInstance* %call144 to %struct._GtkNotebook*
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %empty_label, align 8
  %call145 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %212, %struct._GtkWidget* %213, %struct._GtkWidget* null)
  %call146 = call noalias i8* @g_malloc0_n(i64 1, i64 32)
  %214 = bitcast i8* %call146 to %struct._GimpRGB*
  %215 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bg_color = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %215, i32 0, i32 17
  store %struct._GimpRGB* %214, %struct._GimpRGB** %bg_color, align 8
  %216 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bg_color147 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %216, i32 0, i32 17
  %217 = load %struct._GimpRGB*, %struct._GimpRGB** %bg_color147, align 8
  %call148 = call %struct._GtkWidget* @gimp_color_button_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 100, i32 20, %struct._GimpRGB* %217, i32 1)
  %218 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bg_color_button = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %218, i32 0, i32 10
  store %struct._GtkWidget* %call148, %struct._GtkWidget** %bg_color_button, align 8
  %219 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bg_color_button149 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %219, i32 0, i32 10
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %bg_color_button149, align 8
  %221 = bitcast %struct._GtkWidget* %220 to i8*
  %222 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bg_color150 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %222, i32 0, i32 17
  %223 = load %struct._GimpRGB*, %struct._GimpRGB** %bg_color150, align 8
  %224 = bitcast %struct._GimpRGB* %223 to i8*
  %call151 = call i64 @g_signal_connect_data(i8* %221, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, i8*)* @set_background_callback to void ()*), i8* %224, void (i8*, %struct._GClosure*)* null, i32 0)
  %225 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bg_color_button152 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %225, i32 0, i32 10
  %226 = load %struct._GtkWidget*, %struct._GtkWidget** %bg_color_button152, align 8
  %227 = bitcast %struct._GtkWidget* %226 to %struct._GTypeInstance*
  %call153 = call i64 @gimp_color_button_get_type() #5
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %227, i64 %call153)
  %228 = bitcast %struct._GTypeInstance* %call154 to %struct._GimpColorButton*
  %229 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %default_style155 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %229, i32 0, i32 7
  %background = getelementptr inbounds %struct._Style, %struct._Style* %default_style155, i32 0, i32 15
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %228, %struct._GimpRGB* %background)
  %230 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bg_color_button156 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %230, i32 0, i32 10
  %231 = load %struct._GtkWidget*, %struct._GtkWidget** %bg_color_button156, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %231)
  %232 = load %struct._GtkWidget*, %struct._GtkWidget** @fill_type_notebook, align 8
  %233 = bitcast %struct._GtkWidget* %232 to %struct._GTypeInstance*
  %call157 = call i64 @gtk_notebook_get_type() #5
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %233, i64 %call157)
  %234 = bitcast %struct._GTypeInstance* %call158 to %struct._GtkNotebook*
  %235 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bg_color_button159 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %235, i32 0, i32 10
  %236 = load %struct._GtkWidget*, %struct._GtkWidget** %bg_color_button159, align 8
  %call160 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %234, %struct._GtkWidget* %236, %struct._GtkWidget* null)
  %237 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %default_style161 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %237, i32 0, i32 7
  %pattern = getelementptr inbounds %struct._Style, %struct._Style* %default_style161, i32 0, i32 11
  %238 = load i8*, i8** %pattern, align 8
  %call162 = call %struct._GtkWidget* @gimp_pattern_select_button_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* %238)
  %239 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %pattern_select = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %239, i32 0, i32 12
  store %struct._GtkWidget* %call162, %struct._GtkWidget** %pattern_select, align 8
  %240 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %pattern_select163 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %240, i32 0, i32 12
  %241 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern_select163, align 8
  %242 = bitcast %struct._GtkWidget* %241 to i8*
  %call164 = call i64 @g_signal_connect_data(i8* %242, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPatternSelectButton*, i8*, i32, i32, i32, i8*, i32, i8*)* @gfig_pattern_changed_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %243 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %pattern_select165 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %243, i32 0, i32 12
  %244 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern_select165, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %244)
  %245 = load %struct._GtkWidget*, %struct._GtkWidget** @fill_type_notebook, align 8
  %246 = bitcast %struct._GtkWidget* %245 to %struct._GTypeInstance*
  %call166 = call i64 @gtk_notebook_get_type() #5
  %call167 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %246, i64 %call166)
  %247 = bitcast %struct._GTypeInstance* %call167 to %struct._GtkNotebook*
  %248 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %pattern_select168 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %248, i32 0, i32 12
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern_select168, align 8
  %call169 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %247, %struct._GtkWidget* %249, %struct._GtkWidget* null)
  %250 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %default_style170 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %250, i32 0, i32 7
  %gradient = getelementptr inbounds %struct._Style, %struct._Style* %default_style170, i32 0, i32 12
  %251 = load i8*, i8** %gradient, align 8
  %call171 = call %struct._GtkWidget* @gimp_gradient_select_button_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* %251)
  %252 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %gradient_select = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %252, i32 0, i32 13
  store %struct._GtkWidget* %call171, %struct._GtkWidget** %gradient_select, align 8
  %253 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %gradient_select172 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %253, i32 0, i32 13
  %254 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_select172, align 8
  %255 = bitcast %struct._GtkWidget* %254 to i8*
  %call173 = call i64 @g_signal_connect_data(i8* %255, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGradientSelectButton*, i8*, i32, double*, i32, i8*)* @gfig_gradient_changed_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %256 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %gradient_select174 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %256, i32 0, i32 13
  %257 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_select174, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %257)
  %258 = load %struct._GtkWidget*, %struct._GtkWidget** @fill_type_notebook, align 8
  %259 = bitcast %struct._GtkWidget* %258 to %struct._GTypeInstance*
  %call175 = call i64 @gtk_notebook_get_type() #5
  %call176 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %259, i64 %call175)
  %260 = bitcast %struct._GTypeInstance* %call176 to %struct._GtkNotebook*
  %261 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %gradient_select177 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %261, i32 0, i32 13
  %262 = load %struct._GtkWidget*, %struct._GtkWidget** %gradient_select177, align 8
  %call178 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %260, %struct._GtkWidget* %262, %struct._GtkWidget* null)
  %call179 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call179, %struct._GtkWidget** %vbox, align 8
  %263 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox, align 8
  %264 = bitcast %struct._GtkWidget* %263 to %struct._GTypeInstance*
  %call180 = call i64 @gtk_box_get_type() #5
  %call181 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %264, i64 %call180)
  %265 = bitcast %struct._GTypeInstance* %call181 to %struct._GtkBox*
  %266 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %265, %struct._GtkWidget* %266, i32 0, i32 0, i32 0)
  %267 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %267)
  %call182 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0)) #4
  %call183 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call182)
  store %struct._GtkWidget* %call183, %struct._GtkWidget** %toggle, align 8
  %268 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %269 = bitcast %struct._GtkWidget* %268 to %struct._GTypeInstance*
  %call184 = call i64 @gtk_toggle_button_get_type() #5
  %call185 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %269, i64 %call184)
  %270 = bitcast %struct._GTypeInstance* %call185 to %struct._GtkToggleButton*
  %271 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %show_background = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %271, i32 0, i32 1
  %272 = load i32, i32* %show_background, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %270, i32 %272)
  %273 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %274 = bitcast %struct._GtkWidget* %273 to %struct._GTypeInstance*
  %call186 = call i64 @gtk_box_get_type() #5
  %call187 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %274, i64 %call186)
  %275 = bitcast %struct._GTypeInstance* %call187 to %struct._GtkBox*
  %276 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %275, %struct._GtkWidget* %276, i32 0, i32 0, i32 0)
  %277 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %278 = bitcast %struct._GtkWidget* %277 to i8*
  %279 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %show_background188 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %279, i32 0, i32 1
  %280 = bitcast i32* %show_background188 to i8*
  %call189 = call i64 @g_signal_connect_data(i8* %278, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %280, void (i8*, %struct._GClosure*)* null, i32 0)
  %281 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %282 = bitcast %struct._GtkWidget* %281 to i8*
  %283 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview190 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %283, i32 0, i32 6
  %284 = load %struct._GtkWidget*, %struct._GtkWidget** %preview190, align 8
  %285 = bitcast %struct._GtkWidget* %284 to i8*
  %call191 = call i64 @g_signal_connect_data(i8* %282, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_queue_draw to void ()*), i8* %285, void (i8*, %struct._GClosure*)* null, i32 2)
  %286 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %286)
  %call192 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i64 12)
  %call193 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call192)
  store %struct._GtkWidget* %call193, %struct._GtkWidget** %toggle, align 8
  %287 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %288 = bitcast %struct._GtkWidget* %287 to %struct._GTypeInstance*
  %call194 = call i64 @gtk_box_get_type() #5
  %call195 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %288, i64 %call194)
  %289 = bitcast %struct._GTypeInstance* %call195 to %struct._GtkBox*
  %290 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %289, %struct._GtkWidget* %290, i32 0, i32 0, i32 0)
  %291 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %292 = bitcast %struct._GtkWidget* %291 to i8*
  %call196 = call i64 @g_signal_connect_data(i8* %292, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %293 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %293)
  %294 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  store %struct._GtkWidget* %294, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 5), align 8
  %call197 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0)) #4
  %call198 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call197)
  store %struct._GtkWidget* %call198, %struct._GtkWidget** %toggle, align 8
  %295 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %296 = bitcast %struct._GtkWidget* %295 to %struct._GTypeInstance*
  %call199 = call i64 @gtk_box_get_type() #5
  %call200 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %296, i64 %call199)
  %297 = bitcast %struct._GTypeInstance* %call200 to %struct._GtkBox*
  %298 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %297, %struct._GtkWidget* %298, i32 0, i32 0, i32 0)
  %299 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %300 = bitcast %struct._GtkWidget* %299 to i8*
  %call201 = call i64 @g_signal_connect_data(i8* %300, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %301 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %302 = bitcast %struct._GtkWidget* %301 to i8*
  %call202 = call i64 @g_signal_connect_data(i8* %302, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* @draw_grid_clear, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %303 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %303)
  %304 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  store %struct._GtkWidget* %304, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 4), align 8
  %305 = load i8*, i8** @gfig_path, align 8
  call void @gfig_list_load_all(i8* %305)
  %call203 = call i8* @gimp_context_get_brush()
  %306 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bdesc = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %306, i32 0, i32 8
  %name = getelementptr inbounds %struct.BrushDesc, %struct.BrushDesc* %bdesc, i32 0, i32 0
  store i8* %call203, i8** %name, align 8
  %307 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bdesc204 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %307, i32 0, i32 8
  %width = getelementptr inbounds %struct.BrushDesc, %struct.BrushDesc* %bdesc204, i32 0, i32 4
  %308 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %bdesc205 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %308, i32 0, i32 8
  %height = getelementptr inbounds %struct.BrushDesc, %struct.BrushDesc* %bdesc205, i32 0, i32 5
  call void @mygimp_brush_info(i32* %width, i32* %height)
  %309 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %309)
  %310 = load %struct._GtkWidget*, %struct._GtkWidget** @top_level_dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %310)
  %call206 = call %struct._GFigObj* @gfig_load_from_parasite()
  store %struct._GFigObj* %call206, %struct._GFigObj** %gfig, align 8
  %311 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %tobool207 = icmp ne %struct._GFigObj* %311, null
  br i1 %tobool207, label %if.then.208, label %if.end.212

if.then.208:                                      ; preds = %if.end.28
  %312 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %call209 = call i32 @gfig_list_insert(%struct._GFigObj* %312)
  %313 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  call void @new_obj_2edit(%struct._GFigObj* %313)
  %314 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %default_style210 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %314, i32 0, i32 7
  call void @gfig_style_set_context_from_style(%struct._Style* %default_style210)
  %315 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %default_style211 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %315, i32 0, i32 7
  call void @gfig_style_apply(%struct._Style* %default_style211)
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.208, %if.end.28
  %316 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %enable_repaint213 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %316, i32 0, i32 18
  store i32 1, i32* %enable_repaint213, align 4
  call void @gfig_paint_callback()
  call void @gtk_main()
  ret i32 1
}

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_drawable_type_with_alpha(i32) #1

declare %struct._GimpParasite* @gimp_item_get_parasite(i32, i8*) #1

declare void @gfig_read_gimp_style(%struct._Style*, i8*) #1

declare i32 @gimp_drawable_fill(i32, i32) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gfig_stock_init() #1

declare i8* @gimp_gimprc_query(i8*) #1

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare void @g_free(i8*) #1

declare noalias i8* @gimp_personal_rc_file(i8*) #1

declare noalias i8* @gimp_config_build_data_path(i8*) #1

declare noalias i8* @g_strescape(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @gimp_filename_to_utf8(i8*) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gfig_response(%struct._GtkWidget* %widget, i32 %response_id, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %gfig = alloca %struct._GFigObj*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 -4, label %sw.bb
    i32 -6, label %sw.bb
    i32 -5, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %using_new_layer = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %1, i32 0, i32 19
  %2 = load i32, i32* %using_new_layer, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %3 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %3, i32 0, i32 2
  %4 = load i32, i32* %image_id, align 4
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 3
  %6 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_image_remove_layer(i32 %4, i32 %6)
  br label %if.end.7

if.else:                                          ; preds = %sw.bb
  %7 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %7, i32 0, i32 4
  %8 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %8, i32 0, i32 5
  %9 = load %struct._GList*, %struct._GList** %obj_list, align 8
  call void @free_all_objs(%struct._GList* %9)
  %10 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %10, i32 0, i32 4
  %11 = load %struct._GFigObj*, %struct._GFigObj** %current_obj1, align 8
  %obj_list2 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %11, i32 0, i32 5
  store %struct._GList* null, %struct._GList** %obj_list2, align 8
  %call3 = call %struct._GFigObj* @gfig_load_from_parasite()
  store %struct._GFigObj* %call3, %struct._GFigObj** %gfig, align 8
  %12 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %tobool4 = icmp ne %struct._GFigObj* %12, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %13 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %call6 = call i32 @gfig_list_insert(%struct._GFigObj* %13)
  %14 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  call void @new_obj_2edit(%struct._GFigObj* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  %15 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %enable_repaint = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %15, i32 0, i32 18
  store i32 1, i32* %enable_repaint, align 4
  call void @gfig_paint_callback()
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %call9 = call i32 @gfig_save_as_parasite()
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %if.end.7
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %16)
  call void @gtk_main_quit()
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkUIManager* @create_ui_manager(%struct._GtkWidget* %window) #0 {
entry:
  %window.addr = alloca %struct._GtkWidget*, align 8
  %ui_manager = alloca %struct._GtkUIManager*, align 8
  store %struct._GtkWidget* %window, %struct._GtkWidget** %window.addr, align 8
  %call = call %struct._GtkUIManager* @gtk_ui_manager_new()
  store %struct._GtkUIManager* %call, %struct._GtkUIManager** %ui_manager, align 8
  %call1 = call %struct._GtkActionGroup* @gtk_action_group_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.158, i32 0, i32 0))
  store %struct._GtkActionGroup* %call1, %struct._GtkActionGroup** @gfig_actions, align 8
  %0 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** @gfig_actions, align 8
  call void @gtk_action_group_set_translation_domain(%struct._GtkActionGroup* %0, i8* null)
  %1 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** @gfig_actions, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to i8*
  call void @gtk_action_group_add_actions(%struct._GtkActionGroup* %1, %struct._GtkActionEntry* getelementptr inbounds ([17 x %struct._GtkActionEntry], [17 x %struct._GtkActionEntry]* @create_ui_manager.actions, i32 0, i32 0), i32 17, i8* %3)
  %4 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** @gfig_actions, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  call void @gtk_action_group_add_radio_actions(%struct._GtkActionGroup* %4, %struct._GtkRadioActionEntry* getelementptr inbounds ([14 x %struct._GtkRadioActionEntry], [14 x %struct._GtkRadioActionEntry]* @create_ui_manager.radio_actions, i32 0, i32 0), i32 14, i32 1, void ()* bitcast (void (%struct._GtkRadioAction*, %struct._GtkRadioAction*, i8*)* @toggle_obj_type to void ()*), i8* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %10 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call4 = call %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager* %10)
  call void @gtk_window_add_accel_group(%struct._GtkWindow* %9, %struct._GtkAccelGroup* %call4)
  %11 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call5 = call %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager* %11)
  call void @gtk_accel_group_lock(%struct._GtkAccelGroup* %call5)
  %12 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %13 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** @gfig_actions, align 8
  call void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager* %12, %struct._GtkActionGroup* %13, i32 -1)
  %14 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** @gfig_actions, align 8
  %15 = bitcast %struct._GtkActionGroup* %14 to i8*
  call void @g_object_unref(i8* %15)
  %16 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call6 = call i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager* %16, i8* getelementptr inbounds ([394 x i8], [394 x i8]* @.str.159, i32 0, i32 0), i64 -1, %struct._GError** null)
  %17 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call7 = call i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager* %17, i8* getelementptr inbounds ([768 x i8], [768 x i8]* @.str.160, i32 0, i32 0), i64 -1, %struct._GError** null)
  %18 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  ret %struct._GtkUIManager* %18
}

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_toolbar_set_style(%struct._GtkToolbar*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toolbar_get_type() #3

; Function Attrs: nounwind uwtable
define void @gfig_dialog_action_set_sensitive(i8* %name, i32 %sensitive) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %sensitive.addr = alloca i32, align 4
  %action = alloca %struct._GtkAction*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %sensitive, i32* %sensitive.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gfig_dialog_action_set_sensitive, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.6

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** @gfig_actions, align 8
  %tobool = icmp ne %struct._GtkActionGroup* %1, null
  br i1 %tobool, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %do.end
  %2 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** @gfig_actions, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %2, i8* %3)
  store %struct._GtkAction* %call, %struct._GtkAction** %action, align 8
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool2 = icmp ne %struct._GtkAction* %4, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.then.1
  %5 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gfig_dialog_action_set_sensitive, i32 0, i32 0), i8* %5)
  br label %if.end.6

if.end.4:                                         ; preds = %if.then.1
  %6 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %7 = bitcast %struct._GtkAction* %6 to i8*
  %8 = load i32, i32* %sensitive.addr, align 4
  %tobool5 = icmp ne i32 %8, 0
  %cond = select i1 %tobool5, i32 1, i32 0
  call void (i8*, i8*, ...) @g_object_set(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 %cond, i8* null)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3, %if.end.4, %do.end
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @make_preview() #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gtk_notebook_set_show_tabs(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

declare void @gtk_notebook_set_show_border(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @create_notebook_pages(%struct._GtkWidget* %notebook) #0 {
entry:
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  call void @tool_option_no_option(%struct._GtkWidget* %0)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  call void @tool_option_no_option(%struct._GtkWidget* %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  call void @tool_option_no_option(%struct._GtkWidget* %2)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  call void @tool_option_no_option(%struct._GtkWidget* %3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  call void @tool_option_no_option(%struct._GtkWidget* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  call void @tool_options_poly(%struct._GtkWidget* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  call void @tool_options_star(%struct._GtkWidget* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  call void @tool_options_spiral(%struct._GtkWidget* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  call void @tool_options_bezier(%struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  call void @tool_option_no_option(%struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  call void @tool_option_no_option(%struct._GtkWidget* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  call void @tool_option_no_option(%struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  call void @tool_option_no_option(%struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  call void @tool_option_no_option(%struct._GtkWidget* %13)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gtk_frame_set_label_widget(%struct._GtkFrame*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @set_paint_type_callback(%struct._GtkToggleButton*, i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

declare void @set_foreground_callback(%struct._GimpColorButton*, i8*) #1

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #3

declare %struct._GtkWidget* @gimp_brush_select_button_new(i8*, i8*, double, i32, i32) #1

declare void @gfig_brush_changed_callback(%struct._GimpBrushSelectButton*, i8*, double, i32, i32, i32, i32, i8*, i32, i8*) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @select_filltype_callback(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %value)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @fill_type_notebook, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_notebook_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkNotebook*
  %6 = load i32, i32* %value, align 4
  %cmp = icmp slt i32 %6, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %value, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 3, %cond.false ]
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %5, i32 %cond)
  %8 = load i32, i32* %value, align 4
  %call5 = call %struct._Style* @gfig_context_get_current_style()
  %fill_type = getelementptr inbounds %struct._Style, %struct._Style* %call5, i32 0, i32 9
  store i32 %8, i32* %fill_type, align 4
  call void @gfig_paint_callback()
  ret void
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare void @set_background_callback(%struct._GimpColorButton*, i8*) #1

declare %struct._GtkWidget* @gimp_pattern_select_button_new(i8*, i8*) #1

declare void @gfig_pattern_changed_callback(%struct._GimpPatternSelectButton*, i8*, i32, i32, i32, i8*, i32, i8*) #1

declare %struct._GtkWidget* @gimp_gradient_select_button_new(i8*, i8*) #1

declare void @gfig_gradient_changed_callback(%struct._GimpGradientSelectButton*, i8*, i32, double*, i32, i8*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_label(i8*) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @draw_grid_clear() #0 {
entry:
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 6
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gfig_list_load_all(i8* %path) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %gfig = alloca %struct._GFigObj*, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 4
  store %struct._GFigObj* null, %struct._GFigObj** %current_obj, align 8
  call void @gfig_list_free_all()
  %1 = load %struct._GList*, %struct._GList** @gfig_list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._GFigObj* @gfig_new()
  store %struct._GFigObj* %call, %struct._GFigObj** %gfig, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0)) #4
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  %2 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %draw_name = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %2, i32 0, i32 2
  store i8* %call2, i8** %draw_name, align 8
  %3 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %call3 = call i32 @gfig_list_insert(%struct._GFigObj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GList*, %struct._GList** @gfig_list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GFigObj*
  %7 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj4 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %7, i32 0, i32 4
  store %struct._GFigObj* %6, %struct._GFigObj** %current_obj4, align 8
  ret void
}

declare i8* @gimp_context_get_brush() #1

declare void @mygimp_brush_info(i32*, i32*) #1

declare %struct._GFigObj* @gfig_load_from_parasite() #1

declare i32 @gfig_list_insert(%struct._GFigObj*) #1

declare void @new_obj_2edit(%struct._GFigObj*) #1

declare void @gfig_style_set_context_from_style(%struct._Style*) #1

declare void @gfig_style_apply(%struct._Style*) #1

; Function Attrs: nounwind uwtable
define void @gfig_paint_callback() #0 {
entry:
  %objs = alloca %struct._GList*, align 8
  %ccount = alloca i32, align 4
  %object = alloca %struct._GfigObject*, align 8
  %saved_filltype = alloca i32, align 4
  store i32 0, i32* %ccount, align 4
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %enable_repaint = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 18
  %1 = load i32, i32* %enable_repaint, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %2, i32 0, i32 4
  %3 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %tobool1 = icmp ne %struct._GFigObj* %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj2 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %4, i32 0, i32 4
  %5 = load %struct._GFigObj*, %struct._GFigObj** %current_obj2, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %5, i32 0, i32 5
  %6 = load %struct._GList*, %struct._GList** %obj_list, align 8
  store %struct._GList* %6, %struct._GList** %objs, align 8
  %7 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %7, i32 0, i32 3
  %8 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_fill(i32 %8, i32 3)
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end
  %9 = load %struct._GList*, %struct._GList** %objs, align 8
  %tobool3 = icmp ne %struct._GList* %9, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %ccount, align 4
  %11 = load i32, i32* @obj_show_single, align 4
  %cmp = icmp eq i32 %10, %11
  br i1 %cmp, label %if.then.6, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %while.body
  %12 = load i32, i32* @obj_show_single, align 4
  %cmp5 = icmp eq i32 %12, -1
  br i1 %cmp5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %lor.lhs.false.4, %while.body
  %13 = load %struct._GList*, %struct._GList** %objs, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GfigObject*
  store %struct._GfigObject* %15, %struct._GfigObject** %object, align 8
  %16 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %16, i32 0, i32 4
  call void @gfig_style_apply(%struct._Style* %style)
  %call7 = call %struct._Style* @gfig_context_get_current_style()
  %fill_type = getelementptr inbounds %struct._Style, %struct._Style* %call7, i32 0, i32 9
  %17 = load i32, i32* %fill_type, align 4
  store i32 %17, i32* %saved_filltype, align 4
  %18 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  %style8 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %18, i32 0, i32 4
  %fill_type9 = getelementptr inbounds %struct._Style, %struct._Style* %style8, i32 0, i32 9
  %19 = load i32, i32* %fill_type9, align 4
  %call10 = call %struct._Style* @gfig_context_get_current_style()
  %fill_type11 = getelementptr inbounds %struct._Style, %struct._Style* %call10, i32 0, i32 9
  store i32 %19, i32* %fill_type11, align 4
  %20 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  %class = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %20, i32 0, i32 1
  %21 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %paintfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %21, i32 0, i32 3
  %22 = load void (%struct._GfigObject*)*, void (%struct._GfigObject*)** %paintfunc, align 8
  %23 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  call void %22(%struct._GfigObject* %23)
  %24 = load i32, i32* %saved_filltype, align 4
  %call12 = call %struct._Style* @gfig_context_get_current_style()
  %fill_type13 = getelementptr inbounds %struct._Style, %struct._Style* %call12, i32 0, i32 9
  store i32 %24, i32* %fill_type13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.6, %lor.lhs.false.4
  %25 = load %struct._GList*, %struct._GList** %objs, align 8
  %tobool15 = icmp ne %struct._GList* %25, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %26 = load %struct._GList*, %struct._GList** %objs, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %27, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %objs, align 8
  %28 = load i32, i32* %ccount, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %ccount, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call16 = call i32 @gimp_displays_flush()
  %29 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** @back_pixbuf, align 8
  %tobool17 = icmp ne %struct._GdkPixbuf* %29, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.end
  %30 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** @back_pixbuf, align 8
  %31 = bitcast %struct._GdkPixbuf* %30 to i8*
  call void @g_object_unref(i8* %31)
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** @back_pixbuf, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %while.end
  %32 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %32, i32 0, i32 6
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %33)
  br label %return

return:                                           ; preds = %if.end.19, %if.then
  ret void
}

declare void @gtk_main() #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @draw_item(%struct._cairo* %cr, i32 %fill) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %fill.addr = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %fill, i32* %fill.addr, align 4
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %0, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %1 = load i32, i32* %fill.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill_preserve(%struct._cairo* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %3, double 3.000000e+00)
  %4 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %5, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %6, double 1.000000e+00)
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %7)
  ret void
}

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #1

declare void @cairo_fill_preserve(%struct._cairo*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_stroke_preserve(%struct._cairo*) #1

declare void @cairo_stroke(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define void @draw_circle(%struct._GdkPoint* %p, i32 %selected, %struct._cairo* %cr) #0 {
entry:
  %p.addr = alloca %struct._GdkPoint*, align 8
  %selected.addr = alloca i32, align 4
  %cr.addr = alloca %struct._cairo*, align 8
  store %struct._GdkPoint* %p, %struct._GdkPoint** %p.addr, align 8
  store i32 %selected, i32* %selected.addr, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 5), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %p.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 0
  %3 = load i32, i32* %x, align 4
  %call = call i32 @gfig_scale_x(i32 %3)
  %conv = sitofp i32 %call to double
  %add = fadd double %conv, 5.000000e-01
  %4 = load %struct._GdkPoint*, %struct._GdkPoint** %p.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %call1 = call i32 @gfig_scale_y(i32 %5)
  %conv2 = sitofp i32 %call1 to double
  %add3 = fadd double %conv2, 5.000000e-01
  call void @cairo_arc(%struct._cairo* %1, double %add, double %add3, double 4.000000e+00, double 0.000000e+00, double 0x401921FB54442D18)
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %7 = load i32, i32* %selected.addr, align 4
  call void @draw_item(%struct._cairo* %6, i32 %7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @cairo_arc(%struct._cairo*, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @gfig_scale_x(i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %1 to double
  %2 = load double, double* @scale_x_factor, align 8
  %div = fdiv double 1.000000e+00, %2
  %mul = fmul double %conv, %div
  %conv1 = fptosi double %mul to i32
  store i32 %conv1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %x.addr, align 4
  store i32 %3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @gfig_scale_y(i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  %conv = sitofp i32 %1 to double
  %2 = load double, double* @scale_y_factor, align 8
  %div = fdiv double 1.000000e+00, %2
  %mul = fmul double %conv, %div
  %conv1 = fptosi double %mul to i32
  store i32 %conv1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %y.addr, align 4
  store i32 %3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @draw_sqr(%struct._GdkPoint* %p, i32 %selected, %struct._cairo* %cr) #0 {
entry:
  %p.addr = alloca %struct._GdkPoint*, align 8
  %selected.addr = alloca i32, align 4
  %cr.addr = alloca %struct._cairo*, align 8
  store %struct._GdkPoint* %p, %struct._GdkPoint** %p.addr, align 8
  store i32 %selected, i32* %selected.addr, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 5), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %p.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 0
  %3 = load i32, i32* %x, align 4
  %call = call i32 @gfig_scale_x(i32 %3)
  %conv = sitofp i32 %call to double
  %add = fadd double %conv, 5.000000e-01
  %sub = fsub double %add, 4.000000e+00
  %4 = load %struct._GdkPoint*, %struct._GdkPoint** %p.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %call1 = call i32 @gfig_scale_y(i32 %5)
  %conv2 = sitofp i32 %call1 to double
  %add3 = fadd double %conv2, 5.000000e-01
  %sub4 = fsub double %add3, 4.000000e+00
  call void @cairo_rectangle(%struct._cairo* %1, double %sub, double %sub4, double 8.000000e+00, double 8.000000e+00)
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %7 = load i32, i32* %selected.addr, align 4
  call void @draw_item(%struct._cairo* %6, i32 %7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define void @options_update(%struct._GFigObj* %old_obj) #0 {
entry:
  %old_obj.addr = alloca %struct._GFigObj*, align 8
  store %struct._GFigObj* %old_obj, %struct._GFigObj** %old_obj.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %1 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %1, i32 0, i32 4
  %gridspacing = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts, i32 0, i32 0
  %2 = load i32, i32* %gridspacing, align 4
  %cmp = icmp ne i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %4 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts1 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %4, i32 0, i32 4
  %gridspacing2 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts1, i32 0, i32 0
  store i32 %3, i32* %gridspacing2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 10), align 4
  %6 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts3 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %6, i32 0, i32 4
  %grid_sectors_desired = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts3, i32 0, i32 10
  %7 = load i32, i32* %grid_sectors_desired, align 4
  %cmp4 = icmp ne i32 %5, %7
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %8 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 10), align 4
  %9 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts6 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %9, i32 0, i32 4
  %grid_sectors_desired7 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts6, i32 0, i32 10
  store i32 %8, i32* %grid_sectors_desired7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %10 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 7), align 8
  %11 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts9 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %11, i32 0, i32 4
  %grid_radius_interval = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts9, i32 0, i32 7
  %12 = load double, double* %grid_radius_interval, align 8
  %cmp10 = fcmp une double %10, %12
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %13 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 7), align 8
  %14 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts12 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %14, i32 0, i32 4
  %grid_radius_interval13 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts12, i32 0, i32 7
  store double %13, double* %grid_radius_interval13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %15 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 1), align 4
  %16 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts15 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %16, i32 0, i32 4
  %gridtype = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts15, i32 0, i32 1
  %17 = load i32, i32* %gridtype, align 4
  %cmp16 = icmp ne i32 %15, %17
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  %18 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 1), align 4
  %19 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts18 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %19, i32 0, i32 4
  %gridtype19 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts18, i32 0, i32 1
  store i32 %18, i32* %gridtype19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.14
  %20 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 2), align 4
  %21 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts21 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %21, i32 0, i32 4
  %drawgrid = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts21, i32 0, i32 2
  %22 = load i32, i32* %drawgrid, align 4
  %cmp22 = icmp ne i32 %20, %22
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.20
  %23 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 2), align 4
  %24 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts24 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %24, i32 0, i32 4
  %drawgrid25 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts24, i32 0, i32 2
  store i32 %23, i32* %drawgrid25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.20
  %25 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 3), align 4
  %26 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts27 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %26, i32 0, i32 4
  %snap2grid = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts27, i32 0, i32 3
  %27 = load i32, i32* %snap2grid, align 4
  %cmp28 = icmp ne i32 %25, %27
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.26
  %28 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 3), align 4
  %29 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts30 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %29, i32 0, i32 4
  %snap2grid31 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts30, i32 0, i32 3
  store i32 %28, i32* %snap2grid31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.26
  %30 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 4), align 4
  %31 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts33 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %31, i32 0, i32 4
  %lockongrid = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts33, i32 0, i32 4
  %32 = load i32, i32* %lockongrid, align 4
  %cmp34 = icmp ne i32 %30, %32
  br i1 %cmp34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.32
  %33 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 4), align 4
  %34 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts36 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %34, i32 0, i32 4
  %lockongrid37 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts36, i32 0, i32 4
  store i32 %33, i32* %lockongrid37, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.32
  %35 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 5), align 4
  %36 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts39 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %36, i32 0, i32 4
  %showcontrol = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts39, i32 0, i32 5
  %37 = load i32, i32* %showcontrol, align 4
  %cmp40 = icmp ne i32 %35, %37
  br i1 %cmp40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.end.38
  %38 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 5), align 4
  %39 = load %struct._GFigObj*, %struct._GFigObj** %old_obj.addr, align 8
  %opts42 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %39, i32 0, i32 4
  %showcontrol43 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts42, i32 0, i32 5
  store i32 %38, i32* %showcontrol43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end.38
  %40 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %41 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %41, i32 0, i32 4
  %42 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %opts45 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %42, i32 0, i32 4
  %gridspacing46 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts45, i32 0, i32 0
  %43 = load i32, i32* %gridspacing46, align 4
  %cmp47 = icmp ne i32 %40, %43
  br i1 %cmp47, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %if.end.44
  %44 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 0), align 8
  %tobool = icmp ne %struct._GtkAdjustment* %44, null
  br i1 %tobool, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.then.48
  %45 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 0), align 8
  %46 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj50 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %46, i32 0, i32 4
  %47 = load %struct._GFigObj*, %struct._GFigObj** %current_obj50, align 8
  %opts51 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %47, i32 0, i32 4
  %gridspacing52 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts51, i32 0, i32 0
  %48 = load i32, i32* %gridspacing52, align 4
  %conv = sitofp i32 %48 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %45, double %conv)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.then.48
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.44
  %49 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 10), align 4
  %50 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj55 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %50, i32 0, i32 4
  %51 = load %struct._GFigObj*, %struct._GFigObj** %current_obj55, align 8
  %opts56 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %51, i32 0, i32 4
  %grid_sectors_desired57 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts56, i32 0, i32 10
  %52 = load i32, i32* %grid_sectors_desired57, align 4
  %cmp58 = icmp ne i32 %49, %52
  br i1 %cmp58, label %if.then.60, label %if.end.68

if.then.60:                                       ; preds = %if.end.54
  %53 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 1), align 8
  %tobool61 = icmp ne %struct._GtkAdjustment* %53, null
  br i1 %tobool61, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %if.then.60
  %54 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 1), align 8
  %55 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj63 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %55, i32 0, i32 4
  %56 = load %struct._GFigObj*, %struct._GFigObj** %current_obj63, align 8
  %opts64 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %56, i32 0, i32 4
  %grid_sectors_desired65 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts64, i32 0, i32 10
  %57 = load i32, i32* %grid_sectors_desired65, align 4
  %conv66 = sitofp i32 %57 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %54, double %conv66)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.62, %if.then.60
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.54
  %58 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 7), align 8
  %59 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj69 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %59, i32 0, i32 4
  %60 = load %struct._GFigObj*, %struct._GFigObj** %current_obj69, align 8
  %opts70 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %60, i32 0, i32 4
  %grid_radius_interval71 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts70, i32 0, i32 7
  %61 = load double, double* %grid_radius_interval71, align 8
  %cmp72 = fcmp une double %58, %61
  br i1 %cmp72, label %if.then.74, label %if.end.81

if.then.74:                                       ; preds = %if.end.68
  %62 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 2), align 8
  %tobool75 = icmp ne %struct._GtkAdjustment* %62, null
  br i1 %tobool75, label %if.then.76, label %if.end.80

if.then.76:                                       ; preds = %if.then.74
  %63 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 2), align 8
  %64 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj77 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %64, i32 0, i32 4
  %65 = load %struct._GFigObj*, %struct._GFigObj** %current_obj77, align 8
  %opts78 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %65, i32 0, i32 4
  %grid_radius_interval79 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts78, i32 0, i32 7
  %66 = load double, double* %grid_radius_interval79, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %63, double %66)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.76, %if.then.74
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.68
  %67 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 1), align 4
  %68 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj82 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %68, i32 0, i32 4
  %69 = load %struct._GFigObj*, %struct._GFigObj** %current_obj82, align 8
  %opts83 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %69, i32 0, i32 4
  %gridtype84 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts83, i32 0, i32 1
  %70 = load i32, i32* %gridtype84, align 4
  %cmp85 = icmp ne i32 %67, %70
  br i1 %cmp85, label %if.then.87, label %if.end.96

if.then.87:                                       ; preds = %if.end.81
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 3), align 8
  %tobool88 = icmp ne %struct._GtkWidget* %71, null
  br i1 %tobool88, label %if.then.89, label %if.end.95

if.then.89:                                       ; preds = %if.then.87
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 3), align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call)
  %74 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpIntComboBox*
  %75 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj91 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %75, i32 0, i32 4
  %76 = load %struct._GFigObj*, %struct._GFigObj** %current_obj91, align 8
  %opts92 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %76, i32 0, i32 4
  %gridtype93 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts92, i32 0, i32 1
  %77 = load i32, i32* %gridtype93, align 4
  %call94 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %74, i32 %77)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.89, %if.then.87
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.81
  %78 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 2), align 4
  %79 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj97 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %79, i32 0, i32 4
  %80 = load %struct._GFigObj*, %struct._GFigObj** %current_obj97, align 8
  %opts98 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %80, i32 0, i32 4
  %drawgrid99 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts98, i32 0, i32 2
  %81 = load i32, i32* %drawgrid99, align 4
  %cmp100 = icmp ne i32 %78, %81
  br i1 %cmp100, label %if.then.102, label %if.end.111

if.then.102:                                      ; preds = %if.end.96
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 4), align 8
  %tobool103 = icmp ne %struct._GtkWidget* %82, null
  br i1 %tobool103, label %if.then.104, label %if.end.110

if.then.104:                                      ; preds = %if.then.102
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 4), align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_toggle_button_get_type() #5
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call105)
  %85 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkToggleButton*
  %86 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj107 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %86, i32 0, i32 4
  %87 = load %struct._GFigObj*, %struct._GFigObj** %current_obj107, align 8
  %opts108 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %87, i32 0, i32 4
  %drawgrid109 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts108, i32 0, i32 2
  %88 = load i32, i32* %drawgrid109, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %85, i32 %88)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.104, %if.then.102
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.96
  %89 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 3), align 4
  %90 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj112 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %90, i32 0, i32 4
  %91 = load %struct._GFigObj*, %struct._GFigObj** %current_obj112, align 8
  %opts113 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %91, i32 0, i32 4
  %snap2grid114 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts113, i32 0, i32 3
  %92 = load i32, i32* %snap2grid114, align 4
  %cmp115 = icmp ne i32 %89, %92
  br i1 %cmp115, label %if.then.117, label %if.end.126

if.then.117:                                      ; preds = %if.end.111
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 5), align 8
  %tobool118 = icmp ne %struct._GtkWidget* %93, null
  br i1 %tobool118, label %if.then.119, label %if.end.125

if.then.119:                                      ; preds = %if.then.117
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 5), align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_toggle_button_get_type() #5
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call120)
  %96 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkToggleButton*
  %97 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj122 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %97, i32 0, i32 4
  %98 = load %struct._GFigObj*, %struct._GFigObj** %current_obj122, align 8
  %opts123 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %98, i32 0, i32 4
  %snap2grid124 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts123, i32 0, i32 3
  %99 = load i32, i32* %snap2grid124, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %96, i32 %99)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.119, %if.then.117
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.111
  %100 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 4), align 4
  %101 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj127 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %101, i32 0, i32 4
  %102 = load %struct._GFigObj*, %struct._GFigObj** %current_obj127, align 8
  %opts128 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %102, i32 0, i32 4
  %lockongrid129 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts128, i32 0, i32 4
  %103 = load i32, i32* %lockongrid129, align 4
  %cmp130 = icmp ne i32 %100, %103
  br i1 %cmp130, label %if.then.132, label %if.end.141

if.then.132:                                      ; preds = %if.end.126
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 6), align 8
  %tobool133 = icmp ne %struct._GtkWidget* %104, null
  br i1 %tobool133, label %if.then.134, label %if.end.140

if.then.134:                                      ; preds = %if.then.132
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 6), align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call135 = call i64 @gtk_toggle_button_get_type() #5
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call135)
  %107 = bitcast %struct._GTypeInstance* %call136 to %struct._GtkToggleButton*
  %108 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj137 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %108, i32 0, i32 4
  %109 = load %struct._GFigObj*, %struct._GFigObj** %current_obj137, align 8
  %opts138 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %109, i32 0, i32 4
  %lockongrid139 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts138, i32 0, i32 4
  %110 = load i32, i32* %lockongrid139, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %107, i32 %110)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.134, %if.then.132
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.end.126
  %111 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 5), align 4
  %112 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj142 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %112, i32 0, i32 4
  %113 = load %struct._GFigObj*, %struct._GFigObj** %current_obj142, align 8
  %opts143 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %113, i32 0, i32 4
  %showcontrol144 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts143, i32 0, i32 5
  %114 = load i32, i32* %showcontrol144, align 4
  %cmp145 = icmp ne i32 %111, %114
  br i1 %cmp145, label %if.then.147, label %if.end.156

if.then.147:                                      ; preds = %if.end.141
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 7), align 8
  %tobool148 = icmp ne %struct._GtkWidget* %115, null
  br i1 %tobool148, label %if.then.149, label %if.end.155

if.then.149:                                      ; preds = %if.then.147
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 7), align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call150 = call i64 @gtk_toggle_button_get_type() #5
  %call151 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call150)
  %118 = bitcast %struct._GTypeInstance* %call151 to %struct._GtkToggleButton*
  %119 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj152 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %119, i32 0, i32 4
  %120 = load %struct._GFigObj*, %struct._GFigObj** %current_obj152, align 8
  %opts153 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %120, i32 0, i32 4
  %showcontrol154 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts153, i32 0, i32 5
  %121 = load i32, i32* %showcontrol154, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %118, i32 %121)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.149, %if.then.147
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.141
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @num_sides_widget(i8* %d_title, i32* %num_sides, i32* %which_way, i32 %adj_min, i32 %adj_max) #0 {
entry:
  %d_title.addr = alloca i8*, align 8
  %num_sides.addr = alloca i32*, align 8
  %which_way.addr = alloca i32*, align 8
  %adj_min.addr = alloca i32, align 4
  %adj_max.addr = alloca i32, align 4
  %table = alloca %struct._GtkWidget*, align 8
  %size_data = alloca %struct._GtkObject*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  store i8* %d_title, i8** %d_title.addr, align 8
  store i32* %num_sides, i32** %num_sides.addr, align 8
  store i32* %which_way, i32** %which_way.addr, align 8
  store i32 %adj_min, i32* %adj_min.addr, align 4
  store i32 %adj_max, i32* %adj_max.addr, align 4
  %0 = load i32*, i32** %which_way.addr, align 8
  %tobool = icmp ne i32* %0, null
  %cond = select i1 %tobool, i32 2, i32 1
  %call = call %struct._GtkWidget* @gtk_table_new(i32 %cond, i32 3, i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %table, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_table_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %3, i32 6)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %6, i32 6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %9, i32 12)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_table_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTable*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0)) #4
  %14 = load i32*, i32** %num_sides.addr, align 8
  %15 = load i32, i32* %14, align 4
  %conv = sitofp i32 %15 to double
  %16 = load i32, i32* %adj_min.addr, align 4
  %conv10 = sitofp i32 %16 to double
  %17 = load i32, i32* %adj_max.addr, align 4
  %conv11 = sitofp i32 %17 to double
  %call12 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %13, i32 0, i32 0, i8* %call9, i32 0, i32 0, double %conv, double %conv10, double %conv11, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call12, %struct._GtkObject** %size_data, align 8
  %18 = load %struct._GtkObject*, %struct._GtkObject** %size_data, align 8
  %19 = bitcast %struct._GtkObject* %18 to i8*
  %20 = load i32*, i32** %num_sides.addr, align 8
  %21 = bitcast i32* %20 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load i32*, i32** %which_way.addr, align 8
  %tobool14 = icmp ne i32* %22, null
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0)) #4
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #4
  %call17 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call15, i32 0, i8* %call16, i32 1, i8* null)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %combo, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_int_combo_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call18)
  %25 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpIntComboBox*
  %26 = load i32*, i32** %which_way.addr, align 8
  %27 = load i32, i32* %26, align 4
  %call20 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %25, i32 %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %29 = bitcast %struct._GtkWidget* %28 to i8*
  %30 = load i32*, i32** %which_way.addr, align 8
  %31 = bitcast i32* %30 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* %31, void (i8*, %struct._GClosure*)* null, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0)) #4
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call25 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %34, i32 0, i32 1, i8* %call24, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %35, i32 1, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  ret %struct._GtkWidget* %36
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gfig_paint(i32 %brush_type, i32 %drawable_ID, i32 %seg_count, double* %line_pnts) #0 {
entry:
  %brush_type.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %seg_count.addr = alloca i32, align 4
  %line_pnts.addr = alloca double*, align 8
  store i32 %brush_type, i32* %brush_type.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %seg_count, i32* %seg_count.addr, align 4
  store double* %line_pnts, double** %line_pnts.addr, align 8
  %0 = load i32, i32* %brush_type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %2 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 4), align 8
  %3 = load i32, i32* %seg_count.addr, align 4
  %4 = load double*, double** %line_pnts.addr, align 8
  %5 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 5), align 8
  %call = call i32 @gimp_paintbrush(i32 %1, double %2, i32 %3, double* %4, i32 0, double %5)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load i32, i32* %drawable_ID.addr, align 4
  %7 = load i32, i32* %seg_count.addr, align 4
  %8 = load double*, double** %line_pnts.addr, align 8
  %call2 = call i32 @gimp_pencil(i32 %6, i32 %7, double* %8)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %9 = load i32, i32* %drawable_ID.addr, align 4
  %10 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 6), align 8
  %11 = load i32, i32* %seg_count.addr, align 4
  %12 = load double*, double** %line_pnts.addr, align 8
  %call4 = call i32 @gimp_airbrush(i32 %9, double %10, i32 %11, double* %12)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %13 = load i32, i32* %drawable_ID.addr, align 4
  %14 = load i32, i32* %drawable_ID.addr, align 4
  %15 = load i32, i32* %seg_count.addr, align 4
  %16 = load double*, double** %line_pnts.addr, align 8
  %call6 = call i32 @gimp_clone(i32 %13, i32 %14, i32 1, double 0.000000e+00, double 0.000000e+00, i32 %15, double* %16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  ret void
}

declare i32 @gimp_paintbrush(i32, double, i32, double*, i32, double) #1

declare i32 @gimp_pencil(i32, i32, double*) #1

declare i32 @gimp_airbrush(i32, double, i32, double*) #1

declare i32 @gimp_clone(i32, i32, i32, double, double, i32, double*) #1

; Function Attrs: nounwind uwtable
define void @paint_layer_fill(double %x1, double %y1, double %x2, double %y2) #0 {
entry:
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %fill_mode = alloca i32, align 4
  %current_style = alloca %struct._Style*, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store i32 0, i32* %fill_mode, align 4
  %call = call %struct._Style* @gfig_context_get_current_style()
  store %struct._Style* %call, %struct._Style** %current_style, align 8
  %0 = load %struct._Style*, %struct._Style** %current_style, align 8
  %fill_type = getelementptr inbounds %struct._Style, %struct._Style* %0, i32 0, i32 9
  %1 = load i32, i32* %fill_type, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.5
    i32 5, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %fill_mode, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %fill_mode, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %2 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %2, i32 0, i32 3
  %3 = load i32, i32* %drawable_id, align 4
  %call4 = call i32 @gimp_edit_blend(i32 %3, i32 3, i32 0, i32 8, double 1.000000e+02, double 0.000000e+00, i32 0, i32 0, i32 0, i32 0, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %return

sw.bb.5:                                          ; preds = %entry
  %4 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id6 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %4, i32 0, i32 3
  %5 = load i32, i32* %drawable_id6, align 4
  %6 = load double, double* %x1.addr, align 8
  %7 = load double, double* %y1.addr, align 8
  %8 = load double, double* %x1.addr, align 8
  %9 = load double, double* %y2.addr, align 8
  %call7 = call i32 @gimp_edit_blend(i32 %5, i32 3, i32 0, i32 0, double 1.000000e+02, double 0.000000e+00, i32 0, i32 0, i32 0, i32 0, double 0.000000e+00, i32 0, double %6, double %7, double %8, double %9)
  br label %return

sw.bb.8:                                          ; preds = %entry
  %10 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id9 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %10, i32 0, i32 3
  %11 = load i32, i32* %drawable_id9, align 4
  %12 = load double, double* %x1.addr, align 8
  %13 = load double, double* %y1.addr, align 8
  %14 = load double, double* %x2.addr, align 8
  %15 = load double, double* %y1.addr, align 8
  %call10 = call i32 @gimp_edit_blend(i32 %11, i32 3, i32 0, i32 0, double 1.000000e+02, double 0.000000e+00, i32 0, i32 0, i32 0, i32 0, double 0.000000e+00, i32 0, double %12, double %13, double %14, double %15)
  br label %return

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb.1
  %16 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id11 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %16, i32 0, i32 3
  %17 = load i32, i32* %drawable_id11, align 4
  %18 = load i32, i32* %fill_mode, align 4
  %19 = load %struct._Style*, %struct._Style** %current_style, align 8
  %fill_opacity = getelementptr inbounds %struct._Style, %struct._Style* %19, i32 0, i32 10
  %20 = load double, double* %fill_opacity, align 8
  %call12 = call i32 @gimp_edit_bucket_fill(i32 %17, i32 %18, i32 0, double %20, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00)
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.8, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

declare %struct._Style* @gfig_context_get_current_style() #1

declare i32 @gimp_edit_blend(i32, i32, i32, i32, double, double, i32, i32, i32, i32, double, i32, double, double, double, double) #1

declare i32 @gimp_edit_bucket_fill(i32, i32, i32, double, double, i32, double, double) #1

declare i32 @gimp_displays_flush() #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @scale_to_original_xy(double* %list, i32 %size) #0 {
entry:
  %list.addr = alloca double*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store double* %list, double** %list.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %1, 2
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %list.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  call void @scale_to_orginal_x(double* %arrayidx)
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  %idxprom1 = sext i32 %add to i64
  %5 = load double*, double** %list.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %5, i64 %idxprom1
  call void @scale_to_orginal_y(double* %arrayidx2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %add3 = add nsw i32 %6, 2
  store i32 %add3, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @scale_to_orginal_x(double* %list) #0 {
entry:
  %list.addr = alloca double*, align 8
  store double* %list, double** %list.addr, align 8
  %0 = load double, double* @scale_x_factor, align 8
  %1 = load double*, double** %list.addr, align 8
  %2 = load double, double* %1, align 8
  %mul = fmul double %2, %0
  store double %mul, double* %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @scale_to_orginal_y(double* %list) #0 {
entry:
  %list.addr = alloca double*, align 8
  store double* %list, double** %list.addr, align 8
  %0 = load double, double* @scale_y_factor, align 8
  %1 = load double*, double** %list.addr, align 8
  %2 = load double, double* %1, align 8
  %mul = fmul double %2, %0
  store double %mul, double* %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @scale_to_xy(double* %list, i32 %size) #0 {
entry:
  %list.addr = alloca double*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store double* %list, double** %list.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %1, 2
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* @org_scale_x_factor, align 8
  %3 = load double, double* @scale_x_factor, align 8
  %div = fdiv double %2, %3
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load double*, double** %list.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %mul1 = fmul double %6, %div
  store double %mul1, double* %arrayidx, align 8
  %7 = load double, double* @org_scale_y_factor, align 8
  %8 = load double, double* @scale_y_factor, align 8
  %div2 = fdiv double %7, %8
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  %idxprom3 = sext i32 %add to i64
  %10 = load double*, double** %list.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %10, i64 %idxprom3
  %11 = load double, double* %arrayidx4, align 8
  %mul5 = fmul double %11, %div2
  store double %mul5, double* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %12, 2
  store i32 %add6, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gfig_draw_arc(i32 %x, i32 %y, i32 %width, i32 %height, i32 %angle1, i32 %angle2, %struct._cairo* %cr) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %angle1.addr = alloca i32, align 4
  %angle2.addr = alloca i32, align 4
  %cr.addr = alloca %struct._cairo*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %angle1, i32* %angle1.addr, align 4
  store i32 %angle2, i32* %angle2.addr, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_save(%struct._cairo* %0)
  %1 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %2 = load i32, i32* %x.addr, align 4
  %call = call i32 @gfig_scale_x(i32 %2)
  %conv = sitofp i32 %call to double
  %3 = load i32, i32* %y.addr, align 4
  %call1 = call i32 @gfig_scale_y(i32 %3)
  %conv2 = sitofp i32 %call1 to double
  call void @cairo_translate(%struct._cairo* %1, double %conv, double %conv2)
  %4 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %5 = load i32, i32* %width.addr, align 4
  %call3 = call i32 @gfig_scale_x(i32 %5)
  %conv4 = sitofp i32 %call3 to double
  %6 = load i32, i32* %height.addr, align 4
  %call5 = call i32 @gfig_scale_y(i32 %6)
  %conv6 = sitofp i32 %call5 to double
  call void @cairo_scale(%struct._cairo* %4, double %conv4, double %conv6)
  %7 = load i32, i32* %angle1.addr, align 4
  %8 = load i32, i32* %angle2.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %10 = load i32, i32* %angle1.addr, align 4
  %conv8 = sitofp i32 %10 to double
  %mul = fmul double %conv8, 0x400921FB54442D18
  %div = fdiv double %mul, 1.800000e+02
  %11 = load i32, i32* %angle2.addr, align 4
  %conv9 = sitofp i32 %11 to double
  %mul10 = fmul double %conv9, 0x400921FB54442D18
  %div11 = fdiv double %mul10, 1.800000e+02
  call void @cairo_arc(%struct._cairo* %9, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double %div, double %div11)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %13 = load i32, i32* %angle1.addr, align 4
  %conv12 = sitofp i32 %13 to double
  %mul13 = fmul double %conv12, 0x400921FB54442D18
  %div14 = fdiv double %mul13, 1.800000e+02
  %14 = load i32, i32* %angle2.addr, align 4
  %conv15 = sitofp i32 %14 to double
  %mul16 = fmul double %conv15, 0x400921FB54442D18
  %div17 = fdiv double %mul16, 1.800000e+02
  call void @cairo_arc_negative(%struct._cairo* %12, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double %div14, double %div17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_restore(%struct._cairo* %15)
  %16 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_item(%struct._cairo* %16, i32 0)
  ret void
}

declare void @cairo_save(%struct._cairo*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_scale(%struct._cairo*, double, double) #1

declare void @cairo_arc_negative(%struct._cairo*, double, double, double, double, double) #1

declare void @cairo_restore(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define void @gfig_draw_line(i32 %x0, i32 %y0, i32 %x1, i32 %y1, %struct._cairo* %cr) #0 {
entry:
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %cr.addr = alloca %struct._cairo*, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load i32, i32* %x0.addr, align 4
  %call = call i32 @gfig_scale_x(i32 %1)
  %conv = sitofp i32 %call to double
  %add = fadd double %conv, 5.000000e-01
  %2 = load i32, i32* %y0.addr, align 4
  %call1 = call i32 @gfig_scale_y(i32 %2)
  %conv2 = sitofp i32 %call1 to double
  %add3 = fadd double %conv2, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %0, double %add, double %add3)
  %3 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %4 = load i32, i32* %x1.addr, align 4
  %call4 = call i32 @gfig_scale_x(i32 %4)
  %conv5 = sitofp i32 %call4 to double
  %add6 = fadd double %conv5, 5.000000e-01
  %5 = load i32, i32* %y1.addr, align 4
  %call7 = call i32 @gfig_scale_y(i32 %5)
  %conv8 = sitofp i32 %call7 to double
  %add9 = fadd double %conv8, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %3, double %add6, double %add9)
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_item(%struct._cairo* %6, i32 0)
  ret void
}

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i32 @gimp_image_remove_layer(i32, i32) #1

declare void @free_all_objs(%struct._GList*) #1

declare i32 @gfig_save_as_parasite() #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_main_quit() #1

; Function Attrs: nounwind uwtable
define internal void @gfig_list_free_all() #0 {
entry:
  %0 = load %struct._GList*, %struct._GList** @gfig_list, align 8
  call void @g_list_free_full(%struct._GList* %0, void (i8*)* bitcast (void (%struct._GFigObj*)* @gfig_free to void (i8*)*))
  store %struct._GList* null, %struct._GList** @gfig_list, align 8
  ret void
}

declare %struct._GFigObj* @gfig_new() #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @gfig_free(%struct._GFigObj*) #1

; Function Attrs: nounwind uwtable
define internal void @gfig_load_action_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dir = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_load_action_callback.dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.161, i32 0, i32 0)) #4
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %call3 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call, %struct._GtkWindow* %3, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** @gfig_load_action_callback.dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_load_action_callback.dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_load_action_callback.dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %9, i32 -5)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_load_action_callback.dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %12, i8** bitcast (%struct._GtkWidget** @gfig_load_action_callback.dialog to i8**))
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_load_action_callback.dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkFileChooser*, i32, i8*)* @load_file_chooser_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call10 = call i8* @gfig_get_user_writable_dir()
  store i8* %call10, i8** %dir, align 8
  %15 = load i8*, i8** %dir, align 8
  %tobool11 = icmp ne i8* %15, null
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_load_action_callback.dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_file_chooser_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkFileChooser*
  %19 = load i8*, i8** %dir, align 8
  %call15 = call i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser* %18, i8* %19)
  %20 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_load_action_callback.dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  br label %if.end.18

if.else:                                          ; preds = %entry
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_load_action_callback.dialog, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_window_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %24)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gfig_save_action_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %dir = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_save_action_callback.dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.162, i32 0, i32 0)) #4
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %call3 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call, %struct._GtkWindow* %3, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** @gfig_save_action_callback.dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_save_action_callback.dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_save_action_callback.dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %9, i32 -5)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_save_action_callback.dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_file_chooser_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %12, i32 1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_save_action_callback.dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %15, i8** bitcast (%struct._GtkWidget** @gfig_save_action_callback.dialog to i8**))
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_save_action_callback.dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  %18 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %18, i32 0, i32 4
  %19 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %20 = bitcast %struct._GFigObj* %19 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkFileChooser*, i32, %struct._GFigObj*)* @save_file_chooser_response to void ()*), i8* %20, void (i8*, %struct._GClosure*)* null, i32 0)
  %call12 = call i8* @gfig_get_user_writable_dir()
  store i8* %call12, i8** %dir, align 8
  %21 = load i8*, i8** %dir, align 8
  %tobool13 = icmp ne i8* %21, null
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_save_action_callback.dialog, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_file_chooser_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkFileChooser*
  %25 = load i8*, i8** %dir, align 8
  %call17 = call i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser* %24, i8* %25)
  %26 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %26)
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_save_action_callback.dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  br label %if.end.20

if.else:                                          ; preds = %entry
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_save_action_callback.dialog, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_window_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call18)
  %30 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %30)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gfig_close_action_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkDialog*
  call void @gtk_dialog_response(%struct._GtkDialog* %2, i32 -5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gfig_undo_action_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @undo_level, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %1 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %1, i32 0, i32 4
  %2 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %2, i32 0, i32 5
  %3 = load %struct._GList*, %struct._GList** %obj_list, align 8
  call void @free_all_objs(%struct._GList* %3)
  %4 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %4, i32 0, i32 4
  %5 = load %struct._GFigObj*, %struct._GFigObj** %current_obj1, align 8
  %obj_list2 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %5, i32 0, i32 5
  store %struct._GList* null, %struct._GList** %obj_list2, align 8
  store %struct._GfigObject* null, %struct._GfigObject** @obj_creating, align 8
  store %struct._GfigObject* null, %struct._GfigObject** @tmp_line, align 8
  store %struct._GfigObject* null, %struct._GfigObject** @tmp_bezier, align 8
  %6 = load i32, i32* @undo_level, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [10 x %struct._GList*], [10 x %struct._GList*]* @undo_table, i32 0, i64 %idxprom
  %7 = load %struct._GList*, %struct._GList** %arrayidx, align 8
  %8 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj3 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %8, i32 0, i32 4
  %9 = load %struct._GFigObj*, %struct._GFigObj** %current_obj3, align 8
  %obj_list4 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %9, i32 0, i32 5
  store %struct._GList* %7, %struct._GList** %obj_list4, align 8
  %10 = load i32, i32* @undo_level, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* @undo_level, align 4
  %11 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %11, i32 0, i32 6
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %12)
  %13 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj5 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %13, i32 0, i32 4
  %14 = load %struct._GFigObj*, %struct._GFigObj** %current_obj5, align 8
  %obj_status = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %14, i32 0, i32 6
  %15 = load i32, i32* %obj_status, align 4
  %or = or i32 %15, 1
  store i32 %or, i32* %obj_status, align 4
  %16 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj6 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %16, i32 0, i32 4
  %17 = load %struct._GFigObj*, %struct._GFigObj** %current_obj6, align 8
  %obj_list7 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %17, i32 0, i32 5
  %18 = load %struct._GList*, %struct._GList** %obj_list7, align 8
  %tobool = icmp ne %struct._GList* %18, null
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %19 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj9 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %19, i32 0, i32 4
  %20 = load %struct._GFigObj*, %struct._GFigObj** %current_obj9, align 8
  %obj_list10 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %20, i32 0, i32 5
  %21 = load %struct._GList*, %struct._GList** %obj_list10, align 8
  %data11 = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 0
  %22 = load i8*, i8** %data11, align 8
  %23 = bitcast i8* %22 to %struct._GfigObject*
  %24 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %24, i32 0, i32 5
  store %struct._GfigObject* %23, %struct._GfigObject** %selected_obj, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %25 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj12 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %25, i32 0, i32 5
  store %struct._GfigObject* null, %struct._GfigObject** %selected_obj12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %26 = load i32, i32* @undo_level, align 4
  %cmp14 = icmp sge i32 %26, 0
  %conv = zext i1 %cmp14 to i32
  call void @gfig_dialog_action_set_sensitive(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %conv)
  call void @gfig_paint_callback()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gfig_clear_action_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 4
  %1 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %1, i32 0, i32 5
  %2 = load %struct._GList*, %struct._GList** %obj_list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @setup_undo()
  %3 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %3, i32 0, i32 4
  %4 = load %struct._GFigObj*, %struct._GFigObj** %current_obj1, align 8
  %obj_list2 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %4, i32 0, i32 5
  %5 = load %struct._GList*, %struct._GList** %obj_list2, align 8
  call void @free_all_objs(%struct._GList* %5)
  %6 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj3 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %6, i32 0, i32 4
  %7 = load %struct._GFigObj*, %struct._GFigObj** %current_obj3, align 8
  %obj_list4 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %7, i32 0, i32 5
  store %struct._GList* null, %struct._GList** %obj_list4, align 8
  %8 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %8, i32 0, i32 5
  store %struct._GfigObject* null, %struct._GfigObject** %selected_obj, align 8
  store %struct._GfigObject* null, %struct._GfigObject** @obj_creating, align 8
  store %struct._GfigObject* null, %struct._GfigObject** @tmp_line, align 8
  store %struct._GfigObject* null, %struct._GfigObject** @tmp_bezier, align 8
  %9 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %9, i32 0, i32 6
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %10)
  call void @gfig_paint_callback()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gfig_grid_action_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %size_data = alloca %struct._GtkObject*, align 8
  %sectors_data = alloca %struct._GtkObject*, align 8
  %radius_data = alloca %struct._GtkObject*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_grid_action_callback.dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.163, i32 0, i32 0)) #4
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  %call3 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.164, i32 0, i32 0), %struct._GtkWidget* %3, i32 0, void (i8*, i8*)* null, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 -7, i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** @gfig_grid_action_callback.dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_grid_action_callback.dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %6, i32 -7)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_grid_action_callback.dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %9, i8** bitcast (%struct._GtkWidget** @gfig_grid_action_callback.dialog to i8**))
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_grid_action_callback.dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %main_vbox, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %14, i32 12)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_grid_action_callback.dialog, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  %call13 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %17)
  %18 = bitcast %struct._GtkWidget* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call16 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %hbox, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %call19 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %table, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_table_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call20)
  %29 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %29, i32 6)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call22)
  %32 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %32, i32 6)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call24)
  %35 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call26)
  %40 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.165, i32 0, i32 0)) #4
  %41 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %conv = sitofp i32 %41 to double
  %call29 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %40, i32 0, i32 0, i8* %call28, i32 100, i32 50, double %conv, double 1.000000e+01, double 5.000000e+01, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call29, %struct._GtkObject** %size_data, align 8
  %42 = load %struct._GtkObject*, %struct._GtkObject** %size_data, align 8
  %43 = bitcast %struct._GtkObject* %42 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (%struct.SelectItVals* @selvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %44 = load %struct._GtkObject*, %struct._GtkObject** %size_data, align 8
  %45 = bitcast %struct._GtkObject* %44 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* @draw_grid_clear, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %46 = load %struct._GtkObject*, %struct._GtkObject** %size_data, align 8
  %47 = bitcast %struct._GtkObject* %46 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_adjustment_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call32)
  %48 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %48, %struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 0), align 8
  %49 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 0), align 8
  %50 = bitcast %struct._GtkAdjustment* %49 to %struct._GTypeInstance*
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 80)
  %51 = bitcast %struct._GTypeInstance* %call34 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %51, i8** bitcast (%struct.GfigOptWidgets* @gfig_opt_widget to i8**))
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_table_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call35)
  %54 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkTable*
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.166, i32 0, i32 0)) #4
  %55 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 10), align 4
  %conv38 = sitofp i32 %55 to double
  %call39 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %54, i32 0, i32 3, i8* %call37, i32 1, i32 5, double %conv38, double 5.000000e+00, double 3.600000e+02, double 5.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call39, %struct._GtkObject** %sectors_data, align 8
  %56 = load %struct._GtkObject*, %struct._GtkObject** %sectors_data, align 8
  %57 = bitcast %struct._GtkObject* %56 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 10) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %58 = load %struct._GtkObject*, %struct._GtkObject** %sectors_data, align 8
  %59 = bitcast %struct._GtkObject* %58 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* @draw_grid_clear, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %60 = load %struct._GtkObject*, %struct._GtkObject** %sectors_data, align 8
  %61 = bitcast %struct._GtkObject* %60 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_adjustment_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call42)
  %62 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %62, %struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 1), align 8
  %63 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 1), align 8
  %64 = bitcast %struct._GtkAdjustment* %63 to %struct._GTypeInstance*
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 80)
  %65 = bitcast %struct._GTypeInstance* %call44 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %65, i8** bitcast (%struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 1) to i8**))
  %66 = load %struct._GtkObject*, %struct._GtkObject** %size_data, align 8
  %67 = bitcast %struct._GtkObject* %66 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_adjustment_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call45)
  %68 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %68, %struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 0), align 8
  %69 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 0), align 8
  %70 = bitcast %struct._GtkAdjustment* %69 to %struct._GTypeInstance*
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 80)
  %71 = bitcast %struct._GTypeInstance* %call47 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %71, i8** bitcast (%struct.GfigOptWidgets* @gfig_opt_widget to i8**))
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call48)
  %74 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.167, i32 0, i32 0)) #4
  %75 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 7), align 8
  %call51 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %74, i32 0, i32 4, i8* %call50, i32 1, i32 5, double %75, double 5.000000e+00, double 5.000000e+01, double 5.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call51, %struct._GtkObject** %radius_data, align 8
  %76 = load %struct._GtkObject*, %struct._GtkObject** %radius_data, align 8
  %77 = bitcast %struct._GtkObject* %76 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 7) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %78 = load %struct._GtkObject*, %struct._GtkObject** %radius_data, align 8
  %79 = bitcast %struct._GtkObject* %78 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* @draw_grid_clear, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %80 = load %struct._GtkObject*, %struct._GtkObject** %radius_data, align 8
  %81 = bitcast %struct._GtkObject* %80 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_adjustment_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call54)
  %82 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %82, %struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 2), align 8
  %83 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 2), align 8
  %84 = bitcast %struct._GtkAdjustment* %83 to %struct._GTypeInstance*
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 80)
  %85 = bitcast %struct._GTypeInstance* %call56 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %85, i8** bitcast (%struct._GtkAdjustment** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 2) to i8**))
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.168, i32 0, i32 0)) #4
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i32 0, i32 0)) #4
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.170, i32 0, i32 0)) #4
  %call60 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call57, i32 0, i8* %call58, i32 1, i8* %call59, i32 2, i8* null)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %combo, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_int_combo_box_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call61)
  %88 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpIntComboBox*
  %89 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 1), align 4
  %call63 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %88, i32 %89)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %91 = bitcast %struct._GtkWidget* %90 to i8*
  %call64 = call i64 @g_signal_connect_data(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gridtype_combo_callback to void ()*), i8* inttoptr (i64 1 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_table_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call65)
  %94 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkTable*
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.171, i32 0, i32 0)) #4
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call68 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %94, i32 0, i32 1, i8* %call67, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %95, i32 2, i32 0)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  store %struct._GtkWidget* %96, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 3), align 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 3), align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 80)
  %99 = bitcast %struct._GTypeInstance* %call69 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %99, i8** bitcast (%struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 3) to i8**))
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.172, i32 0, i32 0)) #4
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.173, i32 0, i32 0)) #4
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.174, i32 0, i32 0)) #4
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.175, i32 0, i32 0)) #4
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.176, i32 0, i32 0)) #4
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.177, i32 0, i32 0)) #4
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.178, i32 0, i32 0)) #4
  %call77 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call70, i32 -1, i8* %call71, i32 -2, i8* %call72, i32 -3, i8* %call73, i32 -4, i8* %call74, i32 -5, i8* %call75, i32 -6, i8* %call76, i32 -7, i8* null)
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %combo, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_int_combo_box_get_type() #5
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call78)
  %102 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpIntComboBox*
  %103 = load i32, i32* @grid_gc_type, align 4
  %call80 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %102, i32 %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %105 = bitcast %struct._GtkWidget* %104 to i8*
  %call81 = call i64 @g_signal_connect_data(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gridtype_combo_callback to void ()*), i8* inttoptr (i64 2 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_table_get_type() #5
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call82)
  %108 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkTable*
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.179, i32 0, i32 0)) #4
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call85 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %108, i32 0, i32 2, i8* %call84, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %109, i32 2, i32 0)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_grid_action_callback.dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %110)
  br label %if.end

if.else:                                          ; preds = %entry
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_grid_action_callback.dialog, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_window_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call86)
  %113 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %113)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gfig_prefs_action_callback(%struct._GtkAction* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %size_data = alloca %struct._GtkObject*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkAdjustment*, align 8
  store %struct._GtkAction* %widget, %struct._GtkAction** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_prefs_action_callback.dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.182, i32 0, i32 0)) #4
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  %call3 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.183, i32 0, i32 0), %struct._GtkWidget* %3, i32 0, void (i8*, i8*)* null, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 -7, i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** @gfig_prefs_action_callback.dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_prefs_action_callback.dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %6, i32 -7)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_prefs_action_callback.dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %9, i8** bitcast (%struct._GtkWidget** @gfig_prefs_action_callback.dialog to i8**))
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_prefs_action_callback.dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %main_vbox, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %14, i32 12)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_prefs_action_callback.dialog, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  %call13 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %17)
  %18 = bitcast %struct._GtkWidget* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.184, i32 0, i32 0)) #4
  %call17 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call16)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %toggle, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call18)
  %24 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 6)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_toggle_button_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call20)
  %28 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkToggleButton*
  %29 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 3), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %28, i32 %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %31 = bitcast %struct._GtkWidget* %30 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gfig_pos_enable to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 1)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.185, i32 0, i32 0)) #4
  %call25 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call24)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %toggle, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call26)
  %37 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %37, %struct._GtkWidget* %38, i32 0, i32 0, i32 6)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_toggle_button_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call28)
  %41 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkToggleButton*
  %42 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 5), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %41, i32 %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* @toggle_show_image, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  store %struct._GtkWidget* %48, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 7), align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 7), align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 80)
  %51 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %51, i8** bitcast (%struct._GtkWidget** getelementptr inbounds (%struct.GfigOptWidgets, %struct.GfigOptWidgets* @gfig_opt_widget, i32 0, i32 7) to i8**))
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.186, i32 0, i32 0)) #4
  %call34 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call33)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %toggle, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call35)
  %54 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %54, %struct._GtkWidget* %55, i32 0, i32 0, i32 6)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_toggle_button_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call37)
  %58 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkToggleButton*
  %59 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %58, i32 %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %63 = bitcast %struct._GtkWidget* %62 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* @gfig_paint_callback, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  %call41 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 4, i32 0)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %table, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_table_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call42)
  %67 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %67, i32 6)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_table_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call44)
  %70 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %70, i32 6)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call46)
  %73 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %73, %struct._GtkWidget* %74, i32 0, i32 0, i32 6)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call48)
  %78 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.187, i32 0, i32 0)) #4
  %79 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 2), align 4
  %conv = sitofp i32 %79 to double
  %call51 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %78, i32 0, i32 0, i8* %call50, i32 100, i32 50, double %conv, double 1.000000e+00, double 1.000000e+01, double 1.000000e+00, double 2.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call51, %struct._GtkObject** %size_data, align 8
  %80 = load %struct._GtkObject*, %struct._GtkObject** %size_data, align 8
  %81 = bitcast %struct._GtkObject* %80 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.188, i32 0, i32 0)) #4
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0)) #4
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #4
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.174, i32 0, i32 0)) #4
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.189, i32 0, i32 0)) #4
  %call58 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call53, i32 0, i8* %call54, i32 1, i8* %call55, i32 2, i8* %call56, i32 3, i8* %call57, i32 4, i8* null)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** @page_menu_bg, align 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** @page_menu_bg, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_int_combo_box_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call59)
  %84 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpIntComboBox*
  %85 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 8), align 4
  %call61 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %84, i32 %85)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** @page_menu_bg, align 8
  %87 = bitcast %struct._GtkWidget* %86 to i8*
  %call62 = call i64 @g_signal_connect_data(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @paint_combo_callback to void ()*), i8* inttoptr (i64 2 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** @page_menu_bg, align 8
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.190, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %88, i8* %call63, i8* null)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_table_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call64)
  %91 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTable*
  %call66 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.191, i32 0, i32 0)) #4
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** @page_menu_bg, align 8
  %call67 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %91, i32 0, i32 1, i8* %call66, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %92, i32 2, i32 0)
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.192, i32 0, i32 0)) #4
  %call69 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call68)
  store %struct._GtkWidget* %call69, %struct._GtkWidget** %toggle, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_table_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call70)
  %95 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkTable*
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach(%struct._GtkTable* %95, %struct._GtkWidget* %96, i32 2, i32 3, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %98 = bitcast %struct._GtkWidget* %97 to i8*
  %call72 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %100 = bitcast %struct._GtkWidget* %99 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* @gfig_paint_callback, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  %102 = load double, double* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 3), align 8
  %call74 = call %struct._GtkObject* @gtk_adjustment_new(double %102, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %103 = bitcast %struct._GtkObject* %call74 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %103, %struct._GtkAdjustment** %scale_data, align 8
  %104 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_data, align 8
  %call75 = call %struct._GtkWidget* @gtk_scale_new(i32 0, %struct._GtkAdjustment* %104)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %scale, align 8
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_scale_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call76)
  %107 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkScale*
  call void @gtk_scale_set_value_pos(%struct._GtkScale* %107, i32 2)
  %108 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_data, align 8
  %109 = bitcast %struct._GtkAdjustment* %108 to i8*
  %call78 = call i64 @g_signal_connect_data(i8* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %110 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_data, align 8
  %111 = bitcast %struct._GtkAdjustment* %110 to i8*
  %call79 = call i64 @g_signal_connect_data(i8* %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* @gfig_paint_delayed, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_table_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call80)
  %114 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkTable*
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.193, i32 0, i32 0)) #4
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %call83 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %114, i32 0, i32 2, i8* %call82, float 0.000000e+00, float 1.000000e+00, %struct._GtkWidget* %115, i32 1, i32 0)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_prefs_action_callback.dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %116)
  br label %if.end

if.else:                                          ; preds = %entry
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** @gfig_prefs_action_callback.dialog, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_window_get_type() #5
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call84)
  %119 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %119)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @raise_selected_obj(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %position = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 5
  %1 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj, align 8
  %tobool = icmp ne %struct._GfigObject* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %2, i32 0, i32 4
  %3 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %3, i32 0, i32 5
  %4 = load %struct._GList*, %struct._GList** %obj_list, align 8
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 5
  %6 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj1, align 8
  %7 = bitcast %struct._GfigObject* %6 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %4, i8* %7)
  %tobool2 = icmp ne %struct._GList* %call, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj4 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %8, i32 0, i32 4
  %9 = load %struct._GFigObj*, %struct._GFigObj** %current_obj4, align 8
  %obj_list5 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %9, i32 0, i32 5
  %10 = load %struct._GList*, %struct._GList** %obj_list5, align 8
  %11 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj6 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %11, i32 0, i32 5
  %12 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj6, align 8
  %13 = bitcast %struct._GfigObject* %12 to i8*
  %call7 = call i32 @g_list_index(%struct._GList* %10, i8* %13)
  store i32 %call7, i32* %position, align 4
  %14 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj8 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %14, i32 0, i32 4
  %15 = load %struct._GFigObj*, %struct._GFigObj** %current_obj8, align 8
  %obj_list9 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %15, i32 0, i32 5
  %16 = load %struct._GList*, %struct._GList** %obj_list9, align 8
  %17 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj10 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %17, i32 0, i32 5
  %18 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj10, align 8
  %19 = bitcast %struct._GfigObject* %18 to i8*
  %call11 = call %struct._GList* @g_list_remove(%struct._GList* %16, i8* %19)
  %20 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj12 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %20, i32 0, i32 4
  %21 = load %struct._GFigObj*, %struct._GFigObj** %current_obj12, align 8
  %obj_list13 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %21, i32 0, i32 5
  store %struct._GList* %call11, %struct._GList** %obj_list13, align 8
  %22 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj14 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %22, i32 0, i32 4
  %23 = load %struct._GFigObj*, %struct._GFigObj** %current_obj14, align 8
  %obj_list15 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %23, i32 0, i32 5
  %24 = load %struct._GList*, %struct._GList** %obj_list15, align 8
  %25 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj16 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %25, i32 0, i32 5
  %26 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj16, align 8
  %27 = bitcast %struct._GfigObject* %26 to i8*
  %28 = load i32, i32* %position, align 4
  %add = add nsw i32 %28, 1
  %call17 = call %struct._GList* @g_list_insert(%struct._GList* %24, i8* %27, i32 %add)
  %29 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj18 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %29, i32 0, i32 4
  %30 = load %struct._GFigObj*, %struct._GFigObj** %current_obj18, align 8
  %obj_list19 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %30, i32 0, i32 5
  store %struct._GList* %call17, %struct._GList** %obj_list19, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.end
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.194, i32 0, i32 0))
  br label %return

if.end.20:                                        ; preds = %if.then.3
  call void @gfig_paint_callback()
  br label %return

return:                                           ; preds = %if.end.20, %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lower_selected_obj(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %position = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 5
  %1 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj, align 8
  %tobool = icmp ne %struct._GfigObject* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %2, i32 0, i32 4
  %3 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %3, i32 0, i32 5
  %4 = load %struct._GList*, %struct._GList** %obj_list, align 8
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 5
  %6 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj1, align 8
  %7 = bitcast %struct._GfigObject* %6 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %4, i8* %7)
  %tobool2 = icmp ne %struct._GList* %call, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj4 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %8, i32 0, i32 4
  %9 = load %struct._GFigObj*, %struct._GFigObj** %current_obj4, align 8
  %obj_list5 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %9, i32 0, i32 5
  %10 = load %struct._GList*, %struct._GList** %obj_list5, align 8
  %11 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj6 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %11, i32 0, i32 5
  %12 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj6, align 8
  %13 = bitcast %struct._GfigObject* %12 to i8*
  %call7 = call i32 @g_list_index(%struct._GList* %10, i8* %13)
  store i32 %call7, i32* %position, align 4
  %14 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj8 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %14, i32 0, i32 4
  %15 = load %struct._GFigObj*, %struct._GFigObj** %current_obj8, align 8
  %obj_list9 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %15, i32 0, i32 5
  %16 = load %struct._GList*, %struct._GList** %obj_list9, align 8
  %17 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj10 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %17, i32 0, i32 5
  %18 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj10, align 8
  %19 = bitcast %struct._GfigObject* %18 to i8*
  %call11 = call %struct._GList* @g_list_remove(%struct._GList* %16, i8* %19)
  %20 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj12 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %20, i32 0, i32 4
  %21 = load %struct._GFigObj*, %struct._GFigObj** %current_obj12, align 8
  %obj_list13 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %21, i32 0, i32 5
  store %struct._GList* %call11, %struct._GList** %obj_list13, align 8
  %22 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj14 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %22, i32 0, i32 4
  %23 = load %struct._GFigObj*, %struct._GFigObj** %current_obj14, align 8
  %obj_list15 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %23, i32 0, i32 5
  %24 = load %struct._GList*, %struct._GList** %obj_list15, align 8
  %25 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj16 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %25, i32 0, i32 5
  %26 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj16, align 8
  %27 = bitcast %struct._GfigObject* %26 to i8*
  %28 = load i32, i32* %position, align 4
  %sub = sub nsw i32 %28, 1
  %cmp = icmp sgt i32 0, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %29 = load i32, i32* %position, align 4
  %sub17 = sub nsw i32 %29, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub17, %cond.false ]
  %call18 = call %struct._GList* @g_list_insert(%struct._GList* %24, i8* %27, i32 %cond)
  %30 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj19 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %30, i32 0, i32 4
  %31 = load %struct._GFigObj*, %struct._GFigObj** %current_obj19, align 8
  %obj_list20 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %31, i32 0, i32 5
  store %struct._GList* %call18, %struct._GList** %obj_list20, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.195, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %cond.end
  call void @gfig_paint_callback()
  br label %return

return:                                           ; preds = %if.end.21, %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @raise_selected_obj_to_top(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 5
  %1 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj, align 8
  %tobool = icmp ne %struct._GfigObject* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %2, i32 0, i32 4
  %3 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %3, i32 0, i32 5
  %4 = load %struct._GList*, %struct._GList** %obj_list, align 8
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 5
  %6 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj1, align 8
  %7 = bitcast %struct._GfigObject* %6 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %4, i8* %7)
  %tobool2 = icmp ne %struct._GList* %call, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj4 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %8, i32 0, i32 4
  %9 = load %struct._GFigObj*, %struct._GFigObj** %current_obj4, align 8
  %obj_list5 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %9, i32 0, i32 5
  %10 = load %struct._GList*, %struct._GList** %obj_list5, align 8
  %11 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj6 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %11, i32 0, i32 5
  %12 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj6, align 8
  %13 = bitcast %struct._GfigObject* %12 to i8*
  %call7 = call %struct._GList* @g_list_remove(%struct._GList* %10, i8* %13)
  %14 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj8 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %14, i32 0, i32 4
  %15 = load %struct._GFigObj*, %struct._GFigObj** %current_obj8, align 8
  %obj_list9 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %15, i32 0, i32 5
  store %struct._GList* %call7, %struct._GList** %obj_list9, align 8
  %16 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj10 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %16, i32 0, i32 4
  %17 = load %struct._GFigObj*, %struct._GFigObj** %current_obj10, align 8
  %obj_list11 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %17, i32 0, i32 5
  %18 = load %struct._GList*, %struct._GList** %obj_list11, align 8
  %19 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj12 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %19, i32 0, i32 5
  %20 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj12, align 8
  %21 = bitcast %struct._GfigObject* %20 to i8*
  %call13 = call %struct._GList* @g_list_append(%struct._GList* %18, i8* %21)
  %22 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj14 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %22, i32 0, i32 4
  %23 = load %struct._GFigObj*, %struct._GFigObj** %current_obj14, align 8
  %obj_list15 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %23, i32 0, i32 5
  store %struct._GList* %call13, %struct._GList** %obj_list15, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.end
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.194, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.3
  call void @gfig_paint_callback()
  br label %return

return:                                           ; preds = %if.end.16, %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lower_selected_obj_to_bottom(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 5
  %1 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj, align 8
  %tobool = icmp ne %struct._GfigObject* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %2, i32 0, i32 4
  %3 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %3, i32 0, i32 5
  %4 = load %struct._GList*, %struct._GList** %obj_list, align 8
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 5
  %6 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj1, align 8
  %7 = bitcast %struct._GfigObject* %6 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %4, i8* %7)
  %tobool2 = icmp ne %struct._GList* %call, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj4 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %8, i32 0, i32 4
  %9 = load %struct._GFigObj*, %struct._GFigObj** %current_obj4, align 8
  %obj_list5 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %9, i32 0, i32 5
  %10 = load %struct._GList*, %struct._GList** %obj_list5, align 8
  %11 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj6 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %11, i32 0, i32 5
  %12 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj6, align 8
  %13 = bitcast %struct._GfigObject* %12 to i8*
  %call7 = call %struct._GList* @g_list_remove(%struct._GList* %10, i8* %13)
  %14 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj8 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %14, i32 0, i32 4
  %15 = load %struct._GFigObj*, %struct._GFigObj** %current_obj8, align 8
  %obj_list9 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %15, i32 0, i32 5
  store %struct._GList* %call7, %struct._GList** %obj_list9, align 8
  %16 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj10 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %16, i32 0, i32 4
  %17 = load %struct._GFigObj*, %struct._GFigObj** %current_obj10, align 8
  %obj_list11 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %17, i32 0, i32 5
  %18 = load %struct._GList*, %struct._GList** %obj_list11, align 8
  %19 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj12 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %19, i32 0, i32 5
  %20 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj12, align 8
  %21 = bitcast %struct._GfigObject* %20 to i8*
  %call13 = call %struct._GList* @g_list_prepend(%struct._GList* %18, i8* %21)
  %22 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj14 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %22, i32 0, i32 4
  %23 = load %struct._GFigObj*, %struct._GFigObj** %current_obj14, align 8
  %obj_list15 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %23, i32 0, i32 5
  store %struct._GList* %call13, %struct._GList** %obj_list15, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.end
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.195, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.3
  call void @gfig_paint_callback()
  br label %return

return:                                           ; preds = %if.end.16, %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_button_clicked_lt() #0 {
entry:
  call void @select_button_clicked(i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_button_clicked_gt() #0 {
entry:
  call void @select_button_clicked(i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_button_clicked_eq() #0 {
entry:
  call void @select_button_clicked(i32 4)
  ret void
}

declare %struct._GtkUIManager* @gtk_ui_manager_new() #1

declare %struct._GtkActionGroup* @gtk_action_group_new(i8*) #1

declare void @gtk_action_group_set_translation_domain(%struct._GtkActionGroup*, i8*) #1

declare void @gtk_action_group_add_actions(%struct._GtkActionGroup*, %struct._GtkActionEntry*, i32, i8*) #1

declare void @gtk_action_group_add_radio_actions(%struct._GtkActionGroup*, %struct._GtkRadioActionEntry*, i32, i32, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @toggle_obj_type(%struct._GtkRadioAction* %action, %struct._GtkRadioAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkRadioAction*, align 8
  %current.addr = alloca %struct._GtkRadioAction*, align 8
  %data.addr = alloca i8*, align 8
  %ctype = alloca i32, align 4
  %new_type = alloca i32, align 4
  %display = alloca %struct._GdkDisplay*, align 8
  store %struct._GtkRadioAction* %action, %struct._GtkRadioAction** %action.addr, align 8
  store %struct._GtkRadioAction* %current, %struct._GtkRadioAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 153, i32* %ctype, align 4
  %0 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %action.addr, align 8
  %call = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %0)
  store i32 %call, i32* %new_type, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  %2 = load i32, i32* %new_type, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  store %struct._GfigObject* null, %struct._GfigObject** @obj_creating, align 8
  store %struct._GfigObject* null, %struct._GfigObject** @tmp_line, align 8
  store %struct._GfigObject* null, %struct._GfigObject** @tmp_bezier, align 8
  %3 = load i32, i32* %new_type, align 4
  %cmp1 = icmp ult i32 %3, 11
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* @obj_show_single, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %4 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %4, i32 0, i32 6
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %5)
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %6 = load i32, i32* %new_type, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @tool_options_notebook, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_notebook_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkNotebook*
  %10 = load i32, i32* %new_type, align 4
  %sub = sub i32 %10, 1
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %9, i32 %sub)
  %11 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 11, label %sw.bb.6
    i32 12, label %sw.bb.6
    i32 13, label %sw.bb.6
    i32 14, label %sw.bb.6
    i32 15, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3
  br label %sw.default

sw.default:                                       ; preds = %if.end.3, %sw.bb
  store i32 34, i32* %ctype, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end.3, %if.end.3, %if.end.3, %if.end.3
  store i32 36, i32* %ctype, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end.3
  store i32 88, i32* %ctype, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.7, %sw.bb.6, %sw.default
  %12 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds [16 x %struct._GdkCursor*], [16 x %struct._GdkCursor*]* @toggle_obj_type.p_cursors, i32 0, i64 %idxprom
  %13 = load %struct._GdkCursor*, %struct._GdkCursor** %arrayidx, align 8
  %tobool = icmp ne %struct._GdkCursor* %13, null
  br i1 %tobool, label %if.end.14, label %if.then.8

if.then.8:                                        ; preds = %sw.epilog
  %14 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview9 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %14, i32 0, i32 6
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %preview9, align 8
  %call10 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %15)
  store %struct._GdkDisplay* %call10, %struct._GdkDisplay** %display, align 8
  %16 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %17 = load i32, i32* %ctype, align 4
  %call11 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %16, i32 %17)
  %18 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  %idxprom12 = zext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds [16 x %struct._GdkCursor*], [16 x %struct._GdkCursor*]* @toggle_obj_type.p_cursors, i32 0, i64 %idxprom12
  store %struct._GdkCursor* %call11, %struct._GdkCursor** %arrayidx13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.8, %sw.epilog
  %19 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview15 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %19, i32 0, i32 6
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %preview15, align 8
  %call16 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %20)
  %21 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  %idxprom17 = zext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds [16 x %struct._GdkCursor*], [16 x %struct._GdkCursor*]* @toggle_obj_type.p_cursors, i32 0, i64 %idxprom17
  %22 = load %struct._GdkCursor*, %struct._GdkCursor** %arrayidx18, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call16, %struct._GdkCursor* %22)
  ret void
}

declare void @gtk_window_add_accel_group(%struct._GtkWindow*, %struct._GtkAccelGroup*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager*) #1

declare void @gtk_accel_group_lock(%struct._GtkAccelGroup*) #1

declare void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager*, %struct._GtkActionGroup*, i32) #1

declare i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager*, i8*, i64, %struct._GError**) #1

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

; Function Attrs: nounwind uwtable
define internal void @load_file_chooser_response(%struct._GtkFileChooser* %chooser, i32 %response_id, i8* %data) #0 {
entry:
  %chooser.addr = alloca %struct._GtkFileChooser*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %gfig = alloca %struct._GFigObj*, align 8
  %current_saved = alloca %struct._GFigObj*, align 8
  store %struct._GtkFileChooser* %chooser, %struct._GtkFileChooser** %chooser.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %call = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %1)
  store i8* %call, i8** %filename, align 8
  %2 = load i8*, i8** %filename, align 8
  %call1 = call i32 @g_file_test(i8* %2, i32 1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.13

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %3, i32 0, i32 4
  %4 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  store %struct._GFigObj* %4, %struct._GFigObj** %current_saved, align 8
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj3 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 4
  store %struct._GFigObj* null, %struct._GFigObj** %current_obj3, align 8
  %6 = load i8*, i8** %filename, align 8
  %7 = load i8*, i8** %filename, align 8
  %call4 = call %struct._GFigObj* @gfig_load(i8* %6, i8* %7)
  store %struct._GFigObj* %call4, %struct._GFigObj** %gfig, align 8
  %8 = load %struct._GFigObj*, %struct._GFigObj** %current_saved, align 8
  %9 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj5 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %9, i32 0, i32 4
  store %struct._GFigObj* %8, %struct._GFigObj** %current_obj5, align 8
  %10 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %tobool6 = icmp ne %struct._GFigObj* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.then.2
  %11 = load i8*, i8** %filename, align 8
  %call8 = call i32 @access(i8* %11, i32 2) #4
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.7
  %12 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %obj_status = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %12, i32 0, i32 6
  %13 = load i32, i32* %obj_status, align 4
  %or = or i32 %13, 2
  store i32 %or, i32* %obj_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then.7
  %14 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %call11 = call i32 @gfig_list_insert(%struct._GFigObj* %14)
  %15 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  call void @new_obj_2edit(%struct._GFigObj* %15)
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.2
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  %16 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  %17 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %18 = bitcast %struct._GtkFileChooser* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_widget_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %19)
  call void @gfig_paint_callback()
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gfig_get_user_writable_dir() #0 {
entry:
  %retval = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %dir = alloca i8*, align 8
  %0 = load i8*, i8** @gfig_path, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @gfig_path, align 8
  %call = call %struct._GList* @gimp_path_parse(i8* %1, i32 256, i32 0, %struct._GList** null)
  store %struct._GList* %call, %struct._GList** %list, align 8
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %call1 = call noalias i8* @gimp_path_get_user_writable_dir(%struct._GList* %2)
  store i8* %call1, i8** %dir, align 8
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  call void @gimp_path_free(%struct._GList* %3)
  %4 = load i8*, i8** %dir, align 8
  store i8* %4, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @gimp_directory() #5
  %call3 = call noalias i8* @g_strdup(i8* %call2)
  store i8* %call3, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

declare i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare i32 @g_file_test(i8*, i32) #1

declare %struct._GFigObj* @gfig_load(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare %struct._GList* @gimp_path_parse(i8*, i32, i32, %struct._GList**) #1

declare noalias i8* @gimp_path_get_user_writable_dir(%struct._GList*) #1

declare void @gimp_path_free(%struct._GList*) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #3

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @save_file_chooser_response(%struct._GtkFileChooser* %chooser, i32 %response_id, %struct._GFigObj* %obj) #0 {
entry:
  %chooser.addr = alloca %struct._GtkFileChooser*, align 8
  %response_id.addr = alloca i32, align 4
  %obj.addr = alloca %struct._GFigObj*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkFileChooser* %chooser, %struct._GtkFileChooser** %chooser.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GFigObj* %obj, %struct._GFigObj** %obj.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %call = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %1)
  store i8* %call, i8** %filename, align 8
  %2 = load i8*, i8** %filename, align 8
  %3 = load %struct._GFigObj*, %struct._GFigObj** %obj.addr, align 8
  %filename1 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %3, i32 0, i32 1
  store i8* %2, i8** %filename1, align 8
  %4 = load %struct._GFigObj*, %struct._GFigObj** %obj.addr, align 8
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 4
  store %struct._GFigObj* %4, %struct._GFigObj** %current_obj, align 8
  call void @gfig_save_callbk()
  %6 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj2 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %6, i32 0, i32 4
  %7 = load %struct._GFigObj*, %struct._GFigObj** %current_obj2, align 8
  %8 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj3 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %8, i32 0, i32 4
  store %struct._GFigObj* %7, %struct._GFigObj** %current_obj3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %10 = bitcast %struct._GtkFileChooser* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %11)
  ret void
}

declare void @gfig_save_callbk() #1

declare void @gtk_dialog_response(%struct._GtkDialog*, i32) #1

declare void @setup_undo() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gridtype_combo_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %mtype = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %mtype, align 4
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %4, i32* %value)
  %5 = load i32, i32* %mtype, align 4
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %6 = load i32, i32* %value, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 1), align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load i32, i32* %value, align 4
  store i32 %7, i32* @grid_gc_type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.181, i32 0, i32 0), i32 1841, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gridtype_combo_callback, i32 0, i32 0))
  br label %return

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb
  call void @draw_grid_clear()
  br label %return

return:                                           ; preds = %sw.epilog, %do.body
  ret void
}

declare void @g_log(i8*, i32, i8*, ...) #1

declare void @gfig_pos_enable(%struct._GtkWidget*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @toggle_show_image() #0 {
entry:
  call void @draw_grid_clear()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @paint_combo_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %mtype = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %mtype, align 4
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %4, i32* %value)
  %5 = load i32, i32* %mtype, align 4
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %6 = load i32, i32* %value, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 8), align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.181, i32 0, i32 0), i32 1813, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.paint_combo_callback, i32 0, i32 0))
  br label %return

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  call void @gfig_paint_callback()
  br label %return

return:                                           ; preds = %sw.epilog, %do.body
  ret void
}

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

declare %struct._GtkWidget* @gtk_scale_new(i32, %struct._GtkAdjustment*) #1

declare void @gtk_scale_set_value_pos(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gfig_paint_delayed() #0 {
entry:
  %0 = load i32, i32* @paint_timeout, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @paint_timeout, align 4
  %call = call i32 @g_source_remove(i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @g_timeout_add(i32 300, i32 (i8*)* @gfig_paint_timeout, i8* null)
  store i32 %call1, i32* @paint_timeout, align 4
  ret void
}

declare i32 @g_source_remove(i32) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gfig_paint_timeout(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @gfig_paint_callback()
  store i32 0, i32* @paint_timeout, align 4
  ret i32 0
}

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare i32 @g_list_index(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_insert(%struct._GList*, i8*, i32) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @select_button_clicked(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 4
  %1 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %tobool = icmp ne %struct._GFigObj* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %2, i32 0, i32 4
  %3 = load %struct._GFigObj*, %struct._GFigObj** %current_obj1, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %3, i32 0, i32 5
  %4 = load %struct._GList*, %struct._GList** %obj_list, align 8
  %call = call i32 @g_list_length(%struct._GList* %4)
  store i32 %call, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %type.addr, align 4
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.4
    i32 4, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load i32, i32* @obj_show_single, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @obj_show_single, align 4
  %7 = load i32, i32* @obj_show_single, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %sw.bb
  %8 = load i32, i32* %count, align 4
  %sub = sub nsw i32 %8, 1
  store i32 %sub, i32* @obj_show_single, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %sw.bb
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %9 = load i32, i32* @obj_show_single, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @obj_show_single, align 4
  %10 = load i32, i32* @obj_show_single, align 4
  %11 = load i32, i32* %count, align 4
  %cmp5 = icmp sge i32 %10, %11
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %sw.bb.4
  store i32 0, i32* @obj_show_single, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %sw.bb.4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  store i32 -1, i32* @obj_show_single, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %if.end.7, %if.end.3
  %12 = load i32, i32* @obj_show_single, align 4
  %cmp9 = icmp sge i32 %12, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %sw.epilog
  %13 = load i32, i32* @obj_show_single, align 4
  %call11 = call %struct._GfigObject* @gfig_select_obj_by_number(i32 %13)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %sw.epilog
  call void @draw_grid_clear()
  call void @gfig_paint_callback()
  ret void
}

declare i32 @g_list_length(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GfigObject* @gfig_select_obj_by_number(i32 %count) #0 {
entry:
  %count.addr = alloca i32, align 4
  %objs = alloca %struct._GList*, align 8
  %object = alloca %struct._GfigObject*, align 8
  %k = alloca i32, align 4
  store i32 %count, i32* %count.addr, align 4
  store %struct._GfigObject* null, %struct._GfigObject** %object, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 5
  store %struct._GfigObject* null, %struct._GfigObject** %selected_obj, align 8
  %1 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %1, i32 0, i32 4
  %2 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %2, i32 0, i32 5
  %3 = load %struct._GList*, %struct._GList** %obj_list, align 8
  store %struct._GList* %3, %struct._GList** %objs, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %4 = load %struct._GList*, %struct._GList** %objs, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* @obj_show_single, align 4
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct._GList*, %struct._GList** %objs, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GfigObject*
  store %struct._GfigObject* %9, %struct._GfigObject** %object, align 8
  %10 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  %11 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %11, i32 0, i32 5
  store %struct._GfigObject* %10, %struct._GfigObject** %selected_obj1, align 8
  %12 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %12, i32 0, i32 4
  call void @gfig_style_set_context_from_style(%struct._Style* %style)
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct._GList*, %struct._GList** %objs, align 8
  %tobool2 = icmp ne %struct._GList* %13, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %14 = load %struct._GList*, %struct._GList** %objs, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %15, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %objs, align 8
  %16 = load i32, i32* %k, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %17 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  ret %struct._GfigObject* %17
}

declare i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction*) #1

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @tool_option_no_option(%struct._GtkWidget* %notebook) #0 {
entry:
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.196, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* @gtk_label_new(i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %label, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %0)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_notebook_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkNotebook*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call4 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %3, %struct._GtkWidget* %4, %struct._GtkWidget* null)
  ret void
}

declare void @tool_options_poly(%struct._GtkWidget*) #1

declare void @tool_options_star(%struct._GtkWidget*) #1

declare void @tool_options_spiral(%struct._GtkWidget*) #1

declare void @tool_options_bezier(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
