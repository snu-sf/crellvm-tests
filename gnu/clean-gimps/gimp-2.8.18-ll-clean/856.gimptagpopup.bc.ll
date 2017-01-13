; ModuleID = './app/widgets/gimptagpopup.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTagPopupClass = type { %struct._GtkWindowClass }
%struct._GtkWindowClass = type { %struct._GtkBinClass, void (%struct._GtkWindow*, %struct._GtkWidget*)*, i32 (%struct._GtkWindow*, %union._GdkEvent*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*, i32)*, void (%struct._GtkWindow*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkBinClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpTagPopup = type { %struct._GtkWindow, %struct._GimpComboTagEntry*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._PangoContext*, %struct._PangoLayout*, %struct._PopupTagData*, i32, %struct._PopupTagData*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpComboTagEntry = type { %struct._GimpTagEntry, %struct._GdkPixbuf*, %struct._GtkWidget*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._GdkColor }
%struct._GimpTagEntry = type { %struct._GtkEntry, %struct._GimpTaggedContainer*, %struct._GString*, %struct._GList*, %struct._GList*, %struct._GList*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
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
%struct._PangoContext = type opaque
%struct._PangoLayout = type opaque
%struct._PopupTagData = type { %struct._GimpTag*, %struct._GdkRectangle, i32 }
%struct._GimpTag = type { %struct._GObject, i32, i32, i32 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GdkCursor = type { i32, i32 }
%struct._GtkAlignment = type { %struct._GtkBin, float, float, float, float }
%struct._GimpTagged = type opaque
%struct._PangoFontMetrics = type opaque
%struct._PangoLanguage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._cairo = type opaque
%struct._PangoAttribute = type { %struct._PangoAttrClass*, i32, i32 }
%struct._PangoAttrClass = type { i32, %struct._PangoAttribute* (%struct._PangoAttribute*)*, void (%struct._PangoAttribute*)*, i32 (%struct._PangoAttribute*, %struct._PangoAttribute*)* }
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque

@gimp_tag_popup_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpTagPopup\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_tag_popup_new = private unnamed_addr constant [19 x i8] c"gimp_tag_popup_new\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"GIMP_IS_COMBO_TAG_ENTRY (combo_entry)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"owner\00", align 1
@__func__.gimp_tag_popup_show = private unnamed_addr constant [20 x i8] c"gimp_tag_popup_show\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"GIMP_IS_TAG_POPUP (popup)\00", align 1
@gimp_tag_popup_parent_class = internal global i8* null, align 8
@GimpTagPopup_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"scroll-arrow-vlength\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"gimptagpopup.c\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"menu\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"menu_scroll_arrow_up\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"menu_scroll_arrow_down\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"gtk-touchscreen-mode\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"gtk-timeout-repeat\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tag_popup_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tag_popup_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tag_popup_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_window_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 904, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tag_popup_class_intern_init to void (i8*, i8*)*), i32 360, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTagPopup*)* @gimp_tag_popup_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tag_popup_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_tag_popup_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tag_popup_parent_class, align 8
  %1 = load i32, i32* @GimpTagPopup_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTagPopup_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTagPopupClass*
  call void @gimp_tag_popup_class_init(%struct._GimpTagPopupClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_init(%struct._GimpTagPopup* %popup) #3 {
entry:
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  %0 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %1 = bitcast %struct._GimpTagPopup* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_state = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %3, i32 0, i32 20
  store i32 0, i32* %upper_arrow_state, align 4
  %4 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_state = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %4, i32 0, i32 21
  store i32 0, i32* %lower_arrow_state, align 4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %5, i32 2099972)
  %call2 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  %6 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %frame = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %6, i32 0, i32 2
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %frame, align 8
  %7 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %frame3 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %7, i32 0, i32 2
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame3, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_frame_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %10, i32 2)
  %11 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %12 = bitcast %struct._GimpTagPopup* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  %14 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %frame8 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %14, i32 0, i32 2
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %frame8, align 8
  call void @gtk_container_add(%struct._GtkContainer* %13, %struct._GtkWidget* %15)
  %16 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %frame9 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %16, i32 0, i32 2
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %frame9, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %call10 = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00)
  %18 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %alignment = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %18, i32 0, i32 3
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %alignment, align 8
  %19 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %frame11 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %19, i32 0, i32 2
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %frame11, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_container_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call12)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkContainer*
  %23 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %alignment14 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %23, i32 0, i32 3
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment14, align 8
  call void @gtk_container_add(%struct._GtkContainer* %22, %struct._GtkWidget* %24)
  %25 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %alignment15 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %25, i32 0, i32 3
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment15, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %call16 = call %struct._GtkWidget* @gtk_drawing_area_new()
  %27 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_area = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %27, i32 0, i32 4
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %tag_area, align 8
  %28 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_area17 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %28, i32 0, i32 4
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %tag_area17, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %29, i32 772)
  %30 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %alignment18 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %30, i32 0, i32 3
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment18, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call19)
  %33 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  %34 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_area21 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %34, i32 0, i32 4
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %tag_area21, align 8
  call void @gtk_container_add(%struct._GtkContainer* %33, %struct._GtkWidget* %35)
  %36 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_area22 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %36, i32 0, i32 4
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %tag_area22, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %alignment23 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %38, i32 0, i32 3
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment23, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %41 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %42 = bitcast %struct._GimpTagPopup* %41 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct._GimpTagPopup*)* @gimp_tag_popup_border_expose to void ()*), i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %44 = bitcast %struct._GimpTagPopup* %43 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @gimp_tag_popup_border_event to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %45 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_area26 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %45, i32 0, i32 4
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %tag_area26, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %48 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %49 = bitcast %struct._GimpTagPopup* %48 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct._GimpTagPopup*)* @gimp_tag_popup_list_expose to void ()*), i8* %49, void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_area28 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %50, i32 0, i32 4
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %tag_area28, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %53 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %54 = bitcast %struct._GimpTagPopup* %53 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpTagPopup*)* @gimp_tag_popup_list_event to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_tag_popup_new(%struct._GimpComboTagEntry* %combo_entry) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %combo_entry.addr = alloca %struct._GimpComboTagEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpComboTagEntry* %combo_entry, %struct._GimpComboTagEntry** %combo_entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry.addr, align 8
  %1 = bitcast %struct._GimpComboTagEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_combo_tag_entry_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_tag_popup_new, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_tag_popup_get_type() #7
  %13 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct._GimpComboTagEntry* %13, i8* null)
  %14 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_combo_tag_entry_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_tag_popup_show(%struct._GimpTagPopup* %popup) #3 {
entry:
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %1 = bitcast %struct._GimpTagPopup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_popup_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tag_popup_show, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %14 = bitcast %struct._GimpTagPopup* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %15, %struct._GtkWidget** %widget, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call13 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %19)
  %call14 = call i32 @gdk_pointer_grab(%struct._GdkDrawable* %call13, i32 1, i32 772, %struct._GdkDrawable* null, %struct._GdkCursor* null, i32 0)
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.end
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %21)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.16, %do.end
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_grab_add(%struct._GtkWidget*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare i32 @gdk_pointer_grab(%struct._GdkDrawable*, i32, i32, %struct._GdkDrawable*, %struct._GdkCursor*, i32) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gtk_grab_remove(%struct._GtkWidget*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_class_init(%struct._GimpTagPopupClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTagPopupClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpTagPopupClass* %klass, %struct._GimpTagPopupClass** %klass.addr, align 8
  %0 = load %struct._GimpTagPopupClass*, %struct._GimpTagPopupClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTagPopupClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_tag_popup_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_tag_popup_dispose, void (%struct._GObject*)** %dispose, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_tag_popup_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_tag_popup_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_combo_tag_entry_get_type() #7
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call2)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %popup = alloca %struct._GimpTagPopup*, align 8
  %container = alloca %struct._GimpTaggedContainer*, align 8
  %entry2 = alloca %struct._GtkWidget*, align 8
  %entry_allocation = alloca %struct._GdkRectangle, align 4
  %frame_style = alloca %struct._GtkStyle*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %popup_height = alloca i32, align 4
  %tag_hash = alloca %struct._GHashTable*, align 8
  %tag_list = alloca %struct._GList*, align 8
  %tag_iterator = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %max_height = alloca i32, align 4
  %screen_height = alloca i32, align 4
  %current_tags = alloca i8**, align 8
  %current_count = alloca i32, align 4
  %popup_rects = alloca [2 x %struct._GdkRectangle], align 16
  %popup_rect = alloca %struct._GdkRectangle, align 4
  %tag_data36 = alloca %struct._PopupTagData*, align 8
  %j = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_popup_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTagPopup*
  store %struct._GimpTagPopup* %2, %struct._GimpTagPopup** %popup, align 8
  %3 = load i8*, i8** @gimp_tag_popup_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_tag_popup_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed5 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed5, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %combo_entry = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %12, i32 0, i32 1
  %13 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %14 = bitcast %struct._GimpComboTagEntry* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  store %struct._GtkWidget* %15, %struct._GtkWidget** %entry2, align 8
  %16 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %17 = bitcast %struct._GimpTagPopup* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_window_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWindow*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  %call10 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %19)
  call void @gtk_window_set_screen(%struct._GtkWindow* %18, %struct._GdkScreen* %call10)
  %20 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %21 = bitcast %struct._GimpTagPopup* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  %call13 = call %struct._PangoContext* @gtk_widget_create_pango_context(%struct._GtkWidget* %22)
  %23 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %context = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %23, i32 0, i32 5
  store %struct._PangoContext* %call13, %struct._PangoContext** %context, align 8
  %24 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %context14 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %24, i32 0, i32 5
  %25 = load %struct._PangoContext*, %struct._PangoContext** %context14, align 8
  %call15 = call %struct._PangoLayout* @pango_layout_new(%struct._PangoContext* %25)
  %26 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %layout = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %26, i32 0, i32 6
  store %struct._PangoLayout* %call15, %struct._PangoLayout** %layout, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %27, %struct._GdkRectangle* %entry_allocation)
  %28 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %29 = bitcast %struct._GimpTagPopup* %28 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call16)
  %30 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  %31 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %scroll_arrow_height = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %31, i32 0, i32 15
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32* %scroll_arrow_height, i8* null)
  %32 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %layout18 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %32, i32 0, i32 6
  %33 = load %struct._PangoLayout*, %struct._PangoLayout** %layout18, align 8
  %34 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %combo_entry19 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %34, i32 0, i32 1
  %35 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry19, align 8
  %normal_item_attr = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %35, i32 0, i32 3
  %36 = load %struct._PangoAttrList*, %struct._PangoAttrList** %normal_item_attr, align 8
  call void @pango_layout_set_attributes(%struct._PangoLayout* %33, %struct._PangoAttrList* %36)
  %37 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %combo_entry20 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %37, i32 0, i32 1
  %38 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry20, align 8
  %39 = bitcast %struct._GimpComboTagEntry* %38 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_tag_entry_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call21)
  %40 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpTagEntry*
  %call23 = call i8** @gimp_tag_entry_parse_tags(%struct._GimpTagEntry* %40)
  store i8** %call23, i8*** %current_tags, align 8
  %41 = load i8**, i8*** %current_tags, align 8
  %call24 = call i32 @g_strv_length(i8** %41)
  store i32 %call24, i32* %current_count, align 4
  %42 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %combo_entry25 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %42, i32 0, i32 1
  %43 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry25, align 8
  %44 = bitcast %struct._GimpComboTagEntry* %43 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_tag_entry_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call26)
  %45 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpTagEntry*
  %container28 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %45, i32 0, i32 1
  %46 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container28, align 8
  store %struct._GimpTaggedContainer* %46, %struct._GimpTaggedContainer** %container, align 8
  %47 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container, align 8
  %tag_ref_counts = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %47, i32 0, i32 2
  %48 = load %struct._GHashTable*, %struct._GHashTable** %tag_ref_counts, align 8
  store %struct._GHashTable* %48, %struct._GHashTable** %tag_hash, align 8
  %49 = load %struct._GHashTable*, %struct._GHashTable** %tag_hash, align 8
  %call29 = call %struct._GList* @g_hash_table_get_keys(%struct._GHashTable* %49)
  store %struct._GList* %call29, %struct._GList** %tag_list, align 8
  %50 = load %struct._GList*, %struct._GList** %tag_list, align 8
  %call30 = call %struct._GList* @g_list_sort(%struct._GList* %50, i32 (i8*, i8*)* @gimp_tag_compare_func)
  store %struct._GList* %call30, %struct._GList** %tag_list, align 8
  %51 = load %struct._GList*, %struct._GList** %tag_list, align 8
  %call31 = call i32 @g_list_length(%struct._GList* %51)
  %52 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_count = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %52, i32 0, i32 8
  store i32 %call31, i32* %tag_count, align 4
  %53 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_count32 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %53, i32 0, i32 8
  %54 = load i32, i32* %tag_count32, align 4
  %conv = sext i32 %54 to i64
  %call33 = call noalias i8* @g_malloc0_n(i64 %conv, i64 32)
  %55 = bitcast i8* %call33 to %struct._PopupTagData*
  %56 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_data = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %56, i32 0, i32 7
  store %struct._PopupTagData* %55, %struct._PopupTagData** %tag_data, align 8
  store i32 0, i32* %i, align 4
  %57 = load %struct._GList*, %struct._GList** %tag_list, align 8
  store %struct._GList* %57, %struct._GList** %tag_iterator, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %58 = load i32, i32* %i, align 4
  %59 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_count34 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %59, i32 0, i32 8
  %60 = load i32, i32* %tag_count34, align 4
  %cmp = icmp slt i32 %58, %60
  br i1 %cmp, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  %61 = load i32, i32* %i, align 4
  %idxprom = sext i32 %61 to i64
  %62 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_data37 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %62, i32 0, i32 7
  %63 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data37, align 8
  %arrayidx = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %63, i64 %idxprom
  store %struct._PopupTagData* %arrayidx, %struct._PopupTagData** %tag_data36, align 8
  %64 = load %struct._GList*, %struct._GList** %tag_iterator, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %64, i32 0, i32 0
  %65 = load i8*, i8** %data, align 8
  %66 = bitcast i8* %65 to %struct._GimpTag*
  %67 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data36, align 8
  %tag = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %67, i32 0, i32 0
  store %struct._GimpTag* %66, %struct._GimpTag** %tag, align 8
  %68 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data36, align 8
  %state = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %68, i32 0, i32 2
  store i32 0, i32* %state, align 4
  %69 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data36, align 8
  %tag38 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %69, i32 0, i32 0
  %70 = load %struct._GimpTag*, %struct._GimpTag** %tag38, align 8
  %71 = bitcast %struct._GimpTag* %70 to i8*
  %call39 = call i8* @g_object_ref(i8* %71)
  store i32 0, i32* %j, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %for.body
  %72 = load i32, i32* %j, align 4
  %73 = load i32, i32* %current_count, align 4
  %cmp41 = icmp slt i32 %72, %73
  br i1 %cmp41, label %for.body.43, label %for.end

for.body.43:                                      ; preds = %for.cond.40
  %74 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data36, align 8
  %tag44 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %74, i32 0, i32 0
  %75 = load %struct._GimpTag*, %struct._GimpTag** %tag44, align 8
  %76 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %76 to i64
  %77 = load i8**, i8*** %current_tags, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %77, i64 %idxprom45
  %78 = load i8*, i8** %arrayidx46, align 8
  %call47 = call i32 @gimp_tag_compare_with_string(%struct._GimpTag* %75, i8* %78)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %for.body.43
  %79 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data36, align 8
  %state50 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %79, i32 0, i32 2
  store i32 3, i32* %state50, align 4
  br label %for.end

if.end.51:                                        ; preds = %for.body.43
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %80 = load i32, i32* %j, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.40

for.end:                                          ; preds = %if.then.49, %for.cond.40
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end
  %81 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %81, 1
  store i32 %inc53, i32* %i, align 4
  %82 = load %struct._GList*, %struct._GList** %tag_iterator, align 8
  %tobool54 = icmp ne %struct._GList* %82, null
  br i1 %tobool54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.52
  %83 = load %struct._GList*, %struct._GList** %tag_iterator, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %83, i32 0, i32 1
  %84 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.52
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %84, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %tag_iterator, align 8
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  %85 = load %struct._GList*, %struct._GList** %tag_list, align 8
  call void @g_list_free(%struct._GList* %85)
  %86 = load i8**, i8*** %current_tags, align 8
  call void @g_strfreev(i8** %86)
  %87 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %combo_entry56 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %87, i32 0, i32 1
  %88 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry56, align 8
  %89 = bitcast %struct._GimpComboTagEntry* %88 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_tag_entry_get_type() #7
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call57)
  %90 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpTagEntry*
  %mode = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %90, i32 0, i32 10
  %91 = load i32, i32* %mode, align 4
  %cmp59 = icmp eq i32 %91, 0
  br i1 %cmp59, label %if.then.61, label %if.end.84

