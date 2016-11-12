; ModuleID = './libgimpwidgets/gimpchainbutton.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpChainButtonClass = type { %struct._GtkTableClass, void (%struct._GimpChainButton*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkTableClass = type { %struct._GtkContainerClass }
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
%struct._GimpChainButton = type { %struct._GtkTable, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon.1, %struct._GdkDrawable*, i32 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%union.anon.1 = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GimpChainLine = type { %struct._GtkWidget, i32, i32 }
%struct._GdkPoint = type { i32, i32 }
%struct._cairo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_chain_button_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpChainButton\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_chain_button_set_active = private unnamed_addr constant [29 x i8] c"gimp_chain_button_set_active\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CHAIN_BUTTON (button)\00", align 1
@__func__.gimp_chain_button_get_active = private unnamed_addr constant [29 x i8] c"gimp_chain_button_get_active\00", align 1
@gimp_chain_button_parent_class = internal global i8* null, align 8
@GimpChainButton_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@gimp_chain_button_signals = internal global [1 x i32] zeroinitializer, align 4
@gimp_chain_line_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"GimpChainLine\00", align 1
@gimp_chain_line_parent_class = internal global i8* null, align 8
@GimpChainLine_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"gimpchainbutton.c\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@__func__.gimp_chain_button_clicked_callback = private unnamed_addr constant [35 x i8] c"gimp_chain_button_clicked_callback\00", align 1
@gimp_chain_stock_items = internal constant [4 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [12 x i8] c"gimp-hchain\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"gimp-hchain-broken\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"gimp-vchain\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"gimp-vchain-broken\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_chain_button_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_chain_button_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_chain_button_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_table_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 864, void (i8*, i8*)* bitcast (void (i8*)* @gimp_chain_button_class_intern_init to void (i8*, i8*)*), i32 192, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpChainButton*)* @gimp_chain_button_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_chain_button_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_chain_button_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_chain_button_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_chain_button_parent_class, align 8
  %1 = load i32, i32* @GimpChainButton_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpChainButton_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpChainButtonClass*
  call void @gimp_chain_button_class_init(%struct._GimpChainButtonClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_chain_button_init(%struct._GimpChainButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GimpChainButton*, align 8
  store %struct._GimpChainButton* %button, %struct._GimpChainButton** %button.addr, align 8
  %0 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %position = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %0, i32 0, i32 1
  store i32 0, i32* %position, align 4
  %1 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %active = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %1, i32 0, i32 2
  store i32 0, i32* %active, align 4
  %call = call %struct._GtkWidget* @gtk_image_new()
  %2 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %image = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %2, i32 0, i32 6
  store %struct._GtkWidget* %call, %struct._GtkWidget** %image, align 8
  %call1 = call %struct._GtkWidget* @gtk_button_new()
  %3 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %button2 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %3, i32 0, i32 3
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %button2, align 8
  %4 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %button3 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %4, i32 0, i32 3
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %button3, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_button_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkButton*
  call void @gtk_button_set_relief(%struct._GtkButton* %7, i32 2)
  %8 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %button6 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %button6, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  %12 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %image9 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %12, i32 0, i32 6
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %image9, align 8
  call void @gtk_container_add(%struct._GtkContainer* %11, %struct._GtkWidget* %13)
  %14 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %image10 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %14, i32 0, i32 6
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %image10, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %button11 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %16, i32 0, i32 3
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %button11, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %19 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %20 = bitcast %struct._GimpChainButton* %19 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpChainButton*)* @gimp_chain_button_clicked_callback to void ()*), i8* %20, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_chain_button_new(i32 %position) #3 {
entry:
  %position.addr = alloca i32, align 4
  store i32 %position, i32* %position.addr, align 4
  %call = call i64 @gimp_chain_button_get_type() #6
  %0 = load i32, i32* %position.addr, align 4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %0, i8* null)
  %1 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %1
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_chain_button_set_active(%struct._GimpChainButton* %button, i32 %active) #3 {
entry:
  %button.addr = alloca %struct._GimpChainButton*, align 8
  %active.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChainButton* %button, %struct._GimpChainButton** %button.addr, align 8
  store i32 %active, i32* %active.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %1 = bitcast %struct._GimpChainButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_chain_button_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_chain_button_set_active, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.16

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %active11 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %13, i32 0, i32 2
  %14 = load i32, i32* %active11, align 4
  %15 = load i32, i32* %active.addr, align 4
  %cmp12 = icmp ne i32 %14, %15
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %active.addr, align 4
  %tobool14 = icmp ne i32 %16, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %17 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %active15 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %17, i32 0, i32 2
  store i32 %cond, i32* %active15, align 4
  %18 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  call void @gimp_chain_button_update_image(%struct._GimpChainButton* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_chain_button_update_image(%struct._GimpChainButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GimpChainButton*, align 8
  %i = alloca i32, align 4
  store %struct._GimpChainButton* %button, %struct._GimpChainButton** %button.addr, align 8
  %0 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %position = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %0, i32 0, i32 1
  %1 = load i32, i32* %position, align 4
  %and = and i32 %1, 1
  %shl = shl i32 %and, 1
  %2 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %active = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %2, i32 0, i32 2
  %3 = load i32, i32* %active, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %add = add i32 %shl, %cond
  store i32 %add, i32* %i, align 4
  %4 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %image = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %4, i32 0, i32 6
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call i64 @gtk_image_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkImage*
  %8 = load i32, i32* %i, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @gimp_chain_stock_items, i32 0, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  call void @gtk_image_set_from_stock(%struct._GtkImage* %7, i8* %9, i32 4)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %button) #3 {
entry:
  %retval = alloca i32, align 4
  %button.addr = alloca %struct._GimpChainButton*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChainButton* %button, %struct._GimpChainButton** %button.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %1 = bitcast %struct._GimpChainButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_chain_button_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_chain_button_get_active, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %active = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %13, i32 0, i32 2
  %14 = load i32, i32* %active, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_chain_button_class_init(%struct._GimpChainButtonClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpChainButtonClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpChainButtonClass* %klass, %struct._GimpChainButtonClass** %klass.addr, align 8
  %0 = load %struct._GimpChainButtonClass*, %struct._GimpChainButtonClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpChainButtonClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_chain_button_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_chain_button_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_chain_button_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GimpChainButtonClass*, %struct._GimpChainButtonClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpChainButtonClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 %8, i32 1, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_chain_button_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpChainButtonClass*, %struct._GimpChainButtonClass** %klass.addr, align 8
  %toggled = getelementptr inbounds %struct._GimpChainButtonClass, %struct._GimpChainButtonClass* %9, i32 0, i32 1
  store void (%struct._GimpChainButton*)* null, void (%struct._GimpChainButton*)** %toggled, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call i64 @gimp_chain_position_get_type() #6
  %call3 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call2, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call3)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_chain_button_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %button = alloca %struct._GimpChainButton*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_chain_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChainButton*
  store %struct._GimpChainButton* %2, %struct._GimpChainButton** %button, align 8
  %3 = load i8*, i8** @gimp_chain_button_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_chain_button_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %position = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %12, i32 0, i32 1
  %13 = load i32, i32* %position, align 4
  %call5 = call %struct._GtkWidget* @gimp_chain_line_new(i32 %13, i32 1)
  %14 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %line1 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %14, i32 0, i32 4
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %line1, align 8
  %15 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %position6 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %15, i32 0, i32 1
  %16 = load i32, i32* %position6, align 4
  %call7 = call %struct._GtkWidget* @gimp_chain_line_new(i32 %16, i32 -1)
  %17 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %line2 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %17, i32 0, i32 5
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %line2, align 8
  %18 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  call void @gimp_chain_button_update_image(%struct._GimpChainButton* %18)
  %19 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %position8 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %19, i32 0, i32 1
  %20 = load i32, i32* %position8, align 4
  %and = and i32 %20, 1
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %21 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %22 = bitcast %struct._GimpChainButton* %21 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call11)
  %23 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_resize(%struct._GtkTable* %23, i32 3, i32 1)
  %24 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %25 = bitcast %struct._GimpChainButton* %24 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_table_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call13)
  %26 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTable*
  %27 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %button15 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %27, i32 0, i32 3
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %button15, align 8
  call void @gtk_table_attach(%struct._GtkTable* %26, %struct._GtkWidget* %28, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 0, i32 0)
  %29 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %30 = bitcast %struct._GimpChainButton* %29 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_table_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call16)
  %31 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTable*
  %32 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %line118 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %32, i32 0, i32 4
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %line118, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %31, %struct._GtkWidget* %33, i32 0, i32 1, i32 0, i32 1)
  %34 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %35 = bitcast %struct._GimpChainButton* %34 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call19)
  %36 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  %37 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %line221 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %37, i32 0, i32 5
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %line221, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %36, %struct._GtkWidget* %38, i32 0, i32 1, i32 2, i32 3)
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %39 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %40 = bitcast %struct._GimpChainButton* %39 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call22)
  %41 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  call void @gtk_table_resize(%struct._GtkTable* %41, i32 1, i32 3)
  %42 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %43 = bitcast %struct._GimpChainButton* %42 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call24)
  %44 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  %45 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %button26 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %45, i32 0, i32 3
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %button26, align 8
  call void @gtk_table_attach(%struct._GtkTable* %44, %struct._GtkWidget* %46, i32 1, i32 2, i32 0, i32 1, i32 2, i32 2, i32 0, i32 0)
  %47 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %48 = bitcast %struct._GimpChainButton* %47 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_table_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call27)
  %49 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTable*
  %50 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %line129 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %50, i32 0, i32 4
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %line129, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %49, %struct._GtkWidget* %51, i32 0, i32 1, i32 0, i32 1)
  %52 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %53 = bitcast %struct._GimpChainButton* %52 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_table_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call30)
  %54 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTable*
  %55 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %line232 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %55, i32 0, i32 5
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %line232, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %54, %struct._GtkWidget* %56, i32 2, i32 3, i32 0, i32 1)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.10
  %57 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %button34 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %57, i32 0, i32 3
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %button34, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %58)
  %59 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %line135 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %59, i32 0, i32 4
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %line135, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %61 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %line236 = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %61, i32 0, i32 5
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %line236, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %62)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_chain_button_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GimpChainButton*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_chain_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChainButton*
  store %struct._GimpChainButton* %2, %struct._GimpChainButton** %button, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %position = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %5, i32 0, i32 1
  store i32 %call2, i32* %position, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 205, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_chain_button_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GimpChainButton*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_chain_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChainButton*
  store %struct._GimpChainButton* %2, %struct._GimpChainButton** %button, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button, align 8
  %position = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %5, i32 0, i32 1
  %6 = load i32, i32* %position, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
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
  %call2 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 225, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_chain_position_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_chain_line_new(i32 %position, i32 %which) #3 {
