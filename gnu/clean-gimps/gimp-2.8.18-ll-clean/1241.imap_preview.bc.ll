; ModuleID = './plug-ins/imagemap/imap_preview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, {}*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, {}*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
%struct.AreaInfoDialog_t = type { %struct.DefaultDialog_t*, %struct.Object_t*, %struct.Object_t*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8* }
%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
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
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct.Preview_t = type { %struct._GimpDrawable*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32, i32, %struct._GimpPixelRgn, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkCursor = type { i32, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GtkArg = type opaque
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
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
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandClass_t = type { {}*, i32 (%struct.Command_t*)*, {}*, {}* }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct._GimpRuler = type { %struct._GtkWidget }
%struct.MapInfo_t = type { i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }

@_tmp_obj = internal global %struct.Object_t* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"preview\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@target_table = internal constant [2 x %struct._GtkTargetEntry] [%struct._GtkTargetEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 1 }, %struct._GtkTargetEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 2 }], align 16
@.str.3 = private unnamed_addr constant [19 x i8] c"drag-data-received\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1

; Function Attrs: nounwind uwtable
define i32 @preview_get_width(%struct._GtkWidget* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %call = call %struct.Preview_t* @preview_user_data(%struct._GtkWidget* %0)
  %width = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %call, i32 0, i32 5
  %1 = load i32, i32* %width, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal %struct.Preview_t* @preview_user_data(%struct._GtkWidget* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct.Preview_t*
  ret %struct.Preview_t* %3
}

; Function Attrs: nounwind uwtable
define i32 @preview_get_height(%struct._GtkWidget* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %call = call %struct.Preview_t* @preview_user_data(%struct._GtkWidget* %0)
  %height = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %call, i32 0, i32 6
  %1 = load i32, i32* %height, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @preview_set_tmp_obj(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  store %struct.Object_t* %0, %struct.Object_t** @_tmp_obj, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @preview_unset_tmp_obj(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** @_tmp_obj, align 8
  %1 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %cmp = icmp eq %struct.Object_t* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.Object_t* null, %struct.Object_t** @_tmp_obj, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @preview_zoom(%struct.Preview_t* %preview, i32 %zoom_factor) #0 {
entry:
  %preview.addr = alloca %struct.Preview_t*, align 8
  %zoom_factor.addr = alloca i32, align 4
  store %struct.Preview_t* %preview, %struct.Preview_t** %preview.addr, align 8
  store i32 %zoom_factor, i32* %zoom_factor.addr, align 4
  %0 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %width = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %0, i32 0, i32 5
  %1 = load i32, i32* %width, align 4
  %2 = load i32, i32* %zoom_factor.addr, align 4
  %mul = mul nsw i32 %1, %2
  %3 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %widget_width = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %3, i32 0, i32 7
  store i32 %mul, i32* %widget_width, align 4
  %4 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %height = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %4, i32 0, i32 6
  %5 = load i32, i32* %height, align 4
  %6 = load i32, i32* %zoom_factor.addr, align 4
  %mul1 = mul nsw i32 %5, %6
  %7 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %widget_height = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %7, i32 0, i32 8
  store i32 %mul1, i32* %widget_height, align 4
  %8 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %preview2 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %8, i32 0, i32 2
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %preview2, align 8
  %10 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %widget_width3 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %10, i32 0, i32 7
  %11 = load i32, i32* %widget_width3, align 4
  %12 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %widget_height4 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %12, i32 0, i32 8
  %13 = load i32, i32* %widget_height4, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %9, i32 %11, i32 %13)
  %14 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %window = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %14, i32 0, i32 1
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %15)
  %16 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %17 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %src_rgn = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %17, i32 0, i32 9
  call void @render_preview(%struct.Preview_t* %16, %struct._GimpPixelRgn* %src_rgn)
  call void @preview_redraw()
  ret void
}

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_queue_resize(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @render_preview(%struct.Preview_t* %preview_base, %struct._GimpPixelRgn* %srcrgn) #0 {
entry:
  %preview_base.addr = alloca %struct.Preview_t*, align 8
  %srcrgn.addr = alloca %struct._GimpPixelRgn*, align 8
  store %struct.Preview_t* %preview_base, %struct.Preview_t** %preview_base.addr, align 8
  store %struct._GimpPixelRgn* %srcrgn, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %0, i32 0, i32 1
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_type(i32 %2)
  switch i32 %call, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.2
    i32 5, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  %3 = load %struct.Preview_t*, %struct.Preview_t** %preview_base.addr, align 8
  %4 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  call void @render_rgb_image(%struct.Preview_t* %3, %struct._GimpPixelRgn* %4)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  %5 = load %struct.Preview_t*, %struct.Preview_t** %preview_base.addr, align 8
  %6 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  call void @render_gray_image(%struct.Preview_t* %5, %struct._GimpPixelRgn* %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry, %entry
  %7 = load %struct.Preview_t*, %struct.Preview_t** %preview_base.addr, align 8
  %8 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  call void @render_indexed_image(%struct.Preview_t* %7, %struct._GimpPixelRgn* %8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

declare void @preview_redraw() #1

; Function Attrs: nounwind uwtable
define i32 @preview_set_cursor(%struct.Preview_t* %preview, i32 %cursor_type) #0 {
entry:
  %preview.addr = alloca %struct.Preview_t*, align 8
  %cursor_type.addr = alloca i32, align 4
  %prev_cursor = alloca i32, align 4
  %display = alloca %struct._GdkDisplay*, align 8
  %cursor1 = alloca %struct._GdkCursor*, align 8
  store %struct.Preview_t* %preview, %struct.Preview_t** %preview.addr, align 8
  store i32 %cursor_type, i32* %cursor_type.addr, align 4
  %0 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %cursor = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %0, i32 0, i32 10
  %1 = load i32, i32* %cursor, align 4
  store i32 %1, i32* %prev_cursor, align 4
  %2 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %window = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %2, i32 0, i32 1
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %3)
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %4 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %5 = load i32, i32* %cursor_type.addr, align 4
  %call2 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %4, i32 %5)
  store %struct._GdkCursor* %call2, %struct._GdkCursor** %cursor1, align 8
  %6 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %window3 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %6, i32 0, i32 1
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %window3, align 8
  %call4 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %7)
  %8 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor1, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call4, %struct._GdkCursor* %8)
  %9 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor1, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %9)
  %10 = load i32, i32* %cursor_type.addr, align 4
  %11 = load %struct.Preview_t*, %struct.Preview_t** %preview.addr, align 8
  %cursor5 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %11, i32 0, i32 10
  store i32 %10, i32* %cursor5, align 4
  %12 = load i32, i32* %prev_cursor, align 4
  ret i32 %12
}

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

