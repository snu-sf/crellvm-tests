; ModuleID = './libgimpwidgets/gimpmemsizeentry.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpMemsizeEntryClass = type { %struct._GtkBoxClass, void (%struct._GimpMemsizeEntry*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpMemsizeEntry = type { %struct._GtkBox, i64, i64, i64, i32, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkOrientable = type opaque
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_memsize_entry_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpMemsizeEntry\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_memsize_entry_new = private unnamed_addr constant [23 x i8] c"gimp_memsize_entry_new\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"value >= lower && value <= upper\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Kilobytes\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Megabytes\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Gigabytes\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@__func__.gimp_memsize_entry_set_value = private unnamed_addr constant [29 x i8] c"gimp_memsize_entry_set_value\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"GIMP_IS_MEMSIZE_ENTRY (entry)\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"value >= entry->lower && value <= entry->upper\00", align 1
@__func__.gimp_memsize_entry_get_value = private unnamed_addr constant [29 x i8] c"gimp_memsize_entry_get_value\00", align 1
@gimp_memsize_entry_parent_class = internal global i8* null, align 8
@GimpMemsizeEntry_private_offset = internal global i32 0, align 4
@gimp_memsize_entry_signals = internal global [1 x i32] zeroinitializer, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_memsize_entry_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_memsize_entry_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_memsize_entry_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 864, void (i8*, i8*)* bitcast (void (i8*)* @gimp_memsize_entry_class_intern_init to void (i8*, i8*)*), i32 184, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpMemsizeEntry*)* @gimp_memsize_entry_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_memsize_entry_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_memsize_entry_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_memsize_entry_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_memsize_entry_parent_class, align 8
  %1 = load i32, i32* @GimpMemsizeEntry_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpMemsizeEntry_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpMemsizeEntryClass*
  call void @gimp_memsize_entry_class_init(%struct._GimpMemsizeEntryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_memsize_entry_init(%struct._GimpMemsizeEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpMemsizeEntry*, align 8
  store %struct._GimpMemsizeEntry* %entry1, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %0 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpMemsizeEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 0)
  %3 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %4 = bitcast %struct._GimpMemsizeEntry* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_box_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %5, i32 4)
  %6 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %value = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %6, i32 0, i32 1
  store i64 0, i64* %value, align 8
  %7 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %lower = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %7, i32 0, i32 2
  store i64 0, i64* %lower, align 8
  %8 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %upper = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %8, i32 0, i32 3
  store i64 0, i64* %upper, align 8
  %9 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %shift = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %9, i32 0, i32 4
  store i32 0, i32* %shift, align 4
  %10 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %adjustment = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %10, i32 0, i32 5
  store %struct._GtkAdjustment* null, %struct._GtkAdjustment** %adjustment, align 8
  %11 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %menu = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %11, i32 0, i32 7
  store %struct._GtkWidget* null, %struct._GtkWidget** %menu, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_memsize_entry_new(i64 %value, i64 %lower, i64 %upper) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %value.addr = alloca i64, align 8
  %lower.addr = alloca i64, align 8
  %upper.addr = alloca i64, align 8
  %entry1 = alloca %struct._GimpMemsizeEntry*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %shift = alloca i32, align 4
  store i64 %value, i64* %value.addr, align 8
  store i64 %lower, i64* %lower.addr, align 8
  store i64 %upper, i64* %upper.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %value.addr, align 8
  %1 = load i64, i64* %lower.addr, align 8
  %cmp = icmp uge i64 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %2 = load i64, i64* %value.addr, align 8
  %3 = load i64, i64* %upper.addr, align 8
  %cmp2 = icmp ule i64 %2, %3
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_memsize_entry_new, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_memsize_entry_get_type() #6
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %4 = bitcast i8* %call3 to %struct._GimpMemsizeEntry*
  store %struct._GimpMemsizeEntry* %4, %struct._GimpMemsizeEntry** %entry1, align 8
  store i32 30, i32* %shift, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %5 = load i32, i32* %shift, align 4
  %cmp4 = icmp ugt i32 %5, 10
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %value.addr, align 8
  %7 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %7 to i64
  %shl = shl i64 1, %sh_prom
  %cmp5 = icmp ugt i64 %6, %shl
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.11

land.lhs.true.6:                                  ; preds = %for.body
  %8 = load i64, i64* %value.addr, align 8
  %9 = load i32, i32* %shift, align 4
  %sh_prom7 = zext i32 %9 to i64
  %shl8 = shl i64 1, %sh_prom7
  %rem = urem i64 %8, %shl8
  %cmp9 = icmp eq i64 %rem, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true.6
  br label %for.end

