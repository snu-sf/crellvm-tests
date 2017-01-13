; ModuleID = './app/widgets/gimpspinscale.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpSpinScaleClass = type { %struct._GtkSpinButtonClass }
%struct._GtkSpinButtonClass = type { %struct._GtkEntryClass, i32 (%struct._GtkSpinButton*, double*)*, i32 (%struct._GtkSpinButton*)*, void (%struct._GtkSpinButton*)*, void (%struct._GtkSpinButton*, i32)*, void (%struct._GtkSpinButton*)*, void ()*, void ()*, void ()* }
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
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GimpSpinScale = type { %struct._GtkSpinButton }
%struct._GimpSpinScalePrivate = type { i8*, i32, double, double, %struct._PangoLayout*, i32, i32, double, double }
%struct._PangoContext = type opaque
%struct._PangoFontMetrics = type opaque
%struct._PangoLanguage = type opaque
%struct._cairo = type opaque
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_spin_scale_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpSpinScale\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_spin_scale_new = private unnamed_addr constant [20 x i8] c"gimp_spin_scale_new\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GTK_IS_ADJUSTMENT (adjustment)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"adjustment\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"digits\00", align 1
@__func__.gimp_spin_scale_set_scale_limits = private unnamed_addr constant [33 x i8] c"gimp_spin_scale_set_scale_limits\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"GIMP_IS_SPIN_SCALE (scale)\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"lower >= gtk_adjustment_get_lower (adjustment)\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"upper <= gtk_adjustment_get_upper (adjustment)\00", align 1
@__func__.gimp_spin_scale_unset_scale_limits = private unnamed_addr constant [35 x i8] c"gimp_spin_scale_unset_scale_limits\00", align 1
@__func__.gimp_spin_scale_get_scale_limits = private unnamed_addr constant [33 x i8] c"gimp_spin_scale_get_scale_limits\00", align 1
@gimp_spin_scale_parent_class = internal global i8* null, align 8
@GimpSpinScale_private_offset = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"gimpspinscale.c\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_spin_scale_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_spin_scale_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_spin_scale_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_spin_button_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 888, void (i8*, i8*)* bitcast (void (i8*)* @gimp_spin_scale_class_intern_init to void (i8*, i8*)*), i32 256, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSpinScale*)* @gimp_spin_scale_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_spin_scale_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_spin_scale_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_spin_scale_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_spin_scale_parent_class, align 8
  %1 = load i32, i32* @GimpSpinScale_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSpinScale_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSpinScaleClass*
  call void @gimp_spin_scale_class_init(%struct._GimpSpinScaleClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_spin_scale_init(%struct._GimpSpinScale* %scale) #3 {
entry:
  %scale.addr = alloca %struct._GimpSpinScale*, align 8
  store %struct._GimpSpinScale* %scale, %struct._GimpSpinScale** %scale.addr, align 8
  %0 = load %struct._GimpSpinScale*, %struct._GimpSpinScale** %scale.addr, align 8
  %1 = bitcast %struct._GimpSpinScale* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_add_events(%struct._GtkWidget* %2, i32 8996)
  %3 = load %struct._GimpSpinScale*, %struct._GimpSpinScale** %scale.addr, align 8
  %4 = bitcast %struct._GimpSpinScale* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_entry_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkEntry*
  call void @gtk_entry_set_alignment(%struct._GtkEntry* %5, float 1.000000e+00)
  %6 = load %struct._GimpSpinScale*, %struct._GimpSpinScale** %scale.addr, align 8
  %7 = bitcast %struct._GimpSpinScale* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_entry_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkEntry*
  call void @gtk_entry_set_has_frame(%struct._GtkEntry* %8, i32 0)
  %9 = load %struct._GimpSpinScale*, %struct._GimpSpinScale** %scale.addr, align 8
  %10 = bitcast %struct._GimpSpinScale* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_spin_button_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_numeric(%struct._GtkSpinButton* %11, i32 1)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment* %adjustment, i8* %label, i32 %digits) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %label.addr = alloca i8*, align 8
  %digits.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %1 = bitcast %struct._GtkAdjustment* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_adjustment_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_spin_scale_new, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_spin_scale_get_type() #6
  %13 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %14 = load i8*, i8** %label.addr, align 8
  %15 = load i32, i32* %digits.addr, align 4
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct._GtkAdjustment* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %15, i8* null)
  %16 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %16, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %17
}

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_spin_scale_set_scale_limits(%struct._GimpSpinScale* %scale, double %lower, double %upper) #3 {
entry:
  %scale.addr = alloca %struct._GimpSpinScale*, align 8
  %lower.addr = alloca double, align 8
  %upper.addr = alloca double, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  %spin_button = alloca %struct._GtkSpinButton*, align 8
  %adjustment = alloca %struct._GtkAdjustment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSpinScale* %scale, %struct._GimpSpinScale** %scale.addr, align 8
  store double %lower, double* %lower.addr, align 8
  store double %upper, double* %upper.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSpinScale*, %struct._GimpSpinScale** %scale.addr, align 8
  %1 = bitcast %struct._GimpSpinScale* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_spin_scale_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_spin_scale_set_scale_limits, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSpinScale*, %struct._GimpSpinScale** %scale.addr, align 8
  %14 = bitcast %struct._GimpSpinScale* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_spin_scale_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %15, %struct._GimpSpinScalePrivate** %private, align 8
  %16 = load %struct._GimpSpinScale*, %struct._GimpSpinScale** %scale.addr, align 8
  %17 = bitcast %struct._GimpSpinScale* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_spin_button_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkSpinButton*
  store %struct._GtkSpinButton* %18, %struct._GtkSpinButton** %spin_button, align 8
  %19 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spin_button, align 8
  %call15 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %19)
  store %struct._GtkAdjustment* %call15, %struct._GtkAdjustment** %adjustment, align 8
  br label %do.body.16

do.body.16:                                       ; preds = %do.end
  %20 = load double, double* %lower.addr, align 8
  %21 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call17 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %21)
  %cmp18 = fcmp oge double %20, %call17
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.16
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.16
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_spin_scale_set_scale_limits, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %22 = load double, double* %upper.addr, align 8
  %23 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call24 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %23)
  %cmp25 = fcmp ole double %22, %call24
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.23
  br label %if.end.28

if.else.27:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_spin_scale_set_scale_limits, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.28:                                        ; preds = %if.then.26
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %24 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %scale_limits_set = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %24, i32 0, i32 1
  store i32 1, i32* %scale_limits_set, align 4
  %25 = load double, double* %lower.addr, align 8
  %26 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %scale_lower = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %26, i32 0, i32 2
  store double %25, double* %scale_lower, align 8
  %27 = load double, double* %upper.addr, align 8
  %28 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %scale_upper = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %28, i32 0, i32 3
  store double %27, double* %scale_upper, align 8
  %29 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spin_button, align 8
  call void @gimp_spin_scale_value_changed(%struct._GtkSpinButton* %29)
  br label %return

return:                                           ; preds = %do.end.29, %if.else.27, %if.else.20, %if.else.9
  ret void
}

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton*) #1

