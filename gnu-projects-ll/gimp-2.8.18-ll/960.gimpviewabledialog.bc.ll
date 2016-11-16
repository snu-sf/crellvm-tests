; ModuleID = './app/widgets/gimpviewabledialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpViewableDialogClass = type { %struct._GimpDialogClass }
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
%struct._GimpViewableDialog = type { %struct._GimpDialog, %struct._GimpContext*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._TempBuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon.1, %struct._GdkDrawable*, i32 }
%union.anon.1 = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque

@gimp_viewable_dialog_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpViewableDialog\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_viewable_dialog_new = private unnamed_addr constant [25 x i8] c"gimp_viewable_dialog_new\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"viewable == NULL || GIMP_IS_VIEWABLE (viewable)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"title != NULL\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"role != NULL\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"parent == NULL || GTK_IS_WIDGET (parent)\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"Use of GimpViewableDialog with a NULL viewable is depecrated!\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"viewable\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"help-func\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"help-id\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@__func__.gimp_viewable_dialog_set_viewable = private unnamed_addr constant [34 x i8] c"gimp_viewable_dialog_set_viewable\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"GIMP_IS_VIEWABLE_DIALOG (dialog)\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@gimp_viewable_dialog_parent_class = internal global i8* null, align 8
@GimpViewableDialog_private_offset = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"gimpviewabledialog.c\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"yalign\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"%s-%d (%s)\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"close\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_viewable_dialog_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_viewable_dialog_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_viewable_dialog_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 984, void (i8*, i8*)* bitcast (void (i8*)* @gimp_viewable_dialog_class_intern_init to void (i8*, i8*)*), i32 304, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpViewableDialog*)* @gimp_viewable_dialog_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_viewable_dialog_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_viewable_dialog_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_viewable_dialog_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_viewable_dialog_parent_class, align 8
  %1 = load i32, i32* @GimpViewableDialog_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpViewableDialog_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpViewableDialogClass*
  call void @gimp_viewable_dialog_class_init(%struct._GimpViewableDialogClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_viewable_dialog_init(%struct._GimpViewableDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GimpViewableDialog*, align 8
  %content_area = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  store %struct._GimpViewableDialog* %dialog, %struct._GimpViewableDialog** %dialog.addr, align 8
  %0 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpViewableDialog* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkDialog*
  %call2 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %content_area, align 8
  %call3 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_frame_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %5, i32 2)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %content_area, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 0, i32 0, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %hbox, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %13, i32 2)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %16, %struct._GtkWidget* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %call13 = call %struct._GtkWidget* @gtk_image_new()
  %19 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %icon = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %19, i32 0, i32 2
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %icon, align 8
  %20 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %icon14 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %20, i32 0, i32 2
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %icon14, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_misc_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %23, float 5.000000e-01, float 0.000000e+00)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call17)
  %26 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %27 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %icon19 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %27, i32 0, i32 2
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %icon19, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %28, i32 0, i32 0, i32 0)
  %29 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %icon20 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %29, i32 0, i32 2
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %icon20, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call21 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %vbox, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call22)
  %33 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %33, %struct._GtkWidget* %34, i32 1, i32 1, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %call24 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  %36 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %desc_label = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %36, i32 0, i32 4
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %desc_label, align 8
  %37 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %desc_label25 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %37, i32 0, i32 4
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %desc_label25, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_misc_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call26)
  %40 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %40, float 0.000000e+00, float 5.000000e-01)
  %41 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %desc_label28 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %41, i32 0, i32 4
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %desc_label28, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_label_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call29)
  %44 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %44, i32 15, double 1.200000e+00, i32 4, i32 700, i32 -1)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call31)
  %47 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %48 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %desc_label33 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %48, i32 0, i32 4
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %desc_label33, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %47, %struct._GtkWidget* %49, i32 0, i32 0, i32 0)
  %50 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %desc_label34 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %50, i32 0, i32 4
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %desc_label34, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %call35 = call i64 @gtk_label_get_type() #6
  %call36 = call i8* (i64, i8*, ...) @g_object_new(i64 %call35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), double 0.000000e+00, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), double 5.000000e-01, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 3, i8* null)
  %52 = bitcast i8* %call36 to %struct._GtkWidget*
  %53 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %viewable_label = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %53, i32 0, i32 5
  store %struct._GtkWidget* %52, %struct._GtkWidget** %viewable_label, align 8
  %54 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %viewable_label37 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %54, i32 0, i32 5
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %viewable_label37, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_label_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call38)
  %57 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %57, i32 15, double 0x3FEAAAAAAAAAA97E, i32 -1)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call40)
  %60 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %61 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %viewable_label42 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %61, i32 0, i32 5
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %viewable_label42, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %60, %struct._GtkWidget* %62, i32 0, i32 0, i32 0)
  %63 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %viewable_label43 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %63, i32 0, i32 5
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %viewable_label43, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i8* %title, i8* %role, i8* %stock_id, i8* %desc, %struct._GtkWidget* %parent, void (i8*, i8*)* %help_func, i8* %help_id, ...) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %title.addr = alloca i8*, align 8
  %role.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %desc.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %help_func.addr = alloca void (i8*, i8*)*, align 8
  %help_id.addr = alloca i8*, align 8
  %dialog = alloca %struct._GimpViewableDialog*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %__inst58 = alloca %struct._GTypeInstance*, align 8
  %__t60 = alloca i64, align 8
  %__r63 = alloca i32, align 4
  %tmp78 = alloca i32, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %role, i8** %role.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %desc, i8** %desc.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %cmp = icmp eq %struct._GimpViewable* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %2 = bitcast %struct._GimpViewable* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_viewable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_viewable_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp13 = icmp eq %struct._GimpContext* %14, null
  br i1 %cmp13, label %if.then.38, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %do.body.12
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %16 = bitcast %struct._GimpContext* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst16, align 8
  %call19 = call i64 @gimp_context_get_type() #6
  store i64 %call19, i64* %__t18, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false.14
  store i32 0, i32* %__r21, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %lor.lhs.false.14
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type29, align 8
  %23 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %22, %23
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %25 = load i64, i64* %__t18, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #7
  store i32 %call33, i32* %__r21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  %26 = load i32, i32* %__r21, align 4
  store i32 %26, i32* %tmp36
  %27 = load i32, i32* %tmp36
  %tobool37 = icmp ne i32 %27, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.end.35, %do.body.12
  br label %if.end.40

