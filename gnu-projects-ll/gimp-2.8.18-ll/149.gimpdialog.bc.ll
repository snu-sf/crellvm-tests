; ModuleID = './libgimpwidgets/gimpdialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RunInfo = type { %struct._GtkDialog*, i32, %struct._GMainLoop*, i32 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GMainLoop = type opaque
%struct._GimpDialogClass = type { %struct._GtkDialogClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkDialogClass = type { %struct._GtkWindowClass, void (%struct._GtkDialog*, i32)*, void (%struct._GtkDialog*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWindowClass = type { %struct._GtkBinClass, void (%struct._GtkWindow*, %struct._GtkWidget*)*, i32 (%struct._GtkWindow*, %union._GdkEvent*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*, i32)*, void (%struct._GtkWindow*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkBinClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GtkArg = type opaque
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpDialogPrivate = type { void (i8*, i8*)*, i8*, %struct._GtkWidget* }
%struct._GMainContext = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkButtonBox = type { %struct._GtkBox, i32, i32, i32, i32, i32 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }

@gimp_dialog_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"GimpDialog\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_dialog_new = private unnamed_addr constant [16 x i8] c"gimp_dialog_new\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"parent == NULL || GTK_IS_WIDGET (parent)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"title != NULL\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"role != NULL\00", align 1
@__func__.gimp_dialog_new_valist = private unnamed_addr constant [23 x i8] c"gimp_dialog_new_valist\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"modal\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"help-func\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"help-id\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@__func__.gimp_dialog_add_buttons_valist = private unnamed_addr constant [31 x i8] c"gimp_dialog_add_buttons_valist\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"GIMP_IS_DIALOG (dialog)\00", align 1
@gimp_dialog_run.ri = private unnamed_addr constant %struct.RunInfo { %struct._GtkDialog* null, i32 -1, %struct._GMainLoop* null, i32 0 }, align 8
@__func__.gimp_dialog_run = private unnamed_addr constant [16 x i8] c"gimp_dialog_run\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@gdk_threads_unlock = external global void ()*, align 8
@gdk_threads_lock = external global void ()*, align 8
@show_help_button = internal global i32 1, align 4
@gimp_dialog_parent_class = internal global i8* null, align 8
@GimpDialog_private_offset = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"gtk-help\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"gimpdialog.c\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dialog_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_dialog_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_dialog_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_dialog_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 984, void (i8*, i8*)* bitcast (void (i8*)* @gimp_dialog_class_intern_init to void (i8*, i8*)*), i32 264, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDialog*)* @gimp_dialog_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_dialog_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_dialog_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_dialog_parent_class, align 8
  %1 = load i32, i32* @GimpDialog_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDialog_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDialogClass*
  call void @gimp_dialog_class_init(%struct._GimpDialogClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_init(%struct._GimpDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GimpDialog*, align 8
  store %struct._GimpDialog* %dialog, %struct._GimpDialog** %dialog.addr, align 8
  %0 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpDialog* %0 to i8*
  %call = call i64 @g_signal_connect_data(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkDialog*, i32)* @gimp_dialog_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dialog_new(i8* %title, i8* %role, %struct._GtkWidget* %parent, i32 %flags, void (i8*, i8*)* %help_func, i8* %help_id, ...) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %role.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %flags.addr = alloca i32, align 4
  %help_func.addr = alloca void (i8*, i8*)*, align 8
  %help_id.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %title, i8** %title.addr, align 8
  store i8* %role, i8** %role.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %cmp = icmp eq %struct._GtkWidget* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load i8*, i8** %title.addr, align 8
  %cmp13 = icmp ne i8* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %15 = load i8*, i8** %role.addr, align 8
  %cmp19 = icmp ne i8* %15, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay24 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay24)
  %16 = load i8*, i8** %title.addr, align 8
  %17 = load i8*, i8** %role.addr, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %19 = load i32, i32* %flags.addr, align 4
  %20 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %21 = load i8*, i8** %help_id.addr, align 8
  %arraydecay25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call26 = call %struct._GtkWidget* @gimp_dialog_new_valist(i8* %16, i8* %17, %struct._GtkWidget* %18, i32 %19, void (i8*, i8*)* %20, i8* %21, %struct.__va_list_tag* %arraydecay25)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %dialog, align 8
  %arraydecay27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay2728 = bitcast %struct.__va_list_tag* %arraydecay27 to i8*
  call void @llvm.va_end(i8* %arraydecay2728)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %22, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.23, %if.else.21, %if.else.15, %if.else.10
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %23
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dialog_new_valist(i8* %title, i8* %role, %struct._GtkWidget* %parent, i32 %flags, void (i8*, i8*)* %help_func, i8* %help_id, %struct.__va_list_tag* %args) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %role.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %flags.addr = alloca i32, align 4
  %help_func.addr = alloca void (i8*, i8*)*, align 8
  %help_id.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %title, i8** %title.addr, align 8
  store i8* %role, i8** %role.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %title.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dialog_new_valist, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %role.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dialog_new_valist, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %cmp8 = icmp eq %struct._GtkWidget* %2, null
  br i1 %cmp8, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.7
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #6
  store i64 %call, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool, label %if.else.10, label %if.then.9

if.then.9:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.18

if.else.10:                                       ; preds = %lor.lhs.false
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool11 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool11, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %if.else.10
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp13 = icmp eq i64 %10, %11
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.17

if.else.15:                                       ; preds = %land.lhs.true, %if.else.10
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call16 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #7
  store i32 %call16, i32* %__r, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.9
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool19 = icmp ne i32 %15, 0
  br i1 %tobool19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.end.18, %do.body.7
  br label %if.end.22

if.else.21:                                       ; preds = %if.end.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dialog_new_valist, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %call24 = call i64 @gimp_dialog_get_type() #6
  %16 = load i8*, i8** %title.addr, align 8
  %17 = load i8*, i8** %role.addr, align 8
  %18 = load i32, i32* %flags.addr, align 4
  %and = and i32 %18, 1
  %19 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %20 = load i8*, i8** %help_id.addr, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call25 = call i8* (i64, i8*, ...) @g_object_new(i64 %call24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %and, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*)* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %struct._GtkWidget* %21, i8* null)
  %22 = bitcast i8* %call25 to %struct._GtkWidget*
  store %struct._GtkWidget* %22, %struct._GtkWidget** %dialog, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %tobool26 = icmp ne %struct._GtkWidget* %23, null
  br i1 %tobool26, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %do.end.23
  %24 = load i32, i32* %flags.addr, align 4
  %and28 = and i32 %24, 2
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.27
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %26 = bitcast %struct._GtkWidget* %25 to i8*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %call31 = call i64 @g_signal_connect_object(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkDialog*)* @gimp_dialog_close to void ()*), i8* %28, i32 2)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.then.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %do.end.23
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_dialog_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call34)
  %31 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpDialog*
  %32 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  call void @gimp_dialog_add_buttons_valist(%struct._GimpDialog* %31, %struct.__va_list_tag* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %33, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.else.21, %if.else.4, %if.else
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %34
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i8* @g_object_new(i64, i8*, ...) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_close(%struct._GtkDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GtkDialog*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %event = alloca %union._GdkEvent*, align 8
  store %struct._GtkDialog* %dialog, %struct._GtkDialog** %dialog.addr, align 8
  %0 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GtkDialog* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call2 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %3)
  %tobool = icmp ne %struct._GdkDrawable* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call %union._GdkEvent* @gdk_event_new(i32 0)
  store %union._GdkEvent* %call3, %union._GdkEvent** %event, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call4 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %4)
  %5 = bitcast %struct._GdkDrawable* %call4 to i8*
  %call5 = call i8* @g_object_ref(i8* %5)
  %6 = bitcast i8* %call5 to %struct._GdkDrawable*
  %7 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %any = bitcast %union._GdkEvent* %7 to %struct._GdkEventAny*
  %window = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %any, i32 0, i32 1
  store %struct._GdkDrawable* %6, %struct._GdkDrawable** %window, align 8
  %8 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %any6 = bitcast %union._GdkEvent* %8 to %struct._GdkEventAny*
  %send_event = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %any6, i32 0, i32 2
  store i8 1, i8* %send_event, align 1
  %9 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  call void @gtk_main_do_event(%union._GdkEvent* %9)
  %10 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  call void @gdk_event_free(%union._GdkEvent* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dialog_add_buttons_valist(%struct._GimpDialog* %dialog, %struct.__va_list_tag* %args) #3 {
entry:
  %dialog.addr = alloca %struct._GimpDialog*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %button_text = alloca i8*, align 8
  %response_id = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDialog* %dialog, %struct._GimpDialog** %dialog.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dialog_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_add_buttons_valist, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
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
  %27 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %28 = load i8*, i8** %button_text, align 8
  %29 = load i32, i32* %response_id, align 4
  %call23 = call %struct._GtkWidget* @gimp_dialog_add_button(%struct._GimpDialog* %27, i8* %28, i32 %29)
  br label %while.cond

while.end:                                        ; preds = %if.else.9, %vaarg.end
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dialog_add_button(%struct._GimpDialog* %dialog, i8* %button_text, i32 %response_id) #3 {
entry:
  %dialog.addr = alloca %struct._GimpDialog*, align 8
  %button_text.addr = alloca i8*, align 8
  %response_id.addr = alloca i32, align 4
  %button = alloca %struct._GtkWidget*, align 8
  %private = alloca %struct._GimpDialogPrivate*, align 8
  store %struct._GimpDialog* %dialog, %struct._GimpDialog** %dialog.addr, align 8
  store i8* %button_text, i8** %button_text.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -11
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %2 = bitcast %struct._GimpDialog* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_dialog_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast i8* %call1 to %struct._GimpDialogPrivate*
  store %struct._GimpDialogPrivate* %3, %struct._GimpDialogPrivate** %private, align 8
  %4 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_button = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %4, i32 0, i32 2
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %help_button, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_button3 = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %6, i32 0, i32 2
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %help_button3, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %9 = bitcast %struct._GimpDialog* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  %11 = load i8*, i8** %button_text.addr, align 8
  %12 = load i32, i32* %response_id.addr, align 4
  %call7 = call %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog* %10, i8* %11, i32 %12)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %button, align 8
  %13 = load i32, i32* %response_id.addr, align 4
  %cmp8 = icmp eq i32 %13, -5
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.4
  %14 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %15 = bitcast %struct._GimpDialog* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %16, i32 -5)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.4
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  ret %struct._GtkWidget* %17
}

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog*, i8*, i32) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_dialog_add_buttons(%struct._GimpDialog* %dialog, ...) #3 {
entry:
  %dialog.addr = alloca %struct._GimpDialog*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._GimpDialog* %dialog, %struct._GimpDialog** %dialog.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_dialog_add_buttons_valist(%struct._GimpDialog* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dialog_run(%struct._GimpDialog* %dialog) #3 {
entry:
  %retval = alloca i32, align 4
  %dialog.addr = alloca %struct._GimpDialog*, align 8
  %ri = alloca %struct.RunInfo, align 8
  %response_handler = alloca i64, align 8
  %unmap_handler = alloca i64, align 8
  %destroy_handler = alloca i64, align 8
  %delete_handler = alloca i64, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDialog* %dialog, %struct._GimpDialog** %dialog.addr, align 8
  %0 = bitcast %struct.RunInfo* %ri to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.RunInfo* @gimp_dialog_run.ri to i8*), i64 32, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %2 = bitcast %struct._GimpDialog* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dialog_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_dialog_run, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %14 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %15 = bitcast %struct._GimpDialog* %14 to i8*
  %call11 = call i8* @g_object_ref(i8* %15)
  %16 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %17 = bitcast %struct._GimpDialog* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_window_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %18)
  %19 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %20 = bitcast %struct._GimpDialog* %19 to i8*
  %21 = bitcast %struct.RunInfo* %ri to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkDialog*, i32, %struct.RunInfo*)* @run_response_handler to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  store i64 %call14, i64* %response_handler, align 8
  %22 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %23 = bitcast %struct._GimpDialog* %22 to i8*
  %24 = bitcast %struct.RunInfo* %ri to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkDialog*, %struct.RunInfo*)* @run_unmap_handler to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  store i64 %call15, i64* %unmap_handler, align 8
  %25 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %26 = bitcast %struct._GimpDialog* %25 to i8*
  %27 = bitcast %struct.RunInfo* %ri to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkDialog*, %struct._GdkEventAny*, %struct.RunInfo*)* @run_delete_handler to void ()*), i8* %27, void (i8*, %struct._GClosure*)* null, i32 0)
  store i64 %call16, i64* %delete_handler, align 8
  %28 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %29 = bitcast %struct._GimpDialog* %28 to i8*
  %30 = bitcast %struct.RunInfo* %ri to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkDialog*, %struct.RunInfo*)* @run_destroy_handler to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  store i64 %call17, i64* %destroy_handler, align 8
  %call18 = call %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext* null, i32 0)
  %loop = getelementptr inbounds %struct.RunInfo, %struct.RunInfo* %ri, i32 0, i32 2
  store %struct._GMainLoop* %call18, %struct._GMainLoop** %loop, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %31 = load void ()*, void ()** @gdk_threads_unlock, align 8
  %tobool20 = icmp ne void ()* %31, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.body.19
  %32 = load void ()*, void ()** @gdk_threads_unlock, align 8
  call void %32()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %do.body.19
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %loop24 = getelementptr inbounds %struct.RunInfo, %struct.RunInfo* %ri, i32 0, i32 2
  %33 = load %struct._GMainLoop*, %struct._GMainLoop** %loop24, align 8
  call void @g_main_loop_run(%struct._GMainLoop* %33)
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.23
  %34 = load void ()*, void ()** @gdk_threads_lock, align 8
  %tobool26 = icmp ne void ()* %34, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.body.25
  %35 = load void ()*, void ()** @gdk_threads_lock, align 8
  call void %35()
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %do.body.25
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %loop30 = getelementptr inbounds %struct.RunInfo, %struct.RunInfo* %ri, i32 0, i32 2
  %36 = load %struct._GMainLoop*, %struct._GMainLoop** %loop30, align 8
  call void @g_main_loop_unref(%struct._GMainLoop* %36)
  %loop31 = getelementptr inbounds %struct.RunInfo, %struct.RunInfo* %ri, i32 0, i32 2
  store %struct._GMainLoop* null, %struct._GMainLoop** %loop31, align 8
  %destroyed = getelementptr inbounds %struct.RunInfo, %struct.RunInfo* %ri, i32 0, i32 3
  store i32 0, i32* %destroyed, align 4
  %destroyed32 = getelementptr inbounds %struct.RunInfo, %struct.RunInfo* %ri, i32 0, i32 3
  %37 = load i32, i32* %destroyed32, align 4
  %tobool33 = icmp ne i32 %37, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %do.end.29
  %38 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %39 = bitcast %struct._GimpDialog* %38 to i8*
  %40 = load i64, i64* %response_handler, align 8
  call void @g_signal_handler_disconnect(i8* %39, i64 %40)
  %41 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %42 = bitcast %struct._GimpDialog* %41 to i8*
  %43 = load i64, i64* %unmap_handler, align 8
  call void @g_signal_handler_disconnect(i8* %42, i64 %43)
  %44 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %45 = bitcast %struct._GimpDialog* %44 to i8*
  %46 = load i64, i64* %delete_handler, align 8
  call void @g_signal_handler_disconnect(i8* %45, i64 %46)
  %47 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %48 = bitcast %struct._GimpDialog* %47 to i8*
  %49 = load i64, i64* %destroy_handler, align 8
  call void @g_signal_handler_disconnect(i8* %48, i64 %49)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %do.end.29
  %50 = load %struct._GimpDialog*, %struct._GimpDialog** %dialog.addr, align 8
  %51 = bitcast %struct._GimpDialog* %50 to i8*
  call void @g_object_unref(i8* %51)
  %response_id = getelementptr inbounds %struct.RunInfo, %struct.RunInfo* %ri, i32 0, i32 1
  %52 = load i32, i32* %response_id, align 4
  store i32 %52, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.else.9
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i8* @g_object_ref(i8*) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @run_response_handler(%struct._GtkDialog* %dialog, i32 %response_id, %struct.RunInfo* %ri) #3 {
entry:
  %dialog.addr = alloca %struct._GtkDialog*, align 8
  %response_id.addr = alloca i32, align 4
  %ri.addr = alloca %struct.RunInfo*, align 8
  store %struct._GtkDialog* %dialog, %struct._GtkDialog** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.RunInfo* %ri, %struct.RunInfo** %ri.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %1 = load %struct.RunInfo*, %struct.RunInfo** %ri.addr, align 8
  %response_id1 = getelementptr inbounds %struct.RunInfo, %struct.RunInfo* %1, i32 0, i32 1
  store i32 %0, i32* %response_id1, align 4
  %2 = load %struct.RunInfo*, %struct.RunInfo** %ri.addr, align 8
  call void @run_shutdown_loop(%struct.RunInfo* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run_unmap_handler(%struct._GtkDialog* %dialog, %struct.RunInfo* %ri) #3 {
entry:
  %dialog.addr = alloca %struct._GtkDialog*, align 8
  %ri.addr = alloca %struct.RunInfo*, align 8
  store %struct._GtkDialog* %dialog, %struct._GtkDialog** %dialog.addr, align 8
  store %struct.RunInfo* %ri, %struct.RunInfo** %ri.addr, align 8
  %0 = load %struct.RunInfo*, %struct.RunInfo** %ri.addr, align 8
  call void @run_shutdown_loop(%struct.RunInfo* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @run_delete_handler(%struct._GtkDialog* %dialog, %struct._GdkEventAny* %event, %struct.RunInfo* %ri) #3 {
entry:
  %dialog.addr = alloca %struct._GtkDialog*, align 8
  %event.addr = alloca %struct._GdkEventAny*, align 8
  %ri.addr = alloca %struct.RunInfo*, align 8
  store %struct._GtkDialog* %dialog, %struct._GtkDialog** %dialog.addr, align 8
  store %struct._GdkEventAny* %event, %struct._GdkEventAny** %event.addr, align 8
  store %struct.RunInfo* %ri, %struct.RunInfo** %ri.addr, align 8
  %0 = load %struct.RunInfo*, %struct.RunInfo** %ri.addr, align 8
  call void @run_shutdown_loop(%struct.RunInfo* %0)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @run_destroy_handler(%struct._GtkDialog* %dialog, %struct.RunInfo* %ri) #3 {
entry:
  %dialog.addr = alloca %struct._GtkDialog*, align 8
  %ri.addr = alloca %struct.RunInfo*, align 8
  store %struct._GtkDialog* %dialog, %struct._GtkDialog** %dialog.addr, align 8
  store %struct.RunInfo* %ri, %struct.RunInfo** %ri.addr, align 8
  %0 = load %struct.RunInfo*, %struct.RunInfo** %ri.addr, align 8
  %destroyed = getelementptr inbounds %struct.RunInfo, %struct.RunInfo* %0, i32 0, i32 3
  store i32 1, i32* %destroyed, align 4
  ret void
}

declare %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext*, i32) #1