declare double @gtk_adjustment_get_lower(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_spin_scale_value_changed(%struct._GtkSpinButton* %spin_button) #3 {
entry:
  %spin_button.addr = alloca %struct._GtkSpinButton*, align 8
  %adjustment = alloca %struct._GtkAdjustment*, align 8
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  %value = alloca double, align 8
  store %struct._GtkSpinButton* %spin_button, %struct._GtkSpinButton** %spin_button.addr, align 8
  %0 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spin_button.addr, align 8
  %call = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %0)
  store %struct._GtkAdjustment* %call, %struct._GtkAdjustment** %adjustment, align 8
  %1 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spin_button.addr, align 8
  %2 = bitcast %struct._GtkSpinButton* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_spin_scale_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpSpinScale*
  call void @gimp_spin_scale_get_limits(%struct._GimpSpinScale* %3, double* %lower, double* %upper)
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call3 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %4)
  %5 = load double, double* %upper, align 8
  %cmp = fcmp ogt double %call3, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load double, double* %upper, align 8
  br label %cond.end.9

cond.false:                                       ; preds = %entry
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call4 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %7)
  %8 = load double, double* %lower, align 8
  %cmp5 = fcmp olt double %call4, %8
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.false
  %9 = load double, double* %lower, align 8
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call8 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.6
  %cond = phi double [ %9, %cond.true.6 ], [ %call8, %cond.false.7 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi double [ %6, %cond.true ], [ %cond, %cond.end ]
  store double %cond10, double* %value, align 8
  %11 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spin_button.addr, align 8
  %12 = bitcast %struct._GtkSpinButton* %11 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_entry_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call11)
  %13 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkEntry*
  %14 = load double, double* %value, align 8
  %15 = load double, double* %lower, align 8
  %sub = fsub double %14, %15
  %16 = load double, double* %upper, align 8
  %17 = load double, double* %lower, align 8
  %sub13 = fsub double %16, %17
  %div = fdiv double %sub, %sub13
  call void @gtk_entry_set_progress_fraction(%struct._GtkEntry* %13, double %div)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_spin_scale_unset_scale_limits(%struct._GimpSpinScale* %scale) #3 {
entry:
  %scale.addr = alloca %struct._GimpSpinScale*, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSpinScale* %scale, %struct._GimpSpinScale** %scale.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSpinScale*, %struct._GimpSpinScale** %scale.addr, align 8
  %1 = bitcast %struct._GimpSpinScale* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_spin_scale_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_spin_scale_unset_scale_limits, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSpinScale*, %struct._GimpSpinScale** %scale.addr, align 8
  %14 = bitcast %struct._GimpSpinScale* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_spin_scale_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %15, %struct._GimpSpinScalePrivate** %private, align 8
  %16 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %scale_limits_set = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %16, i32 0, i32 1
  store i32 0, i32* %scale_limits_set, align 4
  %17 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %scale_lower = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %17, i32 0, i32 2
  store double 0.000000e+00, double* %scale_lower, align 8
  %18 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %scale_upper = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %18, i32 0, i32 3
  store double 0.000000e+00, double* %scale_upper, align 8
  %19 = load %struct._GimpSpinScale*, %struct._GimpSpinScale** %scale.addr, align 8
  %20 = bitcast %struct._GimpSpinScale* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_spin_button_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkSpinButton*
  call void @gimp_spin_scale_value_changed(%struct._GtkSpinButton* %21)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_spin_scale_get_scale_limits(%struct._GimpSpinScale* %scale, double* %lower, double* %upper) #3 {
