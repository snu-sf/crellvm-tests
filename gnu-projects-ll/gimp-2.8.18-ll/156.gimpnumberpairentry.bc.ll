; ModuleID = './libgimpwidgets/gimpnumberpairentry.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpNumberPairEntryClass = type { %struct._GtkEntryClass, void (%struct._GimpNumberPairEntry*)*, void (%struct._GimpNumberPairEntry*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkEntryClass = type { %struct._GtkWidgetClass, void (%struct._GtkEntry*, %struct._GtkMenu*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*, i32, i32, i32)*, void (%struct._GtkEntry*, i8*)*, void (%struct._GtkEntry*, i32, i32)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*, i32*, i32*, i32*, i32*)*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkArg = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpNumberPairEntry = type { %struct._GtkEntry, i8* }
%struct.GimpNumberPairEntryPrivate = type { double, double, double, double, i32, i32, i32*, i64, i8*, i32, double, double }
%struct._PangoContext = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkEditable = type opaque

@gimp_number_pair_entry_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpNumberPairEntry\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"separators\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"allow-simplification\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"min-valid-value\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"max-valid-value\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_number_pair_entry_set_ratio = private unnamed_addr constant [33 x i8] c"gimp_number_pair_entry_set_ratio\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"GIMP_IS_NUMBER_PAIR_ENTRY (entry)\00", align 1
@__func__.gimp_number_pair_entry_get_ratio = private unnamed_addr constant [33 x i8] c"gimp_number_pair_entry_get_ratio\00", align 1
@__func__.gimp_number_pair_entry_set_values = private unnamed_addr constant [34 x i8] c"gimp_number_pair_entry_set_values\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"left-number\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"right-number\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ratio\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"aspect\00", align 1
@entry_signals = internal global [2 x i32] zeroinitializer, align 4
@__func__.gimp_number_pair_entry_get_values = private unnamed_addr constant [34 x i8] c"gimp_number_pair_entry_get_values\00", align 1
@__func__.gimp_number_pair_entry_set_default_text = private unnamed_addr constant [40 x i8] c"gimp_number_pair_entry_set_default_text\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"default-text\00", align 1
@__func__.gimp_number_pair_entry_get_default_text = private unnamed_addr constant [40 x i8] c"gimp_number_pair_entry_get_default_text\00", align 1
@__func__.gimp_number_pair_entry_set_aspect = private unnamed_addr constant [34 x i8] c"gimp_number_pair_entry_set_aspect\00", align 1
@__func__.gimp_number_pair_entry_get_aspect = private unnamed_addr constant [34 x i8] c"gimp_number_pair_entry_get_aspect\00", align 1
@__func__.gimp_number_pair_entry_set_user_override = private unnamed_addr constant [41 x i8] c"gimp_number_pair_entry_set_user_override\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"user-override\00", align 1
@__func__.gimp_number_pair_entry_get_user_override = private unnamed_addr constant [41 x i8] c"gimp_number_pair_entry_get_user_override\00", align 1
@__func__.gimp_number_pair_entry_set_default_values = private unnamed_addr constant [42 x i8] c"gimp_number_pair_entry_set_default_values\00", align 1
@__func__.gimp_number_pair_entry_get_default_values = private unnamed_addr constant [42 x i8] c"gimp_number_pair_entry_get_default_values\00", align 1
@gimp_number_pair_entry_parent_class = internal global i8* null, align 8
@GimpNumberPairEntry_private_offset = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"numbers-changed\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"ratio-changed\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Left number\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Right number\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"default-left-number\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Default left number\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"default-right-number\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Default right number\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"User override\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"Whether the widget is in 'user override' mode\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"Separators\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"A string of valid separators\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Default text\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"String to show when in automatic mode\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Allow simplification\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"Whether to allow simplification\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"Min valid value\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"Minimum value valid when parsing input\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Max valid value\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"Maximum value valid when parsing input\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"Ratio\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Aspect\00", align 1
@.str.35 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"gimpnumberpairentry.c\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"focus-out-event\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"key-press-event\00", align 1
@g_utf8_skip = external constant i8*, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"%g%s%g\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_number_pair_entry_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_number_pair_entry_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_number_pair_entry_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gtk_entry_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 872, void (i8*, i8*)* bitcast (void (i8*)* @gimp_number_pair_entry_class_intern_init to void (i8*, i8*)*), i32 216, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpNumberPairEntry*)* @gimp_number_pair_entry_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_number_pair_entry_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_number_pair_entry_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_number_pair_entry_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_number_pair_entry_parent_class, align 8
  %1 = load i32, i32* @GimpNumberPairEntry_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpNumberPairEntry_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpNumberPairEntryClass*
  call void @gimp_number_pair_entry_class_init(%struct._GimpNumberPairEntryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_number_pair_entry_init(%struct._GimpNumberPairEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpNumberPairEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  %call2 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call2 to %struct.GimpNumberPairEntryPrivate*
  %3 = bitcast %struct.GimpNumberPairEntryPrivate* %2 to i8*
  %4 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %4, i32 0, i32 1
  store i8* %3, i8** %priv3, align 8
  %5 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv4 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %5, i32 0, i32 1
  %6 = load i8*, i8** %priv4, align 8
  %7 = bitcast i8* %6 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %7, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %8 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %8, i32 0, i32 0
  store double 1.000000e+00, double* %left_number, align 8
  %9 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %9, i32 0, i32 1
  store double 1.000000e+00, double* %right_number, align 8
  %10 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %10, i32 0, i32 2
  store double 1.000000e+00, double* %default_left_number, align 8
  %11 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %11, i32 0, i32 3
  store double 1.000000e+00, double* %default_right_number, align 8
  %12 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %user_override = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %12, i32 0, i32 4
  store i32 0, i32* %user_override, align 4
  %13 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %font_italic = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %13, i32 0, i32 5
  store i32 0, i32* %font_italic, align 4
  %14 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %separators = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %14, i32 0, i32 6
  store i32* null, i32** %separators, align 8
  %15 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_text = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %15, i32 0, i32 8
  store i8* null, i8** %default_text, align 8
  %16 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %num_separators = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %16, i32 0, i32 7
  store i64 0, i64* %num_separators, align 8
  %17 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %allow_simplification = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %17, i32 0, i32 9
  store i32 0, i32* %allow_simplification, align 4
  %18 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %min_valid_value = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %18, i32 0, i32 10
  store double 0x10000000000000, double* %min_valid_value, align 8
  %19 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %max_valid_value = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %19, i32 0, i32 11
  store double 0x7FEFFFFFFFFFFFFF, double* %max_valid_value, align 8
  %20 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %21 = bitcast %struct._GimpNumberPairEntry* %20 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpNumberPairEntry*)* @gimp_number_pair_entry_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %23 = bitcast %struct._GimpNumberPairEntry* %22 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @gimp_number_pair_entry_events to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %24 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %25 = bitcast %struct._GimpNumberPairEntry* %24 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @gimp_number_pair_entry_events to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %26 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %27 = bitcast %struct._GimpNumberPairEntry* %26 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call8)
  %28 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  call void @gtk_widget_set_direction(%struct._GtkWidget* %28, i32 1)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_number_pair_entry_new(i8* %separators, i32 %allow_simplification, double %min_valid_value, double %max_valid_value) #3 {
entry:
  %separators.addr = alloca i8*, align 8
  %allow_simplification.addr = alloca i32, align 4
  %min_valid_value.addr = alloca double, align 8
  %max_valid_value.addr = alloca double, align 8
  store i8* %separators, i8** %separators.addr, align 8
  store i32 %allow_simplification, i32* %allow_simplification.addr, align 4
  store double %min_valid_value, double* %min_valid_value.addr, align 8
  store double %max_valid_value, double* %max_valid_value.addr, align 8
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  %0 = load i8*, i8** %separators.addr, align 8
  %1 = load i32, i32* %allow_simplification.addr, align 4
  %2 = load double, double* %min_valid_value.addr, align 8
  %3 = load double, double* %max_valid_value.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), double %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), double %3, i8* null)
  %4 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %4
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_number_pair_entry_set_ratio(%struct._GimpNumberPairEntry* %entry1, double %ratio) #3 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %ratio.addr = alloca double, align 8
  %numerator = alloca double, align 8
  %denominator = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  store double %ratio, double* %ratio.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpNumberPairEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_number_pair_entry_set_ratio, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load double, double* %ratio.addr, align 8
  call void @gimp_number_pair_entry_ratio_to_fraction(double %13, double* %numerator, double* %denominator)
  %14 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %15 = load double, double* %numerator, align 8
  %16 = load double, double* %denominator, align 8
  call void @gimp_number_pair_entry_set_values(%struct._GimpNumberPairEntry* %14, double %15, double %16)
  br label %return

