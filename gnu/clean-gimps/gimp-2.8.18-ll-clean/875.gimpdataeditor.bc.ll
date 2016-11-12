; ModuleID = './app/widgets/gimpdataeditor.bc'
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpImage = type opaque
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
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpDataEditorClass = type { %struct._GimpEditorClass, void (%struct._GimpDataEditor*, %struct._GimpData*)*, i8* }
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
%struct._GimpDataEditor = type { %struct._GimpEditor, %struct._GimpDataFactory*, %struct._GimpContext*, i32, %struct._GimpData*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GimpData = type { %struct._GimpViewable }
%struct._GtkEditable = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpSessionInfoAux = type { i8*, i8* }

@gimp_data_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpDataEditor\00", align 1
@gimp_data_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_data_editor_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_data_editor_set_data = private unnamed_addr constant [26 x i8] c"gimp_data_editor_set_data\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"GIMP_IS_DATA_EDITOR (editor)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"data == NULL || GIMP_IS_DATA (data)\00", align 1
@.str.4 = private unnamed_addr constant [149 x i8] c"data == NULL || g_type_is_a (G_TYPE_FROM_INSTANCE (data), gimp_container_get_children_type (gimp_data_factory_get_container (editor->data_factory)))\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@__func__.gimp_data_editor_get_data = private unnamed_addr constant [26 x i8] c"gimp_data_editor_get_data\00", align 1
@__func__.gimp_data_editor_set_edit_active = private unnamed_addr constant [33 x i8] c"gimp_data_editor_set_edit_active\00", align 1
@__func__.gimp_data_editor_get_edit_active = private unnamed_addr constant [33 x i8] c"gimp_data_editor_get_edit_active\00", align 1
@gimp_data_editor_parent_class = internal global i8* null, align 8
@GimpDataEditor_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"data-factory\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"minimal-height\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"gimpdataeditor.c\00", align 1
@__func__.gimp_data_editor_constructed = private unnamed_addr constant [29 x i8] c"gimp_data_editor_constructed\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"GIMP_IS_DATA_FACTORY (editor->data_factory)\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"GIMP_IS_CONTEXT (editor->context)\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Save\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"gtk-revert-to-saved\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Revert\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"TODO: implement revert\0A\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"name-changed\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@parent_docked_iface = internal global %struct._GimpDockedInterface* null, align 8
@.str.21 = private unnamed_addr constant [12 x i8] c"edit-active\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"current-data\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"%s (read only)\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"key-press-event\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"focus-out-event\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_data_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_data_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_data_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_editor_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 840, void (i8*, i8*)* bitcast (void (i8*)* @gimp_data_editor_class_intern_init to void (i8*, i8*)*), i32 208, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDataEditor*)* @gimp_data_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #8
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_data_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_data_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_data_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_data_editor_parent_class, align 8
  %1 = load i32, i32* @GimpDataEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDataEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDataEditorClass*
  call void @gimp_data_editor_class_init(%struct._GimpDataEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_init(%struct._GimpDataEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data_factory = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %0, i32 0, i32 1
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %data_factory, align 8
  %1 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %1, i32 0, i32 2
  store %struct._GimpContext* null, %struct._GimpContext** %context, align 8
  %2 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  store %struct._GimpData* null, %struct._GimpData** %data, align 8
  %3 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %3, i32 0, i32 5
  store i32 0, i32* %data_editable, align 4
  %call = call %struct._GtkWidget* @gtk_entry_new()
  %4 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %name_entry = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %4, i32 0, i32 6
  store %struct._GtkWidget* %call, %struct._GtkWidget** %name_entry, align 8
  %5 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpDataEditor* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_box_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkBox*
  %8 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %name_entry3 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %8, i32 0, i32 6
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry3, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %7, %struct._GtkWidget* %9, i32 0, i32 0, i32 0)
  %10 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %name_entry4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %10, i32 0, i32 6
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry4, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %12 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %name_entry5 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %12, i32 0, i32 6
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry5, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_editable_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkEditable*
  call void @gtk_editable_set_editable(%struct._GtkEditable* %15, i32 0)
  %16 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %name_entry8 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %16, i32 0, i32 6
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry8, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %19 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %20 = bitcast %struct._GimpDataEditor* %19 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventKey*, %struct._GimpDataEditor*)* @gimp_data_editor_name_key_press to void ()*), i8* %20, void (i8*, %struct._GClosure*)* null, i32 0)
  %21 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %name_entry10 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %21, i32 0, i32 6
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry10, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %25 = bitcast %struct._GimpDataEditor* %24 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpDataEditor*)* @gimp_data_editor_name_activate to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  %26 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %name_entry12 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %26, i32 0, i32 6
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry12, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %30 = bitcast %struct._GimpDataEditor* %29 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDataEditor*)* @gimp_data_editor_name_focus_out to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
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
  %call1 = call i64 @gimp_docked_interface_get_type() #8
  %call2 = call i8* @g_type_default_interface_peek(i64 %call1)
  %4 = bitcast i8* %call2 to %struct._GimpDockedInterface*
  store %struct._GimpDockedInterface* %4, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %5, i32 0, i32 8
  store void (%struct._GimpDocked*, %struct._GimpContext*)* @gimp_data_editor_set_context, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  %6 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %6, i32 0, i32 2
  store void (%struct._GimpDocked*, %struct._GList*)* @gimp_data_editor_set_aux_info, void (%struct._GimpDocked*, %struct._GList*)** %set_aux_info, align 8
  %7 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %7, i32 0, i32 3
  store %struct._GList* (%struct._GimpDocked*)* @gimp_data_editor_get_aux_info, %struct._GList* (%struct._GimpDocked*)** %get_aux_info, align 8
  %8 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %get_title = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %8, i32 0, i32 7
  store i8* (%struct._GimpDocked*)* @gimp_data_editor_get_title, i8* (%struct._GimpDocked*)** %get_title, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_data_editor_set_data(%struct._GimpDataEditor* %editor, %struct._GimpData* %data) #3 {