entry:
  %retval = alloca i32, align 4
  %scale.addr = alloca %struct._GimpSpinScale*, align 8
  %lower.addr = alloca double*, align 8
  %upper.addr = alloca double*, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSpinScale* %scale, %struct._GimpSpinScale** %scale.addr, align 8
  store double* %lower, double** %lower.addr, align 8
  store double* %upper, double** %upper.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSpinScale*, %struct._GimpSpinScale** %scale.addr, align 8
  %1 = bitcast %struct._GimpSpinScale* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_spin_scale_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_spin_scale_get_scale_limits, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSpinScale*, %struct._GimpSpinScale** %scale.addr, align 8
  %14 = bitcast %struct._GimpSpinScale* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_spin_scale_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %15, %struct._GimpSpinScalePrivate** %private, align 8
  %16 = load double*, double** %lower.addr, align 8
  %tobool13 = icmp ne double* %16, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  %17 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %scale_lower = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %17, i32 0, i32 2
  %18 = load double, double* %scale_lower, align 8
  %19 = load double*, double** %lower.addr, align 8
  store double %18, double* %19, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %do.end
  %20 = load double*, double** %upper.addr, align 8
  %tobool16 = icmp ne double* %20, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %21 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %scale_upper = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %21, i32 0, i32 3
  %22 = load double, double* %scale_upper, align 8
  %23 = load double*, double** %upper.addr, align 8
  store double %22, double* %23, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %24 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %scale_limits_set = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %24, i32 0, i32 1
  %25 = load i32, i32* %scale_limits_set, align 4
  store i32 %25, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.else.9
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_spin_scale_class_init(%struct._GimpSpinScaleClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSpinScaleClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %spin_button_class = alloca %struct._GtkSpinButtonClass*, align 8
  store %struct._GimpSpinScaleClass* %klass, %struct._GimpSpinScaleClass** %klass.addr, align 8
  %0 = load %struct._GimpSpinScaleClass*, %struct._GimpSpinScaleClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSpinScaleClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpSpinScaleClass*, %struct._GimpSpinScaleClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpSpinScaleClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpSpinScaleClass*, %struct._GimpSpinScaleClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpSpinScaleClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_spin_button_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkSpinButtonClass*
  store %struct._GtkSpinButtonClass* %8, %struct._GtkSpinButtonClass** %spin_button_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_spin_scale_dispose, void (%struct._GObject*)** %dispose, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_spin_scale_finalize, void (%struct._GObject*)** %finalize, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_spin_scale_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_spin_scale_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 12
  store void (%struct._GtkWidget*, %struct._GtkRequisition*)* @gimp_spin_scale_size_request, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_spin_scale_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_spin_scale_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %16 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %16, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_spin_scale_button_press, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %17 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %17, i32 0, i32 26
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_spin_scale_button_release, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %18 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %18, i32 0, i32 28
  store i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* @gimp_spin_scale_motion_notify, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %19 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %leave_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %19, i32 0, i32 35
  store i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)* @gimp_spin_scale_leave_notify, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)** %leave_notify_event, align 8
  %20 = load %struct._GtkSpinButtonClass*, %struct._GtkSpinButtonClass** %spin_button_class, align 8
  %value_changed = getelementptr inbounds %struct._GtkSpinButtonClass, %struct._GtkSpinButtonClass* %20, i32 0, i32 3
  store void (%struct._GtkSpinButton*)* @gimp_spin_scale_value_changed, void (%struct._GtkSpinButton*)** %value_changed, align 8
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 1, %struct._GParamSpec* %call5)
  %22 = load %struct._GimpSpinScaleClass*, %struct._GimpSpinScaleClass** %klass.addr, align 8
  %23 = bitcast %struct._GimpSpinScaleClass* %22 to i8*
  call void @g_type_class_add_private(i8* %23, i64 64)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_spin_scale_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_spin_scale_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %2, %struct._GimpSpinScalePrivate** %private, align 8
  %3 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %3, i32 0, i32 4
  %4 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %tobool = icmp ne %struct._PangoLayout* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout2 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %5, i32 0, i32 4
  %6 = load %struct._PangoLayout*, %struct._PangoLayout** %layout2, align 8
  %7 = bitcast %struct._PangoLayout* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout3 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %8, i32 0, i32 4
  store %struct._PangoLayout* null, %struct._PangoLayout** %layout3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_spin_scale_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 5
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_spin_scale_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_spin_scale_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %2, %struct._GimpSpinScalePrivate** %private, align 8
  %3 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %label = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %3, i32 0, i32 0
  %4 = load i8*, i8** %label, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %label2 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %5, i32 0, i32 0
  %6 = load i8*, i8** %label2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %label3 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %7, i32 0, i32 0
  store i8* null, i8** %label3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_spin_scale_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_spin_scale_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_spin_scale_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %2, %struct._GimpSpinScalePrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %label = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %4, i32 0, i32 0
  %5 = load i8*, i8** %label, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_string(%struct._GValue* %6)
  %7 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %label3 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %7, i32 0, i32 0
  store i8* %call2, i8** %label3, align 8
  %8 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %8, i32 0, i32 4
  %9 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %tobool = icmp ne %struct._PangoLayout* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %10 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout4 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %10, i32 0, i32 4
  %11 = load %struct._PangoLayout*, %struct._PangoLayout** %layout4, align 8
  %12 = bitcast %struct._PangoLayout* %11 to i8*
  call void @g_object_unref(i8* %12)
  %13 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout5 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %13, i32 0, i32 4
  store %struct._PangoLayout* null, %struct._PangoLayout** %layout5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %15 = bitcast %struct._GObject* %14 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call6)
  %16 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %16)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %17, %struct._GObject** %_glib__object, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %18, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = load i32, i32* %property_id.addr, align 4
  store i32 %19, i32* %_glib__property_id, align 4
  %20 = load i32, i32* %_glib__property_id, align 4
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 1
  %22 = load i8*, i8** %name, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %24 = bitcast %struct._GParamSpec* %23 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type, align 8
  %call8 = call i8* @g_type_name(i64 %26)
  %27 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %28 = bitcast %struct._GObject* %27 to %struct._GTypeInstance*
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type10 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type10, align 8
  %call11 = call i8* @g_type_name(i64 %30)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %20, i8* %22, i8* %call8, i8* %call11)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_spin_scale_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_spin_scale_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %2, %struct._GimpSpinScalePrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %label = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %5, i32 0, i32 0
  %6 = load i8*, i8** %label, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 219, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_spin_scale_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %context = alloca %struct._PangoContext*, align 8
  %metrics = alloca %struct._PangoFontMetrics*, align 8
  %height = alloca i32, align 4
  %char_width = alloca i32, align 4
  %digit_width = alloca i32, align 4
  %char_pixels = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_spin_scale_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %2, %struct._GimpSpinScalePrivate** %private, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._PangoContext* @gtk_widget_get_pango_context(%struct._GtkWidget* %4)
  store %struct._PangoContext* %call3, %struct._PangoContext** %context, align 8
  %5 = load i8*, i8** @gimp_spin_scale_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call4)
  %7 = bitcast %struct._GTypeClass* %call5 to %struct._GtkWidgetClass*
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %7, i32 0, i32 12
  %8 = load void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %10 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  call void %8(%struct._GtkWidget* %9, %struct._GtkRequisition* %10)
  %11 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %12 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %font_desc = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %12, i32 0, i32 11
  %13 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %14 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %call6 = call %struct._PangoLanguage* @pango_context_get_language(%struct._PangoContext* %14)
  %call7 = call %struct._PangoFontMetrics* @pango_context_get_metrics(%struct._PangoContext* %11, %struct._PangoFontDescription* %13, %struct._PangoLanguage* %call6)
  store %struct._PangoFontMetrics* %call7, %struct._PangoFontMetrics** %metrics, align 8
  %15 = load %struct._PangoFontMetrics*, %struct._PangoFontMetrics** %metrics, align 8
  %call8 = call i32 @pango_font_metrics_get_ascent(%struct._PangoFontMetrics* %15) #7
  %16 = load %struct._PangoFontMetrics*, %struct._PangoFontMetrics** %metrics, align 8
  %call9 = call i32 @pango_font_metrics_get_descent(%struct._PangoFontMetrics* %16) #7
  %add = add nsw i32 %call8, %call9
  %add10 = add nsw i32 %add, 512
  %shr = ashr i32 %add10, 10
  store i32 %shr, i32* %height, align 4
  %17 = load i32, i32* %height, align 4
  %18 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height11 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %18, i32 0, i32 1
  %19 = load i32, i32* %height11, align 4
  %add12 = add nsw i32 %19, %17
  store i32 %add12, i32* %height11, align 4
  %20 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %label = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %20, i32 0, i32 0
  %21 = load i8*, i8** %label, align 8
  %tobool = icmp ne i8* %21, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load %struct._PangoFontMetrics*, %struct._PangoFontMetrics** %metrics, align 8
  %call13 = call i32 @pango_font_metrics_get_approximate_char_width(%struct._PangoFontMetrics* %22) #7
  store i32 %call13, i32* %char_width, align 4
  %23 = load %struct._PangoFontMetrics*, %struct._PangoFontMetrics** %metrics, align 8
  %call14 = call i32 @pango_font_metrics_get_approximate_digit_width(%struct._PangoFontMetrics* %23) #7
  store i32 %call14, i32* %digit_width, align 4
  %24 = load i32, i32* %char_width, align 4
  %25 = load i32, i32* %digit_width, align 4
  %cmp = icmp sgt i32 %24, %25
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %26 = load i32, i32* %char_width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %27 = load i32, i32* %digit_width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ]
  %add15 = add nsw i32 %cond, 512
  %shr16 = ashr i32 %add15, 10
  store i32 %shr16, i32* %char_pixels, align 4
  %28 = load i32, i32* %char_pixels, align 4
  %mul = mul nsw i32 %28, 3
  %29 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %29, i32 0, i32 0
  %30 = load i32, i32* %width, align 4
  %add17 = add nsw i32 %30, %mul
  store i32 %add17, i32* %width, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load %struct._PangoFontMetrics*, %struct._PangoFontMetrics** %metrics, align 8
  call void @pango_font_metrics_unref(%struct._PangoFontMetrics* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_spin_scale_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_spin_scale_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %2, %struct._GimpSpinScalePrivate** %private, align 8
  %3 = load i8*, i8** @gimp_spin_scale_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 17
  %6 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GtkStyle* %8)
  %9 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %9, i32 0, i32 4
  %10 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %tobool = icmp ne %struct._PangoLayout* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout4 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %11, i32 0, i32 4
  %12 = load %struct._PangoLayout*, %struct._PangoLayout** %layout4, align 8
  %13 = bitcast %struct._PangoLayout* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout5 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %14, i32 0, i32 4
  store %struct._PangoLayout* null, %struct._PangoLayout** %layout5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_spin_scale_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %cr = alloca %struct._cairo*, align 8
  %rtl = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %requisition = alloca %struct._GtkRequisition, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  %logical = alloca %struct._PangoRectangle, align 4
  %layout_offset_x = alloca i32, align 4
  %layout_offset_y = alloca i32, align 4
  %state = alloca i32, align 4
  %text_color = alloca %struct._GdkColor, align 4
  %bar_text_color = alloca %struct._GdkColor, align 4
  %window_width = alloca i32, align 4
  %window_height = alloca i32, align 4
  %progress_fraction = alloca double, align 8
  %progress_x = alloca i32, align 4
  %progress_y = alloca i32, align 4
  %progress_width = alloca i32, align 4
  %progress_height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_spin_scale_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %2, %struct._GimpSpinScalePrivate** %private, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = load i8*, i8** @gimp_spin_scale_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call3 = call i64 @gtk_widget_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call3)
  %6 = bitcast %struct._GTypeClass* %call4 to %struct._GtkWidgetClass*
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %6, i32 0, i32 31
  %7 = load i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %call5 = call i32 %7(%struct._GtkWidget* %8, %struct._GdkEventExpose* %9)
  %10 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %10, i32 0, i32 1
  %11 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call6 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %11)
  store %struct._cairo* %call6, %struct._cairo** %cr, align 8
  %12 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %13 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %13, i32 0, i32 4
  %14 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %12, %struct._GdkRegion* %14)
  %15 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call7 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %16)
  %cmp = icmp eq i32 %call7, 2
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %rtl, align 4
  %17 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window8 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %17, i32 0, i32 1
  %18 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window8, align 8
  %call9 = call i32 @gdk_window_get_width(%struct._GdkDrawable* %18)
  store i32 %call9, i32* %w, align 4
  %19 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window10 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %19, i32 0, i32 1
  %20 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window10, align 8
  %call11 = call i32 @gdk_window_get_height(%struct._GdkDrawable* %20)
  store i32 %call11, i32* %h, align 4
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %21, double 1.000000e+00)
  %22 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window12 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %22, i32 0, i32 1
  %23 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window12, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_entry_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call13)
  %26 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkEntry*
  %call15 = call %struct._GdkDrawable* @gtk_entry_get_text_window(%struct._GtkEntry* %26)
  %cmp16 = icmp eq %struct._GdkDrawable* %23, %call15
  br i1 %cmp16, label %if.then, label %if.else.25

