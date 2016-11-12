; ModuleID = './plug-ins/common/animation-play.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
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
%struct._GdkFont = type { i32, i32, i32 }
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GtkActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()* }
%struct._GtkToggleActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GtkToolItem = type { %struct._GtkBin, %struct._GtkToolItemPrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkToolItemPrivate = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GdkCursor = type { i32, i32 }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkSeparatorToolItem = type { %struct._GtkToolItem, %struct._GtkSeparatorToolItemPrivate* }
%struct._GtkSeparatorToolItemPrivate = type opaque
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkComboBoxText = type { %struct._GtkComboBox, %struct._GtkComboBoxTextPrivate* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkComboBoxTextPrivate = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct.CursorOffset = type { i32, i32 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GtkProgressBar = type { %struct._GtkProgress, i32, i32, i32, i32, i32, i32, i32, double, i8 }
%struct._GtkProgress = type { %struct._GtkWidget, %struct._GtkAdjustment*, %struct._GdkDrawable*, i8*, float, float, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GdkRegion = type opaque
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GError = type { i32, i32, i8* }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Input drawable (unused)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"plug-in-animationplay\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Preview a GIMP layer-based animation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Adam D. Moss <adam@gimp.org>\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"1997, 1998...\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"_Playback...\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"RGB*, INDEXED*, GRAY*\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"<Image>/Filters/Animation\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"gtk-media-play\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@image_id = internal global i32 0, align 4
@width = internal global i32 0, align 4
@height = internal global i32 0, align 4
@total_frames = internal global i32 0, align 4
@layers = internal global i32* null, align 8
@imagetype = internal global i32 0, align 4
@ncolours = internal global i32 0, align 4
@palette = internal global i8* null, align 8
@frame_number = internal global i32 0, align 4
@preview_data = internal global i8* null, align 8
@shape_preview_mask = internal global i8* null, align 8
@preview_alpha1_data = internal global i8* null, align 8
@preview_alpha2_data = internal global i8* null, align 8
@drawing_area_data = internal global i8* null, align 8
@shape_drawing_area_data = internal global i8* null, align 8
@.str.17 = private unnamed_addr constant [15 x i8] c"animation-play\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Animation Playback:\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c" \00", align 1
@window = internal global %struct._GtkWidget* null, align 8
@.str.20 = private unnamed_addr constant [19 x i8] c"animation-playback\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"popup-menu\00", align 1
@ui_manager = internal global %struct._GtkUIManager* null, align 8
@.str.23 = private unnamed_addr constant [19 x i8] c"/anim-play-toolbar\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"/anim-play-toolbar/space\00", align 1
@drawing_area = internal global %struct._GtkWidget* null, align 8
@.str.25 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@progress = internal global %struct._GtkWidget* null, align 8
@speedcombo = internal global %struct._GtkWidget* null, align 8
@.str.26 = private unnamed_addr constant [7 x i8] c"%d fps\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Default framerate\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"%g\C3\97\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"Playback speed\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"/ui/anim-play-toolbar/play\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"/ui/anim-play-toolbar/step\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"/ui/anim-play-toolbar/rewind\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"/anim-play-popup/speed-reset\00", align 1
@shape_window = internal global %struct._GtkWidget* null, align 8
@shape_drawing_area = internal global %struct._GtkWidget* null, align 8
@.str.35 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"cursor-offset\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@root_win = internal global %struct._GdkDrawable* null, align 8
@playing = internal global i32 0, align 4
@timer = internal global i32 0, align 4
@.str.39 = private unnamed_addr constant [17 x i8] c"/anim-play-popup\00", align 1
@ui_manager_new.actions = internal global [8 x %struct._GtkActionEntry] [%struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*)* @step_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*)* @rewind_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* null, i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @help_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @close_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @close_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*)* @speed_up_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.62, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*)* @speed_down_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.66, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*)* @speed_reset_callback to void ()*) }], align 16
@.str.40 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"gtk-media-next\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"_Step\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"Step to next frame\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"rewind\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"gtk-media-rewind\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"Rewind the animation\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"gtk-help\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"<control>W\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"gtk-quit\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"<control>Q\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"speed-up\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"Faster\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"<control>L\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"Increase the speed of the animation\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"speed-down\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"Slower\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"<control>J\00", align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"Decrease the speed of the animation\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"speed-reset\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"Reset speed\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"<control>K\00", align 1
@.str.66 = private unnamed_addr constant [33 x i8] c"Reset the speed of the animation\00", align 1
@ui_manager_new.toggle_actions = internal global [2 x %struct._GtkToggleActionEntry] [%struct._GtkToggleActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i32 0, i32 0), void ()* bitcast (void (%struct._GtkToggleAction*)* @play_callback to void ()*), i32 0 }, %struct._GtkToggleActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GtkToggleAction*)* @detach_callback to void ()*), i32 0 }], align 16
@.str.67 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"Start playback\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"gtk-convert\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"Detach\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"Detach the animation from the dialog window\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"Actions\00", align 1
@.str.74 = private unnamed_addr constant [322 x i8] c"<ui>  <toolbar name=\22anim-play-toolbar\22>    <toolitem action=\22play\22 />    <toolitem action=\22step\22 />    <toolitem action=\22rewind\22 />    <separator />    <toolitem action=\22detach\22 />    <separator name=\22space\22 />    <toolitem action=\22help\22 />  </toolbar>  <accelerator action=\22close\22 />  <accelerator action=\22quit\22 /></ui>\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"error parsing ui: %s\00", align 1
@.str.76 = private unnamed_addr constant [348 x i8] c"<ui>  <popup name=\22anim-play-popup\22>    <menuitem action=\22play\22 />    <menuitem action=\22step\22 />    <menuitem action=\22rewind\22 />    <separator />    <menuitem action=\22speed-down\22 />    <menuitem action=\22speed-up\22 />    <menuitem action=\22speed-reset\22 />    <separator />    <menuitem action=\22detach\22 />    <menuitem action=\22close\22 />  </popup></ui>\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"/anim-play-toolbar/play\00", align 1
@duration_index = internal global i32 3, align 4
@.str.78 = private unnamed_addr constant [28 x i8] c"/anim-play-popup/speed-down\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"/anim-play-popup/speed-up\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"tooltip\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"Stop playback\00", align 1
@default_frame_duration = internal global i32 100, align 4
@g_ascii_table = external constant i16*, align 8
@detached = internal global i32 0, align 4
@.str.82 = private unnamed_addr constant [49 x i8] c"detached state and toggle action got out of sync\00", align 1
@render_frame.rawframe = internal global i8* null, align 8
@render_frame.rawwidth = internal global i32 0, align 4
@render_frame.rawheight = internal global i32 0, align 4
@render_frame.rawbpp = internal global i32 0, align 4
@.str.83 = private unnamed_addr constant [62 x i8] c"playback: Asked for frame number %d in a %d-frame animation!\0A\00", align 1
@drawable = internal global %struct._GimpDrawable* null, align 8
@.str.84 = private unnamed_addr constant [35 x i8] c"Tried to display an invalid layer.\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"(combine)\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"(replace)\00", align 1
@reshape_from_bitmap.prev_bitmap = internal global i8* null, align 8
@.str.87 = private unnamed_addr constant [15 x i8] c"Frame %d of %d\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0))
  %call1 = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %n_params, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %n_params.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i32, i32* %run_mode, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %5 = load i32, i32* %n_params.addr, align 4
  %cmp4 = icmp ne i32 %5, 3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %6 = load i32, i32* %status, align 4
  %cmp5 = icmp eq i32 %6, 3
  br i1 %cmp5, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data8 to i32*
  %8 = load i32, i32* %d_image, align 4
  store i32 %8, i32* @image_id, align 4
  call void @do_playback()
  %9 = load i32, i32* %run_mode, align 4
  %cmp9 = icmp ne i32 %9, 1
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.6
  %call11 = call i32 @gimp_displays_flush()
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %10 = load i32, i32* %status, align 4
  store i32 %10, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @gimp_main(%struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 %0, i8** %1)
  ret i32 %call
}

declare i32 @gimp_main(%struct._GimpPlugInInfo*, i32, i8**) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

declare i32 @gimp_plugin_icon_register(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @do_playback() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i32, i32* @image_id, align 4
  %call = call i32 @gimp_image_width(i32 %0)
  store i32 %call, i32* @width, align 4
  %1 = load i32, i32* @image_id, align 4
  %call1 = call i32 @gimp_image_height(i32 %1)
  store i32 %call1, i32* @height, align 4
  %2 = load i32, i32* @image_id, align 4
  %call2 = call i32* @gimp_image_get_layers(i32 %2, i32* @total_frames)
  store i32* %call2, i32** @layers, align 8
  %3 = load i32, i32* @image_id, align 4
  %call3 = call i32 @gimp_image_base_type(i32 %3)
  store i32 %call3, i32* @imagetype, align 4
  %4 = load i32, i32* @imagetype, align 4
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @image_id, align 4
  %call4 = call i8* @gimp_image_get_colormap(i32 %5, i32* @ncolours)
  store i8* %call4, i8** @palette, align 8
  br label %if.end.16

if.else:                                          ; preds = %entry
  %6 = load i32, i32* @imagetype, align 4
  %cmp5 = icmp eq i32 %6, 1
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %call7 = call noalias i8* @g_malloc_n(i64 768, i64 1)
  store i8* %call7, i8** @palette, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %7 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %7, 256
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %conv = trunc i32 %8 to i8
  %9 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %9, 3
  %add = add nsw i32 %mul, 2
  %idxprom = sext i32 %add to i64
  %10 = load i8*, i8** @palette, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %11 = load i32, i32* %i, align 4
  %mul9 = mul nsw i32 %11, 3
  %add10 = add nsw i32 %mul9, 1
  %idxprom11 = sext i32 %add10 to i64
  %12 = load i8*, i8** @palette, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 %idxprom11
  store i8 %conv, i8* %arrayidx12, align 1
  %13 = load i32, i32* %i, align 4
  %mul13 = mul nsw i32 %13, 3
  %idxprom14 = sext i32 %mul13 to i64
  %14 = load i8*, i8** @palette, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %14, i64 %idxprom14
  store i8 %conv, i8* %arrayidx15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 256, i32* @ncolours, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  store i32 0, i32* @frame_number, align 4
  call void @gimp_tile_cache_size(i64 0)
  call void @init_preview()
  %16 = load i32, i32* @image_id, align 4
  %call17 = call i32 @gimp_image_base_type(i32 %16)
  %17 = load i32, i32* @image_id, align 4
  %call18 = call i8* @gimp_image_get_name(i32 %17)
  call void @build_dialog(i32 %call17, i8* %call18)
  %18 = load i8*, i8** @preview_data, align 8
  call void @total_alpha_preview(i8* %18)
  call void @render_frame(i32 0)
  call void @show_frame()
  call void @gtk_main()
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_image_height(i32) #1

declare i32* @gimp_image_get_layers(i32, i32*) #1

declare i32 @gimp_image_base_type(i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_tile_cache_size(i64) #1

; Function Attrs: nounwind uwtable
define internal void @init_preview() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i32, i32* @width, align 4
  %1 = load i32, i32* @height, align 4
  %mul = mul i32 %0, %1
  %mul1 = mul i32 %mul, 3
  %conv = zext i32 %mul1 to i64
  %call = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call, i8** @preview_data, align 8
  %2 = load i32, i32* @width, align 4
  %3 = load i32, i32* @height, align 4
  %mul2 = mul i32 %2, %3
  %div = udiv i32 %mul2, 8
  %add = add i32 %div, 1
  %4 = load i32, i32* @height, align 4
  %add3 = add i32 %add, %4
  %conv4 = zext i32 %add3 to i64
  %call5 = call noalias i8* @g_malloc(i64 %conv4)
  store i8* %call5, i8** @shape_preview_mask, align 8
  %5 = load i32, i32* @width, align 4
  %mul6 = mul i32 %5, 3
  %conv7 = zext i32 %mul6 to i64
  %call8 = call noalias i8* @g_malloc(i64 %conv7)
  store i8* %call8, i8** @preview_alpha1_data, align 8
  %6 = load i32, i32* @width, align 4
  %mul9 = mul i32 %6, 3
  %conv10 = zext i32 %mul9 to i64
  %call11 = call noalias i8* @g_malloc(i64 %conv10)
  store i8* %call11, i8** @preview_alpha2_data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* @width, align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %and = and i32 %9, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %mul13 = mul nsw i32 %10, 3
  %add14 = add nsw i32 %mul13, 2
  %idxprom = sext i32 %add14 to i64
  %11 = load i8*, i8** @preview_alpha1_data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  store i8 102, i8* %arrayidx, align 1
  %12 = load i32, i32* %i, align 4
  %mul15 = mul nsw i32 %12, 3
  %add16 = add nsw i32 %mul15, 1
  %idxprom17 = sext i32 %add16 to i64
  %13 = load i8*, i8** @preview_alpha1_data, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 %idxprom17
  store i8 102, i8* %arrayidx18, align 1
  %14 = load i32, i32* %i, align 4
  %mul19 = mul nsw i32 %14, 3
  %add20 = add nsw i32 %mul19, 0
  %idxprom21 = sext i32 %add20 to i64
  %15 = load i8*, i8** @preview_alpha1_data, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %15, i64 %idxprom21
  store i8 102, i8* %arrayidx22, align 1
  %16 = load i32, i32* %i, align 4
  %mul23 = mul nsw i32 %16, 3
  %add24 = add nsw i32 %mul23, 2
  %idxprom25 = sext i32 %add24 to i64
  %17 = load i8*, i8** @preview_alpha2_data, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %17, i64 %idxprom25
  store i8 -102, i8* %arrayidx26, align 1
  %18 = load i32, i32* %i, align 4
  %mul27 = mul nsw i32 %18, 3
  %add28 = add nsw i32 %mul27, 1
  %idxprom29 = sext i32 %add28 to i64
  %19 = load i8*, i8** @preview_alpha2_data, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %19, i64 %idxprom29
  store i8 -102, i8* %arrayidx30, align 1
  %20 = load i32, i32* %i, align 4
  %mul31 = mul nsw i32 %20, 3
  %add32 = add nsw i32 %mul31, 0
  %idxprom33 = sext i32 %add32 to i64
  %21 = load i8*, i8** @preview_alpha2_data, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %21, i64 %idxprom33
  store i8 -102, i8* %arrayidx34, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %mul35 = mul nsw i32 %22, 3
  %add36 = add nsw i32 %mul35, 2
  %idxprom37 = sext i32 %add36 to i64
  %23 = load i8*, i8** @preview_alpha1_data, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %23, i64 %idxprom37
  store i8 -102, i8* %arrayidx38, align 1
  %24 = load i32, i32* %i, align 4
  %mul39 = mul nsw i32 %24, 3
  %add40 = add nsw i32 %mul39, 1
  %idxprom41 = sext i32 %add40 to i64
  %25 = load i8*, i8** @preview_alpha1_data, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %25, i64 %idxprom41
  store i8 -102, i8* %arrayidx42, align 1
  %26 = load i32, i32* %i, align 4
  %mul43 = mul nsw i32 %26, 3
  %add44 = add nsw i32 %mul43, 0
  %idxprom45 = sext i32 %add44 to i64
  %27 = load i8*, i8** @preview_alpha1_data, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %27, i64 %idxprom45
  store i8 -102, i8* %arrayidx46, align 1
  %28 = load i32, i32* %i, align 4
  %mul47 = mul nsw i32 %28, 3
  %add48 = add nsw i32 %mul47, 2
  %idxprom49 = sext i32 %add48 to i64
  %29 = load i8*, i8** @preview_alpha2_data, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %29, i64 %idxprom49
  store i8 102, i8* %arrayidx50, align 1
  %30 = load i32, i32* %i, align 4
  %mul51 = mul nsw i32 %30, 3
  %add52 = add nsw i32 %mul51, 1
  %idxprom53 = sext i32 %add52 to i64
  %31 = load i8*, i8** @preview_alpha2_data, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %31, i64 %idxprom53
  store i8 102, i8* %arrayidx54, align 1
  %32 = load i32, i32* %i, align 4
  %mul55 = mul nsw i32 %32, 3
  %add56 = add nsw i32 %mul55, 0
  %idxprom57 = sext i32 %add56 to i64
  %33 = load i8*, i8** @preview_alpha2_data, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %33, i64 %idxprom57
  store i8 102, i8* %arrayidx58, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i8*, i8** @preview_data, align 8
  store i8* %35, i8** @drawing_area_data, align 8
  %36 = load i8*, i8** @preview_data, align 8
  store i8* %36, i8** @shape_drawing_area_data, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_dialog(i32 %basetype, i8* %imagename) #0 {
entry:
  %basetype.addr = alloca i32, align 4
  %imagename.addr = alloca i8*, align 8
  %toolbar = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %abox = alloca %struct._GtkWidget*, align 8
  %item = alloca %struct._GtkToolItem*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  %name = alloca i8*, align 8
  %index = alloca i32, align 4
  %text = alloca i8*, align 8
  %text60 = alloca i8*, align 8
  store i32 %basetype, i32* %basetype.addr, align 4
  store i8* %imagename, i8** %imagename.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)) #5
  %0 = load i8*, i8** %imagename.addr, align 8
  %call1 = call noalias i8* (i8*, ...) @g_strconcat(i8* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* %0, i8* null)
  store i8* %call1, i8** %name, align 8
  %call2 = call %struct._GtkWidget* @gtk_window_new(i32 0)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** @window, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @window, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_window_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call3)
  %3 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWindow*
  %4 = load i8*, i8** %name, align 8
  call void @gtk_window_set_title(%struct._GtkWindow* %3, i8* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @window, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  call void @gtk_window_set_role(%struct._GtkWindow* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0))
  %8 = load i8*, i8** %name, align 8
  call void @g_free(i8* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @window, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @window_destroy to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** @window, align 8
  %12 = bitcast %struct._GtkWidget* %11 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @popup_menu to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @window, align 8
  call void @gimp_help_connect(%struct._GtkWidget* %13, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* null)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** @window, align 8
  %call9 = call %struct._GtkUIManager* @ui_manager_new(%struct._GtkWidget* %14)
  store %struct._GtkUIManager* %call9, %struct._GtkUIManager** @ui_manager, align 8
  %call10 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %main_vbox, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @window, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %17, %struct._GtkWidget* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call13 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0))
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %toolbar, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call14)
  %23 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 0, i32 0, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %26 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call16 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0))
  %27 = bitcast %struct._GtkWidget* %call16 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_tool_item_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call17)
  %28 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkToolItem*
  store %struct._GtkToolItem* %28, %struct._GtkToolItem** %item, align 8
  %29 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  %30 = bitcast %struct._GtkToolItem* %29 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_separator_tool_item_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call19)
  %31 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkSeparatorToolItem*
  call void @gtk_separator_tool_item_set_draw(%struct._GtkSeparatorToolItem* %31, i32 0)
  %32 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  call void @gtk_tool_item_set_expand(%struct._GtkToolItem* %32, i32 1)
  %call21 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %vbox, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call22)
  %35 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %call24 = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %abox, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call25)
  %40 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %41, i32 1, i32 1, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %call27 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %frame, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_frame_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call28)
  %45 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %45, i32 1)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_container_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call30)
  %48 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkContainer*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %48, %struct._GtkWidget* %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %call32 = call %struct._GtkWidget* @gtk_drawing_area_new()
  store %struct._GtkWidget* %call32, %struct._GtkWidget** @drawing_area, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  %52 = load i32, i32* @width, align 4
  %53 = load i32, i32* @height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %51, i32 %52, i32 %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %54, i32 256)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_container_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call33)
  %57 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkContainer*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  call void @gtk_container_add(%struct._GtkContainer* %57, %struct._GtkWidget* %58)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @button_press to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call36 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %hbox, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_box_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call37)
  %64 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkBox*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %64, %struct._GtkWidget* %65, i32 0, i32 0, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %call39 = call %struct._GtkWidget* @gtk_progress_bar_new()
  store %struct._GtkWidget* %call39, %struct._GtkWidget** @progress, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call40)
  %69 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** @progress, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %69, %struct._GtkWidget* %70, i32 1, i32 1, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** @progress, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %call42 = call %struct._GtkWidget* @gtk_combo_box_text_new()
  store %struct._GtkWidget* %call42, %struct._GtkWidget** @speedcombo, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_box_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call43)
  %74 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkBox*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** @speedcombo, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %74, %struct._GtkWidget* %75, i32 0, i32 0, i32 0)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** @speedcombo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %77 = load i32, i32* %index, align 4
  %cmp = icmp slt i32 %77, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #5
  %78 = load i32, i32* %index, align 4
  %call46 = call i32 @get_fps(i32 %78)
  %call47 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call45, i32 %call46)
  store i8* %call47, i8** %text, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** @speedcombo, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_combo_box_text_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call48)
  %81 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkComboBoxText*
  %82 = load i8*, i8** %text, align 8
  call void @gtk_combo_box_text_append_text(%struct._GtkComboBoxText* %81, i8* %82)
  %83 = load i8*, i8** %text, align 8
  call void @g_free(i8* %83)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %84 = load i32, i32* %index, align 4
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** @speedcombo, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_combo_box_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call50)
  %87 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkComboBox*
  call void @gtk_combo_box_set_active(%struct._GtkComboBox* %87, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** @speedcombo, align 8
  %89 = bitcast %struct._GtkWidget* %88 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @fpscombo_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** @speedcombo, align 8
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %90, i8* %call53, i8* null)
  %call54 = call %struct._GtkWidget* @gtk_combo_box_text_new()
  store %struct._GtkWidget* %call54, %struct._GtkWidget** @speedcombo, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_box_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call55)
  %93 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkBox*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** @speedcombo, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %93, %struct._GtkWidget* %94, i32 0, i32 0, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** @speedcombo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  store i32 0, i32* %index, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.66, %for.end
  %96 = load i32, i32* %index, align 4
  %cmp58 = icmp slt i32 %96, 7
  br i1 %cmp58, label %for.body.59, label %for.end.68