entry:
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDataEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_editor_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_data_editor_set_data, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.70

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %cmp12 = icmp eq %struct._GimpData* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %15 = bitcast %struct._GimpData* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_data_get_type() #8
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_data_editor_set_data, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.70

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %cmp41 = icmp eq %struct._GimpData* %27, null
  br i1 %cmp41, label %if.then.49, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %do.body.40
  %28 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %29 = bitcast %struct._GimpData* %28 to %struct._GTypeInstance*
  %g_class43 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class43, align 8
  %g_type44 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type44, align 8
  %32 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data_factory = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %32, i32 0, i32 1
  %33 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %data_factory, align 8
  %call45 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %33)
  %call46 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %call45)
  %call47 = call i32 @g_type_is_a(i64 %31, i64 %call46)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %lor.lhs.false.42, %do.body.40
  br label %if.end.51

if.else.50:                                       ; preds = %lor.lhs.false.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_data_editor_set_data, i32 0, i32 0), i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.70

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %34 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data53 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %34, i32 0, i32 4
  %35 = load %struct._GimpData*, %struct._GimpData** %data53, align 8
  %36 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %cmp54 = icmp ne %struct._GimpData* %35, %36
  br i1 %cmp54, label %if.then.55, label %if.end.70

if.then.55:                                       ; preds = %do.end.52
  %37 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %38 = bitcast %struct._GimpDataEditor* %37 to %struct._GTypeInstance*
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %40 = bitcast %struct._GTypeClass* %39 to %struct._GimpDataEditorClass*
  %set_data = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %40, i32 0, i32 1
  %41 = load void (%struct._GimpDataEditor*, %struct._GimpData*)*, void (%struct._GimpDataEditor*, %struct._GimpData*)** %set_data, align 8
  %42 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %43 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  call void %41(%struct._GimpDataEditor* %42, %struct._GimpData* %43)
  %44 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %45 = bitcast %struct._GimpDataEditor* %44 to %struct._GTypeInstance*
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call57 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  %47 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %48 = bitcast %struct._GimpDataEditor* %47 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_editor_get_type() #8
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call58)
  %49 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpEditor*
  %call60 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %49)
  %tobool61 = icmp ne %struct._GimpUIManager* %call60, null
  br i1 %tobool61, label %if.then.62, label %if.end.69