; Function Attrs: nounwind uwtable
define %struct.Preview_t* @make_preview(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %data = alloca %struct.Preview_t*, align 8
  %hadj = alloca %struct._GtkAdjustment*, align 8
  %vadj = alloca %struct._GtkAdjustment*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %window = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %arrow = alloca %struct._GtkWidget*, align 8
  %ruler = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %scrollbar = alloca %struct._GtkWidget*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 112)
  %0 = bitcast i8* %call to %struct.Preview_t*
  store %struct.Preview_t* %0, %struct.Preview_t** %data, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %2 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %drawable1 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %2, i32 0, i32 0
  store %struct._GimpDrawable* %1, %struct._GimpDrawable** %drawable1, align 8
  %call2 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %preview, align 8
  %3 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %preview3 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %3, i32 0, i32 2
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %preview3, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %7 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %8 = bitcast %struct.Preview_t* %7 to i8*
  call void @g_object_set_data(%struct._GObject* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #3
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  call void @gtk_widget_set_events(%struct._GtkWidget* %11, i32 16150)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %15 = bitcast %struct.Preview_t* %14 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @preview_expose to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 1)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  %18 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %19 = bitcast %struct.Preview_t* %18 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*, i8*)* @preview_size_allocate to void ()*), i8* %19, void (i8*, %struct._GClosure*)* null, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_drag_dest_set(%struct._GtkWidget* %20, i32 7, %struct._GtkTargetEntry* getelementptr inbounds ([2 x %struct._GtkTargetEntry], [2 x %struct._GtkTargetEntry]* @target_table, i32 0, i32 0), i32 2, i32 2)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)* @handle_drop to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 0
  %24 = load i32, i32* %drawable_id, align 4
  %call10 = call i32 @gimp_drawable_width(i32 %24)
  %25 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %width11 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %25, i32 0, i32 5
  store i32 %call10, i32* %width11, align 4
  %26 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %widget_width = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %26, i32 0, i32 7
  store i32 %call10, i32* %widget_width, align 4
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 0
  %28 = load i32, i32* %drawable_id12, align 4
  %call13 = call i32 @gimp_drawable_height(i32 %28)
  %29 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %height14 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %29, i32 0, i32 6
  store i32 %call13, i32* %height14, align 4
  %30 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %widget_height = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %30, i32 0, i32 8
  store i32 %call13, i32* %widget_height, align 4
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %32 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %widget_width15 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %32, i32 0, i32 7
  %33 = load i32, i32* %widget_width15, align 4
  %34 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %widget_height16 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %34, i32 0, i32 8
  %35 = load i32, i32* %widget_height16, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %31, i32 %33, i32 %35)
  %call17 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %table, align 8
  %36 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %window18 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %36, i32 0, i32 1
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %window18, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #3
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call19)
  %39 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %39, i32 1)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #3
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call21)
  %42 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %42, i32 1)
  %call23 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %button, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %43, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #3
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call24)
  %46 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach(%struct._GtkTable* %46, %struct._GtkWidget* %47, i32 0, i32 1, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %48, i32 768)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %50 = bitcast %struct._GtkWidget* %49 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* @arrow_cb to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %call27 = call %struct._GtkWidget* @gtk_arrow_new(i32 3, i32 2)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %arrow, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_container_get_type() #3
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call28)
  %54 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkContainer*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %arrow, align 8
  call void @gtk_container_add(%struct._GtkContainer* %54, %struct._GtkWidget* %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %arrow, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  %call30 = call %struct._GtkWidget* @gimp_ruler_new(i32 0)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %ruler, align 8
  %57 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %hruler = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %57, i32 0, i32 3
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %hruler, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %61, i32 0, i32 0
  %62 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %63 = bitcast %struct._GTypeClass* %62 to %struct._GtkWidgetClass*
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %63, i32 0, i32 28
  %64 = load i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %65 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* %64 to void ()*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  %67 = bitcast %struct._GtkWidget* %66 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), void ()* %65, i8* %67, void (i8*, %struct._GClosure*)* null, i32 2)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #3
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call32)
  %70 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  call void @gtk_table_attach(%struct._GtkTable* %70, %struct._GtkWidget* %71, i32 1, i32 2, i32 0, i32 1, i32 7, i32 4, i32 0, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %call34 = call %struct._GtkWidget* @gimp_ruler_new(i32 1)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %ruler, align 8
  %73 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %vruler = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %73, i32 0, i32 4
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %vruler, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %75 = bitcast %struct._GtkWidget* %74 to i8*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %77, i32 0, i32 0
  %78 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %79 = bitcast %struct._GTypeClass* %78 to %struct._GtkWidgetClass*
  %motion_notify_event36 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %79, i32 0, i32 28
  %80 = load i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event36, align 8
  %81 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* %80 to void ()*
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  %83 = bitcast %struct._GtkWidget* %82 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), void ()* %81, i8* %83, void (i8*, %struct._GClosure*)* null, i32 2)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_table_get_type() #3
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call38)
  %86 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkTable*
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  call void @gtk_table_attach(%struct._GtkTable* %86, %struct._GtkWidget* %87, i32 0, i32 1, i32 1, i32 2, i32 4, i32 7, i32 0, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %88)
  %call40 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %window, align 8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_scrolled_window_get_type() #3
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call41)
  %91 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %91, i32 2, i32 2)
  %92 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %width43 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %92, i32 0, i32 5
  %93 = load i32, i32* %width43, align 4
  %cmp = icmp sgt i32 %93, 600
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %94 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %width44 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %94, i32 0, i32 5
  %95 = load i32, i32* %width44, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 600, %cond.true ], [ %95, %cond.false ]
  store i32 %cond, i32* %width, align 4
  %96 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %height45 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %96, i32 0, i32 6
  %97 = load i32, i32* %height45, align 4
  %cmp46 = icmp sgt i32 %97, 400
  br i1 %cmp46, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.end
  br label %cond.end.50

