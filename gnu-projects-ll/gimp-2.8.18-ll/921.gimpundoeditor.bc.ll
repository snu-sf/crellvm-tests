; ModuleID = './app/widgets/gimpundoeditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpDockedInterface = type { %struct._GTypeInterface, void (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GList*)*, %struct._GList* (%struct._GimpDocked*)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, i32 (%struct._GimpDocked*)*, %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)*, i8* (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GimpContext*)*, i32 (%struct._GimpDocked*)*, void (%struct._GimpDocked*, i32)*, i32 (%struct._GimpDocked*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpDocked = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpContext = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpUndoEditorClass = type { %struct._GimpImageEditorClass }
%struct._GimpImageEditorClass = type { %struct._GimpEditorClass, void (%struct._GimpImageEditor*, %struct._GimpImage*)* }
%struct._GimpEditorClass = type { %struct._GtkBoxClass }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
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
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpImageEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpImage* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpUndoEditor = type { %struct._GimpImageEditor, %struct._GimpContext*, %struct._GimpContainer*, %struct._GtkWidget*, i32, %struct._GimpUndo*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpContainerView = type opaque
%struct._GimpUndoStack = type { %struct._GimpUndo, %struct._GimpContainer* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }

@gimp_undo_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpUndoEditor\00", align 1
@gimp_undo_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_undo_editor_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_undo_editor_new = private unnamed_addr constant [21 x i8] c"gimp_undo_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"GIMP_IS_CORE_CONFIG (config)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"<Undo>\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"/undo-popup\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"view-size\00", align 1
@gimp_undo_editor_parent_class = internal global i8* null, align 8
@GimpUndoEditor_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"select-item\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"edit-undo\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"edit-redo\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"edit-undo-clear\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"gimpundoeditor.c\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"undo-event\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"[ Base Image ]\00", align 1
@parent_docked_iface = internal global %struct._GimpDockedInterface* null, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_undo_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_undo_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_undo_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_editor_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 832, void (i8*, i8*)* bitcast (void (i8*)* @gimp_undo_editor_class_intern_init to void (i8*, i8*)*), i32 216, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpUndoEditor*)* @gimp_undo_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_undo_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_undo_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_undo_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_undo_editor_parent_class, align 8
  %1 = load i32, i32* @GimpUndoEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpUndoEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpUndoEditorClass*
  call void @gimp_undo_editor_class_init(%struct._GimpUndoEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_editor_init(%struct._GimpUndoEditor* %undo_editor) #3 {
entry:
  %undo_editor.addr = alloca %struct._GimpUndoEditor*, align 8
  store %struct._GimpUndoEditor* %undo_editor, %struct._GimpUndoEditor** %undo_editor.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_editor_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpDockedInterface*, align 8
  store %struct._GimpDockedInterface* %iface, %struct._GimpDockedInterface** %iface.addr, align 8
  %0 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %1 = bitcast %struct._GimpDockedInterface* %0 to i8*
  %call = call i8* @g_type_interface_peek_parent(i8* %1)
  %2 = bitcast i8* %call to %struct._GimpDockedInterface*
  store %struct._GimpDockedInterface* %2, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %tobool = icmp ne %struct._GimpDockedInterface* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @gimp_docked_interface_get_type() #7
  %call2 = call i8* @g_type_default_interface_peek(i64 %call1)
  %4 = bitcast i8* %call2 to %struct._GimpDockedInterface*
  store %struct._GimpDockedInterface* %4, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %5, i32 0, i32 8
  store void (%struct._GimpDocked*, %struct._GimpContext*)* @gimp_undo_editor_set_context, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_undo_editor_new(%struct._GimpCoreConfig* %config, %struct._GimpMenuFactory* %menu_factory) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GimpCoreConfig*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpCoreConfig* %config, %struct._GimpCoreConfig** %config.addr, align 8
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpCoreConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_core_config_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_undo_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %14 = bitcast %struct._GimpMenuFactory* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_menu_factory_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_undo_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call i64 @gimp_undo_editor_get_type() #7
  %26 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %27 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config.addr, align 8
  %undo_preview_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %27, i32 0, i32 39
  %28 = load i32, i32* %undo_preview_size, align 4
  %call40 = call i8* (i64, i8*, ...) @g_object_new(i64 %call39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), %struct._GimpMenuFactory* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 %28, i8* null)
  %29 = bitcast i8* %call40 to %struct._GtkWidget*
  store %struct._GtkWidget* %29, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %30
}

