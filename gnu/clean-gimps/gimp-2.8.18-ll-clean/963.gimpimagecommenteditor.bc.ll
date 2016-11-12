; ModuleID = './app/widgets/gimpimagecommenteditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpImageCommentEditorClass = type { %struct._GimpImageParasiteViewClass }
%struct._GimpImageParasiteViewClass = type { %struct._GtkBoxClass, void (%struct._GimpImageParasiteView*)* }
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
%struct._GimpImageParasiteView = type { %struct._GtkBox, %struct._GimpImage*, i8* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
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
%struct._GimpTemplate = type { %struct._GimpViewable }
%struct._GimpContext = type opaque
%struct._GimpImageCommentEditor = type { %struct._GimpImageParasiteView, %struct._GtkTextBuffer*, i32 }
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkTextView = type { %struct._GtkContainer, %struct._GtkTextLayout*, %struct._GtkTextBuffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i8, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, i32, i32, i32, i32, i32, i32, %struct._GtkTextMark*, i32, %struct._GtkTextMark*, i32, i32, i32, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._GSList*, %struct._GtkTextPendingScroll*, i32 }
%struct._GtkTextLayout = type opaque
%struct._PangoTabArray = type opaque
%struct._GtkTextWindow = type opaque
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkTextPendingScroll = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }

