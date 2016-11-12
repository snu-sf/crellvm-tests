; ModuleID = './app/widgets/gimpprofilechooserdialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpProfileChooserDialogClass = type { %struct._GtkFileChooserDialogClass }
%struct._GtkFileChooserDialogClass = type { %struct._GtkDialogClass }
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
%struct._GimpProfileChooserDialog = type { %struct._GtkFileChooserDialog, %struct._Gimp*, %struct._GtkTextBuffer*, i8*, i8*, i32 }
%struct._GtkFileChooserDialog = type { %struct._GtkDialog, %struct._GtkFileChooserDialogPrivate* }
%struct._GtkFileChooserDialogPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkFileFilter = type opaque
%struct._GtkFileChooser = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GError = type { i32, i32, i8* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkTextView = type { %struct._GtkContainer, %struct._GtkTextLayout*, %struct._GtkTextBuffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i8, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, i32, i32, i32, i32, i32, i32, %struct._GtkTextMark*, i32, %struct._GtkTextMark*, i32, i32, i32, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._GSList*, %struct._GtkTextPendingScroll*, i32 }
%struct._GtkTextLayout = type opaque
%struct._PangoTabArray = type opaque
%struct._GtkTextWindow = type opaque
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkTextPendingScroll = type opaque

@gimp_profile_chooser_dialog_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"GimpProfileChooserDialog\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_profile_chooser_dialog_new = private unnamed_addr constant [32 x i8] c"gimp_profile_chooser_dialog_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@__func__.gimp_profile_chooser_dialog_get_desc = private unnamed_addr constant [37 x i8] c"gimp_profile_chooser_dialog_get_desc\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"GIMP_IS_PROFILE_CHOOSER_DIALOG (dialog)\00", align 1
@gimp_profile_chooser_dialog_parent_class = internal global i8* null, align 8
@GimpProfileChooserDialog_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"gimp-profile-chooser-dialog\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"All files (*.*)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"ICC color profile (*.icc, *.icm)\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"*.[Ii][Cc][Cc]\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"*.[Ii][Cc][Mm]\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"update-preview\00", align 1
@gimp_profile_chooser_dialog_add_shortcut.folder = internal constant [21 x i8] c"/usr/share/color/icc\00", align 16
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"gimpprofilechooserdialog.c\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_profile_chooser_dialog_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_profile_chooser_dialog_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_profile_chooser_dialog_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_file_chooser_dialog_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 952, void (i8*, i8*)* bitcast (void (i8*)* @gimp_profile_chooser_dialog_class_intern_init to void (i8*, i8*)*), i32 312, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpProfileChooserDialog*)* @gimp_profile_chooser_dialog_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_profile_chooser_dialog_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_profile_chooser_dialog_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_dialog_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_profile_chooser_dialog_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_profile_chooser_dialog_parent_class, align 8
  %1 = load i32, i32* @GimpProfileChooserDialog_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpProfileChooserDialog_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpProfileChooserDialogClass*
  call void @gimp_profile_chooser_dialog_class_init(%struct._GimpProfileChooserDialogClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_profile_chooser_dialog_init(%struct._GimpProfileChooserDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GimpProfileChooserDialog*, align 8
  store %struct._GimpProfileChooserDialog* %dialog, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %0 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %0, i32 0, i32 5
  store i32 0, i32* %idle_id, align 4
  %call = call %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable* null)
  %1 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %1, i32 0, i32 2
  store %struct._GtkTextBuffer* %call, %struct._GtkTextBuffer** %buffer, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_profile_chooser_dialog_new(%struct._Gimp* %gimp, i8* %title) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %title.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_profile_chooser_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_profile_chooser_dialog_get_type() #7
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %14 = load i8*, i8** %title.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._Gimp* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %14, i8* null)
  %15 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %15, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %16
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_profile_chooser_dialog_get_desc(%struct._GimpProfileChooserDialog* %dialog, i8* %filename) #3 {
entry:
  %retval = alloca i8*, align 8
  %dialog.addr = alloca %struct._GimpProfileChooserDialog*, align 8
  %filename.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProfileChooserDialog* %dialog, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpProfileChooserDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_profile_chooser_dialog_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_profile_chooser_dialog_get_desc, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i8*, i8** %filename.addr, align 8
  %tobool11 = icmp ne i8* %13, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.21

land.lhs.true.12:                                 ; preds = %do.end
  %14 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %filename13 = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %14, i32 0, i32 3
  %15 = load i8*, i8** %filename13, align 8
  %tobool14 = icmp ne i8* %15, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.21

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %16 = load i8*, i8** %filename.addr, align 8
  %17 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %filename16 = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %17, i32 0, i32 3
  %18 = load i8*, i8** %filename16, align 8
  %call17 = call i32 @strcmp(i8* %16, i8* %18) #8
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true.15
  %19 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %desc = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %19, i32 0, i32 4
  %20 = load i8*, i8** %desc, align 8
  %call20 = call noalias i8* @g_strdup(i8* %20)
  store i8* %call20, i8** %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.15, %land.lhs.true.12, %do.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.19, %if.else.9
  %21 = load i8*, i8** %retval
  ret i8* %21
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_profile_chooser_dialog_class_init(%struct._GimpProfileChooserDialogClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpProfileChooserDialogClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpProfileChooserDialogClass* %klass, %struct._GimpProfileChooserDialogClass** %klass.addr, align 8
  %0 = load %struct._GimpProfileChooserDialogClass*, %struct._GimpProfileChooserDialogClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpProfileChooserDialogClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_profile_chooser_dialog_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_profile_chooser_dialog_dispose, void (%struct._GObject*)** %dispose, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_profile_chooser_dialog_finalize, void (%struct._GObject*)** %finalize, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_profile_chooser_dialog_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_profile_chooser_dialog_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_get_type() #7
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 1, %struct._GParamSpec* %call2)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_profile_chooser_dialog_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dialog = alloca %struct._GimpProfileChooserDialog*, align 8
  %filter = alloca %struct._GtkFileFilter*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_profile_chooser_dialog_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProfileChooserDialog*
  store %struct._GimpProfileChooserDialog* %2, %struct._GimpProfileChooserDialog** %dialog, align 8
  %3 = load i8*, i8** @gimp_profile_chooser_dialog_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_profile_chooser_dialog_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %13 = bitcast %struct._GimpProfileChooserDialog* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  call void @gtk_window_set_role(%struct._GtkWindow* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  %15 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %16 = bitcast %struct._GimpProfileChooserDialog* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i8*, ...) @gtk_dialog_add_buttons(%struct._GtkDialog* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 -3, i8* null)
  %18 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %19 = bitcast %struct._GimpProfileChooserDialog* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %20, i32 -3, i32 -6, i32 -1)
  %21 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %22 = bitcast %struct._GimpProfileChooserDialog* %21 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call11)
  %23 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %23, i32 -3)
  %24 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  call void @gimp_profile_chooser_dialog_add_shortcut(%struct._GimpProfileChooserDialog* %24)
  %call13 = call %struct._GtkFileFilter* @gtk_file_filter_new()
  store %struct._GtkFileFilter* %call13, %struct._GtkFileFilter** %filter, align 8
  %25 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0)) #6
  call void @gtk_file_filter_set_name(%struct._GtkFileFilter* %25, i8* %call14)
  %26 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  call void @gtk_file_filter_add_pattern(%struct._GtkFileFilter* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %27 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %28 = bitcast %struct._GimpProfileChooserDialog* %27 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_file_chooser_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call15)
  %29 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkFileChooser*
  %30 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  call void @gtk_file_chooser_add_filter(%struct._GtkFileChooser* %29, %struct._GtkFileFilter* %30)
  %call17 = call %struct._GtkFileFilter* @gtk_file_filter_new()
  store %struct._GtkFileFilter* %call17, %struct._GtkFileFilter** %filter, align 8
  %31 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0)) #6
  call void @gtk_file_filter_set_name(%struct._GtkFileFilter* %31, i8* %call18)
  %32 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  call void @gtk_file_filter_add_pattern(%struct._GtkFileFilter* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  %33 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  call void @gtk_file_filter_add_pattern(%struct._GtkFileFilter* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0))
  %34 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %35 = bitcast %struct._GimpProfileChooserDialog* %34 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_file_chooser_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call19)
  %36 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkFileChooser*
  %37 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  call void @gtk_file_chooser_add_filter(%struct._GtkFileChooser* %36, %struct._GtkFileFilter* %37)
  %38 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %39 = bitcast %struct._GimpProfileChooserDialog* %38 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_file_chooser_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call21)
  %40 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkFileChooser*
  %41 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  call void @gtk_file_chooser_set_filter(%struct._GtkFileChooser* %40, %struct._GtkFileFilter* %41)
  %42 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %43 = bitcast %struct._GimpProfileChooserDialog* %42 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_file_chooser_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call23)
  %44 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkFileChooser*
  %45 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %buffer = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %45, i32 0, i32 2
  %46 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call25 = call %struct._GtkWidget* @gimp_profile_view_new(%struct._GtkTextBuffer* %46)
  call void @gtk_file_chooser_set_preview_widget(%struct._GtkFileChooser* %44, %struct._GtkWidget* %call25)
  %47 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %48 = bitcast %struct._GimpProfileChooserDialog* %47 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpProfileChooserDialog*)* @gimp_profile_chooser_dialog_update_preview to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_profile_chooser_dialog_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dialog = alloca %struct._GimpProfileChooserDialog*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_profile_chooser_dialog_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProfileChooserDialog*
  store %struct._GimpProfileChooserDialog* %2, %struct._GimpProfileChooserDialog** %dialog, align 8
  %3 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %idle_id = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %3, i32 0, i32 5
  %4 = load i32, i32* %idle_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %idle_id2 = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %5, i32 0, i32 5
  %6 = load i32, i32* %idle_id2, align 4
  %call3 = call i32 @g_source_remove(i32 %6)
  %7 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %idle_id4 = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %7, i32 0, i32 5
  store i32 0, i32* %idle_id4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_profile_chooser_dialog_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_profile_chooser_dialog_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dialog = alloca %struct._GimpProfileChooserDialog*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_profile_chooser_dialog_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProfileChooserDialog*
  store %struct._GimpProfileChooserDialog* %2, %struct._GimpProfileChooserDialog** %dialog, align 8
  %3 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %buffer = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %3, i32 0, i32 2
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %tobool = icmp ne %struct._GtkTextBuffer* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %buffer2 = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %5, i32 0, i32 2
  %6 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer2, align 8
  %7 = bitcast %struct._GtkTextBuffer* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %buffer3 = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %8, i32 0, i32 2
  store %struct._GtkTextBuffer* null, %struct._GtkTextBuffer** %buffer3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_profile_chooser_dialog_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_profile_chooser_dialog_get_property(%struct._GObject* %object, i32 %prop_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %prop_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dialog = alloca %struct._GimpProfileChooserDialog*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %prop_id, i32* %prop_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_profile_chooser_dialog_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProfileChooserDialog*
  store %struct._GimpProfileChooserDialog* %2, %struct._GimpProfileChooserDialog** %dialog, align 8
  %3 = load i32, i32* %prop_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %gimp = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = bitcast %struct._Gimp* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %prop_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), i32 203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_profile_chooser_dialog_set_property(%struct._GObject* %object, i32 %prop_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %prop_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dialog = alloca %struct._GimpProfileChooserDialog*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %prop_id, i32* %prop_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_profile_chooser_dialog_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProfileChooserDialog*
  store %struct._GimpProfileChooserDialog* %2, %struct._GimpProfileChooserDialog** %dialog, align 8
  %3 = load i32, i32* %prop_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._Gimp*
  %6 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog, align 8
  %gimp = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %6, i32 0, i32 1
  store %struct._Gimp* %5, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %prop_id.addr, align 4
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
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), i32 184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_window_set_role(%struct._GtkWindow*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gtk_dialog_add_buttons(%struct._GtkDialog*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_profile_chooser_dialog_add_shortcut(%struct._GimpProfileChooserDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GimpProfileChooserDialog*, align 8
  store %struct._GimpProfileChooserDialog* %dialog, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %call = call i32 @g_file_test(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gimp_profile_chooser_dialog_add_shortcut.folder, i32 0, i32 0), i32 4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpProfileChooserDialog* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_file_chooser_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFileChooser*
  %call3 = call i32 @gtk_file_chooser_add_shortcut_folder(%struct._GtkFileChooser* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gimp_profile_chooser_dialog_add_shortcut.folder, i32 0, i32 0), %struct._GError** null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkFileFilter* @gtk_file_filter_new() #1

declare void @gtk_file_filter_set_name(%struct._GtkFileFilter*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @gtk_file_filter_add_pattern(%struct._GtkFileFilter*, i8*) #1

declare void @gtk_file_chooser_add_filter(%struct._GtkFileChooser*, %struct._GtkFileFilter*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #2

declare void @gtk_file_chooser_set_filter(%struct._GtkFileChooser*, %struct._GtkFileFilter*) #1

declare void @gtk_file_chooser_set_preview_widget(%struct._GtkFileChooser*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_profile_view_new(%struct._GtkTextBuffer* %buffer) #3 {
entry:
  %buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %scrolled_window = alloca %struct._GtkWidget*, align 8
  %text_view = alloca %struct._GtkWidget*, align 8
  store %struct._GtkTextBuffer* %buffer, %struct._GtkTextBuffer** %buffer.addr, align 8
  %call = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %frame, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_frame_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %2, i32 1)
  %call3 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %scrolled_window, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_scrolled_window_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %5, i32 1, i32 1)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_container_add(%struct._GtkContainer* %8, %struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  %call8 = call %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer* %11)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %text_view, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_text_view_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTextView*
  call void @gtk_text_view_set_editable(%struct._GtkTextView* %14, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_text_view_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTextView*
  call void @gtk_text_view_set_wrap_mode(%struct._GtkTextView* %17, i32 2)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_text_view_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTextView*
  call void @gtk_text_view_set_pixels_above_lines(%struct._GtkTextView* %20, i32 2)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_text_view_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTextView*
  call void @gtk_text_view_set_left_margin(%struct._GtkTextView* %23, i32 2)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_text_view_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call17)
  %26 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTextView*
  call void @gtk_text_view_set_right_margin(%struct._GtkTextView* %26, i32 2)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call19)
  %29 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %29, %struct._GtkWidget* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %32, i32 200, i32 -1)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %33
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_profile_chooser_dialog_update_preview(%struct._GimpProfileChooserDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GimpProfileChooserDialog*, align 8
  store %struct._GimpProfileChooserDialog* %dialog, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %0 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %0, i32 0, i32 2
  %1 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i32 0)
  %2 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %filename = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %2, i32 0, i32 3
  %3 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %3)
  %4 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %filename1 = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %4, i32 0, i32 3
  store i8* null, i8** %filename1, align 8
  %5 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %desc = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %5, i32 0, i32 4
  %6 = load i8*, i8** %desc, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %desc2 = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %7, i32 0, i32 4
  store i8* null, i8** %desc2, align 8
  %8 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %8, i32 0, i32 5
  %9 = load i32, i32* %idle_id, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %idle_id3 = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %10, i32 0, i32 5
  %11 = load i32, i32* %idle_id3, align 4
  %call = call i32 @g_source_remove(i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %13 = bitcast %struct._GimpProfileChooserDialog* %12 to i8*
  %call4 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GimpProfileChooserDialog*)* @gimp_profile_view_query to i32 (i8*)*), i8* %13)
  %14 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %idle_id5 = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %14, i32 0, i32 5
  store i32 %call4, i32* %idle_id5, align 4
  ret void
}

