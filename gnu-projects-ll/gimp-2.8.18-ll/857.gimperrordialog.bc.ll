; ModuleID = './app/widgets/gimperrordialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpErrorDialogClass = type { %struct._GimpDialogClass }
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
%struct._GimpErrorDialog = type { %struct._GimpDialog, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8*, i32 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }

@gimp_error_dialog_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpErrorDialog\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_error_dialog_new = private unnamed_addr constant [22 x i8] c"gimp_error_dialog_new\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"title != NULL\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@__func__.gimp_error_dialog_add = private unnamed_addr constant [22 x i8] c"gimp_error_dialog_add\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"GIMP_IS_ERROR_DIALOG (dialog)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"domain != NULL\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"message != NULL\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%s: %s\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"gimp-wilber-eek\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Too many error messages!\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Messages are redirected to stderr.\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%s Message\00", align 1
@gimp_error_dialog_parent_class = internal global i8* null, align 8
@GimpErrorDialog_private_offset = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"gimp-message\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_error_dialog_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_error_dialog_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_error_dialog_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_dialog_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 984, void (i8*, i8*)* bitcast (void (i8*)* @gimp_error_dialog_class_intern_init to void (i8*, i8*)*), i32 304, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpErrorDialog*)* @gimp_error_dialog_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_error_dialog_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_error_dialog_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_error_dialog_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_error_dialog_parent_class, align 8
  %1 = load i32, i32* @GimpErrorDialog_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpErrorDialog_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpErrorDialogClass*
  call void @gimp_error_dialog_class_init(%struct._GimpErrorDialogClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_error_dialog_init(%struct._GimpErrorDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GimpErrorDialog*, align 8
  store %struct._GimpErrorDialog* %dialog, %struct._GimpErrorDialog** %dialog.addr, align 8
  %0 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpErrorDialog* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWindow*
  call void @gtk_window_set_role(%struct._GtkWindow* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  %3 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %4 = bitcast %struct._GimpErrorDialog* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i8*, ...) @gtk_dialog_add_buttons(%struct._GtkDialog* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 -7, i8* null)
  %6 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %7 = bitcast %struct._GimpErrorDialog* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %8, i32 -7)
  %9 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %10 = bitcast %struct._GimpErrorDialog* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_window_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %11, i32 0)
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  %12 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %vbox = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %12, i32 0, i32 1
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %vbox, align 8
  %13 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %14 = bitcast %struct._GimpErrorDialog* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %15)
  %16 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %18 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %vbox14 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %18, i32 0, i32 1
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox14, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %19, i32 1, i32 1, i32 0)
  %20 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %vbox15 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %20, i32 0, i32 1
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox15, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_box = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %22, i32 0, i32 2
  store %struct._GtkWidget* null, %struct._GtkWidget** %last_box, align 8
  %23 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_domain = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %23, i32 0, i32 3
  store i8* null, i8** %last_domain, align 8
  %24 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_message = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %24, i32 0, i32 4
  store i8* null, i8** %last_message, align 8
  %25 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %num_messages = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %25, i32 0, i32 5
  store i32 0, i32* %num_messages, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_error_dialog_new(i8* %title) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  store i8* %title, i8** %title.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %title.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_error_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_error_dialog_get_type() #6
  %1 = load i8*, i8** %title.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* %1, i8* null)
  %2 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %3
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_error_dialog_add(%struct._GimpErrorDialog* %dialog, i8* %stock_id, i8* %domain, i8* %message) #3 {
entry:
  %dialog.addr = alloca %struct._GimpErrorDialog*, align 8
  %stock_id.addr = alloca i8*, align 8
  %domain.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %overflow = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpErrorDialog* %dialog, %struct._GimpErrorDialog** %dialog.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 0, i32* %overflow, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpErrorDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_error_dialog_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_error_dialog_add, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %domain.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_error_dialog_add, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %message.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_error_dialog_add, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_box = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %15, i32 0, i32 2
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %last_box, align 8
  %tobool23 = icmp ne %struct._GtkWidget* %16, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.44

land.lhs.true.24:                                 ; preds = %do.end.22
  %17 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_domain = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %17, i32 0, i32 3
  %18 = load i8*, i8** %last_domain, align 8
  %tobool25 = icmp ne i8* %18, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.44