cond.false.48:                                    ; preds = %cond.end
  %98 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %height49 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %98, i32 0, i32 6
  %99 = load i32, i32* %height49, align 4
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.48, %cond.true.47
  %cond51 = phi i32 [ 400, %cond.true.47 ], [ %99, %cond.false.48 ]
  store i32 %cond51, i32* %height, align 4
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %101 = load i32, i32* %width, align 4
  %102 = load i32, i32* %height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %100, i32 %101, i32 %102)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_table_get_type() #3
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call52)
  %105 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkTable*
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_table_attach(%struct._GtkTable* %105, %struct._GtkWidget* %106, i32 1, i32 2, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %107)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_scrolled_window_get_type() #3
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call54)
  %110 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkScrolledWindow*
  %call56 = call %struct._GtkAdjustment* @gtk_scrolled_window_get_hadjustment(%struct._GtkScrolledWindow* %110)
  store %struct._GtkAdjustment* %call56, %struct._GtkAdjustment** %hadj, align 8
  %111 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %112 = bitcast %struct._GtkAdjustment* %111 to i8*
  %113 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %hruler57 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %113, i32 0, i32 3
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %hruler57, align 8
  %115 = bitcast %struct._GtkWidget* %114 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpRuler*)* @scroll_adj_changed to void ()*), i8* %115, void (i8*, %struct._GClosure*)* null, i32 0)
  %116 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %117 = bitcast %struct._GtkAdjustment* %116 to i8*
  %118 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %hruler59 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %118, i32 0, i32 3
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %hruler59, align 8
  %120 = bitcast %struct._GtkWidget* %119 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpRuler*)* @scroll_adj_changed to void ()*), i8* %120, void (i8*, %struct._GClosure*)* null, i32 0)
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_scrolled_window_get_type() #3
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call61)
  %123 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkScrolledWindow*
  %call63 = call %struct._GtkAdjustment* @gtk_scrolled_window_get_vadjustment(%struct._GtkScrolledWindow* %123)
  store %struct._GtkAdjustment* %call63, %struct._GtkAdjustment** %vadj, align 8
  %124 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %125 = bitcast %struct._GtkAdjustment* %124 to i8*
  %126 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %vruler64 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %126, i32 0, i32 4
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %vruler64, align 8
  %128 = bitcast %struct._GtkWidget* %127 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpRuler*)* @scroll_adj_changed to void ()*), i8* %128, void (i8*, %struct._GClosure*)* null, i32 0)
  %129 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %130 = bitcast %struct._GtkAdjustment* %129 to i8*
  %131 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %vruler66 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %131, i32 0, i32 4
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %vruler66, align 8
  %133 = bitcast %struct._GtkWidget* %132 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpRuler*)* @scroll_adj_changed to void ()*), i8* %133, void (i8*, %struct._GClosure*)* null, i32 0)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_scrolled_window_get_type() #3
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call68)
  %136 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkScrolledWindow*
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_scrolled_window_add_with_viewport(%struct._GtkScrolledWindow* %136, %struct._GtkWidget* %137)
  %138 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %call70 = call %struct._GtkWidget* @gtk_scrollbar_new(i32 0, %struct._GtkAdjustment* %138)
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %scrollbar, align 8
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %140 = bitcast %struct._GtkWidget* %139 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_table_get_type() #3
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call71)
  %141 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTable*
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %scrollbar, align 8
  call void @gtk_table_attach(%struct._GtkTable* %141, %struct._GtkWidget* %142, i32 1, i32 2, i32 2, i32 3, i32 6, i32 6, i32 0, i32 0)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %scrollbar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %143)
  %144 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %call73 = call %struct._GtkWidget* @gtk_scrollbar_new(i32 1, %struct._GtkAdjustment* %144)
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %scrollbar, align 8
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %146 = bitcast %struct._GtkWidget* %145 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_table_get_type() #3
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %146, i64 %call74)
  %147 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkTable*
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %scrollbar, align 8
  call void @gtk_table_attach(%struct._GtkTable* %147, %struct._GtkWidget* %148, i32 2, i32 3, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %scrollbar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %149)
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %150)
  %151 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %src_rgn = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %151, i32 0, i32 9
  %152 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %153 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %width76 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %153, i32 0, i32 5
  %154 = load i32, i32* %width76, align 4
  %155 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %height77 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %155, i32 0, i32 6
  %156 = load i32, i32* %height77, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %152, i32 0, i32 0, i32 %154, i32 %156, i32 0, i32 0)
  %157 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %158 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  %src_rgn78 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %158, i32 0, i32 9
  call void @render_preview(%struct.Preview_t* %157, %struct._GimpPixelRgn* %src_rgn78)
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %159)
  %160 = load %struct.Preview_t*, %struct.Preview_t** %data, align 8
  ret %struct.Preview_t* %160
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @preview_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %cr = alloca %struct._cairo*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %dash = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i32 @preview_get_width(%struct._GtkWidget* %0)
  store i32 %call, i32* %width, align 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call i32 @preview_get_height(%struct._GtkWidget* %1)
  store i32 %call1, i32* %height, align 4
  %2 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %2, i32 0, i32 1
  %3 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call2 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %3)
  store %struct._cairo* %call2, %struct._cairo** %cr, align 8
  %4 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %5 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %5, i32 0, i32 4
  %6 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %4, %struct._GdkRegion* %6)
  %7 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %7)
  %8 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %8, double 1.000000e+00)
  %9 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %10 = load i32, i32* %width, align 4
  %11 = load i32, i32* %height, align 4
  call void @draw_grid(%struct._cairo* %9, i32 %10, i32 %11)
  %12 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @draw_shapes(%struct._cairo* %12)
  %13 = load %struct.Object_t*, %struct.Object_t** @_tmp_obj, align 8
  %tobool = icmp ne %struct.Object_t* %13, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 4.000000e+00, double* %dash, align 8
  %14 = load %struct.Object_t*, %struct.Object_t** @_tmp_obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %14, i32 0, i32 3
  %15 = load i32, i32* %selected, align 4
  %or = or i32 %15, 4
  store i32 %or, i32* %selected, align 4
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %16, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %17 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %18 = load double, double* %dash, align 8
  call void @cairo_set_dash(%struct._cairo* %17, double* %dash, i32 1, double %18)
  %19 = load %struct.Object_t*, %struct.Object_t** @_tmp_obj, align 8
  %20 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @object_draw(%struct.Object_t* %19, %struct._cairo* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %21)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @preview_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation, i8* %preview_void) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %preview_void.addr = alloca i8*, align 8
  %preview = alloca %struct.Preview_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  store i8* %preview_void, i8** %preview_void.addr, align 8
  %0 = load i8*, i8** %preview_void.addr, align 8
  %1 = bitcast i8* %0 to %struct.Preview_t*
  store %struct.Preview_t* %1, %struct.Preview_t** %preview, align 8
  %2 = load %struct.Preview_t*, %struct.Preview_t** %preview, align 8
  %3 = load %struct.Preview_t*, %struct.Preview_t** %preview, align 8
  %src_rgn = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %3, i32 0, i32 9
  call void @render_preview(%struct.Preview_t* %2, %struct._GimpPixelRgn* %src_rgn)
  ret void
}

declare void @gtk_drag_dest_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @handle_drop(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, %struct._GtkSelectionData* %data, i32 %info, i32 %time) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %data.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %success = alloca i32, align 4
  %list = alloca %struct.ObjectList_t*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GtkSelectionData* %data, %struct._GtkSelectionData** %data.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store i32 0, i32* %success, align 4
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data.addr, align 8
  %call = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %0)
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data.addr, align 8
  %call1 = call i32 @gtk_selection_data_get_format(%struct._GtkSelectionData* %1)
  %cmp2 = icmp eq i32 %call1, 8
  br i1 %cmp2, label %if.then, label %if.end.12

