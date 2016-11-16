; ModuleID = './app/widgets/gimptagentry.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTagEntryClass = type { %struct._GtkEntryClass }
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
%struct._GimpTagEntry = type { %struct._GtkEntry, %struct._GimpTaggedContainer*, %struct._GString*, %struct._GList*, %struct._GList*, %struct._GList*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpTaggedContainer = type { %struct._GimpFilteredContainer, %struct._GList*, %struct._GHashTable*, i32 }
%struct._GimpFilteredContainer = type { %struct._GimpList, %struct._GimpContainer*, i32 (%struct._GimpObject*, i8*)*, i8* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpContainerPriv = type opaque
%struct._GHashTable = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GtkEditable = type opaque
%struct._GimpTag = type { %struct._GObject, i32, i32, i32 }
%struct._GimpTagged = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._PangoAttrList = type opaque
%struct._PangoAttribute = type { %struct._PangoAttrClass*, i32, i32 }
%struct._PangoAttrClass = type { i32, %struct._PangoAttribute* (%struct._PangoAttribute*)*, void (%struct._PangoAttribute*)*, i32 (%struct._PangoAttribute*, %struct._PangoAttribute*)* }

@gimp_tag_entry_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpTagEntry\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_tag_entry_new = private unnamed_addr constant [19 x i8] c"gimp_tag_entry_new\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"GIMP_IS_TAGGED_CONTAINER (container)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@__func__.gimp_tag_entry_set_tag_string = private unnamed_addr constant [30 x i8] c"gimp_tag_entry_set_tag_string\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"GIMP_IS_TAG_ENTRY (entry)\00", align 1
@__func__.gimp_tag_entry_parse_tags = private unnamed_addr constant [26 x i8] c"gimp_tag_entry_parse_tags\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@g_utf8_skip = external constant i8*, align 8
@__func__.gimp_tag_entry_set_selected_items = private unnamed_addr constant [34 x i8] c"gimp_tag_entry_set_selected_items\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"GIMP_IS_TAG_ENTRY (tag_entry)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@gimp_tag_entry_parent_class = internal global i8* null, align 8
@GimpTagEntry_private_offset = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"Tagged container\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"The Tagged container\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Working mode\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Mode in which to work.\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"gimptagentry.c\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"insert-text\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"delete-text\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"key-press-event\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"focus-in-event\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"focus-out-event\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"move-focus\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"enter tags\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"%s%s \00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tag_entry_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tag_entry_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tag_entry_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_entry_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tag_entry_class_intern_init to void (i8*, i8*)*), i32 280, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTagEntry*)* @gimp_tag_entry_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tag_entry_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_tag_entry_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tag_entry_parent_class, align 8
  %1 = load i32, i32* @GimpTagEntry_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTagEntry_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTagEntryClass*
  call void @gimp_tag_entry_class_init(%struct._GimpTagEntryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_init(%struct._GimpTagEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpTagEntry*, align 8
  store %struct._GimpTagEntry* %entry1, %struct._GimpTagEntry** %entry.addr, align 8
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %container = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %0, i32 0, i32 1
  store %struct._GimpTaggedContainer* null, %struct._GimpTaggedContainer** %container, align 8
  %1 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %selected_items = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %1, i32 0, i32 3
  store %struct._GList* null, %struct._GList** %selected_items, align 8
  %2 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %common_tags = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %2, i32 0, i32 4
  store %struct._GList* null, %struct._GList** %common_tags, align 8
  %3 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %tab_completion_index = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %3, i32 0, i32 6
  store i32 -1, i32* %tab_completion_index, align 4
  %4 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mode = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %4, i32 0, i32 10
  store i32 0, i32* %mode, align 4
  %5 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %description_shown = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %5, i32 0, i32 11
  store i32 0, i32* %description_shown, align 4
  %6 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %has_invalid_tags = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %6, i32 0, i32 12
  store i32 0, i32* %has_invalid_tags, align 4
  %call = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  %7 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %7, i32 0, i32 2
  store %struct._GString* %call, %struct._GString** %mask, align 8
  %8 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %9 = bitcast %struct._GimpTagEntry* %8 to i8*
  %call2 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkEntry*)* @gimp_tag_entry_activate to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %10 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %11 = bitcast %struct._GimpTagEntry* %10 to i8*
  %call3 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkEntry*)* @gimp_tag_entry_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %13 = bitcast %struct._GimpTagEntry* %12 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkEditable*, i8*, i32, i32*)* @gimp_tag_entry_insert_text to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %14 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %15 = bitcast %struct._GimpTagEntry* %14 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkEditable*, i32, i32)* @gimp_tag_entry_delete_text to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %17 = bitcast %struct._GimpTagEntry* %16 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventKey*)* @gimp_tag_entry_key_press to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %18 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %19 = bitcast %struct._GimpTagEntry* %18 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)* @gimp_tag_entry_focus_in to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %20 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %21 = bitcast %struct._GimpTagEntry* %20 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)* @gimp_tag_entry_focus_out to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %23 = bitcast %struct._GimpTagEntry* %22 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_tag_entry_expose to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 1)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_tag_entry_new(%struct._GimpTaggedContainer* %container, i32 %mode) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpTaggedContainer*, align 8
  %mode.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTaggedContainer* %container, %struct._GimpTaggedContainer** %container.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpTaggedContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tagged_container_get_type() #8
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_tag_entry_new, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_tag_entry_get_type() #8
  %13 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container.addr, align 8
  %14 = load i32, i32* %mode.addr, align 4
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), %struct._GimpTaggedContainer* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %14, i8* null)
  %15 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %15, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %16
}

; Function Attrs: nounwind readnone
declare i64 @gimp_tagged_container_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_tag_entry_set_tag_string(%struct._GimpTagEntry* %entry1, i8* %tag_string) #3 {
entry:
  %entry.addr = alloca %struct._GimpTagEntry*, align 8
  %tag_string.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTagEntry* %entry1, %struct._GimpTagEntry** %entry.addr, align 8
  store i8* %tag_string, i8** %tag_string.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpTagEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_entry_get_type() #8
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_tag_entry_set_tag_string, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.28

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %internal_operation = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %13, i32 0, i32 7
  %14 = load i32, i32* %internal_operation, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %internal_operation, align 4
  %15 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %suppress_tag_query = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %15, i32 0, i32 9
  %16 = load i32, i32* %suppress_tag_query, align 4
  %inc12 = add nsw i32 %16, 1
  store i32 %inc12, i32* %suppress_tag_query, align 4
  %17 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %18 = bitcast %struct._GimpTagEntry* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_entry_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkEntry*
  %20 = load i8*, i8** %tag_string.addr, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %19, i8* %20)
  %21 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %22 = bitcast %struct._GimpTagEntry* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_editable_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkEditable*
  call void @gtk_editable_set_position(%struct._GtkEditable* %23, i32 -1)
  %24 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %suppress_tag_query17 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %24, i32 0, i32 9
  %25 = load i32, i32* %suppress_tag_query17, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %suppress_tag_query17, align 4
  %26 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %internal_operation18 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %26, i32 0, i32 7
  %27 = load i32, i32* %internal_operation18, align 4
  %dec19 = add nsw i32 %27, -1
  store i32 %dec19, i32* %internal_operation18, align 4
  %28 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  call void @gimp_tag_entry_commit_tags(%struct._GimpTagEntry* %28)
  %29 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mode = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %29, i32 0, i32 10
  %30 = load i32, i32* %mode, align 4
  %cmp20 = icmp eq i32 %30, 1
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.end
  %31 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  call void @gimp_tag_entry_assign_tags(%struct._GimpTagEntry* %31)
  br label %if.end.28

if.else.22:                                       ; preds = %do.end
  %32 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mode23 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %32, i32 0, i32 10
  %33 = load i32, i32* %mode23, align 4
  %cmp24 = icmp eq i32 %33, 0
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.else.22
  %34 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %call26 = call i32 @gimp_tag_entry_query_tag(%struct._GimpTagEntry* %34)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.else.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.10, %if.end.27, %if.then.21
  ret void
}

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_editable_set_position(%struct._GtkEditable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_editable_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_commit_tags(%struct._GimpTagEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpTagEntry*, align 8
  %found_region = alloca i32, align 4
  %cursor_position = alloca i32, align 4
  %region_start = alloca i32, align 4
  %region_end = alloca i32, align 4
  %position = alloca i32, align 4
  %length_before = alloca i64, align 8
  %i = alloca i32, align 4
  %tags_string = alloca i8*, align 8
  %tags = alloca %struct._GString*, align 8
  %mask31 = alloca %struct._GString*, align 8
  store %struct._GimpTagEntry* %entry1, %struct._GimpTagEntry** %entry.addr, align 8
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpTagEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_editable_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEditable*
  %call3 = call i32 @gtk_editable_get_position(%struct._GtkEditable* %2)
  store i32 %call3, i32* %cursor_position, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* %found_region, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %do.body
  %3 = load i32, i32* %i, align 4
  %conv = sext i32 %3 to i64
  %4 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %4, i32 0, i32 2
  %5 = load %struct._GString*, %struct._GString** %mask, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %conv, %6
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask5 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %8, i32 0, i32 2
  %9 = load %struct._GString*, %struct._GString** %mask5, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 0
  %10 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %11 to i32
  %cmp7 = icmp eq i32 %conv6, 117
  br i1 %cmp7, label %if.then, label %if.end.26

if.then:                                          ; preds = %for.body
  store i32 1, i32* %found_region, align 4
  %12 = load i32, i32* %i, align 4
  store i32 %12, i32* %region_start, align 4
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %13, 1
  store i32 %add, i32* %region_end, align 4
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.then
  %15 = load i32, i32* %i, align 4
  %conv10 = sext i32 %15 to i64
  %16 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask11 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %16, i32 0, i32 2
  %17 = load %struct._GString*, %struct._GString** %mask11, align 8
  %len12 = getelementptr inbounds %struct._GString, %struct._GString* %17, i32 0, i32 1
  %18 = load i64, i64* %len12, align 8
  %cmp13 = icmp ult i64 %conv10, %18
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.9
  %19 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %19 to i64
  %20 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask17 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %20, i32 0, i32 2
  %21 = load %struct._GString*, %struct._GString** %mask17, align 8
  %str18 = getelementptr inbounds %struct._GString, %struct._GString* %21, i32 0, i32 0
  %22 = load i8*, i8** %str18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %22, i64 %idxprom16
  %23 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %23 to i32
  %cmp21 = icmp eq i32 %conv20, 117
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %for.body.15
  %24 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %24, 1
  store i32 %add24, i32* %region_end, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.15
  br label %for.end

if.end:                                           ; preds = %if.then.23
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %25, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.9

for.end:                                          ; preds = %if.else, %for.cond.9
  br label %for.end.29

if.end.26:                                        ; preds = %for.body
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %26 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %26, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.end, %for.cond
  %27 = load i32, i32* %found_region, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.30, label %if.end.133

if.then.30:                                       ; preds = %for.end.29
  %28 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %29 = bitcast %struct._GimpTagEntry* %28 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_editable_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call32)
  %30 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkEditable*
  %31 = load i32, i32* %region_start, align 4
  %32 = load i32, i32* %region_end, align 4
  %call34 = call i8* @gtk_editable_get_chars(%struct._GtkEditable* %30, i32 %31, i32 %32)
  store i8* %call34, i8** %tags_string, align 8
  %33 = load i8*, i8** %tags_string, align 8
  %call35 = call %struct._GString* @g_string_new(i8* %33)
  store %struct._GString* %call35, %struct._GString** %tags, align 8
  %34 = load i8*, i8** %tags_string, align 8
  call void @g_free(i8* %34)
  %35 = load i32, i32* %region_end, align 4
  %36 = load i32, i32* %region_start, align 4
  %sub = sub nsw i32 %35, %36
  %conv36 = sext i32 %sub to i64
  store i64 %conv36, i64* %length_before, align 8
  %37 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask37 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %37, i32 0, i32 2
  %38 = load %struct._GString*, %struct._GString** %mask37, align 8
  %str38 = getelementptr inbounds %struct._GString, %struct._GString* %38, i32 0, i32 0
  %39 = load i8*, i8** %str38, align 8
  %40 = load i32, i32* %region_start, align 4
  %idx.ext = sext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  %41 = load i32, i32* %region_end, align 4
  %42 = load i32, i32* %region_start, align 4
  %sub39 = sub nsw i32 %41, %42
  %conv40 = sext i32 %sub39 to i64
  %call41 = call %struct._GString* @g_string_new_len(i8* %add.ptr, i64 %conv40)
  store %struct._GString* %call41, %struct._GString** %mask31, align 8
  %43 = load %struct._GString*, %struct._GString** %tags, align 8
  %44 = load %struct._GString*, %struct._GString** %mask31, align 8
  call void @gimp_tag_entry_commit_region(%struct._GString* %43, %struct._GString* %44)
  %45 = load i32, i32* %region_start, align 4
  %cmp42 = icmp sgt i32 %45, 0
  br i1 %cmp42, label %land.lhs.true, label %if.end.65

land.lhs.true:                                    ; preds = %if.then.30
  %46 = load i32, i32* %region_start, align 4
  %sub44 = sub nsw i32 %46, 1
  %idxprom45 = sext i32 %sub44 to i64
  %47 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask46 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %47, i32 0, i32 2
  %48 = load %struct._GString*, %struct._GString** %mask46, align 8
  %str47 = getelementptr inbounds %struct._GString, %struct._GString* %48, i32 0, i32 0
  %49 = load i8*, i8** %str47, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %49, i64 %idxprom45
  %50 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %50 to i32
  %cmp50 = icmp ne i32 %conv49, 119
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.65

land.lhs.true.52:                                 ; preds = %land.lhs.true
  %51 = load %struct._GString*, %struct._GString** %mask31, align 8
  %len53 = getelementptr inbounds %struct._GString, %struct._GString* %51, i32 0, i32 1
  %52 = load i64, i64* %len53, align 8
  %cmp54 = icmp ugt i64 %52, 0
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.65

land.lhs.true.56:                                 ; preds = %land.lhs.true.52
  %53 = load %struct._GString*, %struct._GString** %mask31, align 8
  %str57 = getelementptr inbounds %struct._GString, %struct._GString* %53, i32 0, i32 0
  %54 = load i8*, i8** %str57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %55 to i32
  %cmp60 = icmp ne i32 %conv59, 119
  br i1 %cmp60, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %land.lhs.true.56
  %56 = load %struct._GString*, %struct._GString** %tags, align 8
  %call63 = call %struct._GString* @g_string_prepend_c(%struct._GString* %56, i8 signext 32)
  %57 = load %struct._GString*, %struct._GString** %mask31, align 8
  %call64 = call %struct._GString* @g_string_prepend_c(%struct._GString* %57, i8 signext 119)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %land.lhs.true.56, %land.lhs.true.52, %land.lhs.true, %if.then.30
  %58 = load i32, i32* %region_end, align 4
  %conv66 = sext i32 %58 to i64
  %59 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask67 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %59, i32 0, i32 2
  %60 = load %struct._GString*, %struct._GString** %mask67, align 8
  %len68 = getelementptr inbounds %struct._GString, %struct._GString* %60, i32 0, i32 1
  %61 = load i64, i64* %len68, align 8
  %cmp69 = icmp ule i64 %conv66, %61
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.94

land.lhs.true.71:                                 ; preds = %if.end.65
  %62 = load i32, i32* %region_end, align 4
  %idxprom72 = sext i32 %62 to i64
  %63 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask73 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %63, i32 0, i32 2
  %64 = load %struct._GString*, %struct._GString** %mask73, align 8
  %str74 = getelementptr inbounds %struct._GString, %struct._GString* %64, i32 0, i32 0
  %65 = load i8*, i8** %str74, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %65, i64 %idxprom72
  %66 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %66 to i32
  %cmp77 = icmp ne i32 %conv76, 119
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.94

land.lhs.true.79:                                 ; preds = %land.lhs.true.71
  %67 = load %struct._GString*, %struct._GString** %mask31, align 8
  %len80 = getelementptr inbounds %struct._GString, %struct._GString* %67, i32 0, i32 1
  %68 = load i64, i64* %len80, align 8
  %cmp81 = icmp ugt i64 %68, 0
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.94

land.lhs.true.83:                                 ; preds = %land.lhs.true.79
  %69 = load %struct._GString*, %struct._GString** %mask31, align 8
  %len84 = getelementptr inbounds %struct._GString, %struct._GString* %69, i32 0, i32 1
  %70 = load i64, i64* %len84, align 8
  %sub85 = sub i64 %70, 1
  %71 = load %struct._GString*, %struct._GString** %mask31, align 8
  %str86 = getelementptr inbounds %struct._GString, %struct._GString* %71, i32 0, i32 0
  %72 = load i8*, i8** %str86, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %72, i64 %sub85
  %73 = load i8, i8* %arrayidx87, align 1
  %conv88 = sext i8 %73 to i32
  %cmp89 = icmp ne i32 %conv88, 119
  br i1 %cmp89, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %land.lhs.true.83
  %74 = load %struct._GString*, %struct._GString** %tags, align 8
  %call92 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %74, i8 signext 32)
  %75 = load %struct._GString*, %struct._GString** %mask31, align 8
  %call93 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %75, i8 signext 119)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %land.lhs.true.83, %land.lhs.true.79, %land.lhs.true.71, %if.end.65
  %76 = load i32, i32* %cursor_position, align 4
  %77 = load i32, i32* %region_start, align 4
  %cmp95 = icmp sge i32 %76, %77
  br i1 %cmp95, label %if.then.97, label %if.end.105

if.then.97:                                       ; preds = %if.end.94
  %78 = load %struct._GString*, %struct._GString** %tags, align 8
  %str98 = getelementptr inbounds %struct._GString, %struct._GString* %78, i32 0, i32 0
  %79 = load i8*, i8** %str98, align 8
  %80 = load %struct._GString*, %struct._GString** %tags, align 8
  %len99 = getelementptr inbounds %struct._GString, %struct._GString* %80, i32 0, i32 1
  %81 = load i64, i64* %len99, align 8
  %call100 = call i64 @g_utf8_strlen(i8* %79, i64 %81) #9
  %82 = load i64, i64* %length_before, align 8
  %sub101 = sub nsw i64 %call100, %82
  %83 = load i32, i32* %cursor_position, align 4
  %conv102 = sext i32 %83 to i64
  %add103 = add nsw i64 %conv102, %sub101
  %conv104 = trunc i64 %add103 to i32
  store i32 %conv104, i32* %cursor_position, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.97, %if.end.94
  %84 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %internal_operation = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %84, i32 0, i32 7
  %85 = load i32, i32* %internal_operation, align 4
  %inc106 = add nsw i32 %85, 1
  store i32 %inc106, i32* %internal_operation, align 4
  %86 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %suppress_mask_update = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %86, i32 0, i32 8
  %87 = load i32, i32* %suppress_mask_update, align 4
  %inc107 = add nsw i32 %87, 1
  store i32 %inc107, i32* %suppress_mask_update, align 4
  %88 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %suppress_tag_query = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %88, i32 0, i32 9
  %89 = load i32, i32* %suppress_tag_query, align 4
  %inc108 = add nsw i32 %89, 1
  store i32 %inc108, i32* %suppress_tag_query, align 4
  %90 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %91 = bitcast %struct._GimpTagEntry* %90 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_editable_get_type() #8
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call109)
  %92 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkEditable*
  %93 = load i32, i32* %region_start, align 4
  %94 = load i32, i32* %region_end, align 4
  call void @gtk_editable_delete_text(%struct._GtkEditable* %92, i32 %93, i32 %94)
  %95 = load i32, i32* %region_start, align 4
  store i32 %95, i32* %position, align 4
  %96 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %97 = bitcast %struct._GimpTagEntry* %96 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_editable_get_type() #8
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call111)
  %98 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkEditable*
  %99 = load %struct._GString*, %struct._GString** %tags, align 8
  %str113 = getelementptr inbounds %struct._GString, %struct._GString* %99, i32 0, i32 0
  %100 = load i8*, i8** %str113, align 8
  %101 = load %struct._GString*, %struct._GString** %tags, align 8
  %len114 = getelementptr inbounds %struct._GString, %struct._GString* %101, i32 0, i32 1
  %102 = load i64, i64* %len114, align 8
  %conv115 = trunc i64 %102 to i32
  call void @gtk_editable_insert_text(%struct._GtkEditable* %98, i8* %100, i32 %conv115, i32* %position)
  %103 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %suppress_tag_query116 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %103, i32 0, i32 9
  %104 = load i32, i32* %suppress_tag_query116, align 4
  %dec = add nsw i32 %104, -1
  store i32 %dec, i32* %suppress_tag_query116, align 4
  %105 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %suppress_mask_update117 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %105, i32 0, i32 8
  %106 = load i32, i32* %suppress_mask_update117, align 4
  %dec118 = add nsw i32 %106, -1
  store i32 %dec118, i32* %suppress_mask_update117, align 4
  %107 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %internal_operation119 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %107, i32 0, i32 7
  %108 = load i32, i32* %internal_operation119, align 4
  %dec120 = add nsw i32 %108, -1
  store i32 %dec120, i32* %internal_operation119, align 4
  %109 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask121 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %109, i32 0, i32 2
  %110 = load %struct._GString*, %struct._GString** %mask121, align 8
  %111 = load i32, i32* %region_start, align 4
  %conv122 = sext i32 %111 to i64
  %112 = load i32, i32* %region_end, align 4
  %113 = load i32, i32* %region_start, align 4
  %sub123 = sub nsw i32 %112, %113
  %conv124 = sext i32 %sub123 to i64
  %call125 = call %struct._GString* @g_string_erase(%struct._GString* %110, i64 %conv122, i64 %conv124)
  %114 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask126 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %114, i32 0, i32 2
  %115 = load %struct._GString*, %struct._GString** %mask126, align 8
  %116 = load i32, i32* %region_start, align 4
  %conv127 = sext i32 %116 to i64
  %117 = load %struct._GString*, %struct._GString** %mask31, align 8
  %str128 = getelementptr inbounds %struct._GString, %struct._GString* %117, i32 0, i32 0
  %118 = load i8*, i8** %str128, align 8
  %119 = load %struct._GString*, %struct._GString** %mask31, align 8
  %len129 = getelementptr inbounds %struct._GString, %struct._GString* %119, i32 0, i32 1
  %120 = load i64, i64* %len129, align 8
  %call130 = call %struct._GString* @g_string_insert_len(%struct._GString* %115, i64 %conv127, i8* %118, i64 %120)
  %121 = load %struct._GString*, %struct._GString** %mask31, align 8
  %call131 = call i8* @g_string_free(%struct._GString* %121, i32 1)
  %122 = load %struct._GString*, %struct._GString** %tags, align 8
  %call132 = call i8* @g_string_free(%struct._GString* %122, i32 1)
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.105, %for.end.29
  br label %do.cond

do.cond:                                          ; preds = %if.end.133
  %123 = load i32, i32* %found_region, align 4
  %tobool134 = icmp ne i32 %123, 0
  br i1 %tobool134, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %124 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %125 = bitcast %struct._GimpTagEntry* %124 to %struct._GTypeInstance*
  %call135 = call i64 @gtk_editable_get_type() #8
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call135)
  %126 = bitcast %struct._GTypeInstance* %call136 to %struct._GtkEditable*
  %127 = load i32, i32* %cursor_position, align 4
  call void @gtk_editable_set_position(%struct._GtkEditable* %126, i32 %127)
  %128 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %call137 = call i32 @gimp_tag_entry_strip_extra_whitespace(%struct._GimpTagEntry* %128)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_assign_tags(%struct._GimpTagEntry* %tag_entry) #3 {
entry:
  %tag_entry.addr = alloca %struct._GimpTagEntry*, align 8
  %parsed_tags = alloca i8**, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %resource_iter = alloca %struct._GList*, align 8
  %tag_iter = alloca %struct._GList*, align 8
  %dont_remove_list = alloca %struct._GList*, align 8
  %remove_list = alloca %struct._GList*, align 8
  %add_list = alloca %struct._GList*, align 8
  %common_tags = alloca %struct._GList*, align 8
  %tag = alloca %struct._GimpTag*, align 8
  %tagged = alloca %struct._GimpTagged*, align 8
  store %struct._GimpTagEntry* %tag_entry, %struct._GimpTagEntry** %tag_entry.addr, align 8
  store %struct._GList* null, %struct._GList** %dont_remove_list, align 8
  store %struct._GList* null, %struct._GList** %remove_list, align 8
  store %struct._GList* null, %struct._GList** %add_list, align 8
  store %struct._GList* null, %struct._GList** %common_tags, align 8
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %call = call i8** @gimp_tag_entry_parse_tags(%struct._GimpTagEntry* %0)
  store i8** %call, i8*** %parsed_tags, align 8
  %1 = load i8**, i8*** %parsed_tags, align 8
  %call1 = call i32 @g_strv_length(i8** %1)
  store i32 %call1, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %parsed_tags, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call2 = call %struct._GimpTag* @gimp_tag_new(i8* %6)
  store %struct._GimpTag* %call2, %struct._GimpTag** %tag, align 8
  %7 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %tobool = icmp ne %struct._GimpTag* %7, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %8 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %common_tags3 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %8, i32 0, i32 4
  %9 = load %struct._GList*, %struct._GList** %common_tags3, align 8
  %10 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %11 = bitcast %struct._GimpTag* %10 to i8*
  %call4 = call %struct._GList* @g_list_find_custom(%struct._GList* %9, i8* %11, i32 (i8*, i8*)* @gimp_tag_compare_func)
  %tobool5 = icmp ne %struct._GList* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %12 = load %struct._GList*, %struct._GList** %dont_remove_list, align 8
  %13 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %14 = bitcast %struct._GimpTag* %13 to i8*
  %call7 = call %struct._GList* @g_list_prepend(%struct._GList* %12, i8* %14)
  store %struct._GList* %call7, %struct._GList** %dont_remove_list, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load %struct._GList*, %struct._GList** %add_list, align 8
  %16 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %17 = bitcast %struct._GimpTag* %16 to i8*
  %call8 = call i8* @g_object_ref(i8* %17)
  %call9 = call %struct._GList* @g_list_prepend(%struct._GList* %15, i8* %call8)
  store %struct._GList* %call9, %struct._GList** %add_list, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %18 = load %struct._GList*, %struct._GList** %common_tags, align 8
  %19 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %20 = bitcast %struct._GimpTag* %19 to i8*
  %call10 = call %struct._GList* @g_list_prepend(%struct._GList* %18, i8* %20)
  store %struct._GList* %call10, %struct._GList** %common_tags, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i8**, i8*** %parsed_tags, align 8
  call void @g_strfreev(i8** %22)
  %23 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %common_tags12 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %23, i32 0, i32 4
  %24 = load %struct._GList*, %struct._GList** %common_tags12, align 8
  store %struct._GList* %24, %struct._GList** %tag_iter, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %cond.end, %for.end
  %25 = load %struct._GList*, %struct._GList** %tag_iter, align 8
  %tobool14 = icmp ne %struct._GList* %25, null
  br i1 %tobool14, label %for.body.15, label %for.end.25

for.body.15:                                      ; preds = %for.cond.13
  %26 = load %struct._GList*, %struct._GList** %dont_remove_list, align 8
  %27 = load %struct._GList*, %struct._GList** %tag_iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8
  %call16 = call %struct._GList* @g_list_find_custom(%struct._GList* %26, i8* %28, i32 (i8*, i8*)* @gimp_tag_compare_func)
  %tobool17 = icmp ne %struct._GList* %call16, null
  br i1 %tobool17, label %if.end.22, label %if.then.18

