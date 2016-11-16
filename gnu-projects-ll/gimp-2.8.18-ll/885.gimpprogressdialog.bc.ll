; ModuleID = './app/widgets/gimpprogressdialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpProgressDialogClass = type { %struct._GimpDialogClass }
%struct._GimpDialogClass = type { %struct._GtkDialogClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkDialogClass = type { %struct._GtkWindowClass, void (%struct._GtkDialog*, i32)*, void (%struct._GtkDialog*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpProgressDialog = type { %struct._GimpDialog, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpProgressInterface = type { %struct._GTypeInterface, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, void (%struct._GimpProgress*, i8*)*, void (%struct._GimpProgress*, double)*, double (%struct._GimpProgress*)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)*, void (%struct._GimpProgress*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpProgress = type opaque
%struct._Gimp = type opaque
%struct._GimpProgressBox = type { %struct._GtkBox, i32, i32, double, %struct._GtkWidget*, %struct._GtkWidget* }

@gimp_progress_dialog_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpProgressDialog\00", align 1
@gimp_progress_dialog_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpProgressInterface*)* @gimp_progress_dialog_progress_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Progress\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"skip-taskbar-hint\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"skip-pager-hint\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"resizable\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"focus-on-map\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"window-position\00", align 1
@gimp_progress_dialog_parent_class = internal global i8* null, align 8
@GimpProgressDialog_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_progress_dialog_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_progress_dialog_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_progress_dialog_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_dialog_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 984, void (i8*, i8*)* bitcast (void (i8*)* @gimp_progress_dialog_class_intern_init to void (i8*, i8*)*), i32 272, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpProgressDialog*)* @gimp_progress_dialog_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_progress_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_progress_dialog_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_progress_dialog_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_progress_dialog_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_dialog_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_progress_dialog_parent_class, align 8
  %1 = load i32, i32* @GimpProgressDialog_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpProgressDialog_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpProgressDialogClass*
  call void @gimp_progress_dialog_class_init(%struct._GimpProgressDialogClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_dialog_init(%struct._GimpProgressDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GimpProgressDialog*, align 8
  %content_area = alloca %struct._GtkWidget*, align 8
  store %struct._GimpProgressDialog* %dialog, %struct._GimpProgressDialog** %dialog.addr, align 8
  %0 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpProgressDialog* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkDialog*
  %call2 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %content_area, align 8
  %call3 = call %struct._GtkWidget* @gimp_progress_box_new()
  %3 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog.addr, align 8
  %box = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %3, i32 0, i32 1
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %box, align 8
  %4 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog.addr, align 8
  %box4 = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %4, i32 0, i32 1
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %box4, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %7, i32 12)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %content_area, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %11 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog.addr, align 8
  %box9 = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %11, i32 0, i32 1
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %box9, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %10, %struct._GtkWidget* %12, i32 1, i32 1, i32 0)
  %13 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog.addr, align 8
  %box10 = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %13, i32 0, i32 1
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %box10, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %14)
  %15 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog.addr, align 8
  %box11 = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %15, i32 0, i32 1
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %box11, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  %18 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog.addr, align 8
  %box12 = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %18, i32 0, i32 1
  %19 = bitcast %struct._GtkWidget** %box12 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %19, void (i8*, %struct._GClosure*)* null, i32 0)
  %20 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog.addr, align 8
  %21 = bitcast %struct._GimpProgressDialog* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_dialog_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkDialog*
  %call16 = call %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 -6)
  %23 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog.addr, align 8
  %24 = bitcast %struct._GimpProgressDialog* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_dialog_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %25, i32 -6)
  %26 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog.addr, align 8
  %27 = bitcast %struct._GimpProgressDialog* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_widget_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWidget*
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %28, i32 400, i32 -1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_dialog_progress_iface_init(%struct._GimpProgressInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpProgressInterface*, align 8
  store %struct._GimpProgressInterface* %iface, %struct._GimpProgressInterface** %iface.addr, align 8
  %0 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %start = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %0, i32 0, i32 1
  store %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)* @gimp_progress_dialog_progress_start, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)** %start, align 8
  %1 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %end = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %1, i32 0, i32 2
  store void (%struct._GimpProgress*)* @gimp_progress_dialog_progress_end, void (%struct._GimpProgress*)** %end, align 8
  %2 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %is_active = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpProgress*)* @gimp_progress_dialog_progress_is_active, i32 (%struct._GimpProgress*)** %is_active, align 8
  %3 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_text = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %3, i32 0, i32 4
  store void (%struct._GimpProgress*, i8*)* @gimp_progress_dialog_progress_set_text, void (%struct._GimpProgress*, i8*)** %set_text, align 8
  %4 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %4, i32 0, i32 5
  store void (%struct._GimpProgress*, double)* @gimp_progress_dialog_progress_set_value, void (%struct._GimpProgress*, double)** %set_value, align 8
  %5 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %5, i32 0, i32 6
  store double (%struct._GimpProgress*)* @gimp_progress_dialog_progress_get_value, double (%struct._GimpProgress*)** %get_value, align 8
  %6 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %pulse = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %6, i32 0, i32 7
  store void (%struct._GimpProgress*)* @gimp_progress_dialog_progress_pulse, void (%struct._GimpProgress*)** %pulse, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_progress_dialog_new() #3 {