if.then:                                          ; preds = %land.lhs.true
  %call3 = call %struct.ObjectList_t* @get_shapes()
  store %struct.ObjectList_t* %call3, %struct.ObjectList_t** %list, align 8
  %2 = load i32, i32* %x.addr, align 4
  %call4 = call i32 @get_real_coord(i32 %2)
  store i32 %call4, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %call5 = call i32 @get_real_coord(i32 %3)
  store i32 %call5, i32* %y.addr, align 4
  %4 = load %struct.ObjectList_t*, %struct.ObjectList_t** %list, align 8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  %call6 = call %struct.Object_t* @object_list_find(%struct.ObjectList_t* %4, i32 %5, i32 %6)
  store %struct.Object_t* %call6, %struct.Object_t** %obj, align 8
  %7 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %tobool = icmp ne %struct.Object_t* %7, null
  br i1 %tobool, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %if.then
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %locked = getelementptr inbounds %struct.Object_t, %struct.Object_t* %8, i32 0, i32 4
  %9 = load i32, i32* %locked, align 4
  %tobool8 = icmp ne i32 %9, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true.7
  %10 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %call10 = call %struct.Command_t* @edit_object_command_new(%struct.Object_t* %10)
  call void @command_list_add(%struct.Command_t* %call10)
  %11 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %12 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data.addr, align 8
  %call11 = call i8* @gtk_selection_data_get_data(%struct._GtkSelectionData* %12)
  call void @object_set_url(%struct.Object_t* %11, i8* %call11)
  %13 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_emit_update_signal(%struct.Object_t* %13)
  store i32 1, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true.7, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %land.lhs.true, %entry
  %14 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_finish(%struct._GdkDragContext* %14, i32 %15, i32 0, i32 %16)
  ret void
}

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_widget_set_can_focus(%struct._GtkWidget*, i32) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @arrow_cb(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 8
  %1 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  call void @do_main_popup_menu(%struct._GdkEventButton* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_arrow_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gimp_ruler_new(i32) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare %struct._GtkAdjustment* @gtk_scrolled_window_get_hadjustment(%struct._GtkScrolledWindow*) #1

; Function Attrs: nounwind uwtable
define internal void @scroll_adj_changed(%struct._GtkAdjustment* %adj, %struct._GimpRuler* %ruler) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call2 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %3)
  %add = fadd double %call1, %call2
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call3 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %4)
  call void @gimp_ruler_set_range(%struct._GimpRuler* %0, double %call, double %add, double %call3)
  ret void
}

declare %struct._GtkAdjustment* @gtk_scrolled_window_get_vadjustment(%struct._GtkScrolledWindow*) #1

declare void @gtk_scrolled_window_add_with_viewport(%struct._GtkScrolledWindow*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_scrollbar_new(i32, %struct._GtkAdjustment*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i32 @gimp_drawable_type(i32) #1

; Function Attrs: nounwind uwtable
define internal void @render_rgb_image(%struct.Preview_t* %preview_base, %struct._GimpPixelRgn* %srcrgn) #0 {
entry:
  %preview_base.addr = alloca %struct.Preview_t*, align 8
  %srcrgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %src_row = alloca i8*, align 8
  %dest_buffer = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %dwidth = alloca i32, align 4
  %dheight = alloca i32, align 4
  %pwidth = alloca i32, align 4
  %pheight = alloca i32, align 4
  %src_col = alloca i32*, align 8
  %bpp = alloca i32, align 4
  %alpha = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %check = alloca i8, align 1
  %gray = alloca i32, align 4
  %preview = alloca %struct._GtkWidget*, align 8
  %avg = alloca i8, align 1
  store %struct.Preview_t* %preview_base, %struct.Preview_t** %preview_base.addr, align 8
  store %struct._GimpPixelRgn* %srcrgn, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %call = call %struct.MapInfo_t* @get_map_info()
  %show_gray = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %call, i32 0, i32 9
  %0 = load i32, i32* %show_gray, align 4
  store i32 %0, i32* %gray, align 4
  %1 = load %struct.Preview_t*, %struct.Preview_t** %preview_base.addr, align 8
  %preview1 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %1, i32 0, i32 2
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %preview1, align 8
  store %struct._GtkWidget* %2, %struct._GtkWidget** %preview, align 8
  %3 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %3, i32 0, i32 6
  %4 = load i32, i32* %w, align 4
  store i32 %4, i32* %dwidth, align 4
  %5 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %5, i32 0, i32 7
  %6 = load i32, i32* %h, align 4
  store i32 %6, i32* %dheight, align 4
  %7 = load %struct.Preview_t*, %struct.Preview_t** %preview_base.addr, align 8
  %widget_width = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %7, i32 0, i32 7
  %8 = load i32, i32* %widget_width, align 4
  store i32 %8, i32* %pwidth, align 4
  %9 = load %struct.Preview_t*, %struct.Preview_t** %preview_base.addr, align 8
  %widget_height = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %9, i32 0, i32 8
  %10 = load i32, i32* %widget_height, align 4
  store i32 %10, i32* %pheight, align 4
  %11 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %bpp2 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %11, i32 0, i32 2
  %12 = load i32, i32* %bpp2, align 4
  store i32 %12, i32* %bpp, align 4
  %13 = load i32, i32* %bpp, align 4
  store i32 %13, i32* %alpha, align 4
  %14 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %14, i32 0, i32 1
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id, align 4
  %call3 = call i32 @gimp_drawable_has_alpha(i32 %16)
  store i32 %call3, i32* %has_alpha, align 4
  %17 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %alpha, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %alpha, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %dwidth, align 4
  %20 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %19, %20
  %conv = sext i32 %mul to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call4, i8** %src_row, align 8
  %21 = load i32, i32* %pwidth, align 4
  %22 = load i32, i32* %pheight, align 4
  %mul5 = mul nsw i32 %21, %22
  %23 = load i32, i32* %bpp, align 4
  %mul6 = mul nsw i32 %mul5, %23
  %conv7 = sext i32 %mul6 to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv7, i64 1)
  store i8* %call8, i8** %dest_buffer, align 8
  %24 = load i32, i32* %pwidth, align 4
  %conv9 = sext i32 %24 to i64
  %call10 = call noalias i8* @g_malloc_n(i64 %conv9, i64 4)
  %25 = bitcast i8* %call10 to i32*
  store i32* %25, i32** %src_col, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %col, align 4
  %27 = load i32, i32* %pwidth, align 4
  %cmp = icmp slt i32 %26, %27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %col, align 4
  %29 = load i32, i32* %dwidth, align 4
  %mul12 = mul nsw i32 %28, %29
  %30 = load i32, i32* %pwidth, align 4
  %div = sdiv i32 %mul12, %30
  %31 = load i32, i32* %bpp, align 4
  %mul13 = mul nsw i32 %div, %31
  %32 = load i32, i32* %col, align 4
  %idxprom = sext i32 %32 to i64
  %33 = load i32*, i32** %src_col, align 8
  %arrayidx = getelementptr inbounds i32, i32* %33, i64 %idxprom
  store i32 %mul13, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %col, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i8*, i8** %dest_buffer, align 8
  store i8* %35, i8** %dest, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.124, %for.end
  %36 = load i32, i32* %row, align 4
  %37 = load i32, i32* %pheight, align 4
  %cmp15 = icmp slt i32 %36, %37
  br i1 %cmp15, label %for.body.17, label %for.end.126

for.body.17:                                      ; preds = %for.cond.14
  %38 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %39 = load i8*, i8** %src_row, align 8
  %40 = load i32, i32* %row, align 4
  %41 = load i32, i32* %dheight, align 4
  %mul18 = mul nsw i32 %40, %41
  %42 = load i32, i32* %pheight, align 4
  %div19 = sdiv i32 %mul18, %42
  %43 = load i32, i32* %dwidth, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %38, i8* %39, i32 0, i32 %div19, i32 %43)
  store i32 0, i32* %col, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.121, %for.body.17
  %44 = load i32, i32* %col, align 4
  %45 = load i32, i32* %pwidth, align 4
  %cmp21 = icmp slt i32 %44, %45
  br i1 %cmp21, label %for.body.23, label %for.end.123