for.body.59:                                      ; preds = %for.cond.57
  %97 = load i32, i32* %index, align 4
  %call61 = call double @get_duration_factor(i32 %97)
  %div = fdiv double 1.000000e+02, %call61
  %div62 = fdiv double %div, 1.000000e+02
  %call63 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), double %div62)
  store i8* %call63, i8** %text60, align 8
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** @speedcombo, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_combo_box_text_get_type() #7
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call64)
  %100 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkComboBoxText*
  %101 = load i8*, i8** %text60, align 8
  call void @gtk_combo_box_text_append_text(%struct._GtkComboBoxText* %100, i8* %101)
  %102 = load i8*, i8** %text60, align 8
  call void @g_free(i8* %102)
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.59
  %103 = load i32, i32* %index, align 4
  %inc67 = add nsw i32 %103, 1
  store i32 %inc67, i32* %index, align 4
  br label %for.cond.57

for.end.68:                                       ; preds = %for.cond.57
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** @speedcombo, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_combo_box_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call69)
  %106 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkComboBox*
  call void @gtk_combo_box_set_active(%struct._GtkComboBox* %106, i32 3)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** @speedcombo, align 8
  %108 = bitcast %struct._GtkWidget* %107 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @speedcombo_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** @speedcombo, align 8
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %109, i8* %call72, i8* null)
  %110 = load i32, i32* @total_frames, align 4
  %cmp73 = icmp slt i32 %110, 2
  br i1 %cmp73, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.68
  %111 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call74 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0))
  store %struct._GtkAction* %call74, %struct._GtkAction** %action, align 8
  %112 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_set_sensitive(%struct._GtkAction* %112, i32 0)
  %113 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call75 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0))
  store %struct._GtkAction* %call75, %struct._GtkAction** %action, align 8
  %114 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_set_sensitive(%struct._GtkAction* %114, i32 0)
  %115 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call76 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0))
  store %struct._GtkAction* %call76, %struct._GtkAction** %action, align 8
  %116 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_set_sensitive(%struct._GtkAction* %116, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.68
  %117 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call77 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0))
  store %struct._GtkAction* %call77, %struct._GtkAction** %action, align 8
  %118 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_set_sensitive(%struct._GtkAction* %118, i32 0)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** @window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %119)
  %call78 = call %struct._GtkWidget* @gtk_window_new(i32 1)
  store %struct._GtkWidget* %call78, %struct._GtkWidget** @shape_window, align 8
  %call79 = call %struct._GtkWidget* @gtk_drawing_area_new()
  store %struct._GtkWidget* %call79, %struct._GtkWidget** @shape_drawing_area, align 8
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_drawing_area, align 8
  %121 = load i32, i32* @width, align 4
  %122 = load i32, i32* @height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %120, i32 %121, i32 %122)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_container_get_type() #7
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call80)
  %125 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkContainer*
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_drawing_area, align 8
  call void @gtk_container_add(%struct._GtkContainer* %125, %struct._GtkWidget* %126)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_drawing_area, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %127)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_drawing_area, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %128, i32 256)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  call void @gtk_widget_realize(%struct._GtkWidget* %129)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  %call82 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %130)
  call void @gdk_window_set_back_pixmap(%struct._GdkDrawable* %call82, %struct._GdkDrawable* null, i32 0)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  %call83 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %131)
  %call84 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %call83, i32 60)
  store %struct._GdkCursor* %call84, %struct._GdkCursor** %cursor, align 8
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  %call85 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %132)
  %133 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call85, %struct._GdkCursor* %133)
  %134 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %134)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  %136 = bitcast %struct._GtkWidget* %135 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @shape_pressed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  %138 = bitcast %struct._GtkWidget* %137 to i8*
  %call87 = call i64 @g_signal_connect_data(i8* %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*)* @shape_released to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  %140 = bitcast %struct._GtkWidget* %139 to i8*
  %call88 = call i64 @g_signal_connect_data(i8* %140, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* @shape_motion to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 80)
  %143 = bitcast %struct._GTypeInstance* %call89 to %struct._GObject*
  %call90 = call noalias i8* @g_malloc0_n(i64 1, i64 8)
  %144 = bitcast i8* %call90 to %struct.CursorOffset*
  %145 = bitcast %struct.CursorOffset* %144 to i8*
  call void @g_object_set_data(%struct._GObject* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* %145)
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  %147 = bitcast %struct._GtkWidget* %146 to i8*
  %call91 = call i64 @g_signal_connect_data(i8* %147, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, i8*)* @repaint_da to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_drawing_area, align 8
  %149 = bitcast %struct._GtkWidget* %148 to i8*
  %call92 = call i64 @g_signal_connect_data(i8* %149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @maybeblocked_expose to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call93 = call %struct._GdkDrawable* @gdk_get_default_root_window()
  store %struct._GdkDrawable* %call93, %struct._GdkDrawable** @root_win, align 8
  ret void
}

declare i8* @gimp_image_get_name(i32) #1

; Function Attrs: nounwind uwtable
define internal void @total_alpha_preview(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @height, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %and = and i32 %2, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, 3
  %4 = load i32, i32* @width, align 4
  %mul1 = mul i32 %mul, %4
  %idxprom = zext i32 %mul1 to i64
  %5 = load i8*, i8** %ptr.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8*, i8** @preview_alpha1_data, align 8
  %7 = load i32, i32* @width, align 4
  %mul2 = mul i32 3, %7
  %conv = zext i32 %mul2 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %6, i64 %conv, i32 1, i1 false)
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %mul3 = mul nsw i32 %8, 3
  %9 = load i32, i32* @width, align 4
  %mul4 = mul i32 %mul3, %9
  %idxprom5 = zext i32 %mul4 to i64
  %10 = load i8*, i8** %ptr.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  %11 = load i8*, i8** @preview_alpha2_data, align 8
  %12 = load i32, i32* @width, align 4
  %mul7 = mul i32 3, %12
  %conv8 = zext i32 %mul7 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx6, i8* %11, i64 %conv8, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @render_frame(i32 %whichframe) #0 {
entry:
  %whichframe.addr = alloca i32, align 4
  %shape_style = alloca %struct._GtkStyle*, align 8
  %drawing_style = alloca %struct._GtkStyle*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %rawx = alloca i32, align 4
  %rawy = alloca i32, align 4
  %srcptr = alloca i8*, align 8
  %destptr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %dispose = alloca i32, align 4
  %top = alloca i32, align 4
  %bottom = alloca i32, align 4
  %top351 = alloca i32, align 4
  %bottom358 = alloca i32, align 4
  %top714 = alloca i32, align 4
  %bottom721 = alloca i32, align 4
  %top756 = alloca i32, align 4
  %bottom763 = alloca i32, align 4
  store i32 %whichframe, i32* %whichframe.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_drawing_area, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %0)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %shape_style, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  %call1 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %1)
  store %struct._GtkStyle* %call1, %struct._GtkStyle** %drawing_style, align 8
  store i32 0, i32* %rawx, align 4
  store i32 0, i32* %rawy, align 4
  %2 = load i32, i32* %whichframe.addr, align 4
  %3 = load i32, i32* @total_frames, align 4
  %cmp = icmp sge i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %whichframe.addr, align 4
  %add = add nsw i32 %4, 1
  %5 = load i32, i32* @total_frames, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.83, i32 0, i32 0), i32 %add, i32 %5)
  call void @gimp_quit() #8
  unreachable

if.end:                                           ; preds = %entry
  %6 = load i32, i32* @total_frames, align 4
  %7 = load i32, i32* %whichframe.addr, align 4
  %add3 = add nsw i32 %7, 1
  %sub = sub nsw i32 %6, %add3
  %idxprom = sext i32 %sub to i64
  %8 = load i32*, i32** @layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %call4 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %9)
  store %struct._GimpDrawable* %call4, %struct._GimpDrawable** @drawable, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %10, null
  br i1 %tobool, label %if.end.8, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.84, i32 0, i32 0)) #5
  %call7 = call i32 @gimp_message(i8* %call6)
  call void @gtk_main_quit()
  br label %return

if.end.8:                                         ; preds = %if.end
  %11 = load i32, i32* @frame_number, align 4
  %call9 = call i32 @get_frame_disposal(i32 %11)
  store i32 %call9, i32* %dispose, align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id, align 4
  %call10 = call i32 @gimp_drawable_width(i32 %13)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** @window, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %14)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.8
  %15 = load i32, i32* %dispose, align 4
  %cmp14 = icmp eq i32 %15, 2
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %16 = load i32, i32* %whichframe.addr, align 4
  %cmp15 = icmp eq i32 %16, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.13
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id16, align 4
  %call17 = call i32 @gimp_drawable_has_alpha(i32 %18)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true
  %19 = load i8*, i8** @preview_data, align 8
  call void @total_alpha_preview(i8* %19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %land.lhs.true, %lor.lhs.false
  %20 = load i32, i32* @render_frame.rawwidth, align 4
  %21 = load i32, i32* @render_frame.rawheight, align 4
  %mul = mul nsw i32 %20, %21
  %22 = load i32, i32* @render_frame.rawbpp, align 4
  %mul21 = mul nsw i32 %mul, %22
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id22 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 0
  %24 = load i32, i32* %drawable_id22, align 4
  %call23 = call i32 @gimp_drawable_width(i32 %24)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 0
  %26 = load i32, i32* %drawable_id24, align 4
  %call25 = call i32 @gimp_drawable_height(i32 %26)
  %mul26 = mul nsw i32 %call23, %call25
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id27 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 0
  %28 = load i32, i32* %drawable_id27, align 4
  %call28 = call i32 @gimp_drawable_bpp(i32 %28)
  %mul29 = mul nsw i32 %mul26, %call28
  %cmp30 = icmp ne i32 %mul21, %mul29
  br i1 %cmp30, label %if.then.31, label %if.end.44

if.then.31:                                       ; preds = %if.end.20
  %29 = load i8*, i8** @render_frame.rawframe, align 8
  %cmp32 = icmp ne i8* %29, null
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.31
  %30 = load i8*, i8** @render_frame.rawframe, align 8
  call void @g_free(i8* %30)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.31
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id35 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 0
  %32 = load i32, i32* %drawable_id35, align 4
  %call36 = call i32 @gimp_drawable_width(i32 %32)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id37 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 0
  %34 = load i32, i32* %drawable_id37, align 4
  %call38 = call i32 @gimp_drawable_height(i32 %34)
  %mul39 = mul nsw i32 %call36, %call38
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id40 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 0
  %36 = load i32, i32* %drawable_id40, align 4
  %call41 = call i32 @gimp_drawable_bpp(i32 %36)
  %mul42 = mul nsw i32 %mul39, %call41
  %conv = sext i32 %mul42 to i64
  %call43 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call43, i8** @render_frame.rawframe, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.34, %if.end.20
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id45 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %37, i32 0, i32 0
  %38 = load i32, i32* %drawable_id45, align 4
  %call46 = call i32 @gimp_drawable_width(i32 %38)
  store i32 %call46, i32* @render_frame.rawwidth, align 4
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id47 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 0
  %40 = load i32, i32* %drawable_id47, align 4
  %call48 = call i32 @gimp_drawable_height(i32 %40)
  store i32 %call48, i32* @render_frame.rawheight, align 4
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id49 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %41, i32 0, i32 0
  %42 = load i32, i32* %drawable_id49, align 4
  %call50 = call i32 @gimp_drawable_bpp(i32 %42)
  store i32 %call50, i32* @render_frame.rawbpp, align 4
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %44, i32 0, i32 1
  %45 = load i32, i32* %width, align 4
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %46, i32 0, i32 2
  %47 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %43, i32 0, i32 0, i32 %45, i32 %47, i32 0, i32 0)
  %48 = load i8*, i8** @render_frame.rawframe, align 8
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width51 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 1
  %50 = load i32, i32* %width51, align 4
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height52 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %51, i32 0, i32 2
  %52 = load i32, i32* %height52, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %48, i32 0, i32 0, i32 %50, i32 %52)
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id53 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %53, i32 0, i32 0
  %54 = load i32, i32* %drawable_id53, align 4
  %call54 = call i32 @gimp_drawable_offsets(i32 %54, i32* %rawx, i32* %rawy)
  %55 = load i32, i32* @imagetype, align 4
  switch i32 %55, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.388
    i32 2, label %sw.bb.388
  ]

sw.bb:                                            ; preds = %if.end.44
  %56 = load i32, i32* @render_frame.rawwidth, align 4
  %57 = load i32, i32* @width, align 4
  %cmp55 = icmp eq i32 %56, %57
  br i1 %cmp55, label %land.lhs.true.57, label %if.else.145

land.lhs.true.57:                                 ; preds = %sw.bb
  %58 = load i32, i32* @render_frame.rawheight, align 4
  %59 = load i32, i32* @height, align 4
  %cmp58 = icmp eq i32 %58, %59
  br i1 %cmp58, label %land.lhs.true.60, label %if.else.145

land.lhs.true.60:                                 ; preds = %land.lhs.true.57
  %60 = load i32, i32* %rawx, align 4
  %cmp61 = icmp eq i32 %60, 0
  br i1 %cmp61, label %land.lhs.true.63, label %if.else.145

land.lhs.true.63:                                 ; preds = %land.lhs.true.60
  %61 = load i32, i32* %rawy, align 4
  %cmp64 = icmp eq i32 %61, 0
  br i1 %cmp64, label %if.then.66, label %if.else.145

if.then.66:                                       ; preds = %land.lhs.true.63
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id67 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %62, i32 0, i32 0
  %63 = load i32, i32* %drawable_id67, align 4
  %call68 = call i32 @gimp_drawable_has_alpha(i32 %63)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.else

if.then.70:                                       ; preds = %if.then.66
  %64 = load i8*, i8** @preview_data, align 8
  store i8* %64, i8** %destptr, align 8
  %65 = load i8*, i8** @render_frame.rawframe, align 8
  store i8* %65, i8** %srcptr, align 8
  %66 = load i32, i32* @render_frame.rawwidth, align 4
  %67 = load i32, i32* @render_frame.rawheight, align 4
  %mul71 = mul nsw i32 %66, %67
  store i32 %mul71, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.78, %if.then.76, %if.then.70
  %68 = load i32, i32* %i, align 4
  %dec = add nsw i32 %68, -1
  store i32 %dec, i32* %i, align 4
  %tobool72 = icmp ne i32 %68, 0
  br i1 %tobool72, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %69 = load i8*, i8** %srcptr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %69, i64 3
  %70 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %70 to i32
  %and = and i32 %conv74, 128
  %tobool75 = icmp ne i32 %and, 0
  br i1 %tobool75, label %if.end.78, label %if.then.76

if.then.76:                                       ; preds = %while.body
  %71 = load i8*, i8** %srcptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %71, i64 4
  store i8* %add.ptr, i8** %srcptr, align 8
  %72 = load i8*, i8** %destptr, align 8
  %add.ptr77 = getelementptr inbounds i8, i8* %72, i64 3
  store i8* %add.ptr77, i8** %destptr, align 8
  br label %while.cond

if.end.78:                                        ; preds = %while.body
  %73 = load i8*, i8** %srcptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr, i8** %srcptr, align 8
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %destptr, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr79, i8** %destptr, align 8
  store i8 %74, i8* %75, align 1
  %76 = load i8*, i8** %srcptr, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr80, i8** %srcptr, align 8
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %destptr, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr81, i8** %destptr, align 8
  store i8 %77, i8* %78, align 1
  %79 = load i8*, i8** %srcptr, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr82, i8** %srcptr, align 8
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %destptr, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr83, i8** %destptr, align 8
  store i8 %80, i8* %81, align 1
  %82 = load i8*, i8** %srcptr, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr84, i8** %srcptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %83 = load i32, i32* @detached, align 4
  %tobool85 = icmp ne i32 %83, 0
  br i1 %tobool85, label %if.then.86, label %if.end.112

if.then.86:                                       ; preds = %while.end
  %84 = load i8*, i8** @render_frame.rawframe, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %84, i64 3
  store i8* %add.ptr87, i8** %srcptr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.109, %if.then.86
  %85 = load i32, i32* %j, align 4
  %86 = load i32, i32* @render_frame.rawheight, align 4
  %cmp88 = icmp slt i32 %85, %86
  br i1 %cmp88, label %for.body, label %for.end.111

for.body:                                         ; preds = %for.cond
  %87 = load i32, i32* %j, align 4
  %88 = load i32, i32* @render_frame.rawwidth, align 4
  %add90 = add nsw i32 7, %88
  %div = sdiv i32 %add90, 8
  %mul91 = mul nsw i32 %87, %div
  store i32 %mul91, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc, %for.body
  %89 = load i32, i32* %i, align 4
  %90 = load i32, i32* @render_frame.rawwidth, align 4
  %cmp93 = icmp slt i32 %89, %90
  br i1 %cmp93, label %for.body.95, label %for.end

for.body.95:                                      ; preds = %for.cond.92
  %91 = load i8*, i8** %srcptr, align 8
  %92 = load i8, i8* %91, align 1
  %conv96 = zext i8 %92 to i32
  %and97 = and i32 %conv96, 128
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.107