; Function Attrs: nounwind readnone
declare i64 @gimp_core_config_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_editor_class_init(%struct._GimpUndoEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpUndoEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %image_editor_class = alloca %struct._GimpImageEditorClass*, align 8
  store %struct._GimpUndoEditorClass* %klass, %struct._GimpUndoEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpUndoEditorClass*, %struct._GimpUndoEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpUndoEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpUndoEditorClass*, %struct._GimpUndoEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpUndoEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_image_editor_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpImageEditorClass*
  store %struct._GimpImageEditorClass* %5, %struct._GimpImageEditorClass** %image_editor_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_undo_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_undo_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GimpImageEditorClass*, %struct._GimpImageEditorClass** %image_editor_class, align 8
  %set_image = getelementptr inbounds %struct._GimpImageEditorClass, %struct._GimpImageEditorClass* %8, i32 0, i32 1
  store void (%struct._GimpImageEditor*, %struct._GimpImage*)* @gimp_undo_editor_set_image, void (%struct._GimpImageEditor*, %struct._GimpImage*)** %set_image, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_view_size_get_type() #7
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 48, i32 234)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 1, %struct._GParamSpec* %call4)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %undo_editor = alloca %struct._GimpUndoEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndoEditor*
  store %struct._GimpUndoEditor* %2, %struct._GimpUndoEditor** %undo_editor, align 8
  %3 = load i8*, i8** @gimp_undo_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_undo_editor_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %undo_editor, align 8
  %view_size = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %12, i32 0, i32 4
  %13 = load i32, i32* %view_size, align 4
  %call5 = call %struct._GtkWidget* @gimp_container_tree_view_new(%struct._GimpContainer* null, %struct._GimpContext* null, i32 %13, i32 1)
  %14 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %undo_editor, align 8
  %view = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %14, i32 0, i32 3
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %view, align 8
  %15 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %undo_editor, align 8
  %16 = bitcast %struct._GimpUndoEditor* %15 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call6)
  %17 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %18 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %undo_editor, align 8
  %view8 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %18, i32 0, i32 3
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %view8, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %19, i32 1, i32 1, i32 0)
  %20 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %undo_editor, align 8
  %view9 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %20, i32 0, i32 3
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %view9, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %undo_editor, align 8
  %view10 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %22, i32 0, i32 3
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %view10, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  %25 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %undo_editor, align 8
  %26 = bitcast %struct._GimpUndoEditor* %25 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GimpUndo*, i8*, %struct._GimpUndoEditor*)* @gimp_undo_editor_select_item to void ()*), i8* %26, void (i8*, %struct._GClosure*)* null, i32 0)
  %27 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %undo_editor, align 8
  %28 = bitcast %struct._GimpUndoEditor* %27 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_editor_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call12)
  %29 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpEditor*
  %call14 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* null)
  %30 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %undo_editor, align 8
  %undo_button = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %30, i32 0, i32 6
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %undo_button, align 8
  %31 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %undo_editor, align 8
  %32 = bitcast %struct._GimpUndoEditor* %31 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_editor_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call15)
  %33 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpEditor*
  %call17 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* null)
  %34 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %undo_editor, align 8
  %redo_button = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %34, i32 0, i32 7
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %redo_button, align 8
  %35 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %undo_editor, align 8
  %36 = bitcast %struct._GimpUndoEditor* %35 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_editor_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call18)
  %37 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpEditor*
  %call20 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %38 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %undo_editor, align 8
  %clear_button = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %38, i32 0, i32 8
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %clear_button, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %undo_editor = alloca %struct._GimpUndoEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndoEditor*
  store %struct._GimpUndoEditor* %2, %struct._GimpUndoEditor** %undo_editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %undo_editor, align 8
  %view_size = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %5, i32 0, i32 4
  store i32 %call2, i32* %view_size, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i32 172, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_editor_set_image(%struct._GimpImageEditor* %image_editor, %struct._GimpImage* %image) #3 {