if.else.39:                                       ; preds = %if.end.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_viewable_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.40:                                        ; preds = %if.then.38
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.41
  %28 = load i8*, i8** %title.addr, align 8
  %cmp43 = icmp ne i8* %28, null
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.42
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_viewable_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load i8*, i8** %role.addr, align 8
  %cmp49 = icmp ne i8* %29, null
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.48
  br label %if.end.52

if.else.51:                                       ; preds = %do.body.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_viewable_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %cmp55 = icmp eq %struct._GtkWidget* %30, null
  br i1 %cmp55, label %if.then.80, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %do.body.54
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst58, align 8
  %call61 = call i64 @gtk_widget_get_type() #6
  store i64 %call61, i64* %__t60, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %tobool64 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool64, label %if.else.66, label %if.then.65

if.then.65:                                       ; preds = %lor.lhs.false.56
  store i32 0, i32* %__r63, align 4
  br label %if.end.77

if.else.66:                                       ; preds = %lor.lhs.false.56
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %g_class67 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class67, align 8
  %tobool68 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool68, label %land.lhs.true.69, label %if.else.74

land.lhs.true.69:                                 ; preds = %if.else.66
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %g_class70 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class70, align 8
  %g_type71 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type71, align 8
  %39 = load i64, i64* %__t60, align 8
  %cmp72 = icmp eq i64 %38, %39
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %land.lhs.true.69
  store i32 1, i32* %__r63, align 4
  br label %if.end.76

if.else.74:                                       ; preds = %land.lhs.true.69, %if.else.66
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %41 = load i64, i64* %__t60, align 8
  %call75 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #7
  store i32 %call75, i32* %__r63, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.74, %if.then.73
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.65
  %42 = load i32, i32* %__r63, align 4
  store i32 %42, i32* %tmp78
  %43 = load i32, i32* %tmp78
  %tobool79 = icmp ne i32 %43, 0
  br i1 %tobool79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.end.77, %do.body.54
  br label %if.end.82