if.then.61:                                       ; preds = %for.end.55
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.79, %if.then.61
  %92 = load i32, i32* %i, align 4
  %93 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_count63 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %93, i32 0, i32 8
  %94 = load i32, i32* %tag_count63, align 4
  %cmp64 = icmp slt i32 %92, %94
  br i1 %cmp64, label %for.body.66, label %for.end.81

for.body.66:                                      ; preds = %for.cond.62
  %95 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %95 to i64
  %96 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_data68 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %96, i32 0, i32 7
  %97 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data68, align 8
  %arrayidx69 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %97, i64 %idxprom67
  %state70 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %arrayidx69, i32 0, i32 2
  %98 = load i32, i32* %state70, align 4
  %cmp71 = icmp ne i32 %98, 3
  br i1 %cmp71, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %for.body.66
  %99 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %99 to i64
  %100 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_data75 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %100, i32 0, i32 7
  %101 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data75, align 8
  %arrayidx76 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %101, i64 %idxprom74
  %state77 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %arrayidx76, i32 0, i32 2
  store i32 4, i32* %state77, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %for.body.66
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %102 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %102, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond.62

for.end.81:                                       ; preds = %for.cond.62
  %103 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container, align 8
  %104 = bitcast %struct._GimpTaggedContainer* %103 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_container_get_type() #7
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call82)
  %105 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpContainer*
  %106 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %107 = bitcast %struct._GimpTagPopup* %106 to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %105, void (i8*, i8*)* bitcast (void (%struct._GimpTagged*, %struct._GimpTagPopup*)* @gimp_tag_popup_check_can_toggle to void (i8*, i8*)*), i8* %107)
  br label %if.end.84

if.end.84:                                        ; preds = %for.end.81, %for.end.55
  %108 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %frame = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %108, i32 0, i32 2
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %call85 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %109)
  store %struct._GtkStyle* %call85, %struct._GtkStyle** %frame_style, align 8
  %width86 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %entry_allocation, i32 0, i32 2
  %110 = load i32, i32* %width86, align 4
  %111 = load %struct._GtkStyle*, %struct._GtkStyle** %frame_style, align 8
  %xthickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %111, i32 0, i32 12
  %112 = load i32, i32* %xthickness, align 4
  %mul = mul nsw i32 2, %112
  %sub = sub nsw i32 %110, %mul
  store i32 %sub, i32* %width, align 4
  %113 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %114 = load i32, i32* %width, align 4
  %call87 = call i32 @gimp_tag_popup_layout_tags(%struct._GimpTagPopup* %113, i32 %114)
  %115 = load %struct._GtkStyle*, %struct._GtkStyle** %frame_style, align 8
  %ythickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %115, i32 0, i32 13
  %116 = load i32, i32* %ythickness, align 4
  %mul88 = mul nsw i32 2, %116
  %add = add nsw i32 %call87, %mul88
  store i32 %add, i32* %height, align 4
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  %call89 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %117)
  %call90 = call i32 @gdk_window_get_origin(%struct._GdkDrawable* %call89, i32* %x, i32* %y)
  %height91 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %entry_allocation, i32 0, i32 3
  %118 = load i32, i32* %height91, align 4
  %mul92 = mul nsw i32 %118, 10
  store i32 %mul92, i32* %max_height, align 4
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  %call93 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %119)
  %call94 = call i32 @gdk_screen_get_height(%struct._GdkScreen* %call93)
  store i32 %call94, i32* %screen_height, align 4
  %120 = load i32, i32* %height, align 4
  %121 = load i32, i32* %max_height, align 4
  %cmp95 = icmp slt i32 %120, %121
  br i1 %cmp95, label %cond.true.97, label %cond.false.98

cond.true.97:                                     ; preds = %if.end.84
  %122 = load i32, i32* %height, align 4
  br label %cond.end.99

cond.false.98:                                    ; preds = %if.end.84
  %123 = load i32, i32* %max_height, align 4
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.97
  %cond100 = phi i32 [ %122, %cond.true.97 ], [ %123, %cond.false.98 ]
  store i32 %cond100, i32* %popup_height, align 4
  %124 = load i32, i32* %x, align 4
  %arrayidx101 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 0
  %x102 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx101, i32 0, i32 0
  store i32 %124, i32* %x102, align 4
  %arrayidx103 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 0
  %y104 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx103, i32 0, i32 1
  store i32 0, i32* %y104, align 4
  %width105 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %entry_allocation, i32 0, i32 2
  %125 = load i32, i32* %width105, align 4
  %arrayidx106 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 0
  %width107 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx106, i32 0, i32 2
  store i32 %125, i32* %width107, align 4
  %126 = load i32, i32* %y, align 4
  %height108 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %entry_allocation, i32 0, i32 3
  %127 = load i32, i32* %height108, align 4
  %add109 = add nsw i32 %126, %127
  %arrayidx110 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 0
  %height111 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx110, i32 0, i32 3
  store i32 %add109, i32* %height111, align 4
  %128 = load i32, i32* %x, align 4
  %arrayidx112 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 1
  %x113 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx112, i32 0, i32 0
  store i32 %128, i32* %x113, align 4
  %129 = load i32, i32* %y, align 4
  %arrayidx114 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 1
  %y115 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx114, i32 0, i32 1
  store i32 %129, i32* %y115, align 4
  %arrayidx116 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 0
  %width117 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx116, i32 0, i32 2
  %130 = load i32, i32* %width117, align 4
  %arrayidx118 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 1
  %width119 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx118, i32 0, i32 2
  store i32 %130, i32* %width119, align 4
  %131 = load i32, i32* %screen_height, align 4
  %arrayidx120 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 0
  %height121 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx120, i32 0, i32 3
  %132 = load i32, i32* %height121, align 4
  %sub122 = sub nsw i32 %131, %132
  %arrayidx123 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 1
  %height124 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx123, i32 0, i32 3
  store i32 %sub122, i32* %height124, align 4
  %arrayidx125 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 0
  %height126 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx125, i32 0, i32 3
  %133 = load i32, i32* %height126, align 4
  %134 = load i32, i32* %popup_height, align 4
  %cmp127 = icmp sge i32 %133, %134
  br i1 %cmp127, label %if.then.129, label %if.else

if.then.129:                                      ; preds = %cond.end.99
  %arrayidx130 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 0
  %135 = bitcast %struct._GdkRectangle* %popup_rect to i8*
  %136 = bitcast %struct._GdkRectangle* %arrayidx130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* %136, i64 16, i32 4, i1 false)
  %arrayidx131 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 0
  %height132 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx131, i32 0, i32 3
  %137 = load i32, i32* %height132, align 4
  %138 = load i32, i32* %popup_height, align 4
  %sub133 = sub nsw i32 %137, %138
  %y134 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %popup_rect, i32 0, i32 1
  %139 = load i32, i32* %y134, align 4
  %add135 = add nsw i32 %139, %sub133
  store i32 %add135, i32* %y134, align 4
  %140 = load i32, i32* %popup_height, align 4
  %height136 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %popup_rect, i32 0, i32 3
  store i32 %140, i32* %height136, align 4
  br label %if.end.168

if.else:                                          ; preds = %cond.end.99
  %arrayidx137 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 1
  %height138 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx137, i32 0, i32 3
  %141 = load i32, i32* %height138, align 4
  %142 = load i32, i32* %popup_height, align 4
  %cmp139 = icmp sge i32 %141, %142
  br i1 %cmp139, label %if.then.141, label %if.else.144

if.then.141:                                      ; preds = %if.else
  %arrayidx142 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 1
  %143 = bitcast %struct._GdkRectangle* %popup_rect to i8*
  %144 = bitcast %struct._GdkRectangle* %arrayidx142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %143, i8* %144, i64 16, i32 4, i1 false)
  %145 = load i32, i32* %popup_height, align 4
  %height143 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %popup_rect, i32 0, i32 3
  store i32 %145, i32* %height143, align 4
  br label %if.end.167

if.else.144:                                      ; preds = %if.else
  %arrayidx145 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 0
  %height146 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx145, i32 0, i32 3
  %146 = load i32, i32* %height146, align 4
  %arrayidx147 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 1
  %height148 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %arrayidx147, i32 0, i32 3
  %147 = load i32, i32* %height148, align 4
  %cmp149 = icmp sge i32 %146, %147
  br i1 %cmp149, label %if.then.151, label %if.else.158

if.then.151:                                      ; preds = %if.else.144
  %arrayidx152 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 0
  %148 = bitcast %struct._GdkRectangle* %popup_rect to i8*
  %149 = bitcast %struct._GdkRectangle* %arrayidx152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %148, i8* %149, i64 16, i32 4, i1 false)
  %150 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %scroll_arrow_height153 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %150, i32 0, i32 15
  %151 = load i32, i32* %scroll_arrow_height153, align 4
  %152 = load %struct._GtkStyle*, %struct._GtkStyle** %frame_style, align 8
  %ythickness154 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %152, i32 0, i32 13
  %153 = load i32, i32* %ythickness154, align 4
  %add155 = add nsw i32 %151, %153
  %y156 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %popup_rect, i32 0, i32 1
  %154 = load i32, i32* %y156, align 4
  %add157 = add nsw i32 %154, %add155
  store i32 %add157, i32* %y156, align 4
  br label %if.end.165

if.else.158:                                      ; preds = %if.else.144
  %arrayidx159 = getelementptr inbounds [2 x %struct._GdkRectangle], [2 x %struct._GdkRectangle]* %popup_rects, i32 0, i64 1
  %155 = bitcast %struct._GdkRectangle* %popup_rect to i8*
  %156 = bitcast %struct._GdkRectangle* %arrayidx159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %155, i8* %156, i64 16, i32 4, i1 false)
  %157 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %scroll_arrow_height160 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %157, i32 0, i32 15
  %158 = load i32, i32* %scroll_arrow_height160, align 4
  %159 = load %struct._GtkStyle*, %struct._GtkStyle** %frame_style, align 8
  %ythickness161 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %159, i32 0, i32 13
  %160 = load i32, i32* %ythickness161, align 4
  %add162 = add nsw i32 %158, %160
  %y163 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %popup_rect, i32 0, i32 1
  %161 = load i32, i32* %y163, align 4
  %sub164 = sub nsw i32 %161, %add162
  store i32 %sub164, i32* %y163, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.158, %if.then.151
  %height166 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %popup_rect, i32 0, i32 3
  %162 = load i32, i32* %height166, align 4
  store i32 %162, i32* %popup_height, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.165, %if.then.141
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.129
  %163 = load i32, i32* %popup_height, align 4
  %164 = load i32, i32* %height, align 4
  %cmp169 = icmp slt i32 %163, %164
  br i1 %cmp169, label %if.then.171, label %if.end.183

