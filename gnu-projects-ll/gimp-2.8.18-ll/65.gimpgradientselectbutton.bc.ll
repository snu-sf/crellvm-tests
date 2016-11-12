; ModuleID = './libgimp/gimpgradientselectbutton.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpGradientSelectButtonClass = type { %struct._GimpSelectButtonClass, void (%struct._GimpGradientSelectButton*, i8*, i32, double*, i32)*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpSelectButtonClass = type { %struct._GtkBoxClass, i8*, void (i8*)*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
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
%struct._GimpGradientSelectButton = type { %struct._GimpSelectButton }
%struct._GimpSelectButton = type { %struct._GtkBox, i8* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpGradientSelectButtonPrivate = type { i8*, i8*, i32, i32, i32, double*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._cairo = type opaque
%struct._cairo_pattern = type opaque
%struct._cairo_surface = type opaque
%struct._GimpRGB = type { double, double, double, double }

@gimp_gradient_select_button_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"GimpGradientSelectButton\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"gradient-name\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_gradient_select_button_get_gradient = private unnamed_addr constant [41 x i8] c"gimp_gradient_select_button_get_gradient\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"GIMP_IS_GRADIENT_SELECT_BUTTON (button)\00", align 1
@__func__.gimp_gradient_select_button_set_gradient = private unnamed_addr constant [41 x i8] c"gimp_gradient_select_button_set_gradient\00", align 1
@gimp_gradient_select_button_parent_class = internal global i8* null, align 8
@GimpGradientSelectButton_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"The title to be used for the gradient selection popup dialog\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Gradient Selection\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Gradient name\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"The name of the currently selected gradient\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"gradient-set\00", align 1
@gradient_button_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"gimpgradientselectbutton.c\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@target = internal constant %struct._GtkTargetEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0 }, align 8
@.str.18 = private unnamed_addr constant [19 x i8] c"drag-data-received\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"application/x-gimp-gradient-name\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"%s: received invalid gradient data\00", align 1
@__func__.gimp_gradient_select_drag_data_received = private unnamed_addr constant [40 x i8] c"gimp_gradient_select_drag_data_received\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"%i:%p:%n\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_gradient_select_button_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_gradient_select_button_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_gradient_select_button_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_select_button_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 936, void (i8*, i8*)* bitcast (void (i8*)* @gimp_gradient_select_button_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpGradientSelectButton*)* @gimp_gradient_select_button_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_gradient_select_button_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_gradient_select_button_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_select_button_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_select_button_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_gradient_select_button_parent_class, align 8
  %1 = load i32, i32* @GimpGradientSelectButton_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpGradientSelectButton_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpGradientSelectButtonClass*
  call void @gimp_gradient_select_button_class_init(%struct._GimpGradientSelectButtonClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_select_button_init(%struct._GimpGradientSelectButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GimpGradientSelectButton*, align 8
  %priv = alloca %struct._GimpGradientSelectButtonPrivate*, align 8
  store %struct._GimpGradientSelectButton* %button, %struct._GimpGradientSelectButton** %button.addr, align 8
  %0 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpGradientSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGradientSelectButtonPrivate*
  store %struct._GimpGradientSelectButtonPrivate* %2, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %call2 = call i8* @gimp_context_get_gradient()
  %3 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_name = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %3, i32 0, i32 1
  store i8* %call2, i8** %gradient_name, align 8
  %4 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %sample_size = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %4, i32 0, i32 2
  store i32 84, i32* %sample_size, align 4
  %5 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %reverse = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %5, i32 0, i32 3
  store i32 0, i32* %reverse, align 4
  %6 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %call3 = call %struct._GtkWidget* @gimp_gradient_select_button_create_inside(%struct._GimpGradientSelectButton* %6)
  %7 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %inside = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %7, i32 0, i32 6
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %inside, align 8
  %8 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %9 = bitcast %struct._GimpGradientSelectButton* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %11 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %inside6 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %11, i32 0, i32 6
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %inside6, align 8
  call void @gtk_container_add(%struct._GtkContainer* %10, %struct._GtkWidget* %12)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_gradient_select_button_new(i8* %title, i8* %gradient_name) #3 {
entry:
  %title.addr = alloca i8*, align 8
  %gradient_name.addr = alloca i8*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %gradient_name, i8** %gradient_name.addr, align 8
  %0 = load i8*, i8** %title.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_gradient_select_button_get_type() #7
  %1 = load i8*, i8** %title.addr, align 8
  %2 = load i8*, i8** %gradient_name.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* %2, i8* null)
  %3 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %button, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i64 @gimp_gradient_select_button_get_type() #7
  %4 = load i8*, i8** %gradient_name.addr, align 8
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* %4, i8* null)
  %5 = bitcast i8* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %5, %struct._GtkWidget** %button, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  ret %struct._GtkWidget* %6
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_gradient_select_button_get_gradient(%struct._GimpGradientSelectButton* %button) #3 {
entry:
  %retval = alloca i8*, align 8
  %button.addr = alloca %struct._GimpGradientSelectButton*, align 8
  %priv = alloca %struct._GimpGradientSelectButtonPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradientSelectButton* %button, %struct._GimpGradientSelectButton** %button.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpGradientSelectButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_select_button_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_gradient_select_button_get_gradient, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %14 = bitcast %struct._GimpGradientSelectButton* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_gradient_select_button_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpGradientSelectButtonPrivate*
  store %struct._GimpGradientSelectButtonPrivate* %15, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %16 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_name = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %16, i32 0, i32 1
  %17 = load i8*, i8** %gradient_name, align 8
  store i8* %17, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_gradient_select_button_set_gradient(%struct._GimpGradientSelectButton* %button, i8* %gradient_name) #3 {
entry:
  %button.addr = alloca %struct._GimpGradientSelectButton*, align 8
  %gradient_name.addr = alloca i8*, align 8
  %priv = alloca %struct._GimpGradientSelectButtonPrivate*, align 8
  %select_button = alloca %struct._GimpSelectButton*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %name = alloca i8*, align 8
  %samples = alloca double*, align 8
  %n_samples = alloca i32, align 4
  store %struct._GimpGradientSelectButton* %button, %struct._GimpGradientSelectButton** %button.addr, align 8
  store i8* %gradient_name, i8** %gradient_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpGradientSelectButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_select_button_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_gradient_select_button_set_gradient, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.35

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %14 = bitcast %struct._GimpGradientSelectButton* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_gradient_select_button_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpGradientSelectButtonPrivate*
  store %struct._GimpGradientSelectButtonPrivate* %15, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %16 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %17 = bitcast %struct._GimpGradientSelectButton* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_select_button_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpSelectButton*
  store %struct._GimpSelectButton* %18, %struct._GimpSelectButton** %select_button, align 8
  %19 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %19, i32 0, i32 1
  %20 = load i8*, i8** %temp_callback, align 8
  %tobool15 = icmp ne i8* %20, null
  br i1 %tobool15, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %do.end
  %21 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback17 = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %21, i32 0, i32 1
  %22 = load i8*, i8** %temp_callback17, align 8
  %23 = load i8*, i8** %gradient_name.addr, align 8
  %call18 = call i32 @gimp_gradients_set_popup(i8* %22, i8* %23)
  br label %if.end.35

if.else.19:                                       ; preds = %do.end
  %24 = load i8*, i8** %gradient_name.addr, align 8
  %tobool23 = icmp ne i8* %24, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.28

land.lhs.true.24:                                 ; preds = %if.else.19
  %25 = load i8*, i8** %gradient_name.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv = sext i8 %26 to i32
  %tobool25 = icmp ne i32 %conv, 0
  br i1 %tobool25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %land.lhs.true.24
  %27 = load i8*, i8** %gradient_name.addr, align 8
  %call27 = call noalias i8* @g_strdup(i8* %27)
  store i8* %call27, i8** %name, align 8
  br label %if.end.30

if.else.28:                                       ; preds = %land.lhs.true.24, %if.else.19
  %call29 = call i8* @gimp_context_get_gradient()
  store i8* %call29, i8** %name, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.26
  %28 = load i8*, i8** %name, align 8
  %29 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %sample_size = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %29, i32 0, i32 2
  %30 = load i32, i32* %sample_size, align 4
  %31 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %reverse = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %31, i32 0, i32 3
  %32 = load i32, i32* %reverse, align 4
  %call31 = call i32 @gimp_gradient_get_uniform_samples(i8* %28, i32 %30, i32 %32, i32* %n_samples, double** %samples)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  %33 = load i8*, i8** %name, align 8
  %34 = load i32, i32* %n_samples, align 4
  %35 = load double*, double** %samples, align 8
  %36 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %37 = bitcast %struct._GimpGradientSelectButton* %36 to i8*
  call void @gimp_gradient_select_button_callback(i8* %33, i32 %34, double* %35, i32 0, i8* %37)
  %38 = load double*, double** %samples, align 8
  %39 = bitcast double* %38 to i8*
  call void @g_free(i8* %39)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.30
  %40 = load i8*, i8** %name, align 8
  call void @g_free(i8* %40)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.9, %if.end.34, %if.then.16
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gimp_gradients_set_popup(i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_context_get_gradient() #1

declare i32 @gimp_gradient_get_uniform_samples(i8*, i32, i32, i32*, double**) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_select_button_callback(i8* %gradient_name, i32 %n_samples, double* %gradient_data, i32 %dialog_closing, i8* %user_data) #3 {
entry:
  %gradient_name.addr = alloca i8*, align 8
  %n_samples.addr = alloca i32, align 4
  %gradient_data.addr = alloca double*, align 8
  %dialog_closing.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %button = alloca %struct._GimpGradientSelectButton*, align 8
  %priv = alloca %struct._GimpGradientSelectButtonPrivate*, align 8
  %select_button = alloca %struct._GimpSelectButton*, align 8
  store i8* %gradient_name, i8** %gradient_name.addr, align 8
  store i32 %n_samples, i32* %n_samples.addr, align 4
  store double* %gradient_data, double** %gradient_data.addr, align 8
  store i32 %dialog_closing, i32* %dialog_closing.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_select_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientSelectButton*
  store %struct._GimpGradientSelectButton* %2, %struct._GimpGradientSelectButton** %button, align 8
  %3 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button, align 8
  %4 = bitcast %struct._GimpGradientSelectButton* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_gradient_select_button_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpGradientSelectButtonPrivate*
  store %struct._GimpGradientSelectButtonPrivate* %5, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %6 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button, align 8
  %7 = bitcast %struct._GimpGradientSelectButton* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_select_button_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSelectButton*
  store %struct._GimpSelectButton* %8, %struct._GimpSelectButton** %select_button, align 8
  %9 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_name6 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %9, i32 0, i32 1
  %10 = load i8*, i8** %gradient_name6, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_data7 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %11, i32 0, i32 5
  %12 = load double*, double** %gradient_data7, align 8
  %13 = bitcast double* %12 to i8*
  call void @g_free(i8* %13)
  %14 = load i8*, i8** %gradient_name.addr, align 8
  %call8 = call noalias i8* @g_strdup(i8* %14)
  %15 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_name9 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %15, i32 0, i32 1
  store i8* %call8, i8** %gradient_name9, align 8
  %16 = load i32, i32* %n_samples.addr, align 4
  %17 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %n_samples10 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %17, i32 0, i32 4
  store i32 %16, i32* %n_samples10, align 4
  %18 = load double*, double** %gradient_data.addr, align 8
  %19 = bitcast double* %18 to i8*
  %20 = load i32, i32* %n_samples.addr, align 4
  %conv = sext i32 %20 to i64
  %mul = mul i64 %conv, 8
  %conv11 = trunc i64 %mul to i32
  %call12 = call noalias i8* @g_memdup(i8* %19, i32 %conv11)
  %21 = bitcast i8* %call12 to double*
  %22 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_data13 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %22, i32 0, i32 5
  store double* %21, double** %gradient_data13, align 8
  %23 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %preview = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %23, i32 0, i32 7
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %24)
  %25 = load i32, i32* %dialog_closing.addr, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %26 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %26, i32 0, i32 1
  store i8* null, i8** %temp_callback, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button, align 8
  %28 = bitcast %struct._GimpGradientSelectButton* %27 to i8*
  %29 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gradient_button_signals, i32 0, i64 0), align 4
  %30 = load i8*, i8** %gradient_name.addr, align 8
  %31 = load i32, i32* %n_samples.addr, align 4
  %32 = load double*, double** %gradient_data.addr, align 8
  %33 = load i32, i32* %dialog_closing.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %28, i32 %29, i32 0, i8* %30, i32 %31, double* %32, i32 %33)
  %34 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button, align 8
  %35 = bitcast %struct._GimpGradientSelectButton* %34 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 80)
  %36 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