if.then.18:                                       ; preds = %for.body.15
  %29 = load %struct._GList*, %struct._GList** %remove_list, align 8
  %30 = load %struct._GList*, %struct._GList** %tag_iter, align 8
  %data19 = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 0
  %31 = load i8*, i8** %data19, align 8
  %call20 = call i8* @g_object_ref(i8* %31)
  %call21 = call %struct._GList* @g_list_prepend(%struct._GList* %29, i8* %call20)
  store %struct._GList* %call21, %struct._GList** %remove_list, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %for.body.15
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %32 = load %struct._GList*, %struct._GList** %tag_iter, align 8
  %tobool24 = icmp ne %struct._GList* %32, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.23
  %33 = load %struct._GList*, %struct._GList** %tag_iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 1
  %34 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %34, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %tag_iter, align 8
  br label %for.cond.13

for.end.25:                                       ; preds = %for.cond.13
  %35 = load %struct._GList*, %struct._GList** %dont_remove_list, align 8
  call void @g_list_free(%struct._GList* %35)
  %36 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %selected_items = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %36, i32 0, i32 3
  %37 = load %struct._GList*, %struct._GList** %selected_items, align 8
  store %struct._GList* %37, %struct._GList** %resource_iter, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %cond.end.61, %for.end.25
  %38 = load %struct._GList*, %struct._GList** %resource_iter, align 8
  %tobool27 = icmp ne %struct._GList* %38, null
  br i1 %tobool27, label %for.body.28, label %for.end.63

for.body.28:                                      ; preds = %for.cond.26
  %39 = load %struct._GList*, %struct._GList** %resource_iter, align 8
  %data29 = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 0
  %40 = load i8*, i8** %data29, align 8
  %41 = bitcast i8* %40 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_tagged_interface_get_type() #8
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call30)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpTagged*
  store %struct._GimpTagged* %42, %struct._GimpTagged** %tagged, align 8
  %43 = load %struct._GList*, %struct._GList** %remove_list, align 8
  store %struct._GList* %43, %struct._GList** %tag_iter, align 8
  br label %for.cond.32

for.cond.32:                                      ; preds = %cond.end.41, %for.body.28
  %44 = load %struct._GList*, %struct._GList** %tag_iter, align 8
  %tobool33 = icmp ne %struct._GList* %44, null
  br i1 %tobool33, label %for.body.34, label %for.end.43

for.body.34:                                      ; preds = %for.cond.32
  %45 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged, align 8
  %46 = load %struct._GList*, %struct._GList** %tag_iter, align 8
  %data35 = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 0
  %47 = load i8*, i8** %data35, align 8
  %48 = bitcast i8* %47 to %struct._GimpTag*
  call void @gimp_tagged_remove_tag(%struct._GimpTagged* %45, %struct._GimpTag* %48)
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.34
  %49 = load %struct._GList*, %struct._GList** %tag_iter, align 8
  %tobool37 = icmp ne %struct._GList* %49, null
  br i1 %tobool37, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %for.inc.36
  %50 = load %struct._GList*, %struct._GList** %tag_iter, align 8
  %next39 = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 1
  %51 = load %struct._GList*, %struct._GList** %next39, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %for.inc.36
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.38
  %cond42 = phi %struct._GList* [ %51, %cond.true.38 ], [ null, %cond.false.40 ]
  store %struct._GList* %cond42, %struct._GList** %tag_iter, align 8
  br label %for.cond.32

for.end.43:                                       ; preds = %for.cond.32
  %52 = load %struct._GList*, %struct._GList** %add_list, align 8
  store %struct._GList* %52, %struct._GList** %tag_iter, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %cond.end.53, %for.end.43
  %53 = load %struct._GList*, %struct._GList** %tag_iter, align 8
  %tobool45 = icmp ne %struct._GList* %53, null
  br i1 %tobool45, label %for.body.46, label %for.end.55

for.body.46:                                      ; preds = %for.cond.44
  %54 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged, align 8
  %55 = load %struct._GList*, %struct._GList** %tag_iter, align 8
  %data47 = getelementptr inbounds %struct._GList, %struct._GList* %55, i32 0, i32 0
  %56 = load i8*, i8** %data47, align 8
  %57 = bitcast i8* %56 to %struct._GimpTag*
  call void @gimp_tagged_add_tag(%struct._GimpTagged* %54, %struct._GimpTag* %57)
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.46
  %58 = load %struct._GList*, %struct._GList** %tag_iter, align 8
  %tobool49 = icmp ne %struct._GList* %58, null
  br i1 %tobool49, label %cond.true.50, label %cond.false.52

cond.true.50:                                     ; preds = %for.inc.48
  %59 = load %struct._GList*, %struct._GList** %tag_iter, align 8
  %next51 = getelementptr inbounds %struct._GList, %struct._GList* %59, i32 0, i32 1
  %60 = load %struct._GList*, %struct._GList** %next51, align 8
  br label %cond.end.53

cond.false.52:                                    ; preds = %for.inc.48
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.50
  %cond54 = phi %struct._GList* [ %60, %cond.true.50 ], [ null, %cond.false.52 ]
  store %struct._GList* %cond54, %struct._GList** %tag_iter, align 8
  br label %for.cond.44

for.end.55:                                       ; preds = %for.cond.44
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.55
  %61 = load %struct._GList*, %struct._GList** %resource_iter, align 8
  %tobool57 = icmp ne %struct._GList* %61, null
  br i1 %tobool57, label %cond.true.58, label %cond.false.60

cond.true.58:                                     ; preds = %for.inc.56
  %62 = load %struct._GList*, %struct._GList** %resource_iter, align 8
  %next59 = getelementptr inbounds %struct._GList, %struct._GList* %62, i32 0, i32 1
  %63 = load %struct._GList*, %struct._GList** %next59, align 8
  br label %cond.end.61

cond.false.60:                                    ; preds = %for.inc.56
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.60, %cond.true.58
  %cond62 = phi %struct._GList* [ %63, %cond.true.58 ], [ null, %cond.false.60 ]
  store %struct._GList* %cond62, %struct._GList** %resource_iter, align 8
  br label %for.cond.26

for.end.63:                                       ; preds = %for.cond.26
  %64 = load %struct._GList*, %struct._GList** %add_list, align 8
  call void @g_list_free_full(%struct._GList* %64, void (i8*)* @g_object_unref)
  %65 = load %struct._GList*, %struct._GList** %remove_list, align 8
  call void @g_list_free_full(%struct._GList* %65, void (i8*)* @g_object_unref)
  %66 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %common_tags64 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %66, i32 0, i32 4
  %67 = load %struct._GList*, %struct._GList** %common_tags64, align 8
  call void @g_list_free_full(%struct._GList* %67, void (i8*)* @g_object_unref)
  %68 = load %struct._GList*, %struct._GList** %common_tags, align 8
  %69 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %common_tags65 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %69, i32 0, i32 4
  store %struct._GList* %68, %struct._GList** %common_tags65, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_entry_query_tag(%struct._GimpTagEntry* %entry1) #3 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct._GimpTagEntry*, align 8
  %parsed_tags = alloca i8**, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %query_list = alloca %struct._GList*, align 8
  %has_invalid_tags = alloca i32, align 4
  %tag = alloca %struct._GimpTag*, align 8
  store %struct._GimpTagEntry* %entry1, %struct._GimpTagEntry** %entry.addr, align 8
  store %struct._GList* null, %struct._GList** %query_list, align 8
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %tag_query_idle_id = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %0, i32 0, i32 13
  store i32 0, i32* %tag_query_idle_id, align 4
  %1 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %suppress_tag_query = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %1, i32 0, i32 9
  %2 = load i32, i32* %suppress_tag_query, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %has_invalid_tags, align 4
  %3 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %call = call i8** @gimp_tag_entry_parse_tags(%struct._GimpTagEntry* %3)
  store i8** %call, i8*** %parsed_tags, align 8
  %4 = load i8**, i8*** %parsed_tags, align 8
  %call2 = call i32 @g_strv_length(i8** %4)
  store i32 %call2, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %parsed_tags, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %call3 = call i64 @strlen(i8* %9) #9
  %cmp4 = icmp ugt i64 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i8**, i8*** %parsed_tags, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %11, i64 %idxprom6
  %12 = load i8*, i8** %arrayidx7, align 8
  %call8 = call %struct._GimpTag* @gimp_tag_try_new(i8* %12)
  store %struct._GimpTag* %call8, %struct._GimpTag** %tag, align 8
  %13 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %tobool9 = icmp ne %struct._GimpTag* %13, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.5
  store i32 1, i32* %has_invalid_tags, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.5
  %14 = load %struct._GList*, %struct._GList** %query_list, align 8
  %15 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %16 = bitcast %struct._GimpTag* %15 to i8*
  %call12 = call %struct._GList* @g_list_append(%struct._GList* %14, i8* %16)
  store %struct._GList* %call12, %struct._GList** %query_list, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i8**, i8*** %parsed_tags, align 8
  call void @g_strfreev(i8** %18)
  %19 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %container = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %19, i32 0, i32 1
  %20 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container, align 8
  %21 = bitcast %struct._GimpTaggedContainer* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_tagged_container_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpTaggedContainer*
  %23 = load %struct._GList*, %struct._GList** %query_list, align 8
  call void @gimp_tagged_container_set_filter(%struct._GimpTaggedContainer* %22, %struct._GList* %23)
  %24 = load %struct._GList*, %struct._GList** %query_list, align 8
  call void @g_list_free_full(%struct._GList* %24, void (i8*)* bitcast (void (%struct._GimpTag*)* @gimp_tag_or_null_unref to void (i8*)*))
  %25 = load i32, i32* %has_invalid_tags, align 4
  %26 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %has_invalid_tags16 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %26, i32 0, i32 12
  %27 = load i32, i32* %has_invalid_tags16, align 4
  %cmp17 = icmp ne i32 %25, %27
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %for.end
  %28 = load i32, i32* %has_invalid_tags, align 4
  %29 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %has_invalid_tags19 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %29, i32 0, i32 12
  store i32 %28, i32* %has_invalid_tags19, align 4
  %30 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %31 = bitcast %struct._GimpTagEntry* %30 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_widget_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call20)
  %32 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %32)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i8** @gimp_tag_entry_parse_tags(%struct._GimpTagEntry* %entry1) #3 {
entry:
  %retval = alloca i8**, align 8
  %entry.addr = alloca %struct._GimpTagEntry*, align 8
  %parsed_tags = alloca i8**, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  %parsed_tag = alloca %struct._GString*, align 8
  %cursor = alloca i8*, align 8
  %tag_list = alloca %struct._GList*, align 8
  %iterator = alloca %struct._GList*, align 8
  %c = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %validated_tag = alloca i8*, align 8
  store %struct._GimpTagEntry* %entry1, %struct._GimpTagEntry** %entry.addr, align 8
  store %struct._GList* null, %struct._GList** %tag_list, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpTagEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_entry_get_type() #8
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_tag_entry_parse_tags, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %call12 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GString* %call12, %struct._GString** %parsed_tag, align 8
  %13 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %14 = bitcast %struct._GimpTagEntry* %13 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_entry_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call13)
  %15 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkEntry*
  %call15 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %15)
  store i8* %call15, i8** %cursor, align 8
  br label %do.body.16

do.body.16:                                       ; preds = %do.cond, %do.end
  %16 = load i8*, i8** %cursor, align 8
  %call17 = call i32 @g_utf8_get_char(i8* %16) #9
  store i32 %call17, i32* %c, align 4
  %17 = load i8*, i8** %cursor, align 8
  %18 = load i8*, i8** %cursor, align 8
  %19 = load i8, i8* %18, align 1
  %idxprom = zext i8 %19 to i64
  %20 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 %idxprom
  %21 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %21 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %cursor, align 8
  %22 = load i32, i32* %c, align 4
  %tobool18 = icmp ne i32 %22, 0
  br i1 %tobool18, label %lor.lhs.false, label %if.then.21

lor.lhs.false:                                    ; preds = %do.body.16
  %23 = load i32, i32* %c, align 4
  %call19 = call i32 @gimp_tag_is_tag_separator(i32 %23)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.33

if.then.21:                                       ; preds = %lor.lhs.false, %do.body.16
  %24 = load %struct._GString*, %struct._GString** %parsed_tag, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %24, i32 0, i32 1
  %25 = load i64, i64* %len, align 8
  %cmp22 = icmp ugt i64 %25, 0
  br i1 %cmp22, label %if.then.24, label %if.end.32

if.then.24:                                       ; preds = %if.then.21
  %26 = load %struct._GString*, %struct._GString** %parsed_tag, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0
  %27 = load i8*, i8** %str, align 8
  %call26 = call i8* @gimp_tag_string_make_valid(i8* %27)
  store i8* %call26, i8** %validated_tag, align 8
  %28 = load i8*, i8** %validated_tag, align 8
  %tobool27 = icmp ne i8* %28, null
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.then.24
  %29 = load %struct._GList*, %struct._GList** %tag_list, align 8
  %30 = load i8*, i8** %validated_tag, align 8
  %call29 = call %struct._GList* @g_list_append(%struct._GList* %29, i8* %30)
  store %struct._GList* %call29, %struct._GList** %tag_list, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.24
  %31 = load %struct._GString*, %struct._GString** %parsed_tag, align 8
  %call31 = call %struct._GString* @g_string_set_size(%struct._GString* %31, i64 0)
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.30, %if.then.21
  br label %if.end.35

if.else.33:                                       ; preds = %lor.lhs.false
  %32 = load %struct._GString*, %struct._GString** %parsed_tag, align 8
  %33 = load i32, i32* %c, align 4
  %call34 = call %struct._GString* @g_string_append_unichar(%struct._GString* %32, i32 %33)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.end.32
  br label %do.cond

do.cond:                                          ; preds = %if.end.35
  %34 = load i32, i32* %c, align 4
  %tobool36 = icmp ne i32 %34, 0
  br i1 %tobool36, label %do.body.16, label %do.end.37

do.end.37:                                        ; preds = %do.cond
  %35 = load %struct._GString*, %struct._GString** %parsed_tag, align 8
  %call38 = call i8* @g_string_free(%struct._GString* %35, i32 1)
  %36 = load %struct._GList*, %struct._GList** %tag_list, align 8
  %call39 = call i32 @g_list_length(%struct._GList* %36)
  store i32 %call39, i32* %length, align 4
  %37 = load i32, i32* %length, align 4
  %add = add nsw i32 %37, 1
  %conv40 = sext i32 %add to i64
  %mul = mul i64 %conv40, 8
  %call41 = call noalias i8* @g_malloc(i64 %mul)
  %38 = bitcast i8* %call41 to i8**
  store i8** %38, i8*** %parsed_tags, align 8
  %39 = load %struct._GList*, %struct._GList** %tag_list, align 8
  store %struct._GList* %39, %struct._GList** %iterator, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.37
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %length, align 4
  %cmp42 = icmp slt i32 %40, %41
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct._GList*, %struct._GList** %iterator, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 0
  %43 = load i8*, i8** %data, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %44 to i64
  %45 = load i8**, i8*** %parsed_tags, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %45, i64 %idxprom44
  store i8* %43, i8** %arrayidx45, align 8
  %46 = load %struct._GList*, %struct._GList** %iterator, align 8
  %tobool46 = icmp ne %struct._GList* %46, null
  br i1 %tobool46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %47 = load %struct._GList*, %struct._GList** %iterator, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %47, i32 0, i32 1
  %48 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %48, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iterator, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* %length, align 4
  %idxprom47 = sext i32 %50 to i64
  %51 = load i8**, i8*** %parsed_tags, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %51, i64 %idxprom47
  store i8* null, i8** %arrayidx48, align 8
  %52 = load %struct._GList*, %struct._GList** %tag_list, align 8
  call void @g_list_free(%struct._GList* %52)
  %53 = load i8**, i8*** %parsed_tags, align 8
  store i8** %53, i8*** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.10
  %54 = load i8**, i8*** %retval
  ret i8** %54
}

declare %struct._GString* @g_string_new(i8*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char(i8*) #4

declare i32 @gimp_tag_is_tag_separator(i32) #1

declare i8* @gimp_tag_string_make_valid(i8*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare %struct._GString* @g_string_set_size(%struct._GString*, i64) #1

declare %struct._GString* @g_string_append_unichar(%struct._GString*, i32) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i32 @g_list_length(%struct._GList*) #1

declare noalias i8* @g_malloc(i64) #1

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_tag_entry_set_selected_items(%struct._GimpTagEntry* %tag_entry, %struct._GList* %items) #3 {
entry:
  %tag_entry.addr = alloca %struct._GimpTagEntry*, align 8
  %items.addr = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTagEntry* %tag_entry, %struct._GimpTagEntry** %tag_entry.addr, align 8
  store %struct._GList* %items, %struct._GList** %items.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %1 = bitcast %struct._GimpTagEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_entry_get_type() #8
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_tag_entry_set_selected_items, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.25

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %selected_items = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %13, i32 0, i32 3
  %14 = load %struct._GList*, %struct._GList** %selected_items, align 8
  %tobool11 = icmp ne %struct._GList* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %selected_items13 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %15, i32 0, i32 3
  %16 = load %struct._GList*, %struct._GList** %selected_items13, align 8
  call void @g_list_free(%struct._GList* %16)
  %17 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %selected_items14 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %17, i32 0, i32 3
  store %struct._GList* null, %struct._GList** %selected_items14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.end
  %18 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %common_tags = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %18, i32 0, i32 4
  %19 = load %struct._GList*, %struct._GList** %common_tags, align 8
  %tobool16 = icmp ne %struct._GList* %19, null
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.15
  %20 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %common_tags18 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %20, i32 0, i32 4
  %21 = load %struct._GList*, %struct._GList** %common_tags18, align 8
  call void @g_list_free_full(%struct._GList* %21, void (i8*)* @g_object_unref)
  %22 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %common_tags19 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %22, i32 0, i32 4
  store %struct._GList* null, %struct._GList** %common_tags19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.15
  %23 = load %struct._GList*, %struct._GList** %items.addr, align 8
  %call21 = call %struct._GList* @g_list_copy(%struct._GList* %23)
  %24 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %selected_items22 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %24, i32 0, i32 3
  store %struct._GList* %call21, %struct._GList** %selected_items22, align 8
  %25 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %mode = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %25, i32 0, i32 10
  %26 = load i32, i32* %mode, align 4
  %cmp23 = icmp eq i32 %26, 1
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  %27 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  call void @gimp_tag_entry_load_selection(%struct._GimpTagEntry* %27, i32 1)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.9, %if.then.24, %if.end.20
  ret void
}

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GList* @g_list_copy(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_load_selection(%struct._GimpTagEntry* %tag_entry, i32 %sort) #3 {
entry:
  %tag_entry.addr = alloca %struct._GimpTagEntry*, align 8
  %sort.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %insert_pos = alloca i32, align 4
  %refcounts = alloca %struct._GHashTable*, align 8
  %resource = alloca %struct._GList*, align 8
  %tag = alloca %struct._GList*, align 8
  %refcount = alloca i32, align 4
  %tag35 = alloca %struct._GimpTag*, align 8
  %text = alloca i8*, align 8
  store %struct._GimpTagEntry* %tag_entry, %struct._GimpTagEntry** %tag_entry.addr, align 8
  store i32 %sort, i32* %sort.addr, align 4
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %internal_operation = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %0, i32 0, i32 7
  %1 = load i32, i32* %internal_operation, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %internal_operation, align 4
  %2 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %3 = bitcast %struct._GimpTagEntry* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_editable_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEditable*
  call void @gtk_editable_delete_text(%struct._GtkEditable* %4, i32 0, i32 -1)
  %5 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %internal_operation2 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %5, i32 0, i32 7
  %6 = load i32, i32* %internal_operation2, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %internal_operation2, align 4
  %7 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %selected_items = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %7, i32 0, i32 3
  %8 = load %struct._GList*, %struct._GList** %selected_items, align 8
  %tobool = icmp ne %struct._GList* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  call void @gimp_tag_entry_toggle_desc(%struct._GimpTagEntry* %9, i32 0)
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* bitcast (i32 (%struct._GimpTag*)* @gimp_tag_get_hash to i32 (i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct._GimpTag*, %struct._GimpTag*)* @gimp_tag_equals to i32 (i8*, i8*)*))
  store %struct._GHashTable* %call3, %struct._GHashTable** %refcounts, align 8
  %10 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %selected_items4 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %10, i32 0, i32 3
  %11 = load %struct._GList*, %struct._GList** %selected_items4, align 8
  store %struct._GList* %11, %struct._GList** %resource, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.23, %if.end
  %12 = load %struct._GList*, %struct._GList** %resource, align 8
  %tobool5 = icmp ne %struct._GList* %12, null
  br i1 %tobool5, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GList*, %struct._GList** %resource, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_tagged_interface_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call6)
  %16 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpTagged*
  %call8 = call %struct._GList* @gimp_tagged_get_tags(%struct._GimpTagged* %16)
  store %struct._GList* %call8, %struct._GList** %tag, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %cond.end, %for.body
  %17 = load %struct._GList*, %struct._GList** %tag, align 8
  %tobool10 = icmp ne %struct._GList* %17, null
  br i1 %tobool10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %18 = load %struct._GHashTable*, %struct._GHashTable** %refcounts, align 8
  %19 = load %struct._GList*, %struct._GList** %tag, align 8
  %data12 = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data12, align 8
  %call13 = call i8* @g_hash_table_lookup(%struct._GHashTable* %18, i8* %20)
  %21 = ptrtoint i8* %call13 to i64
  %conv = trunc i64 %21 to i32
  store i32 %conv, i32* %refcount, align 4
  %22 = load %struct._GHashTable*, %struct._GHashTable** %refcounts, align 8
  %23 = load %struct._GList*, %struct._GList** %tag, align 8
  %data14 = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 0
  %24 = load i8*, i8** %data14, align 8
  %25 = load i32, i32* %refcount, align 4
  %add = add i32 %25, 1
  %conv15 = zext i32 %add to i64
  %26 = inttoptr i64 %conv15 to i8*
  %call16 = call i32 @g_hash_table_insert(%struct._GHashTable* %22, i8* %24, i8* %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %27 = load %struct._GList*, %struct._GList** %tag, align 8
  %tobool17 = icmp ne %struct._GList* %27, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %28 = load %struct._GList*, %struct._GList** %tag, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %29, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %tag, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %30 = load %struct._GList*, %struct._GList** %resource, align 8
  %tobool19 = icmp ne %struct._GList* %30, null
  br i1 %tobool19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %for.inc.18
  %31 = load %struct._GList*, %struct._GList** %resource, align 8
  %next21 = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %next21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %for.inc.18
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi %struct._GList* [ %32, %cond.true.20 ], [ null, %cond.false.22 ]
  store %struct._GList* %cond24, %struct._GList** %resource, align 8
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  %33 = load %struct._GHashTable*, %struct._GHashTable** %refcounts, align 8
  %34 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %35 = bitcast %struct._GimpTagEntry* %34 to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %33, void (i8*, i8*, i8*)* @gimp_tag_entry_find_common_tags, i8* %35)
  %36 = load %struct._GHashTable*, %struct._GHashTable** %refcounts, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %36)
  %37 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %common_tags = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %37, i32 0, i32 4
  %38 = load %struct._GList*, %struct._GList** %common_tags, align 8
  %call26 = call %struct._GList* @g_list_sort(%struct._GList* %38, i32 (i8*, i8*)* @gimp_tag_compare_func)
  %39 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %common_tags27 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %39, i32 0, i32 4
  store %struct._GList* %call26, %struct._GList** %common_tags27, align 8
  %40 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %41 = bitcast %struct._GimpTagEntry* %40 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_editable_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call28)
  %42 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkEditable*
  %call30 = call i32 @gtk_editable_get_position(%struct._GtkEditable* %42)
  store i32 %call30, i32* %insert_pos, align 4
  %43 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %common_tags31 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %43, i32 0, i32 4
  %44 = load %struct._GList*, %struct._GList** %common_tags31, align 8
  store %struct._GList* %44, %struct._GList** %list, align 8
  br label %for.cond.32

for.cond.32:                                      ; preds = %cond.end.53, %for.end.25
  %45 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool33 = icmp ne %struct._GList* %45, null
  br i1 %tobool33, label %for.body.34, label %for.end.55

for.body.34:                                      ; preds = %for.cond.32
  %46 = load %struct._GList*, %struct._GList** %list, align 8
  %data36 = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 0
  %47 = load i8*, i8** %data36, align 8
  %48 = bitcast i8* %47 to %struct._GimpTag*
  store %struct._GimpTag* %48, %struct._GimpTag** %tag35, align 8
  %49 = load %struct._GimpTag*, %struct._GimpTag** %tag35, align 8
  %call37 = call i8* @gimp_tag_get_name(%struct._GimpTag* %49)
  %call38 = call i8* @gimp_tag_entry_get_separator()
  %call39 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* %call37, i8* %call38)
  store i8* %call39, i8** %text, align 8
  %50 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %internal_operation40 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %50, i32 0, i32 7
  %51 = load i32, i32* %internal_operation40, align 4
  %inc41 = add nsw i32 %51, 1
  store i32 %inc41, i32* %internal_operation40, align 4
  %52 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %53 = bitcast %struct._GimpTagEntry* %52 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_editable_get_type() #8
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call42)
  %54 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkEditable*
  %55 = load i8*, i8** %text, align 8
  %56 = load i8*, i8** %text, align 8
  %call44 = call i64 @strlen(i8* %56) #9
  %conv45 = trunc i64 %call44 to i32
  call void @gtk_editable_insert_text(%struct._GtkEditable* %54, i8* %55, i32 %conv45, i32* %insert_pos)
  %57 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %internal_operation46 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %57, i32 0, i32 7
  %58 = load i32, i32* %internal_operation46, align 4
  %dec47 = add nsw i32 %58, -1
  store i32 %dec47, i32* %internal_operation46, align 4
  %59 = load i8*, i8** %text, align 8
  call void @g_free(i8* %59)
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.34
  %60 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool49 = icmp ne %struct._GList* %60, null
  br i1 %tobool49, label %cond.true.50, label %cond.false.52

cond.true.50:                                     ; preds = %for.inc.48
  %61 = load %struct._GList*, %struct._GList** %list, align 8
  %next51 = getelementptr inbounds %struct._GList, %struct._GList* %61, i32 0, i32 1
  %62 = load %struct._GList*, %struct._GList** %next51, align 8
  br label %cond.end.53

cond.false.52:                                    ; preds = %for.inc.48
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.50
  %cond54 = phi %struct._GList* [ %62, %cond.true.50 ], [ null, %cond.false.52 ]
  store %struct._GList* %cond54, %struct._GList** %list, align 8
  br label %for.cond.32

for.end.55:                                       ; preds = %for.cond.32
  %63 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  call void @gimp_tag_entry_commit_tags(%struct._GimpTagEntry* %63)
  br label %return