if.then:                                          ; preds = %entry
  %27 = load i32, i32* %rtl, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then
  %28 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %29 = load i32, i32* %w, align 4
  %conv19 = sitofp i32 %29 to double
  %30 = load i32, i32* %h, align 4
  %conv20 = sitofp i32 %30 to double
  %sub = fsub double %conv20, 1.000000e+00
  call void @cairo_rectangle(%struct._cairo* %28, double -5.000000e-01, double 5.000000e-01, double %conv19, double %sub)
  br label %if.end

if.else:                                          ; preds = %if.then
  %31 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %32 = load i32, i32* %w, align 4
  %conv21 = sitofp i32 %32 to double
  %33 = load i32, i32* %h, align 4
  %conv22 = sitofp i32 %33 to double
  %sub23 = fsub double %conv22, 1.000000e+00
  call void @cairo_rectangle(%struct._cairo* %31, double 5.000000e-01, double 5.000000e-01, double %conv21, double %sub23)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.18
  %34 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call24 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %35)
  %idxprom = zext i32 %call24 to i64
  %36 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %36, i32 0, i32 6
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text, i32 0, i64 %idxprom
  call void @gdk_cairo_set_source_color(%struct._cairo* %34, %struct._GdkColor* %arrayidx)
  %37 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %37)
  br label %if.end.55

if.else.25:                                       ; preds = %entry
  %38 = load i32, i32* %rtl, align 4
  %tobool26 = icmp ne i32 %38, 0
  br i1 %tobool26, label %if.then.27, label %if.else.31

if.then.27:                                       ; preds = %if.else.25
  %39 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %40 = load i32, i32* %w, align 4
  %conv28 = sitofp i32 %40 to double
  %41 = load i32, i32* %h, align 4
  %conv29 = sitofp i32 %41 to double
  %sub30 = fsub double %conv29, 1.000000e+00
  call void @cairo_rectangle(%struct._cairo* %39, double 5.000000e-01, double 5.000000e-01, double %conv28, double %sub30)
  br label %if.end.35

if.else.31:                                       ; preds = %if.else.25
  %42 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %43 = load i32, i32* %w, align 4
  %conv32 = sitofp i32 %43 to double
  %44 = load i32, i32* %h, align 4
  %conv33 = sitofp i32 %44 to double
  %sub34 = fsub double %conv33, 1.000000e+00
  call void @cairo_rectangle(%struct._cairo* %42, double -5.000000e-01, double 5.000000e-01, double %conv32, double %sub34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.31, %if.then.27
  %45 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call36 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %46)
  %idxprom37 = zext i32 %call36 to i64
  %47 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text38 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %47, i32 0, i32 6
  %arrayidx39 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text38, i32 0, i64 %idxprom37
  call void @gdk_cairo_set_source_color(%struct._cairo* %45, %struct._GdkColor* %arrayidx39)
  %48 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %48)
  %49 = load i32, i32* %rtl, align 4
  %tobool40 = icmp ne i32 %49, 0
  br i1 %tobool40, label %if.then.41, label %if.else.46

if.then.41:                                       ; preds = %if.end.35
  %50 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %51 = load i32, i32* %w, align 4
  %conv42 = sitofp i32 %51 to double
  %sub43 = fsub double %conv42, 2.000000e+00
  %52 = load i32, i32* %h, align 4
  %conv44 = sitofp i32 %52 to double
  %sub45 = fsub double %conv44, 3.000000e+00
  call void @cairo_rectangle(%struct._cairo* %50, double 1.500000e+00, double 1.500000e+00, double %sub43, double %sub45)
  br label %if.end.51

if.else.46:                                       ; preds = %if.end.35
  %53 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %54 = load i32, i32* %w, align 4
  %conv47 = sitofp i32 %54 to double
  %sub48 = fsub double %conv47, 2.000000e+00
  %55 = load i32, i32* %h, align 4
  %conv49 = sitofp i32 %55 to double
  %sub50 = fsub double %conv49, 3.000000e+00
  call void @cairo_rectangle(%struct._cairo* %53, double 5.000000e-01, double 1.500000e+00, double %sub48, double %sub50)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.46, %if.then.41
  %56 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call52 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %57)
  %idxprom53 = zext i32 %call52 to i64
  %58 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %base = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %58, i32 0, i32 7
  %arrayidx54 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base, i32 0, i64 %idxprom53
  call void @gdk_cairo_set_source_color(%struct._cairo* %56, %struct._GdkColor* %arrayidx54)
  %59 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %59)
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.51, %if.end
  %60 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %label = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %60, i32 0, i32 0
  %61 = load i8*, i8** %label, align 8
  %tobool56 = icmp ne i8* %61, null
  br i1 %tobool56, label %land.lhs.true, label %if.end.139

