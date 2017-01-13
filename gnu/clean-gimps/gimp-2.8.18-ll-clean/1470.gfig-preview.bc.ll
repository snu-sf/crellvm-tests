; ModuleID = './plug-ins/gfig/gfig-preview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GFigContext = type { i32, i32, i32, i32, %struct._GFigObj*, %struct._GfigObject*, %struct._GtkWidget*, %struct._Style, %struct.BrushDesc, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpRGB*, %struct._GimpRGB*, i32, i32 }
%struct._GFigObj = type { i8*, i8*, i8*, float, %struct.GfigOpts, %struct._GList*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct.GfigOpts = type { i32, i32, i32, i32, i32, i32, double, double, double, double, i32 }
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
%struct.SelectItVals = type { %struct.GfigOpts, i32, i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, i32 }
%struct._GdkPixbuf = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpRuler = type { %struct._GtkWidget }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GtkArg = type opaque
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkEventScroll = type { i32, %struct._GdkDrawable*, i8, i32, double, double, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkEventConfigure = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32 }
%struct._GdkEventFocus = type { i32, %struct._GdkDrawable*, i8, i16 }
%struct._GdkEventProperty = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i32, i32 }
%struct._GdkAtom = type opaque
%struct._GdkEventSelection = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i32 }
%struct._GdkEventProximity = type { i32, %struct._GdkDrawable*, i8, i32, %struct._GdkDevice* }
%struct._GdkEventVisibility = type { i32, %struct._GdkDrawable*, i8, i32 }
%struct._GdkEventClient = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i16, %union.anon.0 }
%union.anon.0 = type { [5 x i64] }
%struct._GdkEventAny = type { i32, %struct._GdkDrawable*, i8 }
%struct._GdkEventWindowState = type { i32, %struct._GdkDrawable*, i8, i32, i32 }
%struct._GtkSelectionData = type { %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i8*, i32, %struct._GdkDisplay* }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GdkCursor = type { i32, i32 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque

@gfig_context = external global %struct.GFigContext*, align 8
@.str = private unnamed_addr constant [8 x i8] c"realize\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@preview_width = external global i32, align 4
@preview_height = external global i32, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@selvals = external global %struct.SelectItVals, align 8
@pos_label = internal global %struct._GtkWidget* null, align 8
@status_label_dname = global %struct._GtkWidget* null, align 8
@status_label_fname = global %struct._GtkWidget* null, align 8
@obj_creating = external global %struct._GfigObject*, align 8
@back_pixbuf = external global %struct._GdkPixbuf*, align 8
@gfig_preview_events.tmp_show_single = internal global i32 0, align 4
@need_to_scale = external global i32, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"gfig-preview.c\00", align 1
@__func__.gfig_preview_events = private unnamed_addr constant [20 x i8] c"gfig_preview_events\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"need_to_scale == 0\00", align 1
@obj_show_single = external global i32, align 4
@scale_x_factor = external global double, align 8
@scale_y_factor = external global double, align 8
@x_pos_val = internal global i32 0, align 4
@y_pos_val = internal global i32 0, align 4
@pos_tag = internal global i32 -1, align 4
@gfig_pos_update_labels.buf = internal global [256 x i8] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [7 x i8] c"%d, %d\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Object Details\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"XY position:\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @make_preview() #0 {
entry:
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %ruler = alloca %struct._GtkWidget*, align 8
  %call = call %struct._GtkWidget* @gtk_drawing_area_new()
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 6
  store %struct._GtkWidget* %call, %struct._GtkWidget** %preview, align 8
  %1 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview1 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %1, i32 0, i32 6
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %preview1, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  call void @gtk_widget_set_events(%struct._GtkWidget* %4, i32 3862)
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview4 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 6
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %preview4, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gfig_preview_realize to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %8 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview6 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %8, i32 0, i32 6
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %preview6, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @gfig_preview_events to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %11 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview8 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %11, i32 0, i32 6
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %preview8, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @gfig_preview_expose to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 1)
  %14 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview10 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %14, i32 0, i32 6
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %preview10, align 8
  %16 = load i32, i32* @preview_width, align 4
  %17 = load i32, i32* @preview_height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %15, i32 %16, i32 %17)
  %call11 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %frame, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_frame_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call12)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %20, i32 1)
  %call14 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %table, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_table_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTable*
  %24 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview17 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %24, i32 0, i32 6
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %preview17, align 8
  call void @gtk_table_attach(%struct._GtkTable* %23, %struct._GtkWidget* %25, i32 1, i32 2, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_container_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkContainer*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %28, %struct._GtkWidget* %29)
  %call20 = call %struct._GtkWidget* @gimp_ruler_new(i32 0)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %ruler, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_ruler_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call21)
  %32 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpRuler*
  %33 = load i32, i32* @preview_width, align 4
  %conv = sitofp i32 %33 to double
  call void @gimp_ruler_set_range(%struct._GimpRuler* %32, double 0.000000e+00, double %conv, double 4.000000e+02)
  %34 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview23 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %34, i32 0, i32 6
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %preview23, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %40 = bitcast %struct._GTypeClass* %39 to %struct._GObjectClass*
  %41 = bitcast %struct._GObjectClass* %40 to %struct._GTypeClass*
  %call24 = call i64 @gtk_widget_get_type() #5
  %call25 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %41, i64 %call24)
  %42 = bitcast %struct._GTypeClass* %call25 to %struct._GtkWidgetClass*
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %42, i32 0, i32 28
  %43 = load i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %44 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* %43 to void ()*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), void ()* %44, i8* %46, void (i8*, %struct._GClosure*)* null, i32 2)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_table_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call27)
  %49 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTable*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  call void @gtk_table_attach(%struct._GtkTable* %49, %struct._GtkWidget* %50, i32 1, i32 2, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %call29 = call %struct._GtkWidget* @gimp_ruler_new(i32 1)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %ruler, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_ruler_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call30)
  %54 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpRuler*
  %55 = load i32, i32* @preview_height, align 4
  %conv32 = sitofp i32 %55 to double
  call void @gimp_ruler_set_range(%struct._GimpRuler* %54, double 0.000000e+00, double %conv32, double 4.000000e+02)
  %56 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview33 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %56, i32 0, i32 6
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %preview33, align 8
  %58 = bitcast %struct._GtkWidget* %57 to i8*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %60, i32 0, i32 0
  %61 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %62 = bitcast %struct._GTypeClass* %61 to %struct._GObjectClass*
  %63 = bitcast %struct._GObjectClass* %62 to %struct._GTypeClass*
  %call35 = call i64 @gtk_widget_get_type() #5
  %call36 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %63, i64 %call35)
  %64 = bitcast %struct._GTypeClass* %call36 to %struct._GtkWidgetClass*
  %motion_notify_event37 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %64, i32 0, i32 28
  %65 = load i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event37, align 8
  %66 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* %65 to void ()*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), void ()* %66, i8* %68, void (i8*, %struct._GClosure*)* null, i32 2)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_table_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call39)
  %71 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTable*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  call void @gtk_table_attach(%struct._GtkTable* %71, %struct._GtkWidget* %72, i32 0, i32 1, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %call41 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %vbox, align 8
  %call42 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %hbox, align 8
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_box_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call43)
  %78 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkBox*
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %78, %struct._GtkWidget* %79, i32 0, i32 0, i32 0)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_box_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call45)
  %82 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkBox*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %82, %struct._GtkWidget* %83, i32 0, i32 0, i32 0)
  %call47 = call %struct._GtkWidget* @make_pos_info()
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %frame, align 8
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_box_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call48)
  %86 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkBox*
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %86, %struct._GtkWidget* %87, i32 1, i32 1, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %89)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %90
}