entry:
  %call = call i64 @gimp_progress_dialog_get_type() #5
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #6
  %call2 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %call1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 1, i8* null)
  %0 = bitcast i8* %call2 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_dialog_class_init(%struct._GimpProgressDialogClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpProgressDialogClass*, align 8
  %dialog_class = alloca %struct._GtkDialogClass*, align 8
  store %struct._GimpProgressDialogClass* %klass, %struct._GimpProgressDialogClass** %klass.addr, align 8
  %0 = load %struct._GimpProgressDialogClass*, %struct._GimpProgressDialogClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpProgressDialogClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_dialog_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkDialogClass*
  store %struct._GtkDialogClass* %2, %struct._GtkDialogClass** %dialog_class, align 8
  %3 = load %struct._GtkDialogClass*, %struct._GtkDialogClass** %dialog_class, align 8
  %response = getelementptr inbounds %struct._GtkDialogClass, %struct._GtkDialogClass* %3, i32 0, i32 1
  store void (%struct._GtkDialog*, i32)* @gimp_progress_dialog_response, void (%struct._GtkDialog*, i32)** %response, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_dialog_response(%struct._GtkDialog* %dialog, i32 %response_id) #3 {
entry:
  %dialog.addr = alloca %struct._GtkDialog*, align 8
  %response_id.addr = alloca i32, align 4
  %progress_dialog = alloca %struct._GimpProgressDialog*, align 8
  store %struct._GtkDialog* %dialog, %struct._GtkDialog** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  %0 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GtkDialog* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressDialog*
  store %struct._GimpProgressDialog* %2, %struct._GimpProgressDialog** %progress_dialog, align 8
  %3 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %progress_dialog, align 8
  %box = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_progress_box_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpProgressBox*
  %cancelable = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %6, i32 0, i32 2
  %7 = load i32, i32* %cancelable, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  %9 = bitcast %struct._GtkDialog* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_progress_interface_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpProgress*
  call void @gimp_progress_cancel(%struct._GimpProgress* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_box_get_type() #2

declare void @gimp_progress_cancel(%struct._GimpProgress*) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

declare %struct._GtkWidget* @gimp_progress_box_new() #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

declare %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog*, i8*, i32) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GimpProgress* @gimp_progress_dialog_progress_start(%struct._GimpProgress* %progress, i8* %message, i32 %cancelable) #3 {
entry:
  %retval = alloca %struct._GimpProgress*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  %dialog = alloca %struct._GimpProgressDialog*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressDialog*
  store %struct._GimpProgressDialog* %2, %struct._GimpProgressDialog** %dialog, align 8
  %3 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box2 = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_interface_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgress*
  %9 = load i8*, i8** %message.addr, align 8
  %10 = load i32, i32* %cancelable.addr, align 4
  %call5 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %8, i8* %9, i32 %10)
  %tobool6 = icmp ne %struct._GimpProgress* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  %11 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %12 = bitcast %struct._GimpProgressDialog* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_dialog_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkDialog*
  %14 = load i32, i32* %cancelable.addr, align 4
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %13, i32 -6, i32 %14)
  %15 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %16 = bitcast %struct._GimpProgressDialog* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_window_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %17)
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpProgress* %18, %struct._GimpProgress** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.7, %if.then
  %19 = load %struct._GimpProgress*, %struct._GimpProgress** %retval
  ret %struct._GimpProgress* %19
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_dialog_progress_end(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %dialog = alloca %struct._GimpProgressDialog*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressDialog*
  store %struct._GimpProgressDialog* %2, %struct._GimpProgressDialog** %dialog, align 8
  %3 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.14

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box2 = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_box_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgressBox*
  %active = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %8, i32 0, i32 1
  %9 = load i32, i32* %active, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box7 = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %10, i32 0, i32 1
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %box7, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_progress_interface_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpProgress*
  call void @gimp_progress_end(%struct._GimpProgress* %13)
  %14 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %15 = bitcast %struct._GimpProgressDialog* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %16, i32 -6, i32 0)
  %17 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %18 = bitcast %struct._GimpProgressDialog* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_widget_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWidget*
  call void @gtk_widget_hide(%struct._GtkWidget* %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.then.6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_progress_dialog_progress_is_active(%struct._GimpProgress* %progress) #3 {
entry:
  %retval = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %dialog = alloca %struct._GimpProgressDialog*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressDialog*
  store %struct._GimpProgressDialog* %2, %struct._GimpProgressDialog** %dialog, align 8
  %3 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box2 = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_interface_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgress*
  %call5 = call i32 @gimp_progress_is_active(%struct._GimpProgress* %8)
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_dialog_progress_set_text(%struct._GimpProgress* %progress, i8* %message) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %dialog = alloca %struct._GimpProgressDialog*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressDialog*
  store %struct._GimpProgressDialog* %2, %struct._GimpProgressDialog** %dialog, align 8
  %3 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box2 = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_interface_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgress*
  %9 = load i8*, i8** %message.addr, align 8
  call void @gimp_progress_set_text(%struct._GimpProgress* %8, i8* %9)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_dialog_progress_set_value(%struct._GimpProgress* %progress, double %percentage) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %percentage.addr = alloca double, align 8
  %dialog = alloca %struct._GimpProgressDialog*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressDialog*
  store %struct._GimpProgressDialog* %2, %struct._GimpProgressDialog** %dialog, align 8
  %3 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box2 = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_interface_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgress*
  %9 = load double, double* %percentage.addr, align 8
  call void @gimp_progress_set_value(%struct._GimpProgress* %8, double %9)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @gimp_progress_dialog_progress_get_value(%struct._GimpProgress* %progress) #3 {
entry:
  %retval = alloca double, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %dialog = alloca %struct._GimpProgressDialog*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressDialog*
  store %struct._GimpProgressDialog* %2, %struct._GimpProgressDialog** %dialog, align 8
  %3 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box2 = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_interface_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgress*
  %call5 = call double @gimp_progress_get_value(%struct._GimpProgress* %8)
  store double %call5, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load double, double* %retval
  ret double %9
}

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_dialog_progress_pulse(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %dialog = alloca %struct._GimpProgressDialog*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgressDialog*
  store %struct._GimpProgressDialog* %2, %struct._GimpProgressDialog** %dialog, align 8
  %3 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpProgressDialog*, %struct._GimpProgressDialog** %dialog, align 8
  %box2 = getelementptr inbounds %struct._GimpProgressDialog, %struct._GimpProgressDialog* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_interface_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgress*
  call void @gimp_progress_pulse(%struct._GimpProgress* %8)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

declare void @gtk_dialog_set_response_sensitive(%struct._GtkDialog*, i32, i32) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gimp_progress_end(%struct._GimpProgress*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare i32 @gimp_progress_is_active(%struct._GimpProgress*) #1

declare void @gimp_progress_set_text(%struct._GimpProgress*, i8*) #1

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #1

declare double @gimp_progress_get_value(%struct._GimpProgress*) #1

declare void @gimp_progress_pulse(%struct._GimpProgress*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