land.lhs.true:                                    ; preds = %if.end.55
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call57 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %62)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.139

land.lhs.true.59:                                 ; preds = %land.lhs.true
  %63 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window60 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %63, i32 0, i32 1
  %64 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window60, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_entry_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call61)
  %67 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkEntry*
  %call63 = call %struct._GdkDrawable* @gtk_entry_get_text_window(%struct._GtkEntry* %67)
  %cmp64 = icmp eq %struct._GdkDrawable* %64, %call63
  br i1 %cmp64, label %if.then.66, label %if.end.139

if.then.66:                                       ; preds = %land.lhs.true.59
  %68 = load i8*, i8** @gimp_spin_scale_parent_class, align 8
  %69 = bitcast i8* %68 to %struct._GTypeClass*
  %call67 = call i64 @gtk_widget_get_type() #6
  %call68 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %69, i64 %call67)
  %70 = bitcast %struct._GTypeClass* %call68 to %struct._GtkWidgetClass*
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %70, i32 0, i32 12
  %71 = load void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %71(%struct._GtkWidget* %72, %struct._GtkRequisition* %requisition)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %73, %struct._GdkRectangle* %allocation)
  %74 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %74, i32 0, i32 4
  %75 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %tobool69 = icmp ne %struct._PangoLayout* %75, null
  br i1 %tobool69, label %if.end.75, label %if.then.70

if.then.70:                                       ; preds = %if.then.66
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %77 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %label71 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %77, i32 0, i32 0
  %78 = load i8*, i8** %label71, align 8
  %call72 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %76, i8* %78)
  %79 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout73 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %79, i32 0, i32 4
  store %struct._PangoLayout* %call72, %struct._PangoLayout** %layout73, align 8
  %80 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout74 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %80, i32 0, i32 4
  %81 = load %struct._PangoLayout*, %struct._PangoLayout** %layout74, align 8
  call void @pango_layout_set_ellipsize(%struct._PangoLayout* %81, i32 3)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.70, %if.then.66
  %82 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout76 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %82, i32 0, i32 4
  %83 = load %struct._PangoLayout*, %struct._PangoLayout** %layout76, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %84 = load i32, i32* %width, align 4
  %width77 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %85 = load i32, i32* %width77, align 4
  %sub78 = sub nsw i32 %84, %85
  %mul = mul nsw i32 1024, %sub78
  call void @pango_layout_set_width(%struct._PangoLayout* %83, i32 %mul)
  %86 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout79 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %86, i32 0, i32 4
  %87 = load %struct._PangoLayout*, %struct._PangoLayout** %layout79, align 8
  call void @pango_layout_get_pixel_extents(%struct._PangoLayout* %87, %struct._PangoRectangle* null, %struct._PangoRectangle* %logical)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_entry_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call80)
  %90 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkEntry*
  call void @gtk_entry_get_layout_offsets(%struct._GtkEntry* %90, i32* null, i32* %layout_offset_y)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call82 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %91)
  %cmp83 = icmp eq i32 %call82, 2
  br i1 %cmp83, label %if.then.85, label %if.else.89

if.then.85:                                       ; preds = %if.end.75
  %92 = load i32, i32* %w, align 4
  %width86 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 2
  %93 = load i32, i32* %width86, align 4
  %sub87 = sub nsw i32 %92, %93
  %sub88 = sub nsw i32 %sub87, 2
  store i32 %sub88, i32* %layout_offset_x, align 4
  br label %if.end.90

if.else.89:                                       ; preds = %if.end.75
  store i32 2, i32* %layout_offset_x, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.89, %if.then.85
  %x = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 0
  %94 = load i32, i32* %x, align 4
  %95 = load i32, i32* %layout_offset_x, align 4
  %sub91 = sub nsw i32 %95, %94
  store i32 %sub91, i32* %layout_offset_x, align 4
  store i32 3, i32* %state, align 4
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call92 = call i32 @gtk_widget_get_sensitive(%struct._GtkWidget* %96)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %if.end.90
  store i32 4, i32* %state, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.end.90
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call96 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %97)
  %idxprom97 = zext i32 %call96 to i64
  %98 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text98 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %98, i32 0, i32 6
  %arrayidx99 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text98, i32 0, i64 %idxprom97
  %99 = bitcast %struct._GdkColor* %text_color to i8*
  %100 = bitcast %struct._GdkColor* %arrayidx99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* %100, i64 12, i32 4, i1 false)
  %101 = load i32, i32* %state, align 4
  %idxprom100 = zext i32 %101 to i64
  %102 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %102, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 %idxprom100
  %103 = bitcast %struct._GdkColor* %bar_text_color to i8*
  %104 = bitcast %struct._GdkColor* %arrayidx101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 12, i32 4, i1 false)
  %105 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window102 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %105, i32 0, i32 1
  %106 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window102, align 8
  %call103 = call i32 @gdk_window_get_width(%struct._GdkDrawable* %106)
  store i32 %call103, i32* %window_width, align 4
  %107 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window104 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %107, i32 0, i32 1
  %108 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window104, align 8
  %call105 = call i32 @gdk_window_get_height(%struct._GdkDrawable* %108)
  store i32 %call105, i32* %window_height, align 4
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_entry_get_type() #6
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call106)
  %111 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkEntry*
  %call108 = call double @gtk_entry_get_progress_fraction(%struct._GtkEntry* %111)
  store double %call108, double* %progress_fraction, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call109 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %112)
  %cmp110 = icmp eq i32 %call109, 2
  br i1 %cmp110, label %if.then.112, label %if.else.118

if.then.112:                                      ; preds = %if.end.95
  %113 = load double, double* %progress_fraction, align 8
  %sub113 = fsub double 1.000000e+00, %113
  store double %sub113, double* %progress_fraction, align 8
  %114 = load i32, i32* %window_width, align 4
  %conv114 = sitofp i32 %114 to double
  %115 = load double, double* %progress_fraction, align 8
  %mul115 = fmul double %conv114, %115
  %conv116 = fptosi double %mul115 to i32
  store i32 %conv116, i32* %progress_x, align 4
  store i32 0, i32* %progress_y, align 4
  %116 = load i32, i32* %window_width, align 4
  %117 = load i32, i32* %progress_x, align 4
  %sub117 = sub nsw i32 %116, %117
  store i32 %sub117, i32* %progress_width, align 4
  %118 = load i32, i32* %window_height, align 4
  store i32 %118, i32* %progress_height, align 4
  br label %if.end.122