return:                                           ; preds = %for.end.55, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_tag_entry_get_separator() #3 {
entry:
  %call = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #6
  ret i8* %call
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_class_init(%struct._GimpTagEntryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTagEntryClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpTagEntryClass* %klass, %struct._GimpTagEntryClass** %klass.addr, align 8
  %0 = load %struct._GimpTagEntryClass*, %struct._GimpTagEntryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTagEntryClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpTagEntryClass*, %struct._GimpTagEntryClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpTagEntryClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_tag_entry_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_tag_entry_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_tag_entry_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 26
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_tag_entry_button_release, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_tagged_container_get_type() #8
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i64 %call3, i32 11)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call4)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_tag_entry_mode_get_type() #8
  %call6 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i64 %call5, i32 0, i32 11)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 2, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %entry1 = alloca %struct._GimpTagEntry*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_entry_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTagEntry*
  store %struct._GimpTagEntry* %2, %struct._GimpTagEntry** %entry1, align 8
  %3 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %selected_items = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %3, i32 0, i32 3
  %4 = load %struct._GList*, %struct._GList** %selected_items, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %selected_items3 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %5, i32 0, i32 3
  %6 = load %struct._GList*, %struct._GList** %selected_items3, align 8
  call void @g_list_free(%struct._GList* %6)
  %7 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %selected_items4 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %7, i32 0, i32 3
  store %struct._GList* null, %struct._GList** %selected_items4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %common_tags = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %8, i32 0, i32 4
  %9 = load %struct._GList*, %struct._GList** %common_tags, align 8
  %tobool5 = icmp ne %struct._GList* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %common_tags7 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %10, i32 0, i32 4
  %11 = load %struct._GList*, %struct._GList** %common_tags7, align 8
  call void @g_list_free_full(%struct._GList* %11, void (i8*)* @g_object_unref)
  %12 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %common_tags8 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %12, i32 0, i32 4
  store %struct._GList* null, %struct._GList** %common_tags8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %13 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %13, i32 0, i32 5
  %14 = load %struct._GList*, %struct._GList** %recent_list, align 8
  %tobool10 = icmp ne %struct._GList* %14, null
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.9
  %15 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list12 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %15, i32 0, i32 5
  %16 = load %struct._GList*, %struct._GList** %recent_list12, align 8
  call void @g_list_free_full(%struct._GList* %16, void (i8*)* @g_free)
  %17 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list13 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %17, i32 0, i32 5
  store %struct._GList* null, %struct._GList** %recent_list13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.9
  %18 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %container = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %18, i32 0, i32 1
  %19 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container, align 8
  %tobool15 = icmp ne %struct._GimpTaggedContainer* %19, null
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.14
  %20 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %container17 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %20, i32 0, i32 1
  %21 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container17, align 8
  %22 = bitcast %struct._GimpTaggedContainer* %21 to i8*
  %23 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %24 = bitcast %struct._GimpTagEntry* %23 to i8*
  %call18 = call i32 @g_signal_handlers_disconnect_matched(i8* %22, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainer*, %struct._GimpObject*, %struct._GimpTagEntry*)* @gimp_tag_entry_container_changed to i8*), i8* %24)
  %25 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %container19 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %25, i32 0, i32 1
  %26 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container19, align 8
  %27 = bitcast %struct._GimpTaggedContainer* %26 to i8*
  call void @g_object_unref(i8* %27)
  %28 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %container20 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %28, i32 0, i32 1
  store %struct._GimpTaggedContainer* null, %struct._GimpTaggedContainer** %container20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end.14
  %29 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %29, i32 0, i32 2
  %30 = load %struct._GString*, %struct._GString** %mask, align 8
  %tobool22 = icmp ne %struct._GString* %30, null
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.21
  %31 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask24 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %31, i32 0, i32 2
  %32 = load %struct._GString*, %struct._GString** %mask24, align 8
  %call25 = call i8* @g_string_free(%struct._GString* %32, i32 1)
  %33 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask26 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %33, i32 0, i32 2
  store %struct._GString* null, %struct._GString** %mask26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end.21
  %34 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %tag_query_idle_id = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %34, i32 0, i32 13
  %35 = load i32, i32* %tag_query_idle_id, align 4
  %tobool28 = icmp ne i32 %35, 0
  br i1 %tobool28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %if.end.27
  %36 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %tag_query_idle_id30 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %36, i32 0, i32 13
  %37 = load i32, i32* %tag_query_idle_id30, align 4
  %call31 = call i32 @g_source_remove(i32 %37)
  %38 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %tag_query_idle_id32 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %38, i32 0, i32 13
  store i32 0, i32* %tag_query_idle_id32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %if.end.27
  %39 = load i8*, i8** @gimp_tag_entry_parent_class, align 8
  %40 = bitcast i8* %39 to %struct._GTypeClass*
  %call34 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %40, i64 80)
  %41 = bitcast %struct._GTypeClass* %call34 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %41, i32 0, i32 5
  %42 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %43 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %42(%struct._GObject* %43)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %entry1 = alloca %struct._GimpTagEntry*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_entry_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTagEntry*
  store %struct._GimpTagEntry* %2, %struct._GimpTagEntry** %entry1, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %container = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %5, i32 0, i32 1
  %6 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container, align 8
  %7 = bitcast %struct._GimpTaggedContainer* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mode = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %9, i32 0, i32 10
  %10 = load i32, i32* %mode, align 4
  call void @g_value_set_enum(%struct._GValue* %8, i32 %10)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %11, %struct._GObject** %_glib__object, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = load i32, i32* %property_id.addr, align 4
  store i32 %13, i32* %_glib__property_id, align 4
  %14 = load i32, i32* %_glib__property_id, align 4
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 314, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %14, i8* %16, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %entry1 = alloca %struct._GimpTagEntry*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_entry_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTagEntry*
  store %struct._GimpTagEntry* %2, %struct._GimpTagEntry** %entry1, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_dup_object(%struct._GValue* %4)
  %5 = bitcast i8* %call3 to %struct._GimpTaggedContainer*
  %6 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %container = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %6, i32 0, i32 1
  store %struct._GimpTaggedContainer* %5, %struct._GimpTaggedContainer** %container, align 8
  %7 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %container4 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %7, i32 0, i32 1
  %8 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container4, align 8
  %9 = bitcast %struct._GimpTaggedContainer* %8 to i8*
  %10 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %11 = bitcast %struct._GimpTagEntry* %10 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpObject*, %struct._GimpTagEntry*)* @gimp_tag_entry_container_changed to void ()*), i8* %11, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %container6 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %12, i32 0, i32 1
  %13 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container6, align 8
  %14 = bitcast %struct._GimpTaggedContainer* %13 to i8*
  %15 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %16 = bitcast %struct._GimpTagEntry* %15 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpObject*, %struct._GimpTagEntry*)* @gimp_tag_entry_container_changed to void ()*), i8* %16, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i32 @g_value_get_enum(%struct._GValue* %17)
  %18 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mode = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %18, i32 0, i32 10
  store i32 %call9, i32* %mode, align 4
  %19 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  call void @gimp_tag_entry_toggle_desc(%struct._GimpTagEntry* %19, i32 1)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %20 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %20, %struct._GObject** %_glib__object, align 8
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %21, %struct._GParamSpec** %_glib__pspec, align 8
  %22 = load i32, i32* %property_id.addr, align 4
  store i32 %22, i32* %_glib__property_id, align 4
  %23 = load i32, i32* %_glib__property_id, align 4
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %24, i32 0, i32 1
  %25 = load i8*, i8** %name, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %27 = bitcast %struct._GParamSpec* %26 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type, align 8
  %call10 = call i8* @g_type_name(i64 %29)
  %30 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %31 = bitcast %struct._GObject* %30 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type12 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type12, align 8
  %call13 = call i8* @g_type_name(i64 %33)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 290, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %23, i8* %25, i8* %call10, i8* %call13)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.8, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_entry_button_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 8
  %1 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to i8*
  %call = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GimpTagEntry*)* @gimp_tag_entry_try_select_jellybean to i32 (i8*)*), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** @gimp_tag_entry_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call1)
  %6 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %6, i32 0, i32 26
  %7 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %call3 = call i32 %7(%struct._GtkWidget* %8, %struct._GdkEventButton* %9)
  ret i32 %call3
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tag_entry_mode_get_type() #2

declare void @g_free(i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_container_changed(%struct._GimpContainer* %container, %struct._GimpObject* %object, %struct._GimpTagEntry* %tag_entry) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %tag_entry.addr = alloca %struct._GimpTagEntry*, align 8
  %list = alloca %struct._GList*, align 8
  %selected_items = alloca %struct._GList*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store %struct._GimpTagEntry* %tag_entry, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %container1 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %0, i32 0, i32 1
  %1 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container1, align 8
  %2 = bitcast %struct._GimpTaggedContainer* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpContainer*
  %4 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call3 = call i32 @gimp_container_have(%struct._GimpContainer* %3, %struct._GimpObject* %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.11, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GList* null, %struct._GList** %selected_items, align 8
  %5 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %selected_items4 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %5, i32 0, i32 3
  %6 = load %struct._GList*, %struct._GList** %selected_items4, align 8
  store %struct._GList* %6, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %7, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %11 = bitcast %struct._GimpObject* %10 to i8*
  %cmp = icmp ne i8* %9, %11
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  %12 = load %struct._GList*, %struct._GList** %selected_items, align 8
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %data7 = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data7, align 8
  %call8 = call %struct._GList* @g_list_prepend(%struct._GList* %12, i8* %14)
  store %struct._GList* %call8, %struct._GList** %selected_items, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool9 = icmp ne %struct._GList* %15, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %17, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %selected_items, align 8
  %call10 = call %struct._GList* @g_list_reverse(%struct._GList* %18)
  store %struct._GList* %call10, %struct._GList** %selected_items, align 8
  %19 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %20 = load %struct._GList*, %struct._GList** %selected_items, align 8
  call void @gimp_tag_entry_set_selected_items(%struct._GimpTagEntry* %19, %struct._GList* %20)
  %21 = load %struct._GList*, %struct._GList** %selected_items, align 8
  call void @g_list_free(%struct._GList* %21)
  br label %if.end.11

if.end.11:                                        ; preds = %for.end, %entry
  %22 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %mode = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %22, i32 0, i32 10
  %23 = load i32, i32* %mode, align 4
  %cmp12 = icmp eq i32 %23, 1
  br i1 %cmp12, label %if.then.13, label %if.end.47

if.then.13:                                       ; preds = %if.end.11
  %24 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %selected_items14 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %24, i32 0, i32 3
  %25 = load %struct._GList*, %struct._GList** %selected_items14, align 8
  store %struct._GList* %25, %struct._GList** %list, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %cond.end.38, %if.then.13
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %26, null
  br i1 %tobool16, label %for.body.17, label %for.end.40

for.body.17:                                      ; preds = %for.cond.15
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %data18 = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 0
  %28 = load i8*, i8** %data18, align 8
  %29 = bitcast i8* %28 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_tagged_interface_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call19)
  %30 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpTagged*
  %call21 = call %struct._GList* @gimp_tagged_get_tags(%struct._GimpTagged* %30)
  %tobool22 = icmp ne %struct._GList* %call21, null
  br i1 %tobool22, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %for.body.17
  %31 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %container23 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %31, i32 0, i32 1
  %32 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container23, align 8
  %33 = bitcast %struct._GimpTaggedContainer* %32 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_container_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call24)
  %34 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpContainer*
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %data26 = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 0
  %36 = load i8*, i8** %data26, align 8
  %37 = bitcast i8* %36 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_object_get_type() #8
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call27)
  %38 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpObject*
  %call29 = call i32 @gimp_container_have(%struct._GimpContainer* %34, %struct._GimpObject* %38)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %land.lhs.true
  br label %for.end.40

if.end.32:                                        ; preds = %land.lhs.true, %for.body.17
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool34 = icmp ne %struct._GList* %39, null
  br i1 %tobool34, label %cond.true.35, label %cond.false.37

cond.true.35:                                     ; preds = %for.inc.33
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %next36 = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 1
  %41 = load %struct._GList*, %struct._GList** %next36, align 8
  br label %cond.end.38

cond.false.37:                                    ; preds = %for.inc.33
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.35
  %cond39 = phi %struct._GList* [ %41, %cond.true.35 ], [ null, %cond.false.37 ]
  store %struct._GList* %cond39, %struct._GList** %list, align 8
  br label %for.cond.15

for.end.40:                                       ; preds = %if.then.31, %for.cond.15
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool41 = icmp ne %struct._GList* %42, null
  br i1 %tobool41, label %if.end.46, label %if.then.42

if.then.42:                                       ; preds = %for.end.40
  %43 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %internal_operation = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %43, i32 0, i32 7
  %44 = load i32, i32* %internal_operation, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %internal_operation, align 4
  %45 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %46 = bitcast %struct._GimpTagEntry* %45 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_editable_get_type() #8
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call43)
  %47 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkEditable*
  call void @gtk_editable_delete_text(%struct._GtkEditable* %47, i32 0, i32 -1)
  %48 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %internal_operation45 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %48, i32 0, i32 7
  %49 = load i32, i32* %internal_operation45, align 4
  %dec = add nsw i32 %49, -1
  store i32 %dec, i32* %internal_operation45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %for.end.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.11
  ret void
}

declare i32 @g_source_remove(i32) #1

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare %struct._GList* @gimp_tagged_get_tags(%struct._GimpTagged*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tagged_interface_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gtk_editable_delete_text(%struct._GtkEditable*, i32, i32) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_toggle_desc(%struct._GimpTagEntry* %tag_entry, i32 %show) #3 {
entry:
  %tag_entry.addr = alloca %struct._GimpTagEntry*, align 8
  %show.addr = alloca i32, align 4
  %widget = alloca %struct._GtkWidget*, align 8
  %current_text = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct._GimpTagEntry* %tag_entry, %struct._GimpTagEntry** %tag_entry.addr, align 8
  store i32 %show, i32* %show.addr, align 4
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %1 = bitcast %struct._GimpTagEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load i32, i32* %show.addr, align 4
  %4 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %description_shown = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %4, i32 0, i32 11
  %5 = load i32, i32* %description_shown, align 4
  %xor = xor i32 %3, %5
  %tobool = icmp ne i32 %xor, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.15

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %show.addr, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %8 = bitcast %struct._GimpTagEntry* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_entry_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkEntry*
  %call6 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %9)
  %call7 = call noalias i8* @g_strdup(i8* %call6)
  store i8* %call7, i8** %current_text, align 8
  %10 = load i8*, i8** %current_text, align 8
  %call8 = call i8* @g_strchug(i8* %10)
  %call9 = call i8* @g_strchomp(i8* %call8)
  store i8* %call9, i8** %current_text, align 8
  %11 = load i8*, i8** %current_text, align 8
  %call10 = call i64 @strlen(i8* %11) #9
  store i64 %call10, i64* %len, align 8
  %12 = load i8*, i8** %current_text, align 8
  call void @g_free(i8* %12)
  %13 = load i64, i64* %len, align 8
  %cmp = icmp ugt i64 %13, 0
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.3
  br label %if.end.15

if.end.12:                                        ; preds = %if.then.3
  %14 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %description_shown13 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %14, i32 0, i32 11
  store i32 1, i32* %description_shown13, align 4
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %15)
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %16 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %description_shown14 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %16, i32 0, i32 11
  store i32 0, i32* %description_shown14, align 4
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %17)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then, %if.then.11, %if.else, %if.end.12
  ret void
}

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_strchomp(i8*) #1

declare i8* @g_strchug(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare i32 @g_idle_add(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_entry_try_select_jellybean(%struct._GimpTagEntry* %entry1) #3 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct._GimpTagEntry*, align 8
  %selection_start = alloca i32, align 4
  %selection_end = alloca i32, align 4
  %selection_pos = alloca i32, align 4
  %char_count = alloca i32, align 4
  store %struct._GimpTagEntry* %entry1, %struct._GimpTagEntry** %entry.addr, align 8
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpTagEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_editable_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEditable*
  %call3 = call i32 @gtk_editable_get_position(%struct._GtkEditable* %2)
  store i32 %call3, i32* %selection_pos, align 4
  %3 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %4 = bitcast %struct._GimpTagEntry* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_entry_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkEntry*
  %call6 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %5)
  %call7 = call i64 @g_utf8_strlen(i8* %call6, i64 -1) #9
  %conv = trunc i64 %call7 to i32
  store i32 %conv, i32* %char_count, align 4
  %6 = load i32, i32* %selection_pos, align 4
  %7 = load i32, i32* %char_count, align 4
  %cmp = icmp eq i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %9 = bitcast %struct._GimpTagEntry* %8 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_editable_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call9)
  %10 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkEditable*
  %call11 = call i32 @gtk_editable_get_selection_bounds(%struct._GtkEditable* %10, i32* %selection_start, i32* %selection_end)
  %11 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %12 = load i32, i32* %selection_start, align 4
  %13 = load i32, i32* %selection_end, align 4
  %call12 = call i32 @gimp_tag_entry_select_jellybean(%struct._GimpTagEntry* %11, i32 %12, i32 %13, i32 0)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @gtk_editable_get_position(%struct._GtkEditable*) #1

; Function Attrs: nounwind readonly
declare i64 @g_utf8_strlen(i8*, i64) #4

declare i32 @gtk_editable_get_selection_bounds(%struct._GtkEditable*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_entry_select_jellybean(%struct._GimpTagEntry* %entry1, i32 %selection_start, i32 %selection_end, i32 %search_dir) #3 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct._GimpTagEntry*, align 8
  %selection_start.addr = alloca i32, align 4
  %selection_end.addr = alloca i32, align 4
  %search_dir.addr = alloca i32, align 4
  %prev_selection_start = alloca i32, align 4
  %prev_selection_end = alloca i32, align 4
  store %struct._GimpTagEntry* %entry1, %struct._GimpTagEntry** %entry.addr, align 8
  store i32 %selection_start, i32* %selection_start.addr, align 4
  store i32 %selection_end, i32* %selection_end.addr, align 4
  store i32 %search_dir, i32* %search_dir.addr, align 4
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %0, i32 0, i32 2
  %1 = load %struct._GString*, %struct._GString** %mask, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %1, i32 0, i32 1
  %2 = load i64, i64* %len, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %selection_start.addr, align 4
  %conv = sext i32 %3 to i64
  %4 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask2 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %4, i32 0, i32 2
  %5 = load %struct._GString*, %struct._GString** %mask2, align 8
  %len3 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len3, align 8
  %cmp = icmp uge i64 %conv, %6
  br i1 %cmp, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %7 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask6 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %7, i32 0, i32 2
  %8 = load %struct._GString*, %struct._GString** %mask6, align 8
  %len7 = getelementptr inbounds %struct._GString, %struct._GString* %8, i32 0, i32 1
  %9 = load i64, i64* %len7, align 8
  %sub = sub i64 %9, 1
  %conv8 = trunc i64 %sub to i32
  store i32 %conv8, i32* %selection_start.addr, align 4
  %10 = load i32, i32* %selection_start.addr, align 4
  store i32 %10, i32* %selection_end.addr, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end
  %11 = load i32, i32* %selection_start.addr, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask10 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %12, i32 0, i32 2
  %13 = load %struct._GString*, %struct._GString** %mask10, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %13, i32 0, i32 0
  %14 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1
  %conv11 = sext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv11, 117
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  %16 = load i32, i32* %search_dir.addr, align 4
  switch i32 %16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.49
    i32 2, label %sw.bb.113
  ]

sw.bb:                                            ; preds = %if.end.15
  %17 = load i32, i32* %selection_start.addr, align 4
  %cmp16 = icmp sgt i32 %17, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %sw.bb
  %18 = load i32, i32* %selection_start.addr, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask19 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %19, i32 0, i32 2
  %20 = load %struct._GString*, %struct._GString** %mask19, align 8
  %str20 = getelementptr inbounds %struct._GString, %struct._GString* %20, i32 0, i32 0
  %21 = load i8*, i8** %str20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %21, i64 %idxprom18
  %22 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %22 to i32
  %cmp23 = icmp eq i32 %conv22, 115
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true
  %23 = load i32, i32* %selection_start.addr, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %selection_start.addr, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %land.lhs.true, %sw.bb
  %24 = load i32, i32* %selection_start.addr, align 4
  %cmp27 = icmp sgt i32 %24, 0
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.48

land.lhs.true.29:                                 ; preds = %if.end.26
  %25 = load i32, i32* %selection_start.addr, align 4
  %sub30 = sub nsw i32 %25, 1
  %idxprom31 = sext i32 %sub30 to i64
  %26 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask32 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %26, i32 0, i32 2
  %27 = load %struct._GString*, %struct._GString** %mask32, align 8
  %str33 = getelementptr inbounds %struct._GString, %struct._GString* %27, i32 0, i32 0
  %28 = load i8*, i8** %str33, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %28, i64 %idxprom31
  %29 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %29 to i32
  %cmp36 = icmp eq i32 %conv35, 119
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.48

land.lhs.true.38:                                 ; preds = %land.lhs.true.29
  %30 = load i32, i32* %selection_start.addr, align 4
  %idxprom39 = sext i32 %30 to i64
  %31 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask40 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %31, i32 0, i32 2
  %32 = load %struct._GString*, %struct._GString** %mask40, align 8
  %str41 = getelementptr inbounds %struct._GString, %struct._GString* %32, i32 0, i32 0
  %33 = load i8*, i8** %str41, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %33, i64 %idxprom39
  %34 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %34 to i32
  %cmp44 = icmp eq i32 %conv43, 116
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %land.lhs.true.38
  %35 = load i32, i32* %selection_start.addr, align 4
  %dec47 = add nsw i32 %35, -1
  store i32 %dec47, i32* %selection_start.addr, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %land.lhs.true.38, %land.lhs.true.29, %if.end.26
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.end.15
  %36 = load i32, i32* %selection_start.addr, align 4
  %37 = load i32, i32* %selection_end.addr, align 4
  %cmp50 = icmp eq i32 %36, %37
  br i1 %cmp50, label %if.then.52, label %if.end.112

if.then.52:                                       ; preds = %sw.bb.49
  %38 = load i32, i32* %selection_start.addr, align 4
  %cmp53 = icmp sgt i32 %38, 0
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.74

land.lhs.true.55:                                 ; preds = %if.then.52
  %39 = load i32, i32* %selection_start.addr, align 4
  %idxprom56 = sext i32 %39 to i64
  %40 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask57 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %40, i32 0, i32 2
  %41 = load %struct._GString*, %struct._GString** %mask57, align 8
  %str58 = getelementptr inbounds %struct._GString, %struct._GString* %41, i32 0, i32 0
  %42 = load i8*, i8** %str58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %42, i64 %idxprom56
  %43 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %43 to i32
  %cmp61 = icmp eq i32 %conv60, 116
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.74

land.lhs.true.63:                                 ; preds = %land.lhs.true.55
  %44 = load i32, i32* %selection_start.addr, align 4
  %sub64 = sub nsw i32 %44, 1
  %idxprom65 = sext i32 %sub64 to i64
  %45 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask66 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %45, i32 0, i32 2
  %46 = load %struct._GString*, %struct._GString** %mask66, align 8
  %str67 = getelementptr inbounds %struct._GString, %struct._GString* %46, i32 0, i32 0
  %47 = load i8*, i8** %str67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %47, i64 %idxprom65
  %48 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %48 to i32
  %cmp70 = icmp eq i32 %conv69, 119
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %land.lhs.true.63
  %49 = load i32, i32* %selection_start.addr, align 4
  %dec73 = add nsw i32 %49, -1
  store i32 %dec73, i32* %selection_start.addr, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %land.lhs.true.63, %land.lhs.true.55, %if.then.52
  %50 = load i32, i32* %selection_start.addr, align 4
  %idxprom75 = sext i32 %50 to i64
  %51 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask76 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %51, i32 0, i32 2
  %52 = load %struct._GString*, %struct._GString** %mask76, align 8
  %str77 = getelementptr inbounds %struct._GString, %struct._GString* %52, i32 0, i32 0
  %53 = load i8*, i8** %str77, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %53, i64 %idxprom75
  %54 = load i8, i8* %arrayidx78, align 1
  %conv79 = sext i8 %54 to i32
  %cmp80 = icmp eq i32 %conv79, 119
  br i1 %cmp80, label %land.lhs.true.89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.74
  %55 = load i32, i32* %selection_start.addr, align 4
  %idxprom82 = sext i32 %55 to i64
  %56 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask83 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %56, i32 0, i32 2
  %57 = load %struct._GString*, %struct._GString** %mask83, align 8
  %str84 = getelementptr inbounds %struct._GString, %struct._GString* %57, i32 0, i32 0
  %58 = load i8*, i8** %str84, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %58, i64 %idxprom82
  %59 = load i8, i8* %arrayidx85, align 1
  %conv86 = sext i8 %59 to i32
  %cmp87 = icmp eq i32 %conv86, 115
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.111

land.lhs.true.89:                                 ; preds = %lor.lhs.false, %if.end.74
  %60 = load i32, i32* %selection_start.addr, align 4
  %cmp90 = icmp sgt i32 %60, 0
  br i1 %cmp90, label %if.then.92, label %if.end.111

if.then.92:                                       ; preds = %land.lhs.true.89
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.92
  %61 = load i32, i32* %selection_start.addr, align 4
  %idxprom93 = sext i32 %61 to i64
  %62 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask94 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %62, i32 0, i32 2
  %63 = load %struct._GString*, %struct._GString** %mask94, align 8
  %str95 = getelementptr inbounds %struct._GString, %struct._GString* %63, i32 0, i32 0
  %64 = load i8*, i8** %str95, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %64, i64 %idxprom93
  %65 = load i8, i8* %arrayidx96, align 1
  %conv97 = sext i8 %65 to i32
  %cmp98 = icmp eq i32 %conv97, 119
  br i1 %cmp98, label %land.rhs, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %while.cond
  %66 = load i32, i32* %selection_start.addr, align 4
  %idxprom101 = sext i32 %66 to i64
  %67 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask102 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %67, i32 0, i32 2
  %68 = load %struct._GString*, %struct._GString** %mask102, align 8
  %str103 = getelementptr inbounds %struct._GString, %struct._GString* %68, i32 0, i32 0
  %69 = load i8*, i8** %str103, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %69, i64 %idxprom101
  %70 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %70 to i32
  %cmp106 = icmp eq i32 %conv105, 115
  br i1 %cmp106, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.100, %while.cond
  %71 = load i32, i32* %selection_start.addr, align 4
  %cmp108 = icmp sgt i32 %71, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.100
  %72 = phi i1 [ false, %lor.lhs.false.100 ], [ %cmp108, %land.rhs ]
  br i1 %72, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %73 = load i32, i32* %selection_start.addr, align 4
  %dec110 = add nsw i32 %73, -1
  store i32 %dec110, i32* %selection_start.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %74 = load i32, i32* %selection_start.addr, align 4
  %add = add nsw i32 %74, 1
  store i32 %add, i32* %selection_end.addr, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %while.end, %land.lhs.true.89, %lor.lhs.false
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %sw.bb.49
  br label %sw.epilog

sw.bb.113:                                        ; preds = %if.end.15
  %75 = load i32, i32* %selection_start.addr, align 4
  %76 = load i32, i32* %selection_end.addr, align 4
  %cmp114 = icmp eq i32 %75, %76
  br i1 %cmp114, label %if.then.116, label %if.end.168