if.end.11:                                        ; preds = %land.lhs.true.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %10 = load i32, i32* %shift, align 4
  %sub = sub i32 %10, 10
  store i32 %sub, i32* %shift, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  %11 = load i64, i64* %value.addr, align 8
  %12 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %value12 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %12, i32 0, i32 1
  store i64 %11, i64* %value12, align 8
  %13 = load i64, i64* %lower.addr, align 8
  %14 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %lower13 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %14, i32 0, i32 2
  store i64 %13, i64* %lower13, align 8
  %15 = load i64, i64* %upper.addr, align 8
  %16 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %upper14 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %16, i32 0, i32 3
  store i64 %15, i64* %upper14, align 8
  %17 = load i32, i32* %shift, align 4
  %18 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %shift15 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %18, i32 0, i32 4
  store i32 %17, i32* %shift15, align 4
  %19 = load i64, i64* %value.addr, align 8
  %20 = load i32, i32* %shift, align 4
  %sh_prom16 = zext i32 %20 to i64
  %shr = lshr i64 %19, %sh_prom16
  %conv = sitofp i64 %shr to double
  %21 = load i64, i64* %lower.addr, align 8
  %22 = load i32, i32* %shift, align 4
  %sh_prom17 = zext i32 %22 to i64
  %shr18 = lshr i64 %21, %sh_prom17
  %conv19 = sitofp i64 %shr18 to double
  %23 = load i64, i64* %upper.addr, align 8
  %24 = load i32, i32* %shift, align 4
  %sh_prom20 = zext i32 %24 to i64
  %shr21 = lshr i64 %23, %sh_prom20
  %conv22 = sitofp i64 %shr21 to double
  %call23 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv, double %conv19, double %conv22, double 1.000000e+00, double 8.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  %25 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %spinbutton = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %25, i32 0, i32 6
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %spinbutton, align 8
  %26 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %27 = bitcast %struct._GtkObject* %26 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_adjustment_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call24)
  %28 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkAdjustment*
  %29 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %adjustment = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %29, i32 0, i32 5
  store %struct._GtkAdjustment* %28, %struct._GtkAdjustment** %adjustment, align 8
  %30 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %adjustment26 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %30, i32 0, i32 5
  %31 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment26, align 8
  %32 = bitcast %struct._GtkAdjustment* %31 to i8*
  %call27 = call i8* @g_object_ref_sink(i8* %32)
  %33 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %spinbutton28 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %33, i32 0, i32 6
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton28, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_entry_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call29)
  %36 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %36, i32 7)
  %37 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %38 = bitcast %struct._GimpMemsizeEntry* %37 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call31)
  %39 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %40 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %spinbutton33 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %40, i32 0, i32 6
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton33, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %41, i32 0, i32 0, i32 0)
  %42 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %spinbutton34 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %42, i32 0, i32 6
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton34, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %44 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %adjustment35 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %44, i32 0, i32 5
  %45 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment35, align 8
  %46 = bitcast %struct._GtkAdjustment* %45 to i8*
  %47 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %48 = bitcast %struct._GimpMemsizeEntry* %47 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpMemsizeEntry*)* @gimp_memsize_entry_adj_callback to void ()*), i8* %48, void (i8*, %struct._GClosure*)* null, i32 0)
  %call37 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0)) #7
  %call38 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0)) #7
  %call39 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)) #7
  %call40 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call37, i32 10, i8* %call38, i32 20, i8* %call39, i32 30, i8* null)
  %49 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %menu = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %49, i32 0, i32 7
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %menu, align 8
  %50 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %menu41 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %50, i32 0, i32 7
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %menu41, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_int_combo_box_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call42)
  %53 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpIntComboBox*
  %54 = load i32, i32* %shift, align 4
  %call44 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %53, i32 %54)
  %55 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %menu45 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %55, i32 0, i32 7
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %menu45, align 8
  %57 = bitcast %struct._GtkWidget* %56 to i8*
  %58 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %59 = bitcast %struct._GimpMemsizeEntry* %58 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpMemsizeEntry*)* @gimp_memsize_entry_unit_callback to void ()*), i8* %59, void (i8*, %struct._GClosure*)* null, i32 0)
  %60 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %61 = bitcast %struct._GimpMemsizeEntry* %60 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_box_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call47)
  %62 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkBox*
  %63 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %menu49 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %63, i32 0, i32 7
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %menu49, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %62, %struct._GtkWidget* %64, i32 0, i32 0, i32 0)
  %65 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %menu50 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %65, i32 0, i32 7
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %menu50, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %67 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %68 = bitcast %struct._GimpMemsizeEntry* %67 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_widget_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call51)
  %69 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkWidget*
  store %struct._GtkWidget* %69, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %70
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare i8* @g_object_ref_sink(i8*) #1

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_memsize_entry_adj_callback(%struct._GtkAdjustment* %adj, %struct._GimpMemsizeEntry* %entry1) #3 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %entry.addr = alloca %struct._GimpMemsizeEntry*, align 8
  %size = alloca i64, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store %struct._GimpMemsizeEntry* %entry1, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %conv = fptoui double %call to i64
  store i64 %conv, i64* %size, align 8
  %1 = load i64, i64* %size, align 8
  %2 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %shift = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %2, i32 0, i32 4
  %3 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 %1, %sh_prom
  %4 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %value = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %4, i32 0, i32 1
  store i64 %shl, i64* %value, align 8
  %5 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %6 = bitcast %struct._GimpMemsizeEntry* %5 to i8*
  %7 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_memsize_entry_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %6, i32 %7, i32 0)
  ret void
}

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_memsize_entry_unit_callback(%struct._GtkWidget* %widget, %struct._GimpMemsizeEntry* %entry1) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %entry.addr = alloca %struct._GimpMemsizeEntry*, align 8
  %shift = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpMemsizeEntry* %entry1, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpIntComboBox*
  %call3 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %shift)
  %3 = load i32, i32* %shift, align 4
  %4 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %shift4 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %4, i32 0, i32 4
  %5 = load i32, i32* %shift4, align 4
  %cmp = icmp ne i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %shift, align 4
  %7 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %shift5 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %7, i32 0, i32 4
  store i32 %6, i32* %shift5, align 4
  %8 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %adjustment = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %8, i32 0, i32 5
  %9 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %10 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %value = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %10, i32 0, i32 1
  %11 = load i64, i64* %value, align 8
  %12 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %12 to i64
  %shr = ashr i64 %11, %sh_prom
  %conv = sitofp i64 %shr to double
  %13 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %lower = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %13, i32 0, i32 2
  %14 = load i64, i64* %lower, align 8
  %15 = load i32, i32* %shift, align 4
  %sh_prom6 = zext i32 %15 to i64
  %shr7 = ashr i64 %14, %sh_prom6
  %conv8 = sitofp i64 %shr7 to double
  %16 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %upper = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %16, i32 0, i32 3
  %17 = load i64, i64* %upper, align 8
  %18 = load i32, i32* %shift, align 4
  %sh_prom9 = zext i32 %18 to i64
  %shr10 = ashr i64 %17, %sh_prom9
  %conv11 = sitofp i64 %shr10 to double
  %19 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %adjustment12 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %19, i32 0, i32 5
  %20 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment12, align 8
  %call13 = call double @gtk_adjustment_get_step_increment(%struct._GtkAdjustment* %20)
  %21 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %adjustment14 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %21, i32 0, i32 5
  %22 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment14, align 8
  %call15 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %22)
  %23 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %adjustment16 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %23, i32 0, i32 5
  %24 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment16, align 8
  %call17 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %24)
  call void @gtk_adjustment_configure(%struct._GtkAdjustment* %9, double %conv, double %conv8, double %conv11, double %call13, double %call15, double %call17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_memsize_entry_set_value(%struct._GimpMemsizeEntry* %entry1, i64 %value) #3 {
entry:
  %entry.addr = alloca %struct._GimpMemsizeEntry*, align 8
  %value.addr = alloca i64, align 8
  %shift = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpMemsizeEntry* %entry1, %struct._GimpMemsizeEntry** %entry.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpMemsizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_memsize_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_memsize_entry_set_value, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load i64, i64* %value.addr, align 8
  %14 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %lower = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %14, i32 0, i32 2
  %15 = load i64, i64* %lower, align 8
  %cmp13 = icmp uge i64 %13, %15
  br i1 %cmp13, label %land.lhs.true.14, label %if.else.17

land.lhs.true.14:                                 ; preds = %do.body.12
  %16 = load i64, i64* %value.addr, align 8
  %17 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %upper = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %17, i32 0, i32 3
  %18 = load i64, i64* %upper, align 8
  %cmp15 = icmp ule i64 %16, %18
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true.14
  br label %if.end.18

if.else.17:                                       ; preds = %land.lhs.true.14, %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_memsize_entry_set_value, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  store i32 30, i32* %shift, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.19
  %19 = load i32, i32* %shift, align 4
  %cmp20 = icmp ugt i32 %19, 10
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i64, i64* %value.addr, align 8
  %21 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %21 to i64
  %shl = shl i64 1, %sh_prom
  %cmp21 = icmp ugt i64 %20, %shl
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.27

land.lhs.true.22:                                 ; preds = %for.body
  %22 = load i64, i64* %value.addr, align 8
  %23 = load i32, i32* %shift, align 4
  %sh_prom23 = zext i32 %23 to i64
  %shl24 = shl i64 1, %sh_prom23
  %rem = urem i64 %22, %shl24
  %cmp25 = icmp eq i64 %rem, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.22
  br label %for.end

if.end.27:                                        ; preds = %land.lhs.true.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %24 = load i32, i32* %shift, align 4
  %sub = sub i32 %24, 10
  store i32 %sub, i32* %shift, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.26, %for.cond
  %25 = load i32, i32* %shift, align 4
  %26 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %shift28 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %26, i32 0, i32 4
  %27 = load i32, i32* %shift28, align 4
  %cmp29 = icmp ne i32 %25, %27
  br i1 %cmp29, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %for.end
  %28 = load i32, i32* %shift, align 4
  %29 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %shift31 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %29, i32 0, i32 4
  store i32 %28, i32* %shift31, align 4
  %30 = load i64, i64* %value.addr, align 8
  %31 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %value32 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %31, i32 0, i32 1
  store i64 %30, i64* %value32, align 8
  %32 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %menu = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %32, i32 0, i32 7
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_int_combo_box_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call33)
  %35 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpIntComboBox*
  %36 = load i32, i32* %shift, align 4
  %call35 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %35, i32 %36)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.30, %for.end
  %37 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %adjustment = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %37, i32 0, i32 5
  %38 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %39 = load i64, i64* %value.addr, align 8
  %40 = load i32, i32* %shift, align 4
  %sh_prom37 = zext i32 %40 to i64
  %shr = lshr i64 %39, %sh_prom37
  %conv = sitofp i64 %shr to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %38, double %conv)
  br label %return