if.else.118:                                      ; preds = %if.end.95
  store i32 0, i32* %progress_x, align 4
  store i32 0, i32* %progress_y, align 4
  %119 = load i32, i32* %window_width, align 4
  %conv119 = sitofp i32 %119 to double
  %120 = load double, double* %progress_fraction, align 8
  %mul120 = fmul double %conv119, %120
  %conv121 = fptosi double %mul120 to i32
  store i32 %conv121, i32* %progress_width, align 4
  %121 = load i32, i32* %window_height, align 4
  store i32 %121, i32* %progress_height, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.118, %if.then.112
  %122 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_save(%struct._cairo* %122)
  %123 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_fill_rule(%struct._cairo* %123, i32 1)
  %124 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %125 = load i32, i32* %window_width, align 4
  %conv123 = sitofp i32 %125 to double
  %126 = load i32, i32* %window_height, align 4
  %conv124 = sitofp i32 %126 to double
  call void @cairo_rectangle(%struct._cairo* %124, double 0.000000e+00, double 0.000000e+00, double %conv123, double %conv124)
  %127 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %128 = load i32, i32* %progress_x, align 4
  %conv125 = sitofp i32 %128 to double
  %129 = load i32, i32* %progress_y, align 4
  %conv126 = sitofp i32 %129 to double
  %130 = load i32, i32* %progress_width, align 4
  %conv127 = sitofp i32 %130 to double
  %131 = load i32, i32* %progress_height, align 4
  %conv128 = sitofp i32 %131 to double
  call void @cairo_rectangle(%struct._cairo* %127, double %conv125, double %conv126, double %conv127, double %conv128)
  %132 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %132)
  %133 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_fill_rule(%struct._cairo* %133, i32 0)
  %134 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %135 = load i32, i32* %layout_offset_x, align 4
  %conv129 = sitofp i32 %135 to double
  %136 = load i32, i32* %layout_offset_y, align 4
  %conv130 = sitofp i32 %136 to double
  call void @cairo_move_to(%struct._cairo* %134, double %conv129, double %conv130)
  %137 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %137, %struct._GdkColor* %text_color)
  %138 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %139 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout131 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %139, i32 0, i32 4
  %140 = load %struct._PangoLayout*, %struct._PangoLayout** %layout131, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %138, %struct._PangoLayout* %140)
  %141 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_restore(%struct._cairo* %141)
  %142 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %143 = load i32, i32* %progress_x, align 4
  %conv132 = sitofp i32 %143 to double
  %144 = load i32, i32* %progress_y, align 4
  %conv133 = sitofp i32 %144 to double
  %145 = load i32, i32* %progress_width, align 4
  %conv134 = sitofp i32 %145 to double
  %146 = load i32, i32* %progress_height, align 4
  %conv135 = sitofp i32 %146 to double
  call void @cairo_rectangle(%struct._cairo* %142, double %conv132, double %conv133, double %conv134, double %conv135)
  %147 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %147)
  %148 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %149 = load i32, i32* %layout_offset_x, align 4
  %conv136 = sitofp i32 %149 to double
  %150 = load i32, i32* %layout_offset_y, align 4
  %conv137 = sitofp i32 %150 to double
  call void @cairo_move_to(%struct._cairo* %148, double %conv136, double %conv137)
  %151 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %151, %struct._GdkColor* %bar_text_color)
  %152 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %153 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %layout138 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %153, i32 0, i32 4
  %154 = load %struct._PangoLayout*, %struct._PangoLayout** %layout138, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %152, %struct._PangoLayout* %154)
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.122, %land.lhs.true.59, %land.lhs.true, %if.end.55
  %155 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %155)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_spin_scale_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_spin_scale_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %2, %struct._GimpSpinScalePrivate** %private, align 8
  %3 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %changing_value = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %3, i32 0, i32 5
  store i32 0, i32* %changing_value, align 4
  %4 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %relative_change = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %4, i32 0, i32 6
  store i32 0, i32* %relative_change, align 4
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 1
  %6 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_entry_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkEntry*
  %call4 = call %struct._GdkDrawable* @gtk_entry_get_text_window(%struct._GtkEntry* %9)
  %cmp = icmp eq %struct._GdkDrawable* %6, %call4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %11, i32 0, i32 4
  %12 = load double, double* %x, align 8
  %13 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %13, i32 0, i32 5
  %14 = load double, double* %y, align 8
  %call5 = call i32 @gimp_spin_scale_get_target(%struct._GtkWidget* %10, double %12, double %14)
  switch i32 %call5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.then
  %15 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %changing_value6 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %15, i32 0, i32 5
  store i32 1, i32* %changing_value6, align 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x7 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %18, i32 0, i32 4
  %19 = load double, double* %x7, align 8
  call void @gimp_spin_scale_change_value(%struct._GtkWidget* %17, double %19)
  store i32 1, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %if.then
  %20 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %changing_value9 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %20, i32 0, i32 5
  store i32 1, i32* %changing_value9, align 4
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %21)
  %22 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %relative_change10 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %22, i32 0, i32 6
  store i32 1, i32* %relative_change10, align 4
  %23 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x11 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %23, i32 0, i32 4
  %24 = load double, double* %x11, align 8
  %25 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %start_x = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %25, i32 0, i32 7
  store double %24, double* %start_x, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_spin_button_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call12)
  %28 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkSpinButton*
  %call14 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %28)
  %call15 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %call14)
  %29 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %start_value = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %29, i32 0, i32 8
  store double %call15, double* %start_value, align 8
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %30 = load i8*, i8** @gimp_spin_scale_parent_class, align 8
  %31 = bitcast i8* %30 to %struct._GTypeClass*
  %call16 = call i64 @gtk_widget_get_type() #6
  %call17 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %31, i64 %call16)
  %32 = bitcast %struct._GTypeClass* %call17 to %struct._GtkWidgetClass*
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %32, i32 0, i32 25
  %33 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %35 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %call18 = call i32 %33(%struct._GtkWidget* %34, %struct._GdkEventButton* %35)
  store i32 %call18, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %sw.bb.8, %sw.bb
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_spin_scale_button_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_spin_scale_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %2, %struct._GimpSpinScalePrivate** %private, align 8
  %3 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %changing_value = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %3, i32 0, i32 5
  %4 = load i32, i32* %changing_value, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %changing_value2 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %5, i32 0, i32 5
  store i32 0, i32* %changing_value2, align 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 4
  %8 = load double, double* %x, align 8
  call void @gimp_spin_scale_change_value(%struct._GtkWidget* %6, double %8)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** @gimp_spin_scale_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call3 = call i64 @gtk_widget_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call3)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GtkWidgetClass*
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 26
  %12 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %call5 = call i32 %12(%struct._GtkWidget* %13, %struct._GdkEventButton* %14)
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_spin_scale_motion_notify(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_spin_scale_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %2, %struct._GimpSpinScalePrivate** %private, align 8
  %3 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %3)
  %4 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %changing_value = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %4, i32 0, i32 5
  %5 = load i32, i32* %changing_value, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %7, i32 0, i32 4
  %8 = load double, double* %x, align 8
  call void @gimp_spin_scale_change_value(%struct._GtkWidget* %6, double %8)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** @gimp_spin_scale_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call2)
  %11 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 28
  %12 = load i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %call4 = call i32 %12(%struct._GtkWidget* %13, %struct._GdkEventMotion* %14)
  %15 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %15, i32 0, i32 7
  %16 = load i32, i32* %state, align 4
  %and = and i32 %16, 1792
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.end.19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %17 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %17, i32 0, i32 1
  %18 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_entry_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call6)
  %21 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkEntry*
  %call8 = call %struct._GdkDrawable* @gtk_entry_get_text_window(%struct._GtkEntry* %21)
  %cmp = icmp eq %struct._GdkDrawable* %18, %call8
  br i1 %cmp, label %if.then.9, label %if.end.19

