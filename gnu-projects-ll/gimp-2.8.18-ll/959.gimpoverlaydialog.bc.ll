; ModuleID = './app/widgets/gimpoverlaydialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOverlayDialogClass = type { %struct._GimpOverlayFrameClass, void (%struct._GimpOverlayDialog*, i32)*, void (%struct._GimpOverlayDialog*)* }
%struct._GimpOverlayFrameClass = type { %struct._GtkBinClass }
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
%struct._GimpOverlayDialog = type { %struct._GimpOverlayFrame, %struct._GtkWidget* }
%struct._GimpOverlayFrame = type { %struct._GtkBin }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkButtonBox = type { %struct._GtkBox, i32, i32, i32, i32, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpToolOptions = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpContainer = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._ResponseData = type { i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GtkBindingSet = type { i8*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, i8 }
%struct._GtkBindingEntry = type { i32, i32, %struct._GtkBindingSet*, i8, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, %struct._GtkBindingSignal* }
%struct._GtkBindingSignal = type { %struct._GtkBindingSignal*, i8*, i32, %struct._GtkBindingArg* }
%struct._GtkBindingArg = type { i64, %union.anon.1 }
%union.anon.1 = type { i64 }

@gimp_overlay_dialog_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpOverlayDialog\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_overlay_dialog_new = private unnamed_addr constant [24 x i8] c"gimp_overlay_dialog_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_TOOL_INFO (tool_info)\00", align 1
@__func__.gimp_overlay_dialog_response = private unnamed_addr constant [29 x i8] c"gimp_overlay_dialog_response\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"GIMP_IS_OVERLAY_DIALOG (dialog)\00", align 1
@signals = internal global [2 x i32] zeroinitializer, align 4
@__func__.gimp_overlay_dialog_add_buttons_valist = private unnamed_addr constant [39 x i8] c"gimp_overlay_dialog_add_buttons_valist\00", align 1
@__func__.gimp_overlay_dialog_add_button = private unnamed_addr constant [31 x i8] c"gimp_overlay_dialog_add_button\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"button_text != NULL\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@gimp_overlay_dialog_parent_class = internal global i8* null, align 8
@GimpOverlayDialog_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"gimp-overlay-dialog-response-data\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_overlay_dialog_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_overlay_dialog_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_overlay_dialog_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_overlay_frame_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 840, void (i8*, i8*)* bitcast (void (i8*)* @gimp_overlay_dialog_class_intern_init to void (i8*, i8*)*), i32 128, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOverlayDialog*)* @gimp_overlay_dialog_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_overlay_dialog_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_overlay_dialog_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_overlay_frame_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_dialog_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_overlay_dialog_parent_class, align 8
  %1 = load i32, i32* @GimpOverlayDialog_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOverlayDialog_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOverlayDialogClass*
  call void @gimp_overlay_dialog_class_init(%struct._GimpOverlayDialogClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_dialog_init(%struct._GimpOverlayDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GimpOverlayDialog*, align 8
  store %struct._GimpOverlayDialog* %dialog, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %call = call %struct._GtkWidget* @gtk_button_box_new(i32 0)
  %0 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %action_area = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %0, i32 0, i32 1
  store %struct._GtkWidget* %call, %struct._GtkWidget** %action_area, align 8
  %1 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %action_area1 = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %1, i32 0, i32 1
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area1, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_button_box_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkButtonBox*
  call void @gtk_button_box_set_layout(%struct._GtkButtonBox* %4, i32 4)
  %5 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %action_area4 = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area4, align 8
  %7 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %8 = bitcast %struct._GimpOverlayDialog* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  call void @gtk_widget_set_parent(%struct._GtkWidget* %6, %struct._GtkWidget* %9)
  %10 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %action_area7 = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %10, i32 0, i32 1
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area7, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_overlay_dialog_new(%struct._GimpToolInfo* %tool_info, i8* %desc, ...) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %desc.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  store i8* %desc, i8** %desc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %1 = bitcast %struct._GimpToolInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_info_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_overlay_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_overlay_dialog_get_type() #6
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* null)
  %13 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %13, %struct._GtkWidget** %dialog, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay13 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_overlay_dialog_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpOverlayDialog*
  %arraydecay16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_overlay_dialog_add_buttons_valist(%struct._GimpOverlayDialog* %16, %struct.__va_list_tag* %arraydecay16)
  %arraydecay17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1718 = bitcast %struct.__va_list_tag* %arraydecay17 to i8*
  call void @llvm.va_end(i8* %arraydecay1718)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %17, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %18
}

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_info_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind uwtable
define void @gimp_overlay_dialog_add_buttons_valist(%struct._GimpOverlayDialog* %dialog, %struct.__va_list_tag* %args) #3 {
entry:
  %dialog.addr = alloca %struct._GimpOverlayDialog*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %button_text = alloca i8*, align 8
  %response_id = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpOverlayDialog* %dialog, %struct._GimpOverlayDialog** %dialog.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpOverlayDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_dialog_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_overlay_dialog_add_buttons_valist, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %while.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %vaarg.end.21, %do.end
  %13 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 3
  %reg_save_area = load i8*, i8** %14
  %15 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %16 = bitcast i8* %15 to i8**
  %17 = add i32 %gp_offset, 8
  store i32 %17, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %18 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %16, %vaarg.in_reg ], [ %18, %vaarg.in_mem ]
  %19 = load i8*, i8** %vaarg.addr
  store i8* %19, i8** %button_text, align 8
  %tobool11 = icmp ne i8* %19, null
  br i1 %tobool11, label %while.body, label %while.end

while.body:                                       ; preds = %vaarg.end
  %20 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 0
  %gp_offset13 = load i32, i32* %gp_offset_p12
  %fits_in_gp14 = icmp ule i32 %gp_offset13, 40
  br i1 %fits_in_gp14, label %vaarg.in_reg.15, label %vaarg.in_mem.17

vaarg.in_reg.15:                                  ; preds = %while.body
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 3
  %reg_save_area16 = load i8*, i8** %21
  %22 = getelementptr i8, i8* %reg_save_area16, i32 %gp_offset13
  %23 = bitcast i8* %22 to i32*
  %24 = add i32 %gp_offset13, 8
  store i32 %24, i32* %gp_offset_p12
  br label %vaarg.end.21

vaarg.in_mem.17:                                  ; preds = %while.body
  %overflow_arg_area_p18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 2
  %overflow_arg_area19 = load i8*, i8** %overflow_arg_area_p18
  %25 = bitcast i8* %overflow_arg_area19 to i32*
  %overflow_arg_area.next20 = getelementptr i8, i8* %overflow_arg_area19, i32 8
  store i8* %overflow_arg_area.next20, i8** %overflow_arg_area_p18
  br label %vaarg.end.21

vaarg.end.21:                                     ; preds = %vaarg.in_mem.17, %vaarg.in_reg.15
  %vaarg.addr22 = phi i32* [ %23, %vaarg.in_reg.15 ], [ %25, %vaarg.in_mem.17 ]
  %26 = load i32, i32* %vaarg.addr22
  store i32 %26, i32* %response_id, align 4
  %27 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %28 = load i8*, i8** %button_text, align 8
  %29 = load i32, i32* %response_id, align 4
  %call23 = call %struct._GtkWidget* @gimp_overlay_dialog_add_button(%struct._GimpOverlayDialog* %27, i8* %28, i32 %29)
  br label %while.cond

while.end:                                        ; preds = %if.else.9, %vaarg.end
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define void @gimp_overlay_dialog_response(%struct._GimpOverlayDialog* %dialog, i32 %response_id) #3 {
entry:
  %dialog.addr = alloca %struct._GimpOverlayDialog*, align 8
  %response_id.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpOverlayDialog* %dialog, %struct._GimpOverlayDialog** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpOverlayDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_dialog_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_overlay_dialog_response, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %14 = bitcast %struct._GimpOverlayDialog* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @signals, i32 0, i64 0), align 4
  %16 = load i32, i32* %response_id.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, i32 %16)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_overlay_dialog_add_button(%struct._GimpOverlayDialog* %dialog, i8* %button_text, i32 %response_id) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct._GimpOverlayDialog*, align 8
  %button_text.addr = alloca i8*, align 8
  %response_id.addr = alloca i32, align 4
  %button = alloca %struct._GtkWidget*, align 8
  %ad = alloca %struct._ResponseData*, align 8
  %signal_id = alloca i32, align 4
  %closure = alloca %struct._GClosure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpOverlayDialog* %dialog, %struct._GimpOverlayDialog** %dialog.addr, align 8
  store i8* %button_text, i8** %button_text.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpOverlayDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_dialog_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_overlay_dialog_add_button, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %button_text.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_overlay_dialog_add_button, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i8*, i8** %button_text.addr, align 8
  %call17 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* %14)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %button, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_set_can_default(%struct._GtkWidget* %15, i32 1)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call18 = call %struct._ResponseData* @get_response_data(%struct._GtkWidget* %17, i32 1)
  store %struct._ResponseData* %call18, %struct._ResponseData** %ad, align 8
  %18 = load i32, i32* %response_id.addr, align 4
  %19 = load %struct._ResponseData*, %struct._ResponseData** %ad, align 8
  %response_id19 = getelementptr inbounds %struct._ResponseData, %struct._ResponseData* %19, i32 0, i32 0
  store i32 %18, i32* %response_id19, align 4
  %call20 = call i64 @gtk_button_get_type() #6
  %call21 = call i32 @g_signal_lookup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i64 %call20)
  store i32 %call21, i32* %signal_id, align 4
  %20 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %21 = bitcast %struct._GimpOverlayDialog* %20 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %call23 = call %struct._GClosure* @g_cclosure_new_object(void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpOverlayDialog*)* @action_widget_activated to void ()*), %struct._GObject* %22)
  store %struct._GClosure* %call23, %struct._GClosure** %closure, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  %25 = load i32, i32* %signal_id, align 4
  %26 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  %call24 = call i64 @g_signal_connect_closure_by_id(i8* %24, i32 %25, i32 0, %struct._GClosure* %26, i32 0)
  %27 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %action_area = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %27, i32 0, i32 1
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call25)
  %30 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %30, %struct._GtkWidget* %31, i32 0, i32 1, i32 0)
  %32 = load i32, i32* %response_id.addr, align 4
  %cmp27 = icmp eq i32 %32, -11
  br i1 %cmp27, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %do.end.16
  %33 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %action_area29 = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %33, i32 0, i32 1
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area29, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_button_box_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call30)
  %36 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkButtonBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_button_box_set_child_secondary(%struct._GtkButtonBox* %36, %struct._GtkWidget* %37, i32 1)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %do.end.16
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %38, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.else.14, %if.else.9
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %39
}

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