if.then.171:                                      ; preds = %if.end.168
  %165 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %arrows_visible = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %165, i32 0, i32 17
  store i32 1, i32* %arrows_visible, align 4
  %166 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %upper_arrow_state = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %166, i32 0, i32 20
  store i32 4, i32* %upper_arrow_state, align 4
  %167 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %alignment = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %167, i32 0, i32 3
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %169 = bitcast %struct._GtkWidget* %168 to %struct._GTypeInstance*
  %call172 = call i64 @gtk_alignment_get_type() #7
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %169, i64 %call172)
  %170 = bitcast %struct._GTypeInstance* %call173 to %struct._GtkAlignment*
  %171 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %scroll_arrow_height174 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %171, i32 0, i32 15
  %172 = load i32, i32* %scroll_arrow_height174, align 4
  %add175 = add nsw i32 %172, 2
  %173 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %scroll_arrow_height176 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %173, i32 0, i32 15
  %174 = load i32, i32* %scroll_arrow_height176, align 4
  %add177 = add nsw i32 %174, 2
  call void @gtk_alignment_set_padding(%struct._GtkAlignment* %170, i32 %add175, i32 %add177, i32 0, i32 0)
  %175 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %scroll_arrow_height178 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %175, i32 0, i32 15
  %176 = load i32, i32* %scroll_arrow_height178, align 4
  %mul179 = mul nsw i32 2, %176
  %add180 = add nsw i32 %mul179, 4
  %177 = load i32, i32* %popup_height, align 4
  %sub181 = sub nsw i32 %177, %add180
  store i32 %sub181, i32* %popup_height, align 4
  %178 = load i32, i32* %height, align 4
  %179 = load i32, i32* %popup_height, align 4
  %sub182 = sub nsw i32 %178, %179
  %180 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %scroll_height = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %180, i32 0, i32 12
  store i32 %sub182, i32* %scroll_height, align 4
  %181 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %scroll_y = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %181, i32 0, i32 13
  store i32 0, i32* %scroll_y, align 4
  %182 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %scroll_step = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %182, i32 0, i32 14
  store i32 0, i32* %scroll_step, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.171, %if.end.168
  %183 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_area = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %183, i32 0, i32 4
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %tag_area, align 8
  %185 = load i32, i32* %width, align 4
  %186 = load i32, i32* %popup_height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %184, i32 %185, i32 %186)
  %187 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %188 = bitcast %struct._GimpTagPopup* %187 to %struct._GTypeInstance*
  %call184 = call i64 @gtk_window_get_type() #7
  %call185 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call184)
  %189 = bitcast %struct._GTypeInstance* %call185 to %struct._GtkWindow*
  %x186 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %popup_rect, i32 0, i32 0
  %190 = load i32, i32* %x186, align 4
  %y187 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %popup_rect, i32 0, i32 1
  %191 = load i32, i32* %y187, align 4
  call void @gtk_window_move(%struct._GtkWindow* %189, i32 %190, i32 %191)
  %192 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %193 = bitcast %struct._GimpTagPopup* %192 to %struct._GTypeInstance*
  %call188 = call i64 @gtk_window_get_type() #7
  %call189 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %193, i64 %call188)
  %194 = bitcast %struct._GTypeInstance* %call189 to %struct._GtkWindow*
  %width190 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %popup_rect, i32 0, i32 2
  %195 = load i32, i32* %width190, align 4
  %height191 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %popup_rect, i32 0, i32 3
  %196 = load i32, i32* %height191, align 4
  call void @gtk_window_resize(%struct._GtkWindow* %194, i32 %195, i32 %196)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %popup = alloca %struct._GimpTagPopup*, align 8
  %i = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_popup_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTagPopup*
  store %struct._GimpTagPopup* %2, %struct._GimpTagPopup** %popup, align 8
  %3 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  call void @gimp_tag_popup_remove_scroll_timeout(%struct._GimpTagPopup* %3)
  %4 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %combo_entry = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %4, i32 0, i32 1
  %5 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %tobool = icmp ne %struct._GimpComboTagEntry* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %combo_entry2 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %6, i32 0, i32 1
  %7 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry2, align 8
  %8 = bitcast %struct._GimpComboTagEntry* %7 to i8*
  call void @g_object_unref(i8* %8)
  %9 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %combo_entry3 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %9, i32 0, i32 1
  store %struct._GimpComboTagEntry* null, %struct._GimpComboTagEntry** %combo_entry3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %layout = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %10, i32 0, i32 6
  %11 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %tobool4 = icmp ne %struct._PangoLayout* %11, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %12 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %layout6 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %12, i32 0, i32 6
  %13 = load %struct._PangoLayout*, %struct._PangoLayout** %layout6, align 8
  %14 = bitcast %struct._PangoLayout* %13 to i8*
  call void @g_object_unref(i8* %14)
  %15 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %layout7 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %15, i32 0, i32 6
  store %struct._PangoLayout* null, %struct._PangoLayout** %layout7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %16 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %context = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %16, i32 0, i32 5
  %17 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %tobool9 = icmp ne %struct._PangoContext* %17, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %18 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %context11 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %18, i32 0, i32 5
  %19 = load %struct._PangoContext*, %struct._PangoContext** %context11, align 8
  %20 = bitcast %struct._PangoContext* %19 to i8*
  call void @g_object_unref(i8* %20)
  %21 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %context12 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %21, i32 0, i32 5
  store %struct._PangoContext* null, %struct._PangoContext** %context12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %22 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_data = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %22, i32 0, i32 7
  %23 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %tobool14 = icmp ne %struct._PopupTagData* %23, null
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.15
  %24 = load i32, i32* %i, align 4
  %25 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_count = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %25, i32 0, i32 8
  %26 = load i32, i32* %tag_count, align 4
  %cmp = icmp slt i32 %24, %26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_data16 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %28, i32 0, i32 7
  %29 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data16, align 8
  %arrayidx = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %29, i64 %idxprom
  %tag = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %arrayidx, i32 0, i32 0
  %30 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %31 = bitcast %struct._GimpTag* %30 to i8*
  call void @g_object_unref(i8* %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_data17 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %33, i32 0, i32 7
  %34 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data17, align 8
  %35 = bitcast %struct._PopupTagData* %34 to i8*
  call void @g_free(i8* %35)
  %36 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_data18 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %36, i32 0, i32 7
  store %struct._PopupTagData* null, %struct._PopupTagData** %tag_data18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %if.end.13
  %37 = load i8*, i8** @gimp_tag_popup_parent_class, align 8
  %38 = bitcast i8* %37 to %struct._GTypeClass*
  %call20 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %38, i64 80)
  %39 = bitcast %struct._GTypeClass* %call20 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %39, i32 0, i32 5
  %40 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %41 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %40(%struct._GObject* %41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %popup = alloca %struct._GimpTagPopup*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_popup_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTagPopup*
  store %struct._GimpTagPopup* %2, %struct._GimpTagPopup** %popup, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpComboTagEntry*
  %6 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %combo_entry = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %6, i32 0, i32 1
  store %struct._GimpComboTagEntry* %5, %struct._GimpComboTagEntry** %combo_entry, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %popup = alloca %struct._GimpTagPopup*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_popup_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTagPopup*
  store %struct._GimpTagPopup* %2, %struct._GimpTagPopup** %popup, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %combo_entry = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %5, i32 0, i32 1
  %6 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %7 = bitcast %struct._GimpComboTagEntry* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 440, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare %struct._PangoContext* @gtk_widget_create_pango_context(%struct._GtkWidget*) #1

declare %struct._PangoLayout* @pango_layout_new(%struct._PangoContext*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare void @pango_layout_set_attributes(%struct._PangoLayout*, %struct._PangoAttrList*) #1

declare i8** @gimp_tag_entry_parse_tags(%struct._GimpTagEntry*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tag_entry_get_type() #2

declare i32 @g_strv_length(i8**) #1

declare %struct._GList* @g_hash_table_get_keys(%struct._GHashTable*) #1

declare %struct._GList* @g_list_sort(%struct._GList*, i32 (i8*, i8*)*) #1

declare i32 @gimp_tag_compare_func(i8*, i8*) #1

declare i32 @g_list_length(%struct._GList*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i8* @g_object_ref(i8*) #1

declare i32 @gimp_tag_compare_with_string(%struct._GimpTag*, i8*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @g_strfreev(i8**) #1

declare void @gimp_container_foreach(%struct._GimpContainer*, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_check_can_toggle(%struct._GimpTagged* %tagged, %struct._GimpTagPopup* %popup) #3 {
entry:
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %iterator = alloca %struct._GList*, align 8
  %search_key = alloca %struct._PopupTagData, align 8
  %search_result = alloca %struct._PopupTagData*, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  %0 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %call = call %struct._GList* @gimp_tagged_get_tags(%struct._GimpTagged* %0)
  store %struct._GList* %call, %struct._GList** %iterator, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %iterator, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %iterator, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpTag*
  %tag = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %search_key, i32 0, i32 0
  store %struct._GimpTag* %4, %struct._GimpTag** %tag, align 8
  %5 = bitcast %struct._PopupTagData* %search_key to i8*
  %6 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_data = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %6, i32 0, i32 7
  %7 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %8 = bitcast %struct._PopupTagData* %7 to i8*
  %9 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_count = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %9, i32 0, i32 8
  %10 = load i32, i32* %tag_count, align 4
  %conv = sext i32 %10 to i64
  %call1 = call i8* @bsearch(i8* %5, i8* %8, i64 %conv, i64 32, i32 (i8*, i8*)* @gimp_tag_popup_data_compare)
  %11 = bitcast i8* %call1 to %struct._PopupTagData*
  store %struct._PopupTagData* %11, %struct._PopupTagData** %search_result, align 8
  %12 = load %struct._PopupTagData*, %struct._PopupTagData** %search_result, align 8
  %tobool2 = icmp ne %struct._PopupTagData* %12, null
  br i1 %tobool2, label %if.then, label %if.end.6

if.then:                                          ; preds = %for.body
  %13 = load %struct._PopupTagData*, %struct._PopupTagData** %search_result, align 8
  %state = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %13, i32 0, i32 2
  %14 = load i32, i32* %state, align 4
  %cmp = icmp eq i32 %14, 4
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %15 = load %struct._PopupTagData*, %struct._PopupTagData** %search_result, align 8
  %state5 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %15, i32 0, i32 2
  store i32 0, i32* %state5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %16 = load %struct._GList*, %struct._GList** %iterator, align 8
  %tobool7 = icmp ne %struct._GList* %16, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GList*, %struct._GList** %iterator, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iterator, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_popup_layout_tags(%struct._GimpTagPopup* %popup, i32 %width) #3 {
entry:
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %width.addr = alloca i32, align 4
  %font_metrics = alloca %struct._PangoFontMetrics*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %height = alloca i32, align 4
  %i = alloca i32, align 4
  %line_height = alloca i32, align 4
  %space_width = alloca i32, align 4
  %tag_data = alloca %struct._PopupTagData*, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %tag_data43 = alloca %struct._PopupTagData*, align 8
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 0, i32* %height, align 4
  store i32 5, i32* %x, align 4
  store i32 5, i32* %y, align 4
  %0 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %context = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %0, i32 0, i32 5
  %1 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %2 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %context1 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %2, i32 0, i32 5
  %3 = load %struct._PangoContext*, %struct._PangoContext** %context1, align 8
  %call = call %struct._PangoFontDescription* @pango_context_get_font_description(%struct._PangoContext* %3)
  %call2 = call %struct._PangoFontMetrics* @pango_context_get_metrics(%struct._PangoContext* %1, %struct._PangoFontDescription* %call, %struct._PangoLanguage* null)
  store %struct._PangoFontMetrics* %call2, %struct._PangoFontMetrics** %font_metrics, align 8
  %4 = load %struct._PangoFontMetrics*, %struct._PangoFontMetrics** %font_metrics, align 8
  %call3 = call i32 @pango_font_metrics_get_ascent(%struct._PangoFontMetrics* %4) #8
  %5 = load %struct._PangoFontMetrics*, %struct._PangoFontMetrics** %font_metrics, align 8
  %call4 = call i32 @pango_font_metrics_get_descent(%struct._PangoFontMetrics* %5) #8
  %add = add nsw i32 %call3, %call4
  %add5 = add nsw i32 %add, 512
  %shr = ashr i32 %add5, 10
  store i32 %shr, i32* %line_height, align 4
  %6 = load %struct._PangoFontMetrics*, %struct._PangoFontMetrics** %font_metrics, align 8
  %call6 = call i32 @pango_font_metrics_get_approximate_char_width(%struct._PangoFontMetrics* %6) #8
  %add7 = add nsw i32 %call6, 512
  %shr8 = ashr i32 %add7, 10
  store i32 %shr8, i32* %space_width, align 4
  %7 = load %struct._PangoFontMetrics*, %struct._PangoFontMetrics** %font_metrics, align 8
  call void @pango_font_metrics_unref(%struct._PangoFontMetrics* %7)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_count = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %9, i32 0, i32 8
  %10 = load i32, i32* %tag_count, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_data9 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %12, i32 0, i32 7
  %13 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data9, align 8
  %arrayidx = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %13, i64 %idxprom
  store %struct._PopupTagData* %arrayidx, %struct._PopupTagData** %tag_data, align 8
  %14 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %layout = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %14, i32 0, i32 6
  %15 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %16 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %tag = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %16, i32 0, i32 0
  %17 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %call10 = call i8* @gimp_tag_get_name(%struct._GimpTag* %17)
  call void @pango_layout_set_text(%struct._PangoLayout* %15, i8* %call10, i32 -1)
  %18 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %layout11 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %18, i32 0, i32 6
  %19 = load %struct._PangoLayout*, %struct._PangoLayout** %layout11, align 8
  call void @pango_layout_get_pixel_size(%struct._PangoLayout* %19, i32* %w, i32* %h)
  %20 = load i32, i32* %w, align 4
  %add12 = add nsw i32 %20, 4
  %21 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %21, i32 0, i32 1
  %width13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds, i32 0, i32 2
  store i32 %add12, i32* %width13, align 4
  %22 = load i32, i32* %h, align 4
  %add14 = add nsw i32 %22, 4
  %23 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds15 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %23, i32 0, i32 1
  %height16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds15, i32 0, i32 3
  store i32 %add14, i32* %height16, align 4
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* %space_width, align 4
  %add17 = add nsw i32 %24, %25
  %26 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds18 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %26, i32 0, i32 1
  %width19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds18, i32 0, i32 2
  %27 = load i32, i32* %width19, align 4
  %add20 = add nsw i32 %add17, %27
  %add21 = add nsw i32 %add20, 5
  %sub = sub nsw i32 %add21, 1
  %28 = load i32, i32* %width.addr, align 4
  %cmp22 = icmp sgt i32 %sub, %28
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 5, i32* %x, align 4
  %29 = load i32, i32* %line_height, align 4
  %add23 = add nsw i32 %29, 4
  %add24 = add nsw i32 %add23, 2
  %30 = load i32, i32* %y, align 4
  %add25 = add nsw i32 %30, %add24
  store i32 %add25, i32* %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %31 = load i32, i32* %x, align 4
  %32 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds26 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %32, i32 0, i32 1
  %x27 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds26, i32 0, i32 0
  store i32 %31, i32* %x27, align 4
  %33 = load i32, i32* %y, align 4
  %34 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds28 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %34, i32 0, i32 1
  %y29 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds28, i32 0, i32 1
  store i32 %33, i32* %y29, align 4
  %35 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds30 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %35, i32 0, i32 1
  %width31 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds30, i32 0, i32 2
  %36 = load i32, i32* %width31, align 4
  %37 = load i32, i32* %space_width, align 4
  %add32 = add nsw i32 %36, %37
  %38 = load i32, i32* %x, align 4
  %add33 = add nsw i32 %38, %add32
  store i32 %add33, i32* %x, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %41 = bitcast %struct._GimpTagPopup* %40 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_widget_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call34)
  %42 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkWidget*
  %call36 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %42)
  %cmp37 = icmp eq i32 %call36, 2
  br i1 %cmp37, label %if.then.38, label %if.end.58

if.then.38:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.55, %if.then.38
  %43 = load i32, i32* %i, align 4
  %44 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_count40 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %44, i32 0, i32 8
  %45 = load i32, i32* %tag_count40, align 4
  %cmp41 = icmp slt i32 %43, %45
  br i1 %cmp41, label %for.body.42, label %for.end.57

for.body.42:                                      ; preds = %for.cond.39
  %46 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %46 to i64
  %47 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_data45 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %47, i32 0, i32 7
  %48 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data45, align 8
  %arrayidx46 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %48, i64 %idxprom44
  store %struct._PopupTagData* %arrayidx46, %struct._PopupTagData** %tag_data43, align 8
  %49 = load i32, i32* %width.addr, align 4
  %50 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data43, align 8
  %bounds47 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %50, i32 0, i32 1
  %x48 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds47, i32 0, i32 0
  %51 = load i32, i32* %x48, align 4
  %sub49 = sub nsw i32 %49, %51
  %52 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data43, align 8
  %bounds50 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %52, i32 0, i32 1
  %width51 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds50, i32 0, i32 2
  %53 = load i32, i32* %width51, align 4
  %sub52 = sub nsw i32 %sub49, %53
  %54 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data43, align 8
  %bounds53 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %54, i32 0, i32 1
  %x54 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds53, i32 0, i32 0
  store i32 %sub52, i32* %x54, align 4
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.42
  %55 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %55, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.39

for.end.57:                                       ; preds = %for.cond.39
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.57, %for.end
  %56 = load i32, i32* %y, align 4
  %57 = load i32, i32* %line_height, align 4
  %add59 = add nsw i32 %56, %57
  %add60 = add nsw i32 %add59, 5
  store i32 %add60, i32* %height, align 4
  %58 = load i32, i32* %height, align 4
  ret i32 %58
}

declare i32 @gdk_window_get_origin(%struct._GdkDrawable*, i32*, i32*) #1

declare i32 @gdk_screen_get_height(%struct._GdkScreen*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gtk_alignment_set_padding(%struct._GtkAlignment*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_alignment_get_type() #2

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_window_move(%struct._GtkWindow*, i32, i32) #1

declare void @gtk_window_resize(%struct._GtkWindow*, i32, i32) #1

declare %struct._GList* @gimp_tagged_get_tags(%struct._GimpTagged*) #1

declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_popup_data_compare(i8* %a, i8* %b) #3 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct._PopupTagData*
  %tag = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %1, i32 0, i32 0
  %2 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %3 = bitcast %struct._GimpTag* %2 to i8*
  %4 = load i8*, i8** %b.addr, align 8
  %5 = bitcast i8* %4 to %struct._PopupTagData*
  %tag1 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %5, i32 0, i32 0
  %6 = load %struct._GimpTag*, %struct._GimpTag** %tag1, align 8
  %7 = bitcast %struct._GimpTag* %6 to i8*
  %call = call i32 @gimp_tag_compare_func(i8* %3, i8* %7)
  ret i32 %call
}

declare %struct._PangoFontMetrics* @pango_context_get_metrics(%struct._PangoContext*, %struct._PangoFontDescription*, %struct._PangoLanguage*) #1

declare %struct._PangoFontDescription* @pango_context_get_font_description(%struct._PangoContext*) #1

; Function Attrs: nounwind readonly
declare i32 @pango_font_metrics_get_ascent(%struct._PangoFontMetrics*) #4

; Function Attrs: nounwind readonly
declare i32 @pango_font_metrics_get_descent(%struct._PangoFontMetrics*) #4

; Function Attrs: nounwind readonly
declare i32 @pango_font_metrics_get_approximate_char_width(%struct._PangoFontMetrics*) #4

declare void @pango_font_metrics_unref(%struct._PangoFontMetrics*) #1

declare void @pango_layout_set_text(%struct._PangoLayout*, i8*, i32) #1

declare i8* @gimp_tag_get_name(%struct._GimpTag*) #1

declare void @pango_layout_get_pixel_size(%struct._PangoLayout*, i32*, i32*) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_remove_scroll_timeout(%struct._GimpTagPopup* %popup) #3 {
entry:
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  %0 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_timeout_id = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %0, i32 0, i32 11
  %1 = load i32, i32* %scroll_timeout_id, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_timeout_id1 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %2, i32 0, i32 11
  %3 = load i32, i32* %scroll_timeout_id1, align 4
  %call = call i32 @g_source_remove(i32 %3)
  %4 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_timeout_id2 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %4, i32 0, i32 11
  store i32 0, i32* %scroll_timeout_id2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_object_unref(i8*) #1

declare void @g_free(i8*) #1

declare i32 @g_source_remove(i32) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

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
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare %struct._GtkWidget* @gtk_drawing_area_new() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_popup_border_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, %struct._GimpTagPopup* %popup) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %window = alloca %struct._GdkDrawable*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %border = alloca %struct._GdkRectangle, align 4
  %upper = alloca %struct._GdkRectangle, align 4
  %lower = alloca %struct._GdkRectangle, align 4
  %arrow_space = alloca i32, align 4
  %arrow_size = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %0)
  store %struct._GdkDrawable* %call, %struct._GdkDrawable** %window, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %1)
  store %struct._GtkStyle* %call1, %struct._GtkStyle** %style, align 8
  %2 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window2 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %2, i32 0, i32 1
  %3 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window2, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %4)
  %cmp = icmp ne %struct._GdkDrawable* %3, %call3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @get_arrows_visible_area(%struct._GimpTagPopup* %5, %struct._GdkRectangle* %border, %struct._GdkRectangle* %upper, %struct._GdkRectangle* %lower, i32* %arrow_space)
  %6 = load i32, i32* %arrow_space, align 4
  %conv = sitofp i32 %6 to double
  %mul = fmul double 7.000000e-01, %conv
  %conv4 = fptosi double %mul to i32
  store i32 %conv4, i32* %arrow_size, align 4
  %7 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %8 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %9 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %9, i32 0, i32 3
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_paint_box(%struct._GtkStyle* %7, %struct._GdkDrawable* %8, i32 0, i32 2, %struct._GdkRectangle* %area, %struct._GtkWidget* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 0, i32 -1, i32 -1)
  %11 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %arrows_visible = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %11, i32 0, i32 17
  %12 = load i32, i32* %arrows_visible, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.5, label %if.end.34