if.then.9:                                        ; preds = %land.lhs.true
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call10 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %22)
  store %struct._GdkDisplay* %call10, %struct._GdkDisplay** %display, align 8
  store %struct._GdkCursor* null, %struct._GdkCursor** %cursor, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %24 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x11 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %24, i32 0, i32 4
  %25 = load double, double* %x11, align 8
  %26 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %26, i32 0, i32 5
  %27 = load double, double* %y, align 8
  %call12 = call i32 @gimp_spin_scale_get_target(%struct._GtkWidget* %23, double %25, double %27)
  switch i32 %call12, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %if.then.9
  %28 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call13 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %28, i32 152)
  store %struct._GdkCursor* %call13, %struct._GdkCursor** %cursor, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.then.9
  %29 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call15 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %29, i32 114)
  store %struct._GdkCursor* %call15, %struct._GdkCursor** %cursor, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.then.9
  %30 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call17 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %30, i32 108)
  store %struct._GdkCursor* %call17, %struct._GdkCursor** %cursor, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.9, %sw.bb.16, %sw.bb.14, %sw.bb
  %31 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %window18 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %31, i32 0, i32 1
  %32 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window18, align 8
  %33 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %32, %struct._GdkCursor* %33)
  %34 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %34)
  br label %if.end.19

if.end.19:                                        ; preds = %sw.epilog, %land.lhs.true, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_spin_scale_leave_notify(%struct._GtkWidget* %widget, %struct._GdkEventCrossing* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventCrossing*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventCrossing* %event, %struct._GdkEventCrossing** %event.addr, align 8
  %0 = load %struct._GdkEventCrossing*, %struct._GdkEventCrossing** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventCrossing, %struct._GdkEventCrossing* %0, i32 0, i32 1
  %1 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %1, %struct._GdkCursor* null)
  %2 = load i8*, i8** @gimp_spin_scale_parent_class, align 8
  %3 = bitcast i8* %2 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %3, i64 %call)
  %4 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  %leave_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %4, i32 0, i32 35
  %5 = load i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)** %leave_notify_event, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = load %struct._GdkEventCrossing*, %struct._GdkEventCrossing** %event.addr, align 8
  %call2 = call i32 %5(%struct._GtkWidget* %6, %struct._GdkEventCrossing* %7)
  ret i32 %call2
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_object_unref(i8*) #1