if.else.81:                                       ; preds = %if.end.77
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_viewable_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.82:                                        ; preds = %if.then.80
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  %44 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool84 = icmp ne %struct._GimpViewable* %44, null
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %do.end.83
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %do.end.83
  %call87 = call i64 @gimp_viewable_dialog_get_type() #6
  %45 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %46 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %47 = load i8*, i8** %title.addr, align 8
  %48 = load i8*, i8** %role.addr, align 8
  %49 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %50 = load i8*, i8** %help_id.addr, align 8
  %51 = load i8*, i8** %stock_id.addr, align 8
  %52 = load i8*, i8** %desc.addr, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call88 = call i8* (i64, i8*, ...) @g_object_new(i64 %call87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct._GimpViewable* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._GimpContext* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*)* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %struct._GtkWidget* %53, i8* null)
  %54 = bitcast i8* %call88 to %struct._GimpViewableDialog*
  store %struct._GimpViewableDialog* %54, %struct._GimpViewableDialog** %dialog, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay89)
  %55 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog, align 8
  %56 = bitcast %struct._GimpViewableDialog* %55 to %struct._GTypeInstance*
  %call90 = call i64 @gimp_dialog_get_type() #6
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call90)
  %57 = bitcast %struct._GTypeInstance* %call91 to %struct._GimpDialog*
  %arraydecay92 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_dialog_add_buttons_valist(%struct._GimpDialog* %57, %struct.__va_list_tag* %arraydecay92)
  %arraydecay93 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay9394 = bitcast %struct.__va_list_tag* %arraydecay93 to i8*
  call void @llvm.va_end(i8* %arraydecay9394)
  %58 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog, align 8
  %59 = bitcast %struct._GimpViewableDialog* %58 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_widget_get_type() #6
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call95)
  %60 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkWidget*
  store %struct._GtkWidget* %60, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.86, %if.else.81, %if.else.51, %if.else.45, %if.else.39, %if.else.10
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %61
}

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

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

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @gimp_dialog_add_buttons_valist(%struct._GimpDialog*, %struct.__va_list_tag*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog* %dialog, %struct._GimpViewable* %viewable, %struct._GimpContext* %context) #3 {
entry:
  %dialog.addr = alloca %struct._GimpViewableDialog*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst44 = alloca %struct._GTypeInstance*, align 8
  %__t46 = alloca i64, align 8
  %__r49 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  %old_viewable = alloca %struct._GimpViewable*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %__inst109 = alloca %struct._GTypeInstance*, align 8
  %__t111 = alloca i64, align 8
  %__r114 = alloca i32, align 4
  %tmp129 = alloca i32, align 4
  store %struct._GimpViewableDialog* %dialog, %struct._GimpViewableDialog** %dialog.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpViewableDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_viewable_dialog_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_viewable_dialog_set_viewable, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.136

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %cmp12 = icmp eq %struct._GimpViewable* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %15 = bitcast %struct._GimpViewable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_viewable_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_viewable_dialog_set_viewable, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.136

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp41 = icmp eq %struct._GimpContext* %27, null
  br i1 %cmp41, label %if.then.66, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %do.body.40
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %29 = bitcast %struct._GimpContext* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst44, align 8
  %call47 = call i64 @gimp_context_get_type() #6
  store i64 %call47, i64* %__t46, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %tobool50 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %lor.lhs.false.42
  store i32 0, i32* %__r49, align 4
  br label %if.end.63

if.else.52:                                       ; preds = %lor.lhs.false.42
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %tobool54 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.60

land.lhs.true.55:                                 ; preds = %if.else.52
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %g_type57 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type57, align 8
  %36 = load i64, i64* %__t46, align 8
  %cmp58 = icmp eq i64 %35, %36
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %__r49, align 4
  br label %if.end.62