if.then.62:                                       ; preds = %if.then.55
  %50 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %51 = bitcast %struct._GimpDataEditor* %50 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_editor_get_type() #8
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call63)
  %52 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpEditor*
  %call65 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %52)
  %53 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %54 = bitcast %struct._GimpDataEditor* %53 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_editor_get_type() #8
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call66)
  %55 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpEditor*
  %call68 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %55)
  %56 = bitcast i8** %call68 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call65, i8* %56)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.62, %if.then.55
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.9, %if.else.37, %if.else.50, %if.end.69, %do.end.52
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i32 @g_type_is_a(i64, i64) #1

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor*) #1

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare i8** @gimp_editor_get_popup_data(%struct._GimpEditor*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_data_editor_get_data(%struct._GimpDataEditor* %editor) #3 {
entry:
  %retval = alloca %struct._GimpData*, align 8
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDataEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_editor_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_data_editor_get_data, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %13, i32 0, i32 4
  %14 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  store %struct._GimpData* %14, %struct._GimpData** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpData*, %struct._GimpData** %retval
  ret %struct._GimpData* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_data_editor_set_edit_active(%struct._GimpDataEditor* %editor, i32 %edit_active) #3 {
entry:
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  %edit_active.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %data_type = alloca i64, align 8
  %data = alloca %struct._GimpData*, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  store i32 %edit_active, i32* %edit_active.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDataEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_editor_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_data_editor_set_edit_active, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.29

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %edit_active11 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %13, i32 0, i32 3
  %14 = load i32, i32* %edit_active11, align 4
  %15 = load i32, i32* %edit_active.addr, align 4
  %cmp12 = icmp ne i32 %14, %15
  br i1 %cmp12, label %if.then.13, label %if.end.29

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %edit_active.addr, align 4
  %17 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %edit_active14 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %17, i32 0, i32 3
  store i32 %16, i32* %edit_active14, align 4
  %18 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %edit_active15 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %18, i32 0, i32 3
  %19 = load i32, i32* %edit_active15, align 4
  %tobool16 = icmp ne i32 %19, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.28

land.lhs.true.17:                                 ; preds = %if.then.13
  %20 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %20, i32 0, i32 2
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool18 = icmp ne %struct._GimpContext* %21, null
  br i1 %tobool18, label %if.then.19, label %if.end.28

if.then.19:                                       ; preds = %land.lhs.true.17
  %22 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data_factory = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %22, i32 0, i32 1
  %23 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %data_factory, align 8
  %call22 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %23)
  %call23 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %call22)
  store i64 %call23, i64* %data_type, align 8
  %24 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %context24 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %24, i32 0, i32 2
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context24, align 8
  %26 = load i64, i64* %data_type, align 8
  %call25 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %25, i64 %26)
  %27 = bitcast %struct._GimpObject* %call25 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_data_get_type() #8
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call26)
  %28 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpData*
  store %struct._GimpData* %28, %struct._GimpData** %data, align 8
  %29 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %30 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  call void @gimp_data_editor_set_data(%struct._GimpDataEditor* %29, %struct._GimpData* %30)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.19, %land.lhs.true.17, %if.then.13
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.9, %if.end.28, %do.end
  ret void
}

declare %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_data_editor_get_edit_active(%struct._GimpDataEditor* %editor) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDataEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_editor_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_data_editor_get_edit_active, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %edit_active = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %13, i32 0, i32 3
  %14 = load i32, i32* %edit_active, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_class_init(%struct._GimpDataEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDataEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpDataEditorClass* %klass, %struct._GimpDataEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDataEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDataEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_data_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_data_editor_dispose, void (%struct._GObject*)** %dispose, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_data_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_data_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_data_editor_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %11 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %klass.addr, align 8
  %set_data = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %11, i32 0, i32 1
  store void (%struct._GimpDataEditor*, %struct._GimpData*)* @gimp_data_editor_real_set_data, void (%struct._GimpDataEditor*, %struct._GimpData*)** %set_data, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_data_factory_get_type() #8
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 1, %struct._GParamSpec* %call4)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_context_get_type() #8
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 2, %struct._GParamSpec* %call6)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i64 @gimp_data_get_type() #8
  %call8 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call7, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 3, %struct._GParamSpec* %call8)
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i32 32, i32 2147483647, i32 96, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %15, %struct._GParamSpec* %call9)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpDataEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst21 = alloca %struct._GTypeInstance*, align 8
  %__t23 = alloca i64, align 8
  %__r26 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %editor, align 8
  %3 = load i8*, i8** @gimp_data_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_data_editor_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %data_factory = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %12, i32 0, i32 1
  %13 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %data_factory, align 8
  %14 = bitcast %struct._GimpDataFactory* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_data_factory_get_type() #8
  store i64 %call5, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.14
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 207, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_data_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0)) #10
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %26 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %26, i32 0, i32 2
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %28 = bitcast %struct._GimpContext* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst21, align 8
  %call24 = call i64 @gimp_context_get_type() #8
  store i64 %call24, i64* %__t23, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %tobool27 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %do.body.19
  store i32 0, i32* %__r26, align 4
  br label %if.end.40