if.then.5:                                        ; preds = %if.end
  %13 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %14 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %15 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_state = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %15, i32 0, i32 20
  %16 = load i32, i32* %upper_arrow_state, align 4
  %17 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area6 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %17, i32 0, i32 3
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %upper, i32 0, i32 0
  %19 = load i32, i32* %x, align 4
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %upper, i32 0, i32 1
  %20 = load i32, i32* %y, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %upper, i32 0, i32 2
  %21 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %upper, i32 0, i32 3
  %22 = load i32, i32* %height, align 4
  call void @gtk_paint_box(%struct._GtkStyle* %13, %struct._GdkDrawable* %14, i32 %16, i32 2, %struct._GdkRectangle* %area6, %struct._GtkWidget* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %19, i32 %20, i32 %21, i32 %22)
  %23 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %24 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %25 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_state7 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %25, i32 0, i32 20
  %26 = load i32, i32* %upper_arrow_state7, align 4
  %27 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area8 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %27, i32 0, i32 3
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %x9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %upper, i32 0, i32 0
  %29 = load i32, i32* %x9, align 4
  %width10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %upper, i32 0, i32 2
  %30 = load i32, i32* %width10, align 4
  %31 = load i32, i32* %arrow_size, align 4
  %sub = sub nsw i32 %30, %31
  %div = sdiv i32 %sub, 2
  %add = add nsw i32 %29, %div
  %y11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %upper, i32 0, i32 1
  %32 = load i32, i32* %y11, align 4
  %33 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %33, i32 0, i32 13
  %34 = load i32, i32* %ythickness, align 4
  %add12 = add nsw i32 %32, %34
  %35 = load i32, i32* %arrow_space, align 4
  %36 = load i32, i32* %arrow_size, align 4
  %sub13 = sub nsw i32 %35, %36
  %div14 = sdiv i32 %sub13, 2
  %add15 = add nsw i32 %add12, %div14
  %37 = load i32, i32* %arrow_size, align 4
  %38 = load i32, i32* %arrow_size, align 4
  call void @gtk_paint_arrow(%struct._GtkStyle* %23, %struct._GdkDrawable* %24, i32 %26, i32 2, %struct._GdkRectangle* %area8, %struct._GtkWidget* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 1, i32 %add, i32 %add15, i32 %37, i32 %38)
  %39 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %40 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %41 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_state = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %41, i32 0, i32 21
  %42 = load i32, i32* %lower_arrow_state, align 4
  %43 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area16 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %43, i32 0, i32 3
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %x17 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %lower, i32 0, i32 0
  %45 = load i32, i32* %x17, align 4
  %y18 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %lower, i32 0, i32 1
  %46 = load i32, i32* %y18, align 4
  %width19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %lower, i32 0, i32 2
  %47 = load i32, i32* %width19, align 4
  %height20 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %lower, i32 0, i32 3
  %48 = load i32, i32* %height20, align 4
  call void @gtk_paint_box(%struct._GtkStyle* %39, %struct._GdkDrawable* %40, i32 %42, i32 2, %struct._GdkRectangle* %area16, %struct._GtkWidget* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %45, i32 %46, i32 %47, i32 %48)
  %49 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %50 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %51 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_state21 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %51, i32 0, i32 21
  %52 = load i32, i32* %lower_arrow_state21, align 4
  %53 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area22 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %53, i32 0, i32 3
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %x23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %lower, i32 0, i32 0
  %55 = load i32, i32* %x23, align 4
  %width24 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %lower, i32 0, i32 2
  %56 = load i32, i32* %width24, align 4
  %57 = load i32, i32* %arrow_size, align 4
  %sub25 = sub nsw i32 %56, %57
  %div26 = sdiv i32 %sub25, 2
  %add27 = add nsw i32 %55, %div26
  %y28 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %lower, i32 0, i32 1
  %58 = load i32, i32* %y28, align 4
  %59 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness29 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %59, i32 0, i32 13
  %60 = load i32, i32* %ythickness29, align 4
  %add30 = add nsw i32 %58, %60
  %61 = load i32, i32* %arrow_space, align 4
  %62 = load i32, i32* %arrow_size, align 4
  %sub31 = sub nsw i32 %61, %62
  %div32 = sdiv i32 %sub31, 2
  %add33 = add nsw i32 %add30, %div32
  %63 = load i32, i32* %arrow_size, align 4
  %64 = load i32, i32* %arrow_size, align 4
  call void @gtk_paint_arrow(%struct._GtkStyle* %49, %struct._GdkDrawable* %50, i32 %52, i32 2, %struct._GdkRectangle* %area22, %struct._GtkWidget* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 1, i32 %add27, i32 %add33, i32 %63, i32 %64)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.5, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_popup_border_event(%struct._GtkWidget* %widget, %union._GdkEvent* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %popup = alloca %struct._GimpTagPopup*, align 8
  %button_event = alloca %struct._GdkEventButton*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %motion_event = alloca %struct._GdkEventMotion*, align 8
  %x29 = alloca i32, align 4
  %y30 = alloca i32, align 4
  %button_event41 = alloca %struct._GdkEventButton*, align 8
  %scroll_event = alloca %struct._GdkEventScroll*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_popup_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTagPopup*
  store %struct._GimpTagPopup* %2, %struct._GimpTagPopup** %popup, align 8
  %3 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %3 to i32*
  %4 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %6 = bitcast %union._GdkEvent* %5 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %6, %struct._GdkEventButton** %button_event, align 8
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event, align 8
  %window = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 1
  %8 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %9)
  %cmp3 = icmp eq %struct._GdkDrawable* %8, %call2
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %10 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %11 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event, align 8
  %call4 = call i32 @gimp_tag_popup_button_scroll(%struct._GimpTagPopup* %10, %struct._GdkEventButton* %11)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %12, %struct._GdkRectangle* %allocation)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call6 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %13)
  %call7 = call %struct._GdkDrawable* @gdk_window_get_pointer(%struct._GdkDrawable* %call6, i32* %x, i32* %y, i32* null)
  %14 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event, align 8
  %window8 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %14, i32 0, i32 1
  %15 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window8, align 8
  %16 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %tag_area = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %16, i32 0, i32 4
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %tag_area, align 8
  %call9 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %17)
  %cmp10 = icmp ne %struct._GdkDrawable* %15, %call9
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.25

land.lhs.true.11:                                 ; preds = %if.end
  %18 = load i32, i32* %x, align 4
  %y12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %19 = load i32, i32* %y12, align 4
  %cmp13 = icmp slt i32 %18, %19
  br i1 %cmp13, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.11
  %20 = load i32, i32* %y, align 4
  %x14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %21 = load i32, i32* %x14, align 4
  %cmp15 = icmp slt i32 %20, %21
  br i1 %cmp15, label %if.then.23, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %22 = load i32, i32* %x, align 4
  %x17 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %23 = load i32, i32* %x17, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %24 = load i32, i32* %width, align 4
  %add = add nsw i32 %23, %24
  %cmp18 = icmp sgt i32 %22, %add
  br i1 %cmp18, label %if.then.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %25 = load i32, i32* %y, align 4
  %y20 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %26 = load i32, i32* %y20, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %27 = load i32, i32* %height, align 4
  %add21 = add nsw i32 %26, %27
  %cmp22 = icmp sgt i32 %25, %add21
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false.16, %lor.lhs.false, %land.lhs.true.11
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call24 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %29)
  call void @gdk_display_pointer_ungrab(%struct._GdkDisplay* %call24, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %30)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %lor.lhs.false.19, %if.end
  br label %if.end.74

if.else:                                          ; preds = %entry
  %31 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type26 = bitcast %union._GdkEvent* %31 to i32*
  %32 = load i32, i32* %type26, align 4
  %cmp27 = icmp eq i32 %32, 3
  br i1 %cmp27, label %if.then.28, label %if.else.36

if.then.28:                                       ; preds = %if.else
  %33 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %34 = bitcast %union._GdkEvent* %33 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %34, %struct._GdkEventMotion** %motion_event, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call31 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %35)
  %call32 = call %struct._GdkDrawable* @gdk_window_get_pointer(%struct._GdkDrawable* %call31, i32* %x29, i32* %y30, i32* null)
  %36 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %37 = load i32, i32* %x29, align 4
  %38 = load i32, i32* %y30, align 4
  %39 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %motion_event, align 8
  %window33 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %39, i32 0, i32 1
  %40 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window33, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call34 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %41)
  %cmp35 = icmp eq %struct._GdkDrawable* %40, %call34
  %conv = zext i1 %cmp35 to i32
  call void @gimp_tag_popup_handle_scrolling(%struct._GimpTagPopup* %36, i32 %37, i32 %38, i32 %conv, i32 1)
  br label %if.end.73

if.else.36:                                       ; preds = %if.else
  %42 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type37 = bitcast %union._GdkEvent* %42 to i32*
  %43 = load i32, i32* %type37, align 4
  %cmp38 = icmp eq i32 %43, 7
  br i1 %cmp38, label %if.then.40, label %if.else.51

if.then.40:                                       ; preds = %if.else.36
  %44 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %45 = bitcast %union._GdkEvent* %44 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %45, %struct._GdkEventButton** %button_event41, align 8
  %46 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %single_select_disabled = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %46, i32 0, i32 10
  store i32 1, i32* %single_select_disabled, align 4
  %47 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event41, align 8
  %window42 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %47, i32 0, i32 1
  %48 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window42, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call43 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %49)
  %cmp44 = icmp eq %struct._GdkDrawable* %48, %call43
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.50

land.lhs.true.46:                                 ; preds = %if.then.40
  %50 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %51 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event41, align 8
  %call47 = call i32 @gimp_tag_popup_button_scroll(%struct._GimpTagPopup* %50, %struct._GdkEventButton* %51)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.46
  store i32 1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.46, %if.then.40
  br label %if.end.72

if.else.51:                                       ; preds = %if.else.36
  %52 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type52 = bitcast %union._GdkEvent* %52 to i32*
  %53 = load i32, i32* %type52, align 4
  %cmp53 = icmp eq i32 %53, 35
  br i1 %cmp53, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.else.51
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call56 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %55)
  call void @gdk_display_pointer_ungrab(%struct._GdkDisplay* %call56, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %56)
  br label %if.end.71

if.else.57:                                       ; preds = %if.else.51
  %57 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type58 = bitcast %union._GdkEvent* %57 to i32*
  %58 = load i32, i32* %type58, align 4
  %cmp59 = icmp eq i32 %58, 8
  br i1 %cmp59, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.else.57
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call62 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %60)
  call void @gdk_display_pointer_ungrab(%struct._GdkDisplay* %call62, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %61)
  br label %if.end.70

if.else.63:                                       ; preds = %if.else.57
  %62 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type64 = bitcast %union._GdkEvent* %62 to i32*
  %63 = load i32, i32* %type64, align 4
  %cmp65 = icmp eq i32 %63, 31
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.else.63
  %64 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %65 = bitcast %union._GdkEvent* %64 to %struct._GdkEventScroll*
  store %struct._GdkEventScroll* %65, %struct._GdkEventScroll** %scroll_event, align 8
  %66 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %scroll_event, align 8
  %direction = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %66, i32 0, i32 7
  %67 = load i32, i32* %direction, align 4
  switch i32 %67, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.68
    i32 0, label %sw.bb.68
  ]

sw.bb:                                            ; preds = %if.then.67, %if.then.67
  %68 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  call void @gimp_tag_popup_scroll_by(%struct._GimpTagPopup* %68, i32 15)
  store i32 1, i32* %retval
  br label %return

sw.bb.68:                                         ; preds = %if.then.67, %if.then.67
  %69 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  call void @gimp_tag_popup_scroll_by(%struct._GimpTagPopup* %69, i32 -15)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then.67
  br label %if.end.69

if.end.69:                                        ; preds = %sw.epilog, %if.else.63
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.61
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.55
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.50
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.28
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %sw.bb.68, %sw.bb, %if.then.49, %if.then.5
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_popup_list_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, %struct._GimpTagPopup* %popup) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %window = alloca %struct._GdkDrawable*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %cr = alloca %struct._cairo*, align 8
  %attribute = alloca %struct._PangoAttribute*, align 8
  %attributes = alloca %struct._PangoAttrList*, align 8
  %i = alloca i32, align 4
  %tag_data = alloca %struct._PopupTagData*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %0)
  store %struct._GdkDrawable* %call, %struct._GdkDrawable** %window, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %1)
  store %struct._GtkStyle* %call1, %struct._GtkStyle** %style, align 8
  %2 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window2 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %2, i32 0, i32 1
  %3 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window2, align 8
  %call3 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %3)
  store %struct._cairo* %call3, %struct._cairo** %cr, align 8
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
  call void @cairo_set_line_cap(%struct._cairo* %9, i32 2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %11 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_count = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %11, i32 0, i32 8
  %12 = load i32, i32* %tag_count, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_data4 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %14, i32 0, i32 7
  %15 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data4, align 8
  %arrayidx = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %15, i64 %idxprom
  store %struct._PopupTagData* %arrayidx, %struct._PopupTagData** %tag_data, align 8
  %16 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %layout = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %16, i32 0, i32 6
  %17 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %18 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %tag = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %18, i32 0, i32 0
  %19 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %call5 = call i8* @gimp_tag_get_name(%struct._GimpTag* %19)
  call void @pango_layout_set_text(%struct._PangoLayout* %17, i8* %call5, i32 -1)
  %20 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %state = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %20, i32 0, i32 2
  %21 = load i32, i32* %state, align 4
  switch i32 %21, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %for.body
  %22 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %combo_entry = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %22, i32 0, i32 1
  %23 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %selected_item_attr = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %23, i32 0, i32 4
  %24 = load %struct._PangoAttrList*, %struct._PangoAttrList** %selected_item_attr, align 8
  %call6 = call %struct._PangoAttrList* @pango_attr_list_copy(%struct._PangoAttrList* %24)
  store %struct._PangoAttrList* %call6, %struct._PangoAttrList** %attributes, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  %25 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %combo_entry8 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %25, i32 0, i32 1
  %26 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry8, align 8
  %insensitive_item_attr = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %26, i32 0, i32 5
  %27 = load %struct._PangoAttrList*, %struct._PangoAttrList** %insensitive_item_attr, align 8
  %call9 = call %struct._PangoAttrList* @pango_attr_list_copy(%struct._PangoAttrList* %27)
  store %struct._PangoAttrList* %call9, %struct._PangoAttrList** %attributes, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %28 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %combo_entry10 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %28, i32 0, i32 1
  %29 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry10, align 8
  %normal_item_attr = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %29, i32 0, i32 3
  %30 = load %struct._PangoAttrList*, %struct._PangoAttrList** %normal_item_attr, align 8
  %call11 = call %struct._PangoAttrList* @pango_attr_list_copy(%struct._PangoAttrList* %30)
  store %struct._PangoAttrList* %call11, %struct._PangoAttrList** %attributes, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb
  %31 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %32 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %prelight = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %32, i32 0, i32 9
  %33 = load %struct._PopupTagData*, %struct._PopupTagData** %prelight, align 8
  %cmp12 = icmp eq %struct._PopupTagData* %31, %33
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.epilog
  %34 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %state13 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %34, i32 0, i32 2
  %35 = load i32, i32* %state13, align 4
  %cmp14 = icmp ne i32 %35, 4
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call15 = call %struct._PangoAttribute* @pango_attr_underline_new(i32 1)
  store %struct._PangoAttribute* %call15, %struct._PangoAttribute** %attribute, align 8
  %36 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attributes, align 8
  %37 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attribute, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %36, %struct._PangoAttribute* %37)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.epilog
  %38 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %layout16 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %38, i32 0, i32 6
  %39 = load %struct._PangoLayout*, %struct._PangoLayout** %layout16, align 8
  %40 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attributes, align 8
  call void @pango_layout_set_attributes(%struct._PangoLayout* %39, %struct._PangoAttrList* %40)
  %41 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attributes, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %41)
  %42 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %state17 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %42, i32 0, i32 2
  %43 = load i32, i32* %state17, align 4
  %cmp18 = icmp eq i32 %43, 3
  br i1 %cmp18, label %if.then.19, label %if.end.76