entry:
  %image_editor.addr = alloca %struct._GimpImageEditor*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %editor = alloca %struct._GimpUndoEditor*, align 8
  store %struct._GimpImageEditor* %image_editor, %struct._GimpImageEditor** %image_editor.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %1 = bitcast %struct._GimpImageEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndoEditor*
  store %struct._GimpUndoEditor* %2, %struct._GimpUndoEditor** %editor, align 8
  %3 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor, align 8
  call void @gimp_undo_editor_clear(%struct._GimpUndoEditor* %5)
  %6 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image3 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %6, i32 0, i32 2
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image3, align 8
  %8 = bitcast %struct._GimpImage* %7 to i8*
  %9 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor, align 8
  %10 = bitcast %struct._GimpUndoEditor* %9 to i8*
  %call4 = call i32 @g_signal_handlers_disconnect_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, i32, %struct._GimpUndo*, %struct._GimpUndoEditor*)* @gimp_undo_editor_undo_event to i8*), i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i8*, i8** @gimp_undo_editor_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call5 = call i64 @gimp_image_editor_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 %call5)
  %13 = bitcast %struct._GTypeClass* %call6 to %struct._GimpImageEditorClass*
  %set_image = getelementptr inbounds %struct._GimpImageEditorClass, %struct._GimpImageEditorClass* %13, i32 0, i32 1
  %14 = load void (%struct._GimpImageEditor*, %struct._GimpImage*)*, void (%struct._GimpImageEditor*, %struct._GimpImage*)** %set_image, align 8
  %15 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void %14(%struct._GimpImageEditor* %15, %struct._GimpImage* %16)
  %17 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image7 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %17, i32 0, i32 2
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image7, align 8
  %tobool8 = icmp ne %struct._GimpImage* %18, null
  br i1 %tobool8, label %if.then.9, label %if.end.17

if.then.9:                                        ; preds = %if.end
  %19 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image10 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %19, i32 0, i32 2
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image10, align 8
  %call11 = call i32 @gimp_image_undo_is_enabled(%struct._GimpImage* %20)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  %21 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor, align 8
  call void @gimp_undo_editor_fill(%struct._GimpUndoEditor* %21)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.9
  %22 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image15 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %22, i32 0, i32 2
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image15, align 8
  %24 = bitcast %struct._GimpImage* %23 to i8*
  %25 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor, align 8
  %26 = bitcast %struct._GimpUndoEditor* %25 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpUndo*, %struct._GimpUndoEditor*)* @gimp_undo_editor_undo_event to void ()*), i8* %26, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.14, %if.end
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_size_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gimp_container_tree_view_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_editor_select_item(%struct._GimpContainerView* %view, %struct._GimpUndo* %undo, i8* %insert_data, %struct._GimpUndoEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %insert_data.addr = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpUndoEditor*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %undo_stack = alloca %struct._GimpUndoStack*, align 8
  %redo_stack = alloca %struct._GimpUndoStack*, align 8
  %top_undo_item = alloca %struct._GimpUndo*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  store %struct._GimpUndoEditor* %editor, %struct._GimpUndoEditor** %editor.addr, align 8
  %0 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpUndoEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageEditor*
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %2, i32 0, i32 2
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  store %struct._GimpImage* %3, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage* %4)
  store %struct._GimpUndoStack* %call3, %struct._GimpUndoStack** %undo_stack, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage* %5)
  store %struct._GimpUndoStack* %call4, %struct._GimpUndoStack** %redo_stack, align 8
  %6 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %tobool = icmp ne %struct._GimpUndo* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call5 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %7)
  store %struct._GimpUndo* %call5, %struct._GimpUndo** %top_undo_item, align 8
  %8 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %9 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %base_item = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %9, i32 0, i32 5
  %10 = load %struct._GimpUndo*, %struct._GimpUndo** %base_item, align 8
  %cmp = icmp eq %struct._GimpUndo* %8, %10
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.then.6
  %11 = load %struct._GimpUndo*, %struct._GimpUndo** %top_undo_item, align 8
  %cmp7 = icmp ne %struct._GimpUndo* %11, null
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call i32 @gimp_image_undo(%struct._GimpImage* %12)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %while.body
  br label %while.end

if.end.11:                                        ; preds = %while.body
  %13 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call12 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %13)
  store %struct._GimpUndo* %call12, %struct._GimpUndo** %top_undo_item, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.10, %while.cond
  br label %if.end.45

if.else:                                          ; preds = %if.end
  %14 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %14, i32 0, i32 1
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %undos, align 8
  %16 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %17 = bitcast %struct._GimpUndo* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_object_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpObject*
  %call15 = call i32 @gimp_container_have(%struct._GimpContainer* %15, %struct._GimpObject* %18)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else.27

if.then.17:                                       ; preds = %if.else
  br label %while.cond.18