entry:
  %position.addr = alloca i32, align 4
  %which.addr = alloca i32, align 4
  %line = alloca %struct._GimpChainLine*, align 8
  store i32 %position, i32* %position.addr, align 4
  store i32 %which, i32* %which.addr, align 4
  %call = call i64 @gimp_chain_line_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpChainLine*
  store %struct._GimpChainLine* %0, %struct._GimpChainLine** %line, align 8
  %1 = load i32, i32* %position.addr, align 4
  %2 = load %struct._GimpChainLine*, %struct._GimpChainLine** %line, align 8
  %position2 = getelementptr inbounds %struct._GimpChainLine, %struct._GimpChainLine* %2, i32 0, i32 1
  store i32 %1, i32* %position2, align 4
  %3 = load i32, i32* %which.addr, align 4
  %4 = load %struct._GimpChainLine*, %struct._GimpChainLine** %line, align 8
  %which3 = getelementptr inbounds %struct._GimpChainLine, %struct._GimpChainLine* %4, i32 0, i32 2
  store i32 %3, i32* %which3, align 4
  %5 = load %struct._GimpChainLine*, %struct._GimpChainLine** %line, align 8
  %6 = bitcast %struct._GimpChainLine* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  ret %struct._GtkWidget* %7
}

declare void @gtk_table_resize(%struct._GtkTable*, i32, i32) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone uwtable
define internal i64 @gimp_chain_line_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_chain_line_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_chain_line_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_widget_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 720, void (i8*, i8*)* bitcast (void (i8*)* @gimp_chain_line_class_intern_init to void (i8*, i8*)*), i32 104, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpChainLine*)* @gimp_chain_line_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_chain_line_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_chain_line_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_chain_line_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_chain_line_parent_class, align 8
  %1 = load i32, i32* @GimpChainLine_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpChainLine_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GtkWidgetClass*
  call void @gimp_chain_line_class_init(%struct._GtkWidgetClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_chain_line_init(%struct._GimpChainLine* %line) #3 {
entry:
  %line.addr = alloca %struct._GimpChainLine*, align 8
  store %struct._GimpChainLine* %line, %struct._GimpChainLine** %line.addr, align 8
  %0 = load %struct._GimpChainLine*, %struct._GimpChainLine** %line.addr, align 8
  %1 = bitcast %struct._GimpChainLine* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_set_has_window(%struct._GtkWidget* %2, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_chain_line_class_init(%struct._GtkWidgetClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GtkWidgetClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GtkWidgetClass* %klass, %struct._GtkWidgetClass** %klass.addr, align 8
  %0 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %klass.addr, align 8
  %1 = bitcast %struct._GtkWidgetClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %3, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_chain_line_expose_event, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_chain_line_expose_event(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %line = alloca %struct._GimpChainLine*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %points = alloca [3 x %struct._GdkPoint], align 16
  %position = alloca i32, align 4
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %0)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GimpChainLine*
  store %struct._GimpChainLine* %2, %struct._GimpChainLine** %line, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %4)
  %call2 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call1)
  store %struct._cairo* %call2, %struct._cairo** %cr, align 8
  %5 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %6 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %6, i32 0, i32 4
  %7 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %5, %struct._GdkRegion* %7)
  %8 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %9 = load i32, i32* %x, align 4
  %conv = sitofp i32 %9 to double
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %10 = load i32, i32* %y, align 4
  %conv3 = sitofp i32 %10 to double
  call void @cairo_translate(%struct._cairo* %8, double %conv, double %conv3)
  %11 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %11)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %12 = load i32, i32* %width, align 4
  %div = sdiv i32 %12, 2
  %arrayidx = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %x4 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx, i32 0, i32 0
  store i32 %div, i32* %x4, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %13 = load i32, i32* %height, align 4
  %div5 = sdiv i32 %13, 2
  %arrayidx6 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %y7 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx6, i32 0, i32 1
  store i32 %div5, i32* %y7, align 4
  %14 = load %struct._GimpChainLine*, %struct._GimpChainLine** %line, align 8
  %position8 = getelementptr inbounds %struct._GimpChainLine, %struct._GimpChainLine* %14, i32 0, i32 1
  %15 = load i32, i32* %position8, align 4
  store i32 %15, i32* %position, align 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call9 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %16)
  %cmp = icmp eq i32 %call9, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %position, align 4
  switch i32 %17, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.11
    i32 3, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then
  store i32 3, i32* %position, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then
  store i32 1, i32* %position, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.12, %sw.bb.11, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %18 = load i32, i32* %position, align 4
  switch i32 %18, label %sw.default [
    i32 1, label %sw.bb.13
    i32 3, label %sw.bb.34
    i32 0, label %sw.bb.62
    i32 2, label %sw.bb.90
  ]