declare void @gtk_widget_set_can_default(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal %struct._ResponseData* @get_response_data(%struct._GtkWidget* %widget, i32 %create) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %create.addr = alloca i32, align 4
  %ad = alloca %struct._ResponseData*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %create, i32* %create.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._ResponseData*
  store %struct._ResponseData* %3, %struct._ResponseData** %ad, align 8
  %4 = load %struct._ResponseData*, %struct._ResponseData** %ad, align 8
  %tobool = icmp ne %struct._ResponseData* %4, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %create.addr, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call3 = call noalias i8* @g_slice_alloc(i64 4)
  %6 = bitcast i8* %call3 to %struct._ResponseData*
  store %struct._ResponseData* %6, %struct._ResponseData** %ad, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %10 = load %struct._ResponseData*, %struct._ResponseData** %ad, align 8
  %11 = bitcast %struct._ResponseData* %10 to i8*
  call void @g_object_set_data_full(%struct._GObject* %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0), i8* %11, void (i8*)* @response_data_free)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load %struct._ResponseData*, %struct._ResponseData** %ad, align 8
  ret %struct._ResponseData* %12
}

declare i32 @g_signal_lookup(i8*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare %struct._GClosure* @g_cclosure_new_object(void ()*, %struct._GObject*) #1

; Function Attrs: nounwind uwtable
define internal void @action_widget_activated(%struct._GtkWidget* %widget, %struct._GimpOverlayDialog* %dialog) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct._GimpOverlayDialog*, align 8
  %ad = alloca %struct._ResponseData*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpOverlayDialog* %dialog, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._ResponseData* @get_response_data(%struct._GtkWidget* %0, i32 0)
  store %struct._ResponseData* %call, %struct._ResponseData** %ad, align 8
  %1 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %2 = load %struct._ResponseData*, %struct._ResponseData** %ad, align 8
  %response_id = getelementptr inbounds %struct._ResponseData, %struct._ResponseData* %2, i32 0, i32 0
  %3 = load i32, i32* %response_id, align 4
  call void @gimp_overlay_dialog_response(%struct._GimpOverlayDialog* %1, i32 %3)
  ret void
}