declare %struct._GtkWidget* @gtk_drawing_area_new() #1

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gfig_preview_realize(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %0)
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %1 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %1, i32 0, i32 6
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %call1 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %2)
  %3 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call2 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %3, i32 34)
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call1, %struct._GdkCursor* %call2)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gfig_grid_colours(%struct._GtkWidget* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gfig_preview_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  %point = alloca %struct._GdkPoint, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.1
    i32 7, label %sw.bb.36
    i32 3, label %sw.bb.71
    i32 8, label %sw.bb.105
    i32 9, label %sw.bb.110
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %3 = bitcast %union._GdkEvent* %2 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %3, %struct._GdkEventButton** %bevent, align 8
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 4
  %5 = load double, double* %x, align 8
  %conv = fptosi double %5 to i32
  %x2 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 0
  store i32 %conv, i32* %x2, align 4
  %6 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %6, i32 0, i32 5
  %7 = load double, double* %y, align 8
  %conv3 = fptosi double %7 to i32
  %y4 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 1
  store i32 %conv3, i32* %y4, align 4
  br label %do.body

do.body:                                          ; preds = %sw.bb.1
  %8 = load i32, i32* @need_to_scale, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 205, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gfig_preview_events, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  %cmp6 = icmp uge i32 %9, 11
  br i1 %cmp6, label %if.then.8, label %if.else.23

if.then.8:                                        ; preds = %do.end
  %10 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.15, label %if.then.9

if.then.9:                                        ; preds = %if.then.8
  %x10 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 0
  %11 = load i32, i32* %x10, align 4
  %call = call i32 @gfig_invscale_x(i32 %11)
  %x11 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 0
  store i32 %call, i32* %x11, align 4
  %y12 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 1
  %12 = load i32, i32* %y12, align 4
  %call13 = call i32 @gfig_invscale_y(i32 %12)
  %y14 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 1
  store i32 %call13, i32* %y14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.9, %if.then.8
  %13 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %13, i32 0, i32 7
  %14 = load i32, i32* %state, align 4
  %and = and i32 %14, 1
  call void @object_operation_start(%struct._GdkPoint* %point, i32 %and)
  %15 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 3), align 4
  %tobool16 = icmp ne i32 %15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.15
  %16 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %16, i32 0, i32 8
  %17 = load i32, i32* %button, align 4
  %cmp18 = icmp eq i32 %17, 3
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.17
  call void @find_grid_pos(%struct._GdkPoint* %point, %struct._GdkPoint* %point, i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.15
  br label %if.end.35

if.else.23:                                       ; preds = %do.end
  %18 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 3), align 4
  %tobool24 = icmp ne i32 %18, 0
  br i1 %tobool24, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %if.else.23
  %19 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button26 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %19, i32 0, i32 8
  %20 = load i32, i32* %button26, align 4
  %cmp27 = icmp eq i32 %20, 3
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.then.25
  call void @find_grid_pos(%struct._GdkPoint* %point, %struct._GdkPoint* %point, i32 0)
  br label %if.end.31