declare void @g_free(i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_select_button_class_init(%struct._GimpGradientSelectButtonClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpGradientSelectButtonClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %select_button_class = alloca %struct._GimpSelectButtonClass*, align 8
  store %struct._GimpGradientSelectButtonClass* %klass, %struct._GimpGradientSelectButtonClass** %klass.addr, align 8
  %0 = load %struct._GimpGradientSelectButtonClass*, %struct._GimpGradientSelectButtonClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpGradientSelectButtonClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpGradientSelectButtonClass*, %struct._GimpGradientSelectButtonClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpGradientSelectButtonClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_select_button_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpSelectButtonClass*
  store %struct._GimpSelectButtonClass* %5, %struct._GimpSelectButtonClass** %select_button_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_gradient_select_button_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_gradient_select_button_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_gradient_select_button_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GimpSelectButtonClass*, %struct._GimpSelectButtonClass** %select_button_class, align 8
  %select_destroy = getelementptr inbounds %struct._GimpSelectButtonClass, %struct._GimpSelectButtonClass* %9, i32 0, i32 2
  store void (i8*)* @gimp_gradient_select_destroy, void (i8*)** %select_destroy, align 8
  %10 = load %struct._GimpGradientSelectButtonClass*, %struct._GimpGradientSelectButtonClass** %klass.addr, align 8
  %gradient_set = getelementptr inbounds %struct._GimpGradientSelectButtonClass, %struct._GimpGradientSelectButtonClass* %10, i32 0, i32 1
  store void (%struct._GimpGradientSelectButton*, i8*, i32, double*, i32)* null, void (%struct._GimpGradientSelectButton*, i8*, i32, double*, i32)** %gradient_set, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #6
  %call4 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i32 0, i32 0), i8* %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call5)
  %13 = load %struct._GimpGradientSelectButtonClass*, %struct._GimpGradientSelectButtonClass** %klass.addr, align 8
  %14 = bitcast %struct._GimpGradientSelectButtonClass* %13 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call6 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i64 %15, i32 1, i32 896, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @_gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN, i64 4, i32 4, i64 64, i64 24, i64 68, i64 20)
  store i32 %call6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gradient_button_signals, i32 0, i64 0), align 4
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %17 = bitcast %struct._GObjectClass* %16 to i8*
  call void @g_type_class_add_private(i8* %17, i64 56)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_select_button_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %priv = alloca %struct._GimpGradientSelectButtonPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGradientSelectButtonPrivate*
  store %struct._GimpGradientSelectButtonPrivate* %2, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %3 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_name = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %3, i32 0, i32 1
  %4 = load i8*, i8** %gradient_name, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_name2 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %5, i32 0, i32 1
  store i8* null, i8** %gradient_name2, align 8
  %6 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_data = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %6, i32 0, i32 5
  %7 = load double*, double** %gradient_data, align 8
  %8 = bitcast double* %7 to i8*
  call void @g_free(i8* %8)
  %9 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_data3 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %9, i32 0, i32 5
  store double* null, double** %gradient_data3, align 8
  %10 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %title = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %10, i32 0, i32 0
  %11 = load i8*, i8** %title, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %title4 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %12, i32 0, i32 0
  store i8* null, i8** %title4, align 8
  %13 = load i8*, i8** @gimp_gradient_select_button_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_select_button_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GimpGradientSelectButton*, align 8
  %priv = alloca %struct._GimpGradientSelectButtonPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_select_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientSelectButton*
  store %struct._GimpGradientSelectButton* %2, %struct._GimpGradientSelectButton** %button, align 8
  %3 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button, align 8
  %4 = bitcast %struct._GimpGradientSelectButton* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_gradient_select_button_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpGradientSelectButtonPrivate*
  store %struct._GimpGradientSelectButtonPrivate* %5, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_dup_string(%struct._GValue* %7)
  %8 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %title = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %8, i32 0, i32 0
  store i8* %call4, i8** %title, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button, align 8
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_string(%struct._GValue* %10)
  call void @gimp_gradient_select_button_set_gradient(%struct._GimpGradientSelectButton* %9, i8* %call6)
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
  %call7 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i32 368, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %14, i8* %16, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_select_button_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GimpGradientSelectButton*, align 8
  %priv = alloca %struct._GimpGradientSelectButtonPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_select_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientSelectButton*
  store %struct._GimpGradientSelectButton* %2, %struct._GimpGradientSelectButton** %button, align 8
  %3 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button, align 8
  %4 = bitcast %struct._GimpGradientSelectButton* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_gradient_select_button_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpGradientSelectButtonPrivate*
  store %struct._GimpGradientSelectButtonPrivate* %5, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %title = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %8, i32 0, i32 0
  %9 = load i8*, i8** %title, align 8
  call void @g_value_set_string(%struct._GValue* %7, i8* %9)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_name = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %11, i32 0, i32 1
  %12 = load i8*, i8** %gradient_name, align 8
  call void @g_value_set_string(%struct._GValue* %10, i8* %12)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %13, %struct._GObject** %_glib__object, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = load i32, i32* %property_id.addr, align 4
  store i32 %15, i32* %_glib__property_id, align 4
  %16 = load i32, i32* %_glib__property_id, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i32 394, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %16, i8* %18, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb
  ret void
}