if.then.99:                                       ; preds = %for.body.95
  %93 = load i32, i32* %i, align 4
  %and100 = and i32 %93, 7
  %shl = shl i32 1, %and100
  %94 = load i32, i32* %k, align 4
  %95 = load i32, i32* %i, align 4
  %div101 = sdiv i32 %95, 8
  %add102 = add nsw i32 %94, %div101
  %idxprom103 = sext i32 %add102 to i64
  %96 = load i8*, i8** @shape_preview_mask, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %96, i64 %idxprom103
  %97 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %97 to i32
  %or = or i32 %conv105, %shl
  %conv106 = trunc i32 %or to i8
  store i8 %conv106, i8* %arrayidx104, align 1
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.99, %for.body.95
  %98 = load i8*, i8** %srcptr, align 8
  %add.ptr108 = getelementptr inbounds i8, i8* %98, i64 4
  store i8* %add.ptr108, i8** %srcptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.107
  %99 = load i32, i32* %i, align 4
  %inc = add nsw i32 %99, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.92

for.end:                                          ; preds = %for.cond.92
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.end
  %100 = load i32, i32* %j, align 4
  %inc110 = add nsw i32 %100, 1
  store i32 %inc110, i32* %j, align 4
  br label %for.cond

for.end.111:                                      ; preds = %for.cond
  br label %if.end.112

if.end.112:                                       ; preds = %for.end.111, %while.end
  br label %if.end.130

if.else:                                          ; preds = %if.then.66
  %101 = load i32, i32* @render_frame.rawwidth, align 4
  %102 = load i32, i32* @width, align 4
  %cmp113 = icmp eq i32 %101, %102
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.122

land.lhs.true.115:                                ; preds = %if.else
  %103 = load i32, i32* @render_frame.rawheight, align 4
  %104 = load i32, i32* @height, align 4
  %cmp116 = icmp eq i32 %103, %104
  br i1 %cmp116, label %if.then.118, label %if.end.122

if.then.118:                                      ; preds = %land.lhs.true.115
  %105 = load i8*, i8** @preview_data, align 8
  %106 = load i8*, i8** @render_frame.rawframe, align 8
  %107 = load i32, i32* @width, align 4
  %108 = load i32, i32* @height, align 4
  %mul119 = mul i32 %107, %108
  %mul120 = mul i32 %mul119, 3
  %conv121 = zext i32 %mul120 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 %conv121, i32 1, i1 false)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.118, %land.lhs.true.115, %if.else
  %109 = load i32, i32* @detached, align 4
  %tobool123 = icmp ne i32 %109, 0
  br i1 %tobool123, label %if.then.124, label %if.end.129

if.then.124:                                      ; preds = %if.end.122
  %110 = load i8*, i8** @shape_preview_mask, align 8
  %111 = load i32, i32* @render_frame.rawwidth, align 4
  %112 = load i32, i32* @render_frame.rawheight, align 4
  %mul125 = mul nsw i32 %111, %112
  %div126 = sdiv i32 %mul125, 8
  %113 = load i32, i32* @render_frame.rawheight, align 4
  %add127 = add nsw i32 %div126, %113
  %conv128 = sext i32 %add127 to i64
  call void @llvm.memset.p0i8.i64(i8* %110, i8 -1, i64 %conv128, i32 1, i1 false)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.124, %if.end.122
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.end.112
  %114 = load i32, i32* @detached, align 4
  %tobool131 = icmp ne i32 %114, 0
  br i1 %tobool131, label %if.then.132, label %if.else.137

if.then.132:                                      ; preds = %if.end.130
  %115 = load i8*, i8** @shape_preview_mask, align 8
  call void @reshape_from_bitmap(i8* %115)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_drawing_area, align 8
  %call133 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %116)
  %117 = load %struct._GtkStyle*, %struct._GtkStyle** %shape_style, align 8
  %white_gc = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %117, i32 0, i32 23
  %118 = load %struct._GdkGC*, %struct._GdkGC** %white_gc, align 8
  %119 = load i32, i32* @width, align 4
  %120 = load i32, i32* @height, align 4
  %121 = load i32, i32* @total_frames, align 4
  %cmp134 = icmp eq i32 %121, 1
  %cond = select i1 %cmp134, i32 2, i32 1
  %122 = load i8*, i8** @preview_data, align 8
  %123 = load i32, i32* @width, align 4
  %mul136 = mul i32 %123, 3
  call void @gdk_draw_rgb_image(%struct._GdkDrawable* %call133, %struct._GdkGC* %118, i32 0, i32 0, i32 %119, i32 %120, i32 %cond, i8* %122, i32 %mul136)
  br label %if.end.144

if.else.137:                                      ; preds = %if.end.130
  %124 = load i8*, i8** @shape_preview_mask, align 8
  call void @reshape_from_bitmap(i8* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  %call138 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %125)
  %126 = load %struct._GtkStyle*, %struct._GtkStyle** %drawing_style, align 8
  %white_gc139 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %126, i32 0, i32 23
  %127 = load %struct._GdkGC*, %struct._GdkGC** %white_gc139, align 8
  %128 = load i32, i32* @width, align 4
  %129 = load i32, i32* @height, align 4
  %130 = load i32, i32* @total_frames, align 4
  %cmp140 = icmp eq i32 %130, 1
  %cond142 = select i1 %cmp140, i32 2, i32 1
  %131 = load i8*, i8** @preview_data, align 8
  %132 = load i32, i32* @width, align 4
  %mul143 = mul i32 %132, 3
  call void @gdk_draw_rgb_image(%struct._GdkDrawable* %call138, %struct._GdkGC* %127, i32 0, i32 0, i32 %128, i32 %129, i32 %cond142, i8* %131, i32 %mul143)
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.137, %if.then.132
  br label %if.end.387

if.else.145:                                      ; preds = %land.lhs.true.63, %land.lhs.true.60, %land.lhs.true.57, %sw.bb
  %133 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id146 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %133, i32 0, i32 0
  %134 = load i32, i32* %drawable_id146, align 4
  %call147 = call i32 @gimp_drawable_has_alpha(i32 %134)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then.149, label %if.else.256

if.then.149:                                      ; preds = %if.else.145
  %135 = load i8*, i8** @render_frame.rawframe, align 8
  store i8* %135, i8** %srcptr, align 8
  %136 = load i32, i32* %rawy, align 4
  store i32 %136, i32* %j, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.202, %if.then.149
  %137 = load i32, i32* %j, align 4
  %138 = load i32, i32* @render_frame.rawheight, align 4
  %139 = load i32, i32* %rawy, align 4
  %add151 = add nsw i32 %138, %139
  %cmp152 = icmp slt i32 %137, %add151
  br i1 %cmp152, label %for.body.154, label %for.end.204

for.body.154:                                     ; preds = %for.cond.150
  %140 = load i32, i32* %rawx, align 4
  store i32 %140, i32* %i, align 4
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.199, %for.body.154
  %141 = load i32, i32* %i, align 4
  %142 = load i32, i32* @render_frame.rawwidth, align 4
  %143 = load i32, i32* %rawx, align 4
  %add156 = add nsw i32 %142, %143
  %cmp157 = icmp slt i32 %141, %add156
  br i1 %cmp157, label %for.body.159, label %for.end.201

for.body.159:                                     ; preds = %for.cond.155
  %144 = load i32, i32* %i, align 4
  %cmp160 = icmp sge i32 %144, 0
  br i1 %cmp160, label %land.lhs.true.162, label %if.end.197

land.lhs.true.162:                                ; preds = %for.body.159
  %145 = load i32, i32* %i, align 4
  %146 = load i32, i32* @width, align 4
  %cmp163 = icmp ult i32 %145, %146
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.197

land.lhs.true.165:                                ; preds = %land.lhs.true.162
  %147 = load i32, i32* %j, align 4
  %cmp166 = icmp sge i32 %147, 0
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.197

land.lhs.true.168:                                ; preds = %land.lhs.true.165
  %148 = load i32, i32* %j, align 4
  %149 = load i32, i32* @height, align 4
  %cmp169 = icmp ult i32 %148, %149
  br i1 %cmp169, label %if.then.171, label %if.end.197

if.then.171:                                      ; preds = %land.lhs.true.168
  %150 = load i8*, i8** %srcptr, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %150, i64 3
  %151 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %151 to i32
  %and174 = and i32 %conv173, 128
  %tobool175 = icmp ne i32 %and174, 0
  br i1 %tobool175, label %if.then.176, label %if.end.196

if.then.176:                                      ; preds = %if.then.171
  %152 = load i8*, i8** %srcptr, align 8
  %153 = load i8, i8* %152, align 1
  %154 = load i32, i32* %j, align 4
  %155 = load i32, i32* @width, align 4
  %mul177 = mul i32 %154, %155
  %156 = load i32, i32* %i, align 4
  %add178 = add i32 %mul177, %156
  %mul179 = mul i32 %add178, 3
  %idxprom180 = zext i32 %mul179 to i64
  %157 = load i8*, i8** @preview_data, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %157, i64 %idxprom180
  store i8 %153, i8* %arrayidx181, align 1
  %158 = load i8*, i8** %srcptr, align 8
  %add.ptr182 = getelementptr inbounds i8, i8* %158, i64 1
  %159 = load i8, i8* %add.ptr182, align 1
  %160 = load i32, i32* %j, align 4
  %161 = load i32, i32* @width, align 4
  %mul183 = mul i32 %160, %161
  %162 = load i32, i32* %i, align 4
  %add184 = add i32 %mul183, %162
  %mul185 = mul i32 %add184, 3
  %add186 = add i32 %mul185, 1
  %idxprom187 = zext i32 %add186 to i64
  %163 = load i8*, i8** @preview_data, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %163, i64 %idxprom187
  store i8 %159, i8* %arrayidx188, align 1
  %164 = load i8*, i8** %srcptr, align 8
  %add.ptr189 = getelementptr inbounds i8, i8* %164, i64 2
  %165 = load i8, i8* %add.ptr189, align 1
  %166 = load i32, i32* %j, align 4
  %167 = load i32, i32* @width, align 4
  %mul190 = mul i32 %166, %167
  %168 = load i32, i32* %i, align 4
  %add191 = add i32 %mul190, %168
  %mul192 = mul i32 %add191, 3
  %add193 = add i32 %mul192, 2
  %idxprom194 = zext i32 %add193 to i64
  %169 = load i8*, i8** @preview_data, align 8
  %arrayidx195 = getelementptr inbounds i8, i8* %169, i64 %idxprom194
  store i8 %165, i8* %arrayidx195, align 1
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.176, %if.then.171
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %land.lhs.true.168, %land.lhs.true.165, %land.lhs.true.162, %for.body.159
  %170 = load i8*, i8** %srcptr, align 8
  %add.ptr198 = getelementptr inbounds i8, i8* %170, i64 4
  store i8* %add.ptr198, i8** %srcptr, align 8
  br label %for.inc.199

for.inc.199:                                      ; preds = %if.end.197
  %171 = load i32, i32* %i, align 4
  %inc200 = add nsw i32 %171, 1
  store i32 %inc200, i32* %i, align 4
  br label %for.cond.155

for.end.201:                                      ; preds = %for.cond.155
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.end.201
  %172 = load i32, i32* %j, align 4
  %inc203 = add nsw i32 %172, 1
  store i32 %inc203, i32* %j, align 4
  br label %for.cond.150

for.end.204:                                      ; preds = %for.cond.150
  %173 = load i32, i32* @detached, align 4
  %tobool205 = icmp ne i32 %173, 0
  br i1 %tobool205, label %if.then.206, label %if.end.255

if.then.206:                                      ; preds = %for.end.204
  %174 = load i8*, i8** @render_frame.rawframe, align 8
  %add.ptr207 = getelementptr inbounds i8, i8* %174, i64 3
  store i8* %add.ptr207, i8** %srcptr, align 8
  %175 = load i32, i32* %rawy, align 4
  store i32 %175, i32* %j, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.252, %if.then.206
  %176 = load i32, i32* %j, align 4
  %177 = load i32, i32* @render_frame.rawheight, align 4
  %178 = load i32, i32* %rawy, align 4
  %add209 = add nsw i32 %177, %178
  %cmp210 = icmp slt i32 %176, %add209
  br i1 %cmp210, label %for.body.212, label %for.end.254

for.body.212:                                     ; preds = %for.cond.208
  %179 = load i32, i32* %j, align 4
  %180 = load i32, i32* @width, align 4
  %add213 = add i32 %180, 7
  %div214 = udiv i32 %add213, 8
  %mul215 = mul i32 %179, %div214
  store i32 %mul215, i32* %k, align 4
  %181 = load i32, i32* %rawx, align 4
  store i32 %181, i32* %i, align 4
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.249, %for.body.212
  %182 = load i32, i32* %i, align 4
  %183 = load i32, i32* @render_frame.rawwidth, align 4
  %184 = load i32, i32* %rawx, align 4
  %add217 = add nsw i32 %183, %184
  %cmp218 = icmp slt i32 %182, %add217
  br i1 %cmp218, label %for.body.220, label %for.end.251

for.body.220:                                     ; preds = %for.cond.216
  %185 = load i32, i32* %i, align 4
  %cmp221 = icmp sge i32 %185, 0
  br i1 %cmp221, label %land.lhs.true.223, label %if.end.247

land.lhs.true.223:                                ; preds = %for.body.220
  %186 = load i32, i32* %i, align 4
  %187 = load i32, i32* @width, align 4
  %cmp224 = icmp ult i32 %186, %187
  br i1 %cmp224, label %land.lhs.true.226, label %if.end.247

land.lhs.true.226:                                ; preds = %land.lhs.true.223
  %188 = load i32, i32* %j, align 4
  %cmp227 = icmp sge i32 %188, 0
  br i1 %cmp227, label %land.lhs.true.229, label %if.end.247

land.lhs.true.229:                                ; preds = %land.lhs.true.226
  %189 = load i32, i32* %j, align 4
  %190 = load i32, i32* @height, align 4
  %cmp230 = icmp ult i32 %189, %190
  br i1 %cmp230, label %if.then.232, label %if.end.247

if.then.232:                                      ; preds = %land.lhs.true.229
  %191 = load i8*, i8** %srcptr, align 8
  %192 = load i8, i8* %191, align 1
  %conv233 = zext i8 %192 to i32
  %and234 = and i32 %conv233, 128
  %tobool235 = icmp ne i32 %and234, 0
  br i1 %tobool235, label %if.then.236, label %if.end.246

if.then.236:                                      ; preds = %if.then.232
  %193 = load i32, i32* %i, align 4
  %and237 = and i32 %193, 7
  %shl238 = shl i32 1, %and237
  %194 = load i32, i32* %k, align 4
  %195 = load i32, i32* %i, align 4
  %div239 = sdiv i32 %195, 8
  %add240 = add nsw i32 %194, %div239
  %idxprom241 = sext i32 %add240 to i64
  %196 = load i8*, i8** @shape_preview_mask, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %196, i64 %idxprom241
  %197 = load i8, i8* %arrayidx242, align 1
  %conv243 = sext i8 %197 to i32
  %or244 = or i32 %conv243, %shl238
  %conv245 = trunc i32 %or244 to i8
  store i8 %conv245, i8* %arrayidx242, align 1
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.236, %if.then.232
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %land.lhs.true.229, %land.lhs.true.226, %land.lhs.true.223, %for.body.220
  %198 = load i8*, i8** %srcptr, align 8
  %add.ptr248 = getelementptr inbounds i8, i8* %198, i64 4
  store i8* %add.ptr248, i8** %srcptr, align 8
  br label %for.inc.249

for.inc.249:                                      ; preds = %if.end.247
  %199 = load i32, i32* %i, align 4
  %inc250 = add nsw i32 %199, 1
  store i32 %inc250, i32* %i, align 4
  br label %for.cond.216

for.end.251:                                      ; preds = %for.cond.216
  br label %for.inc.252

for.inc.252:                                      ; preds = %for.end.251
  %200 = load i32, i32* %j, align 4
  %inc253 = add nsw i32 %200, 1
  store i32 %inc253, i32* %j, align 4
  br label %for.cond.208

for.end.254:                                      ; preds = %for.cond.208
  br label %if.end.255

if.end.255:                                       ; preds = %for.end.254, %for.end.204
  br label %if.end.306

if.else.256:                                      ; preds = %if.else.145
  %201 = load i8*, i8** @render_frame.rawframe, align 8
  store i8* %201, i8** %srcptr, align 8
  %202 = load i32, i32* %rawy, align 4
  store i32 %202, i32* %j, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.303, %if.else.256
  %203 = load i32, i32* %j, align 4
  %204 = load i32, i32* @render_frame.rawheight, align 4
  %205 = load i32, i32* %rawy, align 4
  %add258 = add nsw i32 %204, %205
  %cmp259 = icmp slt i32 %203, %add258
  br i1 %cmp259, label %for.body.261, label %for.end.305

for.body.261:                                     ; preds = %for.cond.257
  %206 = load i32, i32* %rawx, align 4
  store i32 %206, i32* %i, align 4
  br label %for.cond.262

for.cond.262:                                     ; preds = %for.inc.300, %for.body.261
  %207 = load i32, i32* %i, align 4
  %208 = load i32, i32* @render_frame.rawwidth, align 4
  %209 = load i32, i32* %rawx, align 4
  %add263 = add nsw i32 %208, %209
  %cmp264 = icmp slt i32 %207, %add263
  br i1 %cmp264, label %for.body.266, label %for.end.302

for.body.266:                                     ; preds = %for.cond.262
  %210 = load i32, i32* %i, align 4
  %cmp267 = icmp sge i32 %210, 0
  br i1 %cmp267, label %land.lhs.true.269, label %if.end.298

land.lhs.true.269:                                ; preds = %for.body.266
  %211 = load i32, i32* %i, align 4
  %212 = load i32, i32* @width, align 4
  %cmp270 = icmp ult i32 %211, %212
  br i1 %cmp270, label %land.lhs.true.272, label %if.end.298

land.lhs.true.272:                                ; preds = %land.lhs.true.269
  %213 = load i32, i32* %j, align 4
  %cmp273 = icmp sge i32 %213, 0
  br i1 %cmp273, label %land.lhs.true.275, label %if.end.298

land.lhs.true.275:                                ; preds = %land.lhs.true.272
  %214 = load i32, i32* %j, align 4
  %215 = load i32, i32* @height, align 4
  %cmp276 = icmp ult i32 %214, %215
  br i1 %cmp276, label %if.then.278, label %if.end.298

if.then.278:                                      ; preds = %land.lhs.true.275
  %216 = load i8*, i8** %srcptr, align 8
  %217 = load i8, i8* %216, align 1
  %218 = load i32, i32* %j, align 4
  %219 = load i32, i32* @width, align 4
  %mul279 = mul i32 %218, %219
  %220 = load i32, i32* %i, align 4
  %add280 = add i32 %mul279, %220
  %mul281 = mul i32 %add280, 3
  %idxprom282 = zext i32 %mul281 to i64
  %221 = load i8*, i8** @preview_data, align 8
  %arrayidx283 = getelementptr inbounds i8, i8* %221, i64 %idxprom282
  store i8 %217, i8* %arrayidx283, align 1
  %222 = load i8*, i8** %srcptr, align 8
  %add.ptr284 = getelementptr inbounds i8, i8* %222, i64 1
  %223 = load i8, i8* %add.ptr284, align 1
  %224 = load i32, i32* %j, align 4
  %225 = load i32, i32* @width, align 4
  %mul285 = mul i32 %224, %225
  %226 = load i32, i32* %i, align 4
  %add286 = add i32 %mul285, %226
  %mul287 = mul i32 %add286, 3
  %add288 = add i32 %mul287, 1
  %idxprom289 = zext i32 %add288 to i64
  %227 = load i8*, i8** @preview_data, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %227, i64 %idxprom289
  store i8 %223, i8* %arrayidx290, align 1
  %228 = load i8*, i8** %srcptr, align 8
  %add.ptr291 = getelementptr inbounds i8, i8* %228, i64 2
  %229 = load i8, i8* %add.ptr291, align 1
  %230 = load i32, i32* %j, align 4
  %231 = load i32, i32* @width, align 4
  %mul292 = mul i32 %230, %231
  %232 = load i32, i32* %i, align 4
  %add293 = add i32 %mul292, %232
  %mul294 = mul i32 %add293, 3
  %add295 = add i32 %mul294, 2
  %idxprom296 = zext i32 %add295 to i64
  %233 = load i8*, i8** @preview_data, align 8
  %arrayidx297 = getelementptr inbounds i8, i8* %233, i64 %idxprom296
  store i8 %229, i8* %arrayidx297, align 1
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.278, %land.lhs.true.275, %land.lhs.true.272, %land.lhs.true.269, %for.body.266
  %234 = load i8*, i8** %srcptr, align 8
  %add.ptr299 = getelementptr inbounds i8, i8* %234, i64 3
  store i8* %add.ptr299, i8** %srcptr, align 8
  br label %for.inc.300