declare void @g_main_loop_run(%struct._GMainLoop*) #1

declare void @g_main_loop_unref(%struct._GMainLoop*) #1

declare void @g_signal_handler_disconnect(i8*, i64) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dialogs_show_help_button(i32 %show) #3 {
entry:
  %show.addr = alloca i32, align 4
  store i32 %show, i32* %show.addr, align 4
  %0 = load i32, i32* %show.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* @show_help_button, align 4
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_class_init(%struct._GimpDialogClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDialogClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %dialog_class = alloca %struct._GtkDialogClass*, align 8
  store %struct._GimpDialogClass* %klass, %struct._GimpDialogClass** %klass.addr, align 8
  %0 = load %struct._GimpDialogClass*, %struct._GimpDialogClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDialogClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDialogClass*, %struct._GimpDialogClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDialogClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpDialogClass*, %struct._GimpDialogClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpDialogClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_dialog_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkDialogClass*
  store %struct._GtkDialogClass* %8, %struct._GtkDialogClass** %dialog_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_dialog_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_dialog_dispose, void (%struct._GObject*)** %dispose, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_dialog_finalize, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dialog_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dialog_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %hide = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 6
  store void (%struct._GtkWidget*)* @gimp_dialog_hide, void (%struct._GtkWidget*)** %hide, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %delete_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 29
  store i32 (%struct._GtkWidget*, %struct._GdkEventAny*)* @gimp_dialog_delete_event, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)** %delete_event, align 8
  %16 = load %struct._GtkDialogClass*, %struct._GtkDialogClass** %dialog_class, align 8
  %close = getelementptr inbounds %struct._GtkDialogClass, %struct._GtkDialogClass* %16, i32 0, i32 2
  store void (%struct._GtkDialog*)* @gimp_dialog_close, void (%struct._GtkDialog*)** %close, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_pointer(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 1, %struct._GParamSpec* %call5)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 2, %struct._GParamSpec* %call6)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i64 @gtk_widget_get_type() #6
  %call8 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i64 %call7, i32 234)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 3, %struct._GParamSpec* %call8)
  %20 = load %struct._GimpDialogClass*, %struct._GimpDialogClass** %klass.addr, align 8
  %21 = bitcast %struct._GimpDialogClass* %20 to i8*
  call void @g_type_class_add_private(i8* %21, i64 24)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpDialogPrivate*, align 8
  %dialog = alloca %struct._GtkDialog*, align 8
  %action_area = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dialog_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDialogPrivate*
  store %struct._GimpDialogPrivate* %2, %struct._GimpDialogPrivate** %private, align 8
  %3 = load i8*, i8** @gimp_dialog_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_dialog_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_func = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %12, i32 0, i32 0
  %13 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func, align 8
  %tobool5 = icmp ne void (i8*, i8*)* %13, null
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %15 = bitcast %struct._GObject* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  %17 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_func9 = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %17, i32 0, i32 0
  %18 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func9, align 8
  %19 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_id = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %19, i32 0, i32 1
  %20 = load i8*, i8** %help_id, align 8
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %22 = bitcast %struct._GObject* %21 to i8*
  call void @gimp_help_connect(%struct._GtkWidget* %16, void (i8*, i8*)* %18, i8* %20, i8* %22)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  %23 = load i32, i32* @show_help_button, align 4
  %tobool11 = icmp ne i32 %23, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.10
  %24 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_func12 = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %24, i32 0, i32 0
  %25 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func12, align 8
  %tobool13 = icmp ne void (i8*, i8*)* %25, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.31

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %26 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_id15 = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %26, i32 0, i32 1
  %27 = load i8*, i8** %help_id15, align 8
  %tobool16 = icmp ne i8* %27, null
  br i1 %tobool16, label %if.then.17, label %if.end.31

