; ModuleID = './app/widgets/gimpcombotagentry.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpComboTagEntryClass = type { %struct._GimpTagEntryClass }
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
%struct._GimpComboTagEntry = type { %struct._GimpTagEntry, %struct._GdkPixbuf*, %struct._GtkWidget*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._GdkColor }
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
%struct._GdkPixbuf = type opaque
%struct._PangoAttrList = type opaque
%struct._cairo = type opaque
%struct._PangoAttribute = type { %struct._PangoAttrClass*, i32, i32 }
%struct._PangoAttrClass = type { i32, %struct._PangoAttribute* (%struct._PangoAttribute*)*, void (%struct._PangoAttribute*)*, i32 (%struct._PangoAttribute*, %struct._PangoAttribute*)* }
%struct._GimpTagPopup = type { %struct._GtkWindow, %struct._GimpComboTagEntry*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._PangoContext*, %struct._PangoLayout*, %struct._PopupTagData*, i32, %struct._PopupTagData*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._PangoContext = type opaque
%struct._PopupTagData = type opaque

@gimp_combo_tag_entry_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpComboTagEntry\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_combo_tag_entry_new = private unnamed_addr constant [25 x i8] c"gimp_combo_tag_entry_new\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"GIMP_IS_TAGGED_CONTAINER (container)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@gimp_combo_tag_entry_parent_class = internal global i8* null, align 8
@GimpComboTagEntry_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"tag-count-changed\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"gtk-go-down\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"icon-press\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_combo_tag_entry_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_combo_tag_entry_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_combo_tag_entry_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_tag_entry_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_combo_tag_entry_class_intern_init to void (i8*, i8*)*), i32 336, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpComboTagEntry*)* @gimp_combo_tag_entry_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_combo_tag_entry_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_combo_tag_entry_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tag_entry_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_combo_tag_entry_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_combo_tag_entry_parent_class, align 8
  %1 = load i32, i32* @GimpComboTagEntry_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpComboTagEntry_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpComboTagEntryClass*
  call void @gimp_combo_tag_entry_class_init(%struct._GimpComboTagEntryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_combo_tag_entry_init(%struct._GimpComboTagEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpComboTagEntry*, align 8
  store %struct._GimpComboTagEntry* %entry1, %struct._GimpComboTagEntry** %entry.addr, align 8
  %0 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry.addr, align 8
  %popup = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %0, i32 0, i32 2
  store %struct._GtkWidget* null, %struct._GtkWidget** %popup, align 8
  %1 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry.addr, align 8
  %normal_item_attr = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %1, i32 0, i32 3
  store %struct._PangoAttrList* null, %struct._PangoAttrList** %normal_item_attr, align 8
  %2 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry.addr, align 8
  %selected_item_attr = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %2, i32 0, i32 4
  store %struct._PangoAttrList* null, %struct._PangoAttrList** %selected_item_attr, align 8
  %3 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry.addr, align 8
  %insensitive_item_attr = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %3, i32 0, i32 5
  store %struct._PangoAttrList* null, %struct._PangoAttrList** %insensitive_item_attr, align 8
  %4 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry.addr, align 8
  %5 = bitcast %struct._GimpComboTagEntry* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  call void @gtk_widget_add_events(%struct._GtkWidget* %6, i32 260)
  %7 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry.addr, align 8
  %8 = bitcast %struct._GimpComboTagEntry* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_entry_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkEntry*
  call void @gtk_entry_set_icon_from_stock(%struct._GtkEntry* %9, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %10 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry.addr, align 8
  %11 = bitcast %struct._GimpComboTagEntry* %10 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %union._GdkEvent*, i8*)* @gimp_combo_tag_entry_icon_press to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_combo_tag_entry_new(%struct._GimpTaggedContainer* %container, i32 %mode) #3 {
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
  %call = call i64 @gimp_tagged_container_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_combo_tag_entry_new, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_combo_tag_entry_get_type() #6
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

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_combo_tag_entry_class_init(%struct._GimpComboTagEntryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpComboTagEntryClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpComboTagEntryClass* %klass, %struct._GimpComboTagEntryClass** %klass.addr, align 8
  %0 = load %struct._GimpComboTagEntryClass*, %struct._GimpComboTagEntryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpComboTagEntryClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpComboTagEntryClass*, %struct._GimpComboTagEntryClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpComboTagEntryClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_combo_tag_entry_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_combo_tag_entry_dispose, void (%struct._GObject*)** %dispose, align 8
  %8 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %8, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_combo_tag_entry_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_combo_tag_entry_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_combo_tag_entry_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %entry1 = alloca %struct._GimpComboTagEntry*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_combo_tag_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpComboTagEntry*
  store %struct._GimpComboTagEntry* %2, %struct._GimpComboTagEntry** %entry1, align 8
  %3 = load i8*, i8** @gimp_combo_tag_entry_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_combo_tag_entry_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed5 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed5, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %13 = bitcast %struct._GimpComboTagEntry* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_tag_entry_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpTagEntry*
  %container = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %14, i32 0, i32 1
  %15 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container, align 8
  %16 = bitcast %struct._GimpTaggedContainer* %15 to i8*
  %17 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %18 = bitcast %struct._GimpComboTagEntry* %17 to i8*
  %call8 = call i64 @g_signal_connect_object(i8* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTaggedContainer*, i32, %struct._GimpComboTagEntry*)* @gimp_combo_tag_entry_tag_count_changed to void ()*), i8* %18, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_combo_tag_entry_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %combo_entry = alloca %struct._GimpComboTagEntry*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_combo_tag_entry_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpComboTagEntry*
  store %struct._GimpComboTagEntry* %2, %struct._GimpComboTagEntry** %combo_entry, align 8
  %3 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %arrow_pixbuf = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %3, i32 0, i32 1
  %4 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %arrow_pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %arrow_pixbuf2 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %5, i32 0, i32 1
  %6 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %arrow_pixbuf2, align 8
  %7 = bitcast %struct._GdkPixbuf* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %arrow_pixbuf3 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %8, i32 0, i32 1
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %arrow_pixbuf3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %normal_item_attr = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %9, i32 0, i32 3
  %10 = load %struct._PangoAttrList*, %struct._PangoAttrList** %normal_item_attr, align 8
  %tobool4 = icmp ne %struct._PangoAttrList* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %normal_item_attr6 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %11, i32 0, i32 3
  %12 = load %struct._PangoAttrList*, %struct._PangoAttrList** %normal_item_attr6, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %12)
  %13 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %normal_item_attr7 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %13, i32 0, i32 3
  store %struct._PangoAttrList* null, %struct._PangoAttrList** %normal_item_attr7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %14 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %selected_item_attr = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %14, i32 0, i32 4
  %15 = load %struct._PangoAttrList*, %struct._PangoAttrList** %selected_item_attr, align 8
  %tobool9 = icmp ne %struct._PangoAttrList* %15, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %16 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %selected_item_attr11 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %16, i32 0, i32 4
  %17 = load %struct._PangoAttrList*, %struct._PangoAttrList** %selected_item_attr11, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %17)
  %18 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %selected_item_attr12 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %18, i32 0, i32 4
  store %struct._PangoAttrList* null, %struct._PangoAttrList** %selected_item_attr12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %19 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %insensitive_item_attr = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %19, i32 0, i32 5
  %20 = load %struct._PangoAttrList*, %struct._PangoAttrList** %insensitive_item_attr, align 8
  %tobool14 = icmp ne %struct._PangoAttrList* %20, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %21 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %insensitive_item_attr16 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %21, i32 0, i32 5
  %22 = load %struct._PangoAttrList*, %struct._PangoAttrList** %insensitive_item_attr16, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %22)
  %23 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %insensitive_item_attr17 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %23, i32 0, i32 5
  store %struct._PangoAttrList* null, %struct._PangoAttrList** %insensitive_item_attr17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %24 = load i8*, i8** @gimp_combo_tag_entry_parent_class, align 8
  %25 = bitcast i8* %24 to %struct._GTypeClass*
  %call19 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %25, i64 80)
  %26 = bitcast %struct._GTypeClass* %call19 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %26, i32 0, i32 5
  %27 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %28 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %27(%struct._GObject* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_combo_tag_entry_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %entry1 = alloca %struct._GimpComboTagEntry*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %pixmap = alloca %struct._GdkDrawable*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_combo_tag_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpComboTagEntry*
  store %struct._GimpComboTagEntry* %2, %struct._GimpComboTagEntry** %entry1, align 8
  %3 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %arrow_pixbuf = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %3, i32 0, i32 1
  %4 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %arrow_pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %5)
  store %struct._GtkStyle* %call3, %struct._GtkStyle** %style, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %6)
  %call5 = call %struct._GdkDrawable* @gdk_pixmap_new(%struct._GdkDrawable* %call4, i32 8, i32 8, i32 -1)
  store %struct._GdkDrawable* %call5, %struct._GdkDrawable** %pixmap, align 8
  %7 = load %struct._GdkDrawable*, %struct._GdkDrawable** %pixmap, align 8
  %call6 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %7)
  store %struct._cairo* %call6, %struct._cairo** %cr, align 8
  %8 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %9 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %base = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %9, i32 0, i32 7
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %8, %struct._GdkColor* %arrayidx)
  %10 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %10)
  %11 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %11)
  %12 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %13 = load %struct._GdkDrawable*, %struct._GdkDrawable** %pixmap, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_paint_arrow(%struct._GtkStyle* %12, %struct._GdkDrawable* %13, i32 0, i32 0, %struct._GdkRectangle* null, %struct._GtkWidget* %14, i8* null, i32 1, i32 1, i32 0, i32 0, i32 8, i32 8)
  %15 = load %struct._GdkDrawable*, %struct._GdkDrawable** %pixmap, align 8
  %call7 = call %struct._GdkPixbuf* @gdk_pixbuf_get_from_drawable(%struct._GdkPixbuf* null, %struct._GdkDrawable* %15, %struct._GdkColormap* null, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8)
  %16 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %arrow_pixbuf8 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %16, i32 0, i32 1
  store %struct._GdkPixbuf* %call7, %struct._GdkPixbuf** %arrow_pixbuf8, align 8
  %17 = load %struct._GdkDrawable*, %struct._GdkDrawable** %pixmap, align 8
  %18 = bitcast %struct._GdkDrawable* %17 to i8*
  call void @g_object_unref(i8* %18)
  %19 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %20 = bitcast %struct._GimpComboTagEntry* %19 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_entry_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call9)
  %21 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkEntry*
  %22 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %arrow_pixbuf11 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %22, i32 0, i32 1
  %23 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %arrow_pixbuf11, align 8
  call void @gtk_entry_set_icon_from_pixbuf(%struct._GtkEntry* %21, i32 1, %struct._GdkPixbuf* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load i8*, i8** @gimp_combo_tag_entry_parent_class, align 8
  %25 = bitcast i8* %24 to %struct._GTypeClass*
  %call12 = call i64 @gtk_widget_get_type() #6
  %call13 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %25, i64 %call12)
  %26 = bitcast %struct._GTypeClass* %call13 to %struct._GtkWidgetClass*
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %26, i32 0, i32 31
  %27 = load i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %29 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %call14 = call i32 %27(%struct._GtkWidget* %28, %struct._GdkEventExpose* %29)
  ret i32 %call14
}