if.then.116:                                      ; preds = %sw.bb.113
  %77 = load i32, i32* %selection_start.addr, align 4
  %idxprom117 = sext i32 %77 to i64
  %78 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask118 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %78, i32 0, i32 2
  %79 = load %struct._GString*, %struct._GString** %mask118, align 8
  %str119 = getelementptr inbounds %struct._GString, %struct._GString* %79, i32 0, i32 0
  %80 = load i8*, i8** %str119, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %80, i64 %idxprom117
  %81 = load i8, i8* %arrayidx120, align 1
  %conv121 = sext i8 %81 to i32
  %cmp122 = icmp eq i32 %conv121, 119
  br i1 %cmp122, label %land.lhs.true.132, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %if.then.116
  %82 = load i32, i32* %selection_start.addr, align 4
  %idxprom125 = sext i32 %82 to i64
  %83 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask126 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %83, i32 0, i32 2
  %84 = load %struct._GString*, %struct._GString** %mask126, align 8
  %str127 = getelementptr inbounds %struct._GString, %struct._GString* %84, i32 0, i32 0
  %85 = load i8*, i8** %str127, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %85, i64 %idxprom125
  %86 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %86 to i32
  %cmp130 = icmp eq i32 %conv129, 115
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.167

land.lhs.true.132:                                ; preds = %lor.lhs.false.124, %if.then.116
  %87 = load i32, i32* %selection_start.addr, align 4
  %conv133 = sext i32 %87 to i64
  %88 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask134 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %88, i32 0, i32 2
  %89 = load %struct._GString*, %struct._GString** %mask134, align 8
  %len135 = getelementptr inbounds %struct._GString, %struct._GString* %89, i32 0, i32 1
  %90 = load i64, i64* %len135, align 8
  %sub136 = sub i64 %90, 1
  %cmp137 = icmp ult i64 %conv133, %sub136
  br i1 %cmp137, label %if.then.139, label %if.end.167

if.then.139:                                      ; preds = %land.lhs.true.132
  br label %while.cond.140

while.cond.140:                                   ; preds = %while.body.164, %if.then.139
  %91 = load i32, i32* %selection_start.addr, align 4
  %idxprom141 = sext i32 %91 to i64
  %92 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask142 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %92, i32 0, i32 2
  %93 = load %struct._GString*, %struct._GString** %mask142, align 8
  %str143 = getelementptr inbounds %struct._GString, %struct._GString* %93, i32 0, i32 0
  %94 = load i8*, i8** %str143, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %94, i64 %idxprom141
  %95 = load i8, i8* %arrayidx144, align 1
  %conv145 = sext i8 %95 to i32
  %cmp146 = icmp eq i32 %conv145, 119
  br i1 %cmp146, label %land.rhs.156, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %while.cond.140
  %96 = load i32, i32* %selection_start.addr, align 4
  %idxprom149 = sext i32 %96 to i64
  %97 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask150 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %97, i32 0, i32 2
  %98 = load %struct._GString*, %struct._GString** %mask150, align 8
  %str151 = getelementptr inbounds %struct._GString, %struct._GString* %98, i32 0, i32 0
  %99 = load i8*, i8** %str151, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %99, i64 %idxprom149
  %100 = load i8, i8* %arrayidx152, align 1
  %conv153 = sext i8 %100 to i32
  %cmp154 = icmp eq i32 %conv153, 115
  br i1 %cmp154, label %land.rhs.156, label %land.end.163

land.rhs.156:                                     ; preds = %lor.lhs.false.148, %while.cond.140
  %101 = load i32, i32* %selection_start.addr, align 4
  %conv157 = sext i32 %101 to i64
  %102 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask158 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %102, i32 0, i32 2
  %103 = load %struct._GString*, %struct._GString** %mask158, align 8
  %len159 = getelementptr inbounds %struct._GString, %struct._GString* %103, i32 0, i32 1
  %104 = load i64, i64* %len159, align 8
  %sub160 = sub i64 %104, 1
  %cmp161 = icmp ult i64 %conv157, %sub160
  br label %land.end.163

land.end.163:                                     ; preds = %land.rhs.156, %lor.lhs.false.148
  %105 = phi i1 [ false, %lor.lhs.false.148 ], [ %cmp161, %land.rhs.156 ]
  br i1 %105, label %while.body.164, label %while.end.165

while.body.164:                                   ; preds = %land.end.163
  %106 = load i32, i32* %selection_start.addr, align 4
  %inc = add nsw i32 %106, 1
  store i32 %inc, i32* %selection_start.addr, align 4
  br label %while.cond.140

while.end.165:                                    ; preds = %land.end.163
  %107 = load i32, i32* %selection_start.addr, align 4
  %add166 = add nsw i32 %107, 1
  store i32 %add166, i32* %selection_end.addr, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %while.end.165, %land.lhs.true.132, %lor.lhs.false.124
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %sw.bb.113
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.15, %if.end.168, %if.end.112, %if.end.48
  %108 = load i32, i32* %selection_start.addr, align 4
  %conv169 = sext i32 %108 to i64
  %109 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask170 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %109, i32 0, i32 2
  %110 = load %struct._GString*, %struct._GString** %mask170, align 8
  %len171 = getelementptr inbounds %struct._GString, %struct._GString* %110, i32 0, i32 1
  %111 = load i64, i64* %len171, align 8
  %cmp172 = icmp ult i64 %conv169, %111
  br i1 %cmp172, label %land.lhs.true.174, label %if.end.179

land.lhs.true.174:                                ; preds = %sw.epilog
  %112 = load i32, i32* %selection_start.addr, align 4
  %113 = load i32, i32* %selection_end.addr, align 4
  %cmp175 = icmp eq i32 %112, %113
  br i1 %cmp175, label %if.then.177, label %if.end.179

if.then.177:                                      ; preds = %land.lhs.true.174
  %114 = load i32, i32* %selection_start.addr, align 4
  %add178 = add nsw i32 %114, 1
  store i32 %add178, i32* %selection_end.addr, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.177, %land.lhs.true.174, %sw.epilog
  %115 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %116 = bitcast %struct._GimpTagEntry* %115 to %struct._GTypeInstance*
  %call = call i64 @gtk_editable_get_type() #8
  %call180 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call)
  %117 = bitcast %struct._GTypeInstance* %call180 to %struct._GtkEditable*
  %call181 = call i32 @gtk_editable_get_selection_bounds(%struct._GtkEditable* %117, i32* %prev_selection_start, i32* %prev_selection_end)
  %118 = load i32, i32* %selection_start.addr, align 4
  %idxprom182 = sext i32 %118 to i64
  %119 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask183 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %119, i32 0, i32 2
  %120 = load %struct._GString*, %struct._GString** %mask183, align 8
  %str184 = getelementptr inbounds %struct._GString, %struct._GString* %120, i32 0, i32 0
  %121 = load i8*, i8** %str184, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %121, i64 %idxprom182
  %122 = load i8, i8* %arrayidx185, align 1
  %conv186 = sext i8 %122 to i32
  %cmp187 = icmp eq i32 %conv186, 116
  br i1 %cmp187, label %if.then.189, label %if.end.206

if.then.189:                                      ; preds = %if.end.179
  br label %while.cond.190

while.cond.190:                                   ; preds = %while.body.203, %if.then.189
  %123 = load i32, i32* %selection_start.addr, align 4
  %cmp191 = icmp sgt i32 %123, 0
  br i1 %cmp191, label %land.rhs.193, label %land.end.202

land.rhs.193:                                     ; preds = %while.cond.190
  %124 = load i32, i32* %selection_start.addr, align 4
  %sub194 = sub nsw i32 %124, 1
  %idxprom195 = sext i32 %sub194 to i64
  %125 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask196 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %125, i32 0, i32 2
  %126 = load %struct._GString*, %struct._GString** %mask196, align 8
  %str197 = getelementptr inbounds %struct._GString, %struct._GString* %126, i32 0, i32 0
  %127 = load i8*, i8** %str197, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %127, i64 %idxprom195
  %128 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %128 to i32
  %cmp200 = icmp eq i32 %conv199, 116
  br label %land.end.202

land.end.202:                                     ; preds = %land.rhs.193, %while.cond.190
  %129 = phi i1 [ false, %while.cond.190 ], [ %cmp200, %land.rhs.193 ]
  br i1 %129, label %while.body.203, label %while.end.205

while.body.203:                                   ; preds = %land.end.202
  %130 = load i32, i32* %selection_start.addr, align 4
  %dec204 = add nsw i32 %130, -1
  store i32 %dec204, i32* %selection_start.addr, align 4
  br label %while.cond.190

while.end.205:                                    ; preds = %land.end.202
  br label %if.end.206

if.end.206:                                       ; preds = %while.end.205, %if.end.179
  %131 = load i32, i32* %selection_end.addr, align 4
  %132 = load i32, i32* %selection_start.addr, align 4
  %cmp207 = icmp sgt i32 %131, %132
  br i1 %cmp207, label %land.lhs.true.209, label %if.end.237

land.lhs.true.209:                                ; preds = %if.end.206
  %133 = load i32, i32* %selection_end.addr, align 4
  %sub210 = sub nsw i32 %133, 1
  %idxprom211 = sext i32 %sub210 to i64
  %134 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask212 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %134, i32 0, i32 2
  %135 = load %struct._GString*, %struct._GString** %mask212, align 8
  %str213 = getelementptr inbounds %struct._GString, %struct._GString* %135, i32 0, i32 0
  %136 = load i8*, i8** %str213, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %136, i64 %idxprom211
  %137 = load i8, i8* %arrayidx214, align 1
  %conv215 = sext i8 %137 to i32
  %cmp216 = icmp eq i32 %conv215, 116
  br i1 %cmp216, label %if.then.218, label %if.end.237

if.then.218:                                      ; preds = %land.lhs.true.209
  br label %while.cond.219

while.cond.219:                                   ; preds = %while.body.234, %if.then.218
  %138 = load i32, i32* %selection_end.addr, align 4
  %conv220 = sext i32 %138 to i64
  %139 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask221 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %139, i32 0, i32 2
  %140 = load %struct._GString*, %struct._GString** %mask221, align 8
  %len222 = getelementptr inbounds %struct._GString, %struct._GString* %140, i32 0, i32 1
  %141 = load i64, i64* %len222, align 8
  %cmp223 = icmp ule i64 %conv220, %141
  br i1 %cmp223, label %land.rhs.225, label %land.end.233

land.rhs.225:                                     ; preds = %while.cond.219
  %142 = load i32, i32* %selection_end.addr, align 4
  %idxprom226 = sext i32 %142 to i64
  %143 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask227 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %143, i32 0, i32 2
  %144 = load %struct._GString*, %struct._GString** %mask227, align 8
  %str228 = getelementptr inbounds %struct._GString, %struct._GString* %144, i32 0, i32 0
  %145 = load i8*, i8** %str228, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %145, i64 %idxprom226
  %146 = load i8, i8* %arrayidx229, align 1
  %conv230 = sext i8 %146 to i32
  %cmp231 = icmp eq i32 %conv230, 116
  br label %land.end.233

land.end.233:                                     ; preds = %land.rhs.225, %while.cond.219
  %147 = phi i1 [ false, %while.cond.219 ], [ %cmp231, %land.rhs.225 ]
  br i1 %147, label %while.body.234, label %while.end.236

while.body.234:                                   ; preds = %land.end.233
  %148 = load i32, i32* %selection_end.addr, align 4
  %inc235 = add nsw i32 %148, 1
  store i32 %inc235, i32* %selection_end.addr, align 4
  br label %while.cond.219

while.end.236:                                    ; preds = %land.end.233
  br label %if.end.237

if.end.237:                                       ; preds = %while.end.236, %land.lhs.true.209, %if.end.206
  %149 = load i32, i32* %search_dir.addr, align 4
  %cmp238 = icmp eq i32 %149, 0
  br i1 %cmp238, label %land.lhs.true.240, label %if.end.255

land.lhs.true.240:                                ; preds = %if.end.237
  %150 = load i32, i32* %selection_end.addr, align 4
  %151 = load i32, i32* %selection_start.addr, align 4
  %sub241 = sub nsw i32 %150, %151
  %cmp242 = icmp eq i32 %sub241, 1
  br i1 %cmp242, label %land.lhs.true.244, label %if.end.255

land.lhs.true.244:                                ; preds = %land.lhs.true.240
  %152 = load i32, i32* %selection_start.addr, align 4
  %idxprom245 = sext i32 %152 to i64
  %153 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask246 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %153, i32 0, i32 2
  %154 = load %struct._GString*, %struct._GString** %mask246, align 8
  %str247 = getelementptr inbounds %struct._GString, %struct._GString* %154, i32 0, i32 0
  %155 = load i8*, i8** %str247, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %155, i64 %idxprom245
  %156 = load i8, i8* %arrayidx248, align 1
  %conv249 = sext i8 %156 to i32
  %cmp250 = icmp eq i32 %conv249, 119
  br i1 %cmp250, label %if.then.252, label %if.end.255

if.then.252:                                      ; preds = %land.lhs.true.244
  %157 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %158 = bitcast %struct._GimpTagEntry* %157 to %struct._GTypeInstance*
  %call253 = call i64 @gtk_editable_get_type() #8
  %call254 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call253)
  %159 = bitcast %struct._GTypeInstance* %call254 to %struct._GtkEditable*
  %160 = load i32, i32* %selection_end.addr, align 4
  call void @gtk_editable_set_position(%struct._GtkEditable* %159, i32 %160)
  store i32 1, i32* %retval
  br label %return

if.end.255:                                       ; preds = %land.lhs.true.244, %land.lhs.true.240, %if.end.237
  %161 = load i32, i32* %selection_start.addr, align 4
  %162 = load i32, i32* %prev_selection_start, align 4
  %cmp256 = icmp ne i32 %161, %162
  br i1 %cmp256, label %land.lhs.true.261, label %lor.lhs.false.258

lor.lhs.false.258:                                ; preds = %if.end.255
  %163 = load i32, i32* %selection_end.addr, align 4
  %164 = load i32, i32* %prev_selection_end, align 4
  %cmp259 = icmp ne i32 %163, %164
  br i1 %cmp259, label %land.lhs.true.261, label %if.else.281

land.lhs.true.261:                                ; preds = %lor.lhs.false.258, %if.end.255
  %165 = load i32, i32* %selection_start.addr, align 4
  %idxprom262 = sext i32 %165 to i64
  %166 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask263 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %166, i32 0, i32 2
  %167 = load %struct._GString*, %struct._GString** %mask263, align 8
  %str264 = getelementptr inbounds %struct._GString, %struct._GString* %167, i32 0, i32 0
  %168 = load i8*, i8** %str264, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %168, i64 %idxprom262
  %169 = load i8, i8* %arrayidx265, align 1
  %conv266 = sext i8 %169 to i32
  %cmp267 = icmp eq i32 %conv266, 116
  br i1 %cmp267, label %land.lhs.true.269, label %if.else.281

land.lhs.true.269:                                ; preds = %land.lhs.true.261
  %170 = load i32, i32* %selection_start.addr, align 4
  %171 = load i32, i32* %selection_end.addr, align 4
  %cmp270 = icmp slt i32 %170, %171
  br i1 %cmp270, label %if.then.272, label %if.else.281

if.then.272:                                      ; preds = %land.lhs.true.269
  %172 = load i32, i32* %search_dir.addr, align 4
  %cmp273 = icmp eq i32 %172, 1
  br i1 %cmp273, label %if.then.275, label %if.else

if.then.275:                                      ; preds = %if.then.272
  %173 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %174 = bitcast %struct._GimpTagEntry* %173 to %struct._GTypeInstance*
  %call276 = call i64 @gtk_editable_get_type() #8
  %call277 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %174, i64 %call276)
  %175 = bitcast %struct._GTypeInstance* %call277 to %struct._GtkEditable*
  %176 = load i32, i32* %selection_end.addr, align 4
  %177 = load i32, i32* %selection_start.addr, align 4
  call void @gtk_editable_select_region(%struct._GtkEditable* %175, i32 %176, i32 %177)
  br label %if.end.280

if.else:                                          ; preds = %if.then.272
  %178 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %179 = bitcast %struct._GimpTagEntry* %178 to %struct._GTypeInstance*
  %call278 = call i64 @gtk_editable_get_type() #8
  %call279 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %179, i64 %call278)
  %180 = bitcast %struct._GTypeInstance* %call279 to %struct._GtkEditable*
  %181 = load i32, i32* %selection_start.addr, align 4
  %182 = load i32, i32* %selection_end.addr, align 4
  call void @gtk_editable_select_region(%struct._GtkEditable* %180, i32 %181, i32 %182)
  br label %if.end.280

if.end.280:                                       ; preds = %if.else, %if.then.275
  store i32 1, i32* %retval
  br label %return

if.else.281:                                      ; preds = %land.lhs.true.269, %land.lhs.true.261, %lor.lhs.false.258
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.281, %if.end.280, %if.then.252, %if.then.14, %if.then
  %183 = load i32, i32* %retval
  ret i32 %183
}

declare void @gtk_editable_select_region(%struct._GtkEditable*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_activate(%struct._GtkEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GtkEntry*, align 8
  %tag_entry = alloca %struct._GimpTagEntry*, align 8
  %selection_start = alloca i32, align 4
  %selection_end = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  store %struct._GtkEntry* %entry1, %struct._GtkEntry** %entry.addr, align 8
  %0 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  %1 = bitcast %struct._GtkEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_entry_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTagEntry*
  store %struct._GimpTagEntry* %2, %struct._GimpTagEntry** %tag_entry, align 8
  %3 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  call void @gimp_tag_entry_toggle_desc(%struct._GimpTagEntry* %3, i32 0)
  %4 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  %5 = bitcast %struct._GtkEntry* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_editable_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkEditable*
  %call5 = call i32 @gtk_editable_get_selection_bounds(%struct._GtkEditable* %6, i32* %selection_start, i32* %selection_end)
  %7 = load i32, i32* %selection_start, align 4
  %8 = load i32, i32* %selection_end, align 4
  %cmp = icmp ne i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  %10 = bitcast %struct._GtkEntry* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_editable_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkEditable*
  %12 = load i32, i32* %selection_end, align 4
  %13 = load i32, i32* %selection_end, align 4
  call void @gtk_editable_select_region(%struct._GtkEditable* %11, i32 %12, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  %selected_items = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %14, i32 0, i32 3
  %15 = load %struct._GList*, %struct._GList** %selected_items, align 8
  store %struct._GList* %15, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %16, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  %container = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %17, i32 0, i32 1
  %18 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container, align 8
  %19 = bitcast %struct._GimpTaggedContainer* %18 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_container_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call8)
  %20 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpContainer*
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8
  %23 = bitcast i8* %22 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call10)
  %24 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  %call12 = call i32 @gimp_container_have(%struct._GimpContainer* %20, %struct._GimpObject* %24)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  br label %for.end

if.end.15:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %25, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %27, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.14, %for.cond
  %28 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  %mode = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %28, i32 0, i32 10
  %29 = load i32, i32* %mode, align 4
  %cmp17 = icmp eq i32 %29, 1
  br i1 %cmp17, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %for.end
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool18 = icmp ne %struct._GList* %30, null
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %land.lhs.true
  %31 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  %32 = bitcast %struct._GtkEntry* %31 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_tag_entry_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call20)
  %33 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpTagEntry*
  call void @gimp_tag_entry_assign_tags(%struct._GimpTagEntry* %33)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %land.lhs.true, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_changed(%struct._GtkEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GtkEntry*, align 8
  %tag_entry = alloca %struct._GimpTagEntry*, align 8
  %text = alloca i8*, align 8
  store %struct._GtkEntry* %entry1, %struct._GtkEntry** %entry.addr, align 8
  %0 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  %1 = bitcast %struct._GtkEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_entry_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTagEntry*
  store %struct._GimpTagEntry* %2, %struct._GimpTagEntry** %tag_entry, align 8
  %3 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %3)
  %call4 = call noalias i8* @g_strdup(i8* %call3)
  store i8* %call4, i8** %text, align 8
  %4 = load i8*, i8** %text, align 8
  %call5 = call i8* @g_strchug(i8* %4)
  %call6 = call i8* @g_strchomp(i8* %call5)
  store i8* %call6, i8** %text, align 8
  %5 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  %6 = bitcast %struct._GtkEntry* %5 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call7)
  %7 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  %call9 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %7)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %8 = load i8*, i8** %text, align 8
  %call10 = call i64 @strlen(i8* %8) #9
  %cmp = icmp eq i64 %call10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  call void @gimp_tag_entry_toggle_desc(%struct._GimpTagEntry* %9, i32 1)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  call void @gimp_tag_entry_toggle_desc(%struct._GimpTagEntry* %10, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i8*, i8** %text, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  %mode = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %12, i32 0, i32 10
  %13 = load i32, i32* %mode, align 4
  %cmp11 = icmp eq i32 %13, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.19

land.lhs.true.12:                                 ; preds = %if.end
  %14 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  %suppress_tag_query = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %14, i32 0, i32 9
  %15 = load i32, i32* %suppress_tag_query, align 4
  %tobool13 = icmp ne i32 %15, 0
  br i1 %tobool13, label %if.end.19, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %land.lhs.true.12
  %16 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  %tag_query_idle_id = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %16, i32 0, i32 13
  %17 = load i32, i32* %tag_query_idle_id, align 4
  %tobool15 = icmp ne i32 %17, 0
  br i1 %tobool15, label %if.end.19, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true.14
  %18 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  %19 = bitcast %struct._GtkEntry* %18 to i8*
  %call17 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GimpTagEntry*)* @gimp_tag_entry_query_tag to i32 (i8*)*), i8* %19)
  %20 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  %tag_query_idle_id18 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %20, i32 0, i32 13
  store i32 %call17, i32* %tag_query_idle_id18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %land.lhs.true.14, %land.lhs.true.12, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_insert_text(%struct._GtkEditable* %editable, i8* %new_text, i32 %text_length, i32* %position) #3 {
entry:
  %editable.addr = alloca %struct._GtkEditable*, align 8
  %new_text.addr = alloca i8*, align 8
  %text_length.addr = alloca i32, align 4
  %position.addr = alloca i32*, align 8
  %entry1 = alloca %struct._GimpTagEntry*, align 8
  %is_tag = alloca [2 x i32], align 4
  %i = alloca i32, align 4
  %insert_pos = alloca i32, align 4
  %num_chars = alloca i64, align 8
  %c = alloca i32, align 4
  store %struct._GtkEditable* %editable, %struct._GtkEditable** %editable.addr, align 8
  store i8* %new_text, i8** %new_text.addr, align 8
  store i32 %text_length, i32* %text_length.addr, align 4
  store i32* %position, i32** %position.addr, align 8
  %0 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %1 = bitcast %struct._GtkEditable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_entry_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTagEntry*
  store %struct._GimpTagEntry* %2, %struct._GimpTagEntry** %entry1, align 8
  %3 = load i32*, i32** %position.addr, align 8
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %insert_pos, align 4
  %5 = load i8*, i8** %new_text.addr, align 8
  %6 = load i32, i32* %text_length.addr, align 4
  %conv = sext i32 %6 to i64
  %call3 = call i64 @g_utf8_strlen(i8* %5, i64 %conv) #9
  store i64 %call3, i64* %num_chars, align 8
  %7 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %internal_operation = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %7, i32 0, i32 7
  %8 = load i32, i32* %internal_operation, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %suppress_tag_query = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %9, i32 0, i32 9
  %10 = load i32, i32* %suppress_tag_query, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %suppress_tag_query, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %is_tag, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %11 = load i32*, i32** %position.addr, align 8
  %12 = load i32, i32* %11, align 4
  %cmp = icmp sgt i32 %12, 0
  br i1 %cmp, label %if.then.5, label %if.end.19

if.then.5:                                        ; preds = %if.end
  %13 = load i32*, i32** %position.addr, align 8
  %14 = load i32, i32* %13, align 4
  %sub = sub nsw i32 %14, 1
  %idxprom = sext i32 %sub to i64
  %15 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %15, i32 0, i32 2
  %16 = load %struct._GString*, %struct._GString** %mask, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %16, i32 0, i32 0
  %17 = load i8*, i8** %str, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %18 to i32
  %cmp8 = icmp eq i32 %conv7, 116
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.5
  %19 = load i32*, i32** %position.addr, align 8
  %20 = load i32, i32* %19, align 4
  %sub10 = sub nsw i32 %20, 1
  %idxprom11 = sext i32 %sub10 to i64
  %21 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask12 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %21, i32 0, i32 2
  %22 = load %struct._GString*, %struct._GString** %mask12, align 8
  %str13 = getelementptr inbounds %struct._GString, %struct._GString* %22, i32 0, i32 0
  %23 = load i8*, i8** %str13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %23, i64 %idxprom11
  %24 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %24 to i32
  %cmp16 = icmp eq i32 %conv15, 115
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.5
  %25 = phi i1 [ true, %if.then.5 ], [ %cmp16, %lor.rhs ]
  %lor.ext = zext i1 %25 to i32
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %is_tag, i32 0, i64 0
  store i32 %lor.ext, i32* %arrayidx18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %lor.end, %if.end
  %26 = load i32*, i32** %position.addr, align 8
  %27 = load i32, i32* %26, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask21 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %28, i32 0, i32 2
  %29 = load %struct._GString*, %struct._GString** %mask21, align 8
  %str22 = getelementptr inbounds %struct._GString, %struct._GString* %29, i32 0, i32 0
  %30 = load i8*, i8** %str22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %30, i64 %idxprom20
  %31 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %31 to i32
  %cmp25 = icmp eq i32 %conv24, 116
  br i1 %cmp25, label %lor.end.35, label %lor.rhs.27

lor.rhs.27:                                       ; preds = %if.end.19
  %32 = load i32*, i32** %position.addr, align 8
  %33 = load i32, i32* %32, align 4
  %idxprom28 = sext i32 %33 to i64
  %34 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask29 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %34, i32 0, i32 2
  %35 = load %struct._GString*, %struct._GString** %mask29, align 8
  %str30 = getelementptr inbounds %struct._GString, %struct._GString* %35, i32 0, i32 0
  %36 = load i8*, i8** %str30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %36, i64 %idxprom28
  %37 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %37 to i32
  %cmp33 = icmp eq i32 %conv32, 115
  br label %lor.end.35