if.else.30:                                       ; preds = %if.then.25
  call void @find_grid_pos(%struct._GdkPoint* %point, %struct._GdkPoint* %point, i32 0)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.else.23
  %21 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %state33 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %21, i32 0, i32 7
  %22 = load i32, i32* %state33, align 4
  %and34 = and i32 %22, 1
  call void @object_start(%struct._GdkPoint* %point, i32 %and34)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %23)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %if.end.22
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %24 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %25 = bitcast %union._GdkEvent* %24 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %25, %struct._GdkEventButton** %bevent, align 8
  %26 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x37 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %26, i32 0, i32 4
  %27 = load double, double* %x37, align 8
  %conv38 = fptosi double %27 to i32
  %x39 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 0
  store i32 %conv38, i32* %x39, align 4
  %28 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %y40 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %28, i32 0, i32 5
  %29 = load double, double* %y40, align 8
  %conv41 = fptosi double %29 to i32
  %y42 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 1
  store i32 %conv41, i32* %y42, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 3), align 4
  %tobool43 = icmp ne i32 %30, 0
  br i1 %tobool43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %sw.bb.36
  %31 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button45 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %31, i32 0, i32 8
  %32 = load i32, i32* %button45, align 4
  %cmp46 = icmp eq i32 %32, 3
  %conv47 = zext i1 %cmp46 to i32
  call void @find_grid_pos(%struct._GdkPoint* %point, %struct._GdkPoint* %point, i32 %conv47)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %sw.bb.36
  %33 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  %cmp49 = icmp uge i32 %33, 11
  br i1 %cmp49, label %if.then.51, label %if.else.63