@gimp_image_comment_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"GimpImageCommentEditor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_image_comment_editor_new = private unnamed_addr constant [30 x i8] c"gimp_image_comment_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"parasite\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"gimp-comment\00", align 1
@gimp_image_comment_editor_parent_class = internal global i8* null, align 8
@GimpImageCommentEditor_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Use default comment\00", align 1
@.str.8 = private unnamed_addr constant [102 x i8] c"Replace the current image comment with the default comment set in Edit\E2\86\92Preferences\E2\86\92Default Image.\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_image_comment_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_image_comment_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_image_comment_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_parasite_view_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 832, void (i8*, i8*)* bitcast (void (i8*)* @gimp_image_comment_editor_class_intern_init to void (i8*, i8*)*), i32 160, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpImageCommentEditor*)* @gimp_image_comment_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_image_comment_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_image_comment_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_parasite_view_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_comment_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_image_comment_editor_parent_class, align 8
  %1 = load i32, i32* @GimpImageCommentEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpImageCommentEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpImageCommentEditorClass*
  call void @gimp_image_comment_editor_class_init(%struct._GimpImageCommentEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_comment_editor_init(%struct._GimpImageCommentEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpImageCommentEditor*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %scrolled_window = alloca %struct._GtkWidget*, align 8
  %text_view = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GimpImageCommentEditor* %editor, %struct._GimpImageCommentEditor** %editor.addr, align 8
  %0 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor.addr, align 8
  %recoursing = getelementptr inbounds %struct._GimpImageCommentEditor, %struct._GimpImageCommentEditor* %0, i32 0, i32 2
  store i32 0, i32* %recoursing, align 4
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %1 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor.addr, align 8
  %2 = bitcast %struct._GimpImageCommentEditor* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_box_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkBox*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %3, %struct._GtkWidget* %4, i32 1, i32 1, i32 0)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %5)
  %call3 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %scrolled_window, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_scrolled_window_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %8, i32 1, i32 1)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %11, i32 2)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %14, %struct._GtkWidget* %15, i32 1, i32 1, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %call10 = call %struct._GtkWidget* @gtk_text_view_new()
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %text_view, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_text_view_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTextView*
  call void @gtk_text_view_set_editable(%struct._GtkTextView* %19, i32 1)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_text_view_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call13)
  %22 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTextView*
  call void @gtk_text_view_set_wrap_mode(%struct._GtkTextView* %22, i32 2)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_text_view_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call15)
  %25 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTextView*
  call void @gtk_text_view_set_pixels_above_lines(%struct._GtkTextView* %25, i32 6)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_text_view_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call17)
  %28 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTextView*
  call void @gtk_text_view_set_left_margin(%struct._GtkTextView* %28, i32 6)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_text_view_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call19)
  %31 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTextView*
  call void @gtk_text_view_set_right_margin(%struct._GtkTextView* %31, i32 6)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_container_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call21)
  %34 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkContainer*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %34, %struct._GtkWidget* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)) #7
  %call24 = call %struct._GtkWidget* @gtk_button_new_with_label(i8* %call23)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %button, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_widget_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call25)
  %39 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkWidget*
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.8, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %39, i8* %call27, i8* null)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call28)
  %42 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 0, i32 1, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %47 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor.addr, align 8
  %48 = bitcast %struct._GimpImageCommentEditor* %47 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpImageCommentEditor*)* @gimp_image_comment_editor_use_default_comment to void ()*), i8* %48, void (i8*, %struct._GClosure*)* null, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_text_view_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call31)
  %51 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTextView*
  %call33 = call %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView* %51)
  %52 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpImageCommentEditor, %struct._GimpImageCommentEditor* %52, i32 0, i32 1
  store %struct._GtkTextBuffer* %call33, %struct._GtkTextBuffer** %buffer, align 8
  %53 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor.addr, align 8
  %buffer34 = getelementptr inbounds %struct._GimpImageCommentEditor, %struct._GimpImageCommentEditor* %53, i32 0, i32 1
  %54 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer34, align 8
  %55 = bitcast %struct._GtkTextBuffer* %54 to i8*
  %56 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor.addr, align 8
  %57 = bitcast %struct._GimpImageCommentEditor* %56 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTextBuffer*, %struct._GimpImageCommentEditor*)* @gimp_image_comment_editor_buffer_changed to void ()*), i8* %57, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_image_comment_editor_new(%struct._GimpImage* %image) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_comment_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_image_comment_editor_get_type() #6
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpImage* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %14 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_comment_editor_class_init(%struct._GimpImageCommentEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpImageCommentEditorClass*, align 8
  %view_class = alloca %struct._GimpImageParasiteViewClass*, align 8
  store %struct._GimpImageCommentEditorClass* %klass, %struct._GimpImageCommentEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpImageCommentEditorClass*, %struct._GimpImageCommentEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpImageCommentEditorClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_image_parasite_view_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpImageParasiteViewClass*
  store %struct._GimpImageParasiteViewClass* %2, %struct._GimpImageParasiteViewClass** %view_class, align 8
  %3 = load %struct._GimpImageParasiteViewClass*, %struct._GimpImageParasiteViewClass** %view_class, align 8
  %update = getelementptr inbounds %struct._GimpImageParasiteViewClass, %struct._GimpImageParasiteViewClass* %3, i32 0, i32 1
  store void (%struct._GimpImageParasiteView*)* @gimp_image_comment_editor_update, void (%struct._GimpImageParasiteView*)** %update, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_comment_editor_update(%struct._GimpImageParasiteView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpImageParasiteView*, align 8
  %editor = alloca %struct._GimpImageCommentEditor*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %text = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %struct._GimpImageParasiteView* %view, %struct._GimpImageParasiteView** %view.addr, align 8
  %0 = load %struct._GimpImageParasiteView*, %struct._GimpImageParasiteView** %view.addr, align 8
  %1 = bitcast %struct._GimpImageParasiteView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_comment_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageCommentEditor*
  store %struct._GimpImageCommentEditor* %2, %struct._GimpImageCommentEditor** %editor, align 8
  %3 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor, align 8
  %recoursing = getelementptr inbounds %struct._GimpImageCommentEditor, %struct._GimpImageCommentEditor* %3, i32 0, i32 2
  %4 = load i32, i32* %recoursing, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor, align 8
  %buffer = getelementptr inbounds %struct._GimpImageCommentEditor, %struct._GimpImageCommentEditor* %5, i32 0, i32 1
  %6 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %7 = bitcast %struct._GtkTextBuffer* %6 to i8*
  %8 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor, align 8
  %9 = bitcast %struct._GimpImageCommentEditor* %8 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTextBuffer*, %struct._GimpImageCommentEditor*)* @gimp_image_comment_editor_buffer_changed to i8*), i8* %9)
  %10 = load %struct._GimpImageParasiteView*, %struct._GimpImageParasiteView** %view.addr, align 8
  %call3 = call %struct._GimpParasite* @gimp_image_parasite_view_get_parasite(%struct._GimpImageParasiteView* %10)
  store %struct._GimpParasite* %call3, %struct._GimpParasite** %parasite, align 8
  %11 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool4 = icmp ne %struct._GimpParasite* %11, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %12 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call6 = call i8* @gimp_parasite_data(%struct._GimpParasite* %12)
  %13 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call7 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %13)
  %call8 = call noalias i8* @g_strndup(i8* %call6, i64 %call7)
  store i8* %call8, i8** %text, align 8
  %14 = load i8*, i8** %text, align 8
  %call9 = call i32 @g_utf8_validate(i8* %14, i64 -1, i8** null)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.then.5
  %15 = load i8*, i8** %text, align 8
  %call12 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %15, i64 -1, i8* null)
  store i8* %call12, i8** %tmp, align 8
  %16 = load i8*, i8** %text, align 8
  call void @g_free(i8* %16)
  %17 = load i8*, i8** %tmp, align 8
  store i8* %17, i8** %text, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.5
  %18 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor, align 8
  %buffer14 = getelementptr inbounds %struct._GimpImageCommentEditor, %struct._GimpImageCommentEditor* %18, i32 0, i32 1
  %19 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer14, align 8
  %20 = load i8*, i8** %text, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %19, i8* %20, i32 -1)
  %21 = load i8*, i8** %text, align 8
  call void @g_free(i8* %21)
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %22 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor, align 8
  %buffer15 = getelementptr inbounds %struct._GimpImageCommentEditor, %struct._GimpImageCommentEditor* %22, i32 0, i32 1
  %23 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer15, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i32 0)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.end.13
  %24 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor, align 8
  %buffer17 = getelementptr inbounds %struct._GimpImageCommentEditor, %struct._GimpImageCommentEditor* %24, i32 0, i32 1
  %25 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer17, align 8
  %26 = bitcast %struct._GtkTextBuffer* %25 to i8*
  %27 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor, align 8
  %28 = bitcast %struct._GimpImageCommentEditor* %27 to i8*
  %call18 = call i32 @g_signal_handlers_unblock_matched(i8* %26, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTextBuffer*, %struct._GimpImageCommentEditor*)* @gimp_image_comment_editor_buffer_changed to i8*), i8* %28)
  br label %return