if.then.19:                                       ; preds = %if.end
  %44 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %45 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %combo_entry20 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %45, i32 0, i32 1
  %46 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry20, align 8
  %selected_item_color = getelementptr inbounds %struct._GimpComboTagEntry, %struct._GimpComboTagEntry* %46, i32 0, i32 6
  call void @gdk_cairo_set_source_color(%struct._cairo* %44, %struct._GdkColor* %selected_item_color)
  %47 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %48 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %48, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds, i32 0, i32 0
  %49 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %49, 1
  %conv = sitofp i32 %sub to double
  %50 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds21 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %50, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds21, i32 0, i32 1
  %51 = load i32, i32* %y, align 4
  %52 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_y = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %52, i32 0, i32 13
  %53 = load i32, i32* %scroll_y, align 4
  %sub22 = sub nsw i32 %51, %53
  %conv23 = sitofp i32 %sub22 to double
  %54 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds24 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %54, i32 0, i32 1
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds24, i32 0, i32 2
  %55 = load i32, i32* %width, align 4
  %add = add nsw i32 %55, 2
  %conv25 = sitofp i32 %add to double
  %56 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds26 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %56, i32 0, i32 1
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds26, i32 0, i32 3
  %57 = load i32, i32* %height, align 4
  %conv27 = sitofp i32 %57 to double
  call void @cairo_rectangle(%struct._cairo* %47, double %conv, double %conv23, double %conv25, double %conv27)
  %58 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %58)
  %59 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_translate(%struct._cairo* %59, double 5.000000e-01, double 5.000000e-01)
  %60 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %61 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds28 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %61, i32 0, i32 1
  %x29 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds28, i32 0, i32 0
  %62 = load i32, i32* %x29, align 4
  %conv30 = sitofp i32 %62 to double
  %63 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds31 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %63, i32 0, i32 1
  %y32 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds31, i32 0, i32 1
  %64 = load i32, i32* %y32, align 4
  %65 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_y33 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %65, i32 0, i32 13
  %66 = load i32, i32* %scroll_y33, align 4
  %sub34 = sub nsw i32 %64, %66
  %sub35 = sub nsw i32 %sub34, 1
  %conv36 = sitofp i32 %sub35 to double
  call void @cairo_move_to(%struct._cairo* %60, double %conv30, double %conv36)
  %67 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %68 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds37 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %68, i32 0, i32 1
  %x38 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds37, i32 0, i32 0
  %69 = load i32, i32* %x38, align 4
  %70 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds39 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %70, i32 0, i32 1
  %width40 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds39, i32 0, i32 2
  %71 = load i32, i32* %width40, align 4
  %add41 = add nsw i32 %69, %71
  %sub42 = sub nsw i32 %add41, 1
  %conv43 = sitofp i32 %sub42 to double
  %72 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds44 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %72, i32 0, i32 1
  %y45 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds44, i32 0, i32 1
  %73 = load i32, i32* %y45, align 4
  %74 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_y46 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %74, i32 0, i32 13
  %75 = load i32, i32* %scroll_y46, align 4
  %sub47 = sub nsw i32 %73, %75
  %sub48 = sub nsw i32 %sub47, 1
  %conv49 = sitofp i32 %sub48 to double
  call void @cairo_line_to(%struct._cairo* %67, double %conv43, double %conv49)
  %76 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %77 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds50 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %77, i32 0, i32 1
  %x51 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds50, i32 0, i32 0
  %78 = load i32, i32* %x51, align 4
  %conv52 = sitofp i32 %78 to double
  %79 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds53 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %79, i32 0, i32 1
  %y54 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds53, i32 0, i32 1
  %80 = load i32, i32* %y54, align 4
  %81 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_y55 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %81, i32 0, i32 13
  %82 = load i32, i32* %scroll_y55, align 4
  %sub56 = sub nsw i32 %80, %82
  %83 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds57 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %83, i32 0, i32 1
  %height58 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds57, i32 0, i32 3
  %84 = load i32, i32* %height58, align 4
  %add59 = add nsw i32 %sub56, %84
  %conv60 = sitofp i32 %add59 to double
  call void @cairo_move_to(%struct._cairo* %76, double %conv52, double %conv60)
  %85 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %86 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds61 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %86, i32 0, i32 1
  %x62 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds61, i32 0, i32 0
  %87 = load i32, i32* %x62, align 4
  %88 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds63 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %88, i32 0, i32 1
  %width64 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds63, i32 0, i32 2
  %89 = load i32, i32* %width64, align 4
  %add65 = add nsw i32 %87, %89
  %sub66 = sub nsw i32 %add65, 1
  %conv67 = sitofp i32 %sub66 to double
  %90 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds68 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %90, i32 0, i32 1
  %y69 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds68, i32 0, i32 1
  %91 = load i32, i32* %y69, align 4
  %92 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_y70 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %92, i32 0, i32 13
  %93 = load i32, i32* %scroll_y70, align 4
  %sub71 = sub nsw i32 %91, %93
  %94 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds72 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %94, i32 0, i32 1
  %height73 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds72, i32 0, i32 3
  %95 = load i32, i32* %height73, align 4
  %add74 = add nsw i32 %sub71, %95
  %conv75 = sitofp i32 %add74 to double
  call void @cairo_line_to(%struct._cairo* %85, double %conv67, double %conv75)
  %96 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %96)
  %97 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_translate(%struct._cairo* %97, double -5.000000e-01, double -5.000000e-01)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.19, %if.end
  %98 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %99 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds77 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %99, i32 0, i32 1
  %x78 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds77, i32 0, i32 0
  %100 = load i32, i32* %x78, align 4
  %add79 = add nsw i32 %100, 2
  %conv80 = sitofp i32 %add79 to double
  %101 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds81 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %101, i32 0, i32 1
  %y82 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds81, i32 0, i32 1
  %102 = load i32, i32* %y82, align 4
  %103 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_y83 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %103, i32 0, i32 13
  %104 = load i32, i32* %scroll_y83, align 4
  %sub84 = sub nsw i32 %102, %104
  %add85 = add nsw i32 %sub84, 2
  %conv86 = sitofp i32 %add85 to double
  call void @cairo_move_to(%struct._cairo* %98, double %conv80, double %conv86)
  %105 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %106 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %layout87 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %106, i32 0, i32 6
  %107 = load %struct._PangoLayout*, %struct._PangoLayout** %layout87, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %105, %struct._PangoLayout* %107)
  %108 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %109 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %prelight88 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %109, i32 0, i32 9
  %110 = load %struct._PopupTagData*, %struct._PopupTagData** %prelight88, align 8
  %cmp89 = icmp eq %struct._PopupTagData* %108, %110
  br i1 %cmp89, label %land.lhs.true.91, label %if.end.108

land.lhs.true.91:                                 ; preds = %if.end.76
  %111 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %state92 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %111, i32 0, i32 2
  %112 = load i32, i32* %state92, align 4
  %cmp93 = icmp ne i32 %112, 4
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.108

land.lhs.true.95:                                 ; preds = %land.lhs.true.91
  %113 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %single_select_disabled = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %113, i32 0, i32 10
  %114 = load i32, i32* %single_select_disabled, align 4
  %tobool = icmp ne i32 %114, 0
  br i1 %tobool, label %if.end.108, label %if.then.96

if.then.96:                                       ; preds = %land.lhs.true.95
  %115 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %116 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %117 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %state97 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %117, i32 0, i32 2
  %118 = load i32, i32* %state97, align 4
  %119 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %119, i32 0, i32 3
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %121 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds98 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %121, i32 0, i32 1
  %x99 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds98, i32 0, i32 0
  %122 = load i32, i32* %x99, align 4
  %123 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds100 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %123, i32 0, i32 1
  %y101 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds100, i32 0, i32 1
  %124 = load i32, i32* %y101, align 4
  %125 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_y102 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %125, i32 0, i32 13
  %126 = load i32, i32* %scroll_y102, align 4
  %sub103 = sub nsw i32 %124, %126
  %127 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds104 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %127, i32 0, i32 1
  %width105 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds104, i32 0, i32 2
  %128 = load i32, i32* %width105, align 4
  %129 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %bounds106 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %129, i32 0, i32 1
  %height107 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds106, i32 0, i32 3
  %130 = load i32, i32* %height107, align 4
  call void @gtk_paint_focus(%struct._GtkStyle* %115, %struct._GdkDrawable* %116, i32 %118, %struct._GdkRectangle* %area, %struct._GtkWidget* %120, i8* null, i32 %122, i32 %sub103, i32 %128, i32 %130)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.96, %land.lhs.true.95, %land.lhs.true.91, %if.end.76
  br label %for.inc

for.inc:                                          ; preds = %if.end.108
  %131 = load i32, i32* %i, align 4
  %inc = add nsw i32 %131, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %132 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %132)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_popup_list_event(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct._GimpTagPopup* %popup) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %button_event = alloca %struct._GdkEventButton*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %tag_data = alloca %struct._PopupTagData*, align 8
  %motion_event = alloca %struct._GdkEventMotion*, align 8
  %prelight = alloca %struct._PopupTagData*, align 8
  %x13 = alloca i32, align 4
  %y14 = alloca i32, align 4
  %i15 = alloca i32, align 4
  %tag_data28 = alloca %struct._PopupTagData*, align 8
  %button_event62 = alloca %struct._GdkEventButton*, align 8
  %x63 = alloca i32, align 4
  %y64 = alloca i32, align 4
  %i65 = alloca i32, align 4
  %tag_data79 = alloca %struct._PopupTagData*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %3 = bitcast %union._GdkEvent* %2 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %3, %struct._GdkEventButton** %button_event, align 8
  %4 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %single_select_disabled = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %4, i32 0, i32 10
  store i32 1, i32* %single_select_disabled, align 4
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event, align 8
  %x1 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 4
  %6 = load double, double* %x1, align 8
  %conv = fptosi double %6 to i32
  store i32 %conv, i32* %x, align 4
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event, align 8
  %y2 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 5
  %8 = load double, double* %y2, align 8
  %9 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_y = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %9, i32 0, i32 13
  %10 = load i32, i32* %scroll_y, align 4
  %conv3 = sitofp i32 %10 to double
  %add = fadd double %8, %conv3
  %conv4 = fptosi double %add to i32
  store i32 %conv4, i32* %y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, i32* %i, align 4
  %12 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_count = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %12, i32 0, i32 8
  %13 = load i32, i32* %tag_count, align 4
  %cmp5 = icmp slt i32 %11, %13
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_data7 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %15, i32 0, i32 7
  %16 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data7, align 8
  %arrayidx = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %16, i64 %idxprom
  store %struct._PopupTagData* %arrayidx, %struct._PopupTagData** %tag_data, align 8
  %17 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %y, align 4
  %call = call i32 @gimp_tag_popup_is_in_tag(%struct._PopupTagData* %17, i32 %18, i32 %19)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.body
  %20 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %21 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data, align 8
  call void @gimp_tag_popup_toggle_tag(%struct._GimpTagPopup* %20, %struct._PopupTagData* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %22)
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  br label %if.end.94

if.else:                                          ; preds = %entry
  %24 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type9 = bitcast %union._GdkEvent* %24 to i32*
  %25 = load i32, i32* %type9, align 4
  %cmp10 = icmp eq i32 %25, 3
  br i1 %cmp10, label %if.then.12, label %if.else.55

if.then.12:                                       ; preds = %if.else
  %26 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %27 = bitcast %union._GdkEvent* %26 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %27, %struct._GdkEventMotion** %motion_event, align 8
  store %struct._PopupTagData* null, %struct._PopupTagData** %prelight, align 8
  %28 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %motion_event, align 8
  %x16 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %28, i32 0, i32 4
  %29 = load double, double* %x16, align 8
  %conv17 = fptosi double %29 to i32
  store i32 %conv17, i32* %x13, align 4
  %30 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %motion_event, align 8
  %y18 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %30, i32 0, i32 5
  %31 = load double, double* %y18, align 8
  %32 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_y19 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %32, i32 0, i32 13
  %33 = load i32, i32* %scroll_y19, align 4
  %conv20 = sitofp i32 %33 to double
  %add21 = fadd double %31, %conv20
  %conv22 = fptosi double %add21 to i32
  store i32 %conv22, i32* %y14, align 4
  store i32 0, i32* %i15, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.36, %if.then.12
  %34 = load i32, i32* %i15, align 4
  %35 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_count24 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %35, i32 0, i32 8
  %36 = load i32, i32* %tag_count24, align 4
  %cmp25 = icmp slt i32 %34, %36
  br i1 %cmp25, label %for.body.27, label %for.end.38

for.body.27:                                      ; preds = %for.cond.23
  %37 = load i32, i32* %i15, align 4
  %idxprom29 = sext i32 %37 to i64
  %38 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_data30 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %38, i32 0, i32 7
  %39 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data30, align 8
  %arrayidx31 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %39, i64 %idxprom29
  store %struct._PopupTagData* %arrayidx31, %struct._PopupTagData** %tag_data28, align 8
  %40 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data28, align 8
  %41 = load i32, i32* %x13, align 4
  %42 = load i32, i32* %y14, align 4
  %call32 = call i32 @gimp_tag_popup_is_in_tag(%struct._PopupTagData* %40, i32 %41, i32 %42)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body.27
  %43 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data28, align 8
  store %struct._PopupTagData* %43, %struct._PopupTagData** %prelight, align 8
  br label %for.end.38

if.end.35:                                        ; preds = %for.body.27
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %44 = load i32, i32* %i15, align 4
  %inc37 = add nsw i32 %44, 1
  store i32 %inc37, i32* %i15, align 4
  br label %for.cond.23

for.end.38:                                       ; preds = %if.then.34, %for.cond.23
  %45 = load %struct._PopupTagData*, %struct._PopupTagData** %prelight, align 8
  %46 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %prelight39 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %46, i32 0, i32 9
  %47 = load %struct._PopupTagData*, %struct._PopupTagData** %prelight39, align 8
  %cmp40 = icmp ne %struct._PopupTagData* %45, %47
  br i1 %cmp40, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %for.end.38
  %48 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %prelight43 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %48, i32 0, i32 9
  %49 = load %struct._PopupTagData*, %struct._PopupTagData** %prelight43, align 8
  %tobool44 = icmp ne %struct._PopupTagData* %49, null
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.then.42
  %50 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %51 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %prelight46 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %51, i32 0, i32 9
  %52 = load %struct._PopupTagData*, %struct._PopupTagData** %prelight46, align 8
  call void @gimp_tag_popup_queue_draw_tag(%struct._GimpTagPopup* %50, %struct._PopupTagData* %52)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.42
  %53 = load %struct._PopupTagData*, %struct._PopupTagData** %prelight, align 8
  %54 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %prelight48 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %54, i32 0, i32 9
  store %struct._PopupTagData* %53, %struct._PopupTagData** %prelight48, align 8
  %55 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %prelight49 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %55, i32 0, i32 9
  %56 = load %struct._PopupTagData*, %struct._PopupTagData** %prelight49, align 8
  %tobool50 = icmp ne %struct._PopupTagData* %56, null
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.47
  %57 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %58 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %prelight52 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %58, i32 0, i32 9
  %59 = load %struct._PopupTagData*, %struct._PopupTagData** %prelight52, align 8
  call void @gimp_tag_popup_queue_draw_tag(%struct._GimpTagPopup* %57, %struct._PopupTagData* %59)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.47
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %for.end.38
  br label %if.end.93

if.else.55:                                       ; preds = %if.else
  %60 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type56 = bitcast %union._GdkEvent* %60 to i32*
  %61 = load i32, i32* %type56, align 4
  %cmp57 = icmp eq i32 %61, 7
  br i1 %cmp57, label %land.lhs.true, label %if.end.92

land.lhs.true:                                    ; preds = %if.else.55
  %62 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %single_select_disabled59 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %62, i32 0, i32 10
  %63 = load i32, i32* %single_select_disabled59, align 4
  %tobool60 = icmp ne i32 %63, 0
  br i1 %tobool60, label %if.end.92, label %if.then.61

if.then.61:                                       ; preds = %land.lhs.true
  %64 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %65 = bitcast %union._GdkEvent* %64 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %65, %struct._GdkEventButton** %button_event62, align 8
  %66 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %single_select_disabled66 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %66, i32 0, i32 10
  store i32 1, i32* %single_select_disabled66, align 4
  %67 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event62, align 8
  %x67 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %67, i32 0, i32 4
  %68 = load double, double* %x67, align 8
  %conv68 = fptosi double %68 to i32
  store i32 %conv68, i32* %x63, align 4
  %69 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event62, align 8
  %y69 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %69, i32 0, i32 5
  %70 = load double, double* %y69, align 8
  %71 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_y70 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %71, i32 0, i32 13
  %72 = load i32, i32* %scroll_y70, align 4
  %conv71 = sitofp i32 %72 to double
  %add72 = fadd double %70, %conv71
  %conv73 = fptosi double %add72 to i32
  store i32 %conv73, i32* %y64, align 4
  store i32 0, i32* %i65, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.89, %if.then.61
  %73 = load i32, i32* %i65, align 4
  %74 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_count75 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %74, i32 0, i32 8
  %75 = load i32, i32* %tag_count75, align 4
  %cmp76 = icmp slt i32 %73, %75
  br i1 %cmp76, label %for.body.78, label %for.end.91

for.body.78:                                      ; preds = %for.cond.74
  %76 = load i32, i32* %i65, align 4
  %idxprom80 = sext i32 %76 to i64
  %77 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_data81 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %77, i32 0, i32 7
  %78 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data81, align 8
  %arrayidx82 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %78, i64 %idxprom80
  store %struct._PopupTagData* %arrayidx82, %struct._PopupTagData** %tag_data79, align 8
  %79 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data79, align 8
  %80 = load i32, i32* %x63, align 4
  %81 = load i32, i32* %y64, align 4
  %call83 = call i32 @gimp_tag_popup_is_in_tag(%struct._PopupTagData* %79, i32 %80, i32 %81)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %for.body.78
  %82 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %83 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data79, align 8
  call void @gimp_tag_popup_toggle_tag(%struct._GimpTagPopup* %82, %struct._PopupTagData* %83)
  %84 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %85 = bitcast %struct._GimpTagPopup* %84 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_widget_get_type() #7
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call86)
  %86 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %86)
  br label %for.end.91

if.end.88:                                        ; preds = %for.body.78
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %87 = load i32, i32* %i65, align 4
  %inc90 = add nsw i32 %87, 1
  store i32 %inc90, i32* %i65, align 4
  br label %for.cond.74

for.end.91:                                       ; preds = %if.then.85, %for.cond.74
  br label %if.end.92