for.inc.300:                                      ; preds = %if.end.298
  %235 = load i32, i32* %i, align 4
  %inc301 = add nsw i32 %235, 1
  store i32 %inc301, i32* %i, align 4
  br label %for.cond.262

for.end.302:                                      ; preds = %for.cond.262
  br label %for.inc.303

for.inc.303:                                      ; preds = %for.end.302
  %236 = load i32, i32* %j, align 4
  %inc304 = add nsw i32 %236, 1
  store i32 %inc304, i32* %j, align 4
  br label %for.cond.257

for.end.305:                                      ; preds = %for.cond.257
  br label %if.end.306

if.end.306:                                       ; preds = %for.end.305, %if.end.255
  %237 = load i32, i32* @detached, align 4
  %tobool307 = icmp ne i32 %237, 0
  br i1 %tobool307, label %if.then.308, label %if.else.344

if.then.308:                                      ; preds = %if.end.306
  %238 = load i32, i32* %dispose, align 4
  %cmp309 = icmp ne i32 %238, 2
  br i1 %cmp309, label %land.lhs.true.311, label %if.else.336

land.lhs.true.311:                                ; preds = %if.then.308
  %239 = load i32, i32* %whichframe.addr, align 4
  %cmp312 = icmp ne i32 %239, 0
  br i1 %cmp312, label %if.then.314, label %if.else.336

if.then.314:                                      ; preds = %land.lhs.true.311
  %240 = load i32, i32* %rawy, align 4
  %cmp315 = icmp sgt i32 %240, 0
  br i1 %cmp315, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.314
  %241 = load i32, i32* %rawy, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.314
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond317 = phi i32 [ %241, %cond.true ], [ 0, %cond.false ]
  store i32 %cond317, i32* %top, align 4
  %242 = load i32, i32* %rawy, align 4
  %243 = load i32, i32* @render_frame.rawheight, align 4
  %add318 = add nsw i32 %242, %243
  %244 = load i32, i32* @height, align 4
  %cmp319 = icmp ult i32 %add318, %244
  br i1 %cmp319, label %cond.true.321, label %cond.false.323

cond.true.321:                                    ; preds = %cond.end
  %245 = load i32, i32* %rawy, align 4
  %246 = load i32, i32* @render_frame.rawheight, align 4
  %add322 = add nsw i32 %245, %246
  br label %cond.end.324

cond.false.323:                                   ; preds = %cond.end
  %247 = load i32, i32* @height, align 4
  br label %cond.end.324

cond.end.324:                                     ; preds = %cond.false.323, %cond.true.321
  %cond325 = phi i32 [ %add322, %cond.true.321 ], [ %247, %cond.false.323 ]
  store i32 %cond325, i32* %bottom, align 4
  %248 = load i8*, i8** @shape_preview_mask, align 8
  call void @reshape_from_bitmap(i8* %248)
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_drawing_area, align 8
  %call326 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %249)
  %250 = load %struct._GtkStyle*, %struct._GtkStyle** %shape_style, align 8
  %white_gc327 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %250, i32 0, i32 23
  %251 = load %struct._GdkGC*, %struct._GdkGC** %white_gc327, align 8
  %252 = load i32, i32* %top, align 4
  %253 = load i32, i32* @width, align 4
  %254 = load i32, i32* %bottom, align 4
  %255 = load i32, i32* %top, align 4
  %sub328 = sub nsw i32 %254, %255
  %256 = load i32, i32* @total_frames, align 4
  %cmp329 = icmp eq i32 %256, 1
  %cond331 = select i1 %cmp329, i32 2, i32 1
  %257 = load i8*, i8** @preview_data, align 8
  %258 = load i32, i32* %top, align 4
  %mul332 = mul nsw i32 3, %258
  %259 = load i32, i32* @width, align 4
  %mul333 = mul i32 %mul332, %259
  %idx.ext = zext i32 %mul333 to i64
  %add.ptr334 = getelementptr inbounds i8, i8* %257, i64 %idx.ext
  %260 = load i32, i32* @width, align 4
  %mul335 = mul i32 %260, 3
  call void @gdk_draw_rgb_image(%struct._GdkDrawable* %call326, %struct._GdkGC* %251, i32 0, i32 %252, i32 %253, i32 %sub328, i32 %cond331, i8* %add.ptr334, i32 %mul335)
  br label %if.end.343

if.else.336:                                      ; preds = %land.lhs.true.311, %if.then.308
  %261 = load i8*, i8** @shape_preview_mask, align 8
  call void @reshape_from_bitmap(i8* %261)
  %262 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_drawing_area, align 8
  %call337 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %262)
  %263 = load %struct._GtkStyle*, %struct._GtkStyle** %shape_style, align 8
  %white_gc338 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %263, i32 0, i32 23
  %264 = load %struct._GdkGC*, %struct._GdkGC** %white_gc338, align 8
  %265 = load i32, i32* @width, align 4
  %266 = load i32, i32* @height, align 4
  %267 = load i32, i32* @total_frames, align 4
  %cmp339 = icmp eq i32 %267, 1
  %cond341 = select i1 %cmp339, i32 2, i32 1
  %268 = load i8*, i8** @preview_data, align 8
  %269 = load i32, i32* @width, align 4
  %mul342 = mul i32 %269, 3
  call void @gdk_draw_rgb_image(%struct._GdkDrawable* %call337, %struct._GdkGC* %264, i32 0, i32 0, i32 %265, i32 %266, i32 %cond341, i8* %268, i32 %mul342)
  br label %if.end.343

if.end.343:                                       ; preds = %if.else.336, %cond.end.324
  br label %if.end.386

if.else.344:                                      ; preds = %if.end.306
  %270 = load i32, i32* %dispose, align 4
  %cmp345 = icmp ne i32 %270, 2
  br i1 %cmp345, label %land.lhs.true.347, label %if.else.378

land.lhs.true.347:                                ; preds = %if.else.344
  %271 = load i32, i32* %whichframe.addr, align 4
  %cmp348 = icmp ne i32 %271, 0
  br i1 %cmp348, label %if.then.350, label %if.else.378

if.then.350:                                      ; preds = %land.lhs.true.347
  %272 = load i32, i32* %rawy, align 4
  %cmp352 = icmp sgt i32 %272, 0
  br i1 %cmp352, label %cond.true.354, label %cond.false.355

cond.true.354:                                    ; preds = %if.then.350
  %273 = load i32, i32* %rawy, align 4
  br label %cond.end.356

cond.false.355:                                   ; preds = %if.then.350
  br label %cond.end.356

cond.end.356:                                     ; preds = %cond.false.355, %cond.true.354
  %cond357 = phi i32 [ %273, %cond.true.354 ], [ 0, %cond.false.355 ]
  store i32 %cond357, i32* %top351, align 4
  %274 = load i32, i32* %rawy, align 4
  %275 = load i32, i32* @render_frame.rawheight, align 4
  %add359 = add nsw i32 %274, %275
  %276 = load i32, i32* @height, align 4
  %cmp360 = icmp ult i32 %add359, %276
  br i1 %cmp360, label %cond.true.362, label %cond.false.364

cond.true.362:                                    ; preds = %cond.end.356
  %277 = load i32, i32* %rawy, align 4
  %278 = load i32, i32* @render_frame.rawheight, align 4
  %add363 = add nsw i32 %277, %278
  br label %cond.end.365

cond.false.364:                                   ; preds = %cond.end.356
  %279 = load i32, i32* @height, align 4
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.false.364, %cond.true.362
  %cond366 = phi i32 [ %add363, %cond.true.362 ], [ %279, %cond.false.364 ]
  store i32 %cond366, i32* %bottom358, align 4
  %280 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  %call367 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %280)
  %281 = load %struct._GtkStyle*, %struct._GtkStyle** %drawing_style, align 8
  %white_gc368 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %281, i32 0, i32 23
  %282 = load %struct._GdkGC*, %struct._GdkGC** %white_gc368, align 8
  %283 = load i32, i32* %top351, align 4
  %284 = load i32, i32* @width, align 4
  %285 = load i32, i32* %bottom358, align 4
  %286 = load i32, i32* %top351, align 4
  %sub369 = sub nsw i32 %285, %286
  %287 = load i32, i32* @total_frames, align 4
  %cmp370 = icmp eq i32 %287, 1
  %cond372 = select i1 %cmp370, i32 2, i32 1
  %288 = load i8*, i8** @preview_data, align 8
  %289 = load i32, i32* %top351, align 4
  %mul373 = mul nsw i32 3, %289
  %290 = load i32, i32* @width, align 4
  %mul374 = mul i32 %mul373, %290
  %idx.ext375 = zext i32 %mul374 to i64
  %add.ptr376 = getelementptr inbounds i8, i8* %288, i64 %idx.ext375
  %291 = load i32, i32* @width, align 4
  %mul377 = mul i32 %291, 3
  call void @gdk_draw_rgb_image(%struct._GdkDrawable* %call367, %struct._GdkGC* %282, i32 0, i32 %283, i32 %284, i32 %sub369, i32 %cond372, i8* %add.ptr376, i32 %mul377)
  br label %if.end.385

if.else.378:                                      ; preds = %land.lhs.true.347, %if.else.344
  %292 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  %call379 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %292)
  %293 = load %struct._GtkStyle*, %struct._GtkStyle** %drawing_style, align 8
  %white_gc380 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %293, i32 0, i32 23
  %294 = load %struct._GdkGC*, %struct._GdkGC** %white_gc380, align 8
  %295 = load i32, i32* @width, align 4
  %296 = load i32, i32* @height, align 4
  %297 = load i32, i32* @total_frames, align 4
  %cmp381 = icmp eq i32 %297, 1
  %cond383 = select i1 %cmp381, i32 2, i32 1
  %298 = load i8*, i8** @preview_data, align 8
  %299 = load i32, i32* @width, align 4
  %mul384 = mul i32 %299, 3
  call void @gdk_draw_rgb_image(%struct._GdkDrawable* %call379, %struct._GdkGC* %294, i32 0, i32 0, i32 %295, i32 %296, i32 %cond383, i8* %298, i32 %mul384)
  br label %if.end.385

if.end.385:                                       ; preds = %if.else.378, %cond.end.365
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.385, %if.end.343
  br label %if.end.387

if.end.387:                                       ; preds = %if.end.386, %if.end.144
  br label %sw.epilog

sw.bb.388:                                        ; preds = %if.end.44, %if.end.44
  %300 = load i32, i32* @render_frame.rawwidth, align 4
  %301 = load i32, i32* @width, align 4
  %cmp389 = icmp eq i32 %300, %301
  br i1 %cmp389, label %land.lhs.true.391, label %if.else.520

land.lhs.true.391:                                ; preds = %sw.bb.388
  %302 = load i32, i32* @render_frame.rawheight, align 4
  %303 = load i32, i32* @height, align 4
  %cmp392 = icmp eq i32 %302, %303
  br i1 %cmp392, label %land.lhs.true.394, label %if.else.520

land.lhs.true.394:                                ; preds = %land.lhs.true.391
  %304 = load i32, i32* %rawx, align 4
  %cmp395 = icmp eq i32 %304, 0
  br i1 %cmp395, label %land.lhs.true.397, label %if.else.520

land.lhs.true.397:                                ; preds = %land.lhs.true.394
  %305 = load i32, i32* %rawy, align 4
  %cmp398 = icmp eq i32 %305, 0
  br i1 %cmp398, label %if.then.400, label %if.else.520

if.then.400:                                      ; preds = %land.lhs.true.397
  %306 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id401 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %306, i32 0, i32 0
  %307 = load i32, i32* %drawable_id401, align 4
  %call402 = call i32 @gimp_drawable_has_alpha(i32 %307)
  %tobool403 = icmp ne i32 %call402, 0
  br i1 %tobool403, label %if.then.404, label %if.else.470

if.then.404:                                      ; preds = %if.then.400
  %308 = load i8*, i8** @preview_data, align 8
  store i8* %308, i8** %destptr, align 8
  %309 = load i8*, i8** @render_frame.rawframe, align 8
  store i8* %309, i8** %srcptr, align 8
  %310 = load i32, i32* @render_frame.rawwidth, align 4
  %311 = load i32, i32* @render_frame.rawheight, align 4
  %mul405 = mul nsw i32 %310, %311
  store i32 %mul405, i32* %i, align 4
  br label %while.cond.406

while.cond.406:                                   ; preds = %if.end.415, %if.then.412, %if.then.404
  %312 = load i32, i32* %i, align 4
  %dec407 = add nsw i32 %312, -1
  store i32 %dec407, i32* %i, align 4
  %tobool408 = icmp ne i32 %312, 0
  br i1 %tobool408, label %while.body.409, label %while.end.435

while.body.409:                                   ; preds = %while.cond.406
  %313 = load i8*, i8** %srcptr, align 8
  %arrayidx410 = getelementptr inbounds i8, i8* %313, i64 1
  %314 = load i8, i8* %arrayidx410, align 1
  %tobool411 = icmp ne i8 %314, 0
  br i1 %tobool411, label %if.end.415, label %if.then.412

if.then.412:                                      ; preds = %while.body.409
  %315 = load i8*, i8** %srcptr, align 8
  %add.ptr413 = getelementptr inbounds i8, i8* %315, i64 2
  store i8* %add.ptr413, i8** %srcptr, align 8
  %316 = load i8*, i8** %destptr, align 8
  %add.ptr414 = getelementptr inbounds i8, i8* %316, i64 3
  store i8* %add.ptr414, i8** %destptr, align 8
  br label %while.cond.406

if.end.415:                                       ; preds = %while.body.409
  %317 = load i8*, i8** %srcptr, align 8
  %318 = load i8, i8* %317, align 1
  %conv416 = zext i8 %318 to i32
  %mul417 = mul nsw i32 3, %conv416
  %add418 = add nsw i32 0, %mul417
  %idxprom419 = sext i32 %add418 to i64
  %319 = load i8*, i8** @palette, align 8
  %arrayidx420 = getelementptr inbounds i8, i8* %319, i64 %idxprom419
  %320 = load i8, i8* %arrayidx420, align 1
  %321 = load i8*, i8** %destptr, align 8
  %incdec.ptr421 = getelementptr inbounds i8, i8* %321, i32 1
  store i8* %incdec.ptr421, i8** %destptr, align 8
  store i8 %320, i8* %321, align 1
  %322 = load i8*, i8** %srcptr, align 8
  %323 = load i8, i8* %322, align 1
  %conv422 = zext i8 %323 to i32
  %mul423 = mul nsw i32 3, %conv422
  %add424 = add nsw i32 1, %mul423
  %idxprom425 = sext i32 %add424 to i64
  %324 = load i8*, i8** @palette, align 8
  %arrayidx426 = getelementptr inbounds i8, i8* %324, i64 %idxprom425
  %325 = load i8, i8* %arrayidx426, align 1
  %326 = load i8*, i8** %destptr, align 8
  %incdec.ptr427 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %incdec.ptr427, i8** %destptr, align 8
  store i8 %325, i8* %326, align 1
  %327 = load i8*, i8** %srcptr, align 8
  %328 = load i8, i8* %327, align 1
  %conv428 = zext i8 %328 to i32
  %mul429 = mul nsw i32 3, %conv428
  %add430 = add nsw i32 2, %mul429
  %idxprom431 = sext i32 %add430 to i64
  %329 = load i8*, i8** @palette, align 8
  %arrayidx432 = getelementptr inbounds i8, i8* %329, i64 %idxprom431
  %330 = load i8, i8* %arrayidx432, align 1
  %331 = load i8*, i8** %destptr, align 8
  %incdec.ptr433 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %incdec.ptr433, i8** %destptr, align 8
  store i8 %330, i8* %331, align 1
  %332 = load i8*, i8** %srcptr, align 8
  %add.ptr434 = getelementptr inbounds i8, i8* %332, i64 2
  store i8* %add.ptr434, i8** %srcptr, align 8
  br label %while.cond.406

while.end.435:                                    ; preds = %while.cond.406
  %333 = load i32, i32* @detached, align 4
  %tobool436 = icmp ne i32 %333, 0
  br i1 %tobool436, label %if.then.437, label %if.end.469

if.then.437:                                      ; preds = %while.end.435
  %334 = load i8*, i8** @render_frame.rawframe, align 8
  %add.ptr438 = getelementptr inbounds i8, i8* %334, i64 1
  store i8* %add.ptr438, i8** %srcptr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.439

for.cond.439:                                     ; preds = %for.inc.466, %if.then.437
  %335 = load i32, i32* %j, align 4
  %336 = load i32, i32* @render_frame.rawheight, align 4
  %cmp440 = icmp slt i32 %335, %336
  br i1 %cmp440, label %for.body.442, label %for.end.468

for.body.442:                                     ; preds = %for.cond.439
  %337 = load i32, i32* %j, align 4
  %338 = load i32, i32* @render_frame.rawwidth, align 4
  %add443 = add nsw i32 7, %338
  %div444 = sdiv i32 %add443, 8
  %mul445 = mul nsw i32 %337, %div444
  store i32 %mul445, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.446

for.cond.446:                                     ; preds = %for.inc.463, %for.body.442
  %339 = load i32, i32* %i, align 4
  %340 = load i32, i32* @render_frame.rawwidth, align 4
  %cmp447 = icmp slt i32 %339, %340
  br i1 %cmp447, label %for.body.449, label %for.end.465

for.body.449:                                     ; preds = %for.cond.446
  %341 = load i8*, i8** %srcptr, align 8
  %342 = load i8, i8* %341, align 1
  %tobool450 = icmp ne i8 %342, 0
  br i1 %tobool450, label %if.then.451, label %if.end.461

if.then.451:                                      ; preds = %for.body.449
  %343 = load i32, i32* %i, align 4
  %and452 = and i32 %343, 7
  %shl453 = shl i32 1, %and452
  %344 = load i32, i32* %k, align 4
  %345 = load i32, i32* %i, align 4
  %div454 = sdiv i32 %345, 8
  %add455 = add nsw i32 %344, %div454
  %idxprom456 = sext i32 %add455 to i64
  %346 = load i8*, i8** @shape_preview_mask, align 8
  %arrayidx457 = getelementptr inbounds i8, i8* %346, i64 %idxprom456
  %347 = load i8, i8* %arrayidx457, align 1
  %conv458 = sext i8 %347 to i32
  %or459 = or i32 %conv458, %shl453
  %conv460 = trunc i32 %or459 to i8
  store i8 %conv460, i8* %arrayidx457, align 1
  br label %if.end.461

if.end.461:                                       ; preds = %if.then.451, %for.body.449
  %348 = load i8*, i8** %srcptr, align 8
  %add.ptr462 = getelementptr inbounds i8, i8* %348, i64 2
  store i8* %add.ptr462, i8** %srcptr, align 8
  br label %for.inc.463

for.inc.463:                                      ; preds = %if.end.461
  %349 = load i32, i32* %i, align 4
  %inc464 = add nsw i32 %349, 1
  store i32 %inc464, i32* %i, align 4
  br label %for.cond.446