if.then.51:                                       ; preds = %if.end.48
  %34 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool52 = icmp ne i32 %34, 0
  br i1 %tobool52, label %if.end.60, label %if.then.53

if.then.53:                                       ; preds = %if.then.51
  %x54 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 0
  %35 = load i32, i32* %x54, align 4
  %call55 = call i32 @gfig_invscale_x(i32 %35)
  %x56 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 0
  store i32 %call55, i32* %x56, align 4
  %y57 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 1
  %36 = load i32, i32* %y57, align 4
  %call58 = call i32 @gfig_invscale_y(i32 %36)
  %y59 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 1
  store i32 %call58, i32* %y59, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.53, %if.then.51
  %37 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %state61 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %37, i32 0, i32 7
  %38 = load i32, i32* %state61, align 4
  %and62 = and i32 %38, 1
  call void @object_operation_end(%struct._GdkPoint* %point, i32 %and62)
  br label %if.end.70

if.else.63:                                       ; preds = %if.end.48
  %39 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %tobool64 = icmp ne %struct._GfigObject* %39, null
  br i1 %tobool64, label %if.then.65, label %if.else.68

if.then.65:                                       ; preds = %if.else.63
  %40 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %state66 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %40, i32 0, i32 7
  %41 = load i32, i32* %state66, align 4
  %and67 = and i32 %41, 1
  call void @object_end(%struct._GdkPoint* %point, i32 %and67)
  br label %if.end.69

if.else.68:                                       ; preds = %if.else.63
  br label %sw.epilog

if.end.69:                                        ; preds = %if.then.65
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.60
  call void @gfig_paint_callback()
  br label %sw.epilog

sw.bb.71:                                         ; preds = %entry
  %42 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %43 = bitcast %union._GdkEvent* %42 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %43, %struct._GdkEventMotion** %mevent, align 8
  %44 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x72 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %44, i32 0, i32 4
  %45 = load double, double* %x72, align 8
  %conv73 = fptosi double %45 to i32
  %x74 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 0
  store i32 %conv73, i32* %x74, align 4
  %46 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y75 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %46, i32 0, i32 5
  %47 = load double, double* %y75, align 8
  %conv76 = fptosi double %47 to i32
  %y77 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 1
  store i32 %conv76, i32* %y77, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 3), align 4
  %tobool78 = icmp ne i32 %48, 0
  br i1 %tobool78, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %sw.bb.71
  %49 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %state80 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %49, i32 0, i32 7
  %50 = load i32, i32* %state80, align 4
  %and81 = and i32 %50, 1024
  call void @find_grid_pos(%struct._GdkPoint* %point, %struct._GdkPoint* %point, i32 %and81)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %sw.bb.71
  %51 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 14), align 4
  %cmp83 = icmp uge i32 %51, 11
  br i1 %cmp83, label %if.then.85, label %if.end.99

if.then.85:                                       ; preds = %if.end.82
  %52 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool86 = icmp ne i32 %52, 0
  br i1 %tobool86, label %if.end.94, label %if.then.87

if.then.87:                                       ; preds = %if.then.85
  %x88 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 0
  %53 = load i32, i32* %x88, align 4
  %call89 = call i32 @gfig_invscale_x(i32 %53)
  %x90 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 0
  store i32 %call89, i32* %x90, align 4
  %y91 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 1
  %54 = load i32, i32* %y91, align 4
  %call92 = call i32 @gfig_invscale_y(i32 %54)
  %y93 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 1
  store i32 %call92, i32* %y93, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.87, %if.then.85
  %55 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %state95 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %55, i32 0, i32 7
  %56 = load i32, i32* %state95, align 4
  %and96 = and i32 %56, 1
  call void @object_operation(%struct._GdkPoint* %point, i32 %and96)
  %x97 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 0
  %57 = load i32, i32* %x97, align 4
  %y98 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 1
  %58 = load i32, i32* %y98, align 4
  call void @gfig_pos_update(i32 %57, i32 %58)
  store i32 0, i32* %retval
  br label %return