declare void @gimp_gradient_select_destroy(i8*) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @_gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_string(%struct._GValue*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_gradient_select_button_create_inside(%struct._GimpGradientSelectButton* %gradient_button) #3 {
entry:
  %gradient_button.addr = alloca %struct._GimpGradientSelectButton*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %priv = alloca %struct._GimpGradientSelectButtonPrivate*, align 8
  store %struct._GimpGradientSelectButton* %gradient_button, %struct._GimpGradientSelectButton** %gradient_button.addr, align 8
  %0 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %gradient_button.addr, align 8
  %1 = bitcast %struct._GimpGradientSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGradientSelectButtonPrivate*
  store %struct._GimpGradientSelectButtonPrivate* %2, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  call void @gtk_widget_push_composite_child()
  %call2 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %button, align 8
  %call3 = call %struct._GtkWidget* @gtk_drawing_area_new()
  %3 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %preview = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %3, i32 0, i32 7
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %preview, align 8
  %4 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %preview4 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %4, i32 0, i32 7
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %preview4, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %5, i32 84, i32 18)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  %9 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %preview7 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %9, i32 0, i32 7
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %preview7, align 8
  call void @gtk_container_add(%struct._GtkContainer* %8, %struct._GtkWidget* %10)
  %11 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %preview8 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %11, i32 0, i32 7
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %preview8, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %gradient_button.addr, align 8
  %15 = bitcast %struct._GimpGradientSelectButton* %14 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*, %struct._GimpGradientSelectButton*)* @gimp_gradient_select_preview_size_allocate to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %preview10 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %16, i32 0, i32 7
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %preview10, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %19 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %gradient_button.addr, align 8
  %20 = bitcast %struct._GimpGradientSelectButton* %19 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct._GimpGradientSelectButton*)* @gimp_gradient_select_preview_expose to void ()*), i8* %20, void (i8*, %struct._GClosure*)* null, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show_all(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %gradient_button.addr, align 8
  %25 = bitcast %struct._GimpGradientSelectButton* %24 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGradientSelectButton*)* @gimp_gradient_select_button_clicked to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_widget_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call13)
  %28 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWidget*
  call void @gtk_drag_dest_set(%struct._GtkWidget* %28, i32 7, %struct._GtkTargetEntry* @target, i32 1, i32 2)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %31 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %gradient_button.addr, align 8
  %32 = bitcast %struct._GimpGradientSelectButton* %31 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGradientSelectButton*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)* @gimp_gradient_select_drag_data_received to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 2)
  call void @gtk_widget_pop_composite_child()
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  ret %struct._GtkWidget* %33
}

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_push_composite_child() #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare %struct._GtkWidget* @gtk_drawing_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_select_preview_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation, %struct._GimpGradientSelectButton* %button) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %button.addr = alloca %struct._GimpGradientSelectButton*, align 8
  %samples = alloca double*, align 8
  %n_samples = alloca i32, align 4
  %priv = alloca %struct._GimpGradientSelectButtonPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  store %struct._GimpGradientSelectButton* %button, %struct._GimpGradientSelectButton** %button.addr, align 8
  %0 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpGradientSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGradientSelectButtonPrivate*
  store %struct._GimpGradientSelectButtonPrivate* %2, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %3 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_name = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %3, i32 0, i32 1
  %4 = load i8*, i8** %gradient_name, align 8
  %5 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %5, i32 0, i32 2
  %6 = load i32, i32* %width, align 4
  %7 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %reverse = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %7, i32 0, i32 3
  %8 = load i32, i32* %reverse, align 4
  %call2 = call i32 @gimp_gradient_get_uniform_samples(i8* %4, i32 %6, i32 %8, i32* %n_samples, double** %samples)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_data = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %9, i32 0, i32 5
  %10 = load double*, double** %gradient_data, align 8
  %11 = bitcast double* %10 to i8*
  call void @g_free(i8* %11)
  %12 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width3 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %12, i32 0, i32 2
  %13 = load i32, i32* %width3, align 4
  %14 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %sample_size = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %14, i32 0, i32 2
  store i32 %13, i32* %sample_size, align 4
  %15 = load i32, i32* %n_samples, align 4
  %16 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %n_samples4 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %16, i32 0, i32 4
  store i32 %15, i32* %n_samples4, align 4
  %17 = load double*, double** %samples, align 8
  %18 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_data5 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %18, i32 0, i32 5
  store double* %17, double** %gradient_data5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_gradient_select_preview_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, %struct._GimpGradientSelectButton* %button) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %button.addr = alloca %struct._GimpGradientSelectButton*, align 8
  %priv = alloca %struct._GimpGradientSelectButtonPrivate*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  %pattern = alloca %struct._cairo_pattern*, align 8
  %surface = alloca %struct._cairo_surface*, align 8
  %src = alloca double*, align 8
  %dest = alloca i8*, align 8
  %width = alloca i32, align 4
  %x = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %a = alloca i8, align 1
  %tr = alloca i32, align 4
  %tg = alloca i32, align 4
  %tb = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store %struct._GimpGradientSelectButton* %button, %struct._GimpGradientSelectButton** %button.addr, align 8
  %0 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpGradientSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGradientSelectButtonPrivate*
  store %struct._GimpGradientSelectButtonPrivate* %2, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %3 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_data = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %3, i32 0, i32 5
  %4 = load double*, double** %gradient_data, align 8
  store double* %4, double** %src, align 8
  %5 = load double*, double** %src, align 8
  %tobool = icmp ne double* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %6, %struct._GdkRectangle* %allocation)
  %7 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %7, i32 0, i32 1
  %8 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call2 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %8)
  store %struct._cairo* %call2, %struct._cairo** %cr, align 8
  %9 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %10 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %10, i32 0, i32 4
  %11 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %9, %struct._GdkRegion* %11)
  %12 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %12)
  %13 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %call3 = call %struct._cairo_pattern* @gimp_cairo_checkerboard_create(%struct._cairo* %13, i32 4, %struct._GimpRGB* null, %struct._GimpRGB* null)
  store %struct._cairo_pattern* %call3, %struct._cairo_pattern** %pattern, align 8
  %14 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %15 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  call void @cairo_set_source(%struct._cairo* %14, %struct._cairo_pattern* %15)
  %16 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  call void @cairo_pattern_destroy(%struct._cairo_pattern* %16)
  %17 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %17)
  %18 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %n_samples = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %18, i32 0, i32 4
  %19 = load i32, i32* %n_samples, align 4
  %div = sdiv i32 %19, 4
  store i32 %div, i32* %width, align 4
  %20 = load i32, i32* %width, align 4
  %call4 = call %struct._cairo_surface* @cairo_image_surface_create(i32 0, i32 %20, i32 1)
  store %struct._cairo_surface* %call4, %struct._cairo_surface** %surface, align 8
  store i32 0, i32* %x, align 4
  %21 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call5 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %21)
  store i8* %call5, i8** %dest, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %width, align 4
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load double*, double** %src, align 8
  %arrayidx = getelementptr inbounds double, double* %24, i64 0
  %25 = load double, double* %arrayidx, align 8
  %26 = load double*, double** %src, align 8
  %arrayidx6 = getelementptr inbounds double, double* %26, i64 1
  %27 = load double, double* %arrayidx6, align 8
  %28 = load double*, double** %src, align 8
  %arrayidx7 = getelementptr inbounds double, double* %28, i64 2
  %29 = load double, double* %arrayidx7, align 8
  %30 = load double*, double** %src, align 8
  %arrayidx8 = getelementptr inbounds double, double* %30, i64 3
  %31 = load double, double* %arrayidx8, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double %25, double %27, double %29, double %31)
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %color, i8* %r, i8* %g, i8* %b, i8* %a)
  br label %do.body