for.end.465:                                      ; preds = %for.cond.446
  br label %for.inc.466

for.inc.466:                                      ; preds = %for.end.465
  %350 = load i32, i32* %j, align 4
  %inc467 = add nsw i32 %350, 1
  store i32 %inc467, i32* %j, align 4
  br label %for.cond.439

for.end.468:                                      ; preds = %for.cond.439
  br label %if.end.469

if.end.469:                                       ; preds = %for.end.468, %while.end.435
  br label %if.end.503

if.else.470:                                      ; preds = %if.then.400
  %351 = load i8*, i8** @preview_data, align 8
  store i8* %351, i8** %destptr, align 8
  %352 = load i8*, i8** @render_frame.rawframe, align 8
  store i8* %352, i8** %srcptr, align 8
  %353 = load i32, i32* @render_frame.rawwidth, align 4
  %354 = load i32, i32* @render_frame.rawheight, align 4
  %mul471 = mul nsw i32 %353, %354
  store i32 %mul471, i32* %i, align 4
  br label %while.cond.472

while.cond.472:                                   ; preds = %while.body.475, %if.else.470
  %355 = load i32, i32* %i, align 4
  %dec473 = add nsw i32 %355, -1
  store i32 %dec473, i32* %i, align 4
  %tobool474 = icmp ne i32 %dec473, 0
  br i1 %tobool474, label %while.body.475, label %while.end.495

while.body.475:                                   ; preds = %while.cond.472
  %356 = load i8*, i8** %srcptr, align 8
  %357 = load i8, i8* %356, align 1
  %conv476 = zext i8 %357 to i32
  %mul477 = mul nsw i32 3, %conv476
  %add478 = add nsw i32 0, %mul477
  %idxprom479 = sext i32 %add478 to i64
  %358 = load i8*, i8** @palette, align 8
  %arrayidx480 = getelementptr inbounds i8, i8* %358, i64 %idxprom479
  %359 = load i8, i8* %arrayidx480, align 1
  %360 = load i8*, i8** %destptr, align 8
  %incdec.ptr481 = getelementptr inbounds i8, i8* %360, i32 1
  store i8* %incdec.ptr481, i8** %destptr, align 8
  store i8 %359, i8* %360, align 1
  %361 = load i8*, i8** %srcptr, align 8
  %362 = load i8, i8* %361, align 1
  %conv482 = zext i8 %362 to i32
  %mul483 = mul nsw i32 3, %conv482
  %add484 = add nsw i32 1, %mul483
  %idxprom485 = sext i32 %add484 to i64
  %363 = load i8*, i8** @palette, align 8
  %arrayidx486 = getelementptr inbounds i8, i8* %363, i64 %idxprom485
  %364 = load i8, i8* %arrayidx486, align 1
  %365 = load i8*, i8** %destptr, align 8
  %incdec.ptr487 = getelementptr inbounds i8, i8* %365, i32 1
  store i8* %incdec.ptr487, i8** %destptr, align 8
  store i8 %364, i8* %365, align 1
  %366 = load i8*, i8** %srcptr, align 8
  %367 = load i8, i8* %366, align 1
  %conv488 = zext i8 %367 to i32
  %mul489 = mul nsw i32 3, %conv488
  %add490 = add nsw i32 2, %mul489
  %idxprom491 = sext i32 %add490 to i64
  %368 = load i8*, i8** @palette, align 8
  %arrayidx492 = getelementptr inbounds i8, i8* %368, i64 %idxprom491
  %369 = load i8, i8* %arrayidx492, align 1
  %370 = load i8*, i8** %destptr, align 8
  %incdec.ptr493 = getelementptr inbounds i8, i8* %370, i32 1
  store i8* %incdec.ptr493, i8** %destptr, align 8
  store i8 %369, i8* %370, align 1
  %371 = load i8*, i8** %srcptr, align 8
  %incdec.ptr494 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %incdec.ptr494, i8** %srcptr, align 8
  br label %while.cond.472

while.end.495:                                    ; preds = %while.cond.472
  %372 = load i32, i32* @detached, align 4
  %tobool496 = icmp ne i32 %372, 0
  br i1 %tobool496, label %if.then.497, label %if.end.502

if.then.497:                                      ; preds = %while.end.495
  %373 = load i8*, i8** @shape_preview_mask, align 8
  %374 = load i32, i32* @render_frame.rawwidth, align 4
  %375 = load i32, i32* @render_frame.rawheight, align 4
  %mul498 = mul nsw i32 %374, %375
  %div499 = sdiv i32 %mul498, 8
  %376 = load i32, i32* @render_frame.rawheight, align 4
  %add500 = add nsw i32 %div499, %376
  %conv501 = sext i32 %add500 to i64
  call void @llvm.memset.p0i8.i64(i8* %373, i8 -1, i64 %conv501, i32 1, i1 false)
  br label %if.end.502

if.end.502:                                       ; preds = %if.then.497, %while.end.495
  br label %if.end.503

if.end.503:                                       ; preds = %if.end.502, %if.end.469
  %377 = load i32, i32* @detached, align 4
  %tobool504 = icmp ne i32 %377, 0
  br i1 %tobool504, label %if.then.505, label %if.else.512

if.then.505:                                      ; preds = %if.end.503
  %378 = load i8*, i8** @shape_preview_mask, align 8
  call void @reshape_from_bitmap(i8* %378)
  %379 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_drawing_area, align 8
  %call506 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %379)
  %380 = load %struct._GtkStyle*, %struct._GtkStyle** %shape_style, align 8
  %white_gc507 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %380, i32 0, i32 23
  %381 = load %struct._GdkGC*, %struct._GdkGC** %white_gc507, align 8
  %382 = load i32, i32* @width, align 4
  %383 = load i32, i32* @height, align 4
  %384 = load i32, i32* @total_frames, align 4
  %cmp508 = icmp eq i32 %384, 1
  %cond510 = select i1 %cmp508, i32 2, i32 1
  %385 = load i8*, i8** @preview_data, align 8
  %386 = load i32, i32* @width, align 4
  %mul511 = mul i32 %386, 3
  call void @gdk_draw_rgb_image(%struct._GdkDrawable* %call506, %struct._GdkGC* %381, i32 0, i32 0, i32 %382, i32 %383, i32 %cond510, i8* %385, i32 %mul511)
  br label %if.end.519

if.else.512:                                      ; preds = %if.end.503
  %387 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  %call513 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %387)
  %388 = load %struct._GtkStyle*, %struct._GtkStyle** %drawing_style, align 8
  %white_gc514 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %388, i32 0, i32 23
  %389 = load %struct._GdkGC*, %struct._GdkGC** %white_gc514, align 8
  %390 = load i32, i32* @width, align 4
  %391 = load i32, i32* @height, align 4
  %392 = load i32, i32* @total_frames, align 4
  %cmp515 = icmp eq i32 %392, 1
  %cond517 = select i1 %cmp515, i32 2, i32 1
  %393 = load i8*, i8** @preview_data, align 8
  %394 = load i32, i32* @width, align 4
  %mul518 = mul i32 %394, 3
  call void @gdk_draw_rgb_image(%struct._GdkDrawable* %call513, %struct._GdkGC* %389, i32 0, i32 0, i32 %390, i32 %391, i32 %cond517, i8* %393, i32 %mul518)
  br label %if.end.519

if.end.519:                                       ; preds = %if.else.512, %if.then.505
  br label %if.end.792

if.else.520:                                      ; preds = %land.lhs.true.397, %land.lhs.true.394, %land.lhs.true.391, %sw.bb.388
  %395 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id521 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %395, i32 0, i32 0
  %396 = load i32, i32* %drawable_id521, align 4
  %call522 = call i32 @gimp_drawable_has_alpha(i32 %396)
  %tobool523 = icmp ne i32 %call522, 0
  br i1 %tobool523, label %if.then.524, label %if.else.641

if.then.524:                                      ; preds = %if.else.520
  %397 = load i8*, i8** @render_frame.rawframe, align 8
  store i8* %397, i8** %srcptr, align 8
  %398 = load i32, i32* %rawy, align 4
  store i32 %398, i32* %j, align 4
  br label %for.cond.525

for.cond.525:                                     ; preds = %for.inc.589, %if.then.524
  %399 = load i32, i32* %j, align 4
  %400 = load i32, i32* @render_frame.rawheight, align 4
  %401 = load i32, i32* %rawy, align 4
  %add526 = add nsw i32 %400, %401
  %cmp527 = icmp slt i32 %399, %add526
  br i1 %cmp527, label %for.body.529, label %for.end.591

for.body.529:                                     ; preds = %for.cond.525
  %402 = load i32, i32* %rawx, align 4
  store i32 %402, i32* %i, align 4
  br label %for.cond.530

for.cond.530:                                     ; preds = %for.inc.586, %for.body.529
  %403 = load i32, i32* %i, align 4
  %404 = load i32, i32* @render_frame.rawwidth, align 4
  %405 = load i32, i32* %rawx, align 4
  %add531 = add nsw i32 %404, %405
  %cmp532 = icmp slt i32 %403, %add531
  br i1 %cmp532, label %for.body.534, label %for.end.588

for.body.534:                                     ; preds = %for.cond.530
  %406 = load i32, i32* %i, align 4
  %cmp535 = icmp sge i32 %406, 0
  br i1 %cmp535, label %land.lhs.true.537, label %if.end.584

land.lhs.true.537:                                ; preds = %for.body.534
  %407 = load i32, i32* %i, align 4
  %408 = load i32, i32* @width, align 4
  %cmp538 = icmp ult i32 %407, %408
  br i1 %cmp538, label %land.lhs.true.540, label %if.end.584

land.lhs.true.540:                                ; preds = %land.lhs.true.537
  %409 = load i32, i32* %j, align 4
  %cmp541 = icmp sge i32 %409, 0
  br i1 %cmp541, label %land.lhs.true.543, label %if.end.584

land.lhs.true.543:                                ; preds = %land.lhs.true.540
  %410 = load i32, i32* %j, align 4
  %411 = load i32, i32* @height, align 4
  %cmp544 = icmp ult i32 %410, %411
  br i1 %cmp544, label %if.then.546, label %if.end.584

if.then.546:                                      ; preds = %land.lhs.true.543
  %412 = load i8*, i8** %srcptr, align 8
  %add.ptr547 = getelementptr inbounds i8, i8* %412, i64 1
  %413 = load i8, i8* %add.ptr547, align 1
  %tobool548 = icmp ne i8 %413, 0
  br i1 %tobool548, label %if.then.549, label %if.end.583

if.then.549:                                      ; preds = %if.then.546
  %414 = load i8*, i8** %srcptr, align 8
  %415 = load i8, i8* %414, align 1
  %conv550 = zext i8 %415 to i32
  %mul551 = mul nsw i32 3, %conv550
  %add552 = add nsw i32 0, %mul551
  %idxprom553 = sext i32 %add552 to i64
  %416 = load i8*, i8** @palette, align 8
  %arrayidx554 = getelementptr inbounds i8, i8* %416, i64 %idxprom553
  %417 = load i8, i8* %arrayidx554, align 1
  %418 = load i32, i32* %j, align 4
  %419 = load i32, i32* @width, align 4
  %mul555 = mul i32 %418, %419
  %420 = load i32, i32* %i, align 4
  %add556 = add i32 %mul555, %420
  %mul557 = mul i32 %add556, 3
  %add558 = add i32 %mul557, 0
  %idxprom559 = zext i32 %add558 to i64
  %421 = load i8*, i8** @preview_data, align 8
  %arrayidx560 = getelementptr inbounds i8, i8* %421, i64 %idxprom559
  store i8 %417, i8* %arrayidx560, align 1
  %422 = load i8*, i8** %srcptr, align 8
  %423 = load i8, i8* %422, align 1
  %conv561 = zext i8 %423 to i32
  %mul562 = mul nsw i32 3, %conv561
  %add563 = add nsw i32 1, %mul562
  %idxprom564 = sext i32 %add563 to i64
  %424 = load i8*, i8** @palette, align 8
  %arrayidx565 = getelementptr inbounds i8, i8* %424, i64 %idxprom564
  %425 = load i8, i8* %arrayidx565, align 1
  %426 = load i32, i32* %j, align 4
  %427 = load i32, i32* @width, align 4
  %mul566 = mul i32 %426, %427
  %428 = load i32, i32* %i, align 4
  %add567 = add i32 %mul566, %428
  %mul568 = mul i32 %add567, 3
  %add569 = add i32 %mul568, 1
  %idxprom570 = zext i32 %add569 to i64
  %429 = load i8*, i8** @preview_data, align 8
  %arrayidx571 = getelementptr inbounds i8, i8* %429, i64 %idxprom570
  store i8 %425, i8* %arrayidx571, align 1
  %430 = load i8*, i8** %srcptr, align 8
  %431 = load i8, i8* %430, align 1
  %conv572 = zext i8 %431 to i32
  %mul573 = mul nsw i32 3, %conv572
  %add574 = add nsw i32 2, %mul573
  %idxprom575 = sext i32 %add574 to i64
  %432 = load i8*, i8** @palette, align 8
  %arrayidx576 = getelementptr inbounds i8, i8* %432, i64 %idxprom575
  %433 = load i8, i8* %arrayidx576, align 1
  %434 = load i32, i32* %j, align 4
  %435 = load i32, i32* @width, align 4
  %mul577 = mul i32 %434, %435
  %436 = load i32, i32* %i, align 4
  %add578 = add i32 %mul577, %436
  %mul579 = mul i32 %add578, 3
  %add580 = add i32 %mul579, 2
  %idxprom581 = zext i32 %add580 to i64
  %437 = load i8*, i8** @preview_data, align 8
  %arrayidx582 = getelementptr inbounds i8, i8* %437, i64 %idxprom581
  store i8 %433, i8* %arrayidx582, align 1
  br label %if.end.583

if.end.583:                                       ; preds = %if.then.549, %if.then.546
  br label %if.end.584

if.end.584:                                       ; preds = %if.end.583, %land.lhs.true.543, %land.lhs.true.540, %land.lhs.true.537, %for.body.534
  %438 = load i8*, i8** %srcptr, align 8
  %add.ptr585 = getelementptr inbounds i8, i8* %438, i64 2
  store i8* %add.ptr585, i8** %srcptr, align 8
  br label %for.inc.586

for.inc.586:                                      ; preds = %if.end.584
  %439 = load i32, i32* %i, align 4
  %inc587 = add nsw i32 %439, 1
  store i32 %inc587, i32* %i, align 4
  br label %for.cond.530

for.end.588:                                      ; preds = %for.cond.530
  br label %for.inc.589

for.inc.589:                                      ; preds = %for.end.588
  %440 = load i32, i32* %j, align 4
  %inc590 = add nsw i32 %440, 1
  store i32 %inc590, i32* %j, align 4
  br label %for.cond.525

for.end.591:                                      ; preds = %for.cond.525
  %441 = load i32, i32* @detached, align 4
  %tobool592 = icmp ne i32 %441, 0
  br i1 %tobool592, label %if.then.593, label %if.end.640

if.then.593:                                      ; preds = %for.end.591
  %442 = load i8*, i8** @render_frame.rawframe, align 8
  %add.ptr594 = getelementptr inbounds i8, i8* %442, i64 1
  store i8* %add.ptr594, i8** %srcptr, align 8
  %443 = load i32, i32* %rawy, align 4
  store i32 %443, i32* %j, align 4
  br label %for.cond.595

for.cond.595:                                     ; preds = %for.inc.637, %if.then.593
  %444 = load i32, i32* %j, align 4
  %445 = load i32, i32* @render_frame.rawheight, align 4
  %446 = load i32, i32* %rawy, align 4
  %add596 = add nsw i32 %445, %446
  %cmp597 = icmp slt i32 %444, %add596
  br i1 %cmp597, label %for.body.599, label %for.end.639

for.body.599:                                     ; preds = %for.cond.595
  %447 = load i32, i32* %j, align 4
  %448 = load i32, i32* @width, align 4
  %add600 = add i32 %448, 7
  %div601 = udiv i32 %add600, 8
  %mul602 = mul i32 %447, %div601
  store i32 %mul602, i32* %k, align 4
  %449 = load i32, i32* %rawx, align 4
  store i32 %449, i32* %i, align 4
  br label %for.cond.603

for.cond.603:                                     ; preds = %for.inc.634, %for.body.599
  %450 = load i32, i32* %i, align 4
  %451 = load i32, i32* @render_frame.rawwidth, align 4
  %452 = load i32, i32* %rawx, align 4
  %add604 = add nsw i32 %451, %452
  %cmp605 = icmp slt i32 %450, %add604
  br i1 %cmp605, label %for.body.607, label %for.end.636

for.body.607:                                     ; preds = %for.cond.603
  %453 = load i32, i32* %i, align 4
  %cmp608 = icmp sge i32 %453, 0
  br i1 %cmp608, label %land.lhs.true.610, label %if.end.632

land.lhs.true.610:                                ; preds = %for.body.607
  %454 = load i32, i32* %i, align 4
  %455 = load i32, i32* @width, align 4
  %cmp611 = icmp ult i32 %454, %455
  br i1 %cmp611, label %land.lhs.true.613, label %if.end.632

land.lhs.true.613:                                ; preds = %land.lhs.true.610
  %456 = load i32, i32* %j, align 4
  %cmp614 = icmp sge i32 %456, 0
  br i1 %cmp614, label %land.lhs.true.616, label %if.end.632

land.lhs.true.616:                                ; preds = %land.lhs.true.613
  %457 = load i32, i32* %j, align 4
  %458 = load i32, i32* @height, align 4
  %cmp617 = icmp ult i32 %457, %458
  br i1 %cmp617, label %if.then.619, label %if.end.632

if.then.619:                                      ; preds = %land.lhs.true.616
  %459 = load i8*, i8** %srcptr, align 8
  %460 = load i8, i8* %459, align 1
  %tobool620 = icmp ne i8 %460, 0
  br i1 %tobool620, label %if.then.621, label %if.end.631

if.then.621:                                      ; preds = %if.then.619
  %461 = load i32, i32* %i, align 4
  %and622 = and i32 %461, 7
  %shl623 = shl i32 1, %and622
  %462 = load i32, i32* %k, align 4
  %463 = load i32, i32* %i, align 4
  %div624 = sdiv i32 %463, 8
  %add625 = add nsw i32 %462, %div624
  %idxprom626 = sext i32 %add625 to i64
  %464 = load i8*, i8** @shape_preview_mask, align 8
  %arrayidx627 = getelementptr inbounds i8, i8* %464, i64 %idxprom626
  %465 = load i8, i8* %arrayidx627, align 1
  %conv628 = sext i8 %465 to i32
  %or629 = or i32 %conv628, %shl623
  %conv630 = trunc i32 %or629 to i8
  store i8 %conv630, i8* %arrayidx627, align 1
  br label %if.end.631

if.end.631:                                       ; preds = %if.then.621, %if.then.619
  br label %if.end.632

if.end.632:                                       ; preds = %if.end.631, %land.lhs.true.616, %land.lhs.true.613, %land.lhs.true.610, %for.body.607
  %466 = load i8*, i8** %srcptr, align 8
  %add.ptr633 = getelementptr inbounds i8, i8* %466, i64 2
  store i8* %add.ptr633, i8** %srcptr, align 8
  br label %for.inc.634

for.inc.634:                                      ; preds = %if.end.632
  %467 = load i32, i32* %i, align 4
  %inc635 = add nsw i32 %467, 1
  store i32 %inc635, i32* %i, align 4
  br label %for.cond.603

for.end.636:                                      ; preds = %for.cond.603
  br label %for.inc.637