if.end.92:                                        ; preds = %for.end.91, %land.lhs.true, %if.else.55
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.54
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %for.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @get_arrows_visible_area(%struct._GimpTagPopup* %popup, %struct._GdkRectangle* %border, %struct._GdkRectangle* %upper, %struct._GdkRectangle* %lower, i32* %arrow_space) #3 {
entry:
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %border.addr = alloca %struct._GdkRectangle*, align 8
  %upper.addr = alloca %struct._GdkRectangle*, align 8
  %lower.addr = alloca %struct._GdkRectangle*, align 8
  %arrow_space.addr = alloca i32*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %padding_top = alloca i32, align 4
  %padding_bottom = alloca i32, align 4
  %padding_left = alloca i32, align 4
  %padding_right = alloca i32, align 4
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  store %struct._GdkRectangle* %border, %struct._GdkRectangle** %border.addr, align 8
  store %struct._GdkRectangle* %upper, %struct._GdkRectangle** %upper.addr, align 8
  store %struct._GdkRectangle* %lower, %struct._GdkRectangle** %lower.addr, align 8
  store i32* %arrow_space, i32** %arrow_space.addr, align 8
  %0 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %alignment = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %0, i32 0, i32 3
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %widget, align 8
  %4 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %alignment2 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %4, i32 0, i32 3
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment2, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_alignment_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkAlignment*
  call void @gtk_alignment_get_padding(%struct._GtkAlignment* %7, i32* %padding_top, i32* %padding_bottom, i32* %padding_left, i32* %padding_right)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %9 = load %struct._GdkRectangle*, %struct._GdkRectangle** %border.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %8, %struct._GdkRectangle* %9)
  %10 = load %struct._GdkRectangle*, %struct._GdkRectangle** %border.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %10, i32 0, i32 0
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %padding_left, align 4
  %add = add i32 %11, %12
  %13 = load %struct._GdkRectangle*, %struct._GdkRectangle** %upper.addr, align 8
  %x5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %13, i32 0, i32 0
  store i32 %add, i32* %x5, align 4
  %14 = load %struct._GdkRectangle*, %struct._GdkRectangle** %border.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %14, i32 0, i32 1
  %15 = load i32, i32* %y, align 4
  %16 = load %struct._GdkRectangle*, %struct._GdkRectangle** %upper.addr, align 8
  %y6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %16, i32 0, i32 1
  store i32 %15, i32* %y6, align 4
  %17 = load %struct._GdkRectangle*, %struct._GdkRectangle** %border.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %17, i32 0, i32 2
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %padding_left, align 4
  %sub = sub i32 %18, %19
  %20 = load i32, i32* %padding_right, align 4
  %sub7 = sub i32 %sub, %20
  %21 = load %struct._GdkRectangle*, %struct._GdkRectangle** %upper.addr, align 8
  %width8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %21, i32 0, i32 2
  store i32 %sub7, i32* %width8, align 4
  %22 = load i32, i32* %padding_top, align 4
  %23 = load %struct._GdkRectangle*, %struct._GdkRectangle** %upper.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %23, i32 0, i32 3
  store i32 %22, i32* %height, align 4
  %24 = load %struct._GdkRectangle*, %struct._GdkRectangle** %border.addr, align 8
  %x9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %24, i32 0, i32 0
  %25 = load i32, i32* %x9, align 4
  %26 = load i32, i32* %padding_left, align 4
  %add10 = add i32 %25, %26
  %27 = load %struct._GdkRectangle*, %struct._GdkRectangle** %lower.addr, align 8
  %x11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %27, i32 0, i32 0
  store i32 %add10, i32* %x11, align 4
  %28 = load %struct._GdkRectangle*, %struct._GdkRectangle** %border.addr, align 8
  %y12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %28, i32 0, i32 1
  %29 = load i32, i32* %y12, align 4
  %30 = load %struct._GdkRectangle*, %struct._GdkRectangle** %border.addr, align 8
  %height13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %30, i32 0, i32 3
  %31 = load i32, i32* %height13, align 4
  %add14 = add nsw i32 %29, %31
  %32 = load i32, i32* %padding_bottom, align 4
  %sub15 = sub i32 %add14, %32
  %33 = load %struct._GdkRectangle*, %struct._GdkRectangle** %lower.addr, align 8
  %y16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %33, i32 0, i32 1
  store i32 %sub15, i32* %y16, align 4
  %34 = load %struct._GdkRectangle*, %struct._GdkRectangle** %border.addr, align 8
  %width17 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %34, i32 0, i32 2
  %35 = load i32, i32* %width17, align 4
  %36 = load i32, i32* %padding_left, align 4
  %sub18 = sub i32 %35, %36
  %37 = load i32, i32* %padding_right, align 4
  %sub19 = sub i32 %sub18, %37
  %38 = load %struct._GdkRectangle*, %struct._GdkRectangle** %lower.addr, align 8
  %width20 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %38, i32 0, i32 2
  store i32 %sub19, i32* %width20, align 4
  %39 = load i32, i32* %padding_bottom, align 4
  %40 = load %struct._GdkRectangle*, %struct._GdkRectangle** %lower.addr, align 8
  %height21 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %40, i32 0, i32 3
  store i32 %39, i32* %height21, align 4
  %41 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_arrow_height = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %41, i32 0, i32 15
  %42 = load i32, i32* %scroll_arrow_height, align 4
  %43 = load i32*, i32** %arrow_space.addr, align 8
  store i32 %42, i32* %43, align 4
  ret void
}

declare void @gtk_paint_box(%struct._GtkStyle*, %struct._GdkDrawable*, i32, i32, %struct._GdkRectangle*, %struct._GtkWidget*, i8*, i32, i32, i32, i32) #1

declare void @gtk_paint_arrow(%struct._GtkStyle*, %struct._GdkDrawable*, i32, i32, %struct._GdkRectangle*, %struct._GtkWidget*, i8*, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_alignment_get_padding(%struct._GtkAlignment*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_popup_button_scroll(%struct._GimpTagPopup* %popup, %struct._GdkEventButton* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %touchscreen_mode = alloca i32, align 4
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_prelight = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %0, i32 0, i32 18
  %1 = load i32, i32* %upper_arrow_prelight, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_prelight = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %2, i32 0, i32 19
  %3 = load i32, i32* %lower_arrow_prelight, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end.8

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %5 = bitcast %struct._GimpTagPopup* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  %call3 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %6)
  %7 = bitcast %struct._GtkSettings* %call3 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i32* %touchscreen_mode, i8* null)
  %8 = load i32, i32* %touchscreen_mode, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %10 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x_root = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %10, i32 0, i32 10
  %11 = load double, double* %x_root, align 8
  %conv = fptosi double %11 to i32
  %12 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y_root = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %12, i32 0, i32 11
  %13 = load double, double* %y_root, align 8
  %conv6 = fptosi double %13 to i32
  %14 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %14, i32 0, i32 0
  %15 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %15, 4
  %conv7 = zext i1 %cmp to i32
  call void @gimp_tag_popup_handle_scrolling(%struct._GimpTagPopup* %9, i32 %conv, i32 %conv6, i32 %conv7, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.end
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare %struct._GdkDrawable* @gdk_window_get_pointer(%struct._GdkDrawable*, i32*, i32*, i32*) #1

declare void @gdk_display_pointer_ungrab(%struct._GdkDisplay*, i32) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_handle_scrolling(%struct._GimpTagPopup* %popup, i32 %x, i32 %y, i32 %enter, i32 %motion) #3 {
entry:
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %enter.addr = alloca i32, align 4
  %motion.addr = alloca i32, align 4
  %rect = alloca %struct._GdkRectangle, align 4
  %in_arrow = alloca i32, align 4
  %scroll_fast = alloca i32, align 4
  %touchscreen_mode = alloca i32, align 4
  %arrow_pressed = alloca i32, align 4
  %arrow_state = alloca i32, align 4
  %arrow_pressed127 = alloca i32, align 4
  %arrow_state195 = alloca i32, align 4
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %enter, i32* %enter.addr, align 4
  store i32 %motion, i32* %motion.addr, align 4
  store i32 0, i32* %scroll_fast, align 4
  %0 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %1 = bitcast %struct._GimpTagPopup* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %2)
  %3 = bitcast %struct._GtkSettings* %call2 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i32* %touchscreen_mode, i8* null)
  %4 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @get_arrows_sensitive_area(%struct._GimpTagPopup* %4, %struct._GdkRectangle* %rect, %struct._GdkRectangle* null)
  store i32 0, i32* %in_arrow, align 4
  %5 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %arrows_visible = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %5, i32 0, i32 17
  %6 = load i32, i32* %arrows_visible, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %x.addr, align 4
  %x3 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %8 = load i32, i32* %x3, align 4
  %cmp = icmp sge i32 %7, %8
  br i1 %cmp, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %x.addr, align 4
  %x5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %10 = load i32, i32* %x5, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %11 = load i32, i32* %width, align 4
  %add = add nsw i32 %10, %11
  %cmp6 = icmp slt i32 %9, %add
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %12 = load i32, i32* %y.addr, align 4
  %y8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %13 = load i32, i32* %y8, align 4
  %cmp9 = icmp sge i32 %12, %13
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %14 = load i32, i32* %y.addr, align 4
  %y11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %15 = load i32, i32* %y11, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %16 = load i32, i32* %height, align 4
  %add12 = add nsw i32 %15, %16
  %cmp13 = icmp slt i32 %14, %add12
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.10
  store i32 1, i32* %in_arrow, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.10, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true, %entry
  %17 = load i32, i32* %touchscreen_mode, align 4
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  %18 = load i32, i32* %in_arrow, align 4
  %19 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_prelight = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %19, i32 0, i32 18
  store i32 %18, i32* %upper_arrow_prelight, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end
  %20 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_state = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %20, i32 0, i32 20
  %21 = load i32, i32* %upper_arrow_state, align 4
  %cmp17 = icmp ne i32 %21, 4
  br i1 %cmp17, label %if.then.18, label %if.end.96

if.then.18:                                       ; preds = %if.end.16
  store i32 0, i32* %arrow_pressed, align 4
  %22 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %arrows_visible19 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %22, i32 0, i32 17
  %23 = load i32, i32* %arrows_visible19, align 4
  %tobool20 = icmp ne i32 %23, 0
  br i1 %tobool20, label %if.then.21, label %if.end.73

if.then.21:                                       ; preds = %if.then.18
  %24 = load i32, i32* %touchscreen_mode, align 4
  %tobool22 = icmp ne i32 %24, 0
  br i1 %tobool22, label %if.then.23, label %if.else.40

if.then.23:                                       ; preds = %if.then.21
  %25 = load i32, i32* %enter.addr, align 4
  %tobool24 = icmp ne i32 %25, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.35

land.lhs.true.25:                                 ; preds = %if.then.23
  %26 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_prelight26 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %26, i32 0, i32 18
  %27 = load i32, i32* %upper_arrow_prelight26, align 4
  %tobool27 = icmp ne i32 %27, 0
  br i1 %tobool27, label %if.then.28, label %if.else.35

if.then.28:                                       ; preds = %land.lhs.true.25
  %28 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_timeout_id = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %28, i32 0, i32 11
  %29 = load i32, i32* %scroll_timeout_id, align 4
  %cmp29 = icmp eq i32 %29, 0
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.then.28
  %30 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @gimp_tag_popup_remove_scroll_timeout(%struct._GimpTagPopup* %30)
  %31 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_step = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %31, i32 0, i32 14
  store i32 -15, i32* %scroll_step, align 4
  %32 = load i32, i32* %motion.addr, align 4
  %tobool31 = icmp ne i32 %32, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.then.30
  %33 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @gimp_tag_popup_start_scrolling(%struct._GimpTagPopup* %33)
  store i32 1, i32* %arrow_pressed, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.then.30
  br label %if.end.34

if.else:                                          ; preds = %if.then.28
  store i32 1, i32* %arrow_pressed, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.end.33
  br label %if.end.39

if.else.35:                                       ; preds = %land.lhs.true.25, %if.then.23
  %34 = load i32, i32* %enter.addr, align 4
  %tobool36 = icmp ne i32 %34, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.else.35
  %35 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @gimp_tag_popup_stop_scrolling(%struct._GimpTagPopup* %35)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.else.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.34
  br label %if.end.72

if.else.40:                                       ; preds = %if.then.21
  %36 = load i32, i32* %y.addr, align 4
  %y41 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %37 = load i32, i32* %y41, align 4
  %add42 = add nsw i32 %37, 8
  %cmp43 = icmp slt i32 %36, %add42
  %conv = zext i1 %cmp43 to i32
  store i32 %conv, i32* %scroll_fast, align 4
  %38 = load i32, i32* %enter.addr, align 4
  %tobool44 = icmp ne i32 %38, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.else.62

land.lhs.true.45:                                 ; preds = %if.else.40
  %39 = load i32, i32* %in_arrow, align 4
  %tobool46 = icmp ne i32 %39, 0
  br i1 %tobool46, label %land.lhs.true.47, label %if.else.62

land.lhs.true.47:                                 ; preds = %land.lhs.true.45
  %40 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_prelight48 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %40, i32 0, i32 18
  %41 = load i32, i32* %upper_arrow_prelight48, align 4
  %tobool49 = icmp ne i32 %41, 0
  br i1 %tobool49, label %lor.lhs.false, label %if.then.53

lor.lhs.false:                                    ; preds = %land.lhs.true.47
  %42 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_fast50 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %42, i32 0, i32 16
  %43 = load i32, i32* %scroll_fast50, align 4
  %44 = load i32, i32* %scroll_fast, align 4
  %cmp51 = icmp ne i32 %43, %44
  br i1 %cmp51, label %if.then.53, label %if.else.62

if.then.53:                                       ; preds = %lor.lhs.false, %land.lhs.true.47
  %45 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_prelight54 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %45, i32 0, i32 18
  store i32 1, i32* %upper_arrow_prelight54, align 4
  %46 = load i32, i32* %scroll_fast, align 4
  %47 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_fast55 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %47, i32 0, i32 16
  store i32 %46, i32* %scroll_fast55, align 4
  %48 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @gimp_tag_popup_remove_scroll_timeout(%struct._GimpTagPopup* %48)
  %49 = load i32, i32* %scroll_fast, align 4
  %tobool56 = icmp ne i32 %49, 0
  %cond = select i1 %tobool56, i32 -15, i32 -8
  %50 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_step57 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %50, i32 0, i32 14
  store i32 %cond, i32* %scroll_step57, align 4
  %51 = load i32, i32* %scroll_fast, align 4
  %tobool58 = icmp ne i32 %51, 0
  %cond59 = select i1 %tobool58, i32 20, i32 50
  %52 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %53 = bitcast %struct._GimpTagPopup* %52 to i8*
  %call60 = call i32 @gdk_threads_add_timeout(i32 %cond59, i32 (i8*)* @gimp_tag_popup_scroll_timeout, i8* %53)
  %54 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_timeout_id61 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %54, i32 0, i32 11
  store i32 %call60, i32* %scroll_timeout_id61, align 4
  br label %if.end.71

if.else.62:                                       ; preds = %lor.lhs.false, %land.lhs.true.45, %if.else.40
  %55 = load i32, i32* %enter.addr, align 4
  %tobool63 = icmp ne i32 %55, 0
  br i1 %tobool63, label %if.end.70, label %land.lhs.true.64

land.lhs.true.64:                                 ; preds = %if.else.62
  %56 = load i32, i32* %in_arrow, align 4
  %tobool65 = icmp ne i32 %56, 0
  br i1 %tobool65, label %if.end.70, label %land.lhs.true.66

land.lhs.true.66:                                 ; preds = %land.lhs.true.64
  %57 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_prelight67 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %57, i32 0, i32 18
  %58 = load i32, i32* %upper_arrow_prelight67, align 4
  %tobool68 = icmp ne i32 %58, 0
  br i1 %tobool68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true.66
  %59 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @gimp_tag_popup_stop_scrolling(%struct._GimpTagPopup* %59)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %land.lhs.true.66, %land.lhs.true.64, %if.else.62
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.53
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.39
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.18
  %60 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_state74 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %60, i32 0, i32 20
  %61 = load i32, i32* %upper_arrow_state74, align 4
  %cmp75 = icmp ne i32 %61, 4
  br i1 %cmp75, label %if.then.77, label %if.end.95

if.then.77:                                       ; preds = %if.end.73
  store i32 0, i32* %arrow_state, align 4
  %62 = load i32, i32* %arrow_pressed, align 4
  %tobool78 = icmp ne i32 %62, 0
  br i1 %tobool78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.then.77
  store i32 1, i32* %arrow_state, align 4
  br label %if.end.85

if.else.80:                                       ; preds = %if.then.77
  %63 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_prelight81 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %63, i32 0, i32 18
  %64 = load i32, i32* %upper_arrow_prelight81, align 4
  %tobool82 = icmp ne i32 %64, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.else.80
  store i32 2, i32* %arrow_state, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.else.80
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.79
  %65 = load i32, i32* %arrow_state, align 4
  %66 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_state86 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %66, i32 0, i32 20
  %67 = load i32, i32* %upper_arrow_state86, align 4
  %cmp87 = icmp ne i32 %65, %67
  br i1 %cmp87, label %if.then.89, label %if.end.94

if.then.89:                                       ; preds = %if.end.85
  %68 = load i32, i32* %arrow_state, align 4
  %69 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_state90 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %69, i32 0, i32 20
  store i32 %68, i32* %upper_arrow_state90, align 4
  %70 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %71 = bitcast %struct._GimpTagPopup* %70 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_widget_get_type() #7
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call91)
  %72 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkWidget*
  %call93 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %72)
  call void @gdk_window_invalidate_rect(%struct._GdkDrawable* %call93, %struct._GdkRectangle* %rect, i32 0)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.89, %if.end.85
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.73
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.16
  %73 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @get_arrows_sensitive_area(%struct._GimpTagPopup* %73, %struct._GdkRectangle* null, %struct._GdkRectangle* %rect)
  store i32 0, i32* %in_arrow, align 4
  %74 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %arrows_visible97 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %74, i32 0, i32 17
  %75 = load i32, i32* %arrows_visible97, align 4
  %tobool98 = icmp ne i32 %75, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.120