sw.bb.13:                                         ; preds = %if.end
  %arrayidx14 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %x15 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx14, i32 0, i32 0
  %19 = load i32, i32* %x15, align 4
  %add = add nsw i32 %19, 4
  store i32 %add, i32* %x15, align 4
  %arrayidx16 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %x17 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx16, i32 0, i32 0
  %20 = load i32, i32* %x17, align 4
  %sub = sub nsw i32 %20, 4
  %arrayidx18 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 1
  %x19 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx18, i32 0, i32 0
  store i32 %sub, i32* %x19, align 4
  %arrayidx20 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %y21 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx20, i32 0, i32 1
  %21 = load i32, i32* %y21, align 4
  %arrayidx22 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 1
  %y23 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx22, i32 0, i32 1
  store i32 %21, i32* %y23, align 4
  %arrayidx24 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 1
  %x25 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx24, i32 0, i32 0
  %22 = load i32, i32* %x25, align 4
  %arrayidx26 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 2
  %x27 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx26, i32 0, i32 0
  store i32 %22, i32* %x27, align 4
  %23 = load %struct._GimpChainLine*, %struct._GimpChainLine** %line, align 8
  %which = getelementptr inbounds %struct._GimpChainLine, %struct._GimpChainLine* %23, i32 0, i32 2
  %24 = load i32, i32* %which, align 4
  %cmp28 = icmp eq i32 %24, 1
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.13
  %height30 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %25 = load i32, i32* %height30, align 4
  %sub31 = sub nsw i32 %25, 1
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub31, %cond.true ], [ 0, %cond.false ]
  %arrayidx32 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 2
  %y33 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx32, i32 0, i32 1
  store i32 %cond, i32* %y33, align 4
  br label %sw.epilog.118