lor.end.35:                                       ; preds = %lor.rhs.27, %if.end.19
  %38 = phi i1 [ true, %if.end.19 ], [ %cmp33, %lor.rhs.27 ]
  %lor.ext36 = zext i1 %38 to i32
  %arrayidx37 = getelementptr inbounds [2 x i32], [2 x i32]* %is_tag, i32 0, i64 1
  store i32 %lor.ext36, i32* %arrayidx37, align 4
  %arrayidx38 = getelementptr inbounds [2 x i32], [2 x i32]* %is_tag, i32 0, i64 0
  %39 = load i32, i32* %arrayidx38, align 4
  %tobool39 = icmp ne i32 %39, 0
  br i1 %tobool39, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.end.35
  %arrayidx40 = getelementptr inbounds [2 x i32], [2 x i32]* %is_tag, i32 0, i64 1
  %40 = load i32, i32* %arrayidx40, align 4
  %tobool41 = icmp ne i32 %40, 0
  br i1 %tobool41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %land.lhs.true
  %41 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %42 = bitcast %struct._GtkEditable* %41 to i8*
  call void @g_signal_stop_emission_by_name(i8* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.119

if.else:                                          ; preds = %land.lhs.true, %lor.end.35
  %43 = load i64, i64* %num_chars, align 8
  %cmp43 = icmp sgt i64 %43, 0
  br i1 %cmp43, label %if.then.45, label %if.end.118

if.then.45:                                       ; preds = %if.else
  %44 = load i8*, i8** %new_text.addr, align 8
  %call46 = call i32 @g_utf8_get_char(i8* %44) #9
  store i32 %call46, i32* %c, align 4
  %45 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %internal_operation47 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %45, i32 0, i32 7
  %46 = load i32, i32* %internal_operation47, align 4
  %tobool48 = icmp ne i32 %46, 0
  br i1 %tobool48, label %if.else.73, label %land.lhs.true.49

land.lhs.true.49:                                 ; preds = %if.then.45
  %47 = load i32*, i32** %position.addr, align 8
  %48 = load i32, i32* %47, align 4
  %cmp50 = icmp sgt i32 %48, 0
  br i1 %cmp50, label %land.lhs.true.52, label %if.else.73

land.lhs.true.52:                                 ; preds = %land.lhs.true.49
  %49 = load i32*, i32** %position.addr, align 8
  %50 = load i32, i32* %49, align 4
  %sub53 = sub nsw i32 %50, 1
  %idxprom54 = sext i32 %sub53 to i64
  %51 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask55 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %51, i32 0, i32 2
  %52 = load %struct._GString*, %struct._GString** %mask55, align 8
  %str56 = getelementptr inbounds %struct._GString, %struct._GString* %52, i32 0, i32 0
  %53 = load i8*, i8** %str56, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %53, i64 %idxprom54
  %54 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %54 to i32
  %cmp59 = icmp eq i32 %conv58, 115
  br i1 %cmp59, label %land.lhs.true.61, label %if.else.73

land.lhs.true.61:                                 ; preds = %land.lhs.true.52
  %55 = load i32, i32* %c, align 4
  %call62 = call i32 @g_unichar_isspace(i32 %55) #8
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.else.73, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.61
  %56 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %suppress_mask_update = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %56, i32 0, i32 8
  %57 = load i32, i32* %suppress_mask_update, align 4
  %tobool65 = icmp ne i32 %57, 0
  br i1 %tobool65, label %if.end.70, label %if.then.66

if.then.66:                                       ; preds = %if.then.64
  %58 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask67 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %58, i32 0, i32 2
  %59 = load %struct._GString*, %struct._GString** %mask67, align 8
  %60 = load i32*, i32** %position.addr, align 8
  %61 = load i32, i32* %60, align 4
  %conv68 = sext i32 %61 to i64
  %call69 = call %struct._GString* @g_string_insert_c(%struct._GString* %59, i64 %conv68, i8 signext 117)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.66, %if.then.64
  %62 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %63 = bitcast %struct._GtkEditable* %62 to i8*
  %call71 = call i32 @g_signal_handlers_block_matched(i8* %63, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkEditable*, i8*, i32, i32*)* @gimp_tag_entry_insert_text to i8*), i8* null)
  %64 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %65 = load i32*, i32** %position.addr, align 8
  call void @gtk_editable_insert_text(%struct._GtkEditable* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i32 1, i32* %65)
  %66 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %67 = load i8*, i8** %new_text.addr, align 8
  %68 = load i32, i32* %text_length.addr, align 4
  %69 = load i32*, i32** %position.addr, align 8
  call void @gtk_editable_insert_text(%struct._GtkEditable* %66, i8* %67, i32 %68, i32* %69)
  %70 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %71 = bitcast %struct._GtkEditable* %70 to i8*
  %call72 = call i32 @g_signal_handlers_unblock_matched(i8* %71, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkEditable*, i8*, i32, i32*)* @gimp_tag_entry_insert_text to i8*), i8* null)
  %72 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %73 = bitcast %struct._GtkEditable* %72 to i8*
  call void @g_signal_stop_emission_by_name(i8* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.106

if.else.73:                                       ; preds = %land.lhs.true.61, %land.lhs.true.52, %land.lhs.true.49, %if.then.45
  %74 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %internal_operation74 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %74, i32 0, i32 7
  %75 = load i32, i32* %internal_operation74, align 4
  %tobool75 = icmp ne i32 %75, 0
  br i1 %tobool75, label %if.end.105, label %land.lhs.true.76

land.lhs.true.76:                                 ; preds = %if.else.73
  %76 = load i64, i64* %num_chars, align 8
  %cmp77 = icmp eq i64 %76, 1
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.105

land.lhs.true.79:                                 ; preds = %land.lhs.true.76
  %77 = load i32*, i32** %position.addr, align 8
  %78 = load i32, i32* %77, align 4
  %conv80 = sext i32 %78 to i64
  %79 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask81 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %79, i32 0, i32 2
  %80 = load %struct._GString*, %struct._GString** %mask81, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %80, i32 0, i32 1
  %81 = load i64, i64* %len, align 8
  %cmp82 = icmp ult i64 %conv80, %81
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.105

land.lhs.true.84:                                 ; preds = %land.lhs.true.79
  %82 = load i32*, i32** %position.addr, align 8
  %83 = load i32, i32* %82, align 4
  %idxprom85 = sext i32 %83 to i64
  %84 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask86 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %84, i32 0, i32 2
  %85 = load %struct._GString*, %struct._GString** %mask86, align 8
  %str87 = getelementptr inbounds %struct._GString, %struct._GString* %85, i32 0, i32 0
  %86 = load i8*, i8** %str87, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %86, i64 %idxprom85
  %87 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %87 to i32
  %cmp90 = icmp eq i32 %conv89, 116
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.105

land.lhs.true.92:                                 ; preds = %land.lhs.true.84
  %88 = load i32, i32* %c, align 4
  %call93 = call i32 @g_unichar_isspace(i32 %88) #8
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end.105, label %if.then.95

if.then.95:                                       ; preds = %land.lhs.true.92
  %89 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %suppress_mask_update96 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %89, i32 0, i32 8
  %90 = load i32, i32* %suppress_mask_update96, align 4
  %tobool97 = icmp ne i32 %90, 0
  br i1 %tobool97, label %if.end.102, label %if.then.98

if.then.98:                                       ; preds = %if.then.95
  %91 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask99 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %91, i32 0, i32 2
  %92 = load %struct._GString*, %struct._GString** %mask99, align 8
  %93 = load i32*, i32** %position.addr, align 8
  %94 = load i32, i32* %93, align 4
  %conv100 = sext i32 %94 to i64
  %call101 = call %struct._GString* @g_string_insert_c(%struct._GString* %92, i64 %conv100, i8 signext 117)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.98, %if.then.95
  %95 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %96 = bitcast %struct._GtkEditable* %95 to i8*
  %call103 = call i32 @g_signal_handlers_block_matched(i8* %96, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkEditable*, i8*, i32, i32*)* @gimp_tag_entry_insert_text to i8*), i8* null)
  %97 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %98 = load i8*, i8** %new_text.addr, align 8
  %99 = load i32, i32* %text_length.addr, align 4
  %100 = load i32*, i32** %position.addr, align 8
  call void @gtk_editable_insert_text(%struct._GtkEditable* %97, i8* %98, i32 %99, i32* %100)
  %101 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %102 = load i32*, i32** %position.addr, align 8
  call void @gtk_editable_insert_text(%struct._GtkEditable* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i32 1, i32* %102)
  %103 = load i32*, i32** %position.addr, align 8
  %104 = load i32, i32* %103, align 4
  %dec = add nsw i32 %104, -1
  store i32 %dec, i32* %103, align 4
  %105 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %106 = bitcast %struct._GtkEditable* %105 to i8*
  %call104 = call i32 @g_signal_handlers_unblock_matched(i8* %106, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkEditable*, i8*, i32, i32*)* @gimp_tag_entry_insert_text to i8*), i8* null)
  %107 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %108 = bitcast %struct._GtkEditable* %107 to i8*
  call void @g_signal_stop_emission_by_name(i8* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.102, %land.lhs.true.92, %land.lhs.true.84, %land.lhs.true.79, %land.lhs.true.76, %if.else.73
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.70
  %109 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %suppress_mask_update107 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %109, i32 0, i32 8
  %110 = load i32, i32* %suppress_mask_update107, align 4
  %tobool108 = icmp ne i32 %110, 0
  br i1 %tobool108, label %if.end.117, label %if.then.109

if.then.109:                                      ; preds = %if.end.106
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.109
  %111 = load i32, i32* %i, align 4
  %conv110 = sext i32 %111 to i64
  %112 = load i64, i64* %num_chars, align 8
  %cmp111 = icmp slt i64 %conv110, %112
  br i1 %cmp111, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %113 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask113 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %113, i32 0, i32 2
  %114 = load %struct._GString*, %struct._GString** %mask113, align 8
  %115 = load i32, i32* %insert_pos, align 4
  %116 = load i32, i32* %i, align 4
  %add = add nsw i32 %115, %116
  %conv114 = sext i32 %add to i64
  %call115 = call %struct._GString* @g_string_insert_c(%struct._GString* %114, i64 %conv114, i8 signext 117)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %117 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %117, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.117

if.end.117:                                       ; preds = %for.end, %if.end.106
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.else
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.42
  %118 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %internal_operation120 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %118, i32 0, i32 7
  %119 = load i32, i32* %internal_operation120, align 4
  %tobool121 = icmp ne i32 %119, 0
  br i1 %tobool121, label %if.end.124, label %if.then.122

if.then.122:                                      ; preds = %if.end.119
  %120 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %tab_completion_index = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %120, i32 0, i32 6
  store i32 -1, i32* %tab_completion_index, align 4
  %121 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %122 = bitcast %struct._GtkEditable* %121 to i8*
  %call123 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GimpTagEntry*)* @gimp_tag_entry_auto_complete to i32 (i8*)*), i8* %122)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.end.119
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_delete_text(%struct._GtkEditable* %editable, i32 %start_pos, i32 %end_pos) #3 {
entry:
  %editable.addr = alloca %struct._GtkEditable*, align 8
  %start_pos.addr = alloca i32, align 4
  %end_pos.addr = alloca i32, align 4
  %entry1 = alloca %struct._GimpTagEntry*, align 8
  store %struct._GtkEditable* %editable, %struct._GtkEditable** %editable.addr, align 8
  store i32 %start_pos, i32* %start_pos.addr, align 4
  store i32 %end_pos, i32* %end_pos.addr, align 4
  %0 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %1 = bitcast %struct._GtkEditable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_entry_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTagEntry*
  store %struct._GimpTagEntry* %2, %struct._GimpTagEntry** %entry1, align 8
  %3 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %internal_operation = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %3, i32 0, i32 7
  %4 = load i32, i32* %internal_operation, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %6 = bitcast %struct._GtkEditable* %5 to i8*
  %call3 = call i32 @g_signal_handlers_block_matched(i8* %6, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkEditable*, i32, i32)* @gimp_tag_entry_delete_text to i8*), i8* null)
  %7 = load i32, i32* %end_pos.addr, align 4
  %8 = load i32, i32* %start_pos.addr, align 4
  %cmp = icmp sgt i32 %7, %8
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %9 = load i32, i32* %end_pos.addr, align 4
  %sub = sub nsw i32 %9, 1
  %idxprom = sext i32 %sub to i64
  %10 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %10, i32 0, i32 2
  %11 = load %struct._GString*, %struct._GString** %mask, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %cmp4 = icmp eq i32 %conv, 116
  br i1 %cmp4, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load i32, i32* %end_pos.addr, align 4
  %sub6 = sub nsw i32 %14, 1
  %idxprom7 = sext i32 %sub6 to i64
  %15 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask8 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %15, i32 0, i32 2
  %16 = load %struct._GString*, %struct._GString** %mask8, align 8
  %str9 = getelementptr inbounds %struct._GString, %struct._GString* %16, i32 0, i32 0
  %17 = load i8*, i8** %str9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 %idxprom7
  %18 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %18 to i32
  %cmp12 = icmp eq i32 %conv11, 115
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %lor.lhs.false, %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.14
  %19 = load i32, i32* %end_pos.addr, align 4
  %conv15 = sext i32 %19 to i64
  %20 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask16 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %20, i32 0, i32 2
  %21 = load %struct._GString*, %struct._GString** %mask16, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %21, i32 0, i32 1
  %22 = load i64, i64* %len, align 8
  %cmp17 = icmp ule i64 %conv15, %22
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %23 = load i32, i32* %end_pos.addr, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask20 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %24, i32 0, i32 2
  %25 = load %struct._GString*, %struct._GString** %mask20, align 8
  %str21 = getelementptr inbounds %struct._GString, %struct._GString* %25, i32 0, i32 0
  %26 = load i8*, i8** %str21, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %26, i64 %idxprom19
  %27 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %27 to i32
  %cmp24 = icmp eq i32 %conv23, 115
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %cmp24, %land.rhs ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %29 = load i32, i32* %end_pos.addr, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %end_pos.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end, %lor.lhs.false, %if.then
  %30 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %31 = load i32, i32* %start_pos.addr, align 4
  %32 = load i32, i32* %end_pos.addr, align 4
  call void @gtk_editable_delete_text(%struct._GtkEditable* %30, i32 %31, i32 %32)
  %33 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %suppress_mask_update = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %33, i32 0, i32 8
  %34 = load i32, i32* %suppress_mask_update, align 4
  %tobool26 = icmp ne i32 %34, 0
  br i1 %tobool26, label %if.end.33, label %if.then.27

if.then.27:                                       ; preds = %if.end
  %35 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask28 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %35, i32 0, i32 2
  %36 = load %struct._GString*, %struct._GString** %mask28, align 8
  %37 = load i32, i32* %start_pos.addr, align 4
  %conv29 = sext i32 %37 to i64
  %38 = load i32, i32* %end_pos.addr, align 4
  %39 = load i32, i32* %start_pos.addr, align 4
  %sub30 = sub nsw i32 %38, %39
  %conv31 = sext i32 %sub30 to i64
  %call32 = call %struct._GString* @g_string_erase(%struct._GString* %36, i64 %conv29, i64 %conv31)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.27, %if.end
  %40 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %41 = bitcast %struct._GtkEditable* %40 to i8*
  %call34 = call i32 @g_signal_handlers_unblock_matched(i8* %41, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkEditable*, i32, i32)* @gimp_tag_entry_delete_text to i8*), i8* null)
  %42 = load %struct._GtkEditable*, %struct._GtkEditable** %editable.addr, align 8
  %43 = bitcast %struct._GtkEditable* %42 to i8*
  call void @g_signal_stop_emission_by_name(i8* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.44

if.else:                                          ; preds = %entry
  %44 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %suppress_mask_update35 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %44, i32 0, i32 8
  %45 = load i32, i32* %suppress_mask_update35, align 4
  %tobool36 = icmp ne i32 %45, 0
  br i1 %tobool36, label %if.end.43, label %if.then.37

if.then.37:                                       ; preds = %if.else
  %46 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %mask38 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %46, i32 0, i32 2
  %47 = load %struct._GString*, %struct._GString** %mask38, align 8
  %48 = load i32, i32* %start_pos.addr, align 4
  %conv39 = sext i32 %48 to i64
  %49 = load i32, i32* %end_pos.addr, align 4
  %50 = load i32, i32* %start_pos.addr, align 4
  %sub40 = sub nsw i32 %49, %50
  %conv41 = sext i32 %sub40 to i64
  %call42 = call %struct._GString* @g_string_erase(%struct._GString* %47, i64 %conv39, i64 %conv41)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.37, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.33
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_entry_key_press(%struct._GtkWidget* %widget, %struct._GdkEventKey* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventKey*, align 8
  %entry1 = alloca %struct._GimpTagEntry*, align 8
  %extend_mask = alloca i32, align 4
  %c = alloca i8, align 1
  %selection_start = alloca i32, align 4
  %selection_end = alloca i32, align 4
  %selection_start39 = alloca i32, align 4
  %selection_end40 = alloca i32, align 4
  %recent_item = alloca i8*, align 8
  %very_recent_item = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventKey* %event, %struct._GdkEventKey** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_entry_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTagEntry*
  store %struct._GimpTagEntry* %2, %struct._GimpTagEntry** %entry1, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call i32 @gtk_widget_get_modifier_mask(%struct._GtkWidget* %3, i32 2)
  store i32 %call3, i32* %extend_mask, align 4
  %4 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %4, i32 0, i32 5
  %5 = load i32, i32* %keyval, align 4
  %call4 = call i32 @gdk_keyval_to_unicode(i32 %5) #8
  %conv = trunc i32 %call4 to i8
  store i8 %conv, i8* %c, align 1
  %6 = load i8, i8* %c, align 1
  %conv5 = zext i8 %6 to i32
  %call6 = call i32 @gimp_tag_is_tag_separator(i32 %conv5)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %8 = bitcast %struct._GimpTagEntry* %7 to i8*
  %call7 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GimpTagEntry*)* @gimp_tag_entry_commit_source_func to i32 (i8*)*), i8* %8)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %keyval8 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %9, i32 0, i32 5
  %10 = load i32, i32* %keyval8, align 4
  switch i32 %10, label %sw.default [
    i32 65289, label %sw.bb
    i32 65417, label %sw.bb
    i32 65056, label %sw.bb
    i32 65293, label %sw.bb.17
    i32 65361, label %sw.bb.18
    i32 65363, label %sw.bb.23
    i32 65288, label %sw.bb.28
    i32 65535, label %sw.bb.38
    i32 65362, label %sw.bb.50
    i32 65364, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %11 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %11, i32 0, i32 4
  %12 = load i32, i32* %state, align 4
  %and = and i32 %12, 4
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %sw.bb
  %13 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %tab_completion_index = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %13, i32 0, i32 6
  %14 = load i32, i32* %tab_completion_index, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %tab_completion_index, align 4
  %15 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %suppress_tag_query = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %15, i32 0, i32 9
  %16 = load i32, i32* %suppress_tag_query, align 4
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, i32* %suppress_tag_query, align 4
  %17 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %18 = bitcast %struct._GimpTagEntry* %17 to i8*
  %call12 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GimpTagEntry*)* @gimp_tag_entry_auto_complete to i32 (i8*)*), i8* %18)
  br label %if.end.16

if.else:                                          ; preds = %sw.bb
  %19 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  call void @gimp_tag_entry_commit_tags(%struct._GimpTagEntry* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %22 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %state13 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %22, i32 0, i32 4
  %23 = load i32, i32* %state13, align 4
  %and14 = and i32 %23, 1
  %tobool15 = icmp ne i32 %and14, 0
  %cond = select i1 %tobool15, i32 1, i32 0
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 %cond)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.10
  store i32 1, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %if.end
  %24 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  call void @gimp_tag_entry_commit_tags(%struct._GimpTagEntry* %24)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  %25 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %26 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %state19 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %26, i32 0, i32 4
  %27 = load i32, i32* %state19, align 4
  %28 = load i32, i32* %extend_mask, align 4
  %and20 = and i32 %27, %28
  %tobool21 = icmp ne i32 %and20, 0
  %cond22 = select i1 %tobool21, i32 1, i32 0
  call void @gimp_tag_entry_previous_tag(%struct._GimpTagEntry* %25, i32 %cond22)
  store i32 1, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %if.end
  %29 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %30 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %state24 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %30, i32 0, i32 4
  %31 = load i32, i32* %state24, align 4
  %32 = load i32, i32* %extend_mask, align 4
  %and25 = and i32 %31, %32
  %tobool26 = icmp ne i32 %and25, 0
  %cond27 = select i1 %tobool26, i32 1, i32 0
  call void @gimp_tag_entry_next_tag(%struct._GimpTagEntry* %29, i32 %cond27)
  store i32 1, i32* %retval
  br label %return

sw.bb.28:                                         ; preds = %if.end
  %33 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %34 = bitcast %struct._GimpTagEntry* %33 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_editable_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call29)
  %35 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkEditable*
  %call31 = call i32 @gtk_editable_get_selection_bounds(%struct._GtkEditable* %35, i32* %selection_start, i32* %selection_end)
  %36 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %37 = load i32, i32* %selection_start, align 4
  %38 = load i32, i32* %selection_end, align 4
  %call32 = call i32 @gimp_tag_entry_select_jellybean(%struct._GimpTagEntry* %36, i32 %37, i32 %38, i32 1)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %sw.bb.28
  store i32 1, i32* %retval
  br label %return

if.else.35:                                       ; preds = %sw.bb.28
  %39 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  call void @gimp_tag_entry_select_for_deletion(%struct._GimpTagEntry* %39, i32 1)
  %40 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %41 = bitcast %struct._GimpTagEntry* %40 to i8*
  %call36 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GimpTagEntry*)* @gimp_tag_entry_strip_extra_whitespace to i32 (i8*)*), i8* %41)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end
  %42 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %43 = bitcast %struct._GimpTagEntry* %42 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_editable_get_type() #8
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call41)
  %44 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkEditable*
  %call43 = call i32 @gtk_editable_get_selection_bounds(%struct._GtkEditable* %44, i32* %selection_start39, i32* %selection_end40)
  %45 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %46 = load i32, i32* %selection_start39, align 4
  %47 = load i32, i32* %selection_end40, align 4
  %call44 = call i32 @gimp_tag_entry_select_jellybean(%struct._GimpTagEntry* %45, i32 %46, i32 %47, i32 2)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %sw.bb.38
  store i32 1, i32* %retval
  br label %return

if.else.47:                                       ; preds = %sw.bb.38
  %48 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  call void @gimp_tag_entry_select_for_deletion(%struct._GimpTagEntry* %48, i32 2)
  %49 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %50 = bitcast %struct._GimpTagEntry* %49 to i8*
  %call48 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GimpTagEntry*)* @gimp_tag_entry_strip_extra_whitespace to i32 (i8*)*), i8* %50)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.47
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end, %if.end
  %51 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %51, i32 0, i32 5
  %52 = load %struct._GList*, %struct._GList** %recent_list, align 8
  %cmp = icmp ne %struct._GList* %52, null
  br i1 %cmp, label %if.then.52, label %if.end.90

if.then.52:                                       ; preds = %sw.bb.50
  %53 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %54 = bitcast %struct._GimpTagEntry* %53 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_entry_get_type() #8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call53)
  %55 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkEntry*
  %call55 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %55)
  %call56 = call noalias i8* @g_strdup(i8* %call55)
  store i8* %call56, i8** %very_recent_item, align 8
  %56 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %57 = load i8*, i8** %very_recent_item, align 8
  %call57 = call i32 @gimp_tag_entry_add_to_recent(%struct._GimpTagEntry* %56, i8* %57, i32 1)
  %58 = load i8*, i8** %very_recent_item, align 8
  call void @g_free(i8* %58)
  %59 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %keyval58 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %59, i32 0, i32 5
  %60 = load i32, i32* %keyval58, align 4
  %cmp59 = icmp eq i32 %60, 65362
  br i1 %cmp59, label %if.then.61, label %if.else.70

if.then.61:                                       ; preds = %if.then.52
  %61 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list62 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %61, i32 0, i32 5
  %62 = load %struct._GList*, %struct._GList** %recent_list62, align 8
  %call63 = call %struct._GList* @g_list_first(%struct._GList* %62)
  %data = getelementptr inbounds %struct._GList, %struct._GList* %call63, i32 0, i32 0
  %63 = load i8*, i8** %data, align 8
  store i8* %63, i8** %recent_item, align 8
  %64 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list64 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %64, i32 0, i32 5
  %65 = load %struct._GList*, %struct._GList** %recent_list64, align 8
  %66 = load i8*, i8** %recent_item, align 8
  %call65 = call %struct._GList* @g_list_remove(%struct._GList* %65, i8* %66)
  %67 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list66 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %67, i32 0, i32 5
  store %struct._GList* %call65, %struct._GList** %recent_list66, align 8
  %68 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list67 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %68, i32 0, i32 5
  %69 = load %struct._GList*, %struct._GList** %recent_list67, align 8
  %70 = load i8*, i8** %recent_item, align 8
  %call68 = call %struct._GList* @g_list_append(%struct._GList* %69, i8* %70)
  %71 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list69 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %71, i32 0, i32 5
  store %struct._GList* %call68, %struct._GList** %recent_list69, align 8
  br label %if.end.80