for.inc.637:                                      ; preds = %for.end.636
  %468 = load i32, i32* %j, align 4
  %inc638 = add nsw i32 %468, 1
  store i32 %inc638, i32* %j, align 4
  br label %for.cond.595

for.end.639:                                      ; preds = %for.cond.595
  br label %if.end.640

if.end.640:                                       ; preds = %for.end.639, %for.end.591
  br label %if.end.705

if.else.641:                                      ; preds = %if.else.520
  %469 = load i8*, i8** @render_frame.rawframe, align 8
  store i8* %469, i8** %srcptr, align 8
  %470 = load i32, i32* %rawy, align 4
  store i32 %470, i32* %j, align 4
  br label %for.cond.642

for.cond.642:                                     ; preds = %for.inc.702, %if.else.641
  %471 = load i32, i32* %j, align 4
  %472 = load i32, i32* @render_frame.rawheight, align 4
  %473 = load i32, i32* %rawy, align 4
  %add643 = add nsw i32 %472, %473
  %cmp644 = icmp slt i32 %471, %add643
  br i1 %cmp644, label %for.body.646, label %for.end.704

for.body.646:                                     ; preds = %for.cond.642
  %474 = load i32, i32* %rawx, align 4
  store i32 %474, i32* %i, align 4
  br label %for.cond.647

for.cond.647:                                     ; preds = %for.inc.699, %for.body.646
  %475 = load i32, i32* %i, align 4
  %476 = load i32, i32* @render_frame.rawwidth, align 4
  %477 = load i32, i32* %rawx, align 4
  %add648 = add nsw i32 %476, %477
  %cmp649 = icmp slt i32 %475, %add648
  br i1 %cmp649, label %for.body.651, label %for.end.701

for.body.651:                                     ; preds = %for.cond.647
  %478 = load i32, i32* %i, align 4
  %cmp652 = icmp sge i32 %478, 0
  br i1 %cmp652, label %land.lhs.true.654, label %if.end.697

land.lhs.true.654:                                ; preds = %for.body.651
  %479 = load i32, i32* %i, align 4
  %480 = load i32, i32* @width, align 4
  %cmp655 = icmp ult i32 %479, %480
  br i1 %cmp655, label %land.lhs.true.657, label %if.end.697

land.lhs.true.657:                                ; preds = %land.lhs.true.654
  %481 = load i32, i32* %j, align 4
  %cmp658 = icmp sge i32 %481, 0
  br i1 %cmp658, label %land.lhs.true.660, label %if.end.697

land.lhs.true.660:                                ; preds = %land.lhs.true.657
  %482 = load i32, i32* %j, align 4
  %483 = load i32, i32* @height, align 4
  %cmp661 = icmp ult i32 %482, %483
  br i1 %cmp661, label %if.then.663, label %if.end.697

if.then.663:                                      ; preds = %land.lhs.true.660
  %484 = load i8*, i8** %srcptr, align 8
  %485 = load i8, i8* %484, align 1
  %conv664 = zext i8 %485 to i32
  %mul665 = mul nsw i32 3, %conv664
  %add666 = add nsw i32 0, %mul665
  %idxprom667 = sext i32 %add666 to i64
  %486 = load i8*, i8** @palette, align 8
  %arrayidx668 = getelementptr inbounds i8, i8* %486, i64 %idxprom667
  %487 = load i8, i8* %arrayidx668, align 1
  %488 = load i32, i32* %j, align 4
  %489 = load i32, i32* @width, align 4
  %mul669 = mul i32 %488, %489
  %490 = load i32, i32* %i, align 4
  %add670 = add i32 %mul669, %490
  %mul671 = mul i32 %add670, 3
  %add672 = add i32 %mul671, 0
  %idxprom673 = zext i32 %add672 to i64
  %491 = load i8*, i8** @preview_data, align 8
  %arrayidx674 = getelementptr inbounds i8, i8* %491, i64 %idxprom673
  store i8 %487, i8* %arrayidx674, align 1
  %492 = load i8*, i8** %srcptr, align 8
  %493 = load i8, i8* %492, align 1
  %conv675 = zext i8 %493 to i32
  %mul676 = mul nsw i32 3, %conv675
  %add677 = add nsw i32 1, %mul676
  %idxprom678 = sext i32 %add677 to i64
  %494 = load i8*, i8** @palette, align 8
  %arrayidx679 = getelementptr inbounds i8, i8* %494, i64 %idxprom678
  %495 = load i8, i8* %arrayidx679, align 1
  %496 = load i32, i32* %j, align 4
  %497 = load i32, i32* @width, align 4
  %mul680 = mul i32 %496, %497
  %498 = load i32, i32* %i, align 4
  %add681 = add i32 %mul680, %498
  %mul682 = mul i32 %add681, 3
  %add683 = add i32 %mul682, 1
  %idxprom684 = zext i32 %add683 to i64
  %499 = load i8*, i8** @preview_data, align 8
  %arrayidx685 = getelementptr inbounds i8, i8* %499, i64 %idxprom684
  store i8 %495, i8* %arrayidx685, align 1
  %500 = load i8*, i8** %srcptr, align 8
  %501 = load i8, i8* %500, align 1
  %conv686 = zext i8 %501 to i32
  %mul687 = mul nsw i32 3, %conv686
  %add688 = add nsw i32 2, %mul687
  %idxprom689 = sext i32 %add688 to i64
  %502 = load i8*, i8** @palette, align 8
  %arrayidx690 = getelementptr inbounds i8, i8* %502, i64 %idxprom689
  %503 = load i8, i8* %arrayidx690, align 1
  %504 = load i32, i32* %j, align 4
  %505 = load i32, i32* @width, align 4
  %mul691 = mul i32 %504, %505
  %506 = load i32, i32* %i, align 4
  %add692 = add i32 %mul691, %506
  %mul693 = mul i32 %add692, 3
  %add694 = add i32 %mul693, 2
  %idxprom695 = zext i32 %add694 to i64
  %507 = load i8*, i8** @preview_data, align 8
  %arrayidx696 = getelementptr inbounds i8, i8* %507, i64 %idxprom695
  store i8 %503, i8* %arrayidx696, align 1
  br label %if.end.697

if.end.697:                                       ; preds = %if.then.663, %land.lhs.true.660, %land.lhs.true.657, %land.lhs.true.654, %for.body.651
  %508 = load i8*, i8** %srcptr, align 8
  %incdec.ptr698 = getelementptr inbounds i8, i8* %508, i32 1
  store i8* %incdec.ptr698, i8** %srcptr, align 8
  br label %for.inc.699

for.inc.699:                                      ; preds = %if.end.697
  %509 = load i32, i32* %i, align 4
  %inc700 = add nsw i32 %509, 1
  store i32 %inc700, i32* %i, align 4
  br label %for.cond.647

for.end.701:                                      ; preds = %for.cond.647
  br label %for.inc.702

for.inc.702:                                      ; preds = %for.end.701
  %510 = load i32, i32* %j, align 4
  %inc703 = add nsw i32 %510, 1
  store i32 %inc703, i32* %j, align 4
  br label %for.cond.642

for.end.704:                                      ; preds = %for.cond.642
  br label %if.end.705

if.end.705:                                       ; preds = %for.end.704, %if.end.640
  %511 = load i32, i32* @detached, align 4
  %tobool706 = icmp ne i32 %511, 0
  br i1 %tobool706, label %if.then.707, label %if.else.749

if.then.707:                                      ; preds = %if.end.705
  %512 = load i32, i32* %dispose, align 4
  %cmp708 = icmp ne i32 %512, 2
  br i1 %cmp708, label %land.lhs.true.710, label %if.else.741

land.lhs.true.710:                                ; preds = %if.then.707
  %513 = load i32, i32* %whichframe.addr, align 4
  %cmp711 = icmp ne i32 %513, 0
  br i1 %cmp711, label %if.then.713, label %if.else.741

if.then.713:                                      ; preds = %land.lhs.true.710
  %514 = load i32, i32* %rawy, align 4
  %cmp715 = icmp sgt i32 %514, 0
  br i1 %cmp715, label %cond.true.717, label %cond.false.718

cond.true.717:                                    ; preds = %if.then.713
  %515 = load i32, i32* %rawy, align 4
  br label %cond.end.719

cond.false.718:                                   ; preds = %if.then.713
  br label %cond.end.719

cond.end.719:                                     ; preds = %cond.false.718, %cond.true.717
  %cond720 = phi i32 [ %515, %cond.true.717 ], [ 0, %cond.false.718 ]
  store i32 %cond720, i32* %top714, align 4
  %516 = load i32, i32* %rawy, align 4
  %517 = load i32, i32* @render_frame.rawheight, align 4
  %add722 = add nsw i32 %516, %517
  %518 = load i32, i32* @height, align 4
  %cmp723 = icmp ult i32 %add722, %518
  br i1 %cmp723, label %cond.true.725, label %cond.false.727

cond.true.725:                                    ; preds = %cond.end.719
  %519 = load i32, i32* %rawy, align 4
  %520 = load i32, i32* @render_frame.rawheight, align 4
  %add726 = add nsw i32 %519, %520
  br label %cond.end.728

cond.false.727:                                   ; preds = %cond.end.719
  %521 = load i32, i32* @height, align 4
  br label %cond.end.728

cond.end.728:                                     ; preds = %cond.false.727, %cond.true.725
  %cond729 = phi i32 [ %add726, %cond.true.725 ], [ %521, %cond.false.727 ]
  store i32 %cond729, i32* %bottom721, align 4
  %522 = load i8*, i8** @shape_preview_mask, align 8
  call void @reshape_from_bitmap(i8* %522)
  %523 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_drawing_area, align 8
  %call730 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %523)
  %524 = load %struct._GtkStyle*, %struct._GtkStyle** %shape_style, align 8
  %white_gc731 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %524, i32 0, i32 23
  %525 = load %struct._GdkGC*, %struct._GdkGC** %white_gc731, align 8
  %526 = load i32, i32* %top714, align 4
  %527 = load i32, i32* @width, align 4
  %528 = load i32, i32* %bottom721, align 4
  %529 = load i32, i32* %top714, align 4
  %sub732 = sub nsw i32 %528, %529
  %530 = load i32, i32* @total_frames, align 4
  %cmp733 = icmp eq i32 %530, 1
  %cond735 = select i1 %cmp733, i32 2, i32 1
  %531 = load i8*, i8** @preview_data, align 8
  %532 = load i32, i32* %top714, align 4
  %mul736 = mul nsw i32 3, %532
  %533 = load i32, i32* @width, align 4
  %mul737 = mul i32 %mul736, %533
  %idx.ext738 = zext i32 %mul737 to i64
  %add.ptr739 = getelementptr inbounds i8, i8* %531, i64 %idx.ext738
  %534 = load i32, i32* @width, align 4
  %mul740 = mul i32 %534, 3
  call void @gdk_draw_rgb_image(%struct._GdkDrawable* %call730, %struct._GdkGC* %525, i32 0, i32 %526, i32 %527, i32 %sub732, i32 %cond735, i8* %add.ptr739, i32 %mul740)
  br label %if.end.748

if.else.741:                                      ; preds = %land.lhs.true.710, %if.then.707
  %535 = load i8*, i8** @shape_preview_mask, align 8
  call void @reshape_from_bitmap(i8* %535)
  %536 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_drawing_area, align 8
  %call742 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %536)
  %537 = load %struct._GtkStyle*, %struct._GtkStyle** %shape_style, align 8
  %white_gc743 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %537, i32 0, i32 23
  %538 = load %struct._GdkGC*, %struct._GdkGC** %white_gc743, align 8
  %539 = load i32, i32* @width, align 4
  %540 = load i32, i32* @height, align 4
  %541 = load i32, i32* @total_frames, align 4
  %cmp744 = icmp eq i32 %541, 1
  %cond746 = select i1 %cmp744, i32 2, i32 1
  %542 = load i8*, i8** @preview_data, align 8
  %543 = load i32, i32* @width, align 4
  %mul747 = mul i32 %543, 3
  call void @gdk_draw_rgb_image(%struct._GdkDrawable* %call742, %struct._GdkGC* %538, i32 0, i32 0, i32 %539, i32 %540, i32 %cond746, i8* %542, i32 %mul747)
  br label %if.end.748

if.end.748:                                       ; preds = %if.else.741, %cond.end.728
  br label %if.end.791

if.else.749:                                      ; preds = %if.end.705
  %544 = load i32, i32* %dispose, align 4
  %cmp750 = icmp ne i32 %544, 2
  br i1 %cmp750, label %land.lhs.true.752, label %if.else.783

land.lhs.true.752:                                ; preds = %if.else.749
  %545 = load i32, i32* %whichframe.addr, align 4
  %cmp753 = icmp ne i32 %545, 0
  br i1 %cmp753, label %if.then.755, label %if.else.783

if.then.755:                                      ; preds = %land.lhs.true.752
  %546 = load i32, i32* %rawy, align 4
  %cmp757 = icmp sgt i32 %546, 0
  br i1 %cmp757, label %cond.true.759, label %cond.false.760

cond.true.759:                                    ; preds = %if.then.755
  %547 = load i32, i32* %rawy, align 4
  br label %cond.end.761

cond.false.760:                                   ; preds = %if.then.755
  br label %cond.end.761

cond.end.761:                                     ; preds = %cond.false.760, %cond.true.759
  %cond762 = phi i32 [ %547, %cond.true.759 ], [ 0, %cond.false.760 ]
  store i32 %cond762, i32* %top756, align 4
  %548 = load i32, i32* %rawy, align 4
  %549 = load i32, i32* @render_frame.rawheight, align 4
  %add764 = add nsw i32 %548, %549
  %550 = load i32, i32* @height, align 4
  %cmp765 = icmp ult i32 %add764, %550
  br i1 %cmp765, label %cond.true.767, label %cond.false.769

cond.true.767:                                    ; preds = %cond.end.761
  %551 = load i32, i32* %rawy, align 4
  %552 = load i32, i32* @render_frame.rawheight, align 4
  %add768 = add nsw i32 %551, %552
  br label %cond.end.770

cond.false.769:                                   ; preds = %cond.end.761
  %553 = load i32, i32* @height, align 4
  br label %cond.end.770

cond.end.770:                                     ; preds = %cond.false.769, %cond.true.767
  %cond771 = phi i32 [ %add768, %cond.true.767 ], [ %553, %cond.false.769 ]
  store i32 %cond771, i32* %bottom763, align 4
  %554 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  %call772 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %554)
  %555 = load %struct._GtkStyle*, %struct._GtkStyle** %drawing_style, align 8
  %white_gc773 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %555, i32 0, i32 23
  %556 = load %struct._GdkGC*, %struct._GdkGC** %white_gc773, align 8
  %557 = load i32, i32* %top756, align 4
  %558 = load i32, i32* @width, align 4
  %559 = load i32, i32* %bottom763, align 4
  %560 = load i32, i32* %top756, align 4
  %sub774 = sub nsw i32 %559, %560
  %561 = load i32, i32* @total_frames, align 4
  %cmp775 = icmp eq i32 %561, 1
  %cond777 = select i1 %cmp775, i32 2, i32 1
  %562 = load i8*, i8** @preview_data, align 8
  %563 = load i32, i32* %top756, align 4
  %mul778 = mul nsw i32 3, %563
  %564 = load i32, i32* @width, align 4
  %mul779 = mul i32 %mul778, %564
  %idx.ext780 = zext i32 %mul779 to i64
  %add.ptr781 = getelementptr inbounds i8, i8* %562, i64 %idx.ext780
  %565 = load i32, i32* @width, align 4
  %mul782 = mul i32 %565, 3
  call void @gdk_draw_rgb_image(%struct._GdkDrawable* %call772, %struct._GdkGC* %556, i32 0, i32 %557, i32 %558, i32 %sub774, i32 %cond777, i8* %add.ptr781, i32 %mul782)
  br label %if.end.790

if.else.783:                                      ; preds = %land.lhs.true.752, %if.else.749
  %566 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  %call784 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %566)
  %567 = load %struct._GtkStyle*, %struct._GtkStyle** %drawing_style, align 8
  %white_gc785 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %567, i32 0, i32 23
  %568 = load %struct._GdkGC*, %struct._GdkGC** %white_gc785, align 8
  %569 = load i32, i32* @width, align 4
  %570 = load i32, i32* @height, align 4
  %571 = load i32, i32* @total_frames, align 4
  %cmp786 = icmp eq i32 %571, 1
  %cond788 = select i1 %cmp786, i32 2, i32 1
  %572 = load i8*, i8** @preview_data, align 8
  %573 = load i32, i32* @width, align 4
  %mul789 = mul i32 %573, 3
  call void @gdk_draw_rgb_image(%struct._GdkDrawable* %call784, %struct._GdkGC* %568, i32 0, i32 0, i32 %569, i32 %570, i32 %cond788, i8* %572, i32 %mul789)
  br label %if.end.790

if.end.790:                                       ; preds = %if.else.783, %cond.end.770
  br label %if.end.791

if.end.791:                                       ; preds = %if.end.790, %if.end.748
  br label %if.end.792

if.end.792:                                       ; preds = %if.end.791, %if.end.519
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.44, %if.end.792, %if.end.387
  %574 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %574)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @show_frame() #0 {
entry:
  %text = alloca i8*, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @progress, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_progress_bar_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkProgressBar*
  %3 = load i32, i32* @frame_number, align 4
  %conv = uitofp i32 %3 to float
  %4 = load i32, i32* @total_frames, align 4
  %conv2 = sitofp i32 %4 to double
  %sub = fsub double %conv2, 9.990000e-01
  %conv3 = fptrunc double %sub to float
  %div = fdiv float %conv, %conv3
  %conv4 = fpext float %div to double
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %2, double %conv4)
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i32 0, i32 0)) #5
  %5 = load i32, i32* @frame_number, align 4
  %add = add i32 %5, 1
  %6 = load i32, i32* @total_frames, align 4
  %call6 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call5, i32 %add, i32 %6)
  store i8* %call6, i8** %text, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @progress, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_progress_bar_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkProgressBar*
  %10 = load i8*, i8** %text, align 8
  call void @gtk_progress_bar_set_text(%struct._GtkProgressBar* %9, i8* %10)
  %11 = load i8*, i8** %text, align 8
  call void @g_free(i8* %11)
  ret void
}

declare void @gtk_main() #1

declare noalias i8* @g_malloc(i64) #1

declare void @gimp_ui_init(i8*, i32) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare %struct._GtkWidget* @gtk_window_new(i32) #1

declare void @gtk_window_set_title(%struct._GtkWindow*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare void @gtk_window_set_role(%struct._GtkWindow*, i8*) #1

declare void @g_free(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @window_destroy(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load i32, i32* @playing, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @remove_timer()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  %tobool1 = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %4)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  call void @gtk_main_quit()
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @popup_menu(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0))
  store %struct._GtkWidget* %call, %struct._GtkWidget** %menu, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_menu_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkMenu*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %4)
  call void @gtk_menu_set_screen(%struct._GtkMenu* %3, %struct._GdkScreen* %call3)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_menu_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkMenu*
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %tobool = icmp ne %struct._GdkEventButton* %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %9, i32 0, i32 8
  %10 = load i32, i32* %button, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 0, %cond.false ]
  %11 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %tobool6 = icmp ne %struct._GdkEventButton* %11, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  %12 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %12, i32 0, i32 3
  %13 = load i32, i32* %time, align 4
  br label %cond.end.10

cond.false.8:                                     ; preds = %cond.end
  %call9 = call i32 @gtk_get_current_event_time()
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.7
  %cond11 = phi i32 [ %13, %cond.true.7 ], [ %call9, %cond.false.8 ]
  call void @gtk_menu_popup(%struct._GtkMenu* %7, %struct._GtkWidget* null, %struct._GtkWidget* null, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)* null, i8* null, i32 %cond, i32 %cond11)
  ret i32 1
}