if.else.29:                                       ; preds = %do.body.19
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %tobool31 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %if.else.29
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type34, align 8
  %35 = load i64, i64* %__t23, align 8
  %cmp35 = icmp eq i64 %34, %35
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %__r26, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.29
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %37 = load i64, i64* %__t23, align 8
  %call38 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #9
  store i32 %call38, i32* %__r26, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.28
  %38 = load i32, i32* %__r26, align 4
  store i32 %38, i32* %tmp41
  %39 = load i32, i32* %tmp41
  %tobool42 = icmp ne i32 %39, 0
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.40
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.40
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 208, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_data_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0)) #10
  unreachable

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %40 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  call void @gimp_data_editor_set_edit_active(%struct._GimpDataEditor* %40, i32 1)
  %41 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %42 = bitcast %struct._GimpDataEditor* %41 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_editor_get_type() #8
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call47)
  %43 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpEditor*
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #7
  %44 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %45 = bitcast %struct._GimpDataEditor* %44 to i8*
  %call50 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* %call49, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpDataEditor*)* @gimp_data_editor_save_clicked to void ()*), void ()* null, i8* %45)
  %46 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %save_button = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %46, i32 0, i32 8
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %save_button, align 8
  %47 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %48 = bitcast %struct._GimpDataEditor* %47 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_editor_get_type() #8
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call51)
  %49 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpEditor*
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #7
  %50 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %51 = bitcast %struct._GimpDataEditor* %50 to i8*
  %call54 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %call53, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpDataEditor*)* @gimp_data_editor_revert_clicked to void ()*), void ()* null, i8* %51)
  %52 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %revert_button = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %52, i32 0, i32 9
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %revert_button, align 8
  %53 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %revert_button55 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %53, i32 0, i32 9
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %revert_button55, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %54)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpDataEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %editor, align 8
  %3 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %3, i32 0, i32 4
  %4 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool = icmp ne %struct._GimpData* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  call void @gimp_data_editor_save_dirty(%struct._GimpDataEditor* %5)
  %6 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  call void @gimp_data_editor_set_data(%struct._GimpDataEditor* %6, %struct._GimpData* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %7, i32 0, i32 2
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool2 = icmp ne %struct._GimpContext* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %9 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %10 = bitcast %struct._GimpDataEditor* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_docked_interface_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDocked*
  call void @gimp_docked_set_context(%struct._GimpDocked* %11, %struct._GimpContext* null)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %12 = load i8*, i8** @gimp_data_editor_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 80)
  %14 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 5
  %15 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %15(%struct._GObject* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpDataEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpDataFactory*
  %6 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %data_factory = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 1
  store %struct._GimpDataFactory* %5, %struct._GimpDataFactory** %data_factory, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %8 = bitcast %struct._GObject* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_docked_interface_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDocked*
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_object(%struct._GValue* %10)
  %11 = bitcast i8* %call6 to %struct._GimpContext*
  call void @gimp_docked_set_context(%struct._GimpDocked* %9, %struct._GimpContext* %11)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %12 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i8* @g_value_get_object(%struct._GValue* %13)
  %14 = bitcast i8* %call8 to %struct._GimpData*
  call void @gimp_data_editor_set_data(%struct._GimpDataEditor* %12, %struct._GimpData* %14)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %15, %struct._GObject** %_glib__object, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %16, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = load i32, i32* %property_id.addr, align 4
  store i32 %17, i32* %_glib__property_id, align 4
  %18 = load i32, i32* %_glib__property_id, align 4
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %19, i32 0, i32 1
  %20 = load i8*, i8** %name, align 8
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %22 = bitcast %struct._GParamSpec* %21 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %call9 = call i8* @g_type_name(i64 %24)
  %25 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %26 = bitcast %struct._GObject* %25 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %28)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 270, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %18, i8* %20, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.7, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpDataEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %data_factory = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %data_factory, align 8
  %7 = bitcast %struct._GimpDataFactory* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %9, i32 0, i32 2
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %11 = bitcast %struct._GimpContext* %10 to i8*
  call void @g_value_set_object(%struct._GValue* %8, i8* %11)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %13, i32 0, i32 4
  %14 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %15 = bitcast %struct._GimpData* %14 to i8*
  call void @g_value_set_object(%struct._GValue* %12, i8* %15)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %16, %struct._GObject** %_glib__object, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %17, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = load i32, i32* %property_id.addr, align 4
  store i32 %18, i32* %_glib__property_id, align 4
  %19 = load i32, i32* %_glib__property_id, align 4
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = bitcast %struct._GParamSpec* %22 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %25)
  %26 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %27 = bitcast %struct._GObject* %26 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %29)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 295, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %19, i8* %21, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %editor = alloca %struct._GimpDataEditor*, align 8
  %minimal_height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %editor, align 8
  %3 = load i8*, i8** @gimp_data_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #8
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 17
  %6 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GtkStyle* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32* %minimal_height, i8* null)
  %10 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %10, i32 0, i32 7
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %tobool = icmp ne %struct._GtkWidget* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %view4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %12, i32 0, i32 7
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %view4, align 8
  %14 = load i32, i32* %minimal_height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %13, i32 -1, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_real_set_data(%struct._GimpDataEditor* %editor, %struct._GimpData* %data) #3 {