if.else.70:                                       ; preds = %if.then.52
  %72 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list71 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %72, i32 0, i32 5
  %73 = load %struct._GList*, %struct._GList** %recent_list71, align 8
  %call72 = call %struct._GList* @g_list_last(%struct._GList* %73)
  %data73 = getelementptr inbounds %struct._GList, %struct._GList* %call72, i32 0, i32 0
  %74 = load i8*, i8** %data73, align 8
  store i8* %74, i8** %recent_item, align 8
  %75 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list74 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %75, i32 0, i32 5
  %76 = load %struct._GList*, %struct._GList** %recent_list74, align 8
  %77 = load i8*, i8** %recent_item, align 8
  %call75 = call %struct._GList* @g_list_remove(%struct._GList* %76, i8* %77)
  %78 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list76 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %78, i32 0, i32 5
  store %struct._GList* %call75, %struct._GList** %recent_list76, align 8
  %79 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list77 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %79, i32 0, i32 5
  %80 = load %struct._GList*, %struct._GList** %recent_list77, align 8
  %81 = load i8*, i8** %recent_item, align 8
  %call78 = call %struct._GList* @g_list_prepend(%struct._GList* %80, i8* %81)
  %82 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list79 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %82, i32 0, i32 5
  store %struct._GList* %call78, %struct._GList** %recent_list79, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.70, %if.then.61
  %83 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %recent_list81 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %83, i32 0, i32 5
  %84 = load %struct._GList*, %struct._GList** %recent_list81, align 8
  %call82 = call %struct._GList* @g_list_first(%struct._GList* %84)
  %data83 = getelementptr inbounds %struct._GList, %struct._GList* %call82, i32 0, i32 0
  %85 = load i8*, i8** %data83, align 8
  store i8* %85, i8** %recent_item, align 8
  %86 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %internal_operation = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %86, i32 0, i32 7
  %87 = load i32, i32* %internal_operation, align 4
  %inc84 = add nsw i32 %87, 1
  store i32 %inc84, i32* %internal_operation, align 4
  %88 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %89 = bitcast %struct._GimpTagEntry* %88 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_entry_get_type() #8
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call85)
  %90 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkEntry*
  %91 = load i8*, i8** %recent_item, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %90, i8* %91)
  %92 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %93 = bitcast %struct._GimpTagEntry* %92 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_editable_get_type() #8
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call87)
  %94 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkEditable*
  call void @gtk_editable_set_position(%struct._GtkEditable* %94, i32 -1)
  %95 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry1, align 8
  %internal_operation89 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %95, i32 0, i32 7
  %96 = load i32, i32* %internal_operation89, align 4
  %dec = add nsw i32 %96, -1
  store i32 %dec, i32* %internal_operation89, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.80, %sw.bb.50
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.49, %if.end.37, %sw.bb.17
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.90, %if.then.46, %if.then.34, %sw.bb.23, %sw.bb.18, %if.end.16, %if.then
  %97 = load i32, i32* %retval
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_entry_focus_in(%struct._GtkWidget* %widget, %struct._GdkEventFocus* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventFocus*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventFocus* %event, %struct._GdkEventFocus** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_entry_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTagEntry*
  call void @gimp_tag_entry_toggle_desc(%struct._GimpTagEntry* %2, i32 0)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_entry_focus_out(%struct._GtkWidget* %widget, %struct._GdkEventFocus* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventFocus*, align 8
  %tag_entry = alloca %struct._GimpTagEntry*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventFocus* %event, %struct._GdkEventFocus** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_entry_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTagEntry*
  store %struct._GimpTagEntry* %2, %struct._GimpTagEntry** %tag_entry, align 8
  %3 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  call void @gimp_tag_entry_commit_tags(%struct._GimpTagEntry* %3)
  %4 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  %mode = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %4, i32 0, i32 10
  %5 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tag_entry_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTagEntry*
  call void @gimp_tag_entry_assign_tags(%struct._GimpTagEntry* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_entry_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkEntry*
  %call6 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %12)
  %call7 = call i32 @gimp_tag_entry_add_to_recent(%struct._GimpTagEntry* %9, i8* %call6, i32 1)
  %13 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  call void @gimp_tag_entry_toggle_desc(%struct._GimpTagEntry* %13, i32 1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_entry_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %tag_entry = alloca %struct._GimpTagEntry*, align 8
  %layout = alloca %struct._PangoLayout*, align 8
  %attr_list = alloca %struct._PangoAttrList*, align 8
  %attribute = alloca %struct._PangoAttribute*, align 8
  %layout_width = alloca i32, align 4
  %layout_height = alloca i32, align 4
  %window_width = alloca i32, align 4
  %window_height = alloca i32, align 4
  %offset = alloca i32, align 4
  %display_text = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_entry_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTagEntry*
  store %struct._GimpTagEntry* %2, %struct._GimpTagEntry** %tag_entry, align 8
  %3 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %3, i32 0, i32 1
  %4 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_entry_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkEntry*
  %call4 = call %struct._GdkDrawable* @gtk_entry_get_text_window(%struct._GtkEntry* %7)
  %cmp = icmp ne %struct._GdkDrawable* %4, %call4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_tag_entry_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTagEntry*
  %description_shown = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %10, i32 0, i32 11
  %11 = load i32, i32* %description_shown, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %12 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  %mode = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %12, i32 0, i32 10
  %13 = load i32, i32* %mode, align 4
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0)) #6
  store i8* %call11, i8** %display_text, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end.8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0)) #6
  store i8* %call12, i8** %display_text, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.10
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = load i8*, i8** %display_text, align 8
  %call14 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %14, i8* %15)
  store %struct._PangoLayout* %call14, %struct._PangoLayout** %layout, align 8
  %call15 = call %struct._PangoAttrList* @pango_attr_list_new()
  store %struct._PangoAttrList* %call15, %struct._PangoAttrList** %attr_list, align 8
  %call16 = call %struct._PangoAttribute* @pango_attr_style_new(i32 2)
  store %struct._PangoAttribute* %call16, %struct._PangoAttribute** %attribute, align 8
  %16 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attr_list, align 8
  %17 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attribute, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %16, %struct._PangoAttribute* %17)
  %18 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %19 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attr_list, align 8
  call void @pango_layout_set_attributes(%struct._PangoLayout* %18, %struct._PangoAttrList* %19)
  %20 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attr_list, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %20)
  %21 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window17 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %21, i32 0, i32 1
  %22 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window17, align 8
  %call18 = call i32 @gdk_window_get_width(%struct._GdkDrawable* %22)
  store i32 %call18, i32* %window_width, align 4
  %23 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window19 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %23, i32 0, i32 1
  %24 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window19, align 8
  %call20 = call i32 @gdk_window_get_height(%struct._GdkDrawable* %24)
  store i32 %call20, i32* %window_height, align 4
  %25 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_layout_get_size(%struct._PangoLayout* %25, i32* %layout_width, i32* %layout_height)
  %26 = load i32, i32* %window_height, align 4
  %27 = load i32, i32* %layout_height, align 4
  %add = add nsw i32 %27, 512
  %shr = ashr i32 %add, 10
  %sub = sub nsw i32 %26, %shr
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %offset, align 4
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call21 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %28)
  %29 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window22 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %29, i32 0, i32 1
  %30 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window22, align 8
  %31 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %31, i32 0, i32 3
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call23 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %33)
  %cmp24 = icmp eq i32 %call23, 2
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %34 = load i32, i32* %window_width, align 4
  %35 = load i32, i32* %layout_width, align 4
  %add25 = add nsw i32 %35, 512
  %shr26 = ashr i32 %add25, 10
  %sub27 = sub nsw i32 %34, %shr26
  %36 = load i32, i32* %offset, align 4
  %sub28 = sub nsw i32 %sub27, %36
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  %37 = load i32, i32* %offset, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub28, %cond.true ], [ %37, %cond.false ]
  %38 = load i32, i32* %offset, align 4
  %39 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @gtk_paint_layout(%struct._GtkStyle* %call21, %struct._GdkDrawable* %30, i32 4, i32 1, %struct._GdkRectangle* %area, %struct._GtkWidget* %32, i8* null, i32 %cond, i32 %38, %struct._PangoLayout* %39)
  %40 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %41 = bitcast %struct._PangoLayout* %40 to i8*
  call void @g_object_unref(i8* %41)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.7, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @gtk_widget_has_focus(%struct._GtkWidget*) #1

declare void @g_signal_stop_emission_by_name(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @g_unichar_isspace(i32) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gtk_editable_insert_text(%struct._GtkEditable*, i8*, i32, i32*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_entry_auto_complete(%struct._GimpTagEntry* %tag_entry) #3 {
entry:
  %retval = alloca i32, align 4
  %tag_entry.addr = alloca %struct._GimpTagEntry*, align 8
  %entry1 = alloca %struct._GtkEntry*, align 8
  %completion_prefix = alloca i8*, align 8
  %completion_candidates = alloca %struct._GList*, align 8
  %candidate_count = alloca i32, align 4
  %tags = alloca i8**, align 8
  %completion = alloca i8*, align 8
  %start_position = alloca i32, align 4
  %end_position = alloca i32, align 4
  %the_chosen_one = alloca %struct._GimpTag*, align 8
  store %struct._GimpTagEntry* %tag_entry, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %1 = bitcast %struct._GimpTagEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  store %struct._GtkEntry* %2, %struct._GtkEntry** %entry1, align 8
  store i32 0, i32* %candidate_count, align 4
  %3 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %suppress_tag_query = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %3, i32 0, i32 9
  %4 = load i32, i32* %suppress_tag_query, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %suppress_tag_query, align 4
  %5 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %mode = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %5, i32 0, i32 10
  %6 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %8 = bitcast %struct._GimpTagEntry* %7 to i8*
  %call3 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GimpTagEntry*)* @gimp_tag_entry_query_tag to i32 (i8*)*), i8* %8)
  %9 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %tag_query_idle_id = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %9, i32 0, i32 13
  store i32 %call3, i32* %tag_query_idle_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %tab_completion_index = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %10, i32 0, i32 6
  %11 = load i32, i32* %tab_completion_index, align 4
  %cmp4 = icmp sge i32 %11, 0
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end
  %12 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %internal_operation = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %12, i32 0, i32 7
  %13 = load i32, i32* %internal_operation, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %internal_operation, align 4
  %14 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %suppress_tag_query6 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %14, i32 0, i32 9
  %15 = load i32, i32* %suppress_tag_query6, align 4
  %inc7 = add nsw i32 %15, 1
  store i32 %inc7, i32* %suppress_tag_query6, align 4
  %16 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %17 = bitcast %struct._GimpTagEntry* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_editable_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkEditable*
  call void @gtk_editable_delete_selection(%struct._GtkEditable* %18)
  %19 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %suppress_tag_query10 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %19, i32 0, i32 9
  %20 = load i32, i32* %suppress_tag_query10, align 4
  %dec11 = add nsw i32 %20, -1
  store i32 %dec11, i32* %suppress_tag_query10, align 4
  %21 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %internal_operation12 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %21, i32 0, i32 7
  %22 = load i32, i32* %internal_operation12, align 4
  %dec13 = add nsw i32 %22, -1
  store i32 %dec13, i32* %internal_operation12, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.5, %if.end
  %23 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %24 = bitcast %struct._GimpTagEntry* %23 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_editable_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call15)
  %25 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkEditable*
  %call17 = call i32 @gtk_editable_get_selection_bounds(%struct._GtkEditable* %25, i32* %start_position, i32* %end_position)
  %26 = load i32, i32* %start_position, align 4
  %27 = load i32, i32* %end_position, align 4
  %cmp18 = icmp ne i32 %26, %27
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.14
  %28 = load %struct._GtkEntry*, %struct._GtkEntry** %entry1, align 8
  %29 = bitcast %struct._GtkEntry* %28 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_tag_entry_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call21)
  %30 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpTagEntry*
  %call23 = call i8* @gimp_tag_entry_get_completion_prefix(%struct._GimpTagEntry* %30)
  store i8* %call23, i8** %completion_prefix, align 8
  %31 = load %struct._GtkEntry*, %struct._GtkEntry** %entry1, align 8
  %32 = bitcast %struct._GtkEntry* %31 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_tag_entry_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpTagEntry*
  %call26 = call i8** @gimp_tag_entry_parse_tags(%struct._GimpTagEntry* %33)
  store i8** %call26, i8*** %tags, align 8
  %34 = load %struct._GtkEntry*, %struct._GtkEntry** %entry1, align 8
  %35 = bitcast %struct._GtkEntry* %34 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_tag_entry_get_type() #8
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call27)
  %36 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpTagEntry*
  %37 = load i8**, i8*** %tags, align 8
  %38 = load i8*, i8** %completion_prefix, align 8
  %call29 = call %struct._GList* @gimp_tag_entry_get_completion_candidates(%struct._GimpTagEntry* %36, i8** %37, i8* %38)
  store %struct._GList* %call29, %struct._GList** %completion_candidates, align 8
  %39 = load %struct._GList*, %struct._GList** %completion_candidates, align 8
  %call30 = call %struct._GList* @g_list_sort(%struct._GList* %39, i32 (i8*, i8*)* @gimp_tag_compare_func)
  store %struct._GList* %call30, %struct._GList** %completion_candidates, align 8
  %40 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %tab_completion_index31 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %40, i32 0, i32 6
  %41 = load i32, i32* %tab_completion_index31, align 4
  %cmp32 = icmp sge i32 %41, 0
  br i1 %cmp32, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end.20
  %42 = load %struct._GList*, %struct._GList** %completion_candidates, align 8
  %tobool = icmp ne %struct._GList* %42, null
  br i1 %tobool, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %land.lhs.true
  %43 = load %struct._GList*, %struct._GList** %completion_candidates, align 8
  %call34 = call i32 @g_list_length(%struct._GList* %43)
  store i32 %call34, i32* %candidate_count, align 4
  %44 = load i32, i32* %candidate_count, align 4
  %45 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %tab_completion_index35 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %45, i32 0, i32 6
  %46 = load i32, i32* %tab_completion_index35, align 4
  %rem = srem i32 %46, %44
  store i32 %rem, i32* %tab_completion_index35, align 4
  %47 = load %struct._GList*, %struct._GList** %completion_candidates, align 8
  %48 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %tab_completion_index36 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %48, i32 0, i32 6
  %49 = load i32, i32* %tab_completion_index36, align 4
  %call37 = call i8* @g_list_nth_data(%struct._GList* %47, i32 %49)
  %50 = bitcast i8* %call37 to %struct._GimpTag*
  store %struct._GimpTag* %50, %struct._GimpTag** %the_chosen_one, align 8
  %51 = load %struct._GList*, %struct._GList** %completion_candidates, align 8
  call void @g_list_free(%struct._GList* %51)
  store %struct._GList* null, %struct._GList** %completion_candidates, align 8
  %52 = load %struct._GList*, %struct._GList** %completion_candidates, align 8
  %53 = load %struct._GimpTag*, %struct._GimpTag** %the_chosen_one, align 8
  %54 = bitcast %struct._GimpTag* %53 to i8*
  %call38 = call %struct._GList* @g_list_append(%struct._GList* %52, i8* %54)
  store %struct._GList* %call38, %struct._GList** %completion_candidates, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.33, %land.lhs.true, %if.end.20
  %55 = load %struct._GtkEntry*, %struct._GtkEntry** %entry1, align 8
  %56 = bitcast %struct._GtkEntry* %55 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_tag_entry_get_type() #8
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call40)
  %57 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpTagEntry*
  %58 = load %struct._GList*, %struct._GList** %completion_candidates, align 8
  %59 = load i8*, i8** %completion_prefix, align 8
  %call42 = call i8* @gimp_tag_entry_get_completion_string(%struct._GimpTagEntry* %57, %struct._GList* %58, i8* %59)
  store i8* %call42, i8** %completion, align 8
  %60 = load i8*, i8** %completion, align 8
  %tobool43 = icmp ne i8* %60, null
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.70

land.lhs.true.44:                                 ; preds = %if.end.39
  %61 = load i8*, i8** %completion, align 8
  %call45 = call i64 @strlen(i8* %61) #9
  %cmp46 = icmp ugt i64 %call45, 0
  br i1 %cmp46, label %if.then.47, label %if.end.70

if.then.47:                                       ; preds = %land.lhs.true.44
  %62 = load %struct._GtkEntry*, %struct._GtkEntry** %entry1, align 8
  %63 = bitcast %struct._GtkEntry* %62 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_editable_get_type() #8
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call48)
  %64 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkEditable*
  %call50 = call i32 @gtk_editable_get_position(%struct._GtkEditable* %64)
  store i32 %call50, i32* %start_position, align 4
  %65 = load i32, i32* %start_position, align 4
  store i32 %65, i32* %end_position, align 4
  %66 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %internal_operation51 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %66, i32 0, i32 7
  %67 = load i32, i32* %internal_operation51, align 4
  %inc52 = add nsw i32 %67, 1
  store i32 %inc52, i32* %internal_operation51, align 4
  %68 = load %struct._GtkEntry*, %struct._GtkEntry** %entry1, align 8
  %69 = bitcast %struct._GtkEntry* %68 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_editable_get_type() #8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call53)
  %70 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkEditable*
  %71 = load i8*, i8** %completion, align 8
  %72 = load i8*, i8** %completion, align 8
  %call55 = call i64 @strlen(i8* %72) #9
  %conv = trunc i64 %call55 to i32
  call void @gtk_editable_insert_text(%struct._GtkEditable* %70, i8* %71, i32 %conv, i32* %end_position)
  %73 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %internal_operation56 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %73, i32 0, i32 7
  %74 = load i32, i32* %internal_operation56, align 4
  %dec57 = add nsw i32 %74, -1
  store i32 %dec57, i32* %internal_operation56, align 4
  %75 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %tab_completion_index58 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %75, i32 0, i32 6
  %76 = load i32, i32* %tab_completion_index58, align 4
  %cmp59 = icmp sge i32 %76, 0
  br i1 %cmp59, label %land.lhs.true.61, label %if.else

land.lhs.true.61:                                 ; preds = %if.then.47
  %77 = load i32, i32* %candidate_count, align 4
  %cmp62 = icmp eq i32 %77, 1
  br i1 %cmp62, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %land.lhs.true.61
  %78 = load %struct._GtkEntry*, %struct._GtkEntry** %entry1, align 8
  %79 = bitcast %struct._GtkEntry* %78 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_editable_get_type() #8
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call65)
  %80 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkEditable*
  %81 = load i32, i32* %end_position, align 4
  call void @gtk_editable_set_position(%struct._GtkEditable* %80, i32 %81)
  br label %if.end.69

if.else:                                          ; preds = %land.lhs.true.61, %if.then.47
  %82 = load %struct._GtkEntry*, %struct._GtkEntry** %entry1, align 8
  %83 = bitcast %struct._GtkEntry* %82 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_editable_get_type() #8
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call67)
  %84 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkEditable*
  %85 = load i32, i32* %start_position, align 4
  %86 = load i32, i32* %end_position, align 4
  call void @gtk_editable_select_region(%struct._GtkEditable* %84, i32 %85, i32 %86)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else, %if.then.64
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %land.lhs.true.44, %if.end.39
  %87 = load i8*, i8** %completion, align 8
  call void @g_free(i8* %87)
  %88 = load i8**, i8*** %tags, align 8
  call void @g_strfreev(i8** %88)
  %89 = load %struct._GList*, %struct._GList** %completion_candidates, align 8
  call void @g_list_free(%struct._GList* %89)
  %90 = load i8*, i8** %completion_prefix, align 8
  call void @g_free(i8* %90)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.then.19
  %91 = load i32, i32* %retval
  ret i32 %91
}

declare void @gtk_editable_delete_selection(%struct._GtkEditable*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_tag_entry_get_completion_prefix(%struct._GimpTagEntry* %entry1) #3 {
entry:
  %retval = alloca i8*, align 8
  %entry.addr = alloca %struct._GimpTagEntry*, align 8
  %original_string = alloca i8*, align 8
  %prefix_start = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %cursor = alloca i8*, align 8
  %position = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct._GimpTagEntry* %entry1, %struct._GimpTagEntry** %entry.addr, align 8
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpTagEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_editable_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEditable*
  %call3 = call i32 @gtk_editable_get_position(%struct._GtkEditable* %2)
  store i32 %call3, i32* %position, align 4
  %3 = load i32, i32* %position, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %position, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %5 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %5, i32 0, i32 2
  %6 = load %struct._GString*, %struct._GString** %mask, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %6, i32 0, i32 0
  %7 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp4 = icmp ne i32 %conv, 117
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call6 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  store i8* %call6, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %10 = bitcast %struct._GimpTagEntry* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_entry_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkEntry*
  %call9 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %11)
  %call10 = call noalias i8* @g_strdup(i8* %call9)
  store i8* %call10, i8** %original_string, align 8
  %12 = load i8*, i8** %original_string, align 8
  store i8* %12, i8** %cursor, align 8
  %13 = load i8*, i8** %original_string, align 8
  store i8* %13, i8** %prefix_start, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %position, align 4
  %cmp11 = icmp slt i32 %14, %15
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %cursor, align 8
  %call13 = call i32 @g_utf8_get_char(i8* %16) #9
  store i32 %call13, i32* %c, align 4
  %17 = load i8*, i8** %cursor, align 8
  %18 = load i8*, i8** %cursor, align 8
  %19 = load i8, i8* %18, align 1
  %idxprom14 = zext i8 %19 to i64
  %20 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %20, i64 %idxprom14
  %21 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %21 to i32
  %idx.ext = sext i32 %conv16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %cursor, align 8
  %22 = load i32, i32* %c, align 4
  %call17 = call i32 @gimp_tag_is_tag_separator(i32 %22)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  %23 = load i8*, i8** %cursor, align 8
  store i8* %23, i8** %prefix_start, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i8*, i8** %cursor, align 8
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %prefix_start, align 8
  %call20 = call i8* @g_strchug(i8* %26)
  %call21 = call noalias i8* @g_strdup(i8* %call20)
  store i8* %call21, i8** %prefix, align 8
  %27 = load i8*, i8** %original_string, align 8
  call void @g_free(i8* %27)
  %28 = load i8*, i8** %prefix, align 8
  store i8* %28, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %29 = load i8*, i8** %retval
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_tag_entry_get_completion_candidates(%struct._GimpTagEntry* %tag_entry, i8** %used_tags, i8* %src_prefix) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %tag_entry.addr = alloca %struct._GimpTagEntry*, align 8
  %used_tags.addr = alloca i8**, align 8
  %src_prefix.addr = alloca i8*, align 8
  %candidates = alloca %struct._GList*, align 8
  %all_tags = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %length = alloca i32, align 4
  %prefix = alloca i8*, align 8
  %tag = alloca %struct._GimpTag*, align 8
  %i = alloca i32, align 4
  store %struct._GimpTagEntry* %tag_entry, %struct._GimpTagEntry** %tag_entry.addr, align 8
  store i8** %used_tags, i8*** %used_tags.addr, align 8
  store i8* %src_prefix, i8** %src_prefix.addr, align 8
  store %struct._GList* null, %struct._GList** %candidates, align 8
  %0 = load i8*, i8** %src_prefix.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %src_prefix.addr, align 8
  %call = call i64 @strlen(i8* %1) #9
  %cmp = icmp ult i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %src_prefix.addr, align 8
  %call1 = call noalias i8* @g_utf8_normalize(i8* %2, i64 -1, i32 2)
  store i8* %call1, i8** %prefix, align 8
  %3 = load i8*, i8** %prefix, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry.addr, align 8
  %container = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %4, i32 0, i32 1
  %5 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container, align 8
  %tag_ref_counts = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %5, i32 0, i32 2
  %6 = load %struct._GHashTable*, %struct._GHashTable** %tag_ref_counts, align 8
  %call5 = call %struct._GList* @g_hash_table_get_keys(%struct._GHashTable* %6)
  store %struct._GList* %call5, %struct._GList** %all_tags, align 8
  %7 = load i8**, i8*** %used_tags.addr, align 8
  %call6 = call i32 @g_strv_length(i8** %7)
  store i32 %call6, i32* %length, align 4
  %8 = load %struct._GList*, %struct._GList** %all_tags, align 8
  store %struct._GList* %8, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.4
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %9, null
  br i1 %tobool7, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8
  %12 = bitcast i8* %11 to %struct._GimpTag*
  store %struct._GimpTag* %12, %struct._GimpTag** %tag, align 8
  %13 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %14 = load i8*, i8** %prefix, align 8
  %call8 = call i32 @gimp_tag_has_prefix(%struct._GimpTag* %13, i8* %14)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then.10
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %length, align 4
  %cmp12 = icmp slt i32 %15, %16
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %17 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i8**, i8*** %used_tags.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %19, i64 %idxprom
  %20 = load i8*, i8** %arrayidx, align 8
  %call14 = call i32 @gimp_tag_compare_with_string(%struct._GimpTag* %17, i8* %20)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %for.body.13
  br label %for.end

if.end.17:                                        ; preds = %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.11

for.end:                                          ; preds = %if.then.16, %for.cond.11
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %length, align 4
  %cmp18 = icmp eq i32 %22, %23
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %for.end
  %24 = load %struct._GList*, %struct._GList** %candidates, align 8
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %data20 = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 0
  %26 = load i8*, i8** %data20, align 8
  %call21 = call %struct._GList* @g_list_append(%struct._GList* %24, i8* %26)
  store %struct._GList* %call21, %struct._GList** %candidates, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %for.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.body
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end.23
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool25 = icmp ne %struct._GList* %27, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.24
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %29, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %30 = load %struct._GList*, %struct._GList** %all_tags, align 8
  call void @g_list_free(%struct._GList* %30)
  %31 = load i8*, i8** %prefix, align 8
  call void @g_free(i8* %31)
  %32 = load %struct._GList*, %struct._GList** %candidates, align 8
  store %struct._GList* %32, %struct._GList** %retval
  br label %return

return:                                           ; preds = %for.end.26, %if.then.3, %if.then
  %33 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %33
}

declare %struct._GList* @g_list_sort(%struct._GList*, i32 (i8*, i8*)*) #1

declare i32 @gimp_tag_compare_func(i8*, i8*) #1

declare i8* @g_list_nth_data(%struct._GList*, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_tag_entry_get_completion_string(%struct._GimpTagEntry* %tag_entry, %struct._GList* %candidates, i8* %prefix) #3 {
entry:
  %retval = alloca i8*, align 8
  %tag_entry.addr = alloca %struct._GimpTagEntry*, align 8
  %candidates.addr = alloca %struct._GList*, align 8
  %prefix.addr = alloca i8*, align 8
  %completions = alloca i8**, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  %candidate_iterator = alloca %struct._GList*, align 8
  %candidate_string = alloca i8*, align 8
  %prefix_length = alloca i32, align 4
  %c = alloca i32, align 4
  %num_chars_match = alloca i32, align 4
  %completion = alloca i8*, align 8
  %completion_end = alloca i8*, align 8
  %completion_length = alloca i32, align 4
  %normalized_prefix = alloca i8*, align 8
  %d = alloca i32, align 4
  store %struct._GimpTagEntry* %tag_entry, %struct._GimpTagEntry** %tag_entry.addr, align 8
  store %struct._GList* %candidates, %struct._GList** %candidates.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %candidates.addr, align 8
  %tobool = icmp ne %struct._GList* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %prefix.addr, align 8
  %call = call noalias i8* @g_utf8_normalize(i8* %1, i64 -1, i32 2)
  store i8* %call, i8** %normalized_prefix, align 8
  %2 = load i8*, i8** %normalized_prefix, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i8*, i8** %normalized_prefix, align 8
  %call4 = call i64 @strlen(i8* %3) #9
  %conv = trunc i64 %call4 to i32
  store i32 %conv, i32* %prefix_length, align 4
  %4 = load i8*, i8** %normalized_prefix, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GList*, %struct._GList** %candidates.addr, align 8
  %call5 = call i32 @g_list_length(%struct._GList* %5)
  store i32 %call5, i32* %length, align 4
  %6 = load i32, i32* %length, align 4
  %cmp = icmp ult i32 %6, 2
  br i1 %cmp, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.3
  %7 = load %struct._GList*, %struct._GList** %candidates.addr, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_tag_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpTag*
  %call10 = call i8* @gimp_tag_get_name(%struct._GimpTag* %10)
  store i8* %call10, i8** %candidate_string, align 8
  %11 = load i8*, i8** %candidate_string, align 8
  %12 = load i32, i32* %prefix_length, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %call11 = call noalias i8* @g_strdup(i8* %add.ptr)
  store i8* %call11, i8** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.3
  %13 = load i32, i32* %length, align 4
  %conv13 = zext i32 %13 to i64
  %mul = mul i64 %conv13, 8
  %call14 = call noalias i8* @g_malloc(i64 %mul)
  %14 = bitcast i8* %call14 to i8**
  store i8** %14, i8*** %completions, align 8
  %15 = load %struct._GList*, %struct._GList** %candidates.addr, align 8
  store %struct._GList* %15, %struct._GList** %candidate_iterator, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %length, align 4
  %cmp15 = icmp ult i32 %16, %17
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %candidate_iterator, align 8
  %data17 = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data17, align 8
  %20 = bitcast i8* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_tag_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpTag*
  %call20 = call i8* @gimp_tag_get_name(%struct._GimpTag* %21)
  store i8* %call20, i8** %candidate_string, align 8
  %22 = load i8*, i8** %candidate_string, align 8
  %23 = load i32, i32* %prefix_length, align 4
  %idx.ext21 = sext i32 %23 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %22, i64 %idx.ext21
  %24 = load i32, i32* %i, align 4
  %idxprom = zext i32 %24 to i64
  %25 = load i8**, i8*** %completions, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %25, i64 %idxprom
  store i8* %add.ptr22, i8** %arrayidx, align 8
  %26 = load %struct._GList*, %struct._GList** %candidate_iterator, align 8
  %tobool23 = icmp ne %struct._GList* %26, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %27 = load %struct._GList*, %struct._GList** %candidate_iterator, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %28, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %candidate_iterator, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %29 = load i32, i32* %i, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %num_chars_match, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  %30 = load i8**, i8*** %completions, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %30, i64 0
  %31 = load i8*, i8** %arrayidx24, align 8
  %call25 = call i32 @g_utf8_get_char(i8* %31) #9
  store i32 %call25, i32* %c, align 4
  %32 = load i32, i32* %c, align 4
  %tobool26 = icmp ne i32 %32, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %do.body
  br label %do.end

if.end.28:                                        ; preds = %do.body
  store i32 1, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.65, %if.end.28
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %length, align 4
  %cmp30 = icmp ult i32 %33, %34
  br i1 %cmp30, label %for.body.32, label %for.end.67

for.body.32:                                      ; preds = %for.cond.29
  %35 = load i32, i32* %i, align 4
  %idxprom33 = zext i32 %35 to i64
  %36 = load i8**, i8*** %completions, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %36, i64 %idxprom33
  %37 = load i8*, i8** %arrayidx34, align 8
  %call35 = call i32 @g_utf8_get_char(i8* %37) #9
  store i32 %call35, i32* %d, align 4
  %38 = load i32, i32* %c, align 4
  %39 = load i32, i32* %d, align 4
  %cmp36 = icmp ne i32 %38, %39
  br i1 %cmp36, label %if.then.38, label %if.end.53

if.then.38:                                       ; preds = %for.body.32
  %40 = load %struct._GList*, %struct._GList** %candidates.addr, align 8
  %data39 = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 0
  %41 = load i8*, i8** %data39, align 8
  %42 = bitcast i8* %41 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_tag_get_type() #8
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call40)
  %43 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpTag*
  %call42 = call i8* @gimp_tag_get_name(%struct._GimpTag* %43)
  store i8* %call42, i8** %candidate_string, align 8
  %44 = load i32, i32* %prefix_length, align 4
  %45 = load i8*, i8** %candidate_string, align 8
  %idx.ext43 = sext i32 %44 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %45, i64 %idx.ext43
  store i8* %add.ptr44, i8** %candidate_string, align 8
  %46 = load i8*, i8** %candidate_string, align 8
  %47 = load i32, i32* %num_chars_match, align 4
  %conv45 = sext i32 %47 to i64
  %call46 = call i8* @g_utf8_offset_to_pointer(i8* %46, i64 %conv45) #9
  store i8* %call46, i8** %completion_end, align 8
  %48 = load i8*, i8** %completion_end, align 8
  %49 = load i8*, i8** %candidate_string, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %49 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv47 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv47, i32* %completion_length, align 4
  %50 = load i32, i32* %completion_length, align 4
  %add = add nsw i32 %50, 1
  %conv48 = sext i32 %add to i64
  %call49 = call noalias i8* @g_malloc(i64 %conv48)
  store i8* %call49, i8** %completion, align 8
  %51 = load i8*, i8** %completion, align 8
  %52 = load i8*, i8** %candidate_string, align 8
  %53 = load i32, i32* %completion_length, align 4
  %conv50 = sext i32 %53 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 %conv50, i32 1, i1 false)
  %54 = load i32, i32* %completion_length, align 4
  %idxprom51 = sext i32 %54 to i64
  %55 = load i8*, i8** %completion, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %55, i64 %idxprom51
  store i8 0, i8* %arrayidx52, align 1
  %56 = load i8**, i8*** %completions, align 8
  %57 = bitcast i8** %56 to i8*
  call void @g_free(i8* %57)
  %58 = load i8*, i8** %completion, align 8
  store i8* %58, i8** %retval
  br label %return

