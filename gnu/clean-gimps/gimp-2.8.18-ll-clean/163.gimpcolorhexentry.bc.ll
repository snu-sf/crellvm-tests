; ModuleID = './libgimpwidgets/gimpcolorhexentry.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorHexEntryClass = type { %struct._GtkEntryClass, void (%struct._GimpColorHexEntry*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpColorHexEntry = type { %struct._GtkEntry, %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GtkEntryCompletion = type { %struct._GObject, %struct._GtkEntryCompletionPrivate* }
%struct._GtkEntryCompletionPrivate = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkCellLayout = type opaque
%struct._GtkEditable = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_color_hex_entry_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpColorHexEntry\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_color_hex_entry_set_color = private unnamed_addr constant [31 x i8] c"gimp_color_hex_entry_set_color\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"GIMP_IS_COLOR_HEX_ENTRY (entry)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%.2x%.2x%.2x\00", align 1
@entry_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_color_hex_entry_get_color = private unnamed_addr constant [31 x i8] c"gimp_color_hex_entry_get_color\00", align 1
@gimp_color_hex_entry_parent_class = internal global i8* null, align 8
@GimpColorHexEntry_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"000000\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"focus-out-event\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"key-press-event\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"match-selected\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_hex_entry_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_hex_entry_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_hex_entry_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_entry_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 864, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_hex_entry_class_intern_init to void (i8*, i8*)*), i32 240, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorHexEntry*)* @gimp_color_hex_entry_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_hex_entry_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_hex_entry_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_hex_entry_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_hex_entry_parent_class, align 8
  %1 = load i32, i32* @GimpColorHexEntry_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorHexEntry_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorHexEntryClass*
  call void @gimp_color_hex_entry_class_init(%struct._GimpColorHexEntryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_hex_entry_init(%struct._GimpColorHexEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpColorHexEntry*, align 8
  %completion = alloca %struct._GtkEntryCompletion*, align 8
  %cell = alloca %struct._GtkCellRenderer*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %colors = alloca %struct._GimpRGB*, align 8
  %names = alloca i8**, align 8
  %num_colors = alloca i32, align 4
  %i = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GimpColorHexEntry* %entry1, %struct._GimpColorHexEntry** %entry.addr, align 8
  %0 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpColorHexEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %2, i32 8)
  %3 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %color = getelementptr inbounds %struct._GimpColorHexEntry, %struct._GimpColorHexEntry* %3, i32 0, i32 1
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %call3 = call i64 @gimp_rgb_get_type() #6
  %call4 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 2, i64 64, i64 %call3)
  store %struct._GtkListStore* %call4, %struct._GtkListStore** %store, align 8
  %call5 = call i32 @gimp_rgb_list_names(i8*** %names, %struct._GimpRGB** %colors)
  store i32 %call5, i32* %num_colors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %num_colors, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %6, %struct._GtkTreeIter* %iter)
  %7 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8**, i8*** %names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %colors, align 8
  %12 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %11, i64 %idx.ext
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %7, %struct._GtkTreeIter* %iter, i32 0, i8* %10, i32 1, %struct._GimpRGB* %add.ptr, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %colors, align 8
  %15 = bitcast %struct._GimpRGB* %14 to i8*
  call void @g_free(i8* %15)
  %16 = load i8**, i8*** %names, align 8
  %17 = bitcast i8** %16 to i8*
  call void @g_free(i8* %17)
  %call6 = call i64 @gtk_entry_completion_get_type() #6
  %18 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %call7 = call i8* (i64, i8*, ...) @g_object_new(i64 %call6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %struct._GtkListStore* %18, i8* null)
  %19 = bitcast i8* %call7 to %struct._GtkEntryCompletion*
  store %struct._GtkEntryCompletion* %19, %struct._GtkEntryCompletion** %completion, align 8
  %20 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %21 = bitcast %struct._GtkListStore* %20 to i8*
  call void @g_object_unref(i8* %21)
  %call8 = call %struct._GtkCellRenderer* @gimp_cell_renderer_color_new()
  store %struct._GtkCellRenderer* %call8, %struct._GtkCellRenderer** %cell, align 8
  %22 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %23 = bitcast %struct._GtkEntryCompletion* %22 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_cell_layout_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call9)
  %24 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkCellLayout*
  %25 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_cell_layout_pack_start(%struct._GtkCellLayout* %24, %struct._GtkCellRenderer* %25, i32 0)
  %26 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %27 = bitcast %struct._GtkEntryCompletion* %26 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_cell_layout_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call11)
  %28 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkCellLayout*
  %29 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) @gtk_cell_layout_set_attributes(%struct._GtkCellLayout* %28, %struct._GtkCellRenderer* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 1, i8* null)
  %30 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  call void @gtk_entry_completion_set_text_column(%struct._GtkEntryCompletion* %30, i32 0)
  %31 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %32 = bitcast %struct._GimpColorHexEntry* %31 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_entry_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call13)
  %33 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkEntry*
  %34 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  call void @gtk_entry_set_completion(%struct._GtkEntry* %33, %struct._GtkEntryCompletion* %34)
  %35 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %36 = bitcast %struct._GtkEntryCompletion* %35 to i8*
  call void @g_object_unref(i8* %36)
  %37 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %38 = bitcast %struct._GimpColorHexEntry* %37 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_entry_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call15)
  %39 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %40 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %41 = bitcast %struct._GimpColorHexEntry* %40 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @gimp_color_hex_entry_events to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %42 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %43 = bitcast %struct._GimpColorHexEntry* %42 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @gimp_color_hex_entry_events to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %44 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %45 = bitcast %struct._GtkEntryCompletion* %44 to i8*
  %46 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %47 = bitcast %struct._GimpColorHexEntry* %46 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkEntryCompletion*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GimpColorHexEntry*)* @gimp_color_hex_entry_matched to void ()*), i8* %47, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_hex_entry_new() #3 {