; Function Attrs: nounwind uwtable
define internal void @gimp_combo_tag_entry_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %previous_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %previous_style.addr = alloca %struct._GtkStyle*, align 8
  %entry1 = alloca %struct._GimpComboTagEntry*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %color = alloca %struct._GdkColor, align 4
  %attribute = alloca %struct._PangoAttribute*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %previous_style, %struct._GtkStyle** %previous_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_combo_tag_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpComboTagEntry*
  store %struct._GimpComboTagEntry* %2, %struct._GimpComboTagEntry** %entry1, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call3, %struct._GtkStyle** %style, align 8
  %4 = load i8*, i8** @gimp_combo_tag_entry_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call4)
  %6 = bitcast %struct._GTypeClass* %call5 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %6, i32 0, i32 17
  %7 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %tobool = icmp ne void (%struct._GtkWidget*, %struct._GtkStyle*)* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** @gimp_combo_tag_entry_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call6 = call i64 @gtk_widget_get_type() #6
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call6)
  %10 = bitcast %struct._GTypeClass* %call7 to %struct._GtkWidgetClass*
  %style_set8 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 17
  %11 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set8, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = load %struct._GtkStyle*, %struct._GtkStyle** %previous_style.addr, align 8
  call void %11(%struct._GtkWidget* %12, %struct._GtkStyle* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %normal_item_attr = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %14, i32 0, i32 3
  %15 = load %struct._PangoAttrList*, %struct._PangoAttrList** %normal_item_attr, align 8
  %tobool9 = icmp ne %struct._PangoAttrList* %15, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %16 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %normal_item_attr11 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %16, i32 0, i32 3
  %17 = load %struct._PangoAttrList*, %struct._PangoAttrList** %normal_item_attr11, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %17)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %call13 = call %struct._PangoAttrList* @pango_attr_list_new()
  %18 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %normal_item_attr14 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %18, i32 0, i32 3
  store %struct._PangoAttrList* %call13, %struct._PangoAttrList** %normal_item_attr14, align 8
  %19 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %font_desc = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %19, i32 0, i32 11
  %20 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %tobool15 = icmp ne %struct._PangoFontDescription* %20, null
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.12
  %21 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %font_desc17 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %21, i32 0, i32 11
  %22 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc17, align 8
  %call18 = call %struct._PangoAttribute* @pango_attr_font_desc_new(%struct._PangoFontDescription* %22)
  store %struct._PangoAttribute* %call18, %struct._PangoAttribute** %attribute, align 8
  %23 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %normal_item_attr19 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %23, i32 0, i32 3
  %24 = load %struct._PangoAttrList*, %struct._PangoAttrList** %normal_item_attr19, align 8
  %25 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attribute, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %24, %struct._PangoAttribute* %25)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end.12
  %26 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %26, i32 0, i32 6
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text, i32 0, i64 0
  %27 = bitcast %struct._GdkColor* %color to i8*
  %28 = bitcast %struct._GdkColor* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 12, i32 4, i1 false)
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 1
  %29 = load i16, i16* %red, align 2
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 2
  %30 = load i16, i16* %green, align 2
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 3
  %31 = load i16, i16* %blue, align 2
  %call21 = call %struct._PangoAttribute* @pango_attr_foreground_new(i16 zeroext %29, i16 zeroext %30, i16 zeroext %31)
  store %struct._PangoAttribute* %call21, %struct._PangoAttribute** %attribute, align 8
  %32 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %normal_item_attr22 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %32, i32 0, i32 3
  %33 = load %struct._PangoAttrList*, %struct._PangoAttrList** %normal_item_attr22, align 8
  %34 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attribute, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %33, %struct._PangoAttribute* %34)
  %35 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %selected_item_attr = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %35, i32 0, i32 4
  %36 = load %struct._PangoAttrList*, %struct._PangoAttrList** %selected_item_attr, align 8
  %tobool23 = icmp ne %struct._PangoAttrList* %36, null
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.20
  %37 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %selected_item_attr25 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %37, i32 0, i32 4
  %38 = load %struct._PangoAttrList*, %struct._PangoAttrList** %selected_item_attr25, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %38)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.20
  %39 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %normal_item_attr27 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %39, i32 0, i32 3
  %40 = load %struct._PangoAttrList*, %struct._PangoAttrList** %normal_item_attr27, align 8
  %call28 = call %struct._PangoAttrList* @pango_attr_list_copy(%struct._PangoAttrList* %40)
  %41 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %selected_item_attr29 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %41, i32 0, i32 4
  store %struct._PangoAttrList* %call28, %struct._PangoAttrList** %selected_item_attr29, align 8
  %42 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text30 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %42, i32 0, i32 6
  %arrayidx31 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text30, i32 0, i64 3
  %43 = bitcast %struct._GdkColor* %color to i8*
  %44 = bitcast %struct._GdkColor* %arrayidx31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 12, i32 4, i1 false)
  %red32 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 1
  %45 = load i16, i16* %red32, align 2
  %green33 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 2
  %46 = load i16, i16* %green33, align 2
  %blue34 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 3
  %47 = load i16, i16* %blue34, align 2
  %call35 = call %struct._PangoAttribute* @pango_attr_foreground_new(i16 zeroext %45, i16 zeroext %46, i16 zeroext %47)
  store %struct._PangoAttribute* %call35, %struct._PangoAttribute** %attribute, align 8
  %48 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %selected_item_attr36 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %48, i32 0, i32 4
  %49 = load %struct._PangoAttrList*, %struct._PangoAttrList** %selected_item_attr36, align 8
  %50 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attribute, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %49, %struct._PangoAttribute* %50)
  %51 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %base = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %51, i32 0, i32 7
  %arrayidx37 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base, i32 0, i64 3
  %52 = bitcast %struct._GdkColor* %color to i8*
  %53 = bitcast %struct._GdkColor* %arrayidx37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 12, i32 4, i1 false)
  %red38 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 1
  %54 = load i16, i16* %red38, align 2
  %green39 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 2
  %55 = load i16, i16* %green39, align 2
  %blue40 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 3
  %56 = load i16, i16* %blue40, align 2
  %call41 = call %struct._PangoAttribute* @pango_attr_background_new(i16 zeroext %54, i16 zeroext %55, i16 zeroext %56)
  store %struct._PangoAttribute* %call41, %struct._PangoAttribute** %attribute, align 8
  %57 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %selected_item_attr42 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %57, i32 0, i32 4
  %58 = load %struct._PangoAttrList*, %struct._PangoAttrList** %selected_item_attr42, align 8
  %59 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attribute, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %58, %struct._PangoAttribute* %59)
  %60 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %insensitive_item_attr = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %60, i32 0, i32 5
  %61 = load %struct._PangoAttrList*, %struct._PangoAttrList** %insensitive_item_attr, align 8
  %tobool43 = icmp ne %struct._PangoAttrList* %61, null
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.26
  %62 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %insensitive_item_attr45 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %62, i32 0, i32 5
  %63 = load %struct._PangoAttrList*, %struct._PangoAttrList** %insensitive_item_attr45, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %63)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.26
  %64 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %normal_item_attr47 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %64, i32 0, i32 3
  %65 = load %struct._PangoAttrList*, %struct._PangoAttrList** %normal_item_attr47, align 8
  %call48 = call %struct._PangoAttrList* @pango_attr_list_copy(%struct._PangoAttrList* %65)
  %66 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %insensitive_item_attr49 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %66, i32 0, i32 5
  store %struct._PangoAttrList* %call48, %struct._PangoAttrList** %insensitive_item_attr49, align 8
  %67 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text50 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %67, i32 0, i32 6
  %arrayidx51 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text50, i32 0, i64 4
  %68 = bitcast %struct._GdkColor* %color to i8*
  %69 = bitcast %struct._GdkColor* %arrayidx51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 12, i32 4, i1 false)
  %red52 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 1
  %70 = load i16, i16* %red52, align 2
  %green53 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 2
  %71 = load i16, i16* %green53, align 2
  %blue54 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 3
  %72 = load i16, i16* %blue54, align 2
  %call55 = call %struct._PangoAttribute* @pango_attr_foreground_new(i16 zeroext %70, i16 zeroext %71, i16 zeroext %72)
  store %struct._PangoAttribute* %call55, %struct._PangoAttribute** %attribute, align 8
  %73 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %insensitive_item_attr56 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %73, i32 0, i32 5
  %74 = load %struct._PangoAttrList*, %struct._PangoAttrList** %insensitive_item_attr56, align 8
  %75 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attribute, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %74, %struct._PangoAttribute* %75)
  %76 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %base57 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %76, i32 0, i32 7
  %arrayidx58 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base57, i32 0, i64 4
  %77 = bitcast %struct._GdkColor* %color to i8*
  %78 = bitcast %struct._GdkColor* %arrayidx58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 12, i32 4, i1 false)
  %red59 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 1
  %79 = load i16, i16* %red59, align 2
  %green60 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 2
  %80 = load i16, i16* %green60, align 2
  %blue61 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 3
  %81 = load i16, i16* %blue61, align 2
  %call62 = call %struct._PangoAttribute* @pango_attr_background_new(i16 zeroext %79, i16 zeroext %80, i16 zeroext %81)
  store %struct._PangoAttribute* %call62, %struct._PangoAttribute** %attribute, align 8
  %82 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %insensitive_item_attr63 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %82, i32 0, i32 5
  %83 = load %struct._PangoAttrList*, %struct._PangoAttrList** %insensitive_item_attr63, align 8
  %84 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attribute, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %83, %struct._PangoAttribute* %84)
  %85 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %selected_item_color = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %85, i32 0, i32 6
  %86 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %base64 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %86, i32 0, i32 7
  %arrayidx65 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base64, i32 0, i64 3
  %87 = bitcast %struct._GdkColor* %selected_item_color to i8*
  %88 = bitcast %struct._GdkColor* %arrayidx65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 12, i32 4, i1 false)
  %89 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %arrow_pixbuf = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %89, i32 0, i32 1
  %90 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %arrow_pixbuf, align 8
  %tobool66 = icmp ne %struct._GdkPixbuf* %90, null
  br i1 %tobool66, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %if.end.46
  %91 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %arrow_pixbuf68 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %91, i32 0, i32 1
  %92 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %arrow_pixbuf68, align 8
  %93 = bitcast %struct._GdkPixbuf* %92 to i8*
  call void @g_object_unref(i8* %93)
  %94 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %arrow_pixbuf69 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %94, i32 0, i32 1
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %arrow_pixbuf69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %if.end.46
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_combo_tag_entry_tag_count_changed(%struct._GimpTaggedContainer* %container, i32 %tag_count, %struct._GimpComboTagEntry* %entry1) #3 {
entry:
  %container.addr = alloca %struct._GimpTaggedContainer*, align 8
  %tag_count.addr = alloca i32, align 4
  %entry.addr = alloca %struct._GimpComboTagEntry*, align 8
  %sensitive = alloca i32, align 4
  store %struct._GimpTaggedContainer* %container, %struct._GimpTaggedContainer** %container.addr, align 8
  store i32 %tag_count, i32* %tag_count.addr, align 4
  store %struct._GimpComboTagEntry* %entry1, %struct._GimpComboTagEntry** %entry.addr, align 8
  %0 = load i32, i32* %tag_count.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry.addr, align 8
  %2 = bitcast %struct._GimpComboTagEntry* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTagEntry*
  %has_invalid_tags = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %3, i32 0, i32 12
  %4 = load i32, i32* %has_invalid_tags, align 4
  %tobool = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %sensitive, align 4
  %6 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry.addr, align 8
  %7 = bitcast %struct._GimpComboTagEntry* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_entry_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkEntry*
  %9 = load i32, i32* %sensitive, align 4
  call void @gtk_entry_set_icon_sensitive(%struct._GtkEntry* %8, i32 1, i32 %9)
  ret void
}