declare void @gimp_help_connect(%struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkUIManager* @ui_manager_new(%struct._GtkWidget* %window) #0 {
entry:
  %window.addr = alloca %struct._GtkWidget*, align 8
  %ui_manager = alloca %struct._GtkUIManager*, align 8
  %group = alloca %struct._GtkActionGroup*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %window, %struct._GtkWidget** %window.addr, align 8
  %call = call %struct._GtkUIManager* @gtk_ui_manager_new()
  store %struct._GtkUIManager* %call, %struct._GtkUIManager** %ui_manager, align 8
  %call1 = call %struct._GtkActionGroup* @gtk_action_group_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0))
  store %struct._GtkActionGroup* %call1, %struct._GtkActionGroup** %group, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  call void @gtk_action_group_set_translation_domain(%struct._GtkActionGroup* %0, i8* null)
  %1 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to i8*
  call void @gtk_action_group_add_actions(%struct._GtkActionGroup* %1, %struct._GtkActionEntry* getelementptr inbounds ([8 x %struct._GtkActionEntry], [8 x %struct._GtkActionEntry]* @ui_manager_new.actions, i32 0, i32 0), i32 8, i8* %3)
  %4 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  call void @gtk_action_group_add_toggle_actions(%struct._GtkActionGroup* %4, %struct._GtkToggleActionEntry* getelementptr inbounds ([2 x %struct._GtkToggleActionEntry], [2 x %struct._GtkToggleActionEntry]* @ui_manager_new.toggle_actions, i32 0, i32 0), i32 2, i8* null)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %8 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call4 = call %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager* %8)
  call void @gtk_window_add_accel_group(%struct._GtkWindow* %7, %struct._GtkAccelGroup* %call4)
  %9 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call5 = call %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager* %9)
  call void @gtk_accel_group_lock(%struct._GtkAccelGroup* %call5)
  %10 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %11 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  call void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager* %10, %struct._GtkActionGroup* %11, i32 -1)
  %12 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %13 = bitcast %struct._GtkActionGroup* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call6 = call i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager* %14, i8* getelementptr inbounds ([322 x i8], [322 x i8]* @.str.74, i32 0, i32 0), i64 -1, %struct._GError** %error)
  %15 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %15, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %16, i32 0, i32 2
  %17 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i32 0, i32 0), i8* %17)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call7 = call i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager* %18, i8* getelementptr inbounds ([348 x i8], [348 x i8]* @.str.76, i32 0, i32 0), i64 -1, %struct._GError** %error)
  %19 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool8 = icmp ne %struct._GError* %19, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %20 = load %struct._GError*, %struct._GError** %error, align 8
  %message10 = getelementptr inbounds %struct._GError, %struct._GError* %20, i32 0, i32 2
  %21 = load i8*, i8** %message10, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i32 0, i32 0), i8* %21)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  %22 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  ret %struct._GtkUIManager* %22
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_tool_item_get_type() #3

declare void @gtk_separator_tool_item_set_draw(%struct._GtkSeparatorToolItem*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_separator_tool_item_get_type() #3

declare void @gtk_tool_item_set_expand(%struct._GtkToolItem*, i32) #1

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare %struct._GtkWidget* @gtk_drawing_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %1 = bitcast %struct._GdkEventButton* %0 to %union._GdkEvent*
  %call = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %call1 = call i32 @popup_menu(%struct._GtkWidget* %2, %struct._GdkEventButton* %3)
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare %struct._GtkWidget* @gtk_progress_bar_new() #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_combo_box_text_new() #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_fps(i32 %index) #0 {
entry:
  %retval = alloca i32, align 4
  %index.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  store i32 10, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 12, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 15, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 24, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 25, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 30, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 50, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i32 60, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i32 72, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 10, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare void @gtk_combo_box_text_append_text(%struct._GtkComboBoxText*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_text_get_type() #3

declare void @gtk_combo_box_set_active(%struct._GtkComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @fpscombo_changed(%struct._GtkWidget* %combo, i8* %data) #0 {
entry:
  %combo.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %combo, %struct._GtkWidget** %combo.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkComboBox*
  %call2 = call i32 @gtk_combo_box_get_active(%struct._GtkComboBox* %2)
  %call3 = call i32 @get_fps(i32 %call2)
  %div = sdiv i32 1000, %call3
  store i32 %div, i32* @default_frame_duration, align 4
  ret void
}

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal double @get_duration_factor(i32 %index) #0 {
entry:
  %retval = alloca double, align 8
  %index.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  store double 1.250000e-01, double* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store double 2.500000e-01, double* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store double 5.000000e-01, double* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store double 1.000000e+00, double* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store double 2.000000e+00, double* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store double 4.000000e+00, double* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store double 8.000000e+00, double* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store double 1.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load double, double* %retval
  ret double %1
}

; Function Attrs: nounwind uwtable
define internal void @speedcombo_changed(%struct._GtkWidget* %combo, i8* %data) #0 {
entry:
  %combo.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %action = alloca %struct._GtkAction*, align 8
  store %struct._GtkWidget* %combo, %struct._GtkWidget** %combo.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkComboBox*
  %call2 = call i32 @gtk_combo_box_get_active(%struct._GtkComboBox* %2)
  store i32 %call2, i32* @duration_index, align 4
  %3 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call3 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0))
  store %struct._GtkAction* %call3, %struct._GtkAction** %action, align 8
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %5 = load i32, i32* @duration_index, align 4
  %cmp = icmp ne i32 %5, 3
  %conv = zext i1 %cmp to i32
  call void @gtk_action_set_sensitive(%struct._GtkAction* %4, i32 %conv)
  %6 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call4 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.78, i32 0, i32 0))
  store %struct._GtkAction* %call4, %struct._GtkAction** %action, align 8
  %7 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %8 = load i32, i32* @duration_index, align 4
  %cmp5 = icmp slt i32 %8, 6
  %conv6 = zext i1 %cmp5 to i32
  call void @gtk_action_set_sensitive(%struct._GtkAction* %7, i32 %conv6)
  %9 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call7 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.79, i32 0, i32 0))
  store %struct._GtkAction* %call7, %struct._GtkAction** %action, align 8
  %10 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %11 = load i32, i32* @duration_index, align 4
  %cmp8 = icmp sgt i32 %11, 0
  %conv9 = zext i1 %cmp8 to i32
  call void @gtk_action_set_sensitive(%struct._GtkAction* %10, i32 %conv9)
  ret void
}

declare %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager*, i8*) #1

declare void @gtk_action_set_sensitive(%struct._GtkAction*, i32) #1

declare void @gtk_widget_realize(%struct._GtkWidget*) #1

declare void @gdk_window_set_back_pixmap(%struct._GdkDrawable*, %struct._GdkDrawable*, i32) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

; Function Attrs: nounwind uwtable
define internal i32 @shape_pressed(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %p = alloca %struct.CursorOffset*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %call = call i32 @button_press(%struct._GtkWidget* %0, %struct._GdkEventButton* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then.1, label %if.end.13

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0))
  %7 = bitcast i8* %call3 to %struct.CursorOffset*
  store %struct.CursorOffset* %7, %struct.CursorOffset** %p, align 8
  %8 = load %struct.CursorOffset*, %struct.CursorOffset** %p, align 8
  %tobool4 = icmp ne %struct.CursorOffset* %8, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.then.1
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.1
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %9, i32 0, i32 4
  %10 = load double, double* %x, align 8
  %conv = fptosi double %10 to i32
  %11 = load %struct.CursorOffset*, %struct.CursorOffset** %p, align 8
  %x7 = getelementptr inbounds %struct.CursorOffset, %struct.CursorOffset* %11, i32 0, i32 0
  store i32 %conv, i32* %x7, align 4
  %12 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %12, i32 0, i32 5
  %13 = load double, double* %y, align 8
  %conv8 = fptosi double %13 to i32
  %14 = load %struct.CursorOffset*, %struct.CursorOffset** %p, align 8
  %y9 = getelementptr inbounds %struct.CursorOffset, %struct.CursorOffset* %14, i32 0, i32 1
  store i32 %conv8, i32* %y9, align 4
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call10 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %16)
  %call11 = call i32 @gdk_pointer_grab(%struct._GdkDrawable* %call10, i32 1, i32 536, %struct._GdkDrawable* null, %struct._GdkCursor* null, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call12 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %17)
  call void @gdk_window_raise(%struct._GdkDrawable* %call12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.6, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.5, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @shape_released(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %0)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %1)
  call void @gdk_display_pointer_ungrab(%struct._GdkDisplay* %call, i32 0)
  call void @gdk_flush()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @shape_motion(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %mask = alloca i32, align 4
  %xp = alloca i32, align 4
  %yp = alloca i32, align 4
  %p = alloca %struct.CursorOffset*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  %0 = load %struct._GdkDrawable*, %struct._GdkDrawable** @root_win, align 8
  %call = call %struct._GdkDrawable* @gdk_window_get_pointer(%struct._GdkDrawable* %0, i32* %xp, i32* %yp, i32* %mask)
  %1 = load i32, i32* %mask, align 4
  %and = and i32 %1, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0))
  %5 = bitcast i8* %call2 to %struct.CursorOffset*
  store %struct.CursorOffset* %5, %struct.CursorOffset** %p, align 8
  %6 = load %struct.CursorOffset*, %struct.CursorOffset** %p, align 8
  %tobool3 = icmp ne %struct.CursorOffset* %6, null
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  %10 = load i32, i32* %xp, align 4
  %11 = load %struct.CursorOffset*, %struct.CursorOffset** %p, align 8
  %x = getelementptr inbounds %struct.CursorOffset, %struct.CursorOffset* %11, i32 0, i32 0
  %12 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %10, %12
  %13 = load i32, i32* %yp, align 4
  %14 = load %struct.CursorOffset*, %struct.CursorOffset** %p, align 8
  %y = getelementptr inbounds %struct.CursorOffset, %struct.CursorOffset* %14, i32 0, i32 1
  %15 = load i32, i32* %y, align 4
  %sub7 = sub nsw i32 %13, %15
  call void @gtk_window_move(%struct._GtkWindow* %9, i32 %sub, i32 %sub7)
  br label %if.end.9

if.else:                                          ; preds = %entry
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call8 = call i32 @shape_released(%struct._GtkWidget* %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.4
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @repaint_da(%struct._GtkWidget* %darea, %struct._GdkEventExpose* %event, i8* %data) #0 {
entry:
  %darea.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %data.addr = alloca i8*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  store %struct._GtkWidget* %darea, %struct._GtkWidget** %darea.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %darea.addr, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %0)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %darea.addr, align 8
  %call1 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %1)
  %2 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %white_gc = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %2, i32 0, i32 23
  %3 = load %struct._GdkGC*, %struct._GdkGC** %white_gc, align 8
  %4 = load i32, i32* @width, align 4
  %5 = load i32, i32* @height, align 4
  %6 = load i32, i32* @total_frames, align 4
  %cmp = icmp eq i32 %6, 1
  %cond = select i1 %cmp, i32 2, i32 1
  %7 = load i8*, i8** @drawing_area_data, align 8
  %8 = load i32, i32* @width, align 4
  %mul = mul i32 %8, 3
  call void @gdk_draw_rgb_image(%struct._GdkDrawable* %call1, %struct._GdkGC* %3, i32 0, i32 0, i32 %4, i32 %5, i32 %cond, i8* %7, i32 %mul)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @maybeblocked_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load i32, i32* @playing, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %call = call i32 @repaint_sda(%struct._GtkWidget* %1, %struct._GdkEventExpose* %2, i8* null)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare %struct._GdkDrawable* @gdk_get_default_root_window() #1

; Function Attrs: nounwind uwtable
define internal void @remove_timer() #0 {
entry:
  %0 = load i32, i32* @timer, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @timer, align 4
  %call = call i32 @g_source_remove(i32 %1)
  store i32 0, i32* @timer, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare void @gtk_main_quit() #1

declare i32 @g_source_remove(i32) #1

declare void @gtk_menu_set_screen(%struct._GtkMenu*, %struct._GdkScreen*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #3

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare void @gtk_menu_popup(%struct._GtkMenu*, %struct._GtkWidget*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, i32) #1

declare i32 @gtk_get_current_event_time() #1

; Function Attrs: nounwind uwtable
define internal void @step_callback(%struct._GtkAction* %action) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  %0 = load i32, i32* @playing, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.77, i32 0, i32 0))
  call void @gtk_action_activate(%struct._GtkAction* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @do_step()
  call void @show_frame()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rewind_callback(%struct._GtkAction* %action) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  %0 = load i32, i32* @playing, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.77, i32 0, i32 0))
  call void @gtk_action_activate(%struct._GtkAction* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @frame_number, align 4
  %2 = load i32, i32* @frame_number, align 4
  call void @render_frame(i32 %2)
  call void @show_frame()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @help_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  call void @gimp_standard_help_func(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @close_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @speed_up_callback(%struct._GtkAction* %action) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  %0 = load i32, i32* @duration_index, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @duration_index, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @duration_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %3 = load i32, i32* @duration_index, align 4
  %cmp1 = icmp sgt i32 %3, 0
  %conv = zext i1 %cmp1 to i32
  call void @gtk_action_set_sensitive(%struct._GtkAction* %2, i32 %conv)
  %4 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0))
  store %struct._GtkAction* %call, %struct._GtkAction** %action.addr, align 8
  %5 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %6 = load i32, i32* @duration_index, align 4
  %cmp2 = icmp ne i32 %6, 3
  %conv3 = zext i1 %cmp2 to i32
  call void @gtk_action_set_sensitive(%struct._GtkAction* %5, i32 %conv3)
  %7 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call4 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.78, i32 0, i32 0))
  store %struct._GtkAction* %call4, %struct._GtkAction** %action.addr, align 8
  %8 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  call void @gtk_action_set_sensitive(%struct._GtkAction* %8, i32 1)
  call void @update_combobox()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @speed_down_callback(%struct._GtkAction* %action) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  %0 = load i32, i32* @duration_index, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @duration_index, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @duration_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %3 = load i32, i32* @duration_index, align 4
  %cmp1 = icmp slt i32 %3, 6
  %conv = zext i1 %cmp1 to i32
  call void @gtk_action_set_sensitive(%struct._GtkAction* %2, i32 %conv)
  %4 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0))
  store %struct._GtkAction* %call, %struct._GtkAction** %action.addr, align 8
  %5 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %6 = load i32, i32* @duration_index, align 4
  %cmp2 = icmp ne i32 %6, 3
  %conv3 = zext i1 %cmp2 to i32
  call void @gtk_action_set_sensitive(%struct._GtkAction* %5, i32 %conv3)
  %7 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call4 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.79, i32 0, i32 0))
  store %struct._GtkAction* %call4, %struct._GtkAction** %action.addr, align 8
  %8 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  call void @gtk_action_set_sensitive(%struct._GtkAction* %8, i32 1)
  call void @update_combobox()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @speed_reset_callback(%struct._GtkAction* %action) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 3, i32* @duration_index, align 4
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  call void @gtk_action_set_sensitive(%struct._GtkAction* %0, i32 0)
  %1 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.78, i32 0, i32 0))
  store %struct._GtkAction* %call, %struct._GtkAction** %action.addr, align 8
  %2 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  call void @gtk_action_set_sensitive(%struct._GtkAction* %2, i32 1)
  %3 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call1 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.79, i32 0, i32 0))
  store %struct._GtkAction* %call1, %struct._GtkAction** %action.addr, align 8
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  call void @gtk_action_set_sensitive(%struct._GtkAction* %4, i32 1)
  call void @update_combobox()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @play_callback(%struct._GtkToggleAction* %action) #0 {
entry:
  %action.addr = alloca %struct._GtkToggleAction*, align 8
  store %struct._GtkToggleAction* %action, %struct._GtkToggleAction** %action.addr, align 8
  %0 = load i32, i32* @playing, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @remove_timer()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GtkToggleAction*, %struct._GtkToggleAction** %action.addr, align 8
  %call = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %1)
  store i32 %call, i32* @playing, align 4
  %2 = load i32, i32* @playing, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* @frame_number, align 4
  %call3 = call i32 @get_frame_duration(i32 %3)
  %conv = uitofp i32 %call3 to double
  %4 = load i32, i32* @duration_index, align 4
  %call4 = call double @get_duration_factor(i32 %4)
  %mul = fmul double %conv, %call4
  %conv5 = fptoui double %mul to i32
  %call6 = call i32 @g_timeout_add(i32 %conv5, i32 (i8*)* @advance_frame_callback, i8* null)
  store i32 %call6, i32* @timer, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.2, %if.end
  %5 = load %struct._GtkToggleAction*, %struct._GtkToggleAction** %action.addr, align 8
  %6 = bitcast %struct._GtkToggleAction* %5 to i8*
  %7 = load i32, i32* @playing, align 4
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.81, i32 0, i32 0)) #5
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call9, %cond.true ], [ %call10, %cond.false ]
  call void (i8*, i8*, ...) @g_object_set(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i8* %cond, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @detach_callback(%struct._GtkToggleAction* %action) #0 {
entry:
  %action.addr = alloca %struct._GtkToggleAction*, align 8
  %active = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GtkToggleAction* %action, %struct._GtkToggleAction** %action.addr, align 8
  %0 = load %struct._GtkToggleAction*, %struct._GtkToggleAction** %action.addr, align 8
  %call = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %0)
  store i32 %call, i32* %active, align 4
  %1 = load i32, i32* %active, align 4
  %2 = load i32, i32* @detached, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.82, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %active, align 4
  store i32 %3, i32* @detached, align 4
  %4 = load i32, i32* @detached, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %5 = load i32, i32* @width, align 4
  %6 = load i32, i32* @height, align 4
  %mul = mul i32 %5, %6
  %mul2 = mul i32 %mul, 3
  %conv = zext i32 %mul2 to i64
  %call3 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call3, i8** @drawing_area_data, align 8
  %7 = load i8*, i8** @drawing_area_data, align 8
  call void @total_alpha_preview(i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  %call6 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %11)
  call void @gtk_window_set_screen(%struct._GtkWindow* %10, %struct._GdkScreen* %call6)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  %call7 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %12)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.then.1
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  %call10 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %13)
  %call11 = call i32 @gdk_window_get_origin(%struct._GdkDrawable* %call10, i32* %x, i32* %y)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_window_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWindow*
  %17 = load i32, i32* %x, align 4
  %add = add nsw i32 %17, 6
  %18 = load i32, i32* %y, align 4
  %add14 = add nsw i32 %18, 6
  call void @gtk_window_move(%struct._GtkWindow* %16, i32 %add, i32 %add14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.9, %if.then.1
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_drawing_area, align 8
  %call16 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %20)
  call void @gdk_window_set_back_pixmap(%struct._GdkDrawable* %call16, %struct._GdkDrawable* null, i32 1)
  %21 = load i8*, i8** @shape_preview_mask, align 8
  %22 = load i32, i32* @width, align 4
  %23 = load i32, i32* @height, align 4
  %mul17 = mul i32 %22, %23
  %div = udiv i32 %mul17, 8
  %24 = load i32, i32* @height, align 4
  %add18 = add i32 %div, %24
  %conv19 = zext i32 %add18 to i64
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 %conv19, i32 1, i1 false)
  %25 = load i32, i32* @frame_number, align 4
  call void @render_frame(i32 %25)
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %26 = load i8*, i8** @drawing_area_data, align 8
  call void @g_free(i8* %26)
  %27 = load i8*, i8** @shape_drawing_area_data, align 8
  store i8* %27, i8** @drawing_area_data, align 8
  %28 = load i32, i32* @frame_number, align 4
  call void @render_frame(i32 %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %29)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.15
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** @drawing_area, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %30)
  br label %return