while.cond.18:                                    ; preds = %if.end.24, %if.then.17
  %19 = load %struct._GimpUndo*, %struct._GimpUndo** %top_undo_item, align 8
  %20 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %cmp19 = icmp ne %struct._GimpUndo* %19, %20
  br i1 %cmp19, label %while.body.20, label %while.end.26

while.body.20:                                    ; preds = %while.cond.18
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call21 = call i32 @gimp_image_undo(%struct._GimpImage* %21)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %while.body.20
  br label %while.end.26

if.end.24:                                        ; preds = %while.body.20
  %22 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call25 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %22)
  store %struct._GimpUndo* %call25, %struct._GimpUndo** %top_undo_item, align 8
  br label %while.cond.18

while.end.26:                                     ; preds = %if.then.23, %while.cond.18
  br label %if.end.44

if.else.27:                                       ; preds = %if.else
  %23 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack, align 8
  %undos28 = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %23, i32 0, i32 1
  %24 = load %struct._GimpContainer*, %struct._GimpContainer** %undos28, align 8
  %25 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %26 = bitcast %struct._GimpUndo* %25 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_object_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call29)
  %27 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpObject*
  %call31 = call i32 @gimp_container_have(%struct._GimpContainer* %24, %struct._GimpObject* %27)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %if.else.27
  br label %while.cond.34

while.cond.34:                                    ; preds = %if.end.40, %if.then.33
  %28 = load %struct._GimpUndo*, %struct._GimpUndo** %top_undo_item, align 8
  %29 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %cmp35 = icmp ne %struct._GimpUndo* %28, %29
  br i1 %cmp35, label %while.body.36, label %while.end.42

while.body.36:                                    ; preds = %while.cond.34
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call37 = call i32 @gimp_image_redo(%struct._GimpImage* %30)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %while.body.36
  br label %while.end.42

if.end.40:                                        ; preds = %while.body.36
  %31 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call41 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %31)
  store %struct._GimpUndo* %call41, %struct._GimpUndo** %top_undo_item, align 8
  br label %while.cond.34

while.end.42:                                     ; preds = %if.then.39, %while.cond.34
  br label %if.end.43

if.end.43:                                        ; preds = %while.end.42, %if.else.27
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %while.end.26
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %while.end
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %32)
  br label %return

return:                                           ; preds = %if.end.45, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor*, i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage*) #1

declare %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage*) #1

declare %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack*) #1