land.lhs.true.99:                                 ; preds = %if.end.96
  %76 = load i32, i32* %x.addr, align 4
  %x100 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %77 = load i32, i32* %x100, align 4
  %cmp101 = icmp sge i32 %76, %77
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.120

land.lhs.true.103:                                ; preds = %land.lhs.true.99
  %78 = load i32, i32* %x.addr, align 4
  %x104 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %79 = load i32, i32* %x104, align 4
  %width105 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %80 = load i32, i32* %width105, align 4
  %add106 = add nsw i32 %79, %80
  %cmp107 = icmp slt i32 %78, %add106
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.120

land.lhs.true.109:                                ; preds = %land.lhs.true.103
  %81 = load i32, i32* %y.addr, align 4
  %y110 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %82 = load i32, i32* %y110, align 4
  %cmp111 = icmp sge i32 %81, %82
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.120

land.lhs.true.113:                                ; preds = %land.lhs.true.109
  %83 = load i32, i32* %y.addr, align 4
  %y114 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %84 = load i32, i32* %y114, align 4
  %height115 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %85 = load i32, i32* %height115, align 4
  %add116 = add nsw i32 %84, %85
  %cmp117 = icmp slt i32 %83, %add116
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %land.lhs.true.113
  store i32 1, i32* %in_arrow, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %land.lhs.true.113, %land.lhs.true.109, %land.lhs.true.103, %land.lhs.true.99, %if.end.96
  %86 = load i32, i32* %touchscreen_mode, align 4
  %tobool121 = icmp ne i32 %86, 0
  br i1 %tobool121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.120
  %87 = load i32, i32* %in_arrow, align 4
  %88 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_prelight = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %88, i32 0, i32 19
  store i32 %87, i32* %lower_arrow_prelight, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %if.end.120
  %89 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_state = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %89, i32 0, i32 21
  %90 = load i32, i32* %lower_arrow_state, align 4
  %cmp124 = icmp ne i32 %90, 4
  br i1 %cmp124, label %if.then.126, label %if.end.214

if.then.126:                                      ; preds = %if.end.123
  store i32 0, i32* %arrow_pressed127, align 4
  %91 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %arrows_visible128 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %91, i32 0, i32 17
  %92 = load i32, i32* %arrows_visible128, align 4
  %tobool129 = icmp ne i32 %92, 0
  br i1 %tobool129, label %if.then.130, label %if.end.190

if.then.130:                                      ; preds = %if.then.126
  %93 = load i32, i32* %touchscreen_mode, align 4
  %tobool131 = icmp ne i32 %93, 0
  br i1 %tobool131, label %if.then.132, label %if.else.153

if.then.132:                                      ; preds = %if.then.130
  %94 = load i32, i32* %enter.addr, align 4
  %tobool133 = icmp ne i32 %94, 0
  br i1 %tobool133, label %land.lhs.true.134, label %if.else.148

land.lhs.true.134:                                ; preds = %if.then.132
  %95 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_prelight135 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %95, i32 0, i32 19
  %96 = load i32, i32* %lower_arrow_prelight135, align 4
  %tobool136 = icmp ne i32 %96, 0
  br i1 %tobool136, label %if.then.137, label %if.else.148

if.then.137:                                      ; preds = %land.lhs.true.134
  %97 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_timeout_id138 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %97, i32 0, i32 11
  %98 = load i32, i32* %scroll_timeout_id138, align 4
  %cmp139 = icmp eq i32 %98, 0
  br i1 %cmp139, label %if.then.141, label %if.else.146

if.then.141:                                      ; preds = %if.then.137
  %99 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @gimp_tag_popup_remove_scroll_timeout(%struct._GimpTagPopup* %99)
  %100 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_step142 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %100, i32 0, i32 14
  store i32 15, i32* %scroll_step142, align 4
  %101 = load i32, i32* %motion.addr, align 4
  %tobool143 = icmp ne i32 %101, 0
  br i1 %tobool143, label %if.end.145, label %if.then.144

if.then.144:                                      ; preds = %if.then.141
  %102 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @gimp_tag_popup_start_scrolling(%struct._GimpTagPopup* %102)
  store i32 1, i32* %arrow_pressed127, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %if.then.141
  br label %if.end.147

if.else.146:                                      ; preds = %if.then.137
  store i32 1, i32* %arrow_pressed127, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.146, %if.end.145
  br label %if.end.152

if.else.148:                                      ; preds = %land.lhs.true.134, %if.then.132
  %103 = load i32, i32* %enter.addr, align 4
  %tobool149 = icmp ne i32 %103, 0
  br i1 %tobool149, label %if.end.151, label %if.then.150

if.then.150:                                      ; preds = %if.else.148
  %104 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @gimp_tag_popup_stop_scrolling(%struct._GimpTagPopup* %104)
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %if.else.148
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.147
  br label %if.end.189

if.else.153:                                      ; preds = %if.then.130
  %105 = load i32, i32* %y.addr, align 4
  %y154 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %106 = load i32, i32* %y154, align 4
  %height155 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %107 = load i32, i32* %height155, align 4
  %add156 = add nsw i32 %106, %107
  %sub = sub nsw i32 %add156, 8
  %cmp157 = icmp sgt i32 %105, %sub
  %conv158 = zext i1 %cmp157 to i32
  store i32 %conv158, i32* %scroll_fast, align 4
  %108 = load i32, i32* %enter.addr, align 4
  %tobool159 = icmp ne i32 %108, 0
  br i1 %tobool159, label %land.lhs.true.160, label %if.else.179

land.lhs.true.160:                                ; preds = %if.else.153
  %109 = load i32, i32* %in_arrow, align 4
  %tobool161 = icmp ne i32 %109, 0
  br i1 %tobool161, label %land.lhs.true.162, label %if.else.179

land.lhs.true.162:                                ; preds = %land.lhs.true.160
  %110 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_prelight163 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %110, i32 0, i32 19
  %111 = load i32, i32* %lower_arrow_prelight163, align 4
  %tobool164 = icmp ne i32 %111, 0
  br i1 %tobool164, label %lor.lhs.false.165, label %if.then.169

lor.lhs.false.165:                                ; preds = %land.lhs.true.162
  %112 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_fast166 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %112, i32 0, i32 16
  %113 = load i32, i32* %scroll_fast166, align 4
  %114 = load i32, i32* %scroll_fast, align 4
  %cmp167 = icmp ne i32 %113, %114
  br i1 %cmp167, label %if.then.169, label %if.else.179

if.then.169:                                      ; preds = %lor.lhs.false.165, %land.lhs.true.162
  %115 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_prelight170 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %115, i32 0, i32 19
  store i32 1, i32* %lower_arrow_prelight170, align 4
  %116 = load i32, i32* %scroll_fast, align 4
  %117 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_fast171 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %117, i32 0, i32 16
  store i32 %116, i32* %scroll_fast171, align 4
  %118 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @gimp_tag_popup_remove_scroll_timeout(%struct._GimpTagPopup* %118)
  %119 = load i32, i32* %scroll_fast, align 4
  %tobool172 = icmp ne i32 %119, 0
  %cond173 = select i1 %tobool172, i32 15, i32 8
  %120 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_step174 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %120, i32 0, i32 14
  store i32 %cond173, i32* %scroll_step174, align 4
  %121 = load i32, i32* %scroll_fast, align 4
  %tobool175 = icmp ne i32 %121, 0
  %cond176 = select i1 %tobool175, i32 20, i32 50
  %122 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %123 = bitcast %struct._GimpTagPopup* %122 to i8*
  %call177 = call i32 @gdk_threads_add_timeout(i32 %cond176, i32 (i8*)* @gimp_tag_popup_scroll_timeout, i8* %123)
  %124 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_timeout_id178 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %124, i32 0, i32 11
  store i32 %call177, i32* %scroll_timeout_id178, align 4
  br label %if.end.188

if.else.179:                                      ; preds = %lor.lhs.false.165, %land.lhs.true.160, %if.else.153
  %125 = load i32, i32* %enter.addr, align 4
  %tobool180 = icmp ne i32 %125, 0
  br i1 %tobool180, label %if.end.187, label %land.lhs.true.181

land.lhs.true.181:                                ; preds = %if.else.179
  %126 = load i32, i32* %in_arrow, align 4
  %tobool182 = icmp ne i32 %126, 0
  br i1 %tobool182, label %if.end.187, label %land.lhs.true.183

land.lhs.true.183:                                ; preds = %land.lhs.true.181
  %127 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_prelight184 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %127, i32 0, i32 19
  %128 = load i32, i32* %lower_arrow_prelight184, align 4
  %tobool185 = icmp ne i32 %128, 0
  br i1 %tobool185, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %land.lhs.true.183
  %129 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @gimp_tag_popup_stop_scrolling(%struct._GimpTagPopup* %129)
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.186, %land.lhs.true.183, %land.lhs.true.181, %if.else.179
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.then.169
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.end.152
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.126
  %130 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_state191 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %130, i32 0, i32 21
  %131 = load i32, i32* %lower_arrow_state191, align 4
  %cmp192 = icmp ne i32 %131, 4
  br i1 %cmp192, label %if.then.194, label %if.end.213

if.then.194:                                      ; preds = %if.end.190
  store i32 0, i32* %arrow_state195, align 4
  %132 = load i32, i32* %arrow_pressed127, align 4
  %tobool196 = icmp ne i32 %132, 0
  br i1 %tobool196, label %if.then.197, label %if.else.198

if.then.197:                                      ; preds = %if.then.194
  store i32 1, i32* %arrow_state195, align 4
  br label %if.end.203

if.else.198:                                      ; preds = %if.then.194
  %133 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_prelight199 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %133, i32 0, i32 19
  %134 = load i32, i32* %lower_arrow_prelight199, align 4
  %tobool200 = icmp ne i32 %134, 0
  br i1 %tobool200, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.else.198
  store i32 2, i32* %arrow_state195, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.201, %if.else.198
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.then.197
  %135 = load i32, i32* %arrow_state195, align 4
  %136 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_state204 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %136, i32 0, i32 21
  %137 = load i32, i32* %lower_arrow_state204, align 4
  %cmp205 = icmp ne i32 %135, %137
  br i1 %cmp205, label %if.then.207, label %if.end.212

if.then.207:                                      ; preds = %if.end.203
  %138 = load i32, i32* %arrow_state195, align 4
  %139 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_state208 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %139, i32 0, i32 21
  store i32 %138, i32* %lower_arrow_state208, align 4
  %140 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %141 = bitcast %struct._GimpTagPopup* %140 to %struct._GTypeInstance*
  %call209 = call i64 @gtk_widget_get_type() #7
  %call210 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call209)
  %142 = bitcast %struct._GTypeInstance* %call210 to %struct._GtkWidget*
  %call211 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %142)
  call void @gdk_window_invalidate_rect(%struct._GdkDrawable* %call211, %struct._GdkRectangle* %rect, i32 0)
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.207, %if.end.203
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.end.190
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end.123
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_scroll_by(%struct._GimpTagPopup* %popup, i32 %step) #3 {
entry:
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %step.addr = alloca i32, align 4
  %arrow_state = alloca i32, align 4
  %new_scroll_y = alloca i32, align 4
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  store i32 %step, i32* %step.addr, align 4
  %0 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_y = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %0, i32 0, i32 13
  %1 = load i32, i32* %scroll_y, align 4
  %2 = load i32, i32* %step.addr, align 4
  %add = add nsw i32 %1, %2
  store i32 %add, i32* %new_scroll_y, align 4
  %3 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_state = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %3, i32 0, i32 20
  %4 = load i32, i32* %upper_arrow_state, align 4
  store i32 %4, i32* %arrow_state, align 4
  %5 = load i32, i32* %new_scroll_y, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %new_scroll_y, align 4
  %6 = load i32, i32* %arrow_state, align 4
  %cmp1 = icmp ne i32 %6, 4
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @gimp_tag_popup_stop_scrolling(%struct._GimpTagPopup* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store i32 4, i32* %arrow_state, align 4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %8 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_prelight = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %8, i32 0, i32 18
  %9 = load i32, i32* %upper_arrow_prelight, align 4
  %tobool = icmp ne i32 %9, 0
  %cond = select i1 %tobool, i32 2, i32 0
  store i32 %cond, i32* %arrow_state, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.end
  %10 = load i32, i32* %arrow_state, align 4
  %11 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_state4 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %11, i32 0, i32 20
  %12 = load i32, i32* %upper_arrow_state4, align 4
  %cmp5 = icmp ne i32 %10, %12
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.3
  %13 = load i32, i32* %arrow_state, align 4
  %14 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_state7 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %14, i32 0, i32 20
  store i32 %13, i32* %upper_arrow_state7, align 4
  %15 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %16 = bitcast %struct._GimpTagPopup* %15 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %17)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end.3
  %18 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_state = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %18, i32 0, i32 21
  %19 = load i32, i32* %lower_arrow_state, align 4
  store i32 %19, i32* %arrow_state, align 4
  %20 = load i32, i32* %new_scroll_y, align 4
  %21 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_height = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %21, i32 0, i32 12
  %22 = load i32, i32* %scroll_height, align 4
  %cmp10 = icmp sge i32 %20, %22
  br i1 %cmp10, label %if.then.11, label %if.else.16

if.then.11:                                       ; preds = %if.end.9
  %23 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_height12 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %23, i32 0, i32 12
  %24 = load i32, i32* %scroll_height12, align 4
  %sub = sub nsw i32 %24, 1
  store i32 %sub, i32* %new_scroll_y, align 4
  %25 = load i32, i32* %arrow_state, align 4
  %cmp13 = icmp ne i32 %25, 4
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.11
  %26 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @gimp_tag_popup_stop_scrolling(%struct._GimpTagPopup* %26)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.11
  store i32 4, i32* %arrow_state, align 4
  br label %if.end.19

if.else.16:                                       ; preds = %if.end.9
  %27 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_prelight = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %27, i32 0, i32 19
  %28 = load i32, i32* %lower_arrow_prelight, align 4
  %tobool17 = icmp ne i32 %28, 0
  %cond18 = select i1 %tobool17, i32 2, i32 0
  store i32 %cond18, i32* %arrow_state, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.end.15
  %29 = load i32, i32* %arrow_state, align 4
  %30 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_state20 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %30, i32 0, i32 21
  %31 = load i32, i32* %lower_arrow_state20, align 4
  %cmp21 = icmp ne i32 %29, %31
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.end.19
  %32 = load i32, i32* %arrow_state, align 4
  %33 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_state23 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %33, i32 0, i32 21
  store i32 %32, i32* %lower_arrow_state23, align 4
  %34 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %35 = bitcast %struct._GimpTagPopup* %34 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_widget_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call24)
  %36 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %36)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.end.19
  %37 = load i32, i32* %new_scroll_y, align 4
  %38 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_y27 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %38, i32 0, i32 13
  %39 = load i32, i32* %scroll_y27, align 4
  %cmp28 = icmp ne i32 %37, %39
  br i1 %cmp28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %if.end.26
  %40 = load i32, i32* %new_scroll_y, align 4
  %41 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_y30 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %41, i32 0, i32 13
  store i32 %40, i32* %scroll_y30, align 4
  %42 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_area = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %42, i32 0, i32 4
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %tag_area, align 8
  %call31 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %43)
  %44 = load i32, i32* %step.addr, align 4
  %sub32 = sub nsw i32 0, %44
  call void @gdk_window_scroll(%struct._GdkDrawable* %call31, i32 0, i32 %sub32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %if.end.26
  ret void
}

declare void @g_object_get(i8*, i8*, ...) #1

declare %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @get_arrows_sensitive_area(%struct._GimpTagPopup* %popup, %struct._GdkRectangle* %upper, %struct._GdkRectangle* %lower) #3 {
entry:
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %upper.addr = alloca %struct._GdkRectangle*, align 8
  %lower.addr = alloca %struct._GdkRectangle*, align 8
  %tmp_border = alloca %struct._GdkRectangle, align 4
  %tmp_upper = alloca %struct._GdkRectangle, align 4
  %tmp_lower = alloca %struct._GdkRectangle, align 4
  %tmp_arrow_space = alloca i32, align 4
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  store %struct._GdkRectangle* %upper, %struct._GdkRectangle** %upper.addr, align 8
  store %struct._GdkRectangle* %lower, %struct._GdkRectangle** %lower.addr, align 8
  %0 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @get_arrows_visible_area(%struct._GimpTagPopup* %0, %struct._GdkRectangle* %tmp_border, %struct._GdkRectangle* %tmp_upper, %struct._GdkRectangle* %tmp_lower, i32* %tmp_arrow_space)
  %1 = load %struct._GdkRectangle*, %struct._GdkRectangle** %upper.addr, align 8
  %tobool = icmp ne %struct._GdkRectangle* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GdkRectangle*, %struct._GdkRectangle** %upper.addr, align 8
  %3 = bitcast %struct._GdkRectangle* %2 to i8*
  %4 = bitcast %struct._GdkRectangle* %tmp_upper to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GdkRectangle*, %struct._GdkRectangle** %lower.addr, align 8
  %tobool1 = icmp ne %struct._GdkRectangle* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._GdkRectangle*, %struct._GdkRectangle** %lower.addr, align 8
  %7 = bitcast %struct._GdkRectangle* %6 to i8*
  %8 = bitcast %struct._GdkRectangle* %tmp_lower to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 4, i1 false)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_start_scrolling(%struct._GimpTagPopup* %popup) #3 {