declare i64 @g_signal_connect_closure_by_id(i8*, i32, i32, %struct._GClosure*, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_button_box_set_child_secondary(%struct._GtkButtonBox*, %struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_box_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_dialog_class_init(%struct._GimpOverlayDialogClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOverlayDialogClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %container_class = alloca %struct._GtkContainerClass*, align 8
  store %struct._GimpOverlayDialogClass* %klass, %struct._GimpOverlayDialogClass** %klass.addr, align 8
  %0 = load %struct._GimpOverlayDialogClass*, %struct._GimpOverlayDialogClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOverlayDialogClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpOverlayDialogClass*, %struct._GimpOverlayDialogClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOverlayDialogClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpOverlayDialogClass*, %struct._GimpOverlayDialogClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpOverlayDialogClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_container_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkContainerClass*
  store %struct._GtkContainerClass* %8, %struct._GtkContainerClass** %container_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_overlay_dialog_dispose, void (%struct._GObject*)** %dispose, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 12
  store void (%struct._GtkWidget*, %struct._GtkRequisition*)* @gimp_overlay_dialog_size_request, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_overlay_dialog_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %12 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %forall = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %12, i32 0, i32 4
  store void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)* @gimp_overlay_dialog_forall, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)** %forall, align 8
  %13 = load %struct._GimpOverlayDialogClass*, %struct._GimpOverlayDialogClass** %klass.addr, align 8
  %close = getelementptr inbounds %struct._GimpOverlayDialogClass, %struct._GimpOverlayDialogClass* %13, i32 0, i32 2
  store void (%struct._GimpOverlayDialog*)* @gimp_overlay_dialog_close, void (%struct._GimpOverlayDialog*)** %close, align 8
  %14 = load %struct._GimpOverlayDialogClass*, %struct._GimpOverlayDialogClass** %klass.addr, align 8
  %15 = bitcast %struct._GimpOverlayDialogClass* %14 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i64 %16, i32 2, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__INT, i64 4, i32 1, i64 24)
  store i32 %call5, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @signals, i32 0, i64 0), align 4
  %17 = load %struct._GimpOverlayDialogClass*, %struct._GimpOverlayDialogClass** %klass.addr, align 8
  %18 = bitcast %struct._GimpOverlayDialogClass* %17 to %struct._GTypeClass*
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type6, align 8
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i64 %19, i32 34, i32 832, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call7, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @signals, i32 0, i64 1), align 4
  %20 = load %struct._GimpOverlayDialogClass*, %struct._GimpOverlayDialogClass** %klass.addr, align 8
  %21 = bitcast %struct._GimpOverlayDialogClass* %20 to i8*
  %call8 = call %struct._GtkBindingSet* @gtk_binding_set_by_class(i8* %21)
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %call8, i32 65307, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 0)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_dialog_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dialog = alloca %struct._GimpOverlayDialog*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_overlay_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOverlayDialog*
  store %struct._GimpOverlayDialog* %2, %struct._GimpOverlayDialog** %dialog, align 8
  %3 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog, align 8
  %action_area = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog, align 8
  %action_area2 = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area2, align 8
  call void @gtk_widget_unparent(%struct._GtkWidget* %6)
  %7 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog, align 8
  %action_area3 = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %7, i32 0, i32 1
  store %struct._GtkWidget* null, %struct._GtkWidget** %action_area3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_overlay_dialog_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_dialog_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %container = alloca %struct._GtkContainer*, align 8
  %dialog = alloca %struct._GimpOverlayDialog*, align 8
  %child = alloca %struct._GtkWidget*, align 8
  %child_requisition = alloca %struct._GtkRequisition, align 4
  %action_requisition = alloca %struct._GtkRequisition, align 4
  %border_width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_container_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkContainer*
  store %struct._GtkContainer* %2, %struct._GtkContainer** %container, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_overlay_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpOverlayDialog*
  store %struct._GimpOverlayDialog* %5, %struct._GimpOverlayDialog** %dialog, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_bin_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBin*
  %call6 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %8)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %child, align 8
  %9 = load %struct._GtkContainer*, %struct._GtkContainer** %container, align 8
  %call7 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %9)
  store i32 %call7, i32* %border_width, align 4
  %10 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 %10, 2
  %11 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %11, i32 0, i32 0
  store i32 %mul, i32* %width, align 4
  %12 = load i32, i32* %border_width, align 4
  %mul8 = mul nsw i32 %12, 2
  %13 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %13, i32 0, i32 1
  store i32 %mul8, i32* %height, align 4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool = icmp ne %struct._GtkWidget* %14, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %call9 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %15)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %16, %struct._GtkRequisition* %child_requisition)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %width11 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  store i32 0, i32* %width11, align 4
  %height12 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  store i32 0, i32* %height12, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog, align 8
  %action_area = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %17, i32 0, i32 1
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %18, %struct._GtkRequisition* %action_requisition)
  %width13 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %19 = load i32, i32* %width13, align 4
  %width14 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %action_requisition, i32 0, i32 0
  %20 = load i32, i32* %width14, align 4
  %cmp = icmp sgt i32 %19, %20
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %width15 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %21 = load i32, i32* %width15, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %width16 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %action_requisition, i32 0, i32 0
  %22 = load i32, i32* %width16, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ]
  %23 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width17 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %23, i32 0, i32 0
  %24 = load i32, i32* %width17, align 4
  %add = add nsw i32 %24, %cond
  store i32 %add, i32* %width17, align 4
  %height18 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %25 = load i32, i32* %height18, align 4
  %26 = load i32, i32* %border_width, align 4
  %add19 = add nsw i32 %25, %26
  %height20 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %action_requisition, i32 0, i32 1
  %27 = load i32, i32* %height20, align 4
  %add21 = add nsw i32 %add19, %27
  %28 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height22 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %28, i32 0, i32 1
  %29 = load i32, i32* %height22, align 4
  %add23 = add nsw i32 %29, %add21
  store i32 %add23, i32* %height22, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_dialog_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %container = alloca %struct._GtkContainer*, align 8
  %dialog = alloca %struct._GimpOverlayDialog*, align 8
  %child = alloca %struct._GtkWidget*, align 8
  %action_requisition = alloca %struct._GtkRequisition, align 4
  %child_allocation = alloca %struct._GdkRectangle, align 4
  %action_allocation = alloca %struct._GdkRectangle, align 4
  %border_width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_container_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkContainer*
  store %struct._GtkContainer* %2, %struct._GtkContainer** %container, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_overlay_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpOverlayDialog*
  store %struct._GimpOverlayDialog* %5, %struct._GimpOverlayDialog** %dialog, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_bin_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBin*
  %call6 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %8)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %child, align 8
  %9 = bitcast %struct._GdkRectangle* %child_allocation to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 16, i32 4, i1 false)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void @gtk_widget_set_allocation(%struct._GtkWidget* %10, %struct._GdkRectangle* %11)
  %12 = load %struct._GtkContainer*, %struct._GtkContainer** %container, align 8
  %call7 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %12)
  store i32 %call7, i32* %border_width, align 4
  %13 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog, align 8
  %action_area = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %13, i32 0, i32 1
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %14, %struct._GtkRequisition* %action_requisition)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool = icmp ne %struct._GtkWidget* %15, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %call8 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %16)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %17, i32 0, i32 0
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %border_width, align 4
  %add = add nsw i32 %18, %19
  %x10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 0
  store i32 %add, i32* %x10, align 4
  %20 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %20, i32 0, i32 1
  %21 = load i32, i32* %y, align 4
  %22 = load i32, i32* %border_width, align 4
  %add11 = add nsw i32 %21, %22
  %y12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 1
  store i32 %add11, i32* %y12, align 4
  %23 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %23, i32 0, i32 2
  %24 = load i32, i32* %width, align 4
  %25 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %25
  %sub = sub nsw i32 %24, %mul
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %26 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %26, i32 0, i32 2
  %27 = load i32, i32* %width13, align 4
  %28 = load i32, i32* %border_width, align 4
  %mul14 = mul nsw i32 2, %28
  %sub15 = sub nsw i32 %27, %mul14
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub15, %cond.true ], [ 0, %cond.false ]
  %width16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  store i32 %cond, i32* %width16, align 4
  %29 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %29, i32 0, i32 3
  %30 = load i32, i32* %height, align 4
  %31 = load i32, i32* %border_width, align 4
  %mul17 = mul nsw i32 3, %31
  %sub18 = sub nsw i32 %30, %mul17
  %height19 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %action_requisition, i32 0, i32 1
  %32 = load i32, i32* %height19, align 4
  %sub20 = sub nsw i32 %sub18, %32
  %cmp21 = icmp sgt i32 %sub20, 0
  br i1 %cmp21, label %cond.true.22, label %cond.false.28