do.body:                                          ; preds = %for.body
  %32 = load i8, i8* %a, align 1
  %conv = zext i8 %32 to i32
  %33 = load i8, i8* %r, align 1
  %conv9 = zext i8 %33 to i32
  %mul = mul nsw i32 %conv, %conv9
  %add = add nsw i32 %mul, 128
  store i32 %add, i32* %tr, align 4
  %34 = load i8, i8* %a, align 1
  %conv10 = zext i8 %34 to i32
  %35 = load i8, i8* %g, align 1
  %conv11 = zext i8 %35 to i32
  %mul12 = mul nsw i32 %conv10, %conv11
  %add13 = add nsw i32 %mul12, 128
  store i32 %add13, i32* %tg, align 4
  %36 = load i8, i8* %a, align 1
  %conv14 = zext i8 %36 to i32
  %37 = load i8, i8* %b, align 1
  %conv15 = zext i8 %37 to i32
  %mul16 = mul nsw i32 %conv14, %conv15
  %add17 = add nsw i32 %mul16, 128
  store i32 %add17, i32* %tb, align 4
  %38 = load i32, i32* %tb, align 4
  %shr = lshr i32 %38, 8
  %39 = load i32, i32* %tb, align 4
  %add18 = add i32 %shr, %39
  %shr19 = lshr i32 %add18, 8
  %conv20 = trunc i32 %shr19 to i8
  %40 = load i8*, i8** %dest, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %conv20, i8* %arrayidx21, align 1
  %41 = load i32, i32* %tg, align 4
  %shr22 = lshr i32 %41, 8
  %42 = load i32, i32* %tg, align 4
  %add23 = add i32 %shr22, %42
  %shr24 = lshr i32 %add23, 8
  %conv25 = trunc i32 %shr24 to i8
  %43 = load i8*, i8** %dest, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 %conv25, i8* %arrayidx26, align 1
  %44 = load i32, i32* %tr, align 4
  %shr27 = lshr i32 %44, 8
  %45 = load i32, i32* %tr, align 4
  %add28 = add i32 %shr27, %45
  %shr29 = lshr i32 %add28, 8
  %conv30 = trunc i32 %shr29 to i8
  %46 = load i8*, i8** %dest, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %46, i64 2
  store i8 %conv30, i8* %arrayidx31, align 1
  %47 = load i8, i8* %a, align 1
  %48 = load i8*, i8** %dest, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %48, i64 3
  store i8 %47, i8* %arrayidx32, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %49 = load i32, i32* %x, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %x, align 4
  %50 = load double*, double** %src, align 8
  %add.ptr = getelementptr inbounds double, double* %50, i64 4
  store double* %add.ptr, double** %src, align 8
  %51 = load i8*, i8** %dest, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %51, i64 4
  store i8* %add.ptr33, i8** %dest, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %52)
  %53 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call34 = call %struct._cairo_pattern* @cairo_pattern_create_for_surface(%struct._cairo_surface* %53)
  store %struct._cairo_pattern* %call34, %struct._cairo_pattern** %pattern, align 8
  %54 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  call void @cairo_pattern_set_extend(%struct._cairo_pattern* %54, i32 2)
  %55 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %55)
  %56 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %width35 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %57 = load i32, i32* %width35, align 4
  %conv36 = sitofp i32 %57 to double
  %58 = load i32, i32* %width, align 4
  %conv37 = sitofp i32 %58 to double
  %div38 = fdiv double %conv36, %conv37
  call void @cairo_scale(%struct._cairo* %56, double %div38, double 1.000000e+00)
  %59 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %60 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  call void @cairo_set_source(%struct._cairo* %59, %struct._cairo_pattern* %60)
  %61 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  call void @cairo_pattern_destroy(%struct._cairo_pattern* %61)
  %62 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %62)
  %63 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %63)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %64 = load i32, i32* %retval
  ret i32 %64
}

