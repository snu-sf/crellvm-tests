; ModuleID = './app/widgets/gimptextproxy.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTextProxyClass = type { %struct._GtkTextViewClass, void (%struct._GimpTextProxy*, double)*, void (%struct._GimpTextProxy*, double)*, void (%struct._GimpTextProxy*, double)* }
%struct._GtkTextViewClass = type { %struct._GtkContainerClass, void (%struct._GtkTextView*, %struct._GtkAdjustment*, %struct._GtkAdjustment*)*, void (%struct._GtkTextView*, %struct._GtkMenu*)*, void (%struct._GtkTextView*, i32, i32, i32)*, void (%struct._GtkTextView*, i32, i32)*, void (%struct._GtkTextView*)*, void (%struct._GtkTextView*, i8*)*, void (%struct._GtkTextView*, i32, i32)*, void (%struct._GtkTextView*)*, void (%struct._GtkTextView*)*, void (%struct._GtkTextView*)*, void (%struct._GtkTextView*)*, void (%struct._GtkTextView*)*, void (%struct._GtkTextView*, i32)*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkTextView = type { %struct._GtkContainer, %struct._GtkTextLayout*, %struct._GtkTextBuffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i8, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, i32, i32, i32, i32, i32, i32, %struct._GtkTextMark*, i32, %struct._GtkTextMark*, i32, i32, i32, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._GSList*, %struct._GtkTextPendingScroll*, i32 }
%struct._GtkTextLayout = type opaque
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._PangoTabArray = type opaque
%struct._GtkTextWindow = type opaque
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkTextPendingScroll = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpTextProxy = type { %struct._GtkTextView }
%struct._GtkBindingSet = type { i8*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, i8 }
%struct._GtkBindingEntry = type { i32, i32, %struct._GtkBindingSet*, i8, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, %struct._GtkBindingSignal* }
%struct._GtkBindingSignal = type { %struct._GtkBindingSignal*, i8*, i32, %struct._GtkBindingArg* }
%struct._GtkBindingArg = type { i64, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_text_proxy_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpTextProxy\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@gimp_text_proxy_parent_class = internal global i8* null, align 8
@GimpTextProxy_private_offset = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"change-size\00", align 1
@proxy_signals = internal global [3 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"change-baseline\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"change-kerning\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_text_proxy_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_text_proxy_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_text_proxy_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_text_view_get_type() #4
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 1008, void (i8*, i8*)* bitcast (void (i8*)* @gimp_text_proxy_class_intern_init to void (i8*, i8*)*), i32 352, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTextProxy*)* @gimp_text_proxy_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_text_proxy_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_text_proxy_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_view_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_proxy_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_text_proxy_parent_class, align 8
  %1 = load i32, i32* @GimpTextProxy_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTextProxy_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTextProxyClass*
  call void @gimp_text_proxy_class_init(%struct._GimpTextProxyClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_proxy_init(%struct._GimpTextProxy* %text_proxy) #3 {
entry:
  %text_proxy.addr = alloca %struct._GimpTextProxy*, align 8
  store %struct._GimpTextProxy* %text_proxy, %struct._GimpTextProxy** %text_proxy.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_text_proxy_new() #3 {
entry:
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %proxy = alloca %struct._GtkWidget*, align 8
  %call = call %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable* null)
  store %struct._GtkTextBuffer* %call, %struct._GtkTextBuffer** %buffer, align 8
  %call1 = call i64 @gimp_text_proxy_get_type() #4
  %0 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call2 = call i8* (i64, i8*, ...) @g_object_new(i64 %call1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %struct._GtkTextBuffer* %0, i8* null)
  %1 = bitcast i8* %call2 to %struct._GtkWidget*
  store %struct._GtkWidget* %1, %struct._GtkWidget** %proxy, align 8
  %2 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %3 = bitcast %struct._GtkTextBuffer* %2 to i8*
  call void @g_object_unref(i8* %3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy, align 8
  ret %struct._GtkWidget* %4
}

declare %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @g_object_unref(i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_proxy_class_init(%struct._GimpTextProxyClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTextProxyClass*, align 8
  %tv_class = alloca %struct._GtkTextViewClass*, align 8
  %binding_set = alloca %struct._GtkBindingSet*, align 8
  store %struct._GimpTextProxyClass* %klass, %struct._GimpTextProxyClass** %klass.addr, align 8
  %0 = load %struct._GimpTextProxyClass*, %struct._GimpTextProxyClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTextProxyClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_text_view_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkTextViewClass*
  store %struct._GtkTextViewClass* %2, %struct._GtkTextViewClass** %tv_class, align 8
  %3 = load %struct._GtkTextViewClass*, %struct._GtkTextViewClass** %tv_class, align 8
  %move_cursor = getelementptr inbounds %struct._GtkTextViewClass, %struct._GtkTextViewClass* %3, i32 0, i32 3
  store void (%struct._GtkTextView*, i32, i32, i32)* @gimp_text_proxy_move_cursor, void (%struct._GtkTextView*, i32, i32, i32)** %move_cursor, align 8
  %4 = load %struct._GtkTextViewClass*, %struct._GtkTextViewClass** %tv_class, align 8
  %insert_at_cursor = getelementptr inbounds %struct._GtkTextViewClass, %struct._GtkTextViewClass* %4, i32 0, i32 6
  store void (%struct._GtkTextView*, i8*)* @gimp_text_proxy_insert_at_cursor, void (%struct._GtkTextView*, i8*)** %insert_at_cursor, align 8
  %5 = load %struct._GtkTextViewClass*, %struct._GtkTextViewClass** %tv_class, align 8
  %delete_from_cursor = getelementptr inbounds %struct._GtkTextViewClass, %struct._GtkTextViewClass* %5, i32 0, i32 7
  store void (%struct._GtkTextView*, i32, i32)* @gimp_text_proxy_delete_from_cursor, void (%struct._GtkTextView*, i32, i32)** %delete_from_cursor, align 8
  %6 = load %struct._GtkTextViewClass*, %struct._GtkTextViewClass** %tv_class, align 8
  %backspace = getelementptr inbounds %struct._GtkTextViewClass, %struct._GtkTextViewClass* %6, i32 0, i32 8
  store void (%struct._GtkTextView*)* @gimp_text_proxy_backspace, void (%struct._GtkTextView*)** %backspace, align 8
  %7 = load %struct._GtkTextViewClass*, %struct._GtkTextViewClass** %tv_class, align 8
  %cut_clipboard = getelementptr inbounds %struct._GtkTextViewClass, %struct._GtkTextViewClass* %7, i32 0, i32 9
  store void (%struct._GtkTextView*)* @gimp_text_proxy_cut_clipboard, void (%struct._GtkTextView*)** %cut_clipboard, align 8
  %8 = load %struct._GtkTextViewClass*, %struct._GtkTextViewClass** %tv_class, align 8
  %copy_clipboard = getelementptr inbounds %struct._GtkTextViewClass, %struct._GtkTextViewClass* %8, i32 0, i32 10
  store void (%struct._GtkTextView*)* @gimp_text_proxy_copy_clipboard, void (%struct._GtkTextView*)** %copy_clipboard, align 8
  %9 = load %struct._GtkTextViewClass*, %struct._GtkTextViewClass** %tv_class, align 8
  %paste_clipboard = getelementptr inbounds %struct._GtkTextViewClass, %struct._GtkTextViewClass* %9, i32 0, i32 11
  store void (%struct._GtkTextView*)* @gimp_text_proxy_paste_clipboard, void (%struct._GtkTextView*)** %paste_clipboard, align 8
  %10 = load %struct._GtkTextViewClass*, %struct._GtkTextViewClass** %tv_class, align 8
  %toggle_overwrite = getelementptr inbounds %struct._GtkTextViewClass, %struct._GtkTextViewClass* %10, i32 0, i32 12
  store void (%struct._GtkTextView*)* @gimp_text_proxy_toggle_overwrite, void (%struct._GtkTextView*)** %toggle_overwrite, align 8
  %11 = load %struct._GimpTextProxyClass*, %struct._GimpTextProxyClass** %klass.addr, align 8
  %12 = bitcast %struct._GimpTextProxyClass* %11 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %call2 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 %13, i32 34, i32 984, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__DOUBLE, i64 4, i32 1, i64 60)
  store i32 %call2, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @proxy_signals, i32 0, i64 0), align 4
  %14 = load %struct._GimpTextProxyClass*, %struct._GimpTextProxyClass** %klass.addr, align 8
  %15 = bitcast %struct._GimpTextProxyClass* %14 to %struct._GTypeClass*
  %g_type3 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type3, align 8
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i64 %16, i32 34, i32 992, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__DOUBLE, i64 4, i32 1, i64 60)
  store i32 %call4, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @proxy_signals, i32 0, i64 1), align 4
  %17 = load %struct._GimpTextProxyClass*, %struct._GimpTextProxyClass** %klass.addr, align 8
  %18 = bitcast %struct._GimpTextProxyClass* %17 to %struct._GTypeClass*
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i64 %19, i32 34, i32 1000, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__DOUBLE, i64 4, i32 1, i64 60)
  store i32 %call6, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @proxy_signals, i32 0, i64 2), align 4
  %20 = load %struct._GimpTextProxyClass*, %struct._GimpTextProxyClass** %klass.addr, align 8
  %21 = bitcast %struct._GimpTextProxyClass* %20 to i8*
  %call7 = call %struct._GtkBindingSet* @gtk_binding_set_by_class(i8* %21)
  store %struct._GtkBindingSet* %call7, %struct._GtkBindingSet** %binding_set, align 8
  %22 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %22, i32 43, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1, i64 60, double 1.000000e+00)
  %23 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %23, i32 45, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1, i64 60, double -1.000000e+00)
  %24 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %24, i32 65362, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 1, i64 60, double 1.000000e+00)
  %25 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %25, i32 65364, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 1, i64 60, double -1.000000e+00)
  %26 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %26, i32 65361, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 1, i64 60, double -1.000000e+00)
  %27 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %27, i32 65363, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 1, i64 60, double 1.000000e+00)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_proxy_move_cursor(%struct._GtkTextView* %text_view, i32 %step, i32 %count, i32 %extend_selection) #3 {