for.body.23:                                      ; preds = %for.cond.20
  %46 = load i32, i32* %col, align 4
  %idxprom24 = sext i32 %46 to i64
  %47 = load i32*, i32** %src_col, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %47, i64 %idxprom24
  %48 = load i32, i32* %arrayidx25, align 4
  %idxprom26 = sext i32 %48 to i64
  %49 = load i8*, i8** %src_row, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %49, i64 %idxprom26
  store i8* %arrayidx27, i8** %src, align 8
  %50 = load i32, i32* %has_alpha, align 4
  %tobool28 = icmp ne i32 %50, 0
  br i1 %tobool28, label %lor.lhs.false, label %if.then.34

lor.lhs.false:                                    ; preds = %for.body.23
  %51 = load i32, i32* %alpha, align 4
  %idxprom29 = sext i32 %51 to i64
  %52 = load i8*, i8** %src, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %52, i64 %idxprom29
  %53 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %53 to i32
  %cmp32 = icmp eq i32 %conv31, 255
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %lor.lhs.false, %for.body.23
  store i32 0, i32* %b, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.43, %if.then.34
  %54 = load i32, i32* %b, align 4
  %55 = load i32, i32* %alpha, align 4
  %cmp36 = icmp slt i32 %54, %55
  br i1 %cmp36, label %for.body.38, label %for.end.45

for.body.38:                                      ; preds = %for.cond.35
  %56 = load i32, i32* %b, align 4
  %idxprom39 = sext i32 %56 to i64
  %57 = load i8*, i8** %src, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %57, i64 %idxprom39
  %58 = load i8, i8* %arrayidx40, align 1
  %59 = load i32, i32* %b, align 4
  %idxprom41 = sext i32 %59 to i64
  %60 = load i8*, i8** %dest, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %60, i64 %idxprom41
  store i8 %58, i8* %arrayidx42, align 1
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.38
  %61 = load i32, i32* %b, align 4
  %inc44 = add nsw i32 %61, 1
  store i32 %inc44, i32* %b, align 4
  br label %for.cond.35

for.end.45:                                       ; preds = %for.cond.35
  br label %if.end.95

if.else:                                          ; preds = %lor.lhs.false
  %62 = load i32, i32* %col, align 4
  %rem = srem i32 %62, 8
  %cmp46 = icmp slt i32 %rem, 4
  %conv47 = zext i1 %cmp46 to i32
  %63 = load i32, i32* %row, align 4
  %rem48 = srem i32 %63, 8
  %cmp49 = icmp slt i32 %rem48, 4
  %conv50 = zext i1 %cmp49 to i32
  %xor = xor i32 %conv47, %conv50
  %tobool51 = icmp ne i32 %xor, 0
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.else
  store i8 -64, i8* %check, align 1
  br label %if.end.54

if.else.53:                                       ; preds = %if.else
  store i8 -128, i8* %check, align 1
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.53, %if.then.52
  %64 = load i32, i32* %alpha, align 4
  %idxprom55 = sext i32 %64 to i64
  %65 = load i8*, i8** %src, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %65, i64 %idxprom55
  %66 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %66 to i32
  %cmp58 = icmp eq i32 %conv57, 0
  br i1 %cmp58, label %if.then.60, label %if.else.70

if.then.60:                                       ; preds = %if.end.54
  store i32 0, i32* %b, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.67, %if.then.60
  %67 = load i32, i32* %b, align 4
  %68 = load i32, i32* %alpha, align 4
  %cmp62 = icmp slt i32 %67, %68
  br i1 %cmp62, label %for.body.64, label %for.end.69

for.body.64:                                      ; preds = %for.cond.61
  %69 = load i8, i8* %check, align 1
  %70 = load i32, i32* %b, align 4
  %idxprom65 = sext i32 %70 to i64
  %71 = load i8*, i8** %dest, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %71, i64 %idxprom65
  store i8 %69, i8* %arrayidx66, align 1
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.64
  %72 = load i32, i32* %b, align 4
  %inc68 = add nsw i32 %72, 1
  store i32 %inc68, i32* %b, align 4
  br label %for.cond.61

for.end.69:                                       ; preds = %for.cond.61
  br label %if.end.94

if.else.70:                                       ; preds = %if.end.54
  store i32 0, i32* %b, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.91, %if.else.70
  %73 = load i32, i32* %b, align 4
  %74 = load i32, i32* %alpha, align 4
  %cmp72 = icmp slt i32 %73, %74
  br i1 %cmp72, label %for.body.74, label %for.end.93

for.body.74:                                      ; preds = %for.cond.71
  %75 = load i32, i32* %b, align 4
  %idxprom75 = sext i32 %75 to i64
  %76 = load i8*, i8** %src, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %76, i64 %idxprom75
  %77 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %77 to i32
  %78 = load i32, i32* %alpha, align 4
  %idxprom78 = sext i32 %78 to i64
  %79 = load i8*, i8** %src, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %79, i64 %idxprom78
  %80 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %80 to i32
  %mul81 = mul nsw i32 %conv77, %conv80
  %81 = load i8, i8* %check, align 1
  %conv82 = zext i8 %81 to i32
  %82 = load i32, i32* %alpha, align 4
  %idxprom83 = sext i32 %82 to i64
  %83 = load i8*, i8** %src, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %83, i64 %idxprom83
  %84 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %84 to i32
  %sub = sub nsw i32 255, %conv85
  %mul86 = mul nsw i32 %conv82, %sub
  %add = add nsw i32 %mul81, %mul86
  %div87 = sdiv i32 %add, 255
  %conv88 = trunc i32 %div87 to i8
  %85 = load i32, i32* %b, align 4
  %idxprom89 = sext i32 %85 to i64
  %86 = load i8*, i8** %dest, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %86, i64 %idxprom89
  store i8 %conv88, i8* %arrayidx90, align 1
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.body.74
  %87 = load i32, i32* %b, align 4
  %inc92 = add nsw i32 %87, 1
  store i32 %inc92, i32* %b, align 4
  br label %for.cond.71

for.end.93:                                       ; preds = %for.cond.71
  br label %if.end.94

if.end.94:                                        ; preds = %for.end.93, %for.end.69
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %for.end.45
  %88 = load i32, i32* %gray, align 4
  %tobool96 = icmp ne i32 %88, 0
  br i1 %tobool96, label %if.then.97, label %if.end.120