sw.bb.34:                                         ; preds = %if.end
  %arrayidx35 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %x36 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx35, i32 0, i32 0
  %26 = load i32, i32* %x36, align 4
  %sub37 = sub nsw i32 %26, 4
  store i32 %sub37, i32* %x36, align 4
  %arrayidx38 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %x39 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx38, i32 0, i32 0
  %27 = load i32, i32* %x39, align 4
  %add40 = add nsw i32 %27, 4
  %arrayidx41 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 1
  %x42 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx41, i32 0, i32 0
  store i32 %add40, i32* %x42, align 4
  %arrayidx43 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %y44 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx43, i32 0, i32 1
  %28 = load i32, i32* %y44, align 4
  %arrayidx45 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 1
  %y46 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx45, i32 0, i32 1
  store i32 %28, i32* %y46, align 4
  %arrayidx47 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 1
  %x48 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx47, i32 0, i32 0
  %29 = load i32, i32* %x48, align 4
  %arrayidx49 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 2
  %x50 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx49, i32 0, i32 0
  store i32 %29, i32* %x50, align 4
  %30 = load %struct._GimpChainLine*, %struct._GimpChainLine** %line, align 8
  %which51 = getelementptr inbounds %struct._GimpChainLine, %struct._GimpChainLine* %30, i32 0, i32 2
  %31 = load i32, i32* %which51, align 4
  %cmp52 = icmp eq i32 %31, 1
  br i1 %cmp52, label %cond.true.54, label %cond.false.57