entry:
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %editable = alloca i32, align 4
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data1 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %0, i32 0, i32 4
  %1 = load %struct._GimpData*, %struct._GimpData** %data1, align 8
  %tobool = icmp ne %struct._GimpData* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data2 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  %3 = load %struct._GimpData*, %struct._GimpData** %data2, align 8
  %4 = bitcast %struct._GimpData* %3 to i8*
  %5 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpDataEditor* %5 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpObject*, %struct._GimpDataEditor*)* @gimp_data_editor_data_name_changed to i8*), i8* %6)
  %7 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data3 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %7, i32 0, i32 4
  %8 = load %struct._GimpData*, %struct._GimpData** %data3, align 8
  %9 = bitcast %struct._GimpData* %8 to i8*
  call void @g_object_unref(i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %11 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %11, i32 0, i32 4
  store %struct._GimpData* %10, %struct._GimpData** %data4, align 8
  %12 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data5 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %12, i32 0, i32 4
  %13 = load %struct._GimpData*, %struct._GimpData** %data5, align 8
  %tobool6 = icmp ne %struct._GimpData* %13, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %14 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data8 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %14, i32 0, i32 4
  %15 = load %struct._GimpData*, %struct._GimpData** %data8, align 8
  %16 = bitcast %struct._GimpData* %15 to i8*
  %call9 = call i8* @g_object_ref(i8* %16)
  %17 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data10 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %17, i32 0, i32 4
  %18 = load %struct._GimpData*, %struct._GimpData** %data10, align 8
  %19 = bitcast %struct._GimpData* %18 to i8*
  %20 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %21 = bitcast %struct._GimpDataEditor* %20 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GimpObject*, %struct._GimpDataEditor*)* @gimp_data_editor_data_name_changed to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %name_entry = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %22, i32 0, i32 6
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_entry_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call12)
  %25 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkEntry*
  %26 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data14 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %26, i32 0, i32 4
  %27 = load %struct._GimpData*, %struct._GimpData** %data14, align 8
  %28 = bitcast %struct._GimpData* %27 to i8*
  %call15 = call i8* @gimp_object_get_name(i8* %28)
  call void @gtk_entry_set_text(%struct._GtkEntry* %25, i8* %call15)
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %29 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %name_entry16 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %29, i32 0, i32 6
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry16, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_entry_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call17)
  %32 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.7
  %33 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data20 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %33, i32 0, i32 4
  %34 = load %struct._GimpData*, %struct._GimpData** %data20, align 8
  %tobool21 = icmp ne %struct._GimpData* %34, null
  br i1 %tobool21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.19
  %35 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data22 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %35, i32 0, i32 4
  %36 = load %struct._GimpData*, %struct._GimpData** %data22, align 8
  %call23 = call i32 @gimp_data_is_writable(%struct._GimpData* %36)
  %tobool24 = icmp ne i32 %call23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.19
  %37 = phi i1 [ false, %if.end.19 ], [ %tobool24, %land.rhs ]
  %land.ext = zext i1 %37 to i32
  store i32 %land.ext, i32* %editable, align 4
  %38 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %38, i32 0, i32 5
  %39 = load i32, i32* %data_editable, align 4
  %40 = load i32, i32* %editable, align 4
  %cmp = icmp ne i32 %39, %40
  br i1 %cmp, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %land.end
  %41 = load i32, i32* %editable, align 4
  %42 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data_editable26 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %42, i32 0, i32 5
  store i32 %41, i32* %data_editable26, align 4
  %43 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %name_entry27 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %43, i32 0, i32 6
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry27, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_editable_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call28)
  %46 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkEditable*
  %47 = load i32, i32* %editable, align 4
  call void @gtk_editable_set_editable(%struct._GtkEditable* %46, i32 %47)
  %48 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %49 = bitcast %struct._GimpDataEditor* %48 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_docked_interface_get_type() #8
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call30)
  %50 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpDocked*
  call void @gimp_docked_title_changed(%struct._GimpDocked* %50)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.25, %land.end
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_factory_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor*, i8*, i8*, i8*, void ()*, void ()*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_save_clicked(%struct._GtkWidget* %widget, %struct._GimpDataEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  call void @gimp_data_editor_save_dirty(%struct._GimpDataEditor* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_revert_clicked(%struct._GtkWidget* %widget, %struct._GimpDataEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0))
  ret void
}

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_save_dirty(%struct._GimpDataEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  %data = alloca %struct._GimpData*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data1 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %0, i32 0, i32 4
  %1 = load %struct._GimpData*, %struct._GimpData** %data1, align 8
  store %struct._GimpData* %1, %struct._GimpData** %data, align 8
  %2 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool = icmp ne %struct._GimpData* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call = call i32 @gimp_data_is_dirty(%struct._GimpData* %3)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.12

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %4 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call4 = call i32 @gimp_data_is_writable(%struct._GimpData* %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end.12

if.then:                                          ; preds = %land.lhs.true.3
  store %struct._GError* null, %struct._GError** %error, align 8
  %5 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data_factory = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %data_factory, align 8
  %7 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call6 = call i32 @gimp_data_factory_data_save_single(%struct._GimpDataFactory* %6, %struct._GimpData* %7, %struct._GError** %error)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %8 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data_factory9 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %8, i32 0, i32 1
  %9 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %data_factory9, align 8
  %call10 = call %struct._Gimp* @gimp_data_factory_get_gimp(%struct._GimpDataFactory* %9)
  %10 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %11 = bitcast %struct._GimpDataEditor* %10 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %13 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %13, i32 0, i32 2
  %14 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %call10, %struct._GObject* %12, i32 2, i8* %14)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %land.lhs.true.3, %land.lhs.true, %entry
  ret void
}