if.end.53:                                        ; preds = %for.body.32
  %59 = load i32, i32* %i, align 4
  %idxprom54 = zext i32 %59 to i64
  %60 = load i8**, i8*** %completions, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %60, i64 %idxprom54
  %61 = load i8*, i8** %arrayidx55, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom56 = zext i32 %62 to i64
  %63 = load i8**, i8*** %completions, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %63, i64 %idxprom56
  %64 = load i8*, i8** %arrayidx57, align 8
  %65 = load i8, i8* %64, align 1
  %idxprom58 = zext i8 %65 to i64
  %66 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %66, i64 %idxprom58
  %67 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %67 to i32
  %idx.ext61 = sext i32 %conv60 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %61, i64 %idx.ext61
  %68 = load i32, i32* %i, align 4
  %idxprom63 = zext i32 %68 to i64
  %69 = load i8**, i8*** %completions, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %69, i64 %idxprom63
  store i8* %add.ptr62, i8** %arrayidx64, align 8
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.53
  %70 = load i32, i32* %i, align 4
  %inc66 = add i32 %70, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.29

for.end.67:                                       ; preds = %for.cond.29
  %71 = load i8**, i8*** %completions, align 8
  %arrayidx68 = getelementptr inbounds i8*, i8** %71, i64 0
  %72 = load i8*, i8** %arrayidx68, align 8
  %73 = load i8**, i8*** %completions, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %73, i64 0
  %74 = load i8*, i8** %arrayidx69, align 8
  %75 = load i8, i8* %74, align 1
  %idxprom70 = zext i8 %75 to i64
  %76 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %76, i64 %idxprom70
  %77 = load i8, i8* %arrayidx71, align 1
  %conv72 = sext i8 %77 to i32
  %idx.ext73 = sext i32 %conv72 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %72, i64 %idx.ext73
  %78 = load i8**, i8*** %completions, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %78, i64 0
  store i8* %add.ptr74, i8** %arrayidx75, align 8
  %79 = load i32, i32* %num_chars_match, align 4
  %inc76 = add nsw i32 %79, 1
  store i32 %inc76, i32* %num_chars_match, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end.67
  %80 = load i32, i32* %c, align 4
  %tobool77 = icmp ne i32 %80, 0
  br i1 %tobool77, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.27
  %81 = load i8**, i8*** %completions, align 8
  %82 = bitcast i8** %81 to i8*
  call void @g_free(i8* %82)
  %83 = load %struct._GList*, %struct._GList** %candidates.addr, align 8
  %data78 = getelementptr inbounds %struct._GList, %struct._GList* %83, i32 0, i32 0
  %84 = load i8*, i8** %data78, align 8
  %85 = bitcast i8* %84 to %struct._GTypeInstance*
  %call79 = call i64 @gimp_tag_get_type() #8
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call79)
  %86 = bitcast %struct._GTypeInstance* %call80 to %struct._GimpTag*
  %call81 = call i8* @gimp_tag_get_name(%struct._GimpTag* %86)
  store i8* %call81, i8** %candidate_string, align 8
  %87 = load i8*, i8** %candidate_string, align 8
  %88 = load i32, i32* %prefix_length, align 4
  %idx.ext82 = sext i32 %88 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %87, i64 %idx.ext82
  %call84 = call noalias i8* @g_strdup(i8* %add.ptr83)
  store i8* %call84, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.38, %if.then.7, %if.then.2, %if.then
  %89 = load i8*, i8** %retval
  ret i8* %89
}

declare void @g_strfreev(i8**) #1

declare noalias i8* @g_utf8_normalize(i8*, i64, i32) #1

declare %struct._GList* @g_hash_table_get_keys(%struct._GHashTable*) #1

declare i32 @g_strv_length(i8**) #1

declare i32 @gimp_tag_has_prefix(%struct._GimpTag*, i8*) #1

declare i32 @gimp_tag_compare_with_string(%struct._GimpTag*, i8*) #1

declare i8* @gimp_tag_get_name(%struct._GimpTag*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tag_get_type() #2

; Function Attrs: nounwind readonly
declare i8* @g_utf8_offset_to_pointer(i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare %struct._GString* @g_string_erase(%struct._GString*, i64, i64) #1

declare i32 @gtk_widget_get_modifier_mask(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i32 @gdk_keyval_to_unicode(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_entry_commit_source_func(%struct._GimpTagEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpTagEntry*, align 8
  store %struct._GimpTagEntry* %entry1, %struct._GimpTagEntry** %entry.addr, align 8
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  call void @gimp_tag_entry_commit_tags(%struct._GimpTagEntry* %0)
  ret i32 0
}

declare void @g_signal_emit_by_name(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_previous_tag(%struct._GimpTagEntry* %entry1, i32 %select) #3 {
entry:
  %entry.addr = alloca %struct._GimpTagEntry*, align 8
  %select.addr = alloca i32, align 4
  %position = alloca i32, align 4
  %current_position = alloca i32, align 4
  %selection_start = alloca i32, align 4
  %selection_end = alloca i32, align 4
  store %struct._GimpTagEntry* %entry1, %struct._GimpTagEntry** %entry.addr, align 8
  store i32 %select, i32* %select.addr, align 4
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpTagEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_editable_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEditable*
  %call3 = call i32 @gtk_editable_get_position(%struct._GtkEditable* %2)
  store i32 %call3, i32* %position, align 4
  %3 = load i32, i32* %position, align 4
  %cmp = icmp sge i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %position, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %5 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %5, i32 0, i32 2
  %6 = load %struct._GString*, %struct._GString** %mask, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %6, i32 0, i32 0
  %7 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv, 119
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, i32* %position, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %position, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load i32, i32* %position, align 4
  %cmp6 = icmp slt i32 %10, 1
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  br label %if.end.65

if.end.9:                                         ; preds = %if.end
  %11 = load i32, i32* %position, align 4
  %sub10 = sub nsw i32 %11, 1
  %idxprom11 = sext i32 %sub10 to i64
  %12 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask12 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %12, i32 0, i32 2
  %13 = load %struct._GString*, %struct._GString** %mask12, align 8
  %str13 = getelementptr inbounds %struct._GString, %struct._GString* %13, i32 0, i32 0
  %14 = load i8*, i8** %str13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 %idxprom11
  %15 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %15 to i32
  %cmp16 = icmp ne i32 %conv15, 117
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.9
  br label %while.cond

while.cond:                                       ; preds = %if.end.38, %if.then.18
  %16 = load i32, i32* %position, align 4
  %cmp19 = icmp sgt i32 %16, 0
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load i32, i32* %position, align 4
  %sub21 = sub nsw i32 %17, 1
  %idxprom22 = sext i32 %sub21 to i64
  %18 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask23 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %18, i32 0, i32 2
  %19 = load %struct._GString*, %struct._GString** %mask23, align 8
  %str24 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0
  %20 = load i8*, i8** %str24, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %20, i64 %idxprom22
  %21 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %21 to i32
  %cmp27 = icmp ne i32 %conv26, 119
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp27, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load i32, i32* %position, align 4
  %sub29 = sub nsw i32 %23, 1
  %idxprom30 = sext i32 %sub29 to i64
  %24 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask31 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %24, i32 0, i32 2
  %25 = load %struct._GString*, %struct._GString** %mask31, align 8
  %str32 = getelementptr inbounds %struct._GString, %struct._GString* %25, i32 0, i32 0
  %26 = load i8*, i8** %str32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %26, i64 %idxprom30
  %27 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %27 to i32
  %cmp35 = icmp eq i32 %conv34, 117
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %while.body
  br label %while.end

if.end.38:                                        ; preds = %while.body
  %28 = load i32, i32* %position, align 4
  %dec39 = add nsw i32 %28, -1
  store i32 %dec39, i32* %position, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.37, %land.end
  br label %if.end.41

if.else:                                          ; preds = %if.end.9
  %29 = load i32, i32* %position, align 4
  %dec40 = add nsw i32 %29, -1
  store i32 %dec40, i32* %position, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %while.end
  %30 = load i32, i32* %select.addr, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then.42, label %if.else.62

if.then.42:                                       ; preds = %if.end.41
  %31 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %32 = bitcast %struct._GimpTagEntry* %31 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_editable_get_type() #8
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call43)
  %33 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkEditable*
  %call45 = call i32 @gtk_editable_get_position(%struct._GtkEditable* %33)
  store i32 %call45, i32* %current_position, align 4
  %34 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %35 = bitcast %struct._GimpTagEntry* %34 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_editable_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call46)
  %36 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkEditable*
  %call48 = call i32 @gtk_editable_get_selection_bounds(%struct._GtkEditable* %36, i32* %selection_start, i32* %selection_end)
  %37 = load i32, i32* %current_position, align 4
  %38 = load i32, i32* %selection_start, align 4
  %cmp49 = icmp eq i32 %37, %38
  br i1 %cmp49, label %if.then.51, label %if.else.54

if.then.51:                                       ; preds = %if.then.42
  %39 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %40 = bitcast %struct._GimpTagEntry* %39 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_editable_get_type() #8
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call52)
  %41 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkEditable*
  %42 = load i32, i32* %selection_end, align 4
  %43 = load i32, i32* %position, align 4
  call void @gtk_editable_select_region(%struct._GtkEditable* %41, i32 %42, i32 %43)
  br label %if.end.61

if.else.54:                                       ; preds = %if.then.42
  %44 = load i32, i32* %current_position, align 4
  %45 = load i32, i32* %selection_end, align 4
  %cmp55 = icmp eq i32 %44, %45
  br i1 %cmp55, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.else.54
  %46 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %47 = bitcast %struct._GimpTagEntry* %46 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_editable_get_type() #8
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call58)
  %48 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkEditable*
  %49 = load i32, i32* %selection_start, align 4
  %50 = load i32, i32* %position, align 4
  call void @gtk_editable_select_region(%struct._GtkEditable* %48, i32 %49, i32 %50)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.else.54
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.51
  br label %if.end.65

if.else.62:                                       ; preds = %if.end.41
  %51 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %52 = bitcast %struct._GimpTagEntry* %51 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_editable_get_type() #8
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call63)
  %53 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkEditable*
  %54 = load i32, i32* %position, align 4
  call void @gtk_editable_set_position(%struct._GtkEditable* %53, i32 %54)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.8, %if.else.62, %if.end.61
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_next_tag(%struct._GimpTagEntry* %entry1, i32 %select) #3 {
entry:
  %entry.addr = alloca %struct._GimpTagEntry*, align 8
  %select.addr = alloca i32, align 4
  %position = alloca i32, align 4
  %current_position = alloca i32, align 4
  %selection_start = alloca i32, align 4
  %selection_end = alloca i32, align 4
  store %struct._GimpTagEntry* %entry1, %struct._GimpTagEntry** %entry.addr, align 8
  store i32 %select, i32* %select.addr, align 4
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpTagEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_editable_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEditable*
  %call3 = call i32 @gtk_editable_get_position(%struct._GtkEditable* %2)
  store i32 %call3, i32* %position, align 4
  %3 = load i32, i32* %position, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %4, i32 0, i32 2
  %5 = load %struct._GString*, %struct._GString** %mask, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 0
  %6 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp ne i32 %conv, 117
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %8 = load i32, i32* %position, align 4
  %conv5 = sext i32 %8 to i64
  %9 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask6 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %9, i32 0, i32 2
  %10 = load %struct._GString*, %struct._GString** %mask6, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %10, i32 0, i32 1
  %11 = load i64, i64* %len, align 8
  %cmp7 = icmp ult i64 %conv5, %11
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i32, i32* %position, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask10 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %13, i32 0, i32 2
  %14 = load %struct._GString*, %struct._GString** %mask10, align 8
  %str11 = getelementptr inbounds %struct._GString, %struct._GString* %14, i32 0, i32 0
  %15 = load i8*, i8** %str11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %15, i64 %idxprom9
  %16 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %16 to i32
  %cmp14 = icmp ne i32 %conv13, 119
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp14, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load i32, i32* %position, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %position, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load i32, i32* %position, align 4
  %idxprom16 = sext i32 %19 to i64
  %20 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask17 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %20, i32 0, i32 2
  %21 = load %struct._GString*, %struct._GString** %mask17, align 8
  %str18 = getelementptr inbounds %struct._GString, %struct._GString* %21, i32 0, i32 0
  %22 = load i8*, i8** %str18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %22, i64 %idxprom16
  %23 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %23 to i32
  %cmp21 = icmp eq i32 %conv20, 119
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %while.end
  %24 = load i32, i32* %position, align 4
  %inc24 = add nsw i32 %24, 1
  store i32 %inc24, i32* %position, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.23, %while.end
  br label %if.end.33

if.else:                                          ; preds = %entry
  %25 = load i32, i32* %position, align 4
  %conv25 = sext i32 %25 to i64
  %26 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask26 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %26, i32 0, i32 2
  %27 = load %struct._GString*, %struct._GString** %mask26, align 8
  %len27 = getelementptr inbounds %struct._GString, %struct._GString* %27, i32 0, i32 1
  %28 = load i64, i64* %len27, align 8
  %cmp28 = icmp ult i64 %conv25, %28
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.else
  %29 = load i32, i32* %position, align 4
  %inc31 = add nsw i32 %29, 1
  store i32 %inc31, i32* %position, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end
  %30 = load i32, i32* %select.addr, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then.34, label %if.else.54

if.then.34:                                       ; preds = %if.end.33
  %31 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %32 = bitcast %struct._GimpTagEntry* %31 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_editable_get_type() #8
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call35)
  %33 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkEditable*
  %call37 = call i32 @gtk_editable_get_position(%struct._GtkEditable* %33)
  store i32 %call37, i32* %current_position, align 4
  %34 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %35 = bitcast %struct._GimpTagEntry* %34 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_editable_get_type() #8
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call38)
  %36 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkEditable*
  %call40 = call i32 @gtk_editable_get_selection_bounds(%struct._GtkEditable* %36, i32* %selection_start, i32* %selection_end)
  %37 = load i32, i32* %current_position, align 4
  %38 = load i32, i32* %selection_end, align 4
  %cmp41 = icmp eq i32 %37, %38
  br i1 %cmp41, label %if.then.43, label %if.else.46

if.then.43:                                       ; preds = %if.then.34
  %39 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %40 = bitcast %struct._GimpTagEntry* %39 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_editable_get_type() #8
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call44)
  %41 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkEditable*
  %42 = load i32, i32* %selection_start, align 4
  %43 = load i32, i32* %position, align 4
  call void @gtk_editable_select_region(%struct._GtkEditable* %41, i32 %42, i32 %43)
  br label %if.end.53

if.else.46:                                       ; preds = %if.then.34
  %44 = load i32, i32* %current_position, align 4
  %45 = load i32, i32* %selection_start, align 4
  %cmp47 = icmp eq i32 %44, %45
  br i1 %cmp47, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.else.46
  %46 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %47 = bitcast %struct._GimpTagEntry* %46 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_editable_get_type() #8
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call50)
  %48 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkEditable*
  %49 = load i32, i32* %selection_end, align 4
  %50 = load i32, i32* %position, align 4
  call void @gtk_editable_select_region(%struct._GtkEditable* %48, i32 %49, i32 %50)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %if.else.46
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.43
  br label %if.end.57

if.else.54:                                       ; preds = %if.end.33
  %51 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %52 = bitcast %struct._GimpTagEntry* %51 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_editable_get_type() #8
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call55)
  %53 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkEditable*
  %54 = load i32, i32* %position, align 4
  call void @gtk_editable_set_position(%struct._GtkEditable* %53, i32 %54)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.end.53
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_select_for_deletion(%struct._GimpTagEntry* %entry1, i32 %search_dir) #3 {
entry:
  %entry.addr = alloca %struct._GimpTagEntry*, align 8
  %search_dir.addr = alloca i32, align 4
  %start_pos = alloca i32, align 4
  %end_pos = alloca i32, align 4
  store %struct._GimpTagEntry* %entry1, %struct._GimpTagEntry** %entry.addr, align 8
  store i32 %search_dir, i32* %search_dir.addr, align 4
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpTagEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_editable_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEditable*
  %call3 = call i32 @gtk_editable_get_selection_bounds(%struct._GtkEditable* %2, i32* %start_pos, i32* %end_pos)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %start_pos, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %start_pos, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %5 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %5, i32 0, i32 2
  %6 = load %struct._GString*, %struct._GString** %mask, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %6, i32 0, i32 0
  %7 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv, 116
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %start_pos, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %start_pos, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %end_pos, align 4
  %12 = load i32, i32* %start_pos, align 4
  %cmp6 = icmp sgt i32 %11, %12
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %13 = load i32, i32* %end_pos, align 4
  %sub8 = sub nsw i32 %13, 1
  %idxprom9 = sext i32 %sub8 to i64
  %14 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask10 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %14, i32 0, i32 2
  %15 = load %struct._GString*, %struct._GString** %mask10, align 8
  %str11 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 0
  %16 = load i8*, i8** %str11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %16, i64 %idxprom9
  %17 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %17 to i32
  %cmp14 = icmp eq i32 %conv13, 116
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %18 = load i32, i32* %end_pos, align 4
  %sub16 = sub nsw i32 %18, 1
  %idxprom17 = sext i32 %sub16 to i64
  %19 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask18 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %19, i32 0, i32 2
  %20 = load %struct._GString*, %struct._GString** %mask18, align 8
  %str19 = getelementptr inbounds %struct._GString, %struct._GString* %20, i32 0, i32 0
  %21 = load i8*, i8** %str19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %21, i64 %idxprom17
  %22 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %22 to i32
  %cmp22 = icmp eq i32 %conv21, 115
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.38, %if.then
  %23 = load i32, i32* %end_pos, align 4
  %conv25 = sext i32 %23 to i64
  %24 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask26 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %24, i32 0, i32 2
  %25 = load %struct._GString*, %struct._GString** %mask26, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %25, i32 0, i32 1
  %26 = load i64, i64* %len, align 8
  %cmp27 = icmp ule i64 %conv25, %26
  br i1 %cmp27, label %land.rhs.29, label %land.end.37

land.rhs.29:                                      ; preds = %while.cond.24
  %27 = load i32, i32* %end_pos, align 4
  %idxprom30 = sext i32 %27 to i64
  %28 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask31 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %28, i32 0, i32 2
  %29 = load %struct._GString*, %struct._GString** %mask31, align 8
  %str32 = getelementptr inbounds %struct._GString, %struct._GString* %29, i32 0, i32 0
  %30 = load i8*, i8** %str32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %30, i64 %idxprom30
  %31 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %31 to i32
  %cmp35 = icmp eq i32 %conv34, 115
  br label %land.end.37

land.end.37:                                      ; preds = %land.rhs.29, %while.cond.24
  %32 = phi i1 [ false, %while.cond.24 ], [ %cmp35, %land.rhs.29 ]
  br i1 %32, label %while.body.38, label %while.end.39

while.body.38:                                    ; preds = %land.end.37
  %33 = load i32, i32* %end_pos, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %end_pos, align 4
  br label %while.cond.24

while.end.39:                                     ; preds = %land.end.37
  br label %if.end

if.end:                                           ; preds = %while.end.39, %lor.lhs.false, %while.end
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.52, %if.end
  %34 = load i32, i32* %start_pos, align 4
  %35 = load i32, i32* %end_pos, align 4
  %cmp41 = icmp slt i32 %34, %35
  br i1 %cmp41, label %land.rhs.43, label %land.end.51

land.rhs.43:                                      ; preds = %while.cond.40
  %36 = load i32, i32* %start_pos, align 4
  %idxprom44 = sext i32 %36 to i64
  %37 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask45 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %37, i32 0, i32 2
  %38 = load %struct._GString*, %struct._GString** %mask45, align 8
  %str46 = getelementptr inbounds %struct._GString, %struct._GString* %38, i32 0, i32 0
  %39 = load i8*, i8** %str46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %39, i64 %idxprom44
  %40 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %40 to i32
  %cmp49 = icmp eq i32 %conv48, 119
  br label %land.end.51

land.end.51:                                      ; preds = %land.rhs.43, %while.cond.40
  %41 = phi i1 [ false, %while.cond.40 ], [ %cmp49, %land.rhs.43 ]
  br i1 %41, label %while.body.52, label %while.end.54

while.body.52:                                    ; preds = %land.end.51
  %42 = load i32, i32* %start_pos, align 4
  %inc53 = add nsw i32 %42, 1
  store i32 %inc53, i32* %start_pos, align 4
  br label %while.cond.40

while.end.54:                                     ; preds = %land.end.51
  br label %while.cond.55

while.cond.55:                                    ; preds = %while.body.68, %while.end.54
  %43 = load i32, i32* %start_pos, align 4
  %44 = load i32, i32* %end_pos, align 4
  %cmp56 = icmp slt i32 %43, %44
  br i1 %cmp56, label %land.rhs.58, label %land.end.67

land.rhs.58:                                      ; preds = %while.cond.55
  %45 = load i32, i32* %end_pos, align 4
  %sub59 = sub nsw i32 %45, 1
  %idxprom60 = sext i32 %sub59 to i64
  %46 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask61 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %46, i32 0, i32 2
  %47 = load %struct._GString*, %struct._GString** %mask61, align 8
  %str62 = getelementptr inbounds %struct._GString, %struct._GString* %47, i32 0, i32 0
  %48 = load i8*, i8** %str62, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %48, i64 %idxprom60
  %49 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %49 to i32
  %cmp65 = icmp eq i32 %conv64, 119
  br label %land.end.67

land.end.67:                                      ; preds = %land.rhs.58, %while.cond.55
  %50 = phi i1 [ false, %while.cond.55 ], [ %cmp65, %land.rhs.58 ]
  br i1 %50, label %while.body.68, label %while.end.70

while.body.68:                                    ; preds = %land.end.67
  %51 = load i32, i32* %end_pos, align 4
  %dec69 = add nsw i32 %51, -1
  store i32 %dec69, i32* %end_pos, align 4
  br label %while.cond.55

while.end.70:                                     ; preds = %land.end.67
  %52 = load i32, i32* %search_dir.addr, align 4
  %cmp71 = icmp eq i32 %52, 1
  br i1 %cmp71, label %if.then.73, label %if.else

if.then.73:                                       ; preds = %while.end.70
  %53 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %54 = bitcast %struct._GimpTagEntry* %53 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_editable_get_type() #8
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call74)
  %55 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkEditable*
  %56 = load i32, i32* %end_pos, align 4
  %57 = load i32, i32* %start_pos, align 4
  call void @gtk_editable_select_region(%struct._GtkEditable* %55, i32 %56, i32 %57)
  br label %if.end.103

if.else:                                          ; preds = %while.end.70
  %58 = load i32, i32* %end_pos, align 4
  %59 = load i32, i32* %start_pos, align 4
  %cmp76 = icmp sgt i32 %58, %59
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.102

land.lhs.true.78:                                 ; preds = %if.else
  %60 = load i32, i32* %search_dir.addr, align 4
  %cmp79 = icmp eq i32 %60, 2
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.102