return:                                           ; preds = %if.end.16, %if.then
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_comment_editor_buffer_changed(%struct._GtkTextBuffer* %buffer, %struct._GimpImageCommentEditor* %editor) #3 {
entry:
  %buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %editor.addr = alloca %struct._GimpImageCommentEditor*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %text = alloca i8*, align 8
  %len = alloca i32, align 4
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  store %struct._GtkTextBuffer* %buffer, %struct._GtkTextBuffer** %buffer.addr, align 8
  store %struct._GimpImageCommentEditor* %editor, %struct._GimpImageCommentEditor** %editor.addr, align 8
  %0 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpImageCommentEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_parasite_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageParasiteView*
  %call2 = call %struct._GimpImage* @gimp_image_parasite_view_get_image(%struct._GimpImageParasiteView* %2)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %3, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  %call3 = call i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer* %4, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 0)
  store i8* %call3, i8** %text, align 8
  %5 = load i8*, i8** %text, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i8*, i8** %text, align 8
  %call4 = call i64 @strlen(i8* %6) #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call4, %cond.true ], [ 0, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %len, align 4
  %7 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor.addr, align 8
  %recoursing = getelementptr inbounds %struct._GimpImageCommentEditor, %struct._GimpImageCommentEditor* %7, i32 0, i32 2
  store i32 1, i32* %recoursing, align 4
  %8 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %9 = load i32, i32* %len, align 4
  %add = add nsw i32 %9, 1
  %10 = load i8*, i8** %text, align 8
  %call6 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 1, i32 %add, i8* %10)
  store %struct._GimpParasite* %call6, %struct._GimpParasite** %parasite, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %12 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_image_parasite_attach(%struct._GimpImage* %11, %struct._GimpParasite* %12)
  %13 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %13)
  br label %if.end