cond.true.22:                                     ; preds = %cond.end
  %33 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %33, i32 0, i32 3
  %34 = load i32, i32* %height23, align 4
  %35 = load i32, i32* %border_width, align 4
  %mul24 = mul nsw i32 3, %35
  %sub25 = sub nsw i32 %34, %mul24
  %height26 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %action_requisition, i32 0, i32 1
  %36 = load i32, i32* %height26, align 4
  %sub27 = sub nsw i32 %sub25, %36
  br label %cond.end.29

cond.false.28:                                    ; preds = %cond.end
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.22
  %cond30 = phi i32 [ %sub27, %cond.true.22 ], [ 0, %cond.false.28 ]
  %height31 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 3
  store i32 %cond30, i32* %height31, align 4
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  call void @gtk_widget_size_allocate(%struct._GtkWidget* %37, %struct._GdkRectangle* %child_allocation)
  br label %if.end

if.end:                                           ; preds = %cond.end.29, %land.lhs.true, %entry
  %38 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %x32 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %38, i32 0, i32 0
  %39 = load i32, i32* %x32, align 4
  %40 = load i32, i32* %border_width, align 4
  %add33 = add nsw i32 %39, %40
  %x34 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %action_allocation, i32 0, i32 0
  store i32 %add33, i32* %x34, align 4
  %y35 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 1
  %41 = load i32, i32* %y35, align 4
  %height36 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 3
  %42 = load i32, i32* %height36, align 4
  %add37 = add nsw i32 %41, %42
  %43 = load i32, i32* %border_width, align 4
  %add38 = add nsw i32 %add37, %43
  %y39 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %action_allocation, i32 0, i32 1
  store i32 %add38, i32* %y39, align 4
  %44 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width40 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %44, i32 0, i32 2
  %45 = load i32, i32* %width40, align 4
  %46 = load i32, i32* %border_width, align 4
  %mul41 = mul nsw i32 2, %46
  %sub42 = sub nsw i32 %45, %mul41
  %cmp43 = icmp sgt i32 %sub42, 0
  br i1 %cmp43, label %cond.true.44, label %cond.false.48