if.then.97:                                       ; preds = %if.end.95
  %89 = load i8*, i8** %dest, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %89, i64 0
  %90 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %90 to i32
  %mul100 = mul nsw i32 299, %conv99
  %91 = load i8*, i8** %dest, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %91, i64 1
  %92 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %92 to i32
  %mul103 = mul nsw i32 587, %conv102
  %add104 = add nsw i32 %mul100, %mul103
  %93 = load i8*, i8** %dest, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %93, i64 2
  %94 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %94 to i32
  %mul107 = mul nsw i32 114, %conv106
  %add108 = add nsw i32 %add104, %mul107
  %div109 = sdiv i32 %add108, 1000
  %conv110 = trunc i32 %div109 to i8
  store i8 %conv110, i8* %avg, align 1
  store i32 0, i32* %b, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.117, %if.then.97
  %95 = load i32, i32* %b, align 4
  %96 = load i32, i32* %alpha, align 4
  %cmp112 = icmp slt i32 %95, %96
  br i1 %cmp112, label %for.body.114, label %for.end.119

for.body.114:                                     ; preds = %for.cond.111
  %97 = load i8, i8* %avg, align 1
  %98 = load i32, i32* %b, align 4
  %idxprom115 = sext i32 %98 to i64
  %99 = load i8*, i8** %dest, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %99, i64 %idxprom115
  store i8 %97, i8* %arrayidx116, align 1
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.114
  %100 = load i32, i32* %b, align 4
  %inc118 = add nsw i32 %100, 1
  store i32 %inc118, i32* %b, align 4
  br label %for.cond.111

for.end.119:                                      ; preds = %for.cond.111
  br label %if.end.120

if.end.120:                                       ; preds = %for.end.119, %if.end.95
  %101 = load i32, i32* %alpha, align 4
  %102 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %101 to i64
  %add.ptr = getelementptr inbounds i8, i8* %102, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.120
  %103 = load i32, i32* %col, align 4
  %inc122 = add nsw i32 %103, 1
  store i32 %inc122, i32* %col, align 4
  br label %for.cond.20

for.end.123:                                      ; preds = %for.cond.20
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.end.123
  %104 = load i32, i32* %row, align 4
  %inc125 = add nsw i32 %104, 1
  store i32 %inc125, i32* %row, align 4
  br label %for.cond.14

for.end.126:                                      ; preds = %for.cond.14
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call127 = call i64 @gimp_preview_area_get_type() #3
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call127)
  %107 = bitcast %struct._GTypeInstance* %call128 to %struct._GimpPreviewArea*
  %108 = load i32, i32* %pwidth, align 4
  %109 = load i32, i32* %pheight, align 4
  %110 = load i8*, i8** %dest_buffer, align 8
  %111 = load i32, i32* %pwidth, align 4
  %mul129 = mul nsw i32 %111, 3
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %107, i32 0, i32 0, i32 %108, i32 %109, i32 0, i8* %110, i32 %mul129)
  %112 = load i32*, i32** %src_col, align 8
  %113 = bitcast i32* %112 to i8*
  call void @g_free(i8* %113)
  %114 = load i8*, i8** %src_row, align 8
  call void @g_free(i8* %114)
  %115 = load i8*, i8** %dest_buffer, align 8
  call void @g_free(i8* %115)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @render_gray_image(%struct.Preview_t* %preview_base, %struct._GimpPixelRgn* %srcrgn) #0 {
entry:
  %preview_base.addr = alloca %struct.Preview_t*, align 8
  %srcrgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %src_row = alloca i8*, align 8
  %dest_buffer = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %bpp = alloca i32, align 4
  %dwidth = alloca i32, align 4
  %dheight = alloca i32, align 4
  %pwidth = alloca i32, align 4
  %pheight = alloca i32, align 4
  %src_col = alloca i32*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %src = alloca i8*, align 8
  store %struct.Preview_t* %preview_base, %struct.Preview_t** %preview_base.addr, align 8
  store %struct._GimpPixelRgn* %srcrgn, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %0 = load %struct.Preview_t*, %struct.Preview_t** %preview_base.addr, align 8
  %preview1 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %preview1, align 8
  store %struct._GtkWidget* %1, %struct._GtkWidget** %preview, align 8
  %2 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %2, i32 0, i32 6
  %3 = load i32, i32* %w, align 4
  store i32 %3, i32* %dwidth, align 4
  %4 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %4, i32 0, i32 7
  %5 = load i32, i32* %h, align 4
  store i32 %5, i32* %dheight, align 4
  %6 = load %struct.Preview_t*, %struct.Preview_t** %preview_base.addr, align 8
  %widget_width = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %6, i32 0, i32 7
  %7 = load i32, i32* %widget_width, align 4
  store i32 %7, i32* %pwidth, align 4
  %8 = load %struct.Preview_t*, %struct.Preview_t** %preview_base.addr, align 8
  %widget_height = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %8, i32 0, i32 8
  %9 = load i32, i32* %widget_height, align 4
  store i32 %9, i32* %pheight, align 4
  %10 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %bpp2 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %10, i32 0, i32 2
  %11 = load i32, i32* %bpp2, align 4
  store i32 %11, i32* %bpp, align 4
  %12 = load i32, i32* %dwidth, align 4
  %13 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %12, %13
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %src_row, align 8
  %14 = load i32, i32* %pwidth, align 4
  %15 = load i32, i32* %pheight, align 4
  %mul3 = mul nsw i32 %14, %15
  %conv4 = sext i32 %mul3 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv4, i64 1)
  store i8* %call5, i8** %dest_buffer, align 8
  %16 = load i32, i32* %pwidth, align 4
  %conv6 = sext i32 %16 to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv6, i64 4)
  %17 = bitcast i8* %call7 to i32*
  store i32* %17, i32** %src_col, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %col, align 4
  %19 = load i32, i32* %pwidth, align 4
  %cmp = icmp slt i32 %18, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %col, align 4
  %21 = load i32, i32* %dwidth, align 4
  %mul9 = mul nsw i32 %20, %21
  %22 = load i32, i32* %pwidth, align 4
  %div = sdiv i32 %mul9, %22
  %23 = load i32, i32* %bpp, align 4
  %mul10 = mul nsw i32 %div, %23
  %24 = load i32, i32* %col, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i32*, i32** %src_col, align 8
  %arrayidx = getelementptr inbounds i32, i32* %25, i64 %idxprom
  store i32 %mul10, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %col, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i8*, i8** %dest_buffer, align 8
  store i8* %27, i8** %dest, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.28, %for.end
  %28 = load i32, i32* %row, align 4
  %29 = load i32, i32* %pheight, align 4
  %cmp12 = icmp slt i32 %28, %29
  br i1 %cmp12, label %for.body.14, label %for.end.30