declare i32 @gimp_data_is_dirty(%struct._GimpData*) #1

declare i32 @gimp_data_is_writable(%struct._GimpData*) #1

declare i32 @gimp_data_factory_data_save_single(%struct._GimpDataFactory*, %struct._GimpData*, %struct._GError**) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare %struct._Gimp* @gimp_data_factory_get_gimp(%struct._GimpDataFactory*) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @g_print(i8*, ...) #1

declare void @gimp_docked_set_context(%struct._GimpDocked*, %struct._GimpContext*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

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
declare void @llvm.va_start(i8*) #7

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_data_name_changed(%struct._GimpObject* %object, %struct._GimpDataEditor* %editor) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %name_entry = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %0, i32 0, i32 6
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %4 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %5 = bitcast %struct._GimpObject* %4 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %5)
  call void @gtk_entry_set_text(%struct._GtkEntry* %3, i8* %call2)
  ret void
}

declare void @g_object_unref(i8*) #1

declare i8* @g_object_ref(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare i8* @gimp_object_get_name(i8*) #1

declare void @gtk_editable_set_editable(%struct._GtkEditable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_editable_get_type() #2

declare void @gimp_docked_title_changed(%struct._GimpDocked*) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_set_context(%struct._GimpDocked* %docked, %struct._GimpContext* %context) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %editor = alloca %struct._GimpDataEditor*, align 8
  %data_type = alloca i64, align 8
  %data = alloca %struct._GimpData*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %editor, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %context2 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %4, i32 0, i32 2
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %cmp = icmp eq %struct._GimpContext* %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.29

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %6, i32 0, i32 8
  %7 = load void (%struct._GimpDocked*, %struct._GimpContext*)*, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  %tobool = icmp ne void (%struct._GimpDocked*, %struct._GimpContext*)* %7, null
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %set_context4 = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %8, i32 0, i32 8
  %9 = load void (%struct._GimpDocked*, %struct._GimpContext*)*, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context4, align 8
  %10 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %9(%struct._GimpDocked* %10, %struct._GimpContext* %11)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %12 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %context6 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %12, i32 0, i32 2
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context6, align 8
  %tobool7 = icmp ne %struct._GimpContext* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.5
  %14 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %context9 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %14, i32 0, i32 2
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context9, align 8
  %16 = bitcast %struct._GimpContext* %15 to i8*
  %17 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %18 = bitcast %struct._GimpDataEditor* %17 to i8*
  %call10 = call i32 @g_signal_handlers_disconnect_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpData*, %struct._GimpDataEditor*)* @gimp_data_editor_data_changed to i8*), i8* %18)
  %19 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %context11 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %19, i32 0, i32 2
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context11, align 8
  %21 = bitcast %struct._GimpContext* %20 to i8*
  call void @g_object_unref(i8* %21)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end.5
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %23 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %context13 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %23, i32 0, i32 2
  store %struct._GimpContext* %22, %struct._GimpContext** %context13, align 8
  %24 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %context14 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %24, i32 0, i32 2
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context14, align 8
  %tobool15 = icmp ne %struct._GimpContext* %25, null
  br i1 %tobool15, label %if.then.16, label %if.end.29