entry:
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %timeout = alloca i32, align 4
  %touchscreen_mode = alloca i32, align 4
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  %0 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %1 = bitcast %struct._GimpTagPopup* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %2)
  %3 = bitcast %struct._GtkSettings* %call2 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i32* %timeout, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i32* %touchscreen_mode, i8* null)
  %4 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %5 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_step = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %5, i32 0, i32 14
  %6 = load i32, i32* %scroll_step, align 4
  call void @gimp_tag_popup_scroll_by(%struct._GimpTagPopup* %4, i32 %6)
  %7 = load i32, i32* %timeout, align 4
  %8 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %9 = bitcast %struct._GimpTagPopup* %8 to i8*
  %call3 = call i32 @gdk_threads_add_timeout(i32 %7, i32 (i8*)* @gimp_tag_popup_scroll_timeout_initial, i8* %9)
  %10 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_timeout_id = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %10, i32 0, i32 11
  store i32 %call3, i32* %scroll_timeout_id, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_stop_scrolling(%struct._GimpTagPopup* %popup) #3 {
entry:
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %touchscreen_mode = alloca i32, align 4
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  %0 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  call void @gimp_tag_popup_remove_scroll_timeout(%struct._GimpTagPopup* %0)
  %1 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %2 = bitcast %struct._GimpTagPopup* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %3)
  %4 = bitcast %struct._GtkSettings* %call2 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i32* %touchscreen_mode, i8* null)
  %5 = load i32, i32* %touchscreen_mode, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %upper_arrow_prelight = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %6, i32 0, i32 18
  store i32 0, i32* %upper_arrow_prelight, align 4
  %7 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %lower_arrow_prelight = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %7, i32 0, i32 19
  store i32 0, i32* %lower_arrow_prelight, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gdk_threads_add_timeout(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_popup_scroll_timeout(i8* %data) #3 {
entry:
  %data.addr = alloca i8*, align 8
  %popup = alloca %struct._GimpTagPopup*, align 8
  %touchscreen_mode = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpTagPopup*
  store %struct._GimpTagPopup* %1, %struct._GimpTagPopup** %popup, align 8
  %2 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %3 = bitcast %struct._GimpTagPopup* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %4)
  %5 = bitcast %struct._GtkSettings* %call2 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i32* %touchscreen_mode, i8* null)
  %6 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %7 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %scroll_step = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %7, i32 0, i32 14
  %8 = load i32, i32* %scroll_step, align 4
  call void @gimp_tag_popup_scroll_by(%struct._GimpTagPopup* %6, i32 %8)
  ret i32 1
}

declare void @gdk_window_invalidate_rect(%struct._GdkDrawable*, %struct._GdkRectangle*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_popup_scroll_timeout_initial(i8* %data) #3 {
entry:
  %data.addr = alloca i8*, align 8
  %popup = alloca %struct._GimpTagPopup*, align 8
  %timeout = alloca i32, align 4
  %touchscreen_mode = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpTagPopup*
  store %struct._GimpTagPopup* %1, %struct._GimpTagPopup** %popup, align 8
  %2 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %3 = bitcast %struct._GimpTagPopup* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %4)
  %5 = bitcast %struct._GtkSettings* %call2 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i32* %timeout, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i32* %touchscreen_mode, i8* null)
  %6 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %7 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %scroll_step = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %7, i32 0, i32 14
  %8 = load i32, i32* %scroll_step, align 4
  call void @gimp_tag_popup_scroll_by(%struct._GimpTagPopup* %6, i32 %8)
  %9 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  call void @gimp_tag_popup_remove_scroll_timeout(%struct._GimpTagPopup* %9)
  %10 = load i32, i32* %timeout, align 4
  %11 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %12 = bitcast %struct._GimpTagPopup* %11 to i8*
  %call3 = call i32 @gdk_threads_add_timeout(i32 %10, i32 (i8*)* @gimp_tag_popup_scroll_timeout, i8* %12)
  %13 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup, align 8
  %scroll_timeout_id = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %13, i32 0, i32 11
  store i32 %call3, i32* %scroll_timeout_id, align 4
  ret i32 0
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare void @gdk_window_scroll(%struct._GdkDrawable*, i32, i32) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_set_line_cap(%struct._cairo*, i32) #1

declare %struct._PangoAttrList* @pango_attr_list_copy(%struct._PangoAttrList*) #1

declare %struct._PangoAttribute* @pango_attr_underline_new(i32) #1

declare void @pango_attr_list_insert(%struct._PangoAttrList*, %struct._PangoAttribute*) #1

declare void @pango_attr_list_unref(%struct._PangoAttrList*) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_fill(%struct._cairo*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @pango_cairo_show_layout(%struct._cairo*, %struct._PangoLayout*) #1

declare void @gtk_paint_focus(%struct._GtkStyle*, %struct._GdkDrawable*, i32, %struct._GdkRectangle*, %struct._GtkWidget*, i8*, i32, i32, i32, i32) #1

declare void @cairo_destroy(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_popup_is_in_tag(%struct._PopupTagData* %tag_data, i32 %x, i32 %y) #3 {
entry:
  %retval = alloca i32, align 4
  %tag_data.addr = alloca %struct._PopupTagData*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct._PopupTagData* %tag_data, %struct._PopupTagData** %tag_data.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %bounds = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %1, i32 0, i32 1
  %x1 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds, i32 0, i32 0
  %2 = load i32, i32* %x1, align 4
  %cmp = icmp sge i32 %0, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %y.addr, align 4
  %4 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %bounds2 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %4, i32 0, i32 1
  %y3 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds2, i32 0, i32 1
  %5 = load i32, i32* %y3, align 4
  %cmp4 = icmp sge i32 %3, %5
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %x.addr, align 4
  %7 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %bounds6 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %7, i32 0, i32 1
  %x7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds6, i32 0, i32 0
  %8 = load i32, i32* %x7, align 4
  %9 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %bounds8 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %9, i32 0, i32 1
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds8, i32 0, i32 2
  %10 = load i32, i32* %width, align 4
  %add = add nsw i32 %8, %10
  %cmp9 = icmp slt i32 %6, %add
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.5
  %11 = load i32, i32* %y.addr, align 4
  %12 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %bounds11 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %12, i32 0, i32 1
  %y12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds11, i32 0, i32 1
  %13 = load i32, i32* %y12, align 4
  %14 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %bounds13 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %14, i32 0, i32 1
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds13, i32 0, i32 3
  %15 = load i32, i32* %height, align 4
  %add14 = add nsw i32 %13, %15
  %cmp15 = icmp slt i32 %11, %add14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.10
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.10, %land.lhs.true.5, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_toggle_tag(%struct._GimpTagPopup* %popup, %struct._PopupTagData* %tag_data) #3 {
entry:
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %tag_data.addr = alloca %struct._PopupTagData*, align 8
  %current_tags = alloca i8**, align 8
  %tag_str = alloca %struct._GString*, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  %tag_toggled_off = alloca i32, align 4
  %container = alloca %struct._GimpTaggedContainer*, align 8
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  store %struct._PopupTagData* %tag_data, %struct._PopupTagData** %tag_data.addr, align 8
  store i32 0, i32* %tag_toggled_off, align 4
  %0 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %state = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %0, i32 0, i32 2
  %1 = load i32, i32* %state, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %state1 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %2, i32 0, i32 2
  store i32 3, i32* %state1, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %3 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %state2 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %3, i32 0, i32 2
  %4 = load i32, i32* %state2, align 4
  %cmp3 = icmp eq i32 %4, 3
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %5 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %state5 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %5, i32 0, i32 2
  store i32 0, i32* %state5, align 4
  br label %if.end

if.else.6:                                        ; preds = %if.else
  br label %if.end.71

if.end:                                           ; preds = %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %6 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %combo_entry = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %6, i32 0, i32 1
  %7 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry, align 8
  %8 = bitcast %struct._GimpComboTagEntry* %7 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_entry_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTagEntry*
  %call9 = call i8** @gimp_tag_entry_parse_tags(%struct._GimpTagEntry* %9)
  store i8** %call9, i8*** %current_tags, align 8
  %call10 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GString* %call10, %struct._GString** %tag_str, align 8
  %10 = load i8**, i8*** %current_tags, align 8
  %call11 = call i32 @g_strv_length(i8** %10)
  store i32 %call11, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %length, align 4
  %cmp12 = icmp slt i32 %11, %12
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %tag = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %13, i32 0, i32 0
  %14 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8**, i8*** %current_tags, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %16, i64 %idxprom
  %17 = load i8*, i8** %arrayidx, align 8
  %call13 = call i32 @gimp_tag_compare_with_string(%struct._GimpTag* %14, i8* %17)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %for.body
  store i32 1, i32* %tag_toggled_off, align 4
  br label %if.end.25

if.else.15:                                       ; preds = %for.body
  %18 = load %struct._GString*, %struct._GString** %tag_str, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %18, i32 0, i32 1
  %19 = load i64, i64* %len, align 8
  %tobool16 = icmp ne i64 %19, 0
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.else.15
  %20 = load %struct._GString*, %struct._GString** %tag_str, align 8
  %call18 = call i8* @gimp_tag_entry_get_separator()
  %call19 = call %struct._GString* @g_string_append(%struct._GString* %20, i8* %call18)
  %21 = load %struct._GString*, %struct._GString** %tag_str, align 8
  %call20 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %21, i8 signext 32)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.else.15
  %22 = load %struct._GString*, %struct._GString** %tag_str, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %23 to i64
  %24 = load i8**, i8*** %current_tags, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %24, i64 %idxprom22
  %25 = load i8*, i8** %arrayidx23, align 8
  %call24 = call %struct._GString* @g_string_append(%struct._GString* %22, i8* %25)
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.21, %if.then.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %tag_toggled_off, align 4
  %tobool26 = icmp ne i32 %27, 0
  br i1 %tobool26, label %if.end.38, label %if.then.27

if.then.27:                                       ; preds = %for.end
  %28 = load %struct._GString*, %struct._GString** %tag_str, align 8
  %len28 = getelementptr inbounds %struct._GString, %struct._GString* %28, i32 0, i32 1
  %29 = load i64, i64* %len28, align 8
  %tobool29 = icmp ne i64 %29, 0
  br i1 %tobool29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.then.27
  %30 = load %struct._GString*, %struct._GString** %tag_str, align 8
  %call31 = call i8* @gimp_tag_entry_get_separator()
  %call32 = call %struct._GString* @g_string_append(%struct._GString* %30, i8* %call31)
  %31 = load %struct._GString*, %struct._GString** %tag_str, align 8
  %call33 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %31, i8 signext 32)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.then.27
  %32 = load %struct._GString*, %struct._GString** %tag_str, align 8
  %33 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %tag35 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %33, i32 0, i32 0
  %34 = load %struct._GimpTag*, %struct._GimpTag** %tag35, align 8
  %call36 = call i8* @gimp_tag_get_name(%struct._GimpTag* %34)
  %call37 = call %struct._GString* @g_string_append(%struct._GString* %32, i8* %call36)
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.34, %for.end
  %35 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %combo_entry39 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %35, i32 0, i32 1
  %36 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry39, align 8
  %37 = bitcast %struct._GimpComboTagEntry* %36 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_tag_entry_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call40)
  %38 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpTagEntry*
  %39 = load %struct._GString*, %struct._GString** %tag_str, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %39, i32 0, i32 0
  %40 = load i8*, i8** %str, align 8
  call void @gimp_tag_entry_set_tag_string(%struct._GimpTagEntry* %38, i8* %40)
  %41 = load %struct._GString*, %struct._GString** %tag_str, align 8
  %call42 = call i8* @g_string_free(%struct._GString* %41, i32 1)
  %42 = load i8**, i8*** %current_tags, align 8
  call void @g_strfreev(i8** %42)
  %43 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %combo_entry43 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %43, i32 0, i32 1
  %44 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry43, align 8
  %45 = bitcast %struct._GimpComboTagEntry* %44 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_tag_entry_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call44)
  %46 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpTagEntry*
  %mode = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %46, i32 0, i32 10
  %47 = load i32, i32* %mode, align 4
  %cmp46 = icmp eq i32 %47, 0
  br i1 %cmp46, label %if.then.47, label %if.end.71

if.then.47:                                       ; preds = %if.end.38
  %48 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %combo_entry48 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %48, i32 0, i32 1
  %49 = load %struct._GimpComboTagEntry*, %struct._GimpComboTagEntry** %combo_entry48, align 8
  %50 = bitcast %struct._GimpComboTagEntry* %49 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_tag_entry_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call49)
  %51 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpTagEntry*
  %container51 = getelementptr inbounds %struct._GimpTagEntry, %struct._GimpTagEntry* %51, i32 0, i32 1
  %52 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container51, align 8
  store %struct._GimpTaggedContainer* %52, %struct._GimpTaggedContainer** %container, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.66, %if.then.47
  %53 = load i32, i32* %i, align 4
  %54 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_count = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %54, i32 0, i32 8
  %55 = load i32, i32* %tag_count, align 4
  %cmp53 = icmp slt i32 %53, %55
  br i1 %cmp53, label %for.body.54, label %for.end.68

for.body.54:                                      ; preds = %for.cond.52
  %56 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %56 to i64
  %57 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_data56 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %57, i32 0, i32 7
  %58 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data56, align 8
  %arrayidx57 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %58, i64 %idxprom55
  %state58 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %arrayidx57, i32 0, i32 2
  %59 = load i32, i32* %state58, align 4
  %cmp59 = icmp ne i32 %59, 3
  br i1 %cmp59, label %if.then.60, label %if.end.65

if.then.60:                                       ; preds = %for.body.54
  %60 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %60 to i64
  %61 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_data62 = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %61, i32 0, i32 7
  %62 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data62, align 8
  %arrayidx63 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %62, i64 %idxprom61
  %state64 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %arrayidx63, i32 0, i32 2
  store i32 4, i32* %state64, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.60, %for.body.54
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %63 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %63, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond.52

for.end.68:                                       ; preds = %for.cond.52
  %64 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container, align 8
  %65 = bitcast %struct._GimpTaggedContainer* %64 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_container_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call69)
  %66 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpContainer*
  %67 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %68 = bitcast %struct._GimpTagPopup* %67 to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %66, void (i8*, i8*)* bitcast (void (%struct._GimpTagged*, %struct._GimpTagPopup*)* @gimp_tag_popup_check_can_toggle to void (i8*, i8*)*), i8* %68)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.6, %for.end.68, %if.end.38
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_popup_queue_draw_tag(%struct._GimpTagPopup* %popup, %struct._PopupTagData* %tag_data) #3 {
entry:
  %popup.addr = alloca %struct._GimpTagPopup*, align 8
  %tag_data.addr = alloca %struct._PopupTagData*, align 8
  store %struct._GimpTagPopup* %popup, %struct._GimpTagPopup** %popup.addr, align 8
  store %struct._PopupTagData* %tag_data, %struct._PopupTagData** %tag_data.addr, align 8
  %0 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %tag_area = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %0, i32 0, i32 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %tag_area, align 8
  %2 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %bounds = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %2, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds, i32 0, i32 0
  %3 = load i32, i32* %x, align 4
  %4 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %bounds1 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %4, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds1, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %6 = load %struct._GimpTagPopup*, %struct._GimpTagPopup** %popup.addr, align 8
  %scroll_y = getelementptr inbounds %struct._GimpTagPopup, %struct._GimpTagPopup* %6, i32 0, i32 13
  %7 = load i32, i32* %scroll_y, align 4
  %sub = sub nsw i32 %5, %7
  %8 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %bounds2 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %8, i32 0, i32 1
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds2, i32 0, i32 2
  %9 = load i32, i32* %width, align 4
  %10 = load %struct._PopupTagData*, %struct._PopupTagData** %tag_data.addr, align 8
  %bounds3 = getelementptr inbounds %struct._PopupTagData, %struct._PopupTagData* %10, i32 0, i32 1
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds3, i32 0, i32 3
  %11 = load i32, i32* %height, align 4
  call void @gtk_widget_queue_draw_area(%struct._GtkWidget* %1, i32 %3, i32 %sub, i32 %9, i32 %11)
  ret void
}

declare %struct._GString* @g_string_new(i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare i8* @gimp_tag_entry_get_separator() #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #6 {
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

declare void @gimp_tag_entry_set_tag_string(%struct._GimpTagEntry*, i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

declare void @gtk_widget_queue_draw_area(%struct._GtkWidget*, i32, i32, i32, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