declare i32 @gimp_image_undo(%struct._GimpImage*) #1

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i32 @gimp_image_redo(%struct._GimpImage*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

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

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_editor_clear(%struct._GimpUndoEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpUndoEditor*, align 8
  store %struct._GimpUndoEditor* %editor, %struct._GimpUndoEditor** %editor.addr, align 8
  %0 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %container = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %0, i32 0, i32 2
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool = icmp ne %struct._GimpContainer* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %2, i32 0, i32 3
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  call void @gimp_container_view_set_container(%struct._GimpContainerView* %5, %struct._GimpContainer* null)
  %6 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %container2 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %6, i32 0, i32 2
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container2, align 8
  %8 = bitcast %struct._GimpContainer* %7 to i8*
  call void @g_object_unref(i8* %8)
  %9 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %container3 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %9, i32 0, i32 2
  store %struct._GimpContainer* null, %struct._GimpContainer** %container3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %base_item = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %10, i32 0, i32 5
  %11 = load %struct._GimpUndo*, %struct._GimpUndo** %base_item, align 8
  %tobool4 = icmp ne %struct._GimpUndo* %11, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %12 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %base_item6 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %12, i32 0, i32 5
  %13 = load %struct._GimpUndo*, %struct._GimpUndo** %base_item6, align 8
  %14 = bitcast %struct._GimpUndo* %13 to i8*
  call void @g_object_unref(i8* %14)
  %15 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %base_item7 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %15, i32 0, i32 5
  store %struct._GimpUndo* null, %struct._GimpUndo** %base_item7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_editor_undo_event(%struct._GimpImage* %image, i32 %event, %struct._GimpUndo* %undo, %struct._GimpUndoEditor* %editor) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %event.addr = alloca i32, align 4
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %editor.addr = alloca %struct._GimpUndoEditor*, align 8
  %undo_stack = alloca %struct._GimpUndoStack*, align 8
  %top_undo_item = alloca %struct._GimpUndo*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %event, i32* %event.addr, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store %struct._GimpUndoEditor* %editor, %struct._GimpUndoEditor** %editor.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage* %0)
  store %struct._GimpUndoStack* %call, %struct._GimpUndoStack** %undo_stack, align 8
  %1 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call1 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %1)
  store %struct._GimpUndo* %call1, %struct._GimpUndo** %top_undo_item, align 8
  %2 = load i32, i32* %event.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.14
    i32 3, label %sw.bb.19
    i32 4, label %sw.bb.19
    i32 5, label %sw.bb.39
    i32 6, label %sw.bb.44
    i32 7, label %sw.bb.45
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %3, i32 0, i32 3
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %7 = bitcast %struct._GimpUndoEditor* %6 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainerView*, %struct._GimpUndo*, i8*, %struct._GimpUndoEditor*)* @gimp_undo_editor_select_item to i8*), i8* %7)
  %8 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %container = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %8, i32 0, i32 2
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %10 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %11 = bitcast %struct._GimpUndo* %10 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_object_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call3)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpObject*
  %call5 = call i32 @gimp_container_insert(%struct._GimpContainer* %9, %struct._GimpObject* %12, i32 -1)
  %13 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %view6 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %13, i32 0, i32 3
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %view6, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_container_view_interface_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpContainerView*
  %17 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %18 = bitcast %struct._GimpUndo* %17 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_viewable_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call9)
  %19 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpViewable*
  %call11 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %16, %struct._GimpViewable* %19)
  %20 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %21 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %context = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %21, i32 0, i32 1
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_undo_create_preview(%struct._GimpUndo* %20, %struct._GimpContext* %22, i32 0)
  %23 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %view12 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %23, i32 0, i32 3
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %view12, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %26 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %27 = bitcast %struct._GimpUndoEditor* %26 to i8*
  %call13 = call i32 @g_signal_handlers_unblock_matched(i8* %25, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainerView*, %struct._GimpUndo*, i8*, %struct._GimpUndoEditor*)* @gimp_undo_editor_select_item to i8*), i8* %27)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry, %entry
  %28 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %container15 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %28, i32 0, i32 2
  %29 = load %struct._GimpContainer*, %struct._GimpContainer** %container15, align 8
  %30 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %31 = bitcast %struct._GimpUndo* %30 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_object_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call16)
  %32 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpObject*
  %call18 = call i32 @gimp_container_remove(%struct._GimpContainer* %29, %struct._GimpObject* %32)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry, %entry
  %33 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %view20 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %33, i32 0, i32 3
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %view20, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %36 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %37 = bitcast %struct._GimpUndoEditor* %36 to i8*
  %call21 = call i32 @g_signal_handlers_block_matched(i8* %35, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainerView*, %struct._GimpUndo*, i8*, %struct._GimpUndoEditor*)* @gimp_undo_editor_select_item to i8*), i8* %37)
  %38 = load %struct._GimpUndo*, %struct._GimpUndo** %top_undo_item, align 8
  %tobool = icmp ne %struct._GimpUndo* %38, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.19
  %39 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %view22 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %39, i32 0, i32 3
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %view22, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_container_view_interface_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call23)
  %42 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpContainerView*
  %43 = load %struct._GimpUndo*, %struct._GimpUndo** %top_undo_item, align 8
  %44 = bitcast %struct._GimpUndo* %43 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_viewable_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call25)
  %45 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpViewable*
  %call27 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %42, %struct._GimpViewable* %45)
  %46 = load %struct._GimpUndo*, %struct._GimpUndo** %top_undo_item, align 8
  %47 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %context28 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %47, i32 0, i32 1
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context28, align 8
  call void @gimp_undo_create_preview(%struct._GimpUndo* %46, %struct._GimpContext* %48, i32 0)
  br label %if.end

if.else:                                          ; preds = %sw.bb.19
  %49 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %view29 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %49, i32 0, i32 3
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %view29, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_container_view_interface_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call30)
  %52 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpContainerView*
  %53 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %base_item = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %53, i32 0, i32 5
  %54 = load %struct._GimpUndo*, %struct._GimpUndo** %base_item, align 8
  %55 = bitcast %struct._GimpUndo* %54 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_viewable_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call32)
  %56 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpViewable*
  %call34 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %52, %struct._GimpViewable* %56)
  %57 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %base_item35 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %57, i32 0, i32 5
  %58 = load %struct._GimpUndo*, %struct._GimpUndo** %base_item35, align 8
  %59 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %context36 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %59, i32 0, i32 1
  %60 = load %struct._GimpContext*, %struct._GimpContext** %context36, align 8
  call void @gimp_undo_create_preview(%struct._GimpUndo* %58, %struct._GimpContext* %60, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %61 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %view37 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %61, i32 0, i32 3
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %view37, align 8
  %63 = bitcast %struct._GtkWidget* %62 to i8*
  %64 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %65 = bitcast %struct._GimpUndoEditor* %64 to i8*
  %call38 = call i32 @g_signal_handlers_unblock_matched(i8* %63, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainerView*, %struct._GimpUndo*, i8*, %struct._GimpUndoEditor*)* @gimp_undo_editor_select_item to i8*), i8* %65)
  br label %sw.epilog