if.then.16:                                       ; preds = %if.end.12
  %26 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %context17 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %26, i32 0, i32 2
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context17, align 8
  %28 = bitcast %struct._GimpContext* %27 to i8*
  %call18 = call i8* @g_object_ref(i8* %28)
  %29 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %data_factory = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %29, i32 0, i32 1
  %30 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %data_factory, align 8
  %call19 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %30)
  %call20 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %call19)
  store i64 %call20, i64* %data_type, align 8
  %31 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %context21 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %31, i32 0, i32 2
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context21, align 8
  %33 = load i64, i64* %data_type, align 8
  %call22 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %32, i64 %33)
  %34 = bitcast %struct._GimpObject* %call22 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_data_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call23)
  %35 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpData*
  store %struct._GimpData* %35, %struct._GimpData** %data, align 8
  %36 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %context25 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %36, i32 0, i32 2
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context25, align 8
  %38 = bitcast %struct._GimpContext* %37 to i8*
  %39 = load i64, i64* %data_type, align 8
  %call26 = call i8* @gimp_context_type_to_signal_name(i64 %39)
  %40 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %41 = bitcast %struct._GimpDataEditor* %40 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %38, i8* %call26, void ()* bitcast (void (%struct._GimpContext*, %struct._GimpData*, %struct._GimpDataEditor*)* @gimp_data_editor_data_changed to void ()*), i8* %41, void (i8*, %struct._GClosure*)* null, i32 0)
  %42 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %context28 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %42, i32 0, i32 2
  %43 = load %struct._GimpContext*, %struct._GimpContext** %context28, align 8
  %44 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %45 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  call void @gimp_data_editor_data_changed(%struct._GimpContext* %43, %struct._GimpData* %44, %struct._GimpDataEditor* %45)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then, %if.then.16, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_set_aux_info(%struct._GimpDocked* %docked, %struct._GList* %aux_info) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %aux_info.addr = alloca %struct._GList*, align 8
  %editor = alloca %struct._GimpDataEditor*, align 8
  %list = alloca %struct._GList*, align 8
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  %edit_active = alloca i32, align 4
  %data13 = alloca %struct._GimpData*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GList* %aux_info, %struct._GList** %aux_info.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %editor, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %3, i32 0, i32 2
  %4 = load void (%struct._GimpDocked*, %struct._GList*)*, void (%struct._GimpDocked*, %struct._GList*)** %set_aux_info, align 8
  %5 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %6 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  call void %4(%struct._GimpDocked* %5, %struct._GList* %6)
  %7 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  store %struct._GList* %7, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct._GimpSessionInfoAux*
  store %struct._GimpSessionInfoAux* %11, %struct._GimpSessionInfoAux** %aux, align 8
  %12 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %12, i32 0, i32 0
  %13 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #9
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %14 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %value = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %14, i32 0, i32 1
  %15 = load i8*, i8** %value, align 8
  %call4 = call i32 @g_ascii_strcasecmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %edit_active, align 4
  %16 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %17 = load i32, i32* %edit_active, align 4
  call void @gimp_data_editor_set_edit_active(%struct._GimpDataEditor* %16, i32 %17)
  br label %if.end.21

if.else:                                          ; preds = %for.body
  %18 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name6 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %18, i32 0, i32 0
  %19 = load i8*, i8** %name6, align 8
  %call7 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0)) #9
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.20, label %if.then.9

if.then.9:                                        ; preds = %if.else
  %20 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %edit_active10 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %20, i32 0, i32 3
  %21 = load i32, i32* %edit_active10, align 4
  %tobool11 = icmp ne i32 %21, 0
  br i1 %tobool11, label %if.end.19, label %if.then.12

if.then.12:                                       ; preds = %if.then.9
  %22 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %data_factory = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %22, i32 0, i32 1
  %23 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %data_factory, align 8
  %call14 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %23)
  %24 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %value15 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %24, i32 0, i32 1
  %25 = load i8*, i8** %value15, align 8
  %call16 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %call14, i8* %25)
  %26 = bitcast %struct._GimpObject* %call16 to %struct._GimpData*
  store %struct._GimpData* %26, %struct._GimpData** %data13, align 8
  %27 = load %struct._GimpData*, %struct._GimpData** %data13, align 8
  %tobool17 = icmp ne %struct._GimpData* %27, null
  br i1 %tobool17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then.12
  %28 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %29 = load %struct._GimpData*, %struct._GimpData** %data13, align 8
  call void @gimp_data_editor_set_data(%struct._GimpDataEditor* %28, %struct._GimpData* %29)
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then.9
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool22 = icmp ne %struct._GList* %30, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %32, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_data_editor_get_aux_info(%struct._GimpDocked* %docked) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %editor = alloca %struct._GimpDataEditor*, align 8
  %aux_info = alloca %struct._GList*, align 8
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  %value = alloca i8*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %editor, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %3, i32 0, i32 3
  %4 = load %struct._GList* (%struct._GimpDocked*)*, %struct._GList* (%struct._GimpDocked*)** %get_aux_info, align 8
  %5 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %call2 = call %struct._GList* %4(%struct._GimpDocked* %5)
  store %struct._GList* %call2, %struct._GList** %aux_info, align 8
  %6 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %edit_active = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 3
  %7 = load i32, i32* %edit_active, align 4
  %tobool = icmp ne i32 %7, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)
  %call3 = call %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* %cond)
  store %struct._GimpSessionInfoAux* %call3, %struct._GimpSessionInfoAux** %aux, align 8
  %8 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %9 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %10 = bitcast %struct._GimpSessionInfoAux* %9 to i8*
  %call4 = call %struct._GList* @g_list_append(%struct._GList* %8, i8* %10)
  store %struct._GList* %call4, %struct._GList** %aux_info, align 8
  %11 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %11, i32 0, i32 4
  %12 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool5 = icmp ne %struct._GimpData* %12, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %data6 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %13, i32 0, i32 4
  %14 = load %struct._GimpData*, %struct._GimpData** %data6, align 8
  %15 = bitcast %struct._GimpData* %14 to i8*
  %call7 = call i8* @gimp_object_get_name(i8* %15)
  store i8* %call7, i8** %value, align 8
  %16 = load i8*, i8** %value, align 8
  %call8 = call %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* %16)
  store %struct._GimpSessionInfoAux* %call8, %struct._GimpSessionInfoAux** %aux, align 8
  %17 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %18 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %19 = bitcast %struct._GimpSessionInfoAux* %18 to i8*
  %call9 = call %struct._GList* @g_list_append(%struct._GList* %17, i8* %19)
  store %struct._GList* %call9, %struct._GList** %aux_info, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct._GList*, %struct._GList** %aux_info, align 8
  ret %struct._GList* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_data_editor_get_title(%struct._GimpDocked* %docked) #3 {