land.lhs.true.26:                                 ; preds = %land.lhs.true.24
  %19 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_domain27 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %19, i32 0, i32 3
  %20 = load i8*, i8** %last_domain27, align 8
  %21 = load i8*, i8** %domain.addr, align 8
  %call28 = call i32 @strcmp(i8* %20, i8* %21) #7
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.44

land.lhs.true.30:                                 ; preds = %land.lhs.true.26
  %22 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_message = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %22, i32 0, i32 4
  %23 = load i8*, i8** %last_message, align 8
  %tobool31 = icmp ne i8* %23, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.44

land.lhs.true.32:                                 ; preds = %land.lhs.true.30
  %24 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_message33 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %24, i32 0, i32 4
  %25 = load i8*, i8** %last_message33, align 8
  %26 = load i8*, i8** %message.addr, align 8
  %call34 = call i32 @strcmp(i8* %25, i8* %26) #7
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %land.lhs.true.32
  %27 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_box37 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %27, i32 0, i32 2
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %last_box37, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_message_box_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call38)
  %30 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpMessageBox*
  %call40 = call i32 @gimp_message_box_repeat(%struct._GimpMessageBox* %30)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.36
  br label %return

if.end.43:                                        ; preds = %if.then.36
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %land.lhs.true.32, %land.lhs.true.30, %land.lhs.true.26, %land.lhs.true.24, %do.end.22
  %31 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %num_messages = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %31, i32 0, i32 5
  %32 = load i32, i32* %num_messages, align 4
  %cmp45 = icmp sge i32 %32, 3
  br i1 %cmp45, label %if.then.46, label %if.end.64

if.then.46:                                       ; preds = %if.end.44
  %33 = load i8*, i8** %domain.addr, align 8
  %34 = load i8*, i8** %message.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* %33, i8* %34)
  store i32 1, i32* %overflow, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8** %stock_id.addr, align 8
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)) #8
  store i8* %call47, i8** %domain.addr, align 8
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)) #8
  store i8* %call48, i8** %message.addr, align 8
  %35 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_domain49 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %35, i32 0, i32 3
  %36 = load i8*, i8** %last_domain49, align 8
  %tobool50 = icmp ne i8* %36, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.63

land.lhs.true.51:                                 ; preds = %if.then.46
  %37 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_domain52 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %37, i32 0, i32 3
  %38 = load i8*, i8** %last_domain52, align 8
  %39 = load i8*, i8** %domain.addr, align 8
  %call53 = call i32 @strcmp(i8* %38, i8* %39) #7
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %land.lhs.true.55, label %if.end.63

land.lhs.true.55:                                 ; preds = %land.lhs.true.51
  %40 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_message56 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %40, i32 0, i32 4
  %41 = load i8*, i8** %last_message56, align 8
  %tobool57 = icmp ne i8* %41, null
  br i1 %tobool57, label %land.lhs.true.58, label %if.end.63

land.lhs.true.58:                                 ; preds = %land.lhs.true.55
  %42 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_message59 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %42, i32 0, i32 4
  %43 = load i8*, i8** %last_message59, align 8
  %44 = load i8*, i8** %message.addr, align 8
  %call60 = call i32 @strcmp(i8* %43, i8* %44) #7
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %land.lhs.true.58
  br label %return

if.end.63:                                        ; preds = %land.lhs.true.58, %land.lhs.true.55, %land.lhs.true.51, %if.then.46
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.44
  %call65 = call i64 @gimp_message_box_get_type() #6
  %45 = load i8*, i8** %stock_id.addr, align 8
  %call66 = call i8* (i64, i8*, ...) @g_object_new(i64 %call65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* %45, i8* null)
  %46 = bitcast i8* %call66 to %struct._GtkWidget*
  store %struct._GtkWidget* %46, %struct._GtkWidget** %box, align 8
  %47 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %num_messages67 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %47, i32 0, i32 5
  %48 = load i32, i32* %num_messages67, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %num_messages67, align 4
  %49 = load i32, i32* %overflow, align 4
  %tobool68 = icmp ne i32 %49, 0
  br i1 %tobool68, label %if.then.69, label %if.else.72

if.then.69:                                       ; preds = %if.end.64
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_message_box_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call70)
  %52 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpMessageBox*
  %53 = load i8*, i8** %domain.addr, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %53)
  br label %if.end.76