return:                                           ; preds = %if.end.36, %if.else.17, %if.else.10
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind uwtable
define i64 @gimp_memsize_entry_get_value(%struct._GimpMemsizeEntry* %entry1) #3 {
entry:
  %retval = alloca i64, align 8
  %entry.addr = alloca %struct._GimpMemsizeEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpMemsizeEntry* %entry1, %struct._GimpMemsizeEntry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpMemsizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_memsize_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_memsize_entry_get_value, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %value = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %13, i32 0, i32 1
  %14 = load i64, i64* %value, align 8
  store i64 %14, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.10
  %15 = load i64, i64* %retval
  ret i64 %15
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_memsize_entry_class_init(%struct._GimpMemsizeEntryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpMemsizeEntryClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpMemsizeEntryClass* %klass, %struct._GimpMemsizeEntryClass** %klass.addr, align 8
  %0 = load %struct._GimpMemsizeEntryClass*, %struct._GimpMemsizeEntryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpMemsizeEntryClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_memsize_entry_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GimpMemsizeEntryClass*, %struct._GimpMemsizeEntryClass** %klass.addr, align 8
  %value_changed = getelementptr inbounds %struct._GimpMemsizeEntryClass, %struct._GimpMemsizeEntryClass* %4, i32 0, i32 1
  store void (%struct._GimpMemsizeEntry*)* null, void (%struct._GimpMemsizeEntry*)** %value_changed, align 8
  %5 = load %struct._GimpMemsizeEntryClass*, %struct._GimpMemsizeEntryClass** %klass.addr, align 8
  %6 = bitcast %struct._GimpMemsizeEntryClass* %5 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i64 %7, i32 1, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_memsize_entry_signals, i32 0, i64 0), align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_memsize_entry_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %entry1 = alloca %struct._GimpMemsizeEntry*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GimpMemsizeEntry*
  store %struct._GimpMemsizeEntry* %1, %struct._GimpMemsizeEntry** %entry1, align 8
  %2 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %adjustment = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %2, i32 0, i32 5
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %tobool = icmp ne %struct._GtkAdjustment* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %adjustment2 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %4, i32 0, i32 5
  %5 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment2, align 8
  %6 = bitcast %struct._GtkAdjustment* %5 to i8*
  call void @g_object_unref(i8* %6)
  %7 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry1, align 8
  %adjustment3 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %7, i32 0, i32 5
  store %struct._GtkAdjustment* null, %struct._GtkAdjustment** %adjustment3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_memsize_entry_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare void @gtk_adjustment_configure(%struct._GtkAdjustment*, double, double, double, double, double, double) #1

declare double @gtk_adjustment_get_step_increment(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_page_size(%struct._GtkAdjustment*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