declare void @gtk_entry_set_icon_sensitive(%struct._GtkEntry*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare void @g_object_unref(i8*) #1

declare void @pango_attr_list_unref(%struct._PangoAttrList*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare %struct._GdkDrawable* @gdk_pixmap_new(%struct._GdkDrawable*, i32, i32, i32) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gtk_paint_arrow(%struct._GtkStyle*, %struct._GdkDrawable*, i32, i32, %struct._GdkRectangle*, %struct._GtkWidget*, i8*, i32, i32, i32, i32, i32, i32) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_get_from_drawable(%struct._GdkPixbuf*, %struct._GdkDrawable*, %struct._GdkColormap*, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_entry_set_icon_from_pixbuf(%struct._GtkEntry*, i32, %struct._GdkPixbuf*) #1

declare %struct._PangoAttrList* @pango_attr_list_new() #1

declare %struct._PangoAttribute* @pango_attr_font_desc_new(%struct._PangoFontDescription*) #1

declare void @pango_attr_list_insert(%struct._PangoAttrList*, %struct._PangoAttribute*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare %struct._PangoAttribute* @pango_attr_foreground_new(i16 zeroext, i16 zeroext, i16 zeroext) #1

declare %struct._PangoAttrList* @pango_attr_list_copy(%struct._PangoAttrList*) #1

declare %struct._PangoAttribute* @pango_attr_background_new(i16 zeroext, i16 zeroext, i16 zeroext) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

declare void @gtk_entry_set_icon_from_stock(%struct._GtkEntry*, i32, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_combo_tag_entry_icon_press(%struct._GtkWidget* %widget, i32 %icon_pos, %union._GdkEvent* %event, i8* %user_data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %icon_pos.addr = alloca i32, align 4
  %event.addr = alloca %union._GdkEvent*, align 8
  %user_data.addr = alloca i8*, align 8
  %entry1 = alloca %struct._GimpComboTagEntry*, align 8
  %container = alloca %struct._GimpTaggedContainer*, align 8
  %tag_count = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %icon_pos, i32* %icon_pos.addr, align 4
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_combo_tag_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpComboTagEntry*
  store %struct._GimpComboTagEntry* %2, %struct._GimpComboTagEntry** %entry1, align 8
  %3 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %popup = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %3, i32 0, i32 2
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %popup, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %6 = bitcast %struct._GimpComboTagEntry* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_tag_entry_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTagEntry*
  %container5 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %7, i32 0, i32 1
  %8 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container5, align 8
  store %struct._GimpTaggedContainer* %8, %struct._GimpTaggedContainer** %container, align 8
  %9 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container, align 8
  %call6 = call i32 @gimp_tagged_container_get_tag_count(%struct._GimpTaggedContainer* %9)
  store i32 %call6, i32* %tag_count, align 4
  %10 = load i32, i32* %tag_count, align 4
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %12 = bitcast %struct._GimpComboTagEntry* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_tag_entry_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTagEntry*
  %has_invalid_tags = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %13, i32 0, i32 12
  %14 = load i32, i32* %has_invalid_tags, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true
  %15 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %call11 = call %struct._GtkWidget* @gimp_tag_popup_new(%struct._GimpComboTagEntry* %15)
  %16 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %popup12 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %16, i32 0, i32 2
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %popup12, align 8
  %17 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %popup13 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %17, i32 0, i32 2
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %popup13, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %21 = bitcast %struct._GimpComboTagEntry* %20 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkObject*, %struct._GimpComboTagEntry*)* @gimp_combo_tag_entry_popup_destroy to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %popup15 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %22, i32 0, i32 2
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %popup15, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_tag_popup_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpTagPopup*
  call void @gimp_tag_popup_show(%struct._GimpTagPopup* %25)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %land.lhs.true, %if.then
  br label %if.end.19

if.else:                                          ; preds = %entry
  %26 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry1, align 8
  %popup18 = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %26, i32 0, i32 2
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %popup18, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %27)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end
  ret void
}

declare i32 @gimp_tagged_container_get_tag_count(%struct._GimpTaggedContainer*) #1

declare %struct._GtkWidget* @gimp_tag_popup_new(%struct._GimpComboTagEntry*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_combo_tag_entry_popup_destroy(%struct._GtkObject* %object, %struct._GimpComboTagEntry* %entry1) #3 {
entry:
  %object.addr = alloca %struct._GtkObject*, align 8
  %entry.addr = alloca %struct._GimpComboTagEntry*, align 8
  store %struct._GtkObject* %object, %struct._GtkObject** %object.addr, align 8
  store %struct._GimpComboTagEntry* %entry1, %struct._GimpComboTagEntry** %entry.addr, align 8
  %0 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry.addr, align 8
  %popup = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %0, i32 0, i32 2
  store %struct._GtkWidget* null, %struct._GtkWidget** %popup, align 8
  %1 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %entry.addr, align 8
  %2 = bitcast %struct._GimpComboTagEntry* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %3)
  ret void
}

declare void @gimp_tag_popup_show(%struct._GimpTagPopup*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tag_popup_get_type() #2

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