land.lhs.true.81:                                 ; preds = %land.lhs.true.78
  %61 = load i32, i32* %end_pos, align 4
  %sub82 = sub nsw i32 %61, 1
  %idxprom83 = sext i32 %sub82 to i64
  %62 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask84 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %62, i32 0, i32 2
  %63 = load %struct._GString*, %struct._GString** %mask84, align 8
  %str85 = getelementptr inbounds %struct._GString, %struct._GString* %63, i32 0, i32 0
  %64 = load i8*, i8** %str85, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %64, i64 %idxprom83
  %65 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %65 to i32
  %cmp88 = icmp eq i32 %conv87, 116
  br i1 %cmp88, label %if.then.99, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %land.lhs.true.81
  %66 = load i32, i32* %end_pos, align 4
  %sub91 = sub nsw i32 %66, 1
  %idxprom92 = sext i32 %sub91 to i64
  %67 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask93 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %67, i32 0, i32 2
  %68 = load %struct._GString*, %struct._GString** %mask93, align 8
  %str94 = getelementptr inbounds %struct._GString, %struct._GString* %68, i32 0, i32 0
  %69 = load i8*, i8** %str94, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %69, i64 %idxprom92
  %70 = load i8, i8* %arrayidx95, align 1
  %conv96 = sext i8 %70 to i32
  %cmp97 = icmp eq i32 %conv96, 115
  br i1 %cmp97, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %lor.lhs.false.90, %land.lhs.true.81
  %71 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %72 = bitcast %struct._GimpTagEntry* %71 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_editable_get_type() #8
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call100)
  %73 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkEditable*
  %74 = load i32, i32* %start_pos, align 4
  %75 = load i32, i32* %end_pos, align 4
  call void @gtk_editable_select_region(%struct._GtkEditable* %73, i32 %74, i32 %75)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %lor.lhs.false.90, %land.lhs.true.78, %if.else
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.73
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_entry_strip_extra_whitespace(%struct._GimpTagEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpTagEntry*, align 8
  %i = alloca i32, align 4
  %position = alloca i32, align 4
  store %struct._GimpTagEntry* %entry1, %struct._GimpTagEntry** %entry.addr, align 8
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpTagEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_editable_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEditable*
  %call3 = call i32 @gtk_editable_get_position(%struct._GtkEditable* %2)
  store i32 %call3, i32* %position, align 4
  %3 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %internal_operation = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %3, i32 0, i32 7
  %4 = load i32, i32* %internal_operation, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %internal_operation, align 4
  %5 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %suppress_tag_query = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %5, i32 0, i32 9
  %6 = load i32, i32* %suppress_tag_query, align 4
  %inc4 = add nsw i32 %6, 1
  store i32 %inc4, i32* %suppress_tag_query, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %7, i32 0, i32 2
  %8 = load %struct._GString*, %struct._GString** %mask, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %8, i32 0, i32 1
  %9 = load i64, i64* %len, align 8
  %cmp = icmp ugt i64 %9, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask5 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %10, i32 0, i32 2
  %11 = load %struct._GString*, %struct._GString** %mask5, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %cmp6 = icmp eq i32 %conv, 119
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %16 = bitcast %struct._GimpTagEntry* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_editable_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkEditable*
  call void @gtk_editable_delete_text(%struct._GtkEditable* %17, i32 0, i32 1)
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.10

while.cond.10:                                    ; preds = %if.end, %while.end
  %18 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask11 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %18, i32 0, i32 2
  %19 = load %struct._GString*, %struct._GString** %mask11, align 8
  %len12 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 1
  %20 = load i64, i64* %len12, align 8
  %cmp13 = icmp ugt i64 %20, 1
  br i1 %cmp13, label %land.lhs.true, label %land.end.33

land.lhs.true:                                    ; preds = %while.cond.10
  %21 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask15 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %21, i32 0, i32 2
  %22 = load %struct._GString*, %struct._GString** %mask15, align 8
  %len16 = getelementptr inbounds %struct._GString, %struct._GString* %22, i32 0, i32 1
  %23 = load i64, i64* %len16, align 8
  %sub = sub i64 %23, 1
  %24 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask17 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %24, i32 0, i32 2
  %25 = load %struct._GString*, %struct._GString** %mask17, align 8
  %str18 = getelementptr inbounds %struct._GString, %struct._GString* %25, i32 0, i32 0
  %26 = load i8*, i8** %str18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %26, i64 %sub
  %27 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %27 to i32
  %cmp21 = icmp eq i32 %conv20, 119
  br i1 %cmp21, label %land.rhs.23, label %land.end.33

land.rhs.23:                                      ; preds = %land.lhs.true
  %28 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask24 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %28, i32 0, i32 2
  %29 = load %struct._GString*, %struct._GString** %mask24, align 8
  %len25 = getelementptr inbounds %struct._GString, %struct._GString* %29, i32 0, i32 1
  %30 = load i64, i64* %len25, align 8
  %sub26 = sub i64 %30, 2
  %31 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask27 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %31, i32 0, i32 2
  %32 = load %struct._GString*, %struct._GString** %mask27, align 8
  %str28 = getelementptr inbounds %struct._GString, %struct._GString* %32, i32 0, i32 0
  %33 = load i8*, i8** %str28, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %33, i64 %sub26
  %34 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %34 to i32
  %cmp31 = icmp eq i32 %conv30, 119
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.23, %land.lhs.true, %while.cond.10
  %35 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.10 ], [ %cmp31, %land.rhs.23 ]
  br i1 %35, label %while.body.34, label %while.end.49

while.body.34:                                    ; preds = %land.end.33
  %36 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %37 = bitcast %struct._GimpTagEntry* %36 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_editable_get_type() #8
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call35)
  %38 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkEditable*
  %39 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask37 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %39, i32 0, i32 2
  %40 = load %struct._GString*, %struct._GString** %mask37, align 8
  %len38 = getelementptr inbounds %struct._GString, %struct._GString* %40, i32 0, i32 1
  %41 = load i64, i64* %len38, align 8
  %sub39 = sub i64 %41, 1
  %conv40 = trunc i64 %sub39 to i32
  %42 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask41 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %42, i32 0, i32 2
  %43 = load %struct._GString*, %struct._GString** %mask41, align 8
  %len42 = getelementptr inbounds %struct._GString, %struct._GString* %43, i32 0, i32 1
  %44 = load i64, i64* %len42, align 8
  %conv43 = trunc i64 %44 to i32
  call void @gtk_editable_delete_text(%struct._GtkEditable* %38, i32 %conv40, i32 %conv43)
  %45 = load i32, i32* %position, align 4
  %conv44 = sext i32 %45 to i64
  %46 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask45 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %46, i32 0, i32 2
  %47 = load %struct._GString*, %struct._GString** %mask45, align 8
  %len46 = getelementptr inbounds %struct._GString, %struct._GString* %47, i32 0, i32 1
  %48 = load i64, i64* %len46, align 8
  %cmp47 = icmp eq i64 %conv44, %48
  br i1 %cmp47, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.34
  %49 = load i32, i32* %position, align 4
  %dec = add nsw i32 %49, -1
  store i32 %dec, i32* %position, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.34
  br label %while.cond.10

while.end.49:                                     ; preds = %land.end.33
  %50 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask50 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %50, i32 0, i32 2
  %51 = load %struct._GString*, %struct._GString** %mask50, align 8
  %len51 = getelementptr inbounds %struct._GString, %struct._GString* %51, i32 0, i32 1
  %52 = load i64, i64* %len51, align 8
  %sub52 = sub i64 %52, 1
  %conv53 = trunc i64 %sub52 to i32
  store i32 %conv53, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.49
  %53 = load i32, i32* %i, align 4
  %cmp54 = icmp sgt i32 %53, 0
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %i, align 4
  %idxprom = sext i32 %54 to i64
  %55 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask56 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %55, i32 0, i32 2
  %56 = load %struct._GString*, %struct._GString** %mask56, align 8
  %str57 = getelementptr inbounds %struct._GString, %struct._GString* %56, i32 0, i32 0
  %57 = load i8*, i8** %str57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %57, i64 %idxprom
  %58 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %58 to i32
  %cmp60 = icmp eq i32 %conv59, 119
  br i1 %cmp60, label %land.lhs.true.62, label %if.end.79

land.lhs.true.62:                                 ; preds = %for.body
  %59 = load i32, i32* %i, align 4
  %sub63 = sub nsw i32 %59, 1
  %idxprom64 = sext i32 %sub63 to i64
  %60 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask65 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %60, i32 0, i32 2
  %61 = load %struct._GString*, %struct._GString** %mask65, align 8
  %str66 = getelementptr inbounds %struct._GString, %struct._GString* %61, i32 0, i32 0
  %62 = load i8*, i8** %str66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %62, i64 %idxprom64
  %63 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %63 to i32
  %cmp69 = icmp eq i32 %conv68, 119
  br i1 %cmp69, label %if.then.71, label %if.end.79

if.then.71:                                       ; preds = %land.lhs.true.62
  %64 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %65 = bitcast %struct._GimpTagEntry* %64 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_editable_get_type() #8
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call72)
  %66 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkEditable*
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %i, align 4
  %add = add nsw i32 %68, 1
  call void @gtk_editable_delete_text(%struct._GtkEditable* %66, i32 %67, i32 %add)
  %69 = load i32, i32* %position, align 4
  %70 = load i32, i32* %i, align 4
  %cmp74 = icmp sge i32 %69, %70
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.then.71
  %71 = load i32, i32* %position, align 4
  %dec77 = add nsw i32 %71, -1
  store i32 %dec77, i32* %position, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.then.71
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %land.lhs.true.62, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %72 = load i32, i32* %i, align 4
  %dec80 = add nsw i32 %72, -1
  store i32 %dec80, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %73 = load i32, i32* %position, align 4
  %conv81 = sext i32 %73 to i64
  %74 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask82 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %74, i32 0, i32 2
  %75 = load %struct._GString*, %struct._GString** %mask82, align 8
  %len83 = getelementptr inbounds %struct._GString, %struct._GString* %75, i32 0, i32 1
  %76 = load i64, i64* %len83, align 8
  %sub84 = sub i64 %76, 1
  %cmp85 = icmp eq i64 %conv81, %sub84
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.97

land.lhs.true.87:                                 ; preds = %for.end
  %77 = load i32, i32* %position, align 4
  %idxprom88 = sext i32 %77 to i64
  %78 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mask89 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %78, i32 0, i32 2
  %79 = load %struct._GString*, %struct._GString** %mask89, align 8
  %str90 = getelementptr inbounds %struct._GString, %struct._GString* %79, i32 0, i32 0
  %80 = load i8*, i8** %str90, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %80, i64 %idxprom88
  %81 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %81 to i32
  %cmp93 = icmp eq i32 %conv92, 119
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %land.lhs.true.87
  %82 = load i32, i32* %position, align 4
  %inc96 = add nsw i32 %82, 1
  store i32 %inc96, i32* %position, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %land.lhs.true.87, %for.end
  %83 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %84 = bitcast %struct._GimpTagEntry* %83 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_editable_get_type() #8
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call98)
  %85 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkEditable*
  %86 = load i32, i32* %position, align 4
  call void @gtk_editable_set_position(%struct._GtkEditable* %85, i32 %86)
  %87 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %suppress_tag_query100 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %87, i32 0, i32 9
  %88 = load i32, i32* %suppress_tag_query100, align 4
  %dec101 = add nsw i32 %88, -1
  store i32 %dec101, i32* %suppress_tag_query100, align 4
  %89 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %internal_operation102 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %89, i32 0, i32 7
  %90 = load i32, i32* %internal_operation102, align 4
  %dec103 = add nsw i32 %90, -1
  store i32 %dec103, i32* %internal_operation102, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_entry_add_to_recent(%struct._GimpTagEntry* %entry1, i8* %tags_string, i32 %to_front) #3 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct._GimpTagEntry*, align 8
  %tags_string.addr = alloca i8*, align 8
  %to_front.addr = alloca i32, align 4
  %recent_item = alloca i8*, align 8
  %stripped_string = alloca i8*, align 8
  %stripped_length = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %last_item = alloca i8*, align 8
  store %struct._GimpTagEntry* %entry1, %struct._GimpTagEntry** %entry.addr, align 8
  store i8* %tags_string, i8** %tags_string.addr, align 8
  store i32 %to_front, i32* %to_front.addr, align 4
  store i8* null, i8** %recent_item, align 8
  %0 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %mode = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %0, i32 0, i32 10
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %tags_string.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %2)
  store i8* %call, i8** %stripped_string, align 8
  %3 = load i8*, i8** %stripped_string, align 8
  %call2 = call i8* @g_strchug(i8* %3)
  %call3 = call i8* @g_strchomp(i8* %call2)
  store i8* %call3, i8** %stripped_string, align 8
  %4 = load i8*, i8** %stripped_string, align 8
  %call4 = call i64 @strlen(i8* %4) #9
  %conv = trunc i64 %call4 to i32
  store i32 %conv, i32* %stripped_length, align 4
  %5 = load i8*, i8** %stripped_string, align 8
  call void @g_free(i8* %5)
  %6 = load i32, i32* %stripped_length, align 4
  %cmp5 = icmp sle i32 %6, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %7 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %recent_list = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %7, i32 0, i32 5
  %8 = load %struct._GList*, %struct._GList** %recent_list, align 8
  %call9 = call i32 @g_list_length(%struct._GList* %8)
  %cmp10 = icmp uge i32 %call9, 20
  br i1 %cmp10, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end.8
  %9 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %recent_list13 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %9, i32 0, i32 5
  %10 = load %struct._GList*, %struct._GList** %recent_list13, align 8
  %call14 = call %struct._GList* @g_list_last(%struct._GList* %10)
  %data = getelementptr inbounds %struct._GList, %struct._GList* %call14, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8
  store i8* %11, i8** %last_item, align 8
  %12 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %recent_list15 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %12, i32 0, i32 5
  %13 = load %struct._GList*, %struct._GList** %recent_list15, align 8
  %14 = load i8*, i8** %last_item, align 8
  %call16 = call %struct._GList* @g_list_remove(%struct._GList* %13, i8* %14)
  %15 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %recent_list17 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %15, i32 0, i32 5
  store %struct._GList* %call16, %struct._GList** %recent_list17, align 8
  %16 = load i8*, i8** %last_item, align 8
  call void @g_free(i8* %16)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %if.end.8
  %17 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %recent_list19 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %17, i32 0, i32 5
  %18 = load %struct._GList*, %struct._GList** %recent_list19, align 8
  store %struct._GList* %18, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.18
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %19, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i8*, i8** %tags_string.addr, align 8
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %data20 = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 0
  %22 = load i8*, i8** %data20, align 8
  %call21 = call i32 @strcmp(i8* %20, i8* %22) #9
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.28, label %if.then.23

if.then.23:                                       ; preds = %for.body
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %data24 = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 0
  %24 = load i8*, i8** %data24, align 8
  store i8* %24, i8** %recent_item, align 8
  %25 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %recent_list25 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %25, i32 0, i32 5
  %26 = load %struct._GList*, %struct._GList** %recent_list25, align 8
  %27 = load i8*, i8** %recent_item, align 8
  %call26 = call %struct._GList* @g_list_remove(%struct._GList* %26, i8* %27)
  %28 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %recent_list27 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %28, i32 0, i32 5
  store %struct._GList* %call26, %struct._GList** %recent_list27, align 8
  br label %for.end

if.end.28:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool29 = icmp ne %struct._GList* %29, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 1
  %31 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %31, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.23, %for.cond
  %32 = load i8*, i8** %recent_item, align 8
  %tobool30 = icmp ne i8* %32, null
  br i1 %tobool30, label %if.end.33, label %if.then.31

if.then.31:                                       ; preds = %for.end
  %33 = load i8*, i8** %tags_string.addr, align 8
  %call32 = call noalias i8* @g_strdup(i8* %33)
  store i8* %call32, i8** %recent_item, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %for.end
  %34 = load i32, i32* %to_front.addr, align 4
  %tobool34 = icmp ne i32 %34, 0
  br i1 %tobool34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.33
  %35 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %recent_list36 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %35, i32 0, i32 5
  %36 = load %struct._GList*, %struct._GList** %recent_list36, align 8
  %37 = load i8*, i8** %recent_item, align 8
  %call37 = call %struct._GList* @g_list_prepend(%struct._GList* %36, i8* %37)
  %38 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %recent_list38 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %38, i32 0, i32 5
  store %struct._GList* %call37, %struct._GList** %recent_list38, align 8
  br label %if.end.42

if.else:                                          ; preds = %if.end.33
  %39 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %recent_list39 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %39, i32 0, i32 5
  %40 = load %struct._GList*, %struct._GList** %recent_list39, align 8
  %41 = load i8*, i8** %recent_item, align 8
  %call40 = call %struct._GList* @g_list_append(%struct._GList* %40, i8* %41)
  %42 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %entry.addr, align 8
  %recent_list41 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %42, i32 0, i32 5
  store %struct._GList* %call40, %struct._GList** %recent_list41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.35
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.7, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare %struct._GList* @g_list_first(%struct._GList*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_last(%struct._GList*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare %struct._GdkDrawable* @gtk_entry_get_text_window(%struct._GtkEntry*) #1

declare %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget*, i8*) #1

declare %struct._PangoAttrList* @pango_attr_list_new() #1

declare %struct._PangoAttribute* @pango_attr_style_new(i32) #1

declare void @pango_attr_list_insert(%struct._PangoAttrList*, %struct._PangoAttribute*) #1

declare void @pango_layout_set_attributes(%struct._PangoLayout*, %struct._PangoAttrList*) #1

declare void @pango_attr_list_unref(%struct._PangoAttrList*) #1

declare i32 @gdk_window_get_width(%struct._GdkDrawable*) #1

declare i32 @gdk_window_get_height(%struct._GdkDrawable*) #1

declare void @pango_layout_get_size(%struct._PangoLayout*, i32*, i32*) #1

declare void @gtk_paint_layout(%struct._GtkStyle*, %struct._GdkDrawable*, i32, i32, %struct._GdkRectangle*, %struct._GtkWidget*, i8*, i32, i32, %struct._PangoLayout*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

declare %struct._GimpTag* @gimp_tag_try_new(i8*) #1

declare void @gimp_tagged_container_set_filter(%struct._GimpTaggedContainer*, %struct._GList*) #1

declare void @gimp_tag_or_null_unref(%struct._GimpTag*) #1

declare %struct._GimpTag* @gimp_tag_new(i8*) #1

declare %struct._GList* @g_list_find_custom(%struct._GList*, i8*, i32 (i8*, i8*)*) #1

declare i8* @g_object_ref(i8*) #1

declare void @gimp_tagged_remove_tag(%struct._GimpTagged*, %struct._GimpTag*) #1

declare void @gimp_tagged_add_tag(%struct._GimpTagged*, %struct._GimpTag*) #1

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

declare i32 @gimp_tag_get_hash(%struct._GimpTag*) #1

declare i32 @gimp_tag_equals(%struct._GimpTag*, %struct._GimpTag*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_find_common_tags(i8* %key, i8* %value, i8* %user_data) #3 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %ref_count = alloca i32, align 4
  %tag_entry = alloca %struct._GimpTagEntry*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %ref_count, align 4
  %2 = load i8*, i8** %user_data.addr, align 8
  %3 = bitcast i8* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_entry_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTagEntry*
  store %struct._GimpTagEntry* %4, %struct._GimpTagEntry** %tag_entry, align 8
  %5 = load i32, i32* %ref_count, align 4
  %6 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  %selected_items = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %6, i32 0, i32 3
  %7 = load %struct._GList*, %struct._GList** %selected_items, align 8
  %call2 = call i32 @g_list_length(%struct._GList* %7)
  %cmp = icmp eq i32 %5, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  %common_tags = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %8, i32 0, i32 4
  %9 = load %struct._GList*, %struct._GList** %common_tags, align 8
  %10 = load i8*, i8** %key.addr, align 8
  %call4 = call i8* @g_object_ref(i8* %10)
  %call5 = call %struct._GList* @g_list_prepend(%struct._GList* %9, i8* %call4)
  %11 = load %struct._GimpTagEntry*, %struct._GimpTagEntry** %tag_entry, align 8
  %common_tags6 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %11, i32 0, i32 4
  store %struct._GList* %call5, %struct._GList** %common_tags6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gtk_editable_get_chars(%struct._GtkEditable*, i32, i32) #1

declare %struct._GString* @g_string_new_len(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_entry_commit_region(%struct._GString* %tags, %struct._GString* %mask) #3 {
entry:
  %tags.addr = alloca %struct._GString*, align 8
  %mask.addr = alloca %struct._GString*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %stage = alloca i32, align 4
  %c = alloca i32, align 4
  %cursor = alloca i8*, align 8
  %out_tags = alloca %struct._GString*, align 8
  %out_mask = alloca %struct._GString*, align 8
  %tag_buffer = alloca %struct._GString*, align 8
  %valid_tag = alloca i8*, align 8
  %tag_length = alloca i64, align 8
  store %struct._GString* %tags, %struct._GString** %tags.addr, align 8
  store %struct._GString* %mask, %struct._GString** %mask.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %stage, align 4
  %call = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GString* %call, %struct._GString** %out_tags, align 8
  %call1 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GString* %call1, %struct._GString** %out_mask, align 8
  %call2 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GString* %call2, %struct._GString** %tag_buffer, align 8
  %0 = load %struct._GString*, %struct._GString** %tags.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 0
  %1 = load i8*, i8** %str, align 8
  store i8* %1, i8** %cursor, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.64, %entry
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %3 = load %struct._GString*, %struct._GString** %mask.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %3, i32 0, i32 1
  %4 = load i64, i64* %len, align 8
  %cmp = icmp ule i64 %conv, %4
  br i1 %cmp, label %for.body, label %for.end.66

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %cursor, align 8
  %call4 = call i32 @g_utf8_get_char(i8* %5) #9
  store i32 %call4, i32* %c, align 4
  %6 = load i8*, i8** %cursor, align 8
  %7 = load i8*, i8** %cursor, align 8
  %8 = load i8, i8* %7, align 1
  %idxprom = zext i8 %8 to i64
  %9 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv5 = sext i8 %10 to i32
  %idx.ext = sext i32 %conv5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %cursor, align 8
  %11 = load i32, i32* %stage, align 4
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %c, align 4
  %call8 = call i32 @g_unichar_isspace(i32 %12) #8
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %13 = load %struct._GString*, %struct._GString** %out_tags, align 8
  %14 = load i32, i32* %c, align 4
  %call10 = call %struct._GString* @g_string_append_unichar(%struct._GString* %13, i32 %14)
  %15 = load %struct._GString*, %struct._GString** %out_mask, align 8
  %call11 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %15, i8 signext 119)
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load i32, i32* %stage, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %stage, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %for.body
  %17 = load i32, i32* %stage, align 4
  %cmp13 = icmp eq i32 %17, 1
  br i1 %cmp13, label %if.then.15, label %if.end.46

if.then.15:                                       ; preds = %if.end.12
  %18 = load i32, i32* %c, align 4
  %tobool16 = icmp ne i32 %18, 0
  br i1 %tobool16, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %if.then.15
  %19 = load i32, i32* %c, align 4
  %call17 = call i32 @gimp_tag_is_tag_separator(i32 %19)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else.21, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true
  %20 = load %struct._GString*, %struct._GString** %tag_buffer, align 8
  %21 = load i32, i32* %c, align 4
  %call20 = call %struct._GString* @g_string_append_unichar(%struct._GString* %20, i32 %21)
  br label %if.end.45

if.else.21:                                       ; preds = %land.lhs.true, %if.then.15
  %22 = load %struct._GString*, %struct._GString** %tag_buffer, align 8
  %str22 = getelementptr inbounds %struct._GString, %struct._GString* %22, i32 0, i32 0
  %23 = load i8*, i8** %str22, align 8
  %call23 = call i8* @gimp_tag_string_make_valid(i8* %23)
  store i8* %call23, i8** %valid_tag, align 8
  %24 = load i8*, i8** %valid_tag, align 8
  %tobool24 = icmp ne i8* %24, null
  br i1 %tobool24, label %if.then.25, label %if.else.42

if.then.25:                                       ; preds = %if.else.21
  %25 = load i8*, i8** %valid_tag, align 8
  %call26 = call i64 @g_utf8_strlen(i8* %25, i64 -1) #9
  store i64 %call26, i64* %tag_length, align 8
  %26 = load %struct._GString*, %struct._GString** %out_tags, align 8
  %27 = load i8*, i8** %valid_tag, align 8
  %call27 = call %struct._GString* @g_string_append(%struct._GString* %26, i8* %27)
  store i32 0, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %if.then.25
  %28 = load i32, i32* %j, align 4
  %conv29 = sext i32 %28 to i64
  %29 = load i64, i64* %tag_length, align 8
  %cmp30 = icmp ult i64 %conv29, %29
  br i1 %cmp30, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.28
  %30 = load %struct._GString*, %struct._GString** %out_mask, align 8
  %call33 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %30, i8 signext 116)
  br label %for.inc

for.inc:                                          ; preds = %for.body.32
  %31 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %31, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  %32 = load i8*, i8** %valid_tag, align 8
  call void @g_free(i8* %32)
  %33 = load i32, i32* %c, align 4
  %tobool35 = icmp ne i32 %33, 0
  br i1 %tobool35, label %if.end.40, label %if.then.36

if.then.36:                                       ; preds = %for.end
  %34 = load %struct._GString*, %struct._GString** %out_tags, align 8
  %call37 = call i8* @gimp_tag_entry_get_separator()
  %call38 = call %struct._GString* @g_string_append(%struct._GString* %34, i8* %call37)
  %35 = load %struct._GString*, %struct._GString** %out_mask, align 8
  %call39 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %35, i8 signext 115)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %for.end
  %36 = load i32, i32* %stage, align 4
  %inc41 = add nsw i32 %36, 1
  store i32 %inc41, i32* %stage, align 4
  br label %if.end.43

if.else.42:                                       ; preds = %if.else.21
  store i32 0, i32* %stage, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.end.40
  %37 = load %struct._GString*, %struct._GString** %tag_buffer, align 8
  %call44 = call %struct._GString* @g_string_set_size(%struct._GString* %37, i64 0)
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.43, %if.then.19
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.12
  %38 = load i32, i32* %stage, align 4
  %cmp47 = icmp eq i32 %38, 2
  br i1 %cmp47, label %if.then.49, label %if.end.63

if.then.49:                                       ; preds = %if.end.46
  %39 = load i32, i32* %c, align 4
  %call50 = call i32 @gimp_tag_is_tag_separator(i32 %39)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.55

if.then.52:                                       ; preds = %if.then.49
  %40 = load %struct._GString*, %struct._GString** %out_tags, align 8
  %41 = load i32, i32* %c, align 4
  %call53 = call %struct._GString* @g_string_append_unichar(%struct._GString* %40, i32 %41)
  %42 = load %struct._GString*, %struct._GString** %out_mask, align 8
  %call54 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %42, i8 signext 115)
  br label %if.end.62

if.else.55:                                       ; preds = %if.then.49
  %43 = load i32, i32* %c, align 4
  %call56 = call i32 @g_unichar_isspace(i32 %43) #8
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %if.else.55
  %44 = load %struct._GString*, %struct._GString** %out_tags, align 8
  %45 = load i32, i32* %c, align 4
  %call59 = call %struct._GString* @g_string_append_unichar(%struct._GString* %44, i32 %45)
  %46 = load %struct._GString*, %struct._GString** %out_mask, align 8
  %call60 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %46, i8 signext 119)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.else.55
  store i32 0, i32* %stage, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.52
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.46
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %47 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %47, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond

for.end.66:                                       ; preds = %for.cond
  %48 = load %struct._GString*, %struct._GString** %tags.addr, align 8
  %49 = load %struct._GString*, %struct._GString** %out_tags, align 8
  %str67 = getelementptr inbounds %struct._GString, %struct._GString* %49, i32 0, i32 0
  %50 = load i8*, i8** %str67, align 8
  %call68 = call %struct._GString* @g_string_assign(%struct._GString* %48, i8* %50)
  %51 = load %struct._GString*, %struct._GString** %mask.addr, align 8
  %52 = load %struct._GString*, %struct._GString** %out_mask, align 8
  %str69 = getelementptr inbounds %struct._GString, %struct._GString* %52, i32 0, i32 0
  %53 = load i8*, i8** %str69, align 8
  %call70 = call %struct._GString* @g_string_assign(%struct._GString* %51, i8* %53)
  %54 = load %struct._GString*, %struct._GString** %tag_buffer, align 8
  %call71 = call i8* @g_string_free(%struct._GString* %54, i32 1)
  %55 = load %struct._GString*, %struct._GString** %out_tags, align 8
  %call72 = call i8* @g_string_free(%struct._GString* %55, i32 1)
  %56 = load %struct._GString*, %struct._GString** %out_mask, align 8
  %call73 = call i8* @g_string_free(%struct._GString* %56, i32 1)
  ret void
}

declare %struct._GString* @g_string_prepend_c(%struct._GString*, i8 signext) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #7 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare %struct._GString* @g_string_insert_len(%struct._GString*, i64, i8*, i64) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare %struct._GString* @g_string_assign(%struct._GString*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