if.end.99:                                        ; preds = %if.end.82
  %59 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %tobool100 = icmp ne %struct._GfigObject* %59, null
  br i1 %tobool100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.99
  %60 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %class = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %60, i32 0, i32 1
  %61 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %update = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %61, i32 0, i32 5
  %62 = load void (%struct._GdkPoint*)*, void (%struct._GdkPoint*)** %update, align 8
  call void %62(%struct._GdkPoint* %point)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %63)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %if.end.99
  %x103 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 0
  %64 = load i32, i32* %x103, align 4
  %y104 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %point, i32 0, i32 1
  %65 = load i32, i32* %y104, align 4
  call void @gfig_pos_update(i32 %64, i32 %65)
  br label %sw.epilog

sw.bb.105:                                        ; preds = %entry
  %66 = load i32, i32* @obj_show_single, align 4
  store i32 %66, i32* @gfig_preview_events.tmp_show_single, align 4
  %cmp106 = icmp ne i32 %66, -1
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %sw.bb.105
  store i32 -1, i32* @obj_show_single, align 4
  call void @draw_grid_clear()
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %sw.bb.105
  br label %sw.epilog

sw.bb.110:                                        ; preds = %entry
  %67 = load i32, i32* @gfig_preview_events.tmp_show_single, align 4
  %cmp111 = icmp ne i32 %67, -1
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %sw.bb.110
  %68 = load i32, i32* @gfig_preview_events.tmp_show_single, align 4
  store i32 %68, i32* @obj_show_single, align 4
  call void @draw_grid_clear()
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %sw.bb.110
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.114, %if.end.109, %if.end.102, %if.end.70, %if.else.68, %if.end.35, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.94
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i32 @gfig_preview_expose(%struct._GtkWidget* %widget, %union._GdkEvent* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %cr = alloca %struct._cairo*, align 8
  %single = alloca %struct._GList*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %expose = bitcast %union._GdkEvent* %0 to %struct._GdkEventExpose*
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %expose, i32 0, i32 1
  %1 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %1)
  store %struct._cairo* %call, %struct._cairo** %cr, align 8
  %2 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %show_background = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %2, i32 0, i32 1
  %3 = load i32, i32* %show_background, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @draw_background(%struct._cairo* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @draw_grid(%struct._cairo* %5)
  %6 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %6, i32 0, i32 4
  %7 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %7, i32 0, i32 5
  %8 = load %struct._GList*, %struct._GList** %obj_list, align 8
  %9 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @draw_objects(%struct._GList* %8, i32 1, %struct._cairo* %9)
  %10 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %tobool1 = icmp ne %struct._GfigObject* %10, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %11 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %12 = bitcast %struct._GfigObject* %11 to i8*
  %call3 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %12)
  store %struct._GList* %call3, %struct._GList** %single, align 8
  %13 = load %struct._GList*, %struct._GList** %single, align 8
  %14 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @draw_objects(%struct._GList* %13, i32 1, %struct._cairo* %14)
  %15 = load %struct._GList*, %struct._GList** %single, align 8
  call void @g_list_free(%struct._GList* %15)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %16)
  ret i32 0
}

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gimp_ruler_new(i32) #1

declare void @gimp_ruler_set_range(%struct._GimpRuler*, double, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_ruler_get_type() #2

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @make_pos_info() #0 {
entry:
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #7
  %call1 = call %struct._GtkWidget* @gimp_frame_new(i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %frame, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %hbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_box_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %2, i32 1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %5, %struct._GtkWidget* %6)
  %call7 = call %struct._GtkWidget* @gfig_pos_labels()
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %label, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call8)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %10, i32 1, i32 1, i32 0)
  call void @gfig_pos_enable(%struct._GtkWidget* null, i8* null)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %13
}