declare void @g_free(i8*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare void @gtk_widget_queue_resize(%struct._GtkWidget*) #1

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

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare %struct._PangoContext* @gtk_widget_get_pango_context(%struct._GtkWidget*) #1

declare %struct._PangoFontMetrics* @pango_context_get_metrics(%struct._PangoContext*, %struct._PangoFontDescription*, %struct._PangoLanguage*) #1

declare %struct._PangoLanguage* @pango_context_get_language(%struct._PangoContext*) #1

; Function Attrs: nounwind readonly
declare i32 @pango_font_metrics_get_ascent(%struct._PangoFontMetrics*) #4

; Function Attrs: nounwind readonly
declare i32 @pango_font_metrics_get_descent(%struct._PangoFontMetrics*) #4

; Function Attrs: nounwind readonly
declare i32 @pango_font_metrics_get_approximate_char_width(%struct._PangoFontMetrics*) #4

; Function Attrs: nounwind readonly
declare i32 @pango_font_metrics_get_approximate_digit_width(%struct._PangoFontMetrics*) #4

declare void @pango_font_metrics_unref(%struct._PangoFontMetrics*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

declare i32 @gdk_window_get_width(%struct._GdkDrawable*) #1

declare i32 @gdk_window_get_height(%struct._GdkDrawable*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare %struct._GdkDrawable* @gtk_entry_get_text_window(%struct._GtkEntry*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget*, i8*) #1

declare void @pango_layout_set_ellipsize(%struct._PangoLayout*, i32) #1

declare void @pango_layout_set_width(%struct._PangoLayout*, i32) #1

declare void @pango_layout_get_pixel_extents(%struct._PangoLayout*, %struct._PangoRectangle*, %struct._PangoRectangle*) #1

declare void @gtk_entry_get_layout_offsets(%struct._GtkEntry*, i32*, i32*) #1

declare i32 @gtk_widget_get_sensitive(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare double @gtk_entry_get_progress_fraction(%struct._GtkEntry*) #1

declare void @cairo_save(%struct._cairo*) #1

declare void @cairo_set_fill_rule(%struct._cairo*, i32) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @pango_cairo_show_layout(%struct._cairo*, %struct._PangoLayout*) #1

declare void @cairo_restore(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_spin_scale_get_target(%struct._GtkWidget* %widget, double %x, double %y) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %logical = alloca %struct._PangoRectangle, align 4
  %layout_x = alloca i32, align 4
  %layout_y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %0, %struct._GdkRectangle* %allocation)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  call void @gtk_entry_get_layout_offsets(%struct._GtkEntry* %3, i32* %layout_x, i32* %layout_y)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_entry_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkEntry*
  %call4 = call %struct._PangoLayout* @gtk_entry_get_layout(%struct._GtkEntry* %6)
  call void @pango_layout_get_pixel_extents(%struct._PangoLayout* %call4, %struct._PangoRectangle* null, %struct._PangoRectangle* %logical)
  %7 = load double, double* %x.addr, align 8
  %8 = load i32, i32* %layout_x, align 4
  %conv = sitofp i32 %8 to double
  %cmp = fcmp ogt double %7, %conv
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %9 = load double, double* %x.addr, align 8
  %10 = load i32, i32* %layout_x, align 4
  %width = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 2
  %11 = load i32, i32* %width, align 4
  %add = add nsw i32 %10, %11
  %conv6 = sitofp i32 %add to double
  %cmp7 = fcmp olt double %9, %conv6
  br i1 %cmp7, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %12 = load double, double* %y.addr, align 8
  %13 = load i32, i32* %layout_y, align 4
  %conv10 = sitofp i32 %13 to double
  %cmp11 = fcmp ogt double %12, %conv10
  br i1 %cmp11, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %land.lhs.true.9
  %14 = load double, double* %y.addr, align 8
  %15 = load i32, i32* %layout_y, align 4
  %height = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 3
  %16 = load i32, i32* %height, align 4
  %add14 = add nsw i32 %15, %16
  %conv15 = sitofp i32 %add14 to double
  %cmp16 = fcmp olt double %14, %conv15
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.13
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.13, %land.lhs.true.9, %land.lhs.true, %entry
  %17 = load double, double* %y.addr, align 8
  %height18 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %18 = load i32, i32* %height18, align 4
  %div = sdiv i32 %18, 2
  %conv19 = sitofp i32 %div to double
  %cmp20 = fcmp ogt double %17, %conv19
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.else
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_spin_scale_change_value(%struct._GtkWidget* %widget, double %x) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca double, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  %spin_button = alloca %struct._GtkSpinButton*, align 8
  %adjustment = alloca %struct._GtkAdjustment*, align 8
  %text_window = alloca %struct._GdkDrawable*, align 8
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  %width = alloca i32, align 4
  %value = alloca double, align 8
  %diff = alloca double, align 8
  %step = alloca double, align 8
  %fraction = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store double %x, double* %x.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_spin_scale_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %2, %struct._GimpSpinScalePrivate** %private, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_spin_button_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkSpinButton*
  store %struct._GtkSpinButton* %5, %struct._GtkSpinButton** %spin_button, align 8
  %6 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spin_button, align 8
  %call4 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %6)
  store %struct._GtkAdjustment* %call4, %struct._GtkAdjustment** %adjustment, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_entry_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkEntry*
  %call7 = call %struct._GdkDrawable* @gtk_entry_get_text_window(%struct._GtkEntry* %9)
  store %struct._GdkDrawable* %call7, %struct._GdkDrawable** %text_window, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_spin_scale_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpSpinScale*
  call void @gimp_spin_scale_get_limits(%struct._GimpSpinScale* %12, double* %lower, double* %upper)
  %13 = load %struct._GdkDrawable*, %struct._GdkDrawable** %text_window, align 8
  %call10 = call i32 @gdk_window_get_width(%struct._GdkDrawable* %13)
  store i32 %call10, i32* %width, align 4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call11 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %14)
  %cmp = icmp eq i32 %call11, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %width, align 4
  %conv = sitofp i32 %15 to double
  %16 = load double, double* %x.addr, align 8
  %sub = fsub double %conv, %16
  store double %sub, double* %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %relative_change = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %17, i32 0, i32 6
  %18 = load i32, i32* %relative_change, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.12, label %if.else.26

if.then.12:                                       ; preds = %if.end
  %19 = load double, double* %upper, align 8
  %20 = load double, double* %lower, align 8
  %sub13 = fsub double %19, %20
  %21 = load i32, i32* %width, align 4
  %conv14 = sitofp i32 %21 to double
  %div = fdiv double %sub13, %conv14
  %div15 = fdiv double %div, 1.000000e+01
  store double %div15, double* %step, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call16 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %22)
  %cmp17 = icmp eq i32 %call16, 2
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.12
  %23 = load double, double* %x.addr, align 8
  %24 = load i32, i32* %width, align 4
  %conv20 = sitofp i32 %24 to double
  %25 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %start_x = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %25, i32 0, i32 7
  %26 = load double, double* %start_x, align 8
  %sub21 = fsub double %conv20, %26
  %sub22 = fsub double %23, %sub21
  store double %sub22, double* %diff, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.then.12
  %27 = load double, double* %x.addr, align 8
  %28 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %start_x23 = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %28, i32 0, i32 7
  %29 = load double, double* %start_x23, align 8
  %sub24 = fsub double %27, %29
  store double %sub24, double* %diff, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.19
  %30 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %start_value = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %30, i32 0, i32 8
  %31 = load double, double* %start_value, align 8
  %32 = load double, double* %diff, align 8
  %33 = load double, double* %step, align 8
  %mul = fmul double %32, %33
  %add = fadd double %31, %mul
  store double %add, double* %value, align 8
  br label %if.end.32

if.else.26:                                       ; preds = %if.end
  %34 = load double, double* %x.addr, align 8
  %35 = load i32, i32* %width, align 4
  %conv27 = sitofp i32 %35 to double
  %div28 = fdiv double %34, %conv27
  store double %div28, double* %fraction, align 8
  %36 = load double, double* %fraction, align 8
  %37 = load double, double* %upper, align 8
  %38 = load double, double* %lower, align 8
  %sub29 = fsub double %37, %38
  %mul30 = fmul double %36, %sub29
  %39 = load double, double* %lower, align 8
  %add31 = fadd double %mul30, %39
  store double %add31, double* %value, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.26, %if.end.25
  %40 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %41 = load double, double* %value, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %40, double %41)
  ret void
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare %struct._PangoLayout* @gtk_entry_get_layout(%struct._GtkEntry*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_spin_scale_get_limits(%struct._GimpSpinScale* %scale, double* %lower, double* %upper) #3 {
entry:
  %scale.addr = alloca %struct._GimpSpinScale*, align 8
  %lower.addr = alloca double*, align 8
  %upper.addr = alloca double*, align 8
  %private = alloca %struct._GimpSpinScalePrivate*, align 8
  %spin_button = alloca %struct._GtkSpinButton*, align 8
  %adjustment = alloca %struct._GtkAdjustment*, align 8
  store %struct._GimpSpinScale* %scale, %struct._GimpSpinScale** %scale.addr, align 8
  store double* %lower, double** %lower.addr, align 8
  store double* %upper, double** %upper.addr, align 8
  %0 = load %struct._GimpSpinScale*, %struct._GimpSpinScale** %scale.addr, align 8
  %1 = bitcast %struct._GimpSpinScale* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_spin_scale_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSpinScalePrivate*
  store %struct._GimpSpinScalePrivate* %2, %struct._GimpSpinScalePrivate** %private, align 8
  %3 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %scale_limits_set = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %3, i32 0, i32 1
  %4 = load i32, i32* %scale_limits_set, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %scale_lower = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %5, i32 0, i32 2
  %6 = load double, double* %scale_lower, align 8
  %7 = load double*, double** %lower.addr, align 8
  store double %6, double* %7, align 8
  %8 = load %struct._GimpSpinScalePrivate*, %struct._GimpSpinScalePrivate** %private, align 8
  %scale_upper = getelementptr inbounds %struct._GimpSpinScalePrivate, %struct._GimpSpinScalePrivate* %8, i32 0, i32 3
  %9 = load double, double* %scale_upper, align 8
  %10 = load double*, double** %upper.addr, align 8
  store double %9, double* %10, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct._GimpSpinScale*, %struct._GimpSpinScale** %scale.addr, align 8
  %12 = bitcast %struct._GimpSpinScale* %11 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_spin_button_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call2)
  %13 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkSpinButton*
  store %struct._GtkSpinButton* %13, %struct._GtkSpinButton** %spin_button, align 8
  %14 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spin_button, align 8
  %call4 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %14)
  store %struct._GtkAdjustment* %call4, %struct._GtkAdjustment** %adjustment, align 8
  %15 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call5 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %15)
  %16 = load double*, double** %lower.addr, align 8
  store double %call5, double* %16, align 8
  %17 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call6 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %17)
  %18 = load double*, double** %upper.addr, align 8
  store double %call6, double* %18, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @gdk_event_request_motions(%struct._GdkEventMotion*) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

declare void @gtk_entry_set_alignment(%struct._GtkEntry*, float) #1

declare void @gtk_entry_set_has_frame(%struct._GtkEntry*, i32) #1

declare void @gtk_spin_button_set_numeric(%struct._GtkSpinButton*, i32) #1

declare void @gtk_entry_set_progress_fraction(%struct._GtkEntry*, double) #1

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