cond.true.44:                                     ; preds = %if.end
  %47 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width45 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %47, i32 0, i32 2
  %48 = load i32, i32* %width45, align 4
  %49 = load i32, i32* %border_width, align 4
  %mul46 = mul nsw i32 2, %49
  %sub47 = sub nsw i32 %48, %mul46
  br label %cond.end.49

cond.false.48:                                    ; preds = %if.end
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.44
  %cond50 = phi i32 [ %sub47, %cond.true.44 ], [ 0, %cond.false.48 ]
  %width51 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %action_allocation, i32 0, i32 2
  store i32 %cond50, i32* %width51, align 4
  %height52 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %action_requisition, i32 0, i32 1
  %50 = load i32, i32* %height52, align 4
  %cmp53 = icmp sgt i32 %50, 0
  br i1 %cmp53, label %cond.true.54, label %cond.false.56

cond.true.54:                                     ; preds = %cond.end.49
  %height55 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %action_requisition, i32 0, i32 1
  %51 = load i32, i32* %height55, align 4
  br label %cond.end.57

cond.false.56:                                    ; preds = %cond.end.49
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.54
  %cond58 = phi i32 [ %51, %cond.true.54 ], [ 0, %cond.false.56 ]
  %height59 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %action_allocation, i32 0, i32 3
  store i32 %cond58, i32* %height59, align 4
  %52 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog, align 8
  %action_area60 = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %52, i32 0, i32 1
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area60, align 8
  call void @gtk_widget_size_allocate(%struct._GtkWidget* %53, %struct._GdkRectangle* %action_allocation)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_dialog_forall(%struct._GtkContainer* %container, i32 %include_internals, void (%struct._GtkWidget*, i8*)* %callback, i8* %callback_data) #3 {