declare void @gtk_widget_show_all(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_select_button_clicked(%struct._GimpGradientSelectButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GimpGradientSelectButton*, align 8
  %priv = alloca %struct._GimpGradientSelectButtonPrivate*, align 8
  %select_button = alloca %struct._GimpSelectButton*, align 8
  store %struct._GimpGradientSelectButton* %button, %struct._GimpGradientSelectButton** %button.addr, align 8
  %0 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpGradientSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGradientSelectButtonPrivate*
  store %struct._GimpGradientSelectButtonPrivate* %2, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %3 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %4 = bitcast %struct._GimpGradientSelectButton* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_select_button_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpSelectButton*
  store %struct._GimpSelectButton* %5, %struct._GimpSelectButton** %select_button, align 8
  %6 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %6, i32 0, i32 1
  %7 = load i8*, i8** %temp_callback, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback4 = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %8, i32 0, i32 1
  %9 = load i8*, i8** %temp_callback4, align 8
  %10 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_name = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %10, i32 0, i32 1
  %11 = load i8*, i8** %gradient_name, align 8
  %call5 = call i32 @gimp_gradients_set_popup(i8* %9, i8* %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %title = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %12, i32 0, i32 0
  %13 = load i8*, i8** %title, align 8
  %14 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %gradient_name6 = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %14, i32 0, i32 1
  %15 = load i8*, i8** %gradient_name6, align 8
  %16 = load %struct._GimpGradientSelectButtonPrivate*, %struct._GimpGradientSelectButtonPrivate** %priv, align 8
  %sample_size = getelementptr inbounds %struct._GimpGradientSelectButtonPrivate, %struct._GimpGradientSelectButtonPrivate* %16, i32 0, i32 2
  %17 = load i32, i32* %sample_size, align 4
  %18 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %19 = bitcast %struct._GimpGradientSelectButton* %18 to i8*
  %call7 = call i8* @gimp_gradient_select_new(i8* %13, i8* %15, i32 %17, void (i8*, i32, double*, i32, i8*)* @gimp_gradient_select_button_callback, i8* %19)
  %20 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback8 = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %20, i32 0, i32 1
  store i8* %call7, i8** %temp_callback8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gtk_drag_dest_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_select_drag_data_received(%struct._GimpGradientSelectButton* %button, %struct._GdkDragContext* %context, i32 %x, i32 %y, %struct._GtkSelectionData* %selection, i32 %info, i32 %time) #3 {
entry:
  %button.addr = alloca %struct._GimpGradientSelectButton*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %length = alloca i32, align 4
  %str = alloca i8*, align 8
  %pid = alloca i32, align 4
  %unused = alloca i8*, align 8
  %name_offset = alloca i32, align 4
  %name = alloca i8*, align 8
  store %struct._GimpGradientSelectButton* %button, %struct._GimpGradientSelectButton** %button.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %0)
  store i32 %call, i32* %length, align 4
  %1 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call1 = call i32 @gtk_selection_data_get_format(%struct._GtkSelectionData* %1)
  %cmp = icmp ne i32 %call1, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %length, align 4
  %cmp2 = icmp slt i32 %2, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_gradient_select_drag_data_received, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call3 = call i8* @gtk_selection_data_get_data(%struct._GtkSelectionData* %3)
  %4 = load i32, i32* %length, align 4
  %conv = sext i32 %4 to i64
  %call4 = call noalias i8* @g_strndup(i8* %call3, i64 %conv)
  store i8* %call4, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  %call5 = call i32 @g_utf8_validate(i8* %5, i64 -1, i8** null)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.18

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %name_offset, align 4
  %6 = load i8*, i8** %str, align 8
  %call7 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32* %pid, i8** %unused, i32* %name_offset) #6
  %cmp8 = icmp sge i32 %call7, 2
  br i1 %cmp8, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.then.6
  %7 = load i32, i32* %pid, align 4
  %call10 = call i32 @gimp_getpid()
  %cmp11 = icmp eq i32 %7, %call10
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.17

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %8 = load i32, i32* %name_offset, align 4
  %cmp14 = icmp sgt i32 %8, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.13
  %9 = load i8*, i8** %str, align 8
  %10 = load i32, i32* %name_offset, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %name, align 8
  %11 = load %struct._GimpGradientSelectButton*, %struct._GimpGradientSelectButton** %button.addr, align 8
  %12 = load i8*, i8** %name, align 8
  call void @gimp_gradient_select_button_set_gradient(%struct._GimpGradientSelectButton* %11, i8* %12)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %land.lhs.true.13, %land.lhs.true, %if.then.6
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %13 = load i8*, i8** %str, align 8
  call void @g_free(i8* %13)
  br label %return

return:                                           ; preds = %if.end.18, %if.then
  ret void
}

declare void @gtk_widget_pop_composite_child() #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare %struct._cairo_pattern* @gimp_cairo_checkerboard_create(%struct._cairo*, i32, %struct._GimpRGB*, %struct._GimpRGB*) #1

declare void @cairo_set_source(%struct._cairo*, %struct._cairo_pattern*) #1

declare void @cairo_pattern_destroy(%struct._cairo_pattern*) #1

declare void @cairo_paint(%struct._cairo*) #1

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #1

declare %struct._cairo_pattern* @cairo_pattern_create_for_surface(%struct._cairo_surface*) #1

declare void @cairo_pattern_set_extend(%struct._cairo_pattern*, i32) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare void @cairo_scale(%struct._cairo*, double, double) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare i8* @gimp_gradient_select_new(i8*, i8*, i32, void (i8*, i32, double*, i32, i8*)*, i8*) #1

declare i32 @gtk_selection_data_get_length(%struct._GtkSelectionData*) #1

declare i32 @gtk_selection_data_get_format(%struct._GtkSelectionData*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @gtk_selection_data_get_data(%struct._GtkSelectionData*) #1

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare i32 @gimp_getpid() #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