for.body.14:                                      ; preds = %for.cond.11
  %30 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %31 = load i8*, i8** %src_row, align 8
  %32 = load i32, i32* %row, align 4
  %33 = load i32, i32* %dheight, align 4
  %mul15 = mul nsw i32 %32, %33
  %34 = load i32, i32* %pheight, align 4
  %div16 = sdiv i32 %mul15, %34
  %35 = load i32, i32* %dwidth, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %30, i8* %31, i32 0, i32 %div16, i32 %35)
  store i32 0, i32* %col, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.25, %for.body.14
  %36 = load i32, i32* %col, align 4
  %37 = load i32, i32* %pwidth, align 4
  %cmp18 = icmp slt i32 %36, %37
  br i1 %cmp18, label %for.body.20, label %for.end.27

for.body.20:                                      ; preds = %for.cond.17
  %38 = load i32, i32* %col, align 4
  %idxprom21 = sext i32 %38 to i64
  %39 = load i32*, i32** %src_col, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %39, i64 %idxprom21
  %40 = load i32, i32* %arrayidx22, align 4
  %idxprom23 = sext i32 %40 to i64
  %41 = load i8*, i8** %src_row, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %41, i64 %idxprom23
  store i8* %arrayidx24, i8** %src, align 8
  %42 = load i8*, i8** %src, align 8
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %43, i8* %44, align 1
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.20
  %45 = load i32, i32* %col, align 4
  %inc26 = add nsw i32 %45, 1
  store i32 %inc26, i32* %col, align 4
  br label %for.cond.17

for.end.27:                                       ; preds = %for.cond.17
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end.27
  %46 = load i32, i32* %row, align 4
  %inc29 = add nsw i32 %46, 1
  store i32 %inc29, i32* %row, align 4
  br label %for.cond.11

for.end.30:                                       ; preds = %for.cond.11
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_preview_area_get_type() #3
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call31)
  %49 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpPreviewArea*
  %50 = load i32, i32* %pwidth, align 4
  %51 = load i32, i32* %pheight, align 4
  %52 = load i8*, i8** %dest_buffer, align 8
  %53 = load i32, i32* %pwidth, align 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %49, i32 0, i32 0, i32 %50, i32 %51, i32 2, i8* %52, i32 %53)
  %54 = load i32*, i32** %src_col, align 8
  %55 = bitcast i32* %54 to i8*
  call void @g_free(i8* %55)
  %56 = load i8*, i8** %src_row, align 8
  call void @g_free(i8* %56)
  %57 = load i8*, i8** %dest_buffer, align 8
  call void @g_free(i8* %57)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @render_indexed_image(%struct.Preview_t* %preview_base, %struct._GimpPixelRgn* %srcrgn) #0 {
entry:
  %preview_base.addr = alloca %struct.Preview_t*, align 8
  %srcrgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %src_row = alloca i8*, align 8
  %dest_buffer = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %dwidth = alloca i32, align 4
  %dheight = alloca i32, align 4
  %pwidth = alloca i32, align 4
  %pheight = alloca i32, align 4
  %src_col = alloca i32*, align 8
  %bpp = alloca i32, align 4
  %alpha = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %cmap = alloca i8*, align 8
  %colour = alloca i8*, align 8
  %ncols = alloca i32, align 4
  %gray = alloca i32, align 4
  %preview = alloca %struct._GtkWidget*, align 8
  %avg = alloca i8, align 1
  store %struct.Preview_t* %preview_base, %struct.Preview_t** %preview_base.addr, align 8
  store %struct._GimpPixelRgn* %srcrgn, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %call = call %struct.MapInfo_t* @get_map_info()
  %show_gray = getelementptr inbounds %struct.MapInfo_t, %struct.MapInfo_t* %call, i32 0, i32 9
  %0 = load i32, i32* %show_gray, align 4
  store i32 %0, i32* %gray, align 4
  %1 = load %struct.Preview_t*, %struct.Preview_t** %preview_base.addr, align 8
  %preview1 = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %1, i32 0, i32 2
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %preview1, align 8
  store %struct._GtkWidget* %2, %struct._GtkWidget** %preview, align 8
  %3 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %3, i32 0, i32 6
  %4 = load i32, i32* %w, align 4
  store i32 %4, i32* %dwidth, align 4
  %5 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %5, i32 0, i32 7
  %6 = load i32, i32* %h, align 4
  store i32 %6, i32* %dheight, align 4
  %7 = load %struct.Preview_t*, %struct.Preview_t** %preview_base.addr, align 8
  %widget_width = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %7, i32 0, i32 7
  %8 = load i32, i32* %widget_width, align 4
  store i32 %8, i32* %pwidth, align 4
  %9 = load %struct.Preview_t*, %struct.Preview_t** %preview_base.addr, align 8
  %widget_height = getelementptr inbounds %struct.Preview_t, %struct.Preview_t* %9, i32 0, i32 8
  %10 = load i32, i32* %widget_height, align 4
  store i32 %10, i32* %pheight, align 4
  %11 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %bpp2 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %11, i32 0, i32 2
  %12 = load i32, i32* %bpp2, align 4
  store i32 %12, i32* %bpp, align 4
  %13 = load i32, i32* %bpp, align 4
  store i32 %13, i32* %alpha, align 4
  %14 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %14, i32 0, i32 1
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id, align 4
  %call3 = call i32 @gimp_drawable_has_alpha(i32 %16)
  store i32 %call3, i32* %has_alpha, align 4
  %17 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %alpha, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %alpha, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %drawable4 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %19, i32 0, i32 1
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable4, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 0
  %21 = load i32, i32* %drawable_id5, align 4
  %call6 = call i32 @gimp_item_get_image(i32 %21)
  %call7 = call i8* @gimp_image_get_colormap(i32 %call6, i32* %ncols)
  store i8* %call7, i8** %cmap, align 8
  %22 = load i32, i32* %dwidth, align 4
  %23 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %22, %23
  %conv = sext i32 %mul to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call8, i8** %src_row, align 8
  %24 = load i32, i32* %pwidth, align 4
  %25 = load i32, i32* %pheight, align 4
  %mul9 = mul nsw i32 %24, %25
  %mul10 = mul nsw i32 %mul9, 3
  %conv11 = sext i32 %mul10 to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv11, i64 1)
  store i8* %call12, i8** %dest_buffer, align 8
  %26 = load i32, i32* %pwidth, align 4
  %conv13 = sext i32 %26 to i64
  %call14 = call noalias i8* @g_malloc_n(i64 %conv13, i64 4)
  %27 = bitcast i8* %call14 to i32*
  store i32* %27, i32** %src_col, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %28 = load i32, i32* %col, align 4
  %29 = load i32, i32* %pwidth, align 4
  %cmp = icmp slt i32 %28, %29
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %col, align 4
  %31 = load i32, i32* %dwidth, align 4
  %mul16 = mul nsw i32 %30, %31
  %32 = load i32, i32* %pwidth, align 4
  %div = sdiv i32 %mul16, %32
  %33 = load i32, i32* %bpp, align 4
  %mul17 = mul nsw i32 %div, %33
  %34 = load i32, i32* %col, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load i32*, i32** %src_col, align 8
  %arrayidx = getelementptr inbounds i32, i32* %35, i64 %idxprom
  store i32 %mul17, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %col, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i8*, i8** %dest_buffer, align 8
  store i8* %37, i8** %dest, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.60, %for.end
  %38 = load i32, i32* %row, align 4
  %39 = load i32, i32* %pheight, align 4
  %cmp19 = icmp slt i32 %38, %39
  br i1 %cmp19, label %for.body.21, label %for.end.62