; Function Attrs: nounwind uwtable
define void @gfig_pos_enable(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %enable = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 3), align 4
  store i32 %0, i32* %enable, align 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @pos_label, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %4 = load i32, i32* %enable, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %3, i32 %4)
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare void @gfig_grid_colours(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

; Function Attrs: nounwind uwtable
define internal void @draw_background(%struct._cairo* %cr) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** @back_pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %1, i32 0, i32 2
  %2 = load i32, i32* %image_id, align 4
  %3 = load i32, i32* @preview_width, align 4
  %4 = load i32, i32* @preview_height, align 4
  %call = call %struct._GdkPixbuf* @gimp_image_get_thumbnail(i32 %2, i32 %3, i32 %4, i32 2)
  store %struct._GdkPixbuf* %call, %struct._GdkPixbuf** @back_pixbuf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** @back_pixbuf, align 8
  %tobool1 = icmp ne %struct._GdkPixbuf* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %7 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** @back_pixbuf, align 8
  call void @gdk_cairo_set_source_pixbuf(%struct._cairo* %6, %struct._GdkPixbuf* %7, double 0.000000e+00, double 0.000000e+00)
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_paint(%struct._cairo* %8)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

declare void @draw_grid(%struct._cairo*) #1

declare void @draw_objects(%struct._GList*, i32, %struct._cairo*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare %struct._GdkPixbuf* @gimp_image_get_thumbnail(i32, i32, i32, i32) #1

declare void @gdk_cairo_set_source_pixbuf(%struct._cairo*, %struct._GdkPixbuf*, double, double) #1

declare void @cairo_paint(%struct._cairo*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gfig_invscale_x(i32 %x) #0 {
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
  %mul = fmul double %conv, %2
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
define internal i32 @gfig_invscale_y(i32 %y) #0 {
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
  %mul = fmul double %conv, %2
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

declare void @object_operation_start(%struct._GdkPoint*, i32) #1

declare void @find_grid_pos(%struct._GdkPoint*, %struct._GdkPoint*, i32) #1

declare void @object_start(%struct._GdkPoint*, i32) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare void @object_operation_end(%struct._GdkPoint*, i32) #1

declare void @object_end(%struct._GdkPoint*, i32) #1

declare void @gfig_paint_callback() #1

declare void @object_operation(%struct._GdkPoint*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gfig_pos_update(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* @x_pos_val, align 4
  %1 = load i32, i32* %x.addr, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @y_pos_val, align 4
  %3 = load i32, i32* %y.addr, align 4
  %cmp1 = icmp ne i32 %2, %3
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* @pos_tag, align 4
  %cmp2 = icmp eq i32 %4, -1
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 3), align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %6 = load i32, i32* %x.addr, align 4
  store i32 %6, i32* @x_pos_val, align 4
  %7 = load i32, i32* %y.addr, align 4
  store i32 %7, i32* @y_pos_val, align 4
  call void @gfig_pos_update_labels(i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.3, %land.lhs.true, %lor.lhs.false
  ret void
}

declare void @draw_grid_clear() #1

; Function Attrs: nounwind uwtable
define internal void @gfig_pos_update_labels(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 -1, i32* @pos_tag, align 4
  %0 = load i32, i32* @x_pos_val, align 4
  %1 = load i32, i32* @y_pos_val, align 4
  %call = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @gfig_pos_update_labels.buf, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %0, i32 %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @pos_label, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_label_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %4, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @gfig_pos_update_labels.buf, i32 0, i32 0))
  ret void
}

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gfig_pos_labels() #0 {
entry:
  %label = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %buf = alloca [256 x i8], align 16
  %call = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %hbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %0)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)) #7
  %call2 = call %struct._GtkWidget* @gtk_label_new(i8* %call1)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %label, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_box_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call3)
  %3 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBox*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %3, %struct._GtkWidget* %4, i32 0, i32 0, i32 0)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %5)
  %call5 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GtkWidget* %call5, %struct._GtkWidget** @pos_label, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @pos_label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 0, i32 0, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @pos_label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call8 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 0)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** @pos_label, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_label_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkLabel*
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %13, i8* %arraydecay11)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  ret %struct._GtkWidget* %14
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