cond.true.54:                                     ; preds = %sw.bb.34
  %height55 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %32 = load i32, i32* %height55, align 4
  %sub56 = sub nsw i32 %32, 1
  br label %cond.end.58

cond.false.57:                                    ; preds = %sw.bb.34
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.54
  %cond59 = phi i32 [ %sub56, %cond.true.54 ], [ 0, %cond.false.57 ]
  %arrayidx60 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 2
  %y61 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx60, i32 0, i32 1
  store i32 %cond59, i32* %y61, align 4
  br label %sw.epilog.118

sw.bb.62:                                         ; preds = %if.end
  %arrayidx63 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %y64 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx63, i32 0, i32 1
  %33 = load i32, i32* %y64, align 4
  %add65 = add nsw i32 %33, 4
  store i32 %add65, i32* %y64, align 4
  %arrayidx66 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %x67 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx66, i32 0, i32 0
  %34 = load i32, i32* %x67, align 4
  %arrayidx68 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 1
  %x69 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx68, i32 0, i32 0
  store i32 %34, i32* %x69, align 4
  %arrayidx70 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %y71 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx70, i32 0, i32 1
  %35 = load i32, i32* %y71, align 4
  %sub72 = sub nsw i32 %35, 4
  %arrayidx73 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 1
  %y74 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx73, i32 0, i32 1
  store i32 %sub72, i32* %y74, align 4
  %36 = load %struct._GimpChainLine*, %struct._GimpChainLine** %line, align 8
  %which75 = getelementptr inbounds %struct._GimpChainLine, %struct._GimpChainLine* %36, i32 0, i32 2
  %37 = load i32, i32* %which75, align 4
  %cmp76 = icmp eq i32 %37, 1
  br i1 %cmp76, label %cond.true.78, label %cond.false.81

cond.true.78:                                     ; preds = %sw.bb.62
  %width79 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %38 = load i32, i32* %width79, align 4
  %sub80 = sub nsw i32 %38, 1
  br label %cond.end.82

cond.false.81:                                    ; preds = %sw.bb.62
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.78
  %cond83 = phi i32 [ %sub80, %cond.true.78 ], [ 0, %cond.false.81 ]
  %arrayidx84 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 2
  %x85 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx84, i32 0, i32 0
  store i32 %cond83, i32* %x85, align 4
  %arrayidx86 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 1
  %y87 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx86, i32 0, i32 1
  %39 = load i32, i32* %y87, align 4
  %arrayidx88 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 2
  %y89 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx88, i32 0, i32 1
  store i32 %39, i32* %y89, align 4
  br label %sw.epilog.118

sw.bb.90:                                         ; preds = %if.end
  %arrayidx91 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %y92 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx91, i32 0, i32 1
  %40 = load i32, i32* %y92, align 4
  %sub93 = sub nsw i32 %40, 4
  store i32 %sub93, i32* %y92, align 4
  %arrayidx94 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %x95 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx94, i32 0, i32 0
  %41 = load i32, i32* %x95, align 4
  %arrayidx96 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 1
  %x97 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx96, i32 0, i32 0
  store i32 %41, i32* %x97, align 4
  %arrayidx98 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %y99 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx98, i32 0, i32 1
  %42 = load i32, i32* %y99, align 4
  %add100 = add nsw i32 %42, 4
  %arrayidx101 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 1
  %y102 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx101, i32 0, i32 1
  store i32 %add100, i32* %y102, align 4
  %43 = load %struct._GimpChainLine*, %struct._GimpChainLine** %line, align 8
  %which103 = getelementptr inbounds %struct._GimpChainLine, %struct._GimpChainLine* %43, i32 0, i32 2
  %44 = load i32, i32* %which103, align 4
  %cmp104 = icmp eq i32 %44, 1
  br i1 %cmp104, label %cond.true.106, label %cond.false.109