declare i32 @g_file_test(i8*, i32) #1

declare i32 @gtk_file_chooser_add_shortcut_folder(%struct._GtkFileChooser*, i8*, %struct._GError**) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer*) #1

declare void @gtk_text_view_set_editable(%struct._GtkTextView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_view_get_type() #2

declare void @gtk_text_view_set_wrap_mode(%struct._GtkTextView*, i32) #1

declare void @gtk_text_view_set_pixels_above_lines(%struct._GtkTextView*, i32) #1

declare void @gtk_text_view_set_left_margin(%struct._GtkTextView*, i32) #1

declare void @gtk_text_view_set_right_margin(%struct._GtkTextView*, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_text_buffer_set_text(%struct._GtkTextBuffer*, i8*, i32) #1

declare void @g_free(i8*) #1

declare i32 @g_source_remove(i32) #1

declare i32 @g_idle_add(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_profile_view_query(%struct._GimpProfileChooserDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GimpProfileChooserDialog*, align 8
  %filename = alloca i8*, align 8
  %name = alloca i8*, align 8
  %desc = alloca i8*, align 8
  %info = alloca i8*, align 8
  %info_len = alloca i64, align 8
  %name_len = alloca i64, align 8
  store %struct._GimpProfileChooserDialog* %dialog, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %0 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpProfileChooserDialog* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_preview_filename(%struct._GtkFileChooser* %2)
  store i8* %call2, i8** %filename, align 8
  %3 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  store i8* null, i8** %name, align 8
  store i8* null, i8** %desc, align 8
  store i8* null, i8** %info, align 8
  %4 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %6 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %gimp3 = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp3, align 8
  %call4 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %7)
  %8 = load i8*, i8** %filename, align 8
  %call5 = call i32 @plug_in_icc_profile_file_info(%struct._Gimp* %5, %struct._GimpContext* %call4, %struct._GimpProgress* null, i8* %8, i8** %name, i8** %desc, i8** %info, %struct._GError** null)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.29

if.then.7:                                        ; preds = %if.then
  %9 = load i8*, i8** %info, align 8
  %tobool8 = icmp ne i8* %9, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %10 = load i8*, i8** %info, align 8
  %call9 = call i64 @strlen(i8* %10) #8
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call9, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %info_len, align 8
  %11 = load i8*, i8** %filename, align 8
  %call10 = call i64 @strlen(i8* %11) #8
  store i64 %call10, i64* %name_len, align 8
  %12 = load i64, i64* %info_len, align 8
  %13 = load i64, i64* %name_len, align 8
  %cmp = icmp ugt i64 %12, %13
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %14 = load i8*, i8** %info, align 8
  %15 = load i64, i64* %info_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %15
  %16 = load i64, i64* %name_len, align 8
  %idx.neg = sub i64 0, %16
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %17 = load i8*, i8** %filename, align 8
  %call12 = call i32 @strcmp(i8* %add.ptr11, i8* %17) #8
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %land.lhs.true
  %18 = load i64, i64* %name_len, align 8
  %19 = load i64, i64* %info_len, align 8
  %sub = sub i64 %19, %18
  store i64 %sub, i64* %info_len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.14, %land.lhs.true, %cond.end
  %20 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %20, i32 0, i32 2
  %21 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %22 = load i8*, i8** %info, align 8
  %tobool15 = icmp ne i8* %22, null
  br i1 %tobool15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %if.end
  %23 = load i8*, i8** %info, align 8
  br label %cond.end.18

cond.false.17:                                    ; preds = %if.end
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.16
  %cond19 = phi i8* [ %23, %cond.true.16 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), %cond.false.17 ]
  %24 = load i64, i64* %info_len, align 8
  %conv = trunc i64 %24 to i32
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %21, i8* %cond19, i32 %conv)
  %25 = load i8*, i8** %desc, align 8
  %tobool20 = icmp ne i8* %25, null
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %cond.end.18
  %26 = load i8*, i8** %desc, align 8
  %27 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %desc22 = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %27, i32 0, i32 4
  store i8* %26, i8** %desc22, align 8
  store i8* null, i8** %desc, align 8
  br label %if.end.27

if.else:                                          ; preds = %cond.end.18
  %28 = load i8*, i8** %name, align 8
  %tobool23 = icmp ne i8* %28, null
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.else
  %29 = load i8*, i8** %name, align 8
  %30 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %desc25 = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %30, i32 0, i32 4
  store i8* %29, i8** %desc25, align 8
  store i8* null, i8** %name, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.21
  %31 = load i8*, i8** %filename, align 8
  %32 = load %struct._GimpProfileChooserDialog*, %struct._GimpProfileChooserDialog** %dialog.addr, align 8
  %filename28 = getelementptr inbounds %struct._GimpProfileChooserDialog, %struct._GimpProfileChooserDialog* %32, i32 0, i32 3
  store i8* %31, i8** %filename28, align 8
  store i8* null, i8** %filename, align 8
  %33 = load i8*, i8** %name, align 8
  call void @g_free(i8* %33)
  %34 = load i8*, i8** %desc, align 8
  call void @g_free(i8* %34)
  %35 = load i8*, i8** %info, align 8
  call void @g_free(i8* %35)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.27, %if.then
  %36 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %36)
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %entry
  ret i32 0
}

declare i8* @gtk_file_chooser_get_preview_filename(%struct._GtkFileChooser*) #1

declare i32 @plug_in_icc_profile_file_info(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, i8*, i8**, i8**, i8**, %struct._GError**) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @g_object_unref(i8*) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

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
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i8* @g_value_get_object(%struct._GValue*) #1

declare %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