for.body.21:                                      ; preds = %for.cond.18
  %40 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcrgn.addr, align 8
  %41 = load i8*, i8** %src_row, align 8
  %42 = load i32, i32* %row, align 4
  %43 = load i32, i32* %dheight, align 4
  %mul22 = mul nsw i32 %42, %43
  %44 = load i32, i32* %pheight, align 4
  %div23 = sdiv i32 %mul22, %44
  %45 = load i32, i32* %dwidth, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %40, i8* %41, i32 0, i32 %div23, i32 %45)
  store i32 0, i32* %col, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.57, %for.body.21
  %46 = load i32, i32* %col, align 4
  %47 = load i32, i32* %pwidth, align 4
  %cmp25 = icmp slt i32 %46, %47
  br i1 %cmp25, label %for.body.27, label %for.end.59

for.body.27:                                      ; preds = %for.cond.24
  %48 = load i32, i32* %col, align 4
  %idxprom28 = sext i32 %48 to i64
  %49 = load i32*, i32** %src_col, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %49, i64 %idxprom28
  %50 = load i32, i32* %arrayidx29, align 4
  %idxprom30 = sext i32 %50 to i64
  %51 = load i8*, i8** %src_row, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %51, i64 %idxprom30
  store i8* %arrayidx31, i8** %src, align 8
  %52 = load i8*, i8** %cmap, align 8
  %53 = load i8*, i8** %src, align 8
  %54 = load i8, i8* %53, align 1
  %conv32 = zext i8 %54 to i32
  %mul33 = mul nsw i32 3, %conv32
  %idx.ext = sext i32 %mul33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %idx.ext
  store i8* %add.ptr, i8** %colour, align 8
  %55 = load i32, i32* %gray, align 4
  %tobool34 = icmp ne i32 %55, 0
  br i1 %tobool34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %for.body.27
  %56 = load i8*, i8** %colour, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %57 to i32
  %mul38 = mul nsw i32 299, %conv37
  %58 = load i8*, i8** %colour, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %59 to i32
  %mul41 = mul nsw i32 587, %conv40
  %add = add nsw i32 %mul38, %mul41
  %60 = load i8*, i8** %colour, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %60, i64 2
  %61 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %61 to i32
  %mul44 = mul nsw i32 114, %conv43
  %add45 = add nsw i32 %add, %mul44
  %div46 = sdiv i32 %add45, 1000
  %conv47 = trunc i32 %div46 to i8
  store i8 %conv47, i8* %avg, align 1
  %62 = load i8, i8* %avg, align 1
  %63 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %62, i8* %63, align 1
  %64 = load i8, i8* %avg, align 1
  %65 = load i8*, i8** %dest, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr48, i8** %dest, align 8
  store i8 %64, i8* %65, align 1
  %66 = load i8, i8* %avg, align 1
  %67 = load i8*, i8** %dest, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr49, i8** %dest, align 8
  store i8 %66, i8* %67, align 1
  br label %if.end.56

if.else:                                          ; preds = %for.body.27
  %68 = load i8*, i8** %colour, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx50, align 1
  %70 = load i8*, i8** %dest, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr51, i8** %dest, align 8
  store i8 %69, i8* %70, align 1
  %71 = load i8*, i8** %colour, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %71, i64 1
  %72 = load i8, i8* %arrayidx52, align 1
  %73 = load i8*, i8** %dest, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr53, i8** %dest, align 8
  store i8 %72, i8* %73, align 1
  %74 = load i8*, i8** %colour, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %74, i64 2
  %75 = load i8, i8* %arrayidx54, align 1
  %76 = load i8*, i8** %dest, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr55, i8** %dest, align 8
  store i8 %75, i8* %76, align 1
  br label %if.end.56

if.end.56:                                        ; preds = %if.else, %if.then.35
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %77 = load i32, i32* %col, align 4
  %inc58 = add nsw i32 %77, 1
  store i32 %inc58, i32* %col, align 4
  br label %for.cond.24

for.end.59:                                       ; preds = %for.cond.24
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.59
  %78 = load i32, i32* %row, align 4
  %inc61 = add nsw i32 %78, 1
  store i32 %inc61, i32* %row, align 4
  br label %for.cond.18

for.end.62:                                       ; preds = %for.cond.18
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_preview_area_get_type() #3
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call63)
  %81 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpPreviewArea*
  %82 = load i32, i32* %pwidth, align 4
  %83 = load i32, i32* %pheight, align 4
  %84 = load i8*, i8** %dest_buffer, align 8
  %85 = load i32, i32* %pwidth, align 4
  %mul65 = mul nsw i32 %85, 3
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %81, i32 0, i32 0, i32 %82, i32 %83, i32 0, i8* %84, i32 %mul65)
  %86 = load i32*, i32** %src_col, align 8
  %87 = bitcast i32* %86 to i8*
  call void @g_free(i8* %87)
  %88 = load i8*, i8** %src_row, align 8
  call void @g_free(i8* %88)
  %89 = load i8*, i8** %dest_buffer, align 8
  call void @g_free(i8* %89)
  ret void
}

declare %struct.MapInfo_t* @get_map_info() #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #2

declare void @g_free(i8*) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare i32 @gimp_item_get_image(i32) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @draw_grid(%struct._cairo*, i32, i32) #1

declare void @draw_shapes(%struct._cairo*) #1

declare void @cairo_set_source_rgb(%struct._cairo*, double, double, double) #1

declare void @cairo_set_dash(%struct._cairo*, double*, i32, double) #1

declare void @object_draw(%struct.Object_t*, %struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare i32 @gtk_selection_data_get_length(%struct._GtkSelectionData*) #1

declare i32 @gtk_selection_data_get_format(%struct._GtkSelectionData*) #1

declare %struct.ObjectList_t* @get_shapes() #1

declare i32 @get_real_coord(i32) #1

declare %struct.Object_t* @object_list_find(%struct.ObjectList_t*, i32, i32) #1

declare void @command_list_add(%struct.Command_t*) #1

declare %struct.Command_t* @edit_object_command_new(%struct.Object_t*) #1

declare void @object_set_url(%struct.Object_t*, i8*) #1

declare i8* @gtk_selection_data_get_data(%struct._GtkSelectionData*) #1

declare void @object_emit_update_signal(%struct.Object_t*) #1

declare void @gtk_drag_finish(%struct._GdkDragContext*, i32, i32, i32) #1

declare void @do_main_popup_menu(%struct._GdkEventButton*) #1

declare void @gimp_ruler_set_range(%struct._GimpRuler*, double, double, double) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_page_size(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