sw.bb.39:                                         ; preds = %entry
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call40 = call i32 @gimp_image_undo_is_enabled(%struct._GimpImage* %66)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %sw.bb.39
  %67 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  call void @gimp_undo_editor_clear(%struct._GimpUndoEditor* %67)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %sw.bb.39
  br label %sw.epilog

sw.bb.44:                                         ; preds = %entry
  %68 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  call void @gimp_undo_editor_clear(%struct._GimpUndoEditor* %68)
  br label %sw.epilog

sw.bb.45:                                         ; preds = %entry
  %69 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  call void @gimp_undo_editor_fill(%struct._GimpUndoEditor* %69)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.45, %sw.bb.44, %if.end.43, %if.end, %sw.bb.14, %sw.bb
  ret void
}

declare i32 @gimp_image_undo_is_enabled(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_editor_fill(%struct._GimpUndoEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpUndoEditor*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %undo_stack = alloca %struct._GimpUndoStack*, align 8
  %redo_stack = alloca %struct._GimpUndoStack*, align 8
  %top_undo_item = alloca %struct._GimpUndo*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUndoEditor* %editor, %struct._GimpUndoEditor** %editor.addr, align 8
  %0 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpUndoEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageEditor*
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %2, i32 0, i32 2
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  store %struct._GimpImage* %3, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage* %4)
  store %struct._GimpUndoStack* %call3, %struct._GimpUndoStack** %undo_stack, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage* %5)
  store %struct._GimpUndoStack* %call4, %struct._GimpUndoStack** %redo_stack, align 8
  %call5 = call i64 @gimp_undo_get_type() #7
  %call6 = call %struct._GimpContainer* @gimp_list_new(i64 %call5, i32 0)
  %6 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %container = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %6, i32 0, i32 2
  store %struct._GimpContainer* %call6, %struct._GimpContainer** %container, align 8
  %call7 = call i64 @gimp_undo_get_type() #7
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0)) #5
  %call9 = call i8* (i64, i8*, ...) @g_object_new(i64 %call7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), %struct._GimpImage* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* %call8, i8* null)
  %8 = bitcast i8* %call9 to %struct._GimpUndo*
  %9 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %base_item = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %9, i32 0, i32 5
  store %struct._GimpUndo* %8, %struct._GimpUndo** %base_item, align 8
  %10 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack, align 8
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %10, i32 0, i32 1
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %undos, align 8
  %12 = bitcast %struct._GimpContainer* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_list_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpList*
  %list12 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %list12, align 8
  store %struct._GList* %14, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %15, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %container13 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %16, i32 0, i32 2
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %container13, align 8
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_object_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpObject*
  %call16 = call i32 @gimp_container_add(%struct._GimpContainer* %17, %struct._GimpObject* %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %22, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 1
  %24 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %24, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %container18 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %25, i32 0, i32 2
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** %container18, align 8
  %27 = bitcast %struct._GimpContainer* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_list_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpList*
  call void @gimp_list_reverse(%struct._GimpList* %28)
  %29 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %undos21 = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %29, i32 0, i32 1
  %30 = load %struct._GimpContainer*, %struct._GimpContainer** %undos21, align 8
  %31 = bitcast %struct._GimpContainer* %30 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_list_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call22)
  %32 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpList*
  %list24 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %list24, align 8
  store %struct._GList* %33, %struct._GList** %list, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %cond.end.54, %for.end
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool26 = icmp ne %struct._GList* %34, null
  br i1 %tobool26, label %for.body.27, label %for.end.56

for.body.27:                                      ; preds = %for.cond.25
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 2
  %36 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool28 = icmp ne %struct._GList* %36, null
  br i1 %tobool28, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.27
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %data29 = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 0
  %38 = load i8*, i8** %data29, align 8
  %39 = bitcast i8* %38 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %39, %struct._GTypeInstance** %__inst, align 8
  %call30 = call i64 @gimp_undo_stack_get_type() #7
  store i64 %call30, i64* %__t, align 8
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool31 = icmp ne %struct._GTypeInstance* %40, null
  br i1 %tobool31, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.37