entry:
  %text_view.addr = alloca %struct._GtkTextView*, align 8
  %step.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %extend_selection.addr = alloca i32, align 4
  store %struct._GtkTextView* %text_view, %struct._GtkTextView** %text_view.addr, align 8
  store i32 %step, i32* %step.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  store i32 %extend_selection, i32* %extend_selection.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_proxy_insert_at_cursor(%struct._GtkTextView* %text_view, i8* %str) #3 {
entry:
  %text_view.addr = alloca %struct._GtkTextView*, align 8
  %str.addr = alloca i8*, align 8
  store %struct._GtkTextView* %text_view, %struct._GtkTextView** %text_view.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_proxy_delete_from_cursor(%struct._GtkTextView* %text_view, i32 %type, i32 %count) #3 {
entry:
  %text_view.addr = alloca %struct._GtkTextView*, align 8
  %type.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  store %struct._GtkTextView* %text_view, %struct._GtkTextView** %text_view.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_proxy_backspace(%struct._GtkTextView* %text_view) #3 {
entry:
  %text_view.addr = alloca %struct._GtkTextView*, align 8
  store %struct._GtkTextView* %text_view, %struct._GtkTextView** %text_view.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_proxy_cut_clipboard(%struct._GtkTextView* %text_view) #3 {
entry:
  %text_view.addr = alloca %struct._GtkTextView*, align 8
  store %struct._GtkTextView* %text_view, %struct._GtkTextView** %text_view.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_proxy_copy_clipboard(%struct._GtkTextView* %text_view) #3 {
entry:
  %text_view.addr = alloca %struct._GtkTextView*, align 8
  store %struct._GtkTextView* %text_view, %struct._GtkTextView** %text_view.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_proxy_paste_clipboard(%struct._GtkTextView* %text_view) #3 {
entry:
  %text_view.addr = alloca %struct._GtkTextView*, align 8
  store %struct._GtkTextView* %text_view, %struct._GtkTextView** %text_view.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_proxy_toggle_overwrite(%struct._GtkTextView* %text_view) #3 {
entry:
  %text_view.addr = alloca %struct._GtkTextView*, align 8
  store %struct._GtkTextView* %text_view, %struct._GtkTextView** %text_view.addr, align 8
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__DOUBLE(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare %struct._GtkBindingSet* @gtk_binding_set_by_class(i8*) #1

declare void @gtk_binding_entry_add_signal(%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