return:                                           ; preds = %do.end, %if.else.10
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_number_pair_entry_ratio_to_fraction(double %ratio, double* %numerator, double* %denominator) #3 {
entry:
  %ratio.addr = alloca double, align 8
  %numerator.addr = alloca double*, align 8
  %denominator.addr = alloca double*, align 8
  %remainder = alloca double, align 8
  %next_cf = alloca double, align 8
  %p0 = alloca i32, align 4
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %q0 = alloca i32, align 4
  %q1 = alloca i32, align 4
  %q2 = alloca i32, align 4
  store double %ratio, double* %ratio.addr, align 8
  store double* %numerator, double** %numerator.addr, align 8
  store double* %denominator, double** %denominator.addr, align 8
  store i32 1, i32* %p0, align 4
  store i32 0, i32* %q0, align 4
  %0 = load double, double* %ratio.addr, align 8
  %call = call double @floor(double %0) #7
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %p1, align 4
  store i32 1, i32* %q1, align 4
  %1 = load double, double* %ratio.addr, align 8
  %2 = load i32, i32* %p1, align 4
  %conv1 = sitofp i32 %2 to double
  %sub = fsub double %1, %conv1
  store double %sub, double* %remainder, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load double, double* %remainder, align 8
  %call2 = call double @fabs(double %3) #7
  %cmp = fcmp oge double %call2, 1.000000e-04
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %p1, align 4
  %conv4 = sitofp i32 %4 to double
  %5 = load i32, i32* %q1, align 4
  %conv5 = sitofp i32 %5 to double
  %div = fdiv double %conv4, %conv5
  %6 = load double, double* %ratio.addr, align 8
  %sub6 = fsub double %div, %6
  %call7 = call double @fabs(double %sub6) #7
  %cmp8 = fcmp ogt double %call7, 1.000000e-04
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load double, double* %remainder, align 8
  %div10 = fdiv double 1.000000e+00, %8
  store double %div10, double* %remainder, align 8
  %9 = load double, double* %remainder, align 8
  %call11 = call double @floor(double %9) #7
  store double %call11, double* %next_cf, align 8
  %10 = load double, double* %next_cf, align 8
  %11 = load i32, i32* %p1, align 4
  %conv12 = sitofp i32 %11 to double
  %mul = fmul double %10, %conv12
  %12 = load i32, i32* %p0, align 4
  %conv13 = sitofp i32 %12 to double
  %add = fadd double %mul, %conv13
  %conv14 = fptosi double %add to i32
  store i32 %conv14, i32* %p2, align 4
  %13 = load double, double* %next_cf, align 8
  %14 = load i32, i32* %q1, align 4
  %conv15 = sitofp i32 %14 to double
  %mul16 = fmul double %13, %conv15
  %15 = load i32, i32* %q0, align 4
  %conv17 = sitofp i32 %15 to double
  %add18 = fadd double %mul16, %conv17
  %conv19 = fptosi double %add18 to i32
  store i32 %conv19, i32* %q2, align 4
  %16 = load i32, i32* %p1, align 4
  store i32 %16, i32* %p0, align 4
  %17 = load i32, i32* %q1, align 4
  store i32 %17, i32* %q0, align 4
  %18 = load i32, i32* %p2, align 4
  store i32 %18, i32* %p1, align 4
  %19 = load i32, i32* %q2, align 4
  store i32 %19, i32* %q1, align 4
  %20 = load double, double* %remainder, align 8
  %21 = load double, double* %next_cf, align 8
  %sub20 = fsub double %20, %21
  store double %sub20, double* %remainder, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %22 = load i32, i32* %p1, align 4
  %cmp21 = icmp slt i32 %22, 1000
  br i1 %cmp21, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.end
  %23 = load i32, i32* %q1, align 4
  %cmp23 = icmp slt i32 %23, 1000
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %24 = load i32, i32* %p1, align 4
  %conv25 = sitofp i32 %24 to double
  %25 = load double*, double** %numerator.addr, align 8
  store double %conv25, double* %25, align 8
  %26 = load i32, i32* %q1, align 4
  %conv26 = sitofp i32 %26 to double
  %27 = load double*, double** %denominator.addr, align 8
  store double %conv26, double* %27, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %while.end
  %28 = load double, double* %ratio.addr, align 8
  %29 = load double*, double** %numerator.addr, align 8
  store double %28, double* %29, align 8
  %30 = load double*, double** %denominator.addr, align 8
  store double 1.000000e+00, double* %30, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_number_pair_entry_set_values(%struct._GimpNumberPairEntry* %entry1, double %left, double %right) #3 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %left.addr = alloca double, align 8
  %right.addr = alloca double, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %old_aspect = alloca i32, align 4
  %old_ratio = alloca double, align 8
  %old_left_number = alloca double, align 8
  %old_right_number = alloca double, align 8
  %numbers_changed = alloca i32, align 4
  %ratio_changed = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  store double %left, double* %left.addr, align 8
  store double %right, double* %right.addr, align 8
  store i32 0, i32* %numbers_changed, align 4
  store i32 0, i32* %ratio_changed, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpNumberPairEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_number_pair_entry_set_values, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.43

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv12 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv12, align 8
  %15 = bitcast i8* %14 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %15, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %16 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %16, i32 0, i32 0
  %17 = load double, double* %left_number, align 8
  store double %17, double* %old_left_number, align 8
  %18 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %18, i32 0, i32 1
  %19 = load double, double* %right_number, align 8
  store double %19, double* %old_right_number, align 8
  %20 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %call13 = call double @gimp_number_pair_entry_get_ratio(%struct._GimpNumberPairEntry* %20)
  store double %call13, double* %old_ratio, align 8
  %21 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %call14 = call i32 @gimp_number_pair_entry_get_aspect(%struct._GimpNumberPairEntry* %21)
  store i32 %call14, i32* %old_aspect, align 4
  %22 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %23 = bitcast %struct._GimpNumberPairEntry* %22 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %24)
  %25 = load double, double* %left.addr, align 8
  %26 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number16 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %26, i32 0, i32 0
  store double %25, double* %left_number16, align 8
  %27 = load double, double* %right.addr, align 8
  %28 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %right_number17 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %28, i32 0, i32 1
  store double %27, double* %right_number17, align 8
  %29 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %30 = bitcast %struct._GimpNumberPairEntry* %29 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %32 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %33 = bitcast %struct._GimpNumberPairEntry* %32 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  %35 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  call void @gimp_number_pair_entry_update_text(%struct._GimpNumberPairEntry* %35)
  %36 = load double, double* %old_ratio, align 8
  %37 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %call20 = call double @gimp_number_pair_entry_get_ratio(%struct._GimpNumberPairEntry* %37)
  %sub = fsub double %36, %call20
  %call21 = call double @fabs(double %sub) #7
  %cmp22 = fcmp ogt double %call21, 1.000000e-06
  br i1 %cmp22, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %do.end
  %38 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %39 = bitcast %struct._GimpNumberPairEntry* %38 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  store i32 1, i32* %ratio_changed, align 4
  %41 = load i32, i32* %old_aspect, align 4
  %42 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %call25 = call i32 @gimp_number_pair_entry_get_aspect(%struct._GimpNumberPairEntry* %42)
  %cmp26 = icmp ne i32 %41, %call25
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.23
  %43 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %44 = bitcast %struct._GimpNumberPairEntry* %43 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 80)
  %45 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %do.end
  %46 = load double, double* %old_left_number, align 8
  %47 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number31 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %47, i32 0, i32 0
  %48 = load double, double* %left_number31, align 8
  %cmp32 = fcmp une double %46, %48
  br i1 %cmp32, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %49 = load double, double* %old_right_number, align 8
  %50 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %right_number33 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %50, i32 0, i32 1
  %51 = load double, double* %right_number33, align 8
  %cmp34 = fcmp une double %49, %51
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false, %if.end.30
  store i32 1, i32* %numbers_changed, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %lor.lhs.false
  %52 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %53 = bitcast %struct._GimpNumberPairEntry* %52 to %struct._GTypeInstance*
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 80)
  %54 = bitcast %struct._GTypeInstance* %call37 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %54)
  %55 = load i32, i32* %numbers_changed, align 4
  %tobool38 = icmp ne i32 %55, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %56 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %57 = bitcast %struct._GimpNumberPairEntry* %56 to i8*
  %58 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @entry_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %57, i32 %58, i32 0)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.36
  %59 = load i32, i32* %ratio_changed, align 4
  %tobool41 = icmp ne i32 %59, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.40
  %60 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %61 = bitcast %struct._GimpNumberPairEntry* %60 to i8*
  %62 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @entry_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %61, i32 %62, i32 0)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.10, %if.then.42, %if.end.40
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_number_pair_entry_get_ratio(%struct._GimpNumberPairEntry* %entry1) #3 {
entry:
  %retval = alloca double, align 8
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpNumberPairEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_number_pair_entry_get_ratio, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv12 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv12, align 8
  %15 = bitcast i8* %14 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %15, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %16 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %16, i32 0, i32 0
  %17 = load double, double* %left_number, align 8
  %18 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %18, i32 0, i32 1
  %19 = load double, double* %right_number, align 8
  %div = fdiv double %17, %19
  store double %div, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.10
  %20 = load double, double* %retval
  ret double %20
}