if.else:                                          ; preds = %lor.lhs.false
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %42, null
  br i1 %tobool32, label %land.lhs.true, label %if.else.35

land.lhs.true:                                    ; preds = %if.else
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type, align 8
  %46 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %45, %46
  br i1 %cmp, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.35:                                       ; preds = %land.lhs.true, %if.else
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %48 = load i64, i64* %__t, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %47, i64 %48) #8
  store i32 %call36, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.35, %if.then.34
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %if.then
  %49 = load i32, i32* %__r, align 4
  store i32 %49, i32* %tmp
  %50 = load i32, i32* %tmp
  %tobool38 = icmp ne i32 %50, 0
  br i1 %tobool38, label %lor.lhs.false.39, label %if.then.42

lor.lhs.false.39:                                 ; preds = %if.end.37
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call40 = call i32 @gimp_image_get_undo_group_count(%struct._GimpImage* %51)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %lor.lhs.false.39, %if.end.37, %for.body.27
  %52 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %container43 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %52, i32 0, i32 2
  %53 = load %struct._GimpContainer*, %struct._GimpContainer** %container43, align 8
  %54 = load %struct._GList*, %struct._GList** %list, align 8
  %data44 = getelementptr inbounds %struct._GList, %struct._GList* %54, i32 0, i32 0
  %55 = load i8*, i8** %data44, align 8
  %56 = bitcast i8* %55 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_object_get_type() #7
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call45)
  %57 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpObject*
  %call47 = call i32 @gimp_container_add(%struct._GimpContainer* %53, %struct._GimpObject* %57)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.42, %lor.lhs.false.39
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %58 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool50 = icmp ne %struct._GList* %58, null
  br i1 %tobool50, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %for.inc.49
  %59 = load %struct._GList*, %struct._GList** %list, align 8
  %next52 = getelementptr inbounds %struct._GList, %struct._GList* %59, i32 0, i32 1
  %60 = load %struct._GList*, %struct._GList** %next52, align 8
  br label %cond.end.54

cond.false.53:                                    ; preds = %for.inc.49
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.51
  %cond55 = phi %struct._GList* [ %60, %cond.true.51 ], [ null, %cond.false.53 ]
  store %struct._GList* %cond55, %struct._GList** %list, align 8
  br label %for.cond.25

for.end.56:                                       ; preds = %for.cond.25
  %61 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %container57 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %61, i32 0, i32 2
  %62 = load %struct._GimpContainer*, %struct._GimpContainer** %container57, align 8
  %63 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %base_item58 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %63, i32 0, i32 5
  %64 = load %struct._GimpUndo*, %struct._GimpUndo** %base_item58, align 8
  %65 = bitcast %struct._GimpUndo* %64 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_object_get_type() #7
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call59)
  %66 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpObject*
  %call61 = call i32 @gimp_container_add(%struct._GimpContainer* %62, %struct._GimpObject* %66)
  %67 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %67, i32 0, i32 3
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_container_view_interface_get_type() #7
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call62)
  %70 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpContainerView*
  %71 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %container64 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %71, i32 0, i32 2
  %72 = load %struct._GimpContainer*, %struct._GimpContainer** %container64, align 8
  call void @gimp_container_view_set_container(%struct._GimpContainerView* %70, %struct._GimpContainer* %72)
  %73 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call65 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %73)
  store %struct._GimpUndo* %call65, %struct._GimpUndo** %top_undo_item, align 8
  %74 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %view66 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %74, i32 0, i32 3
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %view66, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %77 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %78 = bitcast %struct._GimpUndoEditor* %77 to i8*
  %call67 = call i32 @g_signal_handlers_block_matched(i8* %76, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainerView*, %struct._GimpUndo*, i8*, %struct._GimpUndoEditor*)* @gimp_undo_editor_select_item to i8*), i8* %78)
  %79 = load %struct._GimpUndo*, %struct._GimpUndo** %top_undo_item, align 8
  %tobool68 = icmp ne %struct._GimpUndo* %79, null
  br i1 %tobool68, label %if.then.69, label %if.else.76