if.then.17:                                       ; preds = %land.lhs.true.14
  %28 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %29 = bitcast %struct._GObject* %28 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_dialog_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call18)
  %30 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkDialog*
  store %struct._GtkDialog* %30, %struct._GtkDialog** %dialog, align 8
  %31 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog, align 8
  %call20 = call %struct._GtkWidget* @gtk_dialog_get_action_area(%struct._GtkDialog* %31)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %action_area, align 8
  %call21 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  %32 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_button = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %32, i32 0, i32 2
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %help_button, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call22)
  %35 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %36 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_button24 = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %36, i32 0, i32 2
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %help_button24, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %35, %struct._GtkWidget* %37, i32 0, i32 1, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_button_box_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call25)
  %40 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkButtonBox*
  %41 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_button27 = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %41, i32 0, i32 2
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %help_button27, align 8
  call void @gtk_button_box_set_child_secondary(%struct._GtkButtonBox* %40, %struct._GtkWidget* %42, i32 1)
  %43 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_button28 = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %43, i32 0, i32 2
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %help_button28, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_button29 = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %45, i32 0, i32 2
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %help_button29, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %48 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog, align 8
  %49 = bitcast %struct._GtkDialog* %48 to i8*
  %call30 = call i64 @g_signal_connect_object(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*)* @gimp_dialog_help to void ()*), i8* %49, i32 2)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.17, %land.lhs.true.14, %land.lhs.true, %if.end.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GdkDisplay* null, %struct._GdkDisplay** %display, align 8
  %call = call i32 @g_main_depth()
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  %call3 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %2)
  store %struct._GdkDisplay* %call3, %struct._GdkDisplay** %display, align 8
  %3 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %4 = bitcast %struct._GdkDisplay* %3 to i8*
  %call4 = call i8* @g_object_ref(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** @gimp_dialog_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 80)
  %7 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 5
  %8 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %8(%struct._GObject* %9)
  %10 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %tobool = icmp ne %struct._GdkDisplay* %10, null
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  call void @gdk_display_flush(%struct._GdkDisplay* %11)
  %12 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %13 = bitcast %struct._GdkDisplay* %12 to i8*
  call void @g_object_unref(i8* %13)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpDialogPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dialog_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDialogPrivate*
  store %struct._GimpDialogPrivate* %2, %struct._GimpDialogPrivate** %private, align 8
  %3 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_id = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %3, i32 0, i32 1
  %4 = load i8*, i8** %help_id, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_id2 = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %5, i32 0, i32 1
  %6 = load i8*, i8** %help_id2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_id3 = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %7, i32 0, i32 1
  store i8* null, i8** %help_id3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_dialog_parent_class, align 8
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
define internal void @gimp_dialog_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDialogPrivate*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dialog_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDialogPrivate*
  store %struct._GimpDialogPrivate* %2, %struct._GimpDialogPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_pointer(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to void (i8*, i8*)*
  %6 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_func = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %6, i32 0, i32 0
  store void (i8*, i8*)* %5, void (i8*, i8*)** %help_func, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_dup_string(%struct._GValue* %7)
  %8 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_id = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %8, i32 0, i32 1
  store i8* %call4, i8** %help_id, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_object(%struct._GValue* %9)
  %10 = bitcast i8* %call6 to %struct._GtkWidget*
  store %struct._GtkWidget* %10, %struct._GtkWidget** %parent, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %tobool = icmp ne %struct._GtkWidget* %11, null
  br i1 %tobool, label %if.then, label %if.end.29

if.then:                                          ; preds = %sw.bb.5
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %13, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gtk_window_get_type() #6
  store i64 %call7, i64* %__t, align 8
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %14, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.then
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %16, null
  br i1 %tobool10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %20 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %19, %20
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %22 = load i64, i64* %__t, align 8
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %21, i64 %22) #7
  store i32 %call14, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.12
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.9
  %23 = load i32, i32* %__r, align 4
  store i32 %23, i32* %tmp
  %24 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %if.then.17, label %if.else.22