; Function Attrs: nounwind uwtable
define i32 @gimp_number_pair_entry_get_aspect(%struct._GimpNumberPairEntry* %entry1) #3 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpNumberPairEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_number_pair_entry_get_aspect, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv12 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv12, align 8
  %15 = bitcast i8* %14 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %15, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %16 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %16, i32 0, i32 0
  %17 = load double, double* %left_number, align 8
  %18 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %18, i32 0, i32 1
  %19 = load double, double* %right_number, align 8
  %cmp13 = fcmp ogt double %17, %19
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.end
  store i32 2, i32* %retval
  br label %return

if.else.15:                                       ; preds = %do.end
  %20 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number16 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %20, i32 0, i32 0
  %21 = load double, double* %left_number16, align 8
  %22 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %right_number17 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %22, i32 0, i32 1
  %23 = load double, double* %right_number17, align 8
  %cmp18 = fcmp olt double %21, %23
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.15
  store i32 1, i32* %retval
  br label %return

if.else.20:                                       ; preds = %if.else.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.20, %if.then.19, %if.then.14, %if.else.10
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_number_pair_entry_update_text(%struct._GimpNumberPairEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %buffer = alloca i8*, align 8
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv2, align 8
  %2 = bitcast i8* %1 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %2, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %3 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %user_override = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %3, i32 0, i32 4
  %4 = load i32, i32* %user_override, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_text = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %5, i32 0, i32 8
  %6 = load i8*, i8** %default_text, align 8
  %cmp = icmp ne i8* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_text3 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %7, i32 0, i32 8
  %8 = load i8*, i8** %default_text3, align 8
  %call = call noalias i8* @g_strdup(i8* %8)
  store i8* %call, i8** %buffer, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %10 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %10, i32 0, i32 0
  %11 = load double, double* %left_number, align 8
  %12 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %12, i32 0, i32 1
  %13 = load double, double* %right_number, align 8
  %call4 = call i8* @gimp_number_pair_entry_strdup_number_pair_string(%struct._GimpNumberPairEntry* %9, double %11, double %13)
  store i8* %call4, i8** %buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %15 = bitcast %struct._GimpNumberPairEntry* %14 to i8*
  %call5 = call i32 @g_signal_handlers_block_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpNumberPairEntry*)* @gimp_number_pair_entry_changed to i8*), i8* null)
  %16 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %17 = bitcast %struct._GimpNumberPairEntry* %16 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_entry_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call6)
  %18 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkEntry*
  %19 = load i8*, i8** %buffer, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %18, i8* %19)
  %20 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %22 = bitcast %struct._GimpNumberPairEntry* %21 to i8*
  %call8 = call i32 @g_signal_handlers_unblock_matched(i8* %22, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpNumberPairEntry*)* @gimp_number_pair_entry_changed to i8*), i8* null)
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare void @g_object_thaw_notify(%struct._GObject*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_number_pair_entry_get_values(%struct._GimpNumberPairEntry* %entry1, double* %left, double* %right) #3 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %left.addr = alloca double*, align 8
  %right.addr = alloca double*, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  store double* %left, double** %left.addr, align 8
  store double* %right, double** %right.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpNumberPairEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_number_pair_entry_get_values, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.18

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv12 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv12, align 8
  %15 = bitcast i8* %14 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %15, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %16 = load double*, double** %left.addr, align 8
  %cmp13 = icmp ne double* %16, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  %17 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %17, i32 0, i32 0
  %18 = load double, double* %left_number, align 8
  %19 = load double*, double** %left.addr, align 8
  store double %18, double* %19, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %do.end
  %20 = load double*, double** %right.addr, align 8
  %cmp16 = icmp ne double* %20, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %21 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %21, i32 0, i32 1
  %22 = load double, double* %right_number, align 8
  %23 = load double*, double** %right.addr, align 8
  store double %22, double* %23, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.10, %if.then.17, %if.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_number_pair_entry_set_default_text(%struct._GimpNumberPairEntry* %entry1, i8* %string) #3 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %string.addr = alloca i8*, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpNumberPairEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_number_pair_entry_set_default_text, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv12 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv12, align 8
  %15 = bitcast i8* %14 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %15, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %16 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_text = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %16, i32 0, i32 8
  %17 = load i8*, i8** %default_text, align 8
  call void @g_free(i8* %17)
  %18 = load i8*, i8** %string.addr, align 8
  %call13 = call noalias i8* @g_strdup(i8* %18)
  %19 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_text14 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %19, i32 0, i32 8
  store i8* %call13, i8** %default_text14, align 8
  %20 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  call void @gimp_number_pair_entry_update_text(%struct._GimpNumberPairEntry* %20)
  %21 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %22 = bitcast %struct._GimpNumberPairEntry* %21 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  br label %return

return:                                           ; preds = %do.end, %if.else.10
  ret void
}

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_number_pair_entry_get_default_text(%struct._GimpNumberPairEntry* %entry1) #3 {
entry:
  %retval = alloca i8*, align 8
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpNumberPairEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_number_pair_entry_get_default_text, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv12 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv12, align 8
  %15 = bitcast i8* %14 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %15, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %16 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_text = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %16, i32 0, i32 8
  %17 = load i8*, i8** %default_text, align 8
  store i8* %17, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.10
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define void @gimp_number_pair_entry_set_aspect(%struct._GimpNumberPairEntry* %entry1, i32 %aspect) #3 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %aspect.addr = alloca i32, align 4
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  store i32 %aspect, i32* %aspect.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpNumberPairEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_number_pair_entry_set_aspect, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %call12 = call i32 @gimp_number_pair_entry_get_aspect(%struct._GimpNumberPairEntry* %13)
  %14 = load i32, i32* %aspect.addr, align 4
  %cmp13 = icmp eq i32 %call12, %14
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  br label %sw.epilog