if.else.60:                                       ; preds = %land.lhs.true.55, %if.else.52
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %38 = load i64, i64* %__t46, align 8
  %call61 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #7
  store i32 %call61, i32* %__r49, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.51
  %39 = load i32, i32* %__r49, align 4
  store i32 %39, i32* %tmp64
  %40 = load i32, i32* %tmp64
  %tobool65 = icmp ne i32 %40, 0
  br i1 %tobool65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.end.63, %do.body.40
  br label %if.end.68

if.else.67:                                       ; preds = %if.end.63
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_viewable_dialog_set_viewable, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.136

if.end.68:                                        ; preds = %if.then.66
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %42 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %context70 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %42, i32 0, i32 1
  store %struct._GimpContext* %41, %struct._GimpContext** %context70, align 8
  %43 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %view = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %43, i32 0, i32 3
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %tobool71 = icmp ne %struct._GtkWidget* %44, null
  br i1 %tobool71, label %if.then.72, label %if.end.90

if.then.72:                                       ; preds = %do.end.69
  %45 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %view74 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %45, i32 0, i32 3
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %view74, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_view_get_type() #6
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call75)
  %48 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpView*
  %viewable77 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %48, i32 0, i32 2
  %49 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable77, align 8
  store %struct._GimpViewable* %49, %struct._GimpViewable** %old_viewable, align 8
  %50 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %51 = load %struct._GimpViewable*, %struct._GimpViewable** %old_viewable, align 8
  %cmp78 = icmp eq %struct._GimpViewable* %50, %51
  br i1 %cmp78, label %if.then.79, label %if.end.83

if.then.79:                                       ; preds = %if.then.72
  %52 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %view80 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %52, i32 0, i32 3
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %view80, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_view_get_type() #6
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call81)
  %55 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %55, i32 0, i32 3
  %56 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %57 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_view_renderer_set_context(%struct._GimpViewRenderer* %56, %struct._GimpContext* %57)
  br label %if.end.136

if.end.83:                                        ; preds = %if.then.72
  %58 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %view84 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %58, i32 0, i32 3
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %view84, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %59)
  %60 = load %struct._GimpViewable*, %struct._GimpViewable** %old_viewable, align 8
  %tobool85 = icmp ne %struct._GimpViewable* %60, null
  br i1 %tobool85, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %if.end.83
  %61 = load %struct._GimpViewable*, %struct._GimpViewable** %old_viewable, align 8
  %62 = bitcast %struct._GimpViewable* %61 to i8*
  %63 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %64 = bitcast %struct._GimpViewableDialog* %63 to i8*
  %call87 = call i32 @g_signal_handlers_disconnect_matched(i8* %62, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpObject*, %struct._GimpViewableDialog*)* @gimp_viewable_dialog_name_changed to i8*), i8* %64)
  %65 = load %struct._GimpViewable*, %struct._GimpViewable** %old_viewable, align 8
  %66 = bitcast %struct._GimpViewable* %65 to i8*
  %67 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %68 = bitcast %struct._GimpViewableDialog* %67 to i8*
  %call88 = call i32 @g_signal_handlers_disconnect_matched(i8* %66, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpViewableDialog*)* @gimp_viewable_dialog_close to i8*), i8* %68)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.86, %if.end.83
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %do.end.69
  %69 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool91 = icmp ne %struct._GimpViewable* %69, null
  br i1 %tobool91, label %if.then.92, label %if.end.136