entry:
  %container.addr = alloca %struct._GtkContainer*, align 8
  %include_internals.addr = alloca i32, align 4
  %callback.addr = alloca void (%struct._GtkWidget*, i8*)*, align 8
  %callback_data.addr = alloca i8*, align 8
  %dialog = alloca %struct._GimpOverlayDialog*, align 8
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  store i32 %include_internals, i32* %include_internals.addr, align 4
  store void (%struct._GtkWidget*, i8*)* %callback, void (%struct._GtkWidget*, i8*)** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  %0 = load i8*, i8** @gimp_overlay_dialog_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_container_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkContainerClass*
  %forall = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %2, i32 0, i32 4
  %3 = load void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)** %forall, align 8
  %4 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %5 = load i32, i32* %include_internals.addr, align 4
  %6 = load void (%struct._GtkWidget*, i8*)*, void (%struct._GtkWidget*, i8*)** %callback.addr, align 8
  %7 = load i8*, i8** %callback_data.addr, align 8
  call void %3(%struct._GtkContainer* %4, i32 %5, void (%struct._GtkWidget*, i8*)* %6, i8* %7)
  %8 = load i32, i32* %include_internals.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %9 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %10 = bitcast %struct._GtkContainer* %9 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_overlay_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call2)
  %11 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpOverlayDialog*
  store %struct._GimpOverlayDialog* %11, %struct._GimpOverlayDialog** %dialog, align 8
  %12 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog, align 8
  %action_area = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %12, i32 0, i32 1
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area, align 8
  %tobool4 = icmp ne %struct._GtkWidget* %13, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %14 = load void (%struct._GtkWidget*, i8*)*, void (%struct._GtkWidget*, i8*)** %callback.addr, align 8
  %15 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog, align 8
  %action_area6 = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %15, i32 0, i32 1
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area6, align 8
  %17 = load i8*, i8** %callback_data.addr, align 8
  call void %14(%struct._GtkWidget* %16, i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_dialog_close(%struct._GimpOverlayDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GimpOverlayDialog*, align 8
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %ad = alloca %struct._ResponseData*, align 8
  %child = alloca %struct._GtkWidget*, align 8
  store %struct._GimpOverlayDialog* %dialog, %struct._GimpOverlayDialog** %dialog.addr, align 8
  store %struct._ResponseData* null, %struct._ResponseData** %ad, align 8
  %0 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %action_area = getelementptr inbounds %struct._GimpOverlayDialog, %struct._GimpOverlayDialog* %0, i32 0, i32 1
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_container_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkContainer*
  %call2 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %3)
  store %struct._GList* %call2, %struct._GList** %children, align 8
  %4 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GtkWidget*
  store %struct._GtkWidget* %8, %struct._GtkWidget** %child, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %call3 = call %struct._ResponseData* @get_response_data(%struct._GtkWidget* %9, i32 0)
  store %struct._ResponseData* %call3, %struct._ResponseData** %ad, align 8
  %10 = load %struct._ResponseData*, %struct._ResponseData** %ad, align 8
  %response_id = getelementptr inbounds %struct._ResponseData, %struct._ResponseData* %10, i32 0, i32 0
  %11 = load i32, i32* %response_id, align 4
  %cmp = icmp eq i32 %11, -7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %12 = load %struct._ResponseData*, %struct._ResponseData** %ad, align 8
  %response_id4 = getelementptr inbounds %struct._ResponseData, %struct._ResponseData* %12, i32 0, i32 0
  %13 = load i32, i32* %response_id4, align 4
  %cmp5 = icmp eq i32 %13, -6
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  store %struct._ResponseData* null, %struct._ResponseData** %ad, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %14, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %16, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %17 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %17)
  %18 = load %struct._ResponseData*, %struct._ResponseData** %ad, align 8
  %tobool7 = icmp ne %struct._ResponseData* %18, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %for.end
  %19 = load %struct._GimpOverlayDialog*, %struct._GimpOverlayDialog** %dialog.addr, align 8
  %20 = load %struct._ResponseData*, %struct._ResponseData** %ad, align 8
  %response_id9 = getelementptr inbounds %struct._ResponseData, %struct._ResponseData* %20, i32 0, i32 0
  %21 = load i32, i32* %response_id9, align 4
  call void @gimp_overlay_dialog_response(%struct._GimpOverlayDialog* %19, i32 %21)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %for.end
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @gtk_binding_entry_add_signal(%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) #1

declare %struct._GtkBindingSet* @gtk_binding_set_by_class(i8*) #1

declare void @gtk_widget_unparent(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

declare i32 @gtk_container_get_border_width(%struct._GtkContainer*) #1

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #1

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @gtk_widget_set_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gtk_widget_size_allocate(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

declare void @g_list_free(%struct._GList*) #1

declare %struct._GtkWidget* @gtk_button_box_new(i32) #1

declare void @gtk_button_box_set_layout(%struct._GtkButtonBox*, i32) #1

declare void @gtk_widget_set_parent(%struct._GtkWidget*, %struct._GtkWidget*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare noalias i8* @g_slice_alloc(i64) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @response_data_free(i8* %data) #3 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %data.addr, align 8
  call void @g_slice_free1(i64 4, i8* %0)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @g_slice_free1(i64, i8*) #1

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