if.end.15:                                        ; preds = %do.end
  %15 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv16 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %15, i32 0, i32 1
  %16 = load i8*, i8** %priv16, align 8
  %17 = bitcast i8* %16 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %17, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %18 = load i32, i32* %aspect.addr, align 4
  switch i32 %18, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.18
    i32 1, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end.15
  %19 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %20 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %20, i32 0, i32 0
  %21 = load double, double* %left_number, align 8
  %22 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number17 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %22, i32 0, i32 0
  %23 = load double, double* %left_number17, align 8
  call void @gimp_number_pair_entry_set_values(%struct._GimpNumberPairEntry* %19, double %21, double %23)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end.15, %if.end.15
  %24 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %25 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %25, i32 0, i32 1
  %26 = load double, double* %right_number, align 8
  %27 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number19 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %27, i32 0, i32 0
  %28 = load double, double* %left_number19, align 8
  call void @gimp_number_pair_entry_set_values(%struct._GimpNumberPairEntry* %24, double %26, double %28)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.10, %if.then.14, %if.end.15, %sw.bb.18, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_number_pair_entry_set_user_override(%struct._GimpNumberPairEntry* %entry1, i32 %user_override) #3 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %user_override.addr = alloca i32, align 4
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  store i32 %user_override, i32* %user_override.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpNumberPairEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_number_pair_entry_set_user_override, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv12 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv12, align 8
  %15 = bitcast i8* %14 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %15, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %16 = load i32, i32* %user_override.addr, align 4
  %17 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %user_override13 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %17, i32 0, i32 4
  store i32 %16, i32* %user_override13, align 4
  %18 = load i32, i32* %user_override.addr, align 4
  %tobool14 = icmp ne i32 %18, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  %19 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %20 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %20, i32 0, i32 2
  %21 = load double, double* %default_left_number, align 8
  %22 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %22, i32 0, i32 3
  %23 = load double, double* %default_right_number, align 8
  call void @gimp_number_pair_entry_set_default_values(%struct._GimpNumberPairEntry* %19, double %21, double %23)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  %24 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %25 = load i32, i32* %user_override.addr, align 4
  %tobool17 = icmp ne i32 %25, 0
  %lnot = xor i1 %tobool17, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gimp_number_pair_entry_modify_font(%struct._GimpNumberPairEntry* %24, i32 %lnot.ext)
  %26 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %27 = bitcast %struct._GimpNumberPairEntry* %26 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.16, %if.else.10
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_number_pair_entry_set_default_values(%struct._GimpNumberPairEntry* %entry1, double %left, double %right) #3 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %left.addr = alloca double, align 8
  %right.addr = alloca double, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  store double %left, double* %left.addr, align 8
  store double %right, double* %right.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpNumberPairEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_number_pair_entry_set_default_values, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.17

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv12 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv12, align 8
  %15 = bitcast i8* %14 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %15, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %16 = load double, double* %left.addr, align 8
  %17 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %17, i32 0, i32 2
  store double %16, double* %default_left_number, align 8
  %18 = load double, double* %right.addr, align 8
  %19 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %19, i32 0, i32 3
  store double %18, double* %default_right_number, align 8
  %20 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %user_override = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %20, i32 0, i32 4
  %21 = load i32, i32* %user_override, align 4
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %do.end
  %22 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %23 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_left_number15 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %23, i32 0, i32 2
  %24 = load double, double* %default_left_number15, align 8
  %25 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_right_number16 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %25, i32 0, i32 3
  %26 = load double, double* %default_right_number16, align 8
  call void @gimp_number_pair_entry_set_values(%struct._GimpNumberPairEntry* %22, double %24, double %26)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.10, %if.then.14, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_number_pair_entry_modify_font(%struct._GimpNumberPairEntry* %entry1, i32 %italic) #3 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %italic.addr = alloca i32, align 4
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %rc_style = alloca %struct._GtkRcStyle*, align 8
  %context = alloca %struct._PangoContext*, align 8
  %font_desc6 = alloca %struct._PangoFontDescription*, align 8
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  store i32 %italic, i32* %italic.addr, align 4
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv2, align 8
  %2 = bitcast i8* %1 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %2, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %3 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %font_italic = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %3, i32 0, i32 5
  %4 = load i32, i32* %font_italic, align 4
  %5 = load i32, i32* %italic.addr, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %7 = bitcast %struct._GimpNumberPairEntry* %6 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  %call4 = call %struct._GtkRcStyle* @gtk_widget_get_modifier_style(%struct._GtkWidget* %8)
  store %struct._GtkRcStyle* %call4, %struct._GtkRcStyle** %rc_style, align 8
  %9 = load %struct._GtkRcStyle*, %struct._GtkRcStyle** %rc_style, align 8
  %font_desc = getelementptr inbounds %struct._GtkRcStyle, %struct._GtkRcStyle* %9, i32 0, i32 3
  %10 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %tobool = icmp ne %struct._PangoFontDescription* %10, null
  br i1 %tobool, label %if.end.13, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %12 = bitcast %struct._GimpNumberPairEntry* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  %call9 = call %struct._PangoContext* @gtk_widget_get_pango_context(%struct._GtkWidget* %13)
  store %struct._PangoContext* %call9, %struct._PangoContext** %context, align 8
  %14 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %call10 = call %struct._PangoFontDescription* @pango_context_get_font_description(%struct._PangoContext* %14)
  store %struct._PangoFontDescription* %call10, %struct._PangoFontDescription** %font_desc6, align 8
  %15 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc6, align 8
  %call11 = call %struct._PangoFontDescription* @pango_font_description_copy(%struct._PangoFontDescription* %15)
  %16 = load %struct._GtkRcStyle*, %struct._GtkRcStyle** %rc_style, align 8
  %font_desc12 = getelementptr inbounds %struct._GtkRcStyle, %struct._GtkRcStyle* %16, i32 0, i32 3
  store %struct._PangoFontDescription* %call11, %struct._PangoFontDescription** %font_desc12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.5, %if.end
  %17 = load %struct._GtkRcStyle*, %struct._GtkRcStyle** %rc_style, align 8
  %font_desc14 = getelementptr inbounds %struct._GtkRcStyle, %struct._GtkRcStyle* %17, i32 0, i32 3
  %18 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc14, align 8
  %19 = load i32, i32* %italic.addr, align 4
  %tobool15 = icmp ne i32 %19, 0
  %cond = select i1 %tobool15, i32 2, i32 0
  call void @pango_font_description_set_style(%struct._PangoFontDescription* %18, i32 %cond)
  %20 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %21 = bitcast %struct._GimpNumberPairEntry* %20 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call16)
  %22 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  %23 = load %struct._GtkRcStyle*, %struct._GtkRcStyle** %rc_style, align 8
  call void @gtk_widget_modify_style(%struct._GtkWidget* %22, %struct._GtkRcStyle* %23)
  %24 = load i32, i32* %italic.addr, align 4
  %25 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %font_italic18 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %25, i32 0, i32 5
  store i32 %24, i32* %font_italic18, align 4
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_number_pair_entry_get_user_override(%struct._GimpNumberPairEntry* %entry1) #3 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpNumberPairEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_number_pair_entry_get_user_override, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv12 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv12, align 8
  %15 = bitcast i8* %14 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %15, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %16 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %user_override = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %16, i32 0, i32 4
  %17 = load i32, i32* %user_override, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.10
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @gimp_number_pair_entry_get_default_values(%struct._GimpNumberPairEntry* %entry1, double* %left, double* %right) #3 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %left.addr = alloca double*, align 8
  %right.addr = alloca double*, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  store double* %left, double** %left.addr, align 8
  store double* %right, double** %right.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpNumberPairEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_number_pair_entry_get_default_values, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.18

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv12 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv12, align 8
  %15 = bitcast i8* %14 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %15, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %16 = load double*, double** %left.addr, align 8
  %cmp13 = icmp ne double* %16, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  %17 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %17, i32 0, i32 2
  %18 = load double, double* %default_left_number, align 8
  %19 = load double*, double** %left.addr, align 8
  store double %18, double* %19, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %do.end
  %20 = load double*, double** %right.addr, align 8
  %cmp16 = icmp ne double* %20, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %21 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %21, i32 0, i32 3
  %22 = load double, double* %default_right_number, align 8
  %23 = load double*, double** %right.addr, align 8
  store double %22, double* %23, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.10, %if.then.17, %if.end.15
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_number_pair_entry_class_init(%struct._GimpNumberPairEntryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpNumberPairEntryClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpNumberPairEntryClass* %klass, %struct._GimpNumberPairEntryClass** %klass.addr, align 8
  %0 = load %struct._GimpNumberPairEntryClass*, %struct._GimpNumberPairEntryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpNumberPairEntryClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpNumberPairEntryClass*, %struct._GimpNumberPairEntryClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpNumberPairEntryClass* %3 to i8*
  call void @g_type_class_add_private(i8* %4, i64 88)
  %5 = load %struct._GimpNumberPairEntryClass*, %struct._GimpNumberPairEntryClass** %klass.addr, align 8
  %6 = bitcast %struct._GimpNumberPairEntryClass* %5 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i64 %7, i32 1, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @entry_signals, i32 0, i64 0), align 4
  %8 = load %struct._GimpNumberPairEntryClass*, %struct._GimpNumberPairEntryClass** %klass.addr, align 8
  %9 = bitcast %struct._GimpNumberPairEntryClass* %8 to %struct._GTypeClass*
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type2, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i64 %10, i32 1, i32 832, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call3, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @entry_signals, i32 0, i64 1), align 4
  %11 = load %struct._GimpNumberPairEntryClass*, %struct._GimpNumberPairEntryClass** %klass.addr, align 8
  %numbers_changed = getelementptr inbounds %struct._GimpNumberPairEntryClass, %struct._GimpNumberPairEntryClass* %11, i32 0, i32 1
  store void (%struct._GimpNumberPairEntry*)* null, void (%struct._GimpNumberPairEntry*)** %numbers_changed, align 8
  %12 = load %struct._GimpNumberPairEntryClass*, %struct._GimpNumberPairEntryClass** %klass.addr, align 8
  %ratio_changed = getelementptr inbounds %struct._GimpNumberPairEntryClass, %struct._GimpNumberPairEntryClass* %12, i32 0, i32 2
  store void (%struct._GimpNumberPairEntry*)* null, void (%struct._GimpNumberPairEntry*)** %ratio_changed, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_number_pair_entry_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_number_pair_entry_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_number_pair_entry_finalize, void (%struct._GObject*)** %finalize, align 8
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* null, double 0x10000000000000, double 0x7FEFFFFFFFFFFFFF, double 1.000000e+02, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 1, %struct._GParamSpec* %call4)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* null, double 0x10000000000000, double 0x7FEFFFFFFFFFFFFF, double 1.000000e+02, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 2, %struct._GParamSpec* %call5)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* null, double 0x10000000000000, double 0x7FEFFFFFFFFFFFFF, double 1.000000e+02, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 3, %struct._GParamSpec* %call6)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), i8* null, double 0x10000000000000, double 0x7FEFFFFFFFFFFFFF, double 1.000000e+02, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 4, %struct._GParamSpec* %call7)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 5, %struct._GParamSpec* %call8)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 6, %struct._GParamSpec* %call9)
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i32 0, i32 0), i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 7, %struct._GParamSpec* %call10)
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %23, i32 8, %struct._GParamSpec* %call11)
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i32 0, i32 0), double 0x10000000000000, double 0x7FEFFFFFFFFFFFFF, double 0x10000000000000, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %24, i32 9, %struct._GParamSpec* %call12)
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call13 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0), double 0x10000000000000, double 0x7FEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 10, %struct._GParamSpec* %call13)
  %26 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call14 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* null, double 0x10000000000000, double 0x7FEFFFFFFFFFFFFF, double 1.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %26, i32 11, %struct._GParamSpec* %call14)
  %27 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call15 = call i64 @gimp_aspect_type_get_type() #7
  %call16 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* null, i64 %call15, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %27, i32 12, %struct._GParamSpec* %call16)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_number_pair_entry_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %entry1 = alloca %struct._GimpNumberPairEntry*, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpNumberPairEntry*
  store %struct._GimpNumberPairEntry* %2, %struct._GimpNumberPairEntry** %entry1, align 8
  %3 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %priv3 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv3, align 8
  %5 = bitcast i8* %4 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %5, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.11
    i32 6, label %sw.bb.13
    i32 7, label %sw.bb.20
    i32 8, label %sw.bb.22
    i32 9, label %sw.bb.24
    i32 10, label %sw.bb.26
    i32 11, label %sw.bb.28
    i32 12, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call double @g_value_get_double(%struct._GValue* %8)
  %9 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %9, i32 0, i32 1
  %10 = load double, double* %right_number, align 8
  call void @gimp_number_pair_entry_set_values(%struct._GimpNumberPairEntry* %7, double %call4, double %10)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %11 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %12 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %12, i32 0, i32 0
  %13 = load double, double* %left_number, align 8
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %14)
  call void @gimp_number_pair_entry_set_values(%struct._GimpNumberPairEntry* %11, double %13, double %call6)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %15 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %16)
  %17 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %17, i32 0, i32 3
  %18 = load double, double* %default_right_number, align 8
  call void @gimp_number_pair_entry_set_default_values(%struct._GimpNumberPairEntry* %15, double %call8, double %18)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %19 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %20 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %20, i32 0, i32 2
  %21 = load double, double* %default_left_number, align 8
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call double @g_value_get_double(%struct._GValue* %22)
  call void @gimp_number_pair_entry_set_default_values(%struct._GimpNumberPairEntry* %19, double %21, double %call10)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %23 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %24)
  call void @gimp_number_pair_entry_set_user_override(%struct._GimpNumberPairEntry* %23, i32 %call12)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %25 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %separators = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %25, i32 0, i32 6
  %26 = load i32*, i32** %separators, align 8
  %27 = bitcast i32* %26 to i8*
  call void @g_free(i8* %27)
  %28 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %num_separators = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %28, i32 0, i32 7
  store i64 0, i64* %num_separators, align 8
  %29 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i8* @g_value_get_string(%struct._GValue* %29)
  %tobool = icmp ne i8* %call14, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.13
  %30 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call i8* @g_value_get_string(%struct._GValue* %30)
  %31 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %num_separators16 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %31, i32 0, i32 7
  %call17 = call noalias i32* @g_utf8_to_ucs4(i8* %call15, i64 -1, i64* null, i64* %num_separators16, %struct._GError** null)
  %32 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %separators18 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %32, i32 0, i32 6
  store i32* %call17, i32** %separators18, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.13
  %33 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %separators19 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %33, i32 0, i32 6
  store i32* null, i32** %separators19, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %34 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %35 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call21 = call i8* @g_value_get_string(%struct._GValue* %35)
  call void @gimp_number_pair_entry_set_default_text(%struct._GimpNumberPairEntry* %34, i8* %call21)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %36 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call23 = call i32 @g_value_get_boolean(%struct._GValue* %36)
  %37 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %allow_simplification = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %37, i32 0, i32 9
  store i32 %call23, i32* %allow_simplification, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %38 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call25 = call double @g_value_get_double(%struct._GValue* %38)
  %39 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %min_valid_value = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %39, i32 0, i32 10
  store double %call25, double* %min_valid_value, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call27 = call double @g_value_get_double(%struct._GValue* %40)
  %41 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %max_valid_value = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %41, i32 0, i32 11
  store double %call27, double* %max_valid_value, align 8
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %42 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %43 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call29 = call double @g_value_get_double(%struct._GValue* %43)
  call void @gimp_number_pair_entry_set_ratio(%struct._GimpNumberPairEntry* %42, double %call29)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry
  %44 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %45 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call31 = call i32 @g_value_get_enum(%struct._GValue* %45)
  call void @gimp_number_pair_entry_set_aspect(%struct._GimpNumberPairEntry* %44, i32 %call31)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %46 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %46, %struct._GObject** %_glib__object, align 8
  %47 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %47, %struct._GParamSpec** %_glib__pspec, align 8
  %48 = load i32, i32* %property_id.addr, align 4
  store i32 %48, i32* %_glib__property_id, align 4
  %49 = load i32, i32* %_glib__property_id, align 4
  %50 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %50, i32 0, i32 1
  %51 = load i8*, i8** %name, align 8
  %52 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %53 = bitcast %struct._GParamSpec* %52 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %53, i32 0, i32 0
  %54 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %54, i32 0, i32 0
  %55 = load i64, i64* %g_type, align 8
  %call32 = call i8* @g_type_name(i64 %55)
  %56 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %57 = bitcast %struct._GObject* %56 to %struct._GTypeInstance*
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %57, i32 0, i32 0
  %58 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %58, i32 0, i32 0
  %59 = load i64, i64* %g_type34, align 8
  %call35 = call i8* @g_type_name(i64 %59)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 1141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %49, i8* %51, i8* %call32, i8* %call35)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.30, %sw.bb.28, %sw.bb.26, %sw.bb.24, %sw.bb.22, %sw.bb.20, %if.end, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_number_pair_entry_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %entry1 = alloca %struct._GimpNumberPairEntry*, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpNumberPairEntry*
  store %struct._GimpNumberPairEntry* %2, %struct._GimpNumberPairEntry** %entry1, align 8
  %3 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %priv3 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv3, align 8
  %5 = bitcast i8* %4 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %5, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.7
    i32 6, label %sw.bb.8
    i32 8, label %sw.bb.10
    i32 7, label %sw.bb.11
    i32 9, label %sw.bb.12
    i32 10, label %sw.bb.13
    i32 11, label %sw.bb.14
    i32 12, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %8, i32 0, i32 0
  %9 = load double, double* %left_number, align 8
  call void @g_value_set_double(%struct._GValue* %7, double %9)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %11, i32 0, i32 1
  %12 = load double, double* %right_number, align 8
  call void @g_value_set_double(%struct._GValue* %10, double %12)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %14, i32 0, i32 2
  %15 = load double, double* %default_left_number, align 8
  call void @g_value_set_double(%struct._GValue* %13, double %15)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %17, i32 0, i32 3
  %18 = load double, double* %default_right_number, align 8
  call void @g_value_set_double(%struct._GValue* %16, double %18)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %user_override = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %20, i32 0, i32 4
  %21 = load i32, i32* %user_override, align 4
  call void @g_value_set_boolean(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %separators = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %23, i32 0, i32 6
  %24 = load i32*, i32** %separators, align 8
  %25 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %num_separators = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %25, i32 0, i32 7
  %26 = load i64, i64* %num_separators, align 8
  %call9 = call noalias i8* @g_ucs4_to_utf8(i32* %24, i64 %26, i64* null, i64* null, %struct._GError** null)
  call void @g_value_take_string(%struct._GValue* %22, i8* %call9)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %28 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %allow_simplification = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %28, i32 0, i32 9
  %29 = load i32, i32* %allow_simplification, align 4
  call void @g_value_set_boolean(%struct._GValue* %27, i32 %29)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %30 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %31 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_text = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %31, i32 0, i32 8
  %32 = load i8*, i8** %default_text, align 8
  call void @g_value_set_string(%struct._GValue* %30, i8* %32)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %33 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %34 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %min_valid_value = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %34, i32 0, i32 10
  %35 = load double, double* %min_valid_value, align 8
  call void @g_value_set_double(%struct._GValue* %33, double %35)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %36 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %37 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %max_valid_value = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %37, i32 0, i32 11
  %38 = load double, double* %max_valid_value, align 8
  call void @g_value_set_double(%struct._GValue* %36, double %38)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %39 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %40 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %call15 = call double @gimp_number_pair_entry_get_ratio(%struct._GimpNumberPairEntry* %40)
  call void @g_value_set_double(%struct._GValue* %39, double %call15)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %41 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %42 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %call17 = call i32 @gimp_number_pair_entry_get_aspect(%struct._GimpNumberPairEntry* %42)
  call void @g_value_set_enum(%struct._GValue* %41, i32 %call17)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %43 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %43, %struct._GObject** %_glib__object, align 8
  %44 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %44, %struct._GParamSpec** %_glib__pspec, align 8
  %45 = load i32, i32* %property_id.addr, align 4
  store i32 %45, i32* %_glib__property_id, align 4
  %46 = load i32, i32* %_glib__property_id, align 4
  %47 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %47, i32 0, i32 1
  %48 = load i8*, i8** %name, align 8
  %49 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %50 = bitcast %struct._GParamSpec* %49 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %50, i32 0, i32 0
  %51 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %51, i32 0, i32 0
  %52 = load i64, i64* %g_type, align 8
  %call18 = call i8* @g_type_name(i64 %52)
  %53 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %54 = bitcast %struct._GObject* %53 to %struct._GTypeInstance*
  %g_class19 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class19, align 8
  %g_type20 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %55, i32 0, i32 0
  %56 = load i64, i64* %g_type20, align 8
  %call21 = call i8* @g_type_name(i64 %56)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 1199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %46, i8* %48, i8* %call18, i8* %call21)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.16, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_number_pair_entry_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GimpNumberPairEntry*
  %priv1 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %3, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %4 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %separators = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %4, i32 0, i32 6
  %5 = load i32*, i32** %separators, align 8
  %tobool = icmp ne i32* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %separators2 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %6, i32 0, i32 6
  %7 = load i32*, i32** %separators2, align 8
  %8 = bitcast i32* %7 to i8*
  call void @g_free(i8* %8)
  %9 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %separators3 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %9, i32 0, i32 6
  store i32* null, i32** %separators3, align 8
  %10 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %num_separators = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %10, i32 0, i32 7
  store i64 0, i64* %num_separators, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_text = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %11, i32 0, i32 8
  %12 = load i8*, i8** %default_text, align 8
  %tobool4 = icmp ne i8* %12, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %13 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_text6 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %13, i32 0, i32 8
  %14 = load i8*, i8** %default_text6, align 8
  call void @g_free(i8* %14)
  %15 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_text7 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %15, i32 0, i32 8
  store i8* null, i8** %default_text7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %16 = load i8*, i8** @gimp_number_pair_entry_parent_class, align 8
  %17 = bitcast i8* %16 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %17, i64 80)
  %18 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 6
  %19 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %20 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %19(%struct._GObject* %20)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_aspect_type_get_type() #2

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare noalias i32* @g_utf8_to_ucs4(i8*, i64, i64*, i64*, %struct._GError**) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare noalias i8* @g_ucs4_to_utf8(i32*, i64, i64*, i64*, %struct._GError**) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_number_pair_entry_changed(%struct._GimpNumberPairEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  call void @gimp_number_pair_entry_modify_font(%struct._GimpNumberPairEntry* %0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_number_pair_entry_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %entry1 = alloca %struct._GimpNumberPairEntry*, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %force_user_override = alloca i32, align 4
  %kevent = alloca %struct._GdkEventKey*, align 8
  %text = alloca i8*, align 8
  %parse_result = alloca i32, align 4
  %left_value = alloca double, align 8
  %right_value = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpNumberPairEntry*
  store %struct._GimpNumberPairEntry* %2, %struct._GimpNumberPairEntry** %entry1, align 8
  %3 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %priv3 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %3, i32 0, i32 1
  %4 = load i8*, i8** %priv3, align 8
  %5 = bitcast i8* %4 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %5, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  store i32 0, i32* %force_user_override, align 4
  %6 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %6 to i32*
  %7 = load i32, i32* %type, align 4
  switch i32 %7, label %sw.default.26 [
    i32 8, label %sw.bb
    i32 12, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %9 = bitcast %union._GdkEvent* %8 to %struct._GdkEventKey*
  store %struct._GdkEventKey* %9, %struct._GdkEventKey** %kevent, align 8
  %10 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %10, i32 0, i32 5
  %11 = load i32, i32* %keyval, align 4
  %cmp = icmp ne i32 %11, 65293
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %12 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval4 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %12, i32 0, i32 5
  %13 = load i32, i32* %keyval4, align 4
  %cmp5 = icmp ne i32 %13, 65421
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %14 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval7 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %14, i32 0, i32 5
  %15 = load i32, i32* %keyval7, align 4
  %cmp8 = icmp ne i32 %15, 65076
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.6
  br label %sw.epilog.27

if.end:                                           ; preds = %land.lhs.true.6, %land.lhs.true, %sw.bb
  store i32 1, i32* %force_user_override, align 4
  br label %sw.bb.9

sw.bb.9:                                          ; preds = %entry, %if.end
  %16 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %17 = bitcast %struct._GimpNumberPairEntry* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_entry_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkEntry*
  %call12 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %18)
  store i8* %call12, i8** %text, align 8
  %19 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %20 = load i8*, i8** %text, align 8
  %call13 = call i32 @gimp_number_pair_entry_parse_text(%struct._GimpNumberPairEntry* %19, i8* %20, double* %left_value, double* %right_value)
  store i32 %call13, i32* %parse_result, align 4
  %21 = load i32, i32* %parse_result, align 4
  switch i32 %21, label %sw.default [
    i32 0, label %sw.bb.14
    i32 1, label %sw.bb.21
  ]

sw.bb.14:                                         ; preds = %sw.bb.9
  %22 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %22, i32 0, i32 0
  %23 = load double, double* %left_number, align 8
  %24 = load double, double* %left_value, align 8
  %cmp15 = fcmp une double %23, %24
  br i1 %cmp15, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.14
  %25 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %25, i32 0, i32 1
  %26 = load double, double* %right_number, align 8
  %27 = load double, double* %right_value, align 8
  %cmp16 = fcmp une double %26, %27
  br i1 %cmp16, label %if.then.18, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false
  %28 = load i32, i32* %force_user_override, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false, %sw.bb.14
  %29 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %30 = load double, double* %left_value, align 8
  %31 = load double, double* %right_value, align 8
  call void @gimp_number_pair_entry_set_values(%struct._GimpNumberPairEntry* %29, double %30, double %31)
  %32 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %user_override = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %32, i32 0, i32 4
  store i32 1, i32* %user_override, align 4
  %33 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %34 = bitcast %struct._GimpNumberPairEntry* %33 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %lor.lhs.false.17
  br label %sw.epilog

sw.bb.21:                                         ; preds = %sw.bb.9
  %36 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %37 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_left_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %37, i32 0, i32 2
  %38 = load double, double* %default_left_number, align 8
  %39 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %default_right_number = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %39, i32 0, i32 3
  %40 = load double, double* %default_right_number, align 8
  call void @gimp_number_pair_entry_set_values(%struct._GimpNumberPairEntry* %36, double %38, double %40)
  %41 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %user_override22 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %41, i32 0, i32 4
  store i32 0, i32* %user_override22, align 4
  %42 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %43 = bitcast %struct._GimpNumberPairEntry* %42 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 80)
  %44 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.21, %if.end.20
  %45 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  call void @gimp_number_pair_entry_update_text(%struct._GimpNumberPairEntry* %45)
  %46 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry1, align 8
  %47 = bitcast %struct._GimpNumberPairEntry* %46 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_editable_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call24)
  %48 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkEditable*
  call void @gtk_editable_set_position(%struct._GtkEditable* %48, i32 -1)
  br label %sw.epilog.27