if.then.92:                                       ; preds = %if.end.90
  %70 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %71 = bitcast %struct._GimpViewable* %70 to i8*
  %72 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %73 = bitcast %struct._GimpViewable* %72 to %struct._GTypeInstance*
  %g_class94 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %73, i32 0, i32 0
  %74 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class94, align 8
  %75 = bitcast %struct._GTypeClass* %74 to %struct._GimpViewableClass*
  %name_changed_signal = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %75, i32 0, i32 2
  %76 = load i8*, i8** %name_changed_signal, align 8
  %77 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %78 = bitcast %struct._GimpViewableDialog* %77 to i8*
  %call95 = call i64 @g_signal_connect_object(i8* %71, i8* %76, void ()* bitcast (void (%struct._GimpObject*, %struct._GimpViewableDialog*)* @gimp_viewable_dialog_name_changed to void ()*), i8* %78, i32 0)
  %79 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %icon = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %79, i32 0, i32 2
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %icon, align 8
  %call96 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %80)
  store %struct._GtkWidget* %call96, %struct._GtkWidget** %box, align 8
  %81 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %82 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call97 = call %struct._GtkWidget* @gimp_view_new(%struct._GimpContext* %81, %struct._GimpViewable* %82, i32 32, i32 1, i32 1)
  %83 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %view98 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %83, i32 0, i32 3
  store %struct._GtkWidget* %call97, %struct._GtkWidget** %view98, align 8
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_box_get_type() #6
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call99)
  %86 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkBox*
  %87 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %view101 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %87, i32 0, i32 3
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %view101, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %86, %struct._GtkWidget* %88, i32 0, i32 0, i32 2)
  %89 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %view102 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %89, i32 0, i32 3
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %view102, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %91 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %view103 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %91, i32 0, i32 3
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %view103, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 80)
  %94 = bitcast %struct._GTypeInstance* %call104 to %struct._GObject*
  %95 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %view105 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %95, i32 0, i32 3
  %96 = bitcast %struct._GtkWidget** %view105 to i8*
  %97 = bitcast i8* %96 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %94, i8** %97)
  %98 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %99 = bitcast %struct._GimpViewable* %98 to %struct._GTypeInstance*
  %call106 = call i64 @gimp_object_get_type() #6
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call106)
  %100 = bitcast %struct._GTypeInstance* %call107 to %struct._GimpObject*
  %101 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  call void @gimp_viewable_dialog_name_changed(%struct._GimpObject* %100, %struct._GimpViewableDialog* %101)
  %102 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %103 = bitcast %struct._GimpViewable* %102 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %103, %struct._GTypeInstance** %__inst109, align 8
  %call112 = call i64 @gimp_item_get_type() #6
  store i64 %call112, i64* %__t111, align 8
  %104 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst109, align 8
  %tobool115 = icmp ne %struct._GTypeInstance* %104, null
  br i1 %tobool115, label %if.else.117, label %if.then.116

if.then.116:                                      ; preds = %if.then.92
  store i32 0, i32* %__r114, align 4
  br label %if.end.128

if.else.117:                                      ; preds = %if.then.92
  %105 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst109, align 8
  %g_class118 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %105, i32 0, i32 0
  %106 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class118, align 8
  %tobool119 = icmp ne %struct._GTypeClass* %106, null
  br i1 %tobool119, label %land.lhs.true.120, label %if.else.125

land.lhs.true.120:                                ; preds = %if.else.117
  %107 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst109, align 8
  %g_class121 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %107, i32 0, i32 0
  %108 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class121, align 8
  %g_type122 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %108, i32 0, i32 0
  %109 = load i64, i64* %g_type122, align 8
  %110 = load i64, i64* %__t111, align 8
  %cmp123 = icmp eq i64 %109, %110
  br i1 %cmp123, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %land.lhs.true.120
  store i32 1, i32* %__r114, align 4
  br label %if.end.127

if.else.125:                                      ; preds = %land.lhs.true.120, %if.else.117
  %111 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst109, align 8
  %112 = load i64, i64* %__t111, align 8
  %call126 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %111, i64 %112) #7
  store i32 %call126, i32* %__r114, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.125, %if.then.124
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.116
  %113 = load i32, i32* %__r114, align 4
  store i32 %113, i32* %tmp129
  %114 = load i32, i32* %tmp129
  %tobool130 = icmp ne i32 %114, 0
  br i1 %tobool130, label %if.then.131, label %if.else.133

if.then.131:                                      ; preds = %if.end.128
  %115 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %116 = bitcast %struct._GimpViewable* %115 to i8*
  %117 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %118 = bitcast %struct._GimpViewableDialog* %117 to i8*
  %call132 = call i64 @g_signal_connect_object(i8* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpViewableDialog*)* @gimp_viewable_dialog_close to void ()*), i8* %118, i32 2)
  br label %if.end.135