if.else.72:                                       ; preds = %if.end.64
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_message_box_get_type() #6
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call73)
  %56 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpMessageBox*
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)) #8
  %57 = load i8*, i8** %domain.addr, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %56, i8* %call75, i8* %57)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.72, %if.then.69
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_message_box_get_type() #6
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call77)
  %60 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpMessageBox*
  %61 = load i8*, i8** %message.addr, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %61)
  %62 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %vbox = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %62, i32 0, i32 1
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_box_get_type() #6
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call79)
  %65 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkBox*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %65, %struct._GtkWidget* %66, i32 1, i32 1, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %69 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_box81 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %69, i32 0, i32 2
  store %struct._GtkWidget* %68, %struct._GtkWidget** %last_box81, align 8
  %70 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_domain82 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %70, i32 0, i32 3
  %71 = load i8*, i8** %last_domain82, align 8
  call void @g_free(i8* %71)
  %72 = load i8*, i8** %domain.addr, align 8
  %call83 = call noalias i8* @g_strdup(i8* %72)
  %73 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_domain84 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %73, i32 0, i32 3
  store i8* %call83, i8** %last_domain84, align 8
  %74 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_message85 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %74, i32 0, i32 4
  %75 = load i8*, i8** %last_message85, align 8
  call void @g_free(i8* %75)
  %76 = load i8*, i8** %message.addr, align 8
  %call86 = call noalias i8* @g_strdup(i8* %76)
  %77 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog.addr, align 8
  %last_message87 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %77, i32 0, i32 4
  store i8* %call86, i8** %last_message87, align 8
  br label %return

return:                                           ; preds = %if.end.76, %if.then.62, %if.then.42, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_message_box_repeat(%struct._GimpMessageBox*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_box_get_type() #2

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #1

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_error_dialog_class_init(%struct._GimpErrorDialogClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpErrorDialogClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %dialog_class = alloca %struct._GtkDialogClass*, align 8
  store %struct._GimpErrorDialogClass* %klass, %struct._GimpErrorDialogClass** %klass.addr, align 8
  %0 = load %struct._GimpErrorDialogClass*, %struct._GimpErrorDialogClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpErrorDialogClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpErrorDialogClass*, %struct._GimpErrorDialogClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpErrorDialogClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_dialog_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkDialogClass*
  store %struct._GtkDialogClass* %5, %struct._GtkDialogClass** %dialog_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_error_dialog_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GtkDialogClass*, %struct._GtkDialogClass** %dialog_class, align 8
  %response = getelementptr inbounds %struct._GtkDialogClass, %struct._GtkDialogClass* %7, i32 0, i32 1
  store void (%struct._GtkDialog*, i32)* @gimp_error_dialog_response, void (%struct._GtkDialog*, i32)** %response, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_error_dialog_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dialog = alloca %struct._GimpErrorDialog*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_error_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpErrorDialog*
  store %struct._GimpErrorDialog* %2, %struct._GimpErrorDialog** %dialog, align 8
  %3 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog, align 8
  %last_domain = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %3, i32 0, i32 3
  %4 = load i8*, i8** %last_domain, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog, align 8
  %last_domain2 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %5, i32 0, i32 3
  %6 = load i8*, i8** %last_domain2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog, align 8
  %last_domain3 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %7, i32 0, i32 3
  store i8* null, i8** %last_domain3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog, align 8
  %last_message = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %8, i32 0, i32 4
  %9 = load i8*, i8** %last_message, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog, align 8
  %last_message6 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %10, i32 0, i32 4
  %11 = load i8*, i8** %last_message6, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpErrorDialog*, %struct._GimpErrorDialog** %dialog, align 8
  %last_message7 = getelementptr inbounds %struct._GimpErrorDialog, %struct._GimpErrorDialog* %12, i32 0, i32 4
  store i8* null, i8** %last_message7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load i8*, i8** @gimp_error_dialog_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_error_dialog_response(%struct._GtkDialog* %dialog, i32 %response_id) #3 {
entry:
  %dialog.addr = alloca %struct._GtkDialog*, align 8
  %response_id.addr = alloca i32, align 4
  store %struct._GtkDialog* %dialog, %struct._GtkDialog** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  %0 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GtkDialog* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %2)
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_window_set_role(%struct._GtkWindow*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gtk_dialog_add_buttons(%struct._GtkDialog*, i8*, ...) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