sw.default.26:                                    ; preds = %entry
  br label %sw.epilog.27

sw.epilog.27:                                     ; preds = %sw.default.26, %sw.epilog, %if.then
  ret i32 0
}

declare void @gtk_widget_set_direction(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_number_pair_entry_parse_text(%struct._GimpNumberPairEntry* %entry1, i8* %text, double* %left_value, double* %right_value) #3 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %text.addr = alloca i8*, align 8
  %left_value.addr = alloca double*, align 8
  %right_value.addr = alloca double*, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %new_left_number = alloca double, align 8
  %new_right_number = alloca double, align 8
  %simplify = alloca i32, align 4
  %end = alloca i8*, align 8
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store double* %left_value, double** %left_value.addr, align 8
  store double* %right_value, double** %right_value.addr, align 8
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv2, align 8
  %2 = bitcast i8* %1 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %2, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  store i32 0, i32* %simplify, align 4
  %3 = load i8*, i8** %text.addr, align 8
  %call = call double @strtod(i8* %3, i8** %end) #5
  store double %call, double* %new_left_number, align 8
  %4 = load i8*, i8** %end, align 8
  %5 = load i8*, i8** %text.addr, align 8
  %cmp = icmp eq i8* %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %end, align 8
  store i8* %6, i8** %text.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i8*, i8** %text.addr, align 8
  %call3 = call i32 @g_utf8_get_char(i8* %7) #8
  %call4 = call i32 @g_unichar_isspace(i32 %call3) #7
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %text.addr, align 8
  %9 = load i8*, i8** %text.addr, align 8
  %10 = load i8, i8* %9, align 1
  %idxprom = zext i8 %10 to i64
  %11 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %12 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %text.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %14 = load i8*, i8** %text.addr, align 8
  %call5 = call i32 @g_utf8_get_char(i8* %14) #8
  %call6 = call i32 @gimp_number_pair_entry_valid_separator(%struct._GimpNumberPairEntry* %13, i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else.9, label %if.then.8

if.then.8:                                        ; preds = %while.end
  store i32 2, i32* %retval
  br label %return

if.else.9:                                        ; preds = %while.end
  %15 = load i8*, i8** %text.addr, align 8
  %16 = load i8*, i8** %text.addr, align 8
  %17 = load i8, i8* %16, align 1
  %idxprom10 = zext i8 %17 to i64
  %18 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 %idxprom10
  %19 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %19 to i32
  %idx.ext13 = sext i32 %conv12 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %15, i64 %idx.ext13
  store i8* %add.ptr14, i8** %text.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9
  %20 = load i8*, i8** %text.addr, align 8
  %call16 = call double @strtod(i8* %20, i8** %end) #5
  store double %call16, double* %new_right_number, align 8
  %21 = load i8*, i8** %end, align 8
  %22 = load i8*, i8** %text.addr, align 8
  %cmp17 = icmp eq i8* %21, %22
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.end.15
  store i32 2, i32* %retval
  br label %return

if.else.20:                                       ; preds = %if.end.15
  %23 = load i8*, i8** %end, align 8
  store i8* %23, i8** %text.addr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.body.26, %if.end.21
  %24 = load i8*, i8** %text.addr, align 8
  %call23 = call i32 @g_utf8_get_char(i8* %24) #8
  %call24 = call i32 @g_unichar_isspace(i32 %call23) #7
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %while.body.26, label %while.end.32

while.body.26:                                    ; preds = %while.cond.22
  %25 = load i8*, i8** %text.addr, align 8
  %26 = load i8*, i8** %text.addr, align 8
  %27 = load i8, i8* %26, align 1
  %idxprom27 = zext i8 %27 to i64
  %28 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %28, i64 %idxprom27
  %29 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %29 to i32
  %idx.ext30 = sext i32 %conv29 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %25, i64 %idx.ext30
  store i8* %add.ptr31, i8** %text.addr, align 8
  br label %while.cond.22

while.end.32:                                     ; preds = %while.cond.22
  %30 = load i8*, i8** %text.addr, align 8
  %call33 = call i32 @g_utf8_get_char(i8* %30) #8
  %cmp34 = icmp eq i32 %call33, 61
  br i1 %cmp34, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %while.end.32
  %31 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %allow_simplification = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %31, i32 0, i32 9
  %32 = load i32, i32* %allow_simplification, align 4
  store i32 %32, i32* %simplify, align 4
  %33 = load i8*, i8** %text.addr, align 8
  %34 = load i8*, i8** %text.addr, align 8
  %35 = load i8, i8* %34, align 1
  %idxprom37 = zext i8 %35 to i64
  %36 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %36, i64 %idxprom37
  %37 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %37 to i32
  %idx.ext40 = sext i32 %conv39 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %33, i64 %idx.ext40
  store i8* %add.ptr41, i8** %text.addr, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.36, %while.end.32
  br label %while.cond.43

while.cond.43:                                    ; preds = %while.body.47, %if.end.42
  %38 = load i8*, i8** %text.addr, align 8
  %call44 = call i32 @g_utf8_get_char(i8* %38) #8
  %call45 = call i32 @g_unichar_isspace(i32 %call44) #7
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %while.body.47, label %while.end.53

while.body.47:                                    ; preds = %while.cond.43
  %39 = load i8*, i8** %text.addr, align 8
  %40 = load i8*, i8** %text.addr, align 8
  %41 = load i8, i8* %40, align 1
  %idxprom48 = zext i8 %41 to i64
  %42 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %42, i64 %idxprom48
  %43 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %43 to i32
  %idx.ext51 = sext i32 %conv50 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %39, i64 %idx.ext51
  store i8* %add.ptr52, i8** %text.addr, align 8
  br label %while.cond.43

while.end.53:                                     ; preds = %while.cond.43
  %44 = load i8*, i8** %text.addr, align 8
  %45 = load i8, i8* %44, align 1
  %tobool54 = icmp ne i8 %45, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %while.end.53
  store i32 2, i32* %retval
  br label %return

if.end.56:                                        ; preds = %while.end.53
  %46 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %47 = load double, double* %new_left_number, align 8
  %48 = load double, double* %new_right_number, align 8
  %call57 = call i32 @gimp_number_pair_entry_numbers_in_range(%struct._GimpNumberPairEntry* %46, double %47, double %48)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.end.56
  store i32 2, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.56
  %49 = load i32, i32* %simplify, align 4
  %tobool61 = icmp ne i32 %49, 0
  br i1 %tobool61, label %land.lhs.true, label %if.else.65

land.lhs.true:                                    ; preds = %if.end.60
  %50 = load double, double* %new_right_number, align 8
  %cmp62 = fcmp une double %50, 0.000000e+00
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %land.lhs.true
  %51 = load double, double* %new_left_number, align 8
  %52 = load double, double* %new_right_number, align 8
  %div = fdiv double %51, %52
  %53 = load double*, double** %left_value.addr, align 8
  %54 = load double*, double** %right_value.addr, align 8
  call void @gimp_number_pair_entry_ratio_to_fraction(double %div, double* %53, double* %54)
  br label %if.end.66

if.else.65:                                       ; preds = %land.lhs.true, %if.end.60
  %55 = load double, double* %new_left_number, align 8
  %56 = load double*, double** %left_value.addr, align 8
  store double %55, double* %56, align 8
  %57 = load double, double* %new_right_number, align 8
  %58 = load double*, double** %right_value.addr, align 8
  store double %57, double* %58, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.65, %if.then.64
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.then.59, %if.then.55, %if.then.19, %if.then.8, %if.then
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare void @gtk_editable_set_position(%struct._GtkEditable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_editable_get_type() #2

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #6

; Function Attrs: nounwind readnone
declare i32 @g_unichar_isspace(i32) #2

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @gimp_number_pair_entry_valid_separator(%struct._GimpNumberPairEntry* %entry1, i32 %candidate) #3 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %candidate.addr = alloca i32, align 4
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %i = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  store i32 %candidate, i32* %candidate.addr, align 4
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv2, align 8
  %2 = bitcast i8* %1 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %2, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %3 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %num_separators = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %3, i32 0, i32 7
  %4 = load i64, i64* %num_separators, align 8
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %conv = sext i32 %5 to i64
  %6 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %num_separators3 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %6, i32 0, i32 7
  %7 = load i64, i64* %num_separators3, align 8
  %cmp4 = icmp slt i64 %conv, %7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %separators = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %9, i32 0, i32 6
  %10 = load i32*, i32** %separators, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %12 = load i32, i32* %candidate.addr, align 4
  %cmp6 = icmp eq i32 %11, %12
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.13

if.else:                                          ; preds = %entry
  %14 = load i32, i32* %candidate.addr, align 4
  %cmp9 = icmp eq i32 %14, 44
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.11, %if.then.8
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_number_pair_entry_numbers_in_range(%struct._GimpNumberPairEntry* %entry1, double %left_number, double %right_number) #3 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %left_number.addr = alloca double, align 8
  %right_number.addr = alloca double, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  store double %left_number, double* %left_number.addr, align 8
  store double %right_number, double* %right_number.addr, align 8
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv2, align 8
  %2 = bitcast i8* %1 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %2, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %3 = load double, double* %left_number.addr, align 8
  %4 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %min_valid_value = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %4, i32 0, i32 10
  %5 = load double, double* %min_valid_value, align 8
  %cmp = fcmp oge double %3, %5
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %6 = load double, double* %left_number.addr, align 8
  %7 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %max_valid_value = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %7, i32 0, i32 11
  %8 = load double, double* %max_valid_value, align 8
  %cmp3 = fcmp ole double %6, %8
  br i1 %cmp3, label %land.lhs.true.4, label %land.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %9 = load double, double* %right_number.addr, align 8
  %10 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %min_valid_value5 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %10, i32 0, i32 10
  %11 = load double, double* %min_valid_value5, align 8
  %cmp6 = fcmp oge double %9, %11
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.4
  %12 = load double, double* %right_number.addr, align 8
  %13 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %max_valid_value7 = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %13, i32 0, i32 11
  %14 = load double, double* %max_valid_value7, align 8
  %cmp8 = fcmp ole double %12, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.4, %land.lhs.true, %entry
  %15 = phi i1 [ false, %land.lhs.true.4 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind readnone
declare double @floor(double) #2

declare %struct._GtkRcStyle* @gtk_widget_get_modifier_style(%struct._GtkWidget*) #1

declare %struct._PangoContext* @gtk_widget_get_pango_context(%struct._GtkWidget*) #1

declare %struct._PangoFontDescription* @pango_context_get_font_description(%struct._PangoContext*) #1

declare %struct._PangoFontDescription* @pango_font_description_copy(%struct._PangoFontDescription*) #1

declare void @pango_font_description_set_style(%struct._PangoFontDescription*, i32) #1

declare void @gtk_widget_modify_style(%struct._GtkWidget*, %struct._GtkRcStyle*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_number_pair_entry_strdup_number_pair_string(%struct._GimpNumberPairEntry* %entry1, double %left_number, double %right_number) #3 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %left_number.addr = alloca double, align 8
  %right_number.addr = alloca double, align 8
  %priv = alloca %struct.GimpNumberPairEntryPrivate*, align 8
  %sep = alloca [8 x i8], align 1
  %len = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  store double %left_number, double* %left_number.addr, align 8
  store double %right_number, double* %right_number.addr, align 8
  %0 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpNumberPairEntry, %struct._GimpNumberPairEntry* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv2, align 8
  %2 = bitcast i8* %1 to %struct.GimpNumberPairEntryPrivate*
  store %struct.GimpNumberPairEntryPrivate* %2, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %3 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %num_separators = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %3, i32 0, i32 7
  %4 = load i64, i64* %num_separators, align 8
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.GimpNumberPairEntryPrivate*, %struct.GimpNumberPairEntryPrivate** %priv, align 8
  %separators = getelementptr inbounds %struct.GimpNumberPairEntryPrivate, %struct.GimpNumberPairEntryPrivate* %5, i32 0, i32 6
  %6 = load i32*, i32** %separators, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx, align 4
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %sep, i32 0, i32 0
  %call = call i32 @g_unichar_to_utf8(i32 %7, i8* %arraydecay)
  store i32 %call, i32* %len, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay3 = getelementptr inbounds [8 x i8], [8 x i8]* %sep, i32 0, i32 0
  %call4 = call i32 @g_unichar_to_utf8(i32 44, i8* %arraydecay3)
  store i32 %call4, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %len, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i8], [8 x i8]* %sep, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx5, align 1
  %9 = load double, double* %left_number.addr, align 8
  %arraydecay6 = getelementptr inbounds [8 x i8], [8 x i8]* %sep, i32 0, i32 0
  %10 = load double, double* %right_number.addr, align 8
  %call7 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), double %9, i8* %arraydecay6, double %10)
  ret i8* %call7
}

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @g_unichar_to_utf8(i32, i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