entry:
  %retval = alloca i8*, align 8
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %editor = alloca %struct._GimpDataEditor*, align 8
  %editor_class = alloca %struct._GimpDataEditorClass*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %editor, align 8
  %3 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %4 = bitcast %struct._GimpDataEditor* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GimpDataEditorClass*
  store %struct._GimpDataEditorClass* %6, %struct._GimpDataEditorClass** %editor_class, align 8
  %7 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor, align 8
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %7, i32 0, i32 5
  %8 = load i32, i32* %data_editable, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %editor_class, align 8
  %title = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %9, i32 0, i32 2
  %10 = load i8*, i8** %title, align 8
  %call2 = call noalias i8* @g_strdup(i8* %10)
  store i8* %call2, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0)) #7
  %11 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %editor_class, align 8
  %title4 = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %11, i32 0, i32 2
  %12 = load i8*, i8** %title4, align 8
  %call5 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call3, i8* %12)
  store i8* %call5, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_data_changed(%struct._GimpContext* %context, %struct._GimpData* %data, %struct._GimpDataEditor* %editor) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %edit_active = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %0, i32 0, i32 3
  %1 = load i32, i32* %edit_active, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %3 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  call void @gimp_data_editor_set_data(%struct._GimpDataEditor* %2, %struct._GimpData* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @gimp_context_type_to_signal_name(i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #1

declare %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8*, i8*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_data_editor_name_key_press(%struct._GtkWidget* %widget, %struct._GdkEventKey* %kevent, %struct._GimpDataEditor* %editor) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  %0 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %0, i32 0, i32 5
  %1 = load i32, i32* %keyval, align 4
  %cmp = icmp eq i32 %1, 65307
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %name_entry = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 6
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %6 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 4
  %7 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %8 = bitcast %struct._GimpData* %7 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %8)
  call void @gtk_entry_set_text(%struct._GtkEntry* %5, i8* %call2)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_editor_name_activate(%struct._GtkWidget* %widget, %struct._GimpDataEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  %new_name = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %0, i32 0, i32 4
  %1 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool = icmp ne %struct._GimpData* %1, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %4)
  %call3 = call noalias i8* @g_strdup(i8* %call2)
  store i8* %call3, i8** %new_name, align 8
  %5 = load i8*, i8** %new_name, align 8
  %call4 = call i8* @g_strchug(i8* %5)
  %call5 = call i8* @g_strchomp(i8* %call4)
  store i8* %call5, i8** %new_name, align 8
  %6 = load i8*, i8** %new_name, align 8
  %call6 = call i64 @strlen(i8* %6) #9
  %tobool7 = icmp ne i64 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %7 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data9 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %7, i32 0, i32 4
  %8 = load %struct._GimpData*, %struct._GimpData** %data9, align 8
  %9 = bitcast %struct._GimpData* %8 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call10)
  %10 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  %11 = load i8*, i8** %new_name, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %10, i8* %11)
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_entry_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call12)
  %14 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkEntry*
  %15 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data14 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %15, i32 0, i32 4
  %16 = load %struct._GimpData*, %struct._GimpData** %data14, align 8
  %17 = bitcast %struct._GimpData* %16 to i8*
  %call15 = call i8* @gimp_object_get_name(i8* %17)
  call void @gtk_entry_set_text(%struct._GtkEntry* %14, i8* %call15)
  %18 = load i8*, i8** %new_name, align 8
  call void @g_free(i8* %18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_data_editor_name_focus_out(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct._GimpDataEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  call void @gimp_data_editor_name_activate(%struct._GtkWidget* %0, %struct._GimpDataEditor* %1)
  ret i32 0
}

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare i8* @g_strchomp(i8*) #1

declare i8* @g_strchug(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @g_free(i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