if.then.17:                                       ; preds = %if.end.15
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %26 = bitcast %struct._GObject* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_window_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWindow*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_window_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call20)
  %30 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %27, %struct._GtkWindow* %30)
  br label %if.end.28

if.else.22:                                       ; preds = %if.end.15
  %31 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %32 = bitcast %struct._GObject* %31 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_window_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call23)
  %33 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWindow*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %call25 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %34)
  call void @gtk_window_set_screen(%struct._GtkWindow* %33, %struct._GdkScreen* %call25)
  %35 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %36 = bitcast %struct._GObject* %35 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_window_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call26)
  %37 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkWindow*
  call void @gtk_window_set_position(%struct._GtkWindow* %37, i32 2)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.22, %if.then.17
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %sw.bb.5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %38 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %38, %struct._GObject** %_glib__object, align 8
  %39 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %39, %struct._GParamSpec** %_glib__pspec, align 8
  %40 = load i32, i32* %property_id.addr, align 4
  store i32 %40, i32* %_glib__property_id, align 4
  %41 = load i32, i32* %_glib__property_id, align 4
  %42 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %42, i32 0, i32 1
  %43 = load i8*, i8** %name, align 8
  %44 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %45 = bitcast %struct._GParamSpec* %44 to %struct._GTypeInstance*
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type34, align 8
  %call35 = call i8* @g_type_name(i64 %47)
  %48 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %49 = bitcast %struct._GObject* %48 to %struct._GTypeInstance*
  %g_class36 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %49, i32 0, i32 0
  %50 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class36, align 8
  %g_type37 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %50, i32 0, i32 0
  %51 = load i64, i64* %g_type37, align 8
  %call38 = call i8* @g_type_name(i64 %51)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %41, i8* %43, i8* %call35, i8* %call38)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.29, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDialogPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dialog_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDialogPrivate*
  store %struct._GimpDialogPrivate* %2, %struct._GimpDialogPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_func = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %5, i32 0, i32 0
  %6 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func, align 8
  %7 = bitcast void (i8*, i8*)* %6 to i8*
  call void @g_value_set_pointer(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_id = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %9, i32 0, i32 1
  %10 = load i8*, i8** %help_id, align 8
  call void @g_value_set_string(%struct._GValue* %8, i8* %10)
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
  %call3 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 288, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %14, i8* %16, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_hide(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWindow*
  call void @gtk_window_set_focus(%struct._GtkWindow* %2, %struct._GtkWidget* null)
  %3 = load i8*, i8** @gimp_dialog_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %hide = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 6
  %6 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %hide, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %6(%struct._GtkWidget* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dialog_delete_event(%struct._GtkWidget* %widget, %struct._GdkEventAny* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventAny*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventAny* %event, %struct._GdkEventAny** %event.addr, align 8
  ret i32 1
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_pointer(i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @gimp_help_connect(%struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_dialog_get_action_area(%struct._GtkDialog*) #1

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_button_box_set_child_secondary(%struct._GtkButtonBox*, %struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_help(%struct._GObject* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpDialogPrivate*, align 8
  store %struct._GObject* %dialog, %struct._GObject** %dialog.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %dialog.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dialog_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDialogPrivate*
  store %struct._GimpDialogPrivate* %2, %struct._GimpDialogPrivate** %private, align 8
  %3 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_func = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %3, i32 0, i32 0
  %4 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func, align 8
  %tobool = icmp ne void (i8*, i8*)* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_func2 = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %5, i32 0, i32 0
  %6 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func2, align 8
  %7 = load %struct._GimpDialogPrivate*, %struct._GimpDialogPrivate** %private, align 8
  %help_id = getelementptr inbounds %struct._GimpDialogPrivate, %struct._GimpDialogPrivate* %7, i32 0, i32 1
  %8 = load i8*, i8** %help_id, align 8
  %9 = load %struct._GObject*, %struct._GObject** %dialog.addr, align 8
  %10 = bitcast %struct._GObject* %9 to i8*
  call void %6(i8* %8, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @g_main_depth() #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare void @gdk_display_flush(%struct._GdkDisplay*) #1

declare void @g_free(i8*) #1

declare i8* @g_value_get_pointer(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare void @gtk_window_set_transient_for(%struct._GtkWindow*, %struct._GtkWindow*) #1

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare void @gtk_window_set_position(%struct._GtkWindow*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

declare void @g_value_set_pointer(%struct._GValue*, i8*) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @gtk_window_set_focus(%struct._GtkWindow*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_response(%struct._GtkDialog* %dialog, i32 %response_id) #3 {
entry:
  %dialog.addr = alloca %struct._GtkDialog*, align 8
  %response_id.addr = alloca i32, align 4
  %action_area = alloca %struct._GtkWidget*, align 8
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkDialog* %dialog, %struct._GtkDialog** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  %0 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  %call = call %struct._GtkWidget* @gtk_dialog_get_action_area(%struct._GtkDialog* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %action_area, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  %call3 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %3)
  store %struct._GList* %call3, %struct._GList** %children, align 8
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
  store %struct._GtkWidget* %8, %struct._GtkWidget** %widget, align 8
  %9 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call4 = call i32 @gtk_dialog_get_response_for_widget(%struct._GtkDialog* %9, %struct._GtkWidget* %10)
  %11 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %call4, %11
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %for.body
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %13, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gtk_button_get_type() #6
  store i64 %call5, i64* %__t, align 8
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %14, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.then
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %16, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %20 = load i64, i64* %__t, align 8
  %cmp10 = icmp eq i64 %19, %20
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.12:                                       ; preds = %land.lhs.true, %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %22 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %21, i64 %22) #7
  store i32 %call13, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.7
  %23 = load i32, i32* %__r, align 4
  store i32 %23, i32* %tmp
  %24 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %lor.lhs.false, label %if.then.20

lor.lhs.false:                                    ; preds = %if.end.14
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_button_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call16)
  %27 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkButton*
  %call18 = call i32 @gtk_button_get_focus_on_click(%struct._GtkButton* %27)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.14
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %28)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %lor.lhs.false
  br label %for.end

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool23 = icmp ne %struct._GList* %29, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 1
  %31 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %31, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.21, %for.cond
  %32 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %32)
  ret void
}

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i32 @gtk_dialog_get_response_for_widget(%struct._GtkDialog*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare i32 @gtk_button_get_focus_on_click(%struct._GtkButton*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare void @g_list_free(%struct._GList*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare %union._GdkEvent* @gdk_event_new(i32) #1

declare void @gtk_main_do_event(%union._GdkEvent*) #1

declare void @gdk_event_free(%union._GdkEvent*) #1

; Function Attrs: nounwind uwtable
define internal void @run_shutdown_loop(%struct.RunInfo* %ri) #3 {
entry:
  %ri.addr = alloca %struct.RunInfo*, align 8
  store %struct.RunInfo* %ri, %struct.RunInfo** %ri.addr, align 8
  %0 = load %struct.RunInfo*, %struct.RunInfo** %ri.addr, align 8
  %loop = getelementptr inbounds %struct.RunInfo, %struct.RunInfo* %0, i32 0, i32 2
  %1 = load %struct._GMainLoop*, %struct._GMainLoop** %loop, align 8
  %call = call i32 @g_main_loop_is_running(%struct._GMainLoop* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.RunInfo*, %struct.RunInfo** %ri.addr, align 8
  %loop1 = getelementptr inbounds %struct.RunInfo, %struct.RunInfo* %2, i32 0, i32 2
  %3 = load %struct._GMainLoop*, %struct._GMainLoop** %loop1, align 8
  call void @g_main_loop_quit(%struct._GMainLoop* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @g_main_loop_is_running(%struct._GMainLoop*) #1

declare void @g_main_loop_quit(%struct._GMainLoop*) #1

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