return:                                           ; preds = %if.end.20, %if.then
  ret void
}

declare %struct._GtkUIManager* @gtk_ui_manager_new() #1

declare %struct._GtkActionGroup* @gtk_action_group_new(i8*) #1

declare void @gtk_action_group_set_translation_domain(%struct._GtkActionGroup*, i8*) #1

declare void @gtk_action_group_add_actions(%struct._GtkActionGroup*, %struct._GtkActionEntry*, i32, i8*) #1

declare void @gtk_action_group_add_toggle_actions(%struct._GtkActionGroup*, %struct._GtkToggleActionEntry*, i32, i8*) #1

declare void @gtk_window_add_accel_group(%struct._GtkWindow*, %struct._GtkAccelGroup*) #1

declare %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager*) #1

declare void @gtk_accel_group_lock(%struct._GtkAccelGroup*) #1

declare void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager*, %struct._GtkActionGroup*, i32) #1

declare void @g_object_unref(i8*) #1

declare i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager*, i8*, i64, %struct._GError**) #1

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

declare void @g_clear_error(%struct._GError**) #1

declare void @gtk_action_activate(%struct._GtkAction*) #1

; Function Attrs: nounwind uwtable
define internal void @do_step() #0 {
entry:
  %0 = load i32, i32* @frame_number, align 4
  %add = add i32 %0, 1
  %1 = load i32, i32* @total_frames, align 4
  %rem = urem i32 %add, %1
  store i32 %rem, i32* @frame_number, align 4
  %2 = load i32, i32* @frame_number, align 4
  call void @render_frame(i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_combobox() #0 {
entry:
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @speedcombo, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkComboBox*
  %3 = load i32, i32* @duration_index, align 4
  call void @gtk_combo_box_set_active(%struct._GtkComboBox* %2, i32 %3)
  ret void
}

declare i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction*) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_frame_duration(i32 %whichframe) #0 {
entry:
  %whichframe.addr = alloca i32, align 4
  %layer_name = alloca i8*, align 8
  %duration = alloca i32, align 4
  store i32 %whichframe, i32* %whichframe.addr, align 4
  store i32 0, i32* %duration, align 4
  %0 = load i32, i32* @total_frames, align 4
  %1 = load i32, i32* %whichframe.addr, align 4
  %add = add i32 %1, 1
  %sub = sub i32 %0, %add
  %idxprom = zext i32 %sub to i64
  %2 = load i32*, i32** @layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i8* @gimp_item_get_name(i32 %3)
  store i8* %call, i8** %layer_name, align 8
  %4 = load i8*, i8** %layer_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %layer_name, align 8
  %call1 = call i32 @parse_ms_tag(i8* %5)
  store i32 %call1, i32* %duration, align 4
  %6 = load i8*, i8** %layer_name, align 8
  call void @g_free(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %duration, align 4
  %cmp = icmp sle i32 %7, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load i32, i32* @default_frame_duration, align 4
  store i32 %8, i32* %duration, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %9 = load i32, i32* %duration, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @advance_frame_callback(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %duration = alloca double, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @remove_timer()
  %0 = load i32, i32* @frame_number, align 4
  %add = add i32 %0, 1
  %1 = load i32, i32* @total_frames, align 4
  %rem = urem i32 %add, %1
  %call = call i32 @get_frame_duration(i32 %rem)
  %conv = uitofp i32 %call to double
  store double %conv, double* %duration, align 8
  %2 = load double, double* %duration, align 8
  %3 = load i32, i32* @duration_index, align 4
  %call1 = call double @get_duration_factor(i32 %3)
  %mul = fmul double %2, %call1
  %conv2 = fptoui double %mul to i32
  %call3 = call i32 @g_timeout_add(i32 %conv2, i32 (i8*)* @advance_frame_callback, i8* null)
  store i32 %call3, i32* @timer, align 4
  call void @do_step()
  call void @show_frame()
  ret i32 0
}

declare void @g_object_set(i8*, i8*, ...) #1

declare i8* @gimp_item_get_name(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_ms_tag(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %rtn = alloca i32, align 4
  %dummy = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %call2 = call i32 @is_ms_tag(i8* %arrayidx, i32* %rtn, i32* %dummy)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %rtn, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @is_ms_tag(i8* %str, i32* %duration, i32* %taglength) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %duration.addr = alloca i32*, align 8
  %taglength.addr = alloca i32*, align 8
  %sum = alloca i32, align 4
  %offset = alloca i32, align 4
  %length = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32* %duration, i32** %duration.addr, align 8
  store i32* %taglength, i32** %taglength.addr, align 8
  store i32 0, i32* %sum, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  %1 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv1, 40
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, i32* %offset, align 4
  %4 = load i32, i32* %length, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %str.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32, i32* %offset, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %offset, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i32, i32* %offset, align 4
  %11 = load i32, i32* %length, align 4
  %cmp9 = icmp sge i32 %10, %11
  br i1 %cmp9, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %12 = load i32, i32* %offset, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i8*, i8** %str.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 %idxprom11
  %14 = load i8, i8* %arrayidx12, align 1
  %idxprom13 = zext i8 %14 to i64
  %15 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %15, i64 %idxprom13
  %16 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %16 to i32
  %and = and i32 %conv15, 8
  %cmp16 = icmp ne i32 %and, 0
  br i1 %cmp16, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false, %while.end
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %land.end.35, %if.end.19
  %17 = load i32, i32* %sum, align 4
  %mul = mul nsw i32 %17, 10
  store i32 %mul, i32* %sum, align 4
  %18 = load i32, i32* %offset, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load i8*, i8** %str.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %19, i64 %idxprom20
  %20 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %20 to i32
  %sub = sub nsw i32 %conv22, 48
  %21 = load i32, i32* %sum, align 4
  %add = add nsw i32 %21, %sub
  store i32 %add, i32* %sum, align 4
  %22 = load i32, i32* %offset, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, i32* %offset, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %23 = load i32, i32* %offset, align 4
  %24 = load i32, i32* %length, align 4
  %cmp24 = icmp slt i32 %23, %24
  br i1 %cmp24, label %land.rhs.26, label %land.end.35

land.rhs.26:                                      ; preds = %do.cond
  %25 = load i32, i32* %offset, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load i8*, i8** %str.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %26, i64 %idxprom27
  %27 = load i8, i8* %arrayidx28, align 1
  %idxprom29 = zext i8 %27 to i64
  %28 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %28, i64 %idxprom29
  %29 = load i16, i16* %arrayidx30, align 2
  %conv31 = zext i16 %29 to i32
  %and32 = and i32 %conv31, 8
  %cmp33 = icmp ne i32 %and32, 0
  br label %land.end.35

land.end.35:                                      ; preds = %land.rhs.26, %do.cond
  %30 = phi i1 [ false, %do.cond ], [ %cmp33, %land.rhs.26 ]
  br i1 %30, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.35
  %31 = load i32, i32* %length, align 4
  %32 = load i32, i32* %offset, align 4
  %sub36 = sub nsw i32 %31, %32
  %cmp37 = icmp sle i32 %sub36, 2
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %do.end
  br label %while.cond.41

while.cond.41:                                    ; preds = %while.body.51, %if.end.40
  %33 = load i32, i32* %offset, align 4
  %34 = load i32, i32* %length, align 4
  %cmp42 = icmp slt i32 %33, %34
  br i1 %cmp42, label %land.rhs.44, label %land.end.50

land.rhs.44:                                      ; preds = %while.cond.41
  %35 = load i32, i32* %offset, align 4
  %idxprom45 = sext i32 %35 to i64
  %36 = load i8*, i8** %str.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %36, i64 %idxprom45
  %37 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %37 to i32
  %cmp48 = icmp eq i32 %conv47, 32
  br label %land.end.50

land.end.50:                                      ; preds = %land.rhs.44, %while.cond.41
  %38 = phi i1 [ false, %while.cond.41 ], [ %cmp48, %land.rhs.44 ]
  br i1 %38, label %while.body.51, label %while.end.53

while.body.51:                                    ; preds = %land.end.50
  %39 = load i32, i32* %offset, align 4
  %inc52 = add nsw i32 %39, 1
  store i32 %inc52, i32* %offset, align 4
  br label %while.cond.41

while.end.53:                                     ; preds = %land.end.50
  %40 = load i32, i32* %length, align 4
  %41 = load i32, i32* %offset, align 4
  %sub54 = sub nsw i32 %40, %41
  %cmp55 = icmp sle i32 %sub54, 2
  br i1 %cmp55, label %if.then.72, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %while.end.53
  %42 = load i32, i32* %offset, align 4
  %idxprom58 = sext i32 %42 to i64
  %43 = load i8*, i8** %str.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %43, i64 %idxprom58
  %44 = load i8, i8* %arrayidx59, align 1
  %call60 = call signext i8 @g_ascii_toupper(i8 signext %44) #7
  %conv61 = sext i8 %call60 to i32
  %cmp62 = icmp ne i32 %conv61, 77
  br i1 %cmp62, label %if.then.72, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.57
  %45 = load i32, i32* %offset, align 4
  %add65 = add nsw i32 %45, 1
  %idxprom66 = sext i32 %add65 to i64
  %46 = load i8*, i8** %str.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %46, i64 %idxprom66
  %47 = load i8, i8* %arrayidx67, align 1
  %call68 = call signext i8 @g_ascii_toupper(i8 signext %47) #7
  %conv69 = sext i8 %call68 to i32
  %cmp70 = icmp ne i32 %conv69, 83
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false.64, %lor.lhs.false.57, %while.end.53
  store i32 0, i32* %retval
  br label %return

if.end.73:                                        ; preds = %lor.lhs.false.64
  %48 = load i32, i32* %offset, align 4
  %add74 = add nsw i32 %48, 2
  store i32 %add74, i32* %offset, align 4
  br label %while.cond.75

while.cond.75:                                    ; preds = %while.body.85, %if.end.73
  %49 = load i32, i32* %offset, align 4
  %50 = load i32, i32* %length, align 4
  %cmp76 = icmp slt i32 %49, %50
  br i1 %cmp76, label %land.rhs.78, label %land.end.84

land.rhs.78:                                      ; preds = %while.cond.75
  %51 = load i32, i32* %offset, align 4
  %idxprom79 = sext i32 %51 to i64
  %52 = load i8*, i8** %str.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %52, i64 %idxprom79
  %53 = load i8, i8* %arrayidx80, align 1
  %conv81 = sext i8 %53 to i32
  %cmp82 = icmp eq i32 %conv81, 32
  br label %land.end.84

land.end.84:                                      ; preds = %land.rhs.78, %while.cond.75
  %54 = phi i1 [ false, %while.cond.75 ], [ %cmp82, %land.rhs.78 ]
  br i1 %54, label %while.body.85, label %while.end.87

while.body.85:                                    ; preds = %land.end.84
  %55 = load i32, i32* %offset, align 4
  %inc86 = add nsw i32 %55, 1
  store i32 %inc86, i32* %offset, align 4
  br label %while.cond.75

while.end.87:                                     ; preds = %land.end.84
  %56 = load i32, i32* %length, align 4
  %57 = load i32, i32* %offset, align 4
  %sub88 = sub nsw i32 %56, %57
  %cmp89 = icmp slt i32 %sub88, 1
  br i1 %cmp89, label %if.then.97, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %while.end.87
  %58 = load i32, i32* %offset, align 4
  %idxprom92 = sext i32 %58 to i64
  %59 = load i8*, i8** %str.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %59, i64 %idxprom92
  %60 = load i8, i8* %arrayidx93, align 1
  %conv94 = sext i8 %60 to i32
  %cmp95 = icmp ne i32 %conv94, 41
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %lor.lhs.false.91, %while.end.87
  store i32 0, i32* %retval
  br label %return

if.end.98:                                        ; preds = %lor.lhs.false.91
  %61 = load i32, i32* %offset, align 4
  %inc99 = add nsw i32 %61, 1
  store i32 %inc99, i32* %offset, align 4
  %62 = load i32, i32* %sum, align 4
  %63 = load i32*, i32** %duration.addr, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %offset, align 4
  %65 = load i32*, i32** %taglength.addr, align 8
  store i32 %64, i32* %65, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.98, %if.then.97, %if.then.72, %if.then.39, %if.then.18, %if.then
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind readnone
declare signext i8 @g_ascii_toupper(i8 signext) #3

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #1

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #1

declare i32 @gdk_window_get_origin(%struct._GdkDrawable*, i32*, i32*) #1

declare void @gtk_window_move(%struct._GtkWindow*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @gdk_event_triggers_context_menu(%union._GdkEvent*) #1

declare i32 @gtk_combo_box_get_active(%struct._GtkComboBox*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gtk_grab_add(%struct._GtkWidget*) #1

declare i32 @gdk_pointer_grab(%struct._GdkDrawable*, i32, i32, %struct._GdkDrawable*, %struct._GdkCursor*, i32) #1

declare void @gdk_window_raise(%struct._GdkDrawable*) #1

declare void @gtk_grab_remove(%struct._GtkWidget*) #1

declare void @gdk_display_pointer_ungrab(%struct._GdkDisplay*, i32) #1

declare void @gdk_flush() #1

declare %struct._GdkDrawable* @gdk_window_get_pointer(%struct._GdkDrawable*, i32*, i32*, i32*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gdk_draw_rgb_image(%struct._GdkDrawable*, %struct._GdkGC*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @repaint_sda(%struct._GtkWidget* %darea, %struct._GdkEventExpose* %event, i8* %data) #0 {
entry:
  %darea.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %data.addr = alloca i8*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  store %struct._GtkWidget* %darea, %struct._GtkWidget** %darea.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %darea.addr, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %0)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %darea.addr, align 8
  %call1 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %1)
  %2 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %white_gc = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %2, i32 0, i32 23
  %3 = load %struct._GdkGC*, %struct._GdkGC** %white_gc, align 8
  %4 = load i32, i32* @width, align 4
  %5 = load i32, i32* @height, align 4
  %6 = load i32, i32* @total_frames, align 4
  %cmp = icmp eq i32 %6, 1
  %cond = select i1 %cmp, i32 2, i32 1
  %7 = load i8*, i8** @shape_drawing_area_data, align 8
  %8 = load i32, i32* @width, align 4
  %mul = mul i32 %8, 3
  call void @gdk_draw_rgb_image(%struct._GdkDrawable* %call1, %struct._GdkGC* %3, i32 0, i32 0, i32 %4, i32 %5, i32 %cond, i8* %7, i32 %mul)
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare void @gimp_quit() #6

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_message(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_frame_disposal(i32 %whichframe) #0 {
entry:
  %whichframe.addr = alloca i32, align 4
  %disposal = alloca i32, align 4
  %layer_name = alloca i8*, align 8
  store i32 %whichframe, i32* %whichframe.addr, align 4
  %0 = load i32, i32* @total_frames, align 4
  %1 = load i32, i32* %whichframe.addr, align 4
  %add = add i32 %1, 1
  %sub = sub i32 %0, %add
  %idxprom = zext i32 %sub to i64
  %2 = load i32*, i32** @layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i8* @gimp_item_get_name(i32 %3)
  store i8* %call, i8** %layer_name, align 8
  %4 = load i8*, i8** %layer_name, align 8
  %call1 = call i32 @parse_disposal_tag(i8* %4)
  store i32 %call1, i32* %disposal, align 4
  %5 = load i8*, i8** %layer_name, align 8
  call void @g_free(i8* %5)
  %6 = load i32, i32* %disposal, align 4
  ret i32 %6
}

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @reshape_from_bitmap(i8* %bitmap) #0 {
entry:
  %bitmap.addr = alloca i8*, align 8
  %shape_mask = alloca %struct._GdkDrawable*, align 8
  store i8* %bitmap, i8** %bitmap.addr, align 8
  %0 = load i8*, i8** @reshape_from_bitmap.prev_bitmap, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** @reshape_from_bitmap.prev_bitmap, align 8
  %2 = load i8*, i8** %bitmap.addr, align 8
  %3 = load i32, i32* @width, align 4
  %4 = load i32, i32* @height, align 4
  %mul = mul i32 %3, %4
  %div = udiv i32 %mul, 8
  %5 = load i32, i32* @height, align 4
  %add = add i32 %div, %5
  %conv = zext i32 %add to i64
  %call = call i32 @memcmp(i8* %1, i8* %2, i64 %conv) #9
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end.15

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  %call2 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %6)
  %7 = load i8*, i8** %bitmap.addr, align 8
  %8 = load i32, i32* @width, align 4
  %9 = load i32, i32* @height, align 4
  %call3 = call %struct._GdkDrawable* @gdk_bitmap_create_from_data(%struct._GdkDrawable* %call2, i8* %7, i32 %8, i32 %9)
  store %struct._GdkDrawable* %call3, %struct._GdkDrawable** %shape_mask, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @shape_window, align 8
  %11 = load %struct._GdkDrawable*, %struct._GdkDrawable** %shape_mask, align 8
  call void @gtk_widget_shape_combine_mask(%struct._GtkWidget* %10, %struct._GdkDrawable* %11, i32 0, i32 0)
  %12 = load %struct._GdkDrawable*, %struct._GdkDrawable** %shape_mask, align 8
  %13 = bitcast %struct._GdkDrawable* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load i8*, i8** @reshape_from_bitmap.prev_bitmap, align 8
  %tobool4 = icmp ne i8* %14, null
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %15 = load i32, i32* @width, align 4
  %16 = load i32, i32* @height, align 4
  %mul6 = mul i32 %15, %16
  %div7 = udiv i32 %mul6, 8
  %17 = load i32, i32* @height, align 4
  %add8 = add i32 %div7, %17
  %conv9 = zext i32 %add8 to i64
  %call10 = call noalias i8* @g_malloc(i64 %conv9)
  store i8* %call10, i8** @reshape_from_bitmap.prev_bitmap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %18 = load i8*, i8** @reshape_from_bitmap.prev_bitmap, align 8
  %19 = load i8*, i8** %bitmap.addr, align 8
  %20 = load i32, i32* @width, align 4
  %21 = load i32, i32* @height, align 4
  %mul11 = mul i32 %20, %21
  %div12 = udiv i32 %mul11, 8
  %22 = load i32, i32* @height, align 4
  %add13 = add i32 %div12, %22
  %conv14 = zext i32 %add13 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 %conv14, i32 1, i1 false)
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %lor.lhs.false
  ret void
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_disposal_tag(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %rtn = alloca i32, align 4
  %dummy = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %call2 = call i32 @is_disposal_tag(i8* %arrayidx, i32* %rtn, i32* %dummy)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %rtn, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @is_disposal_tag(i8* %str, i32* %disposal, i32* %taglength) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %disposal.addr = alloca i32*, align 8
  %taglength.addr = alloca i32*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32* %disposal, i32** %disposal.addr, align 8
  store i32* %taglength, i32** %taglength.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %cmp = icmp ne i64 %call, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %call1 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i64 9) #9
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %2 = load i32*, i32** %taglength.addr, align 8
  store i32 9, i32* %2, align 4
  %3 = load i32*, i32** %disposal.addr, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %4 = load i8*, i8** %str.addr, align 8
  %call4 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i64 9) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  %5 = load i32*, i32** %taglength.addr, align 8
  store i32 9, i32* %5, align 4
  %6 = load i32*, i32** %disposal.addr, align 8
  store i32 2, i32* %6, align 4
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare %struct._GdkDrawable* @gdk_bitmap_create_from_data(%struct._GdkDrawable*, i8*, i32, i32) #1

declare void @gtk_widget_shape_combine_mask(%struct._GtkWidget*, %struct._GdkDrawable*, i32, i32) #1

declare void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_progress_bar_get_type() #3

declare void @gtk_progress_bar_set_text(%struct._GtkProgressBar*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