if.else.133:                                      ; preds = %if.end.128
  %119 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %120 = bitcast %struct._GimpViewable* %119 to i8*
  %121 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %122 = bitcast %struct._GimpViewableDialog* %121 to i8*
  %call134 = call i64 @g_signal_connect_object(i8* %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GimpViewableDialog*)* @gimp_viewable_dialog_close to void ()*), i8* %122, i32 2)
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.133, %if.then.131
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.9, %if.else.37, %if.else.67, %if.then.79, %if.end.135, %if.end.90
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

declare void @gimp_view_renderer_set_context(%struct._GimpViewRenderer*, %struct._GimpContext*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_viewable_dialog_name_changed(%struct._GimpObject* %object, %struct._GimpViewableDialog* %dialog) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %dialog.addr = alloca %struct._GimpViewableDialog*, align 8
  %name = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %tmp17 = alloca i8*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store %struct._GimpViewableDialog* %dialog, %struct._GimpViewableDialog** %dialog.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_viewable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewable*
  %call2 = call i8* @gimp_viewable_get_description(%struct._GimpViewable* %2, i8** null)
  store i8* %call2, i8** %name, align 8
  %3 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %4 = bitcast %struct._GimpObject* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_item_get_type() #6
  store i64 %call3, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #7
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.23

if.then.11:                                       ; preds = %if.end.9
  %16 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %17 = bitcast %struct._GimpObject* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %18)
  store %struct._GimpImage* %call15, %struct._GimpImage** %image, align 8
  %19 = load i8*, i8** %name, align 8
  store i8* %19, i8** %tmp17, align 8
  %20 = load i8*, i8** %tmp17, align 8
  %21 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %22 = bitcast %struct._GimpObject* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call i32 @gimp_item_get_ID(%struct._GimpItem* %23)
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call21 = call i8* @gimp_image_get_display_name(%struct._GimpImage* %24)
  %call22 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* %20, i32 %call20, i8* %call21)
  store i8* %call22, i8** %name, align 8
  %25 = load i8*, i8** %tmp17, align 8
  call void @g_free(i8* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.11, %if.end.9
  %26 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %viewable_label = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %26, i32 0, i32 5
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %viewable_label, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_label_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call24)
  %29 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkLabel*
  %30 = load i8*, i8** %name, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %29, i8* %30)
  %31 = load i8*, i8** %name, align 8
  call void @g_free(i8* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_viewable_dialog_close(%struct._GimpViewableDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GimpViewableDialog*, align 8
  store %struct._GimpViewableDialog* %dialog, %struct._GimpViewableDialog** %dialog.addr, align 8
  %0 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpViewableDialog* %0 to i8*
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0))
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_view_new(%struct._GimpContext*, %struct._GimpViewable*, i32, i32, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_viewable_dialog_class_init(%struct._GimpViewableDialogClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpViewableDialogClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpViewableDialogClass* %klass, %struct._GimpViewableDialogClass** %klass.addr, align 8
  %0 = load %struct._GimpViewableDialogClass*, %struct._GimpViewableDialogClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpViewableDialogClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_viewable_dialog_dispose, void (%struct._GObject*)** %dispose, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_viewable_dialog_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_viewable_dialog_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_viewable_get_type() #6
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 1, %struct._GParamSpec* %call2)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_context_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 2, %struct._GParamSpec* %call4)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i8* null, i32 234)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 3, %struct._GParamSpec* %call5)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i8* null, i32 230)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 4, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_viewable_dialog_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dialog = alloca %struct._GimpViewableDialog*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_viewable_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewableDialog*
  store %struct._GimpViewableDialog* %2, %struct._GimpViewableDialog** %dialog, align 8
  %3 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog, align 8
  %view = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %3, i32 0, i32 3
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog, align 8
  call void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog* %5, %struct._GimpViewable* null, %struct._GimpContext* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** @gimp_viewable_dialog_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 5
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %9(%struct._GObject* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_viewable_dialog_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dialog = alloca %struct._GimpViewableDialog*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_viewable_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewableDialog*
  store %struct._GimpViewableDialog* %2, %struct._GimpViewableDialog** %dialog, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog, align 8
  %view = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %5, i32 0, i32 3
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %tobool = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %7 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog, align 8
  %view2 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %7, i32 0, i32 3
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %view2, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_view_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpView*
  %viewable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %10, i32 0, i32 2
  %11 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpViewable* [ %11, %cond.true ], [ null, %cond.false ]
  %12 = bitcast %struct._GimpViewable* %cond to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %12)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog, align 8
  %context = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %14, i32 0, i32 1
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %16 = bitcast %struct._GimpContext* %15 to i8*
  call void @g_value_set_object(%struct._GValue* %13, i8* %16)
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
  %call6 = call i8* @g_type_name(i64 %26)
  %27 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %28 = bitcast %struct._GObject* %27 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %30)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i32 224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %20, i8* %22, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_viewable_dialog_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dialog = alloca %struct._GimpViewableDialog*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_viewable_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewableDialog*
  store %struct._GimpViewableDialog* %2, %struct._GimpViewableDialog** %dialog, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.8
    i32 4, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %5)
  %6 = bitcast i8* %call2 to %struct._GimpViewable*
  %7 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog, align 8
  %context = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %7, i32 0, i32 1
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog* %4, %struct._GimpViewable* %6, %struct._GimpContext* %8)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %9 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog, align 8
  %10 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog, align 8
  %view = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %10, i32 0, i32 3
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %tobool = icmp ne %struct._GtkWidget* %11, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.3
  %12 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog, align 8
  %view4 = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %12, i32 0, i32 3
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %view4, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_view_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call5)
  %15 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpView*
  %viewable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %15, i32 0, i32 2
  %16 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpViewable* [ %16, %cond.true ], [ null, %cond.false ]
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call i8* @g_value_get_object(%struct._GValue* %17)
  %18 = bitcast i8* %call7 to %struct._GimpContext*
  call void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog* %9, %struct._GimpViewable* %cond, %struct._GimpContext* %18)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %19 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog, align 8
  %icon = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %19, i32 0, i32 2
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %icon, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_image_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call9)
  %22 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkImage*
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call11 = call i8* @g_value_get_string(%struct._GValue* %23)
  call void @gtk_image_set_from_stock(%struct._GtkImage* %22, i8* %call11, i32 3)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %24 = load %struct._GimpViewableDialog*, %struct._GimpViewableDialog** %dialog, align 8
  %desc_label = getelementptr inbounds %struct._GimpViewableDialog, %struct._GimpViewableDialog* %24, i32 0, i32 4
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %desc_label, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_label_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call13)
  %27 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkLabel*
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call i8* @g_value_get_string(%struct._GValue* %28)
  call void @gtk_label_set_text(%struct._GtkLabel* %27, i8* %call15)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %29 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %29, %struct._GObject** %_glib__object, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %30, %struct._GParamSpec** %_glib__pspec, align 8
  %31 = load i32, i32* %property_id.addr, align 4
  store i32 %31, i32* %_glib__property_id, align 4
  %32 = load i32, i32* %_glib__property_id, align 4
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %33, i32 0, i32 1
  %34 = load i8*, i8** %name, align 8
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %36 = bitcast %struct._GParamSpec* %35 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type, align 8
  %call16 = call i8* @g_type_name(i64 %38)
  %39 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %40 = bitcast %struct._GObject* %39 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %g_type18 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %41, i32 0, i32 0
  %42 = load i64, i64* %g_type18, align 8
  %call19 = call i8* @g_type_name(i64 %42)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i32 198, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %32, i8* %34, i8* %call16, i8* %call19)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.12, %sw.bb.8, %cond.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare i8* @g_type_name(i64) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare void @gtk_image_set_from_stock(%struct._GtkImage*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #2

declare i8* @g_value_get_string(%struct._GValue*) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_image_new() #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

declare i8* @gimp_viewable_get_description(%struct._GimpViewable*, i8**) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @gimp_item_get_ID(%struct._GimpItem*) #1

declare i8* @gimp_image_get_display_name(%struct._GimpImage*) #1

declare void @g_free(i8*) #1

declare void @g_signal_emit_by_name(i8*, i8*, ...) #1

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