if.else:                                          ; preds = %cond.end
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_parasite_detach(%struct._GimpImage* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor.addr, align 8
  %recoursing7 = getelementptr inbounds %struct._GimpImageCommentEditor, %struct._GimpImageCommentEditor* %15, i32 0, i32 2
  store i32 0, i32* %recoursing7, align 4
  %16 = load i8*, i8** %text, align 8
  call void @g_free(i8* %16)
  ret void
}

declare %struct._GimpParasite* @gimp_image_parasite_view_get_parasite(%struct._GimpImageParasiteView*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

declare noalias i8* @gimp_any_to_utf8(i8*, i64, i8*, ...) #1

declare void @g_free(i8*) #1

declare void @gtk_text_buffer_set_text(%struct._GtkTextBuffer*, i8*, i32) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare %struct._GimpImage* @gimp_image_parasite_view_get_image(%struct._GimpImageParasiteView*) #1

declare void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

declare void @gimp_image_parasite_attach(%struct._GimpImage*, %struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

declare void @gimp_image_parasite_detach(%struct._GimpImage*, i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gtk_text_view_new() #1

declare void @gtk_text_view_set_editable(%struct._GtkTextView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_view_get_type() #2

declare void @gtk_text_view_set_wrap_mode(%struct._GtkTextView*, i32) #1

declare void @gtk_text_view_set_pixels_above_lines(%struct._GtkTextView*, i32) #1

declare void @gtk_text_view_set_left_margin(%struct._GtkTextView*, i32) #1

declare void @gtk_text_view_set_right_margin(%struct._GtkTextView*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_button_new_with_label(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_comment_editor_use_default_comment(%struct._GtkWidget* %button, %struct._GimpImageCommentEditor* %editor) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpImageCommentEditor*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %comment = alloca i8*, align 8
  %template = alloca %struct._GimpTemplate*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpImageCommentEditor* %editor, %struct._GimpImageCommentEditor** %editor.addr, align 8
  store i8* null, i8** %comment, align 8
  %0 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpImageCommentEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_parasite_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageParasiteView*
  %call2 = call %struct._GimpImage* @gimp_image_parasite_view_get_image(%struct._GimpImageParasiteView* %2)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 1
  %6 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_image = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %6, i32 0, i32 35
  %7 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image, align 8
  store %struct._GimpTemplate* %7, %struct._GimpTemplate** %template, align 8
  %8 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %call3 = call i8* @gimp_template_get_comment(%struct._GimpTemplate* %8)
  store i8* %call3, i8** %comment, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %comment, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpImageCommentEditor, %struct._GimpImageCommentEditor* %10, i32 0, i32 1
  %11 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %12 = load i8*, i8** %comment, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %11, i8* %12, i32 -1)
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %13 = load %struct._GimpImageCommentEditor*, %struct._GimpImageCommentEditor** %editor.addr, align 8
  %buffer6 = getelementptr inbounds %struct._GimpImageCommentEditor, %struct._GimpImageCommentEditor* %13, i32 0, i32 1
  %14 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer6, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i32 -1)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.5
  ret void
}

declare %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView*) #1

declare i8* @gimp_template_get_comment(%struct._GimpTemplate*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