cond.true.106:                                    ; preds = %sw.bb.90
  %width107 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %45 = load i32, i32* %width107, align 4
  %sub108 = sub nsw i32 %45, 1
  br label %cond.end.110

cond.false.109:                                   ; preds = %sw.bb.90
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.106
  %cond111 = phi i32 [ %sub108, %cond.true.106 ], [ 0, %cond.false.109 ]
  %arrayidx112 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 2
  %x113 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx112, i32 0, i32 0
  store i32 %cond111, i32* %x113, align 4
  %arrayidx114 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 1
  %y115 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx114, i32 0, i32 1
  %46 = load i32, i32* %y115, align 4
  %arrayidx116 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 2
  %y117 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx116, i32 0, i32 1
  store i32 %46, i32* %y117, align 4
  br label %sw.epilog.118

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

sw.epilog.118:                                    ; preds = %cond.end.110, %cond.end.82, %cond.end.58, %cond.end
  %47 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %arrayidx119 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %x120 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx119, i32 0, i32 0
  %48 = load i32, i32* %x120, align 4
  %conv121 = sitofp i32 %48 to double
  %arrayidx122 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 0
  %y123 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx122, i32 0, i32 1
  %49 = load i32, i32* %y123, align 4
  %conv124 = sitofp i32 %49 to double
  call void @cairo_move_to(%struct._cairo* %47, double %conv121, double %conv124)
  %50 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %arrayidx125 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 1
  %x126 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx125, i32 0, i32 0
  %51 = load i32, i32* %x126, align 4
  %conv127 = sitofp i32 %51 to double
  %arrayidx128 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 1
  %y129 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx128, i32 0, i32 1
  %52 = load i32, i32* %y129, align 4
  %conv130 = sitofp i32 %52 to double
  call void @cairo_line_to(%struct._cairo* %50, double %conv127, double %conv130)
  %53 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %arrayidx131 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 2
  %x132 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx131, i32 0, i32 0
  %54 = load i32, i32* %x132, align 4
  %conv133 = sitofp i32 %54 to double
  %arrayidx134 = getelementptr inbounds [3 x %struct._GdkPoint], [3 x %struct._GdkPoint]* %points, i32 0, i64 2
  %y135 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %arrayidx134, i32 0, i32 1
  %55 = load i32, i32* %y135, align 4
  %conv136 = sitofp i32 %55 to double
  call void @cairo_line_to(%struct._cairo* %53, double %conv133, double %conv136)
  %56 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %56, double 2.000000e+00)
  %57 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_cap(%struct._cairo* %57, i32 0)
  %58 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %59 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %59, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %58, %struct._GdkColor* %arrayidx137)
  %60 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %60)
  %61 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %61)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.118, %sw.default
  %62 = load i32, i32* %retval
  ret i32 %62
}

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_clip(%struct._cairo*) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_set_line_cap(%struct._cairo*, i32) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gtk_widget_set_has_window(%struct._GtkWidget*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare %struct._GtkWidget* @gtk_image_new() #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_button_set_relief(%struct._GtkButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_chain_button_clicked_callback(%struct._GtkWidget* %widget, %struct._GimpChainButton* %button) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %button.addr = alloca %struct._GimpChainButton*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpChainButton* %button, %struct._GimpChainButton** %button.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %1 = bitcast %struct._GimpChainButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_chain_button_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_chain_button_clicked_callback, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %14 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %active = getelementptr inbounds %struct._GimpChainButton, %struct._GimpChainButton* %14, i32 0, i32 2
  %15 = load i32, i32* %active, align 4
  %tobool11 = icmp ne i32 %15, 0
  %lnot = xor i1 %tobool11, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gimp_chain_button_set_active(%struct._GimpChainButton* %13, i32 %lnot.ext)
  %16 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %17 = bitcast %struct._GimpChainButton* %16 to i8*
  %18 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_chain_button_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %17, i32 %18, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @gtk_image_set_from_stock(%struct._GtkImage*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #2

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