if.then.69:                                       ; preds = %for.end.56
  %80 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %view70 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %80, i32 0, i32 3
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %view70, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_container_view_interface_get_type() #7
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call71)
  %83 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpContainerView*
  %84 = load %struct._GimpUndo*, %struct._GimpUndo** %top_undo_item, align 8
  %85 = bitcast %struct._GimpUndo* %84 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_viewable_get_type() #7
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call73)
  %86 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpViewable*
  %call75 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %83, %struct._GimpViewable* %86)
  %87 = load %struct._GimpUndo*, %struct._GimpUndo** %top_undo_item, align 8
  %88 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %context = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %88, i32 0, i32 1
  %89 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_undo_create_preview(%struct._GimpUndo* %87, %struct._GimpContext* %89, i32 0)
  br label %if.end.86

if.else.76:                                       ; preds = %for.end.56
  %90 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %view77 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %90, i32 0, i32 3
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %view77, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_container_view_interface_get_type() #7
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call78)
  %93 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpContainerView*
  %94 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %base_item80 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %94, i32 0, i32 5
  %95 = load %struct._GimpUndo*, %struct._GimpUndo** %base_item80, align 8
  %96 = bitcast %struct._GimpUndo* %95 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_viewable_get_type() #7
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call81)
  %97 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpViewable*
  %call83 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %93, %struct._GimpViewable* %97)
  %98 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %base_item84 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %98, i32 0, i32 5
  %99 = load %struct._GimpUndo*, %struct._GimpUndo** %base_item84, align 8
  %100 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %context85 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %100, i32 0, i32 1
  %101 = load %struct._GimpContext*, %struct._GimpContext** %context85, align 8
  call void @gimp_undo_create_preview(%struct._GimpUndo* %99, %struct._GimpContext* %101, i32 1)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.76, %if.then.69
  %102 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %view87 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %102, i32 0, i32 3
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %view87, align 8
  %104 = bitcast %struct._GtkWidget* %103 to i8*
  %105 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor.addr, align 8
  %106 = bitcast %struct._GimpUndoEditor* %105 to i8*
  %call88 = call i32 @g_signal_handlers_unblock_matched(i8* %104, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainerView*, %struct._GimpUndo*, i8*, %struct._GimpUndoEditor*)* @gimp_undo_editor_select_item to i8*), i8* %106)
  ret void
}

declare void @gimp_container_view_set_container(%struct._GimpContainerView*, %struct._GimpContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare void @g_object_unref(i8*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @gimp_container_insert(%struct._GimpContainer*, %struct._GimpObject*, i32) #1

declare i32 @gimp_container_view_select_item(%struct._GimpContainerView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gimp_undo_create_preview(%struct._GimpUndo*, %struct._GimpContext*, i32) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare %struct._GimpContainer* @gimp_list_new(i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

declare void @gimp_list_reverse(%struct._GimpList*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_stack_get_type() #2

declare i32 @gimp_image_get_undo_group_count(%struct._GimpImage*) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_editor_set_context(%struct._GimpDocked* %docked, %struct._GimpContext* %context) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %editor = alloca %struct._GimpUndoEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndoEditor*
  store %struct._GimpUndoEditor* %2, %struct._GimpUndoEditor** %editor, align 8
  %3 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor, align 8
  %context2 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %tobool = icmp ne %struct._GimpContext* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor, align 8
  %context3 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context3, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  call void @g_object_unref(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor, align 8
  %context4 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %9, i32 0, i32 1
  store %struct._GimpContext* %8, %struct._GimpContext** %context4, align 8
  %10 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor, align 8
  %context5 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %10, i32 0, i32 1
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context5, align 8
  %tobool6 = icmp ne %struct._GimpContext* %11, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %12 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor, align 8
  %context8 = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %12, i32 0, i32 1
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context8, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %call9 = call i8* @g_object_ref(i8* %14)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %15 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %15, i32 0, i32 8
  %16 = load void (%struct._GimpDocked*, %struct._GimpContext*)*, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  %17 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %16(%struct._GimpDocked* %17, %struct._GimpContext* %18)
  %19 = load %struct._GimpUndoEditor*, %struct._GimpUndoEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpUndoEditor, %struct._GimpUndoEditor* %19, i32 0, i32 3
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_container_view_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpContainerView*
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_container_view_set_context(%struct._GimpContainerView* %22, %struct._GimpContext* %23)
  ret void
}

declare i8* @g_object_ref(i8*) #1

declare void @gimp_container_view_set_context(%struct._GimpContainerView*, %struct._GimpContext*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