entry:
  %call = call i64 @gimp_color_hex_entry_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_hex_entry_set_color(%struct._GimpColorHexEntry* %entry1, %struct._GimpRGB* %color) #3 {
entry:
  %entry.addr = alloca %struct._GimpColorHexEntry*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %buffer = alloca [8 x i8], align 1
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store %struct._GimpColorHexEntry* %entry1, %struct._GimpColorHexEntry** %entry.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpColorHexEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_hex_entry_get_type() #6
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_color_hex_entry_set_color, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.40

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp13 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_color_hex_entry_set_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.40

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %color18 = getelementptr inbounds %struct._GimpColorHexEntry, %struct._GimpColorHexEntry* %14, i32 0, i32 1
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call19 = call double @gimp_rgb_distance(%struct._GimpRGB* %color18, %struct._GimpRGB* %15)
  %cmp20 = fcmp ogt double %call19, 0.000000e+00
  br i1 %cmp20, label %if.then.21, label %if.end.40

if.then.21:                                       ; preds = %do.end.17
  %16 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %color26 = getelementptr inbounds %struct._GimpColorHexEntry, %struct._GimpColorHexEntry* %16, i32 0, i32 1
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r27 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %17, i32 0, i32 0
  %18 = load double, double* %r27, align 8
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g28 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %19, i32 0, i32 1
  %20 = load double, double* %g28, align 8
  %21 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b29 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %21, i32 0, i32 2
  %22 = load double, double* %b29, align 8
  call void @gimp_rgb_set(%struct._GimpRGB* %color26, double %18, double %20, double %22)
  %23 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %color30 = getelementptr inbounds %struct._GimpColorHexEntry, %struct._GimpColorHexEntry* %23, i32 0, i32 1
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color30)
  %24 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %color31 = getelementptr inbounds %struct._GimpColorHexEntry, %struct._GimpColorHexEntry* %24, i32 0, i32 1
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color31, i8* %r, i8* %g, i8* %b)
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buffer, i32 0, i32 0
  %25 = load i8, i8* %r, align 1
  %conv = zext i8 %25 to i32
  %26 = load i8, i8* %g, align 1
  %conv32 = zext i8 %26 to i32
  %27 = load i8, i8* %b, align 1
  %conv33 = zext i8 %27 to i32
  %call34 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 %conv, i32 %conv32, i32 %conv33)
  %28 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %29 = bitcast %struct._GimpColorHexEntry* %28 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_entry_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call35)
  %30 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkEntry*
  %arraydecay37 = getelementptr inbounds [8 x i8], [8 x i8]* %buffer, i32 0, i32 0
  call void @gtk_entry_set_text(%struct._GtkEntry* %30, i8* %arraydecay37)
  %31 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %32 = bitcast %struct._GimpColorHexEntry* %31 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_editable_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call38)
  %33 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkEditable*
  call void @gtk_editable_set_position(%struct._GtkEditable* %33, i32 -1)
  %34 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %35 = bitcast %struct._GimpColorHexEntry* %34 to i8*
  %36 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @entry_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %35, i32 %36, i32 0)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.10, %if.else.15, %if.then.21, %do.end.17
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare double @gimp_rgb_distance(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare void @gimp_rgb_set(%struct._GimpRGB*, double, double, double) #1

declare void @gimp_rgb_clamp(%struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_editable_set_position(%struct._GtkEditable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_editable_get_type() #2

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_hex_entry_get_color(%struct._GimpColorHexEntry* %entry1, %struct._GimpRGB* %color) #3 {
entry:
  %entry.addr = alloca %struct._GimpColorHexEntry*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorHexEntry* %entry1, %struct._GimpColorHexEntry** %entry.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpColorHexEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_hex_entry_get_type() #6
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_color_hex_entry_get_color, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp13 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_color_hex_entry_get_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %15 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %color18 = getelementptr inbounds %struct._GimpColorHexEntry, %struct._GimpColorHexEntry* %15, i32 0, i32 1
  %16 = bitcast %struct._GimpRGB* %14 to i8*
  %17 = bitcast %struct._GimpRGB* %color18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_hex_entry_class_init(%struct._GimpColorHexEntryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorHexEntryClass*, align 8
  store %struct._GimpColorHexEntryClass* %klass, %struct._GimpColorHexEntryClass** %klass.addr, align 8
  %0 = load %struct._GimpColorHexEntryClass*, %struct._GimpColorHexEntryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorHexEntryClass* %0 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %1, i32 0, i32 0
  %2 = load i64, i64* %g_type, align 8
  %call = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i64 %2, i32 1, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @entry_signals, i32 0, i64 0), align 4
  %3 = load %struct._GimpColorHexEntryClass*, %struct._GimpColorHexEntryClass** %klass.addr, align 8
  %color_changed = getelementptr inbounds %struct._GimpColorHexEntryClass, %struct._GimpColorHexEntryClass* %3, i32 0, i32 1
  store void (%struct._GimpColorHexEntry*)* null, void (%struct._GimpColorHexEntry*)** %color_changed, align 8
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rgb_get_type() #2

declare i32 @gimp_rgb_list_names(i8***, %struct._GimpRGB**) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_completion_get_type() #2

declare void @g_object_unref(i8*) #1

declare %struct._GtkCellRenderer* @gimp_cell_renderer_color_new() #1

declare void @gtk_cell_layout_pack_start(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_layout_get_type() #2

declare void @gtk_cell_layout_set_attributes(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) #1

declare void @gtk_entry_completion_set_text_column(%struct._GtkEntryCompletion*, i32) #1

declare void @gtk_entry_set_completion(%struct._GtkEntry*, %struct._GtkEntryCompletion*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_hex_entry_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %entry1 = alloca %struct._GimpColorHexEntry*, align 8
  %kevent = alloca %struct._GdkEventKey*, align 8
  %text = alloca i8*, align 8
  %buffer = alloca [8 x i8], align 1
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %color20 = alloca %struct._GimpRGB, align 8
  %len = alloca i64, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_hex_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpColorHexEntry*
  store %struct._GimpColorHexEntry* %2, %struct._GimpColorHexEntry** %entry1, align 8
  %3 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %3 to i32*
  %4 = load i32, i32* %type, align 4
  switch i32 %4, label %sw.default [
    i32 8, label %sw.bb
    i32 12, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %6 = bitcast %union._GdkEvent* %5 to %struct._GdkEventKey*
  store %struct._GdkEventKey* %6, %struct._GdkEventKey** %kevent, align 8
  %7 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %7, i32 0, i32 5
  %8 = load i32, i32* %keyval, align 4
  %cmp = icmp ne i32 %8, 65293
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %9 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval3 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %9, i32 0, i32 5
  %10 = load i32, i32* %keyval3, align 4
  %cmp4 = icmp ne i32 %10, 65421
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %11 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent, align 8
  %keyval6 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %11, i32 0, i32 5
  %12 = load i32, i32* %keyval6, align 4
  %cmp7 = icmp ne i32 %12, 65076
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.5
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true.5, %land.lhs.true, %sw.bb
  br label %sw.bb.8

sw.bb.8:                                          ; preds = %entry, %if.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_entry_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkEntry*
  %call11 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %15)
  store i8* %call11, i8** %text, align 8
  %16 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry1, align 8
  %color = getelementptr inbounds %struct._GimpColorHexEntry, %struct._GimpColorHexEntry* %16, i32 0, i32 1
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %r, i8* %g, i8* %b)
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buffer, i32 0, i32 0
  %17 = load i8, i8* %r, align 1
  %conv = zext i8 %17 to i32
  %18 = load i8, i8* %g, align 1
  %conv12 = zext i8 %18 to i32
  %19 = load i8, i8* %b, align 1
  %conv13 = zext i8 %19 to i32
  %call14 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 %conv, i32 %conv12, i32 %conv13)
  %arraydecay15 = getelementptr inbounds [8 x i8], [8 x i8]* %buffer, i32 0, i32 0
  %20 = load i8*, i8** %text, align 8
  %call16 = call i32 @g_ascii_strcasecmp(i8* %arraydecay15, i8* %20)
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.34

if.then.19:                                       ; preds = %sw.bb.8
  %21 = load i8*, i8** %text, align 8
  %call21 = call i64 @strlen(i8* %21) #7
  store i64 %call21, i64* %len, align 8
  %22 = load i64, i64* %len, align 8
  %cmp22 = icmp ugt i64 %22, 0
  br i1 %cmp22, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %if.then.19
  %23 = load i8*, i8** %text, align 8
  %24 = load i64, i64* %len, align 8
  %conv25 = trunc i64 %24 to i32
  %call26 = call i32 @gimp_rgb_parse_hex(%struct._GimpRGB* %color20, i8* %23, i32 %conv25)
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.24
  %25 = load i8*, i8** %text, align 8
  %call27 = call i32 @gimp_rgb_parse_name(%struct._GimpRGB* %color20, i8* %25, i32 -1)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %lor.lhs.false, %land.lhs.true.24
  %26 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry1, align 8
  call void @gimp_color_hex_entry_set_color(%struct._GimpColorHexEntry* %26, %struct._GimpRGB* %color20)
  br label %if.end.33

if.else:                                          ; preds = %lor.lhs.false, %if.then.19
  %27 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry1, align 8
  %28 = bitcast %struct._GimpColorHexEntry* %27 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_entry_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call30)
  %29 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkEntry*
  %arraydecay32 = getelementptr inbounds [8 x i8], [8 x i8]* %buffer, i32 0, i32 0
  call void @gtk_entry_set_text(%struct._GtkEntry* %29, i8* %arraydecay32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %sw.bb.8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.34, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_hex_entry_matched(%struct._GtkEntryCompletion* %completion, %struct._GtkTreeModel* %model, %struct._GtkTreeIter* %iter, %struct._GimpColorHexEntry* %entry1) #3 {
entry:
  %completion.addr = alloca %struct._GtkEntryCompletion*, align 8
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %entry.addr = alloca %struct._GimpColorHexEntry*, align 8
  %name = alloca i8*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkEntryCompletion* %completion, %struct._GtkEntryCompletion** %completion.addr, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GimpColorHexEntry* %entry1, %struct._GimpColorHexEntry** %entry.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1, i32 0, i8** %name, i32 -1)
  %2 = load i8*, i8** %name, align 8
  %call = call i32 @gimp_rgb_parse_name(%struct._GimpRGB* %color, i8* %2, i32 -1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  call void @gimp_color_hex_entry_set_color(%struct._GimpColorHexEntry* %3, %struct._GimpRGB* %color)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %name, align 8
  call void @g_free(i8* %4)
  ret i32 1
}

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @gimp_rgb_parse_hex(%struct._GimpRGB*, i8*, i32) #1

declare i32 @gimp_rgb_parse_name(%struct._GimpRGB*, i8*, i32) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